import subprocess

# ssh_fsm = ["BitVise-7.23.dot",
#            "BitVise-8.49.dot",
#            "Dropbear-v2014.65.dot",
#            "Dropbear-v2020.81.dot",
#            "OpenSSH-6.9p1.dot",
#            "OpenSSH-8.2p1.dot",
#            "OpenSSH-8.8p1.dot",]

ssh_fsm = ["Dropbear-v2025.89.dot"]

ssh_dfa = ["auth_failure_after_rekey.dot",
           "channel_open_failure_after_rekey.dot",
           "channel_request_terminal_failure_after_rekey.dot",
           "continue_after_disconnect.dot",
           "early_service_accept.dot",
           "invalid_auth_rejection_response.dot",
           "invalid_closure_response.dot",
           "invalid_response_before_newkeys.dot",
           "invalid_service_request_response.dot",
           "missing_newkeys.dot",
           "missing_sr_auth.dot",
           "missing_ua_success.dot",
           "multiple_ua_success.dot",
           "rekey_failure_after_authentication.dot",
           "rekey_failure_before_authentication.dot",
           "transport_layer_bug.dot",
           "unauthenticated_client.dot",
           "unignored_auth_request.dot"]

result_dict = {}
for fsm in ssh_fsm:
    result_dict[fsm] = {}
    for dfa in ssh_dfa:
        outfd = f"./Examples/SSH_mode2/Result/{fsm[:-4]}_{dfa[:-4]}"
        cmd = f"python3 Cruiser.py --mode BI --outfd {outfd} --number 1 --fsm ./Examples/SSH_mode2/PFSM/{fsm} --dfa ./Examples/SSH_mode2/BPDFA/{dfa}"
        print(f"Running test with FSM: {fsm} and DFA: {dfa}")
        output = subprocess.run(cmd, shell=True, capture_output=True, text=True).stdout
        lastline = output.strip().split('\n')[-1]
        result_dict[fsm][dfa] = (lastline[:2] != "No")

print(result_dict)
with open("./Examples/SSH_mode2/Result/dropbear202589_results.txt", "w") as f:
    for fsm in ssh_fsm:
        for dfa in ssh_dfa:
            result = "VULNERABLE" if result_dict[fsm][dfa] else "SAFE"
            f.write(f"FSM: {fsm}, DFA: {dfa} => {result}\n")