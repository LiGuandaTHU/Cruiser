// This model is generated automatically by ModelConstructor of Cruiser in Mode 2, based on the Protocol FSM and Unexpected Message Sequence DFA. Do not edit manually.
mtype:MSG = {I_CH_OPEN, I_SR_CONN, I_KEXINIT_PROCEED, I_CH_DATA, I_CH_CLOSE, I_NEWKEYS, I_CH_EOF, I_UA_PK_OK, I_SR_AUTH, I_KEX30, I_UA_PK_NOK, I_KEXINIT, I_CH_REQUEST_PTY, 
	O_UNIMPL, O_KEXINIT, O_CH_EOF, O_UA_FAILURE, O_UA_SUCCESS, O_KEX31, O_CH_OPEN_SUCCESS, O_CH_SUCCESS, O_CH_NONE, O_SR_ACCEPT, O_NO_CONN, O_NEWKEYS, O_CH_MAX};
mtype:FSM_STATE = {s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15, s16};
mtype:DFA_STATE = {start, bug, sr_accept, rekey};
mtype:MSG input;
mtype:MSG output;
mtype:FSM_STATE fsm_state;
mtype:DFA_STATE dfa_state;
bool dealt;

inline DFA_ProcessMessage(msg) {
d_step {
	dealt = false;
	if
	:: dfa_state == start ->
		if
		:: msg == O_SR_ACCEPT ->
			dfa_state = sr_accept;
			dealt = true;
		:: msg == I_CH_OPEN || msg == I_KEXINIT_PROCEED || msg == O_KEXINIT || msg == O_CH_EOF || msg == I_NEWKEYS || msg == O_UA_FAILURE || msg == O_UA_SUCCESS || msg == O_KEX31 || msg == O_CH_OPEN_SUCCESS || msg == O_CH_NONE || msg == I_SR_AUTH || msg == I_KEX30 || msg == I_UA_PK_NOK || msg == I_KEXINIT || msg == I_CH_REQUEST_PTY || msg == I_SR_CONN || msg == O_UNIMPL || msg == I_CH_DATA || msg == I_CH_CLOSE || msg == I_CH_EOF || msg == I_UA_PK_OK || msg == O_CH_SUCCESS || msg == O_NO_CONN || msg == O_NEWKEYS || msg == O_CH_MAX ->
			dfa_state = start;
			dealt = true;
		:: else -> skip;
		fi;
	:: dfa_state == bug ->
		skip;
	:: dfa_state == sr_accept ->
		if
		:: msg == O_KEXINIT ->
			dfa_state = rekey;
			dealt = true;
		:: msg == I_CH_OPEN || msg == I_KEXINIT_PROCEED || msg == O_CH_EOF || msg == I_NEWKEYS || msg == O_UA_FAILURE || msg == O_UA_SUCCESS || msg == O_KEX31 || msg == O_CH_OPEN_SUCCESS || msg == O_CH_NONE || msg == O_SR_ACCEPT || msg == I_SR_AUTH || msg == I_KEX30 || msg == I_UA_PK_NOK || msg == I_KEXINIT || msg == I_CH_REQUEST_PTY || msg == I_SR_CONN || msg == O_UNIMPL || msg == I_CH_DATA || msg == I_CH_CLOSE || msg == I_CH_EOF || msg == I_UA_PK_OK || msg == O_CH_SUCCESS || msg == O_NO_CONN || msg == O_NEWKEYS || msg == O_CH_MAX ->
			dfa_state = sr_accept;
			dealt = true;
		:: else -> skip;
		fi;
	:: dfa_state == rekey ->
		if
		:: msg == O_CH_OPEN_SUCCESS || msg == O_UA_SUCCESS || msg == O_CH_SUCCESS ->
			dfa_state = bug;
			dealt = true;
		:: msg == I_CH_OPEN || msg == I_KEXINIT_PROCEED || msg == O_KEXINIT || msg == O_CH_EOF || msg == O_UA_FAILURE || msg == O_KEX31 || msg == O_CH_NONE || msg == O_SR_ACCEPT || msg == I_SR_AUTH || msg == I_KEX30 || msg == I_UA_PK_NOK || msg == I_KEXINIT || msg == I_CH_REQUEST_PTY || msg == I_SR_CONN || msg == O_UNIMPL || msg == I_CH_DATA || msg == I_CH_CLOSE || msg == I_CH_EOF || msg == I_UA_PK_OK || msg == O_NO_CONN || msg == O_NEWKEYS || msg == O_CH_MAX ->
			dfa_state = rekey;
			dealt = true;
		:: else -> skip;
		fi;
	fi;
}
	if
	:: dealt == false -> goto Restart;
	:: else -> skip;
	fi;
}

