# Semantic interpretation of the formal model and property

- Protocol roles and state:

  - client: obtains one global IP (gip) per interface, performs DAD (Neighbor Discovery Duplicate Address Detection) by sending DAD_NS, and upon any DAD response matching the target gip (NA or DAD_NS), immediately sends DECLINE to the DHCP server and retries. If DAD times out, the client marks the gip as bound and proceeds; may later send RELEASE.
  - dhcp_server: maintains gip_IAID (mapping gip→IAID: 0=free, >0=assigned, -1=conflict), IAID_getgip[IAID] (per-IAID occupancy), assignedIPCount, conflictIPCount. It:
    - on REQUEST/CONFIRM: assigns the requested gip if IAID_getgip is false and gip is free (0); otherwise returns NOTONLINK if gip_IAID != 0.
    - on RELEASE: frees the address only if matching IAID.
    - on DECLINE: turns the address into “conflict” (-1), increments conflictIPCount, and clears IAID_getgip for the sender IAID.
  - savi_switch: per-gip Binding State Table (BST[gip] = {anchor=port, state ∈ {NO_BIND, INIT_BIND, BOUND}}) and per-port quota port_gipNum[port] ≤ MAX_GIP_PER_PORT. It:
    - on client REQUEST/CONFIRM for a free gip: sets BST[gip] to INIT_BIND anchored to the sender’s port.
    - forwards DHCP server REPLY to the anchor’s mac and advances BST[gip] to BOUND, incrementing port_gipNum[anchor].
    - forwards client DECLINE/RELEASE to the DHCP server (and updates BST only if the gip was BOUND on that port).
    - forwards DAD_NS unconditionally; forwards NA only if src is the sender’s llip or the target gip is bound on that port.
  - attacker1: after getting any gip bound, it enters “CruiserPoint,” can:
    - intercept on sv_c[portID] (server→client channel),
    - sniff on c_sv[1] (client1→switch channel),
    - inject REQUEST/RELEASE/DECLINE on its own c_sv[portID] using its IAID and mac, copying srcIP/target from sniffed traffic.
- Adversarial environment and capabilities:

  - The attacker is on port2, has a valid IAID (not forged per model’s assumption), can send arbitrary REQUEST/RELEASE/DECLINE for chosen target gips, can spam DAD_NS, and can reorder/interleave with the client’s traffic due to the interception/sniffing/injection code.
- Property being checked:

  - LTL phi1: always (assignedIPCount + conflictIPCount < NUM_GLOBAL_IP). With NUM_GLOBAL_IP=5, this asserts that the sum of assigned addresses and conflict-marked addresses never reaches the pool size, i.e., the pool should never be exhausted by assignments and conflicts. A violation implies an exhaustion/DoS of address pool.

# Semantic interpretation of the core trace

- Initial normal path:
  - client on port1 requests gip=2, server replies REPLY for gip=2; client sends DAD_NS for 2.
- Attacker begins targeted depletion:
  - The attacker on port2 requests gip=1 (REQUEST,-2,2,...,1,4). Server replies (REPLY,...,1,4). Attacker sends DAD_NS for 1; savi_switch forwards it cross-port to client (sv_c[1]); client reacts by releasing its current target and retries with new targets (3,4,5), repeatedly receiving DAD_NS from attacker interleavings.
- Core drain loop (repeated for multiple target gips: 1,2,3,4):
  - Pattern for each target gip:
    1) REQUEST for a specific gip X using IAID2 (attacker’s IAID=4) → dhcp_server assigns (REPLY,...,X,4), BST[X]→BOUND on port2.
    2) Immediately send RELEASE or DECLINE:
       - RELEASE: dhcp_server frees X (REPLY), BST[X]→NO_BIND, port_gipNum[2] decrements, allowing another request by attacker despite MAX_GIP_PER_PORT=1.
       - DECLINE: dhcp_server sets gip_IAID[X] = -1 (conflict), increments conflictIPCount, clears IAID_getgip[4]; subsequent REQUESTs for X produce NOTONLINK/NOBINDING because gip_IAID[X] ≠ 0.
    3) Move on to the next target gip and repeat until multiple gips are in conflict.
  - The trace shows extensive interleaving:
    - Server emits NOTONLINK/NOBINDING for already-conflicted gips.
    - The attacker continues cycling REQUEST/RELEASE/DECLINE sequences across gips 1..4, while the client keeps failing to complete DAD and receives NOTONLINK for its own requests.
- Consequence visible in the trace:
  - Conflict marks accumulate in dhcp_server (implicit via repeated NOTONLINK/NOBINDING on previously touched gips). The attacker’s DECLINEs convert assigned addresses into permanent conflicts (-1), causing conflictIPCount to grow; since assignedIPCount also fluctuates, assigned + conflict eventually reaches NUM_GLOBAL_IP, violating phi1.

# Identified potential protocol vulnerabilities

