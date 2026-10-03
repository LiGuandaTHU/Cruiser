// This model is generated automatically by ModelConstructor of Cruiser in Mode 2, based on the Protocol FSM and Unexpected Message Sequence DFA. Do not edit manually.
mtype:MSG = {I_NEWKEYS, I_CH_CLOSE, I_SR_AUTH, I_KEXINIT, I_CH_EOF, I_SR_CONN, I_CH_DATA, I_CH_OPEN, I_CH_REQUEST_PTY, I_UA_PK_OK, I_UA_PK_NOK, I_KEX30, 
	I_KEXINIT_PROCEED, 
	O_DISCONNECT, O_KEXINIT, O_CH_MAX, O_CH_CLOSE, O_BUFFERED, O_NO_CONN, O_CH_OPEN_SUCCESS, O_CH_NONE, O_UA_SUCCESS, O_NEWKEYS, O_GLOBAL_REQUEST, O_UA_FAILURE, O_UNIMPL, O_SR_ACCEPT, O_CH_SUCCESS, O_KEX31};
mtype:FSM_STATE = {s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15, s16, s17, s18, s19, s20, s21, s22, s23, s24, s25, s26, s27, s28, s29, s30, s31, s32, s33, s34, s35, s36};
mtype:DFA_STATE = {start, bug, auth, rekey, post_rekey, open, kexinit, kex30, kex31, newkeys};
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
		:: msg == O_UA_SUCCESS ->
			dfa_state = auth;
			dealt = true;
		:: msg == O_DISCONNECT || msg == I_NEWKEYS || msg == I_SR_AUTH || msg == O_KEXINIT || msg == O_CH_MAX || msg == O_NO_CONN || msg == O_CH_OPEN_SUCCESS || msg == I_KEXINIT || msg == O_NEWKEYS || msg == O_UNIMPL || msg == I_SR_CONN || msg == I_CH_REQUEST_PTY || msg == O_CH_SUCCESS || msg == I_UA_PK_OK || msg == I_UA_PK_NOK || msg == I_CH_CLOSE || msg == O_BUFFERED || msg == O_CH_CLOSE || msg == O_CH_NONE || msg == O_GLOBAL_REQUEST || msg == I_CH_EOF || msg == O_UA_FAILURE || msg == I_CH_DATA || msg == I_CH_OPEN || msg == O_SR_ACCEPT || msg == O_KEX31 || msg == I_KEX30 ->
			dfa_state = start;
			dealt = true;
		:: else -> skip;
		fi;
	:: dfa_state == bug ->
		skip;
	:: dfa_state == auth ->
		if
		:: msg == I_KEXINIT || msg == I_KEXINIT_PROCEED ->
			dfa_state = rekey;
			dealt = true;
		:: msg == I_NEWKEYS || msg == I_SR_AUTH || msg == O_KEXINIT || msg == O_CH_MAX || msg == O_NEWKEYS || msg == O_UNIMPL || msg == I_SR_CONN || msg == I_CH_REQUEST_PTY || msg == O_CH_SUCCESS || msg == I_UA_PK_OK || msg == I_UA_PK_NOK || msg == I_CH_CLOSE || msg == O_BUFFERED || msg == O_CH_CLOSE || msg == O_CH_NONE || msg == O_UA_SUCCESS || msg == O_GLOBAL_REQUEST || msg == I_CH_EOF || msg == O_UA_FAILURE || msg == I_CH_DATA || msg == I_CH_OPEN || msg == O_SR_ACCEPT || msg == O_KEX31 || msg == I_KEX30 ->
			dfa_state = auth;
			dealt = true;
		:: else -> skip;
		fi;
	:: dfa_state == rekey ->
		if
		:: msg == O_KEXINIT ->
			dfa_state = kexinit;
			dealt = true;
		:: else -> skip;
		fi;
	:: dfa_state == post_rekey ->
		if
		:: msg == I_CH_OPEN ->
			dfa_state = open;
			dealt = true;
		:: msg == I_KEXINIT || msg == I_KEXINIT_PROCEED ->
			dfa_state = rekey;
			dealt = true;
		:: msg == I_NEWKEYS || msg == I_SR_AUTH || msg == O_KEXINIT || msg == O_CH_MAX || msg == O_CH_OPEN_SUCCESS || msg == O_NEWKEYS || msg == I_SR_CONN || msg == I_CH_REQUEST_PTY || msg == O_CH_SUCCESS || msg == I_UA_PK_OK || msg == I_UA_PK_NOK || msg == I_CH_CLOSE || msg == O_BUFFERED || msg == O_CH_CLOSE || msg == O_CH_NONE || msg == O_UA_SUCCESS || msg == O_GLOBAL_REQUEST || msg == I_CH_EOF || msg == O_UA_FAILURE || msg == I_CH_DATA || msg == O_SR_ACCEPT || msg == O_KEX31 || msg == I_KEX30 ->
			dfa_state = post_rekey;
			dealt = true;
		:: else -> skip;
		fi;
	:: dfa_state == open ->
		if
		:: msg == O_DISCONNECT || msg == I_NEWKEYS || msg == I_SR_AUTH || msg == O_KEXINIT || msg == O_NO_CONN || msg == I_KEXINIT || msg == O_NEWKEYS || msg == O_UNIMPL || msg == I_SR_CONN || msg == I_CH_REQUEST_PTY || msg == O_CH_SUCCESS || msg == I_UA_PK_OK || msg == I_UA_PK_NOK || msg == I_CH_CLOSE || msg == O_BUFFERED || msg == O_CH_CLOSE || msg == O_UA_SUCCESS || msg == O_GLOBAL_REQUEST || msg == I_CH_EOF || msg == O_UA_FAILURE || msg == I_CH_DATA || msg == I_CH_OPEN || msg == O_SR_ACCEPT || msg == O_KEX31 || msg == I_KEX30 ->
			dfa_state = bug;
			dealt = true;
		:: else -> skip;
		fi;
	:: dfa_state == kexinit ->
		if
		:: msg == I_KEX30 ->
			dfa_state = kex30;
			dealt = true;
		:: else -> skip;
		fi;
	:: dfa_state == kex30 ->
		if
		:: msg == O_KEX31 ->
			dfa_state = kex31;
			dealt = true;
		:: else -> skip;
		fi;
	:: dfa_state == kex31 ->
		if
		:: msg == O_NEWKEYS ->
			dfa_state = newkeys;
			dealt = true;
		:: else -> skip;
		fi;
	:: dfa_state == newkeys ->
		if
		:: msg == I_NEWKEYS ->
			dfa_state = post_rekey;
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
		:: input = I_NEWKEYS;
		:: input = I_CH_CLOSE;
		:: input = I_SR_AUTH;
		:: input = I_KEXINIT;
		:: input = I_CH_EOF;
		:: input = I_SR_CONN;
		:: input = I_CH_DATA;
		:: input = I_CH_OPEN;
		:: input = I_CH_REQUEST_PTY;
		:: input = I_UA_PK_OK;
		:: input = I_UA_PK_NOK;
		:: input = I_KEX30;
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
			:: input == I_KEX30 ->
				fsm_state = s2;
				output = O_KEXINIT;
				printf("Output: %e\n", output);
				DFA_ProcessMessage(output);
				printf("DFA State: %e\n", dfa_state);
				output = O_UNIMPL;
			:: input == I_NEWKEYS ->
				fsm_state = s2;
				output = O_KEXINIT;
				printf("Output: %e\n", output);
				DFA_ProcessMessage(output);
				printf("DFA State: %e\n", dfa_state);
				output = O_UNIMPL;
			:: input == I_SR_CONN ->
				fsm_state = s2;
				output = O_KEXINIT;
				printf("Output: %e\n", output);
				DFA_ProcessMessage(output);
				printf("DFA State: %e\n", dfa_state);
				output = O_UNIMPL;
			:: input == I_KEXINIT ->
				fsm_state = s2;
				output = O_KEXINIT;
			:: input == I_SR_AUTH ->
				fsm_state = s2;
				output = O_KEXINIT;
				printf("Output: %e\n", output);
				DFA_ProcessMessage(output);
				printf("DFA State: %e\n", dfa_state);
				output = O_UNIMPL;
			:: input == I_UA_PK_NOK ->
				fsm_state = s3;
				output = O_KEXINIT;
			:: input == I_UA_PK_OK ->
				fsm_state = s3;
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
			:: input == I_SR_CONN ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_KEXINIT ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_CH_EOF ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_SR_AUTH ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_CH_CLOSE ->
				fsm_state = s3;
				output = O_NO_CONN;
			:: else -> goto Continue;
			fi;
		:: fsm_state == s2 ->
			if
			:: input == I_CH_OPEN ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_NEWKEYS ->
				fsm_state = s2;
				output = O_UNIMPL;
			:: input == I_CH_REQUEST_PTY ->
				fsm_state = s2;
				output = O_CH_NONE;
			:: input == I_CH_DATA ->
				fsm_state = s2;
				output = O_CH_NONE;
			:: input == I_CH_CLOSE ->
				fsm_state = s2;
				output = O_CH_NONE;
			:: input == I_SR_CONN ->
				fsm_state = s2;
				output = O_UNIMPL;
			:: input == I_CH_EOF ->
				fsm_state = s2;
				output = O_CH_NONE;
			:: input == I_SR_AUTH ->
				fsm_state = s2;
				output = O_UNIMPL;
			:: input == I_UA_PK_NOK ->
				fsm_state = s3;
				output = O_NO_CONN;
			:: input == I_UA_PK_OK ->
				fsm_state = s3;
				output = O_NO_CONN;
			:: input == I_KEXINIT ->
				fsm_state = s3;
				output = O_NO_CONN;
			:: input == I_KEX30 ->
				fsm_state = s4;
				output = O_KEX31;
				printf("Output: %e\n", output);
				DFA_ProcessMessage(output);
				printf("DFA State: %e\n", dfa_state);
				output = O_NEWKEYS;
			:: else -> goto Continue;
			fi;
		:: fsm_state == s3 ->
			if
			:: input == I_CH_OPEN ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_UA_PK_NOK ->
				fsm_state = s3;
				output = O_NO_CONN;
			:: input == I_KEX30 ->
				fsm_state = s3;
				output = O_NO_CONN;
			:: input == I_NEWKEYS ->
				fsm_state = s3;
				output = O_NO_CONN;
			:: input == I_CH_REQUEST_PTY ->
				fsm_state = s3;
				output = O_CH_NONE;
			:: input == I_CH_DATA ->
				fsm_state = s3;
				output = O_CH_NONE;
			:: input == I_UA_PK_OK ->
				fsm_state = s3;
				output = O_NO_CONN;
			:: input == I_CH_CLOSE ->
				fsm_state = s3;
				output = O_CH_NONE;
			:: input == I_SR_CONN ->
				fsm_state = s3;
				output = O_NO_CONN;
			:: input == I_KEXINIT ->
				fsm_state = s3;
				output = O_NO_CONN;
			:: input == I_CH_EOF ->
				fsm_state = s3;
				output = O_CH_NONE;
			:: input == I_SR_AUTH ->
				fsm_state = s3;
				output = O_NO_CONN;
			:: else -> goto Continue;
			fi;
		:: fsm_state == s4 ->
			if
			:: input == I_CH_OPEN ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_UA_PK_NOK ->
				fsm_state = s3;
				output = O_NO_CONN;
			:: input == I_UA_PK_OK ->
				fsm_state = s3;
				output = O_NO_CONN;
			:: input == I_KEX30 ->
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
			:: input == I_SR_CONN ->
				fsm_state = s4;
				output = O_UNIMPL;
			:: input == I_KEXINIT ->
				fsm_state = s4;
				output = O_UNIMPL;
			:: input == I_CH_EOF ->
				fsm_state = s4;
				output = O_CH_NONE;
			:: input == I_SR_AUTH ->
				fsm_state = s4;
				output = O_UNIMPL;
			:: input == I_NEWKEYS ->
				fsm_state = s5;
				goto Continue;
			:: else -> goto Continue;
			fi;
		:: fsm_state == s5 ->
			if
			:: input == I_NEWKEYS ->
				fsm_state = s3;
				output = O_UNIMPL;
			:: input == I_SR_CONN ->
				fsm_state = s3;
				output = O_DISCONNECT;
			:: input == I_UA_PK_NOK ->
				fsm_state = s5;
				output = O_UNIMPL;
			:: input == I_KEX30 ->
				fsm_state = s5;
				output = O_UNIMPL;
			:: input == I_CH_REQUEST_PTY ->
				fsm_state = s5;
				output = O_CH_NONE;
			:: input == I_CH_DATA ->
				fsm_state = s5;
				output = O_CH_NONE;
			:: input == I_UA_PK_OK ->
				fsm_state = s5;
				output = O_UNIMPL;
			:: input == I_CH_CLOSE ->
				fsm_state = s5;
				output = O_CH_NONE;
			:: input == I_KEXINIT ->
				fsm_state = s5;
				output = O_UNIMPL;
			:: input == I_CH_EOF ->
				fsm_state = s5;
				output = O_CH_NONE;
			:: input == I_SR_AUTH ->
				fsm_state = s6;
				output = O_SR_ACCEPT;
			:: input == I_CH_OPEN ->
				fsm_state = s7;
				output = O_UNIMPL;
			:: else -> goto Continue;
			fi;
		:: fsm_state == s6 ->
			if
			:: input == I_NEWKEYS ->
				fsm_state = s3;
				output = O_UNIMPL;
			:: input == I_SR_CONN ->
				fsm_state = s3;
				output = O_DISCONNECT;
			:: input == I_KEX30 ->
				fsm_state = s6;
				output = O_UNIMPL;
			:: input == I_CH_REQUEST_PTY ->
				fsm_state = s6;
				output = O_CH_NONE;
			:: input == I_CH_DATA ->
				fsm_state = s6;
				output = O_CH_NONE;
			:: input == I_CH_CLOSE ->
				fsm_state = s6;
				output = O_CH_NONE;
			:: input == I_KEXINIT ->
				fsm_state = s6;
				output = O_UNIMPL;
			:: input == I_CH_EOF ->
				fsm_state = s6;
				output = O_CH_NONE;
			:: input == I_SR_AUTH ->
				fsm_state = s6;
				output = O_SR_ACCEPT;
			:: input == I_CH_OPEN ->
				fsm_state = s8;
				output = O_UNIMPL;
			:: input == I_UA_PK_NOK ->
				fsm_state = s9;
				output = O_UA_FAILURE;
			:: input == I_UA_PK_OK ->
				fsm_state = s10;
				output = O_UA_SUCCESS;
				printf("Output: %e\n", output);
				DFA_ProcessMessage(output);
				printf("DFA State: %e\n", dfa_state);
				output = O_GLOBAL_REQUEST;
			:: else -> goto Continue;
			fi;
		:: fsm_state == s7 ->
			if
			:: input == I_NEWKEYS ->
				fsm_state = s1;
				output = O_UNIMPL;
			:: input == I_SR_CONN ->
				fsm_state = s1;
				output = O_DISCONNECT;
			:: input == I_CH_CLOSE ->
				fsm_state = s5;
				output = O_UNIMPL;
			:: input == I_UA_PK_NOK ->
				fsm_state = s7;
				output = O_UNIMPL;
			:: input == I_KEX30 ->
				fsm_state = s7;
				output = O_UNIMPL;
			:: input == I_CH_REQUEST_PTY ->
				fsm_state = s7;
				output = O_UNIMPL;
			:: input == I_CH_OPEN ->
				fsm_state = s7;
				output = O_CH_MAX;
			:: input == I_CH_DATA ->
				fsm_state = s7;
				output = O_UNIMPL;
			:: input == I_UA_PK_OK ->
				fsm_state = s7;
				output = O_UNIMPL;
			:: input == I_KEXINIT ->
				fsm_state = s7;
				output = O_UNIMPL;
			:: input == I_CH_EOF ->
				fsm_state = s7;
				output = O_UNIMPL;
			:: input == I_SR_AUTH ->
				fsm_state = s8;
				output = O_SR_ACCEPT;
			:: else -> goto Continue;
			fi;
		:: fsm_state == s8 ->
			if
			:: input == I_NEWKEYS ->
				fsm_state = s1;
				output = O_UNIMPL;
			:: input == I_SR_CONN ->
				fsm_state = s1;
				output = O_DISCONNECT;
			:: input == I_CH_CLOSE ->
				fsm_state = s6;
				output = O_UNIMPL;
			:: input == I_KEX30 ->
				fsm_state = s8;
				output = O_UNIMPL;
			:: input == I_CH_REQUEST_PTY ->
				fsm_state = s8;
				output = O_UNIMPL;
			:: input == I_CH_OPEN ->
				fsm_state = s8;
				output = O_CH_MAX;
			:: input == I_CH_DATA ->
				fsm_state = s8;
				output = O_UNIMPL;
			:: input == I_KEXINIT ->
				fsm_state = s8;
				output = O_UNIMPL;
			:: input == I_CH_EOF ->
				fsm_state = s8;
				output = O_UNIMPL;
			:: input == I_SR_AUTH ->
				fsm_state = s8;
				output = O_SR_ACCEPT;
			:: input == I_UA_PK_NOK ->
				fsm_state = s11;
				output = O_UA_FAILURE;
			:: input == I_UA_PK_OK ->
				fsm_state = s12;
				output = O_UA_SUCCESS;
				printf("Output: %e\n", output);
				DFA_ProcessMessage(output);
				printf("DFA State: %e\n", dfa_state);
				output = O_GLOBAL_REQUEST;
			:: else -> goto Continue;
			fi;
		:: fsm_state == s9 ->
			if
			:: input == I_NEWKEYS ->
				fsm_state = s3;
				output = O_UNIMPL;
			:: input == I_UA_PK_OK ->
				fsm_state = s3;
				output = O_DISCONNECT;
			:: input == I_SR_CONN ->
				fsm_state = s3;
				output = O_DISCONNECT;
			:: input == I_UA_PK_NOK ->
				fsm_state = s9;
				output = O_UA_FAILURE;
			:: input == I_KEX30 ->
				fsm_state = s9;
				output = O_UNIMPL;
			:: input == I_CH_REQUEST_PTY ->
				fsm_state = s9;
				output = O_CH_NONE;
			:: input == I_CH_DATA ->
				fsm_state = s9;
				output = O_CH_NONE;
			:: input == I_CH_CLOSE ->
				fsm_state = s9;
				output = O_CH_NONE;
			:: input == I_KEXINIT ->
				fsm_state = s9;
				output = O_UNIMPL;
			:: input == I_CH_EOF ->
				fsm_state = s9;
				output = O_CH_NONE;
			:: input == I_SR_AUTH ->
				fsm_state = s9;
				output = O_SR_ACCEPT;
			:: input == I_CH_OPEN ->
				fsm_state = s11;
				output = O_UNIMPL;
			:: else -> goto Continue;
			fi;
		:: fsm_state == s10 ->
			if
			:: input == I_NEWKEYS ->
				fsm_state = s3;
				output = O_UNIMPL;
			:: input == I_UA_PK_NOK ->
				fsm_state = s10;
				output = O_UNIMPL;
			:: input == I_KEX30 ->
				fsm_state = s10;
				output = O_UNIMPL;
			:: input == I_CH_REQUEST_PTY ->
				fsm_state = s10;
				output = O_CH_NONE;
			:: input == I_CH_DATA ->
				fsm_state = s10;
				output = O_CH_NONE;
			:: input == I_UA_PK_OK ->
				fsm_state = s10;
				output = O_UNIMPL;
			:: input == I_CH_CLOSE ->
				fsm_state = s10;
				output = O_CH_NONE;
			:: input == I_SR_CONN ->
				fsm_state = s10;
				output = O_UNIMPL;
			:: input == I_CH_EOF ->
				fsm_state = s10;
				output = O_CH_NONE;
			:: input == I_SR_AUTH ->
				fsm_state = s10;
				output = O_UNIMPL;
			:: input == I_CH_OPEN ->
				fsm_state = s13;
				output = O_CH_OPEN_SUCCESS;
			:: input == I_KEXINIT ->
				fsm_state = s14;
				output = O_KEXINIT;
			:: else -> goto Continue;
			fi;
		:: fsm_state == s11 ->
			if
			:: input == I_NEWKEYS ->
				fsm_state = s1;
				output = O_UNIMPL;
			:: input == I_UA_PK_OK ->
				fsm_state = s1;
				output = O_DISCONNECT;
			:: input == I_SR_CONN ->
				fsm_state = s1;
				output = O_DISCONNECT;
			:: input == I_CH_CLOSE ->
				fsm_state = s9;
				output = O_UNIMPL;
			:: input == I_UA_PK_NOK ->
				fsm_state = s11;
				output = O_UA_FAILURE;
			:: input == I_KEX30 ->
				fsm_state = s11;
				output = O_UNIMPL;
			:: input == I_CH_REQUEST_PTY ->
				fsm_state = s11;
				output = O_UNIMPL;
			:: input == I_CH_OPEN ->
				fsm_state = s11;
				output = O_CH_MAX;
			:: input == I_CH_DATA ->
				fsm_state = s11;
				output = O_UNIMPL;
			:: input == I_KEXINIT ->
				fsm_state = s11;
				output = O_UNIMPL;
			:: input == I_CH_EOF ->
				fsm_state = s11;
				output = O_UNIMPL;
			:: input == I_SR_AUTH ->
				fsm_state = s11;
				output = O_SR_ACCEPT;
			:: else -> goto Continue;
			fi;
		:: fsm_state == s12 ->
			if
			:: input == I_NEWKEYS ->
				fsm_state = s1;
				output = O_UNIMPL;
			:: input == I_CH_REQUEST_PTY ->
				fsm_state = s1;
				output = O_DISCONNECT;
			:: input == I_CH_DATA ->
				fsm_state = s1;
				output = O_DISCONNECT;
			:: input == I_CH_EOF ->
				fsm_state = s1;
				output = O_DISCONNECT;
			:: input == I_CH_CLOSE ->
				fsm_state = s3;
				output = O_DISCONNECT;
			:: input == I_UA_PK_NOK ->
				fsm_state = s12;
				output = O_UNIMPL;
			:: input == I_KEX30 ->
				fsm_state = s12;
				output = O_UNIMPL;
			:: input == I_CH_OPEN ->
				fsm_state = s12;
				output = O_CH_MAX;
			:: input == I_UA_PK_OK ->
				fsm_state = s12;
				output = O_UNIMPL;
			:: input == I_SR_CONN ->
				fsm_state = s12;
				output = O_UNIMPL;
			:: input == I_SR_AUTH ->
				fsm_state = s12;
				output = O_UNIMPL;
			:: input == I_KEXINIT ->
				fsm_state = s15;
				output = O_KEXINIT;
			:: else -> goto Continue;
			fi;
		:: fsm_state == s13 ->
			if
			:: input == I_NEWKEYS ->
				fsm_state = s1;
				output = O_UNIMPL;
			:: input == I_CH_CLOSE ->
				fsm_state = s10;
				output = O_CH_CLOSE;
			:: input == I_UA_PK_NOK ->
				fsm_state = s13;
				output = O_UNIMPL;
			:: input == I_KEX30 ->
				fsm_state = s13;
				output = O_UNIMPL;
			:: input == I_CH_OPEN ->
				fsm_state = s13;
				output = O_CH_MAX;
			:: input == I_CH_DATA ->
				fsm_state = s13;
				goto Continue;
			:: input == I_UA_PK_OK ->
				fsm_state = s13;
				output = O_UNIMPL;
			:: input == I_SR_CONN ->
				fsm_state = s13;
				output = O_UNIMPL;
			:: input == I_CH_EOF ->
				fsm_state = s13;
				goto Continue;
			:: input == I_SR_AUTH ->
				fsm_state = s13;
				output = O_UNIMPL;
			:: input == I_KEXINIT ->
				fsm_state = s16;
				output = O_KEXINIT;
			:: input == I_CH_REQUEST_PTY ->
				fsm_state = s17;
				output = O_CH_SUCCESS;
			:: else -> goto Continue;
			fi;
		:: fsm_state == s14 ->
			if
			:: input == I_NEWKEYS ->
				fsm_state = s3;
				output = O_UNIMPL;
			:: input == I_KEXINIT ->
				fsm_state = s3;
				output = O_NO_CONN;
			:: input == I_UA_PK_NOK ->
				fsm_state = s14;
				output = O_UNIMPL;
			:: input == I_CH_REQUEST_PTY ->
				fsm_state = s14;
				output = O_CH_NONE;
			:: input == I_CH_DATA ->
				fsm_state = s14;
				output = O_CH_NONE;
			:: input == I_UA_PK_OK ->
				fsm_state = s14;
				output = O_UNIMPL;
			:: input == I_CH_CLOSE ->
				fsm_state = s14;
				output = O_CH_NONE;
			:: input == I_SR_CONN ->
				fsm_state = s14;
				output = O_UNIMPL;
			:: input == I_CH_EOF ->
				fsm_state = s14;
				output = O_CH_NONE;
			:: input == I_SR_AUTH ->
				fsm_state = s14;
				output = O_UNIMPL;
			:: input == I_CH_OPEN ->
				fsm_state = s18;
				goto Continue;
			:: input == I_KEX30 ->
				fsm_state = s19;
				output = O_KEX31;
				printf("Output: %e\n", output);
				DFA_ProcessMessage(output);
				printf("DFA State: %e\n", dfa_state);
				output = O_NEWKEYS;
			:: else -> goto Continue;
			fi;
		:: fsm_state == s15 ->
			if
			:: input == I_NEWKEYS ->
				fsm_state = s1;
				output = O_UNIMPL;
			:: input == I_CH_REQUEST_PTY ->
				fsm_state = s1;
				output = O_DISCONNECT;
			:: input == I_CH_DATA ->
				fsm_state = s1;
				output = O_DISCONNECT;
			:: input == I_KEXINIT ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_CH_EOF ->
				fsm_state = s1;
				output = O_DISCONNECT;
			:: input == I_CH_CLOSE ->
				fsm_state = s3;
				output = O_DISCONNECT;
			:: input == I_UA_PK_NOK ->
				fsm_state = s15;
				output = O_UNIMPL;
			:: input == I_CH_OPEN ->
				fsm_state = s15;
				output = O_CH_MAX;
			:: input == I_UA_PK_OK ->
				fsm_state = s15;
				output = O_UNIMPL;
			:: input == I_SR_CONN ->
				fsm_state = s15;
				output = O_UNIMPL;
			:: input == I_SR_AUTH ->
				fsm_state = s15;
				output = O_UNIMPL;
			:: input == I_KEX30 ->
				fsm_state = s20;
				output = O_KEX31;
				printf("Output: %e\n", output);
				DFA_ProcessMessage(output);
				printf("DFA State: %e\n", dfa_state);
				output = O_NEWKEYS;
			:: else -> goto Continue;
			fi;
		:: fsm_state == s16 ->
			if
			:: input == I_NEWKEYS ->
				fsm_state = s1;
				output = O_UNIMPL;
			:: input == I_KEXINIT ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_UA_PK_NOK ->
				fsm_state = s16;
				output = O_UNIMPL;
			:: input == I_CH_OPEN ->
				fsm_state = s16;
				output = O_CH_MAX;
			:: input == I_CH_DATA ->
				fsm_state = s16;
				goto Continue;
			:: input == I_UA_PK_OK ->
				fsm_state = s16;
				output = O_UNIMPL;
			:: input == I_SR_CONN ->
				fsm_state = s16;
				output = O_UNIMPL;
			:: input == I_CH_EOF ->
				fsm_state = s16;
				goto Continue;
			:: input == I_SR_AUTH ->
				fsm_state = s16;
				output = O_UNIMPL;
			:: input == I_KEX30 ->
				fsm_state = s21;
				output = O_KEX31;
				printf("Output: %e\n", output);
				DFA_ProcessMessage(output);
				printf("DFA State: %e\n", dfa_state);
				output = O_NEWKEYS;
			:: input == I_CH_CLOSE ->
				fsm_state = s22;
				goto Continue;
			:: input == I_CH_REQUEST_PTY ->
				fsm_state = s23;
				goto Continue;
			:: else -> goto Continue;
			fi;
		:: fsm_state == s17 ->
			if
			:: input == I_NEWKEYS ->
				fsm_state = s1;
				output = O_UNIMPL;
			:: input == I_CH_REQUEST_PTY ->
				fsm_state = s1;
				output = O_DISCONNECT;
			:: input == I_CH_CLOSE ->
				fsm_state = s10;
				output = O_CH_CLOSE;
			:: input == I_UA_PK_NOK ->
				fsm_state = s17;
				output = O_UNIMPL;
			:: input == I_KEX30 ->
				fsm_state = s17;
				output = O_UNIMPL;
			:: input == I_CH_OPEN ->
				fsm_state = s17;
				output = O_CH_MAX;
			:: input == I_CH_DATA ->
				fsm_state = s17;
				goto Continue;
			:: input == I_UA_PK_OK ->
				fsm_state = s17;
				output = O_UNIMPL;
			:: input == I_SR_CONN ->
				fsm_state = s17;
				output = O_UNIMPL;
			:: input == I_CH_EOF ->
				fsm_state = s17;
				goto Continue;
			:: input == I_SR_AUTH ->
				fsm_state = s17;
				output = O_UNIMPL;
			:: input == I_KEXINIT ->
				fsm_state = s24;
				output = O_KEXINIT;
			:: else -> goto Continue;
			fi;
		:: fsm_state == s18 ->
			if
			:: input == I_NEWKEYS ->
				fsm_state = s1;
				output = O_UNIMPL;
			:: input == I_KEXINIT ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_UA_PK_NOK ->
				fsm_state = s18;
				output = O_UNIMPL;
			:: input == I_CH_OPEN ->
				fsm_state = s18;
				output = O_CH_MAX;
			:: input == I_CH_DATA ->
				fsm_state = s18;
				goto Continue;
			:: input == I_UA_PK_OK ->
				fsm_state = s18;
				output = O_UNIMPL;
			:: input == I_SR_CONN ->
				fsm_state = s18;
				output = O_UNIMPL;
			:: input == I_CH_EOF ->
				fsm_state = s18;
				goto Continue;
			:: input == I_SR_AUTH ->
				fsm_state = s18;
				output = O_UNIMPL;
			:: input == I_KEX30 ->
				fsm_state = s21;
				output = O_KEX31;
				printf("Output: %e\n", output);
				DFA_ProcessMessage(output);
				printf("DFA State: %e\n", dfa_state);
				output = O_NEWKEYS;
				printf("Output: %e\n", output);
				DFA_ProcessMessage(output);
				printf("DFA State: %e\n", dfa_state);
				output = O_BUFFERED;
			:: input == I_CH_REQUEST_PTY ->
				fsm_state = s23;
				goto Continue;
			:: input == I_CH_CLOSE ->
				fsm_state = s25;
				goto Continue;
			:: else -> goto Continue;
			fi;
		:: fsm_state == s19 ->
			if
			:: input == I_NEWKEYS ->
				fsm_state = s10;
				goto Continue;
			:: input == I_UA_PK_NOK ->
				fsm_state = s19;
				output = O_UNIMPL;
			:: input == I_KEX30 ->
				fsm_state = s19;
				output = O_UNIMPL;
			:: input == I_CH_REQUEST_PTY ->
				fsm_state = s19;
				output = O_CH_NONE;
			:: input == I_CH_DATA ->
				fsm_state = s19;
				output = O_CH_NONE;
			:: input == I_UA_PK_OK ->
				fsm_state = s19;
				output = O_UNIMPL;
			:: input == I_CH_CLOSE ->
				fsm_state = s19;
				output = O_CH_NONE;
			:: input == I_SR_CONN ->
				fsm_state = s19;
				output = O_UNIMPL;
			:: input == I_KEXINIT ->
				fsm_state = s19;
				output = O_UNIMPL;
			:: input == I_CH_EOF ->
				fsm_state = s19;
				output = O_CH_NONE;
			:: input == I_SR_AUTH ->
				fsm_state = s19;
				output = O_UNIMPL;
			:: input == I_CH_OPEN ->
				fsm_state = s21;
				output = O_CH_OPEN_SUCCESS;
			:: else -> goto Continue;
			fi;
		:: fsm_state == s20 ->
			if
			:: input == I_CH_REQUEST_PTY ->
				fsm_state = s1;
				output = O_DISCONNECT;
			:: input == I_CH_DATA ->
				fsm_state = s1;
				output = O_DISCONNECT;
			:: input == I_CH_EOF ->
				fsm_state = s1;
				output = O_DISCONNECT;
			:: input == I_CH_CLOSE ->
				fsm_state = s3;
				output = O_DISCONNECT;
			:: input == I_NEWKEYS ->
				fsm_state = s12;
				goto Continue;
			:: input == I_UA_PK_NOK ->
				fsm_state = s20;
				output = O_UNIMPL;
			:: input == I_KEX30 ->
				fsm_state = s20;
				output = O_UNIMPL;
			:: input == I_CH_OPEN ->
				fsm_state = s20;
				output = O_CH_MAX;
			:: input == I_UA_PK_OK ->
				fsm_state = s20;
				output = O_UNIMPL;
			:: input == I_SR_CONN ->
				fsm_state = s20;
				output = O_UNIMPL;
			:: input == I_KEXINIT ->
				fsm_state = s20;
				output = O_UNIMPL;
			:: input == I_SR_AUTH ->
				fsm_state = s20;
				output = O_UNIMPL;
			:: else -> goto Continue;
			fi;
		:: fsm_state == s21 ->
			if
			:: input == I_NEWKEYS ->
				fsm_state = s13;
				goto Continue;
			:: input == I_UA_PK_NOK ->
				fsm_state = s21;
				output = O_UNIMPL;
			:: input == I_KEX30 ->
				fsm_state = s21;
				output = O_UNIMPL;
			:: input == I_CH_OPEN ->
				fsm_state = s21;
				output = O_CH_MAX;
			:: input == I_CH_DATA ->
				fsm_state = s21;
				goto Continue;
			:: input == I_UA_PK_OK ->
				fsm_state = s21;
				output = O_UNIMPL;
			:: input == I_SR_CONN ->
				fsm_state = s21;
				output = O_UNIMPL;
			:: input == I_KEXINIT ->
				fsm_state = s21;
				output = O_UNIMPL;
			:: input == I_CH_EOF ->
				fsm_state = s21;
				goto Continue;
			:: input == I_SR_AUTH ->
				fsm_state = s21;
				output = O_UNIMPL;
			:: input == I_CH_CLOSE ->
				fsm_state = s26;
				goto Continue;
			:: input == I_CH_REQUEST_PTY ->
				fsm_state = s27;
				output = O_CH_SUCCESS;
			:: else -> goto Continue;
			fi;
		:: fsm_state == s22 ->
			if
			:: input == I_NEWKEYS ->
				fsm_state = s3;
				output = O_UNIMPL;
			:: input == I_KEXINIT ->
				fsm_state = s3;
				output = O_NO_CONN;
			:: input == I_UA_PK_NOK ->
				fsm_state = s22;
				output = O_UNIMPL;
			:: input == I_CH_REQUEST_PTY ->
				fsm_state = s22;
				output = O_CH_NONE;
			:: input == I_CH_DATA ->
				fsm_state = s22;
				output = O_CH_NONE;
			:: input == I_UA_PK_OK ->
				fsm_state = s22;
				output = O_UNIMPL;
			:: input == I_CH_CLOSE ->
				fsm_state = s22;
				output = O_CH_NONE;
			:: input == I_SR_CONN ->
				fsm_state = s22;
				output = O_UNIMPL;
			:: input == I_CH_EOF ->
				fsm_state = s22;
				output = O_CH_NONE;
			:: input == I_SR_AUTH ->
				fsm_state = s22;
				output = O_UNIMPL;
			:: input == I_KEX30 ->
				fsm_state = s26;
				output = O_KEX31;
				printf("Output: %e\n", output);
				DFA_ProcessMessage(output);
				printf("DFA State: %e\n", dfa_state);
				output = O_NEWKEYS;
			:: input == I_CH_OPEN ->
				fsm_state = s28;
				goto Continue;
			:: else -> goto Continue;
			fi;
		:: fsm_state == s23 ->
			if
			:: input == I_NEWKEYS ->
				fsm_state = s1;
				output = O_UNIMPL;
			:: input == I_CH_REQUEST_PTY ->
				fsm_state = s1;
				output = O_DISCONNECT;
			:: input == I_KEXINIT ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_UA_PK_NOK ->
				fsm_state = s23;
				output = O_UNIMPL;
			:: input == I_CH_OPEN ->
				fsm_state = s23;
				output = O_CH_MAX;
			:: input == I_CH_DATA ->
				fsm_state = s23;
				goto Continue;
			:: input == I_UA_PK_OK ->
				fsm_state = s23;
				output = O_UNIMPL;
			:: input == I_SR_CONN ->
				fsm_state = s23;
				output = O_UNIMPL;
			:: input == I_CH_EOF ->
				fsm_state = s23;
				goto Continue;
			:: input == I_SR_AUTH ->
				fsm_state = s23;
				output = O_UNIMPL;
			:: input == I_KEX30 ->
				fsm_state = s27;
				output = O_KEX31;
				printf("Output: %e\n", output);
				DFA_ProcessMessage(output);
				printf("DFA State: %e\n", dfa_state);
				output = O_NEWKEYS;
				printf("Output: %e\n", output);
				DFA_ProcessMessage(output);
				printf("DFA State: %e\n", dfa_state);
				output = O_BUFFERED;
			:: input == I_CH_CLOSE ->
				fsm_state = s29;
				goto Continue;
			:: else -> goto Continue;
			fi;
		:: fsm_state == s24 ->
			if
			:: input == I_NEWKEYS ->
				fsm_state = s1;
				output = O_UNIMPL;
			:: input == I_CH_REQUEST_PTY ->
				fsm_state = s1;
				output = O_DISCONNECT;
			:: input == I_KEXINIT ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_UA_PK_NOK ->
				fsm_state = s24;
				output = O_UNIMPL;
			:: input == I_CH_OPEN ->
				fsm_state = s24;
				output = O_CH_MAX;
			:: input == I_CH_DATA ->
				fsm_state = s24;
				goto Continue;
			:: input == I_UA_PK_OK ->
				fsm_state = s24;
				output = O_UNIMPL;
			:: input == I_SR_CONN ->
				fsm_state = s24;
				output = O_UNIMPL;
			:: input == I_CH_EOF ->
				fsm_state = s24;
				goto Continue;
			:: input == I_SR_AUTH ->
				fsm_state = s24;
				output = O_UNIMPL;
			:: input == I_KEX30 ->
				fsm_state = s27;
				output = O_KEX31;
				printf("Output: %e\n", output);
				DFA_ProcessMessage(output);
				printf("DFA State: %e\n", dfa_state);
				output = O_NEWKEYS;
			:: input == I_CH_CLOSE ->
				fsm_state = s30;
				goto Continue;
			:: else -> goto Continue;
			fi;
		:: fsm_state == s25 ->
			if
			:: input == I_NEWKEYS ->
				fsm_state = s3;
				output = O_UNIMPL;
			:: input == I_KEXINIT ->
				fsm_state = s3;
				output = O_NO_CONN;
			:: input == I_UA_PK_NOK ->
				fsm_state = s25;
				output = O_UNIMPL;
			:: input == I_CH_REQUEST_PTY ->
				fsm_state = s25;
				output = O_CH_NONE;
			:: input == I_CH_DATA ->
				fsm_state = s25;
				output = O_CH_NONE;
			:: input == I_UA_PK_OK ->
				fsm_state = s25;
				output = O_UNIMPL;
			:: input == I_CH_CLOSE ->
				fsm_state = s25;
				output = O_CH_NONE;
			:: input == I_SR_CONN ->
				fsm_state = s25;
				output = O_UNIMPL;
			:: input == I_CH_EOF ->
				fsm_state = s25;
				output = O_CH_NONE;
			:: input == I_SR_AUTH ->
				fsm_state = s25;
				output = O_UNIMPL;
			:: input == I_KEX30 ->
				fsm_state = s26;
				output = O_KEX31;
				printf("Output: %e\n", output);
				DFA_ProcessMessage(output);
				printf("DFA State: %e\n", dfa_state);
				output = O_NEWKEYS;
				printf("Output: %e\n", output);
				DFA_ProcessMessage(output);
				printf("DFA State: %e\n", dfa_state);
				output = O_BUFFERED;
			:: input == I_CH_OPEN ->
				fsm_state = s28;
				goto Continue;
			:: else -> goto Continue;
			fi;
		:: fsm_state == s26 ->
			if
			:: input == I_NEWKEYS ->
				fsm_state = s10;
				output = O_CH_CLOSE;
			:: input == I_UA_PK_NOK ->
				fsm_state = s26;
				output = O_UNIMPL;
			:: input == I_KEX30 ->
				fsm_state = s26;
				output = O_UNIMPL;
			:: input == I_CH_REQUEST_PTY ->
				fsm_state = s26;
				output = O_CH_NONE;
			:: input == I_CH_DATA ->
				fsm_state = s26;
				output = O_CH_NONE;
			:: input == I_UA_PK_OK ->
				fsm_state = s26;
				output = O_UNIMPL;
			:: input == I_CH_CLOSE ->
				fsm_state = s26;
				output = O_CH_NONE;
			:: input == I_SR_CONN ->
				fsm_state = s26;
				output = O_UNIMPL;
			:: input == I_KEXINIT ->
				fsm_state = s26;
				output = O_UNIMPL;
			:: input == I_CH_EOF ->
				fsm_state = s26;
				output = O_CH_NONE;
			:: input == I_SR_AUTH ->
				fsm_state = s26;
				output = O_UNIMPL;
			:: input == I_CH_OPEN ->
				fsm_state = s31;
				output = O_CH_OPEN_SUCCESS;
			:: else -> goto Continue;
			fi;
		:: fsm_state == s27 ->
			if
			:: input == I_CH_REQUEST_PTY ->
				fsm_state = s1;
				output = O_DISCONNECT;
			:: input == I_NEWKEYS ->
				fsm_state = s17;
				goto Continue;
			:: input == I_CH_CLOSE ->
				fsm_state = s26;
				goto Continue;
			:: input == I_UA_PK_NOK ->
				fsm_state = s27;
				output = O_UNIMPL;
			:: input == I_KEX30 ->
				fsm_state = s27;
				output = O_UNIMPL;
			:: input == I_CH_OPEN ->
				fsm_state = s27;
				output = O_CH_MAX;
			:: input == I_CH_DATA ->
				fsm_state = s27;
				goto Continue;
			:: input == I_UA_PK_OK ->
				fsm_state = s27;
				output = O_UNIMPL;
			:: input == I_SR_CONN ->
				fsm_state = s27;
				output = O_UNIMPL;
			:: input == I_KEXINIT ->
				fsm_state = s27;
				output = O_UNIMPL;
			:: input == I_CH_EOF ->
				fsm_state = s27;
				goto Continue;
			:: input == I_SR_AUTH ->
				fsm_state = s27;
				output = O_UNIMPL;
			:: else -> goto Continue;
			fi;
		:: fsm_state == s28 ->
			if
			:: input == I_NEWKEYS ->
				fsm_state = s1;
				output = O_UNIMPL;
			:: input == I_KEXINIT ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_CH_CLOSE ->
				fsm_state = s25;
				goto Continue;
			:: input == I_UA_PK_NOK ->
				fsm_state = s28;
				output = O_UNIMPL;
			:: input == I_CH_OPEN ->
				fsm_state = s28;
				output = O_CH_MAX;
			:: input == I_CH_DATA ->
				fsm_state = s28;
				goto Continue;
			:: input == I_UA_PK_OK ->
				fsm_state = s28;
				output = O_UNIMPL;
			:: input == I_SR_CONN ->
				fsm_state = s28;
				output = O_UNIMPL;
			:: input == I_CH_EOF ->
				fsm_state = s28;
				goto Continue;
			:: input == I_SR_AUTH ->
				fsm_state = s28;
				output = O_UNIMPL;
			:: input == I_KEX30 ->
				fsm_state = s31;
				output = O_KEX31;
				printf("Output: %e\n", output);
				DFA_ProcessMessage(output);
				printf("DFA State: %e\n", dfa_state);
				output = O_NEWKEYS;
				printf("Output: %e\n", output);
				DFA_ProcessMessage(output);
				printf("DFA State: %e\n", dfa_state);
				output = O_BUFFERED;
			:: input == I_CH_REQUEST_PTY ->
				fsm_state = s32;
				goto Continue;
			:: else -> goto Continue;
			fi;
		:: fsm_state == s29 ->
			if
			:: input == I_NEWKEYS ->
				fsm_state = s3;
				output = O_UNIMPL;
			:: input == I_KEXINIT ->
				fsm_state = s3;
				output = O_NO_CONN;
			:: input == I_KEX30 ->
				fsm_state = s26;
				output = O_KEX31;
				printf("Output: %e\n", output);
				DFA_ProcessMessage(output);
				printf("DFA State: %e\n", dfa_state);
				output = O_NEWKEYS;
				printf("Output: %e\n", output);
				DFA_ProcessMessage(output);
				printf("DFA State: %e\n", dfa_state);
				output = O_BUFFERED;
			:: input == I_UA_PK_NOK ->
				fsm_state = s29;
				output = O_UNIMPL;
			:: input == I_CH_REQUEST_PTY ->
				fsm_state = s29;
				output = O_CH_NONE;
			:: input == I_CH_DATA ->
				fsm_state = s29;
				output = O_CH_NONE;
			:: input == I_UA_PK_OK ->
				fsm_state = s29;
				output = O_UNIMPL;
			:: input == I_CH_CLOSE ->
				fsm_state = s29;
				output = O_CH_NONE;
			:: input == I_SR_CONN ->
				fsm_state = s29;
				output = O_UNIMPL;
			:: input == I_CH_EOF ->
				fsm_state = s29;
				output = O_CH_NONE;
			:: input == I_SR_AUTH ->
				fsm_state = s29;
				output = O_UNIMPL;
			:: input == I_CH_OPEN ->
				fsm_state = s32;
				goto Continue;
			:: else -> goto Continue;
			fi;
		:: fsm_state == s30 ->
			if
			:: input == I_NEWKEYS ->
				fsm_state = s3;
				output = O_UNIMPL;
			:: input == I_KEXINIT ->
				fsm_state = s3;
				output = O_NO_CONN;
			:: input == I_KEX30 ->
				fsm_state = s26;
				output = O_KEX31;
				printf("Output: %e\n", output);
				DFA_ProcessMessage(output);
				printf("DFA State: %e\n", dfa_state);
				output = O_NEWKEYS;
			:: input == I_UA_PK_NOK ->
				fsm_state = s30;
				output = O_UNIMPL;
			:: input == I_CH_REQUEST_PTY ->
				fsm_state = s30;
				output = O_CH_NONE;
			:: input == I_CH_DATA ->
				fsm_state = s30;
				output = O_CH_NONE;
			:: input == I_UA_PK_OK ->
				fsm_state = s30;
				output = O_UNIMPL;
			:: input == I_CH_CLOSE ->
				fsm_state = s30;
				output = O_CH_NONE;
			:: input == I_SR_CONN ->
				fsm_state = s30;
				output = O_UNIMPL;
			:: input == I_CH_EOF ->
				fsm_state = s30;
				output = O_CH_NONE;
			:: input == I_SR_AUTH ->
				fsm_state = s30;
				output = O_UNIMPL;
			:: input == I_CH_OPEN ->
				fsm_state = s32;
				goto Continue;
			:: else -> goto Continue;
			fi;
		:: fsm_state == s31 ->
			if
			:: input == I_NEWKEYS ->
				fsm_state = s13;
				output = O_CH_CLOSE;
			:: input == I_UA_PK_NOK ->
				fsm_state = s31;
				output = O_UNIMPL;
			:: input == I_KEX30 ->
				fsm_state = s31;
				output = O_UNIMPL;
			:: input == I_CH_OPEN ->
				fsm_state = s31;
				output = O_CH_MAX;
			:: input == I_CH_DATA ->
				fsm_state = s31;
				goto Continue;
			:: input == I_UA_PK_OK ->
				fsm_state = s31;
				output = O_UNIMPL;
			:: input == I_SR_CONN ->
				fsm_state = s31;
				output = O_UNIMPL;
			:: input == I_KEXINIT ->
				fsm_state = s31;
				output = O_UNIMPL;
			:: input == I_CH_EOF ->
				fsm_state = s31;
				goto Continue;
			:: input == I_SR_AUTH ->
				fsm_state = s31;
				output = O_UNIMPL;
			:: input == I_CH_REQUEST_PTY ->
				fsm_state = s33;
				output = O_CH_SUCCESS;
			:: input == I_CH_CLOSE ->
				fsm_state = s34;
				goto Continue;
			:: else -> goto Continue;
			fi;
		:: fsm_state == s32 ->
			if
			:: input == I_NEWKEYS ->
				fsm_state = s1;
				output = O_UNIMPL;
			:: input == I_CH_REQUEST_PTY ->
				fsm_state = s1;
				output = O_DISCONNECT;
			:: input == I_KEXINIT ->
				fsm_state = s1;
				output = O_NO_CONN;
			:: input == I_CH_CLOSE ->
				fsm_state = s29;
				goto Continue;
			:: input == I_KEX30 ->
				fsm_state = s31;
				output = O_KEX31;
				printf("Output: %e\n", output);
				DFA_ProcessMessage(output);
				printf("DFA State: %e\n", dfa_state);
				output = O_NEWKEYS;
				printf("Output: %e\n", output);
				DFA_ProcessMessage(output);
				printf("DFA State: %e\n", dfa_state);
				output = O_BUFFERED;
			:: input == I_UA_PK_NOK ->
				fsm_state = s32;
				output = O_UNIMPL;
			:: input == I_CH_OPEN ->
				fsm_state = s32;
				output = O_CH_MAX;
			:: input == I_CH_DATA ->
				fsm_state = s32;
				goto Continue;
			:: input == I_UA_PK_OK ->
				fsm_state = s32;
				output = O_UNIMPL;
			:: input == I_SR_CONN ->
				fsm_state = s32;
				output = O_UNIMPL;
			:: input == I_CH_EOF ->
				fsm_state = s32;
				goto Continue;
			:: input == I_SR_AUTH ->
				fsm_state = s32;
				output = O_UNIMPL;
			:: else -> goto Continue;
			fi;
		:: fsm_state == s33 ->
			if
			:: input == I_CH_REQUEST_PTY ->
				fsm_state = s1;
				output = O_DISCONNECT;
			:: input == I_NEWKEYS ->
				fsm_state = s17;
				output = O_CH_CLOSE;
			:: input == I_UA_PK_NOK ->
				fsm_state = s33;
				output = O_UNIMPL;
			:: input == I_KEX30 ->
				fsm_state = s33;
				output = O_UNIMPL;
			:: input == I_CH_OPEN ->
				fsm_state = s33;
				output = O_CH_MAX;
			:: input == I_CH_DATA ->
				fsm_state = s33;
				goto Continue;
			:: input == I_UA_PK_OK ->
				fsm_state = s33;
				output = O_UNIMPL;
			:: input == I_SR_CONN ->
				fsm_state = s33;
				output = O_UNIMPL;
			:: input == I_KEXINIT ->
				fsm_state = s33;
				output = O_UNIMPL;
			:: input == I_CH_EOF ->
				fsm_state = s33;
				goto Continue;
			:: input == I_SR_AUTH ->
				fsm_state = s33;
				output = O_UNIMPL;
			:: input == I_CH_CLOSE ->
				fsm_state = s34;
				goto Continue;
			:: else -> goto Continue;
			fi;
		:: fsm_state == s34 ->
			if
			:: input == I_NEWKEYS ->
				fsm_state = s10;
				output = O_CH_CLOSE;
			:: input == I_UA_PK_NOK ->
				fsm_state = s34;
				output = O_UNIMPL;
			:: input == I_KEX30 ->
				fsm_state = s34;
				output = O_UNIMPL;
			:: input == I_CH_REQUEST_PTY ->
				fsm_state = s34;
				output = O_CH_NONE;
			:: input == I_CH_DATA ->
				fsm_state = s34;
				output = O_CH_NONE;
			:: input == I_UA_PK_OK ->
				fsm_state = s34;
				output = O_UNIMPL;
			:: input == I_CH_CLOSE ->
				fsm_state = s34;
				output = O_CH_NONE;
			:: input == I_SR_CONN ->
				fsm_state = s34;
				output = O_UNIMPL;
			:: input == I_KEXINIT ->
				fsm_state = s34;
				output = O_UNIMPL;
			:: input == I_CH_EOF ->
				fsm_state = s34;
				output = O_CH_NONE;
			:: input == I_SR_AUTH ->
				fsm_state = s34;
				output = O_UNIMPL;
			:: input == I_CH_OPEN ->
				fsm_state = s35;
				output = O_CH_OPEN_SUCCESS;
			:: else -> goto Continue;
			fi;
		:: fsm_state == s35 ->
			if
			:: input == I_NEWKEYS ->
				fsm_state = s13;
				output = O_CH_CLOSE;
			:: input == I_CH_CLOSE ->
				fsm_state = s34;
				goto Continue;
			:: input == I_UA_PK_NOK ->
				fsm_state = s35;
				output = O_UNIMPL;
			:: input == I_KEX30 ->
				fsm_state = s35;
				output = O_UNIMPL;
			:: input == I_CH_OPEN ->
				fsm_state = s35;
				output = O_CH_MAX;
			:: input == I_CH_DATA ->
				fsm_state = s35;
				goto Continue;
			:: input == I_UA_PK_OK ->
				fsm_state = s35;
				output = O_UNIMPL;
			:: input == I_SR_CONN ->
				fsm_state = s35;
				output = O_UNIMPL;
			:: input == I_KEXINIT ->
				fsm_state = s35;
				output = O_UNIMPL;
			:: input == I_CH_EOF ->
				fsm_state = s35;
				goto Continue;
			:: input == I_SR_AUTH ->
				fsm_state = s35;
				output = O_UNIMPL;
			:: input == I_CH_REQUEST_PTY ->
				fsm_state = s36;
				output = O_CH_SUCCESS;
			:: else -> goto Continue;
			fi;
		:: fsm_state == s36 ->
			if
			:: input == I_CH_REQUEST_PTY ->
				fsm_state = s1;
				output = O_DISCONNECT;
			:: input == I_NEWKEYS ->
				fsm_state = s17;
				output = O_CH_CLOSE;
			:: input == I_CH_CLOSE ->
				fsm_state = s34;
				goto Continue;
			:: input == I_UA_PK_NOK ->
				fsm_state = s36;
				output = O_UNIMPL;
			:: input == I_KEX30 ->
				fsm_state = s36;
				output = O_UNIMPL;
			:: input == I_CH_OPEN ->
				fsm_state = s36;
				output = O_CH_MAX;
			:: input == I_CH_DATA ->
				fsm_state = s36;
				goto Continue;
			:: input == I_UA_PK_OK ->
				fsm_state = s36;
				output = O_UNIMPL;
			:: input == I_SR_CONN ->
				fsm_state = s36;
				output = O_UNIMPL;
			:: input == I_KEXINIT ->
				fsm_state = s36;
				output = O_UNIMPL;
			:: input == I_CH_EOF ->
				fsm_state = s36;
				goto Continue;
			:: input == I_SR_AUTH ->
				fsm_state = s36;
				output = O_UNIMPL;
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