init {
Restart:
	fsm_state = s0;
	dfa_state = start;
	dealt = false;
	do
	:: true ->
Continue:
		if
		:: input = I_CH_OPEN;
		:: input = I_SR_CONN;
		:: input = I_KEXINIT_PROCEED;
		:: input = I_CH_DATA;
		:: input = I_CH_CLOSE;
		:: input = I_NEWKEYS;
		:: input = I_CH_EOF;
		:: input = I_UA_PK_OK;
		:: input = I_SR_AUTH;
		:: input = I_KEX30;
		:: input = I_UA_PK_NOK;
		:: input = I_KEXINIT;
		:: input = I_CH_REQUEST_PTY;
		fi;
		printf("Input: %e\n", input);
		DFA_ProcessMessage(input);
		printf("DFA State: %e\n", dfa_state);
		if
		:: fsm_state == s0 ->
			if
			:: input == I_CH_REQUEST_PTY ->
				fsm_state = s0;
				output = O_CH_NONE;
			:: input == I_CH_DATA ->
				fsm_state = s0;
				output = O_CH_NONE;
			:: input == I_CH_CLOSE ->
				fsm_state = s0;
				output = O_CH_NONE;
			:: input == I_CH_EOF ->
				fsm_state = s0;
				output = O_CH_NONE;
			:: input == I_CH_OPEN ->
				fsm_state = s1;
				output = O_KEXINIT;
			:: input == I_UA_PK_NOK ->
				fsm_state = s2;
				output = O_KEXINIT;
			:: input == I_SR_AUTH ->
				fsm_state = s2;
				output = O_KEXINIT;
			:: input == I_SR_CONN ->
				fsm_state = s2;
				output = O_KEXINIT;
			:: input == I_UA_PK_OK ->
				fsm_state = s2;
				output = O_KEXINIT;
			:: input == I_KEX30 ->
				fsm_state = s3;
				output = O_KEXINIT;
				printf("Output: %e\n", output);
				DFA_ProcessMessage(output);
				printf("DFA State: %e\n", dfa_state);
				output = O_UNIMPL;
			:: input == I_NEWKEYS ->
				fsm_state = s3;
				output = O_KEXINIT;
				printf("Output: %e\n", output);
				DFA_ProcessMessage(output);
				printf("DFA State: %e\n", dfa_state);
				output = O_UNIMPL;
			:: input == I_KEXINIT ->
				fsm_state = s3;
				output = O_KEXINIT;
			:: input == I_KEXINIT_PROCEED ->
				fsm_state = s4;
				output = O_KEXINIT;
			:: else -> goto Continue;
			fi;
		:: fsm_state == s1 ->
			if
			:: input == I_UA_PK_NOK ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_KEX30 ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_SR_AUTH ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_SR_CONN ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_NEWKEYS ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_CH_REQUEST_PTY ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_CH_OPEN ->
				fsm_state = s1;
				output = O_CH_MAX;
			:: input == I_CH_DATA ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_UA_PK_OK ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_KEXINIT_PROCEED ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_KEXINIT ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_CH_EOF ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_CH_CLOSE ->
				fsm_state = s2;
				output = O_NO_CONN;
			:: else -> goto Continue;
			fi;
		:: fsm_state == s2 ->
			if
			:: input == I_CH_OPEN ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_UA_PK_NOK ->
				fsm_state = s2;
				output = O_NO_CONN;
			:: input == I_KEX30 ->
				fsm_state = s2;
				output = O_NO_CONN;
			:: input == I_SR_AUTH ->
				fsm_state = s2;
				output = O_NO_CONN;
			:: input == I_SR_CONN ->
				fsm_state = s2;
				output = O_NO_CONN;
			:: input == I_NEWKEYS ->
				fsm_state = s2;
				output = O_NO_CONN;
			:: input == I_CH_REQUEST_PTY ->
				fsm_state = s2;
				output = O_CH_NONE;
			:: input == I_CH_DATA ->
				fsm_state = s2;
				output = O_CH_NONE;
			:: input == I_UA_PK_OK ->
				fsm_state = s2;
				output = O_NO_CONN;
			:: input == I_KEXINIT_PROCEED ->
				fsm_state = s2;
				output = O_NO_CONN;
			:: input == I_CH_CLOSE ->
				fsm_state = s2;
				output = O_CH_NONE;
			:: input == I_KEXINIT ->
				fsm_state = s2;
				output = O_NO_CONN;
			:: input == I_CH_EOF ->
				fsm_state = s2;
				output = O_CH_NONE;
			:: else -> goto Continue;
			fi;
		:: fsm_state == s3 ->
			if
			:: input == I_CH_OPEN ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_UA_PK_NOK ->
				fsm_state = s2;
				output = O_NO_CONN;
			:: input == I_SR_AUTH ->
				fsm_state = s2;
				output = O_NO_CONN;
			:: input == I_SR_CONN ->
				fsm_state = s2;
				output = O_NO_CONN;
			:: input == I_UA_PK_OK ->
				fsm_state = s2;
				output = O_NO_CONN;
			:: input == I_KEXINIT_PROCEED ->
				fsm_state = s2;
				output = O_NO_CONN;
			:: input == I_KEXINIT ->
				fsm_state = s2;
				output = O_NO_CONN;
			:: input == I_NEWKEYS ->
				fsm_state = s3;
				output = O_UNIMPL;
			:: input == I_CH_REQUEST_PTY ->
				fsm_state = s3;
				output = O_CH_NONE;
			:: input == I_CH_DATA ->
				fsm_state = s3;
				output = O_CH_NONE;
			:: input == I_CH_CLOSE ->
				fsm_state = s3;
				output = O_CH_NONE;
			:: input == I_CH_EOF ->
				fsm_state = s3;
				output = O_CH_NONE;
			:: input == I_KEX30 ->
				fsm_state = s5;
				output = O_KEX31;
				printf("Output: %e\n", output);
				DFA_ProcessMessage(output);
				printf("DFA State: %e\n", dfa_state);
				output = O_NEWKEYS;
			:: else -> goto Continue;
			fi;
		:: fsm_state == s4 ->
			if
			:: input == I_CH_OPEN ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_UA_PK_NOK ->
				fsm_state = s2;
				output = O_NO_CONN;
			:: input == I_SR_AUTH ->
				fsm_state = s2;
				output = O_NO_CONN;
			:: input == I_SR_CONN ->
				fsm_state = s2;
				output = O_NO_CONN;
			:: input == I_UA_PK_OK ->
				fsm_state = s2;
				output = O_NO_CONN;
			:: input == I_KEXINIT_PROCEED ->
				fsm_state = s2;
				output = O_NO_CONN;
			:: input == I_KEXINIT ->
				fsm_state = s2;
				output = O_NO_CONN;
			:: input == I_KEX30 ->
				fsm_state = s3;
				goto Continue;
			:: input == I_NEWKEYS ->
				fsm_state = s4;
				output = O_UNIMPL;
			:: input == I_CH_REQUEST_PTY ->
				fsm_state = s4;
				output = O_CH_NONE;
			:: input == I_CH_DATA ->
				fsm_state = s4;
				output = O_CH_NONE;
			:: input == I_CH_CLOSE ->
				fsm_state = s4;
				output = O_CH_NONE;
			:: input == I_CH_EOF ->
				fsm_state = s4;
				output = O_CH_NONE;
			:: else -> goto Continue;
			fi;
		:: fsm_state == s5 ->
			if
			:: input == I_CH_OPEN ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_UA_PK_NOK ->
				fsm_state = s2;
				output = O_NO_CONN;
			:: input == I_SR_AUTH ->
				fsm_state = s2;
				output = O_NO_CONN;
			:: input == I_SR_CONN ->
				fsm_state = s2;
				output = O_NO_CONN;
			:: input == I_UA_PK_OK ->
				fsm_state = s2;
				output = O_NO_CONN;
			:: input == I_KEXINIT_PROCEED ->
				fsm_state = s2;
				output = O_NO_CONN;
			:: input == I_KEXINIT ->
				fsm_state = s2;
				output = O_NO_CONN;
			:: input == I_KEX30 ->
				fsm_state = s5;
				output = O_UNIMPL;
			:: input == I_CH_REQUEST_PTY ->
				fsm_state = s5;
				output = O_CH_NONE;
			:: input == I_CH_DATA ->
				fsm_state = s5;
				output = O_CH_NONE;
			:: input == I_CH_CLOSE ->
				fsm_state = s5;
				output = O_CH_NONE;
			:: input == I_CH_EOF ->
				fsm_state = s5;
				output = O_CH_NONE;
			:: input == I_NEWKEYS ->
				fsm_state = s6;
				goto Continue;
			:: else -> goto Continue;
			fi;
		:: fsm_state == s6 ->
			if
			:: input == I_CH_OPEN ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_KEX30 ->
				fsm_state = s2;
				output = O_NO_CONN;
			:: input == I_SR_CONN ->
				fsm_state = s2;
				output = O_NO_CONN;
			:: input == I_NEWKEYS ->
				fsm_state = s2;
				output = O_NO_CONN;
			:: input == I_UA_PK_NOK ->
				fsm_state = s6;
				output = O_UA_FAILURE;
			:: input == I_SR_AUTH ->
				fsm_state = s6;
				output = O_SR_ACCEPT;
			:: input == I_CH_REQUEST_PTY ->
				fsm_state = s6;
				output = O_CH_NONE;
			:: input == I_CH_DATA ->
				fsm_state = s6;
				output = O_CH_NONE;
			:: input == I_CH_CLOSE ->
				fsm_state = s6;
				output = O_CH_NONE;
			:: input == I_CH_EOF ->
				fsm_state = s6;
				output = O_CH_NONE;
			:: input == I_KEXINIT_PROCEED ->
				fsm_state = s7;
				output = O_KEXINIT;
			:: input == I_KEXINIT ->
				fsm_state = s8;
				output = O_KEXINIT;
			:: input == I_UA_PK_OK ->
				fsm_state = s9;
				output = O_UA_SUCCESS;
			:: else -> goto Continue;
			fi;
		:: fsm_state == s7 ->
			if
			:: input == I_CH_OPEN ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_UA_PK_NOK ->
				fsm_state = s2;
				output = O_NO_CONN;
			:: input == I_SR_AUTH ->
				fsm_state = s2;
				output = O_NO_CONN;
			:: input == I_SR_CONN ->
				fsm_state = s2;
				output = O_NO_CONN;
			:: input == I_NEWKEYS ->
				fsm_state = s2;
				output = O_UNIMPL;
			:: input == I_UA_PK_OK ->
				fsm_state = s2;
				output = O_NO_CONN;
			:: input == I_KEXINIT_PROCEED ->
				fsm_state = s2;
				output = O_NO_CONN;
			:: input == I_KEXINIT ->
				fsm_state = s2;
				output = O_NO_CONN;
			:: input == I_CH_REQUEST_PTY ->
				fsm_state = s7;
				output = O_CH_NONE;
			:: input == I_CH_DATA ->
				fsm_state = s7;
				output = O_CH_NONE;
			:: input == I_CH_CLOSE ->
				fsm_state = s7;
				output = O_CH_NONE;
			:: input == I_CH_EOF ->
				fsm_state = s7;
				output = O_CH_NONE;
			:: input == I_KEX30 ->
				fsm_state = s8;
				goto Continue;
			:: else -> goto Continue;
			fi;
		:: fsm_state == s8 ->
			if
			:: input == I_CH_OPEN ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_UA_PK_NOK ->
				fsm_state = s2;
				output = O_NO_CONN;
			:: input == I_SR_AUTH ->
				fsm_state = s2;
				output = O_NO_CONN;
			:: input == I_SR_CONN ->
				fsm_state = s2;
				output = O_NO_CONN;
			:: input == I_NEWKEYS ->
				fsm_state = s2;
				output = O_UNIMPL;
			:: input == I_UA_PK_OK ->
				fsm_state = s2;
				output = O_NO_CONN;
			:: input == I_KEXINIT_PROCEED ->
				fsm_state = s2;
				output = O_NO_CONN;
			:: input == I_KEXINIT ->
				fsm_state = s2;
				output = O_NO_CONN;
			:: input == I_KEX30 ->
				fsm_state = s5;
				output = O_KEX31;
				printf("Output: %e\n", output);
				DFA_ProcessMessage(output);
				printf("DFA State: %e\n", dfa_state);
				output = O_NEWKEYS;
			:: input == I_CH_REQUEST_PTY ->
				fsm_state = s8;
				output = O_CH_NONE;
			:: input == I_CH_DATA ->
				fsm_state = s8;
				output = O_CH_NONE;
			:: input == I_CH_CLOSE ->
				fsm_state = s8;
				output = O_CH_NONE;
			:: input == I_CH_EOF ->
				fsm_state = s8;
				output = O_CH_NONE;
			:: else -> goto Continue;
			fi;
		:: fsm_state == s9 ->
			if
			:: input == I_KEX30 ->
				fsm_state = s2;
				output = O_NO_CONN;
			:: input == I_NEWKEYS ->
				fsm_state = s2;
				output = O_NO_CONN;
			:: input == I_KEXINIT_PROCEED ->
				fsm_state = s7;
				output = O_KEXINIT;
			:: input == I_KEXINIT ->
				fsm_state = s8;
				output = O_KEXINIT;
			:: input == I_UA_PK_NOK ->
				fsm_state = s9;
				goto Continue;
			:: input == I_SR_AUTH ->
				fsm_state = s9;
				output = O_SR_ACCEPT;
			:: input == I_SR_CONN ->
				fsm_state = s9;
				output = O_SR_ACCEPT;
			:: input == I_CH_REQUEST_PTY ->
				fsm_state = s9;
				output = O_CH_NONE;
			:: input == I_CH_DATA ->
				fsm_state = s9;
				output = O_CH_NONE;
			:: input == I_UA_PK_OK ->
				fsm_state = s9;
				goto Continue;
			:: input == I_CH_CLOSE ->
				fsm_state = s9;
				output = O_CH_NONE;
			:: input == I_CH_EOF ->
				fsm_state = s9;
				output = O_CH_NONE;
			:: input == I_CH_OPEN ->
				fsm_state = s10;
				output = O_CH_OPEN_SUCCESS;
			:: else -> goto Continue;
			fi;
		:: fsm_state == s10 ->
			if
			:: input == I_KEX30 ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_NEWKEYS ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_CH_CLOSE ->
				fsm_state = s9;
				output = O_CH_EOF;
			:: input == I_UA_PK_NOK ->
				fsm_state = s10;
				goto Continue;
			:: input == I_SR_AUTH ->
				fsm_state = s10;
				output = O_SR_ACCEPT;
			:: input == I_SR_CONN ->
				fsm_state = s10;
				output = O_SR_ACCEPT;
			:: input == I_CH_OPEN ->
				fsm_state = s10;
				output = O_CH_MAX;
			:: input == I_CH_DATA ->
				fsm_state = s10;
				goto Continue;
			:: input == I_UA_PK_OK ->
				fsm_state = s10;
				goto Continue;
			:: input == I_KEXINIT_PROCEED ->
				fsm_state = s11;
				output = O_KEXINIT;
			:: input == I_CH_EOF ->
				fsm_state = s12;
				output = O_CH_EOF;
			:: input == I_KEXINIT ->
				fsm_state = s13;
				output = O_KEXINIT;
			:: input == I_CH_REQUEST_PTY ->
				fsm_state = s14;
				output = O_CH_SUCCESS;
			:: else -> goto Continue;
			fi;
		:: fsm_state == s11 ->
			if
			:: input == I_UA_PK_NOK ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_SR_AUTH ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_SR_CONN ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_NEWKEYS ->
				fsm_state = s1;
				output = O_UNIMPL;
			:: input == I_CH_REQUEST_PTY ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_CH_DATA ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_UA_PK_OK ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_KEXINIT_PROCEED ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_KEXINIT ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_CH_EOF ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_CH_CLOSE ->
				fsm_state = s2;
				output = O_NO_CONN;
			:: input == I_CH_OPEN ->
				fsm_state = s11;
				output = O_CH_MAX;
			:: input == I_KEX30 ->
				fsm_state = s13;
				goto Continue;
			:: else -> goto Continue;
			fi;
		:: fsm_state == s12 ->
			if
			:: input == I_KEX30 ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_NEWKEYS ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_CH_DATA ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_CH_CLOSE ->
				fsm_state = s9;
				goto Continue;
			:: input == I_KEXINIT_PROCEED ->
				fsm_state = s11;
				output = O_KEXINIT;
			:: input == I_UA_PK_NOK ->
				fsm_state = s12;
				goto Continue;
			:: input == I_SR_AUTH ->
				fsm_state = s12;
				output = O_SR_ACCEPT;
			:: input == I_SR_CONN ->
				fsm_state = s12;
				output = O_SR_ACCEPT;
			:: input == I_CH_OPEN ->
				fsm_state = s12;
				output = O_CH_MAX;
			:: input == I_UA_PK_OK ->
				fsm_state = s12;
				goto Continue;
			:: input == I_CH_EOF ->
				fsm_state = s12;
				goto Continue;
			:: input == I_KEXINIT ->
				fsm_state = s13;
				output = O_KEXINIT;
			:: input == I_CH_REQUEST_PTY ->
				fsm_state = s15;
				output = O_CH_SUCCESS;
			:: else -> goto Continue;
			fi;
		:: fsm_state == s13 ->
			if
			:: input == I_UA_PK_NOK ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_SR_AUTH ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_SR_CONN ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_NEWKEYS ->
				fsm_state = s1;
				output = O_UNIMPL;
			:: input == I_CH_REQUEST_PTY ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_CH_DATA ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_UA_PK_OK ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_KEXINIT_PROCEED ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_KEXINIT ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_CH_EOF ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_CH_CLOSE ->
				fsm_state = s2;
				output = O_NO_CONN;
			:: input == I_CH_OPEN ->
				fsm_state = s13;
				output = O_CH_MAX;
			:: input == I_KEX30 ->
				fsm_state = s16;
				output = O_KEX31;
				printf("Output: %e\n", output);
				DFA_ProcessMessage(output);
				printf("DFA State: %e\n", dfa_state);
				output = O_NEWKEYS;
			:: else -> goto Continue;
			fi;
		:: fsm_state == s14 ->
			if
			:: input == I_KEX30 ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_NEWKEYS ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_CH_REQUEST_PTY ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_CH_CLOSE ->
				fsm_state = s9;
				output = O_CH_EOF;
			:: input == I_KEXINIT_PROCEED ->
				fsm_state = s11;
				output = O_KEXINIT;
			:: input == I_KEXINIT ->
				fsm_state = s13;
				output = O_KEXINIT;
			:: input == I_UA_PK_NOK ->
				fsm_state = s14;
				goto Continue;
			:: input == I_SR_AUTH ->
				fsm_state = s14;
				output = O_SR_ACCEPT;
			:: input == I_SR_CONN ->
				fsm_state = s14;
				output = O_SR_ACCEPT;
			:: input == I_CH_OPEN ->
				fsm_state = s14;
				output = O_CH_MAX;
			:: input == I_CH_DATA ->
				fsm_state = s14;
				goto Continue;
			:: input == I_UA_PK_OK ->
				fsm_state = s14;
				goto Continue;
			:: input == I_CH_EOF ->
				fsm_state = s15;
				output = O_CH_EOF;
			:: else -> goto Continue;
			fi;
		:: fsm_state == s15 ->
			if
			:: input == I_KEX30 ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_NEWKEYS ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_CH_REQUEST_PTY ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_CH_DATA ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_CH_CLOSE ->
				fsm_state = s9;
				goto Continue;
			:: input == I_KEXINIT_PROCEED ->
				fsm_state = s11;
				output = O_KEXINIT;
			:: input == I_KEXINIT ->
				fsm_state = s13;
				output = O_KEXINIT;
			:: input == I_UA_PK_NOK ->
				fsm_state = s15;
				goto Continue;
			:: input == I_SR_AUTH ->
				fsm_state = s15;
				output = O_SR_ACCEPT;
			:: input == I_SR_CONN ->
				fsm_state = s15;
				output = O_SR_ACCEPT;
			:: input == I_CH_OPEN ->
				fsm_state = s15;
				output = O_CH_MAX;
			:: input == I_UA_PK_OK ->
				fsm_state = s15;
				goto Continue;
			:: input == I_CH_EOF ->
				fsm_state = s15;
				goto Continue;
			:: else -> goto Continue;
			fi;
		:: fsm_state == s16 ->
			if
			:: input == I_UA_PK_NOK ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_SR_AUTH ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_SR_CONN ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_CH_REQUEST_PTY ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_CH_DATA ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_UA_PK_OK ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_KEXINIT_PROCEED ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_KEXINIT ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_CH_EOF ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_CH_CLOSE ->
				fsm_state = s2;
				output = O_NO_CONN;
			:: input == I_NEWKEYS ->
				fsm_state = s10;
				goto Continue;
			:: input == I_KEX30 ->
				fsm_state = s16;
				output = O_UNIMPL;
			:: input == I_CH_OPEN ->
				fsm_state = s16;
				output = O_CH_MAX;
			:: else -> goto Continue;
			fi;
		fi;
		printf("FSM State: %e\n", fsm_state);
		printf("Output: %e\n\n", output);
		DFA_ProcessMessage(output);
		printf("DFA State: %e\n\n", dfa_state);
	od;
}
ltl no_bug { [] (dfa_state != bug) }