- Unprotected DECLINE-induced permanent conflict:

  - dhcp_server turns any assigned gip into “conflict” (-1) solely upon receiving a DECLINE from the IAID that held it, without cross-checking any real duplicate presence on-link. There is no validation step with SAVI (BST/ND evidence), no threshold/backoff, and no temporal quarantine. This enables a legitimate-but-malicious IAID to rapidly poison the pool by repeatedly: REQUEST a chosen gip → receive REPLY → send DECLINE → mark conflict → re-request another gip. This is the primary lever driving conflictIPCount upward.
- Attacker-controlled target selection in REQUEST:

  - The model allows clients/attackers to specify the exact target gip they want in REQUEST. This lets the attacker deterministically walk the pool and mark specific gips as conflict in minimal cycles. In production DHCPv6, servers generally choose the address; allowing arbitrary target selection materially facilitates targeted exhaustion.
- SAVI switch forwards DAD_NS unconditionally and NA too-permissively:

  - DAD_NS is always forwarded, even if the sender has no INIT_BIND/BOUND state for that target, enabling cross-port DAD interference. NA is forwarded if src is a valid llip for the port or the target is bound on that port; these permissive rules let an attacker influence DAD outcomes on other ports. In the client, any inbound DAD_NS/NA that matches its current target gip triggers immediate DECLINE, so an attacker can cause benign clients to self-decline newly assigned gips at scale.
- Per-port quota trivially bypassed by rapid release:

  - MAX_GIP_PER_PORT=1 constrains concurrent bindings, but the attacker’s pattern (REPLY→immediate RELEASE/DECLINE→new REQUEST) keeps port_gipNum[2] at or back to 0, allowing rapid sequential allocations across the entire pool. No rate limiting, cool-down, or per-IAID rejection exists to throttle this churn.
- Missing sender authentication/consistency checks at SAVI switch for REQUEST/RELEASE/DECLINE:

  - For these DHCP-bound messages, the switch does not verify that srcMac belongs to recv_portID (no mac_port check on REQUEST/RELEASE/DECLINE paths), nor that IAID is consistent with an on-port binding context. It forwards these messages regardless of BST state (except for local table housekeeping), enabling arbitrary control-plane chatter from the attacker process.
- Permanent conflict semantics with no recovery:

  - Once dhcp_server marks gip_IAID[g]= -1, future REQUESTs for g are rejected (NOTONLINK) indefinitely. Without any revalidation or conflict timeout, an attacker can permanently remove gips from the pool, making the exhaustion durable.

# Mitigation suggestions

- Harden DECLINE handling in dhcp_server:

  - Do not immediately mark a gip as “conflict” on a single DECLINE. Require corroborating evidence from SAVI/ND that the address is actually in use elsewhere (e.g., NA for the same target from a different port than the BST anchor, or a verified duplicate detection event).
  - Introduce a quarantine state with time-based re-probing (e.g., re-run DAD or probe via SAVI) before transitioning to permanent conflict.
  - Implement per-IAID rate limits and exponential backoff for DECLINEs; track suspicious DECLINE patterns and throttle or temporarily ban abusive IAIDs.
- Remove attacker-controlled target selection:

  - Do not allow clients to dictate a specific gip in REQUEST. Let the server pick addresses from the pool and avoid predictable sequences. Even if an attacker continues to DECLINE, the inability to target distinct gips per cycle slows or complicates pool poisoning.
- Strengthen SAVI switch filtering for ND and DHCP messages:

  - Forward DAD_NS/NA only if the sender has an active INIT_BIND/BOUND for that target on the same port. Drop DAD_NS targeting gips that are not in INIT_BIND/BOUND anchored to the sender’s port to prevent cross-port DAD interference.
  - Verify REQUEST/RELEASE/DECLINE sender consistency:
    - Check that srcMac maps to recv_portID via mac_port before forwarding.
    - Optionally bind IAID-to-port at allocation time and ensure subsequent RELEASE/DECLINE messages originate from the same port/IAID pair.
  - Add per-port/IAID rate limiting for REQUEST/RELEASE/DECLINE forwarding to the server.
- Introduce recovery for conflict-marked gips:

  - Replace permanent conflict (-1) with time-bounded quarantine: after a hold interval, attempt reassignment with enforced DAD and SAVI cross-checks. If no duplicate is seen, return the gip to the free pool (gip_IAID[g] = 0). This prevents irreversible pool shrinkage from transient or malicious DECLINEs.
- Augment formal properties and model checks:

  - Add LTL properties and assertions to capture:
    - Maximum allowed fraction of the pool in conflict under bounded attacker actions;
    - Per-IAID/port rate limits for DECLINE/REQUEST;
    - Cross-port DAD_NS suppression (no forwarding of DAD_NS for targets not in INIT_BIND/BOUND on sender’s port).
  - Model ND corroboration paths (evidence-driven conflict transitions) to verify resilience against DECLINE-based exhaustion.
- Operational defenses:

  - DHCPv6 authentication or message authorization (e.g., DHCPv6 Auth option, network access control) to reduce unauthorized control-plane manipulation.
  - Monitoring and alerting on abnormal DECLINE/REQUEST churn per IAID/port; automatic mitigation actions (quarantine/banning).

These changes collectively prevent a single attacker IAID on one port from deterministically walking the address pool, converting assigned addresses into permanent conflicts, and violating the resource safety property phi1.
