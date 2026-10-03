#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* CLAIM no_bug */
	case 3: // STATE 1 - _spin_nvr.tmp:3 - [(!((dfa_state!=2)))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[1][1] = 1;
		if (!( !((now.dfa_state!=2))))
			continue;
		/* merge: assert(!(!((dfa_state!=2))))(0, 2, 6) */
		reached[1][2] = 1;
		spin_assert( !( !((now.dfa_state!=2))), " !( !((dfa_state!=2)))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[1][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 4: // STATE 10 - _spin_nvr.tmp:8 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[1][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 5: // STATE 1 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:51 - [fsm_state = 23] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 23;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 2 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:52 - [dfa_state = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		(trpt+1)->bup.oval = now.dfa_state;
		now.dfa_state = 3;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 3 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:53 - [dealt = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.oval = ((int)now.dealt);
		now.dealt = 0;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 5 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:58 - [input = 26] (0:0:1 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		(trpt+1)->bup.oval = now.input;
		now.input = 26;
#ifdef VAR_RANGES
		logval("input", now.input);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 6 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:59 - [input = 25] (0:0:1 - 1)
		IfNotBlocked
		reached[0][6] = 1;
		(trpt+1)->bup.oval = now.input;
		now.input = 25;
#ifdef VAR_RANGES
		logval("input", now.input);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 7 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:60 - [input = 24] (0:0:1 - 1)
		IfNotBlocked
		reached[0][7] = 1;
		(trpt+1)->bup.oval = now.input;
		now.input = 24;
#ifdef VAR_RANGES
		logval("input", now.input);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 8 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:61 - [input = 23] (0:0:1 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		(trpt+1)->bup.oval = now.input;
		now.input = 23;
#ifdef VAR_RANGES
		logval("input", now.input);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 9 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:62 - [input = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		(trpt+1)->bup.oval = now.input;
		now.input = 22;
#ifdef VAR_RANGES
		logval("input", now.input);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 10 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:63 - [input = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][10] = 1;
		(trpt+1)->bup.oval = now.input;
		now.input = 21;
#ifdef VAR_RANGES
		logval("input", now.input);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 11 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:64 - [input = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][11] = 1;
		(trpt+1)->bup.oval = now.input;
		now.input = 20;
#ifdef VAR_RANGES
		logval("input", now.input);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 12 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:65 - [input = 19] (0:0:1 - 1)
		IfNotBlocked
		reached[0][12] = 1;
		(trpt+1)->bup.oval = now.input;
		now.input = 19;
#ifdef VAR_RANGES
		logval("input", now.input);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 13 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:66 - [input = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		(trpt+1)->bup.oval = now.input;
		now.input = 18;
#ifdef VAR_RANGES
		logval("input", now.input);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 14 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:67 - [input = 17] (0:0:1 - 1)
		IfNotBlocked
		reached[0][14] = 1;
		(trpt+1)->bup.oval = now.input;
		now.input = 17;
#ifdef VAR_RANGES
		logval("input", now.input);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 15 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:68 - [input = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][15] = 1;
		(trpt+1)->bup.oval = now.input;
		now.input = 16;
#ifdef VAR_RANGES
		logval("input", now.input);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 16 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:69 - [input = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][16] = 1;
		(trpt+1)->bup.oval = now.input;
		now.input = 15;
#ifdef VAR_RANGES
		logval("input", now.input);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 19 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:71 - [printf('Input: %e\\n',input)] (0:0:0 - 13)
		IfNotBlocked
		reached[0][19] = 1;
		Printf("Input: %e\n", now.input);
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 50 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:13 - [D_STEP13]
		IfNotBlocked

		reached[0][50] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_019_0: /* 2 */
		now.dealt = 0;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
S_047_0: /* 2 */
S_020_0: /* 2 */
		if (!((now.dfa_state==3)))
			goto S_047_1;
S_029_0: /* 2 */
S_021_0: /* 2 */
		if (!((now.input==11)))
			goto S_029_1;
S_022_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_023_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_030_0;
S_029_1: /* 3 */
S_024_0: /* 2 */
		if (!((((((((((((((((((((((((((now.input==26)||(now.input==25))||(now.input==14))||(now.input==13))||(now.input==12))||(now.input==23))||(now.input==22))||(now.input==8))||(now.input==21))||(now.input==6))||(now.input==18))||(now.input==4))||(now.input==16))||(now.input==3))||(now.input==15))||(now.input==1))||(now.input==24))||(now.input==10))||(now.input==7))||(now.input==20))||(now.input==19))||(now.input==5))||(now.input==17))||(now.input==2))||(now.input==9))))
			goto S_029_2;
S_025_0: /* 2 */
		now.dfa_state = 3;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_026_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_030_0;
S_029_2: /* 3 */
S_027_0: /* 2 */
		/* else */;
S_028_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_030_0;
S_029_3: /* 3 */
		Uerror("blocking sel in d_step (nr.0, near line 17)");
S_030_0: /* 2 */
		goto S_048_0;
S_047_1: /* 3 */
S_031_0: /* 2 */
		if (!((now.dfa_state==2)))
			goto S_047_2;
S_032_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_048_0;
S_047_2: /* 3 */
S_033_0: /* 2 */
		if (!((now.dfa_state==1)))
			goto S_047_3;
S_045_0: /* 2 */
S_034_0: /* 2 */
		if (!(((now.input==6)||(now.input==11))))
			goto S_045_1;
S_035_0: /* 2 */
		now.dfa_state = 2;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_036_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_046_0;
S_045_1: /* 3 */
S_037_0: /* 2 */
		if (!((now.input==4)))
			goto S_045_2;
S_038_0: /* 2 */
		now.dfa_state = 3;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_039_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_046_0;
S_045_2: /* 3 */
S_040_0: /* 2 */
		if (!((((((((((((((now.input==26)||(now.input==25))||(now.input==24))||(now.input==23))||(now.input==22))||(now.input==21))||(now.input==20))||(now.input==19))||(now.input==18))||(now.input==17))||(now.input==16))||(now.input==15))||(now.input==2))))
			goto S_045_3;
S_041_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_042_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_046_0;
S_045_3: /* 3 */
S_043_0: /* 2 */
		/* else */;
S_044_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_046_0;
S_045_4: /* 3 */
		Uerror("blocking sel in d_step (nr.1, near line 29)");
S_046_0: /* 2 */
		goto S_048_0;
S_047_3: /* 3 */
		Uerror("blocking sel in d_step (nr.2, near line 15)");
S_048_0: /* 2 */
		goto S_054_0;
S_054_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 22: // STATE 51 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:44 - [((dealt==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][51] = 1;
		if (!((((int)now.dealt)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 58 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:73 - [printf('DFA State: %e\\n',dfa_state)] (0:0:0 - 2)
		IfNotBlocked
		reached[0][58] = 1;
		Printf("DFA State: %e\n", now.dfa_state);
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 59 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:75 - [((fsm_state==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][59] = 1;
		if (!((now.fsm_state==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 60 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:77 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][60] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 61 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:78 - [fsm_state = 23] (0:0:1 - 1)
		IfNotBlocked
		reached[0][61] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 23;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 62 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:79 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][62] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 63 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:80 - [((input==26))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][63] = 1;
		if (!((now.input==26)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 64 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:81 - [fsm_state = 23] (0:0:1 - 1)
		IfNotBlocked
		reached[0][64] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 23;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 65 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:82 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][65] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 66 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:83 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][66] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 67 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:84 - [fsm_state = 23] (0:0:1 - 1)
		IfNotBlocked
		reached[0][67] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 23;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 68 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:85 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][68] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 69 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:86 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][69] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 70 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:87 - [fsm_state = 23] (0:0:1 - 1)
		IfNotBlocked
		reached[0][70] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 23;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 71 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:88 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][71] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 72 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:89 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][72] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 73 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:90 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][73] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 74 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:91 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][74] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 75 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:92 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][75] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 76 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:93 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][76] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 77 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:94 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][77] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 78 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:95 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][78] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 79 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:96 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][79] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 80 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:97 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][80] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 81 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:98 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][81] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 82 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:99 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][82] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 83 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:100 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][83] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 49: // STATE 84 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:101 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][84] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 85 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:102 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][85] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 51: // STATE 86 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:103 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][86] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 87 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:104 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][87] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 53: // STATE 88 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:105 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][88] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 54: // STATE 89 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:106 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][89] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 90 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:107 - [printf('Output: %e\\n',output)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][90] = 1;
		Printf("Output: %e\n", now.output);
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 121 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:13 - [D_STEP13]
		IfNotBlocked

		reached[0][121] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_090_0: /* 2 */
		now.dealt = 0;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
S_118_0: /* 2 */
S_091_0: /* 2 */
		if (!((now.dfa_state==3)))
			goto S_118_1;
S_100_0: /* 2 */
S_092_0: /* 2 */
		if (!((now.output==11)))
			goto S_100_1;
S_093_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_094_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_101_0;
S_100_1: /* 3 */
S_095_0: /* 2 */
		if (!((((((((((((((((((((((((((now.output==26)||(now.output==25))||(now.output==14))||(now.output==13))||(now.output==12))||(now.output==23))||(now.output==22))||(now.output==8))||(now.output==21))||(now.output==6))||(now.output==18))||(now.output==4))||(now.output==16))||(now.output==3))||(now.output==15))||(now.output==1))||(now.output==24))||(now.output==10))||(now.output==7))||(now.output==20))||(now.output==19))||(now.output==5))||(now.output==17))||(now.output==2))||(now.output==9))))
			goto S_100_2;
S_096_0: /* 2 */
		now.dfa_state = 3;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_097_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_101_0;
S_100_2: /* 3 */
S_098_0: /* 2 */
		/* else */;
S_099_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_101_0;
S_100_3: /* 3 */
		Uerror("blocking sel in d_step (nr.3, near line 17)");
S_101_0: /* 2 */
		goto S_119_0;
S_118_1: /* 3 */
S_102_0: /* 2 */
		if (!((now.dfa_state==2)))
			goto S_118_2;
S_103_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_119_0;
S_118_2: /* 3 */
S_104_0: /* 2 */
		if (!((now.dfa_state==1)))
			goto S_118_3;
S_116_0: /* 2 */
S_105_0: /* 2 */
		if (!(((now.output==6)||(now.output==11))))
			goto S_116_1;
S_106_0: /* 2 */
		now.dfa_state = 2;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_107_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_117_0;
S_116_1: /* 3 */
S_108_0: /* 2 */
		if (!((now.output==4)))
			goto S_116_2;
S_109_0: /* 2 */
		now.dfa_state = 3;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_110_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_117_0;
S_116_2: /* 3 */
S_111_0: /* 2 */
		if (!((((((((((((((now.output==26)||(now.output==25))||(now.output==24))||(now.output==23))||(now.output==22))||(now.output==21))||(now.output==20))||(now.output==19))||(now.output==18))||(now.output==17))||(now.output==16))||(now.output==15))||(now.output==2))))
			goto S_116_3;
S_112_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_113_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_117_0;
S_116_3: /* 3 */
S_114_0: /* 2 */
		/* else */;
S_115_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_117_0;
S_116_4: /* 3 */
		Uerror("blocking sel in d_step (nr.4, near line 29)");
S_117_0: /* 2 */
		goto S_119_0;
S_118_3: /* 3 */
		Uerror("blocking sel in d_step (nr.5, near line 15)");
S_119_0: /* 2 */
		goto S_125_0;
S_125_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 57: // STATE 122 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:44 - [((dealt==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][122] = 1;
		if (!((((int)now.dealt)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 58: // STATE 129 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:109 - [printf('DFA State: %e\\n',dfa_state)] (0:0:0 - 2)
		IfNotBlocked
		reached[0][129] = 1;
		Printf("DFA State: %e\n", now.dfa_state);
		_m = 3; goto P999; /* 0 */
	case 59: // STATE 130 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:110 - [output = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][130] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 1;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 60: // STATE 131 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:111 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][131] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 61: // STATE 132 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:112 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][132] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 62: // STATE 133 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:113 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][133] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 63: // STATE 134 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:114 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][134] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 64: // STATE 135 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:115 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][135] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 65: // STATE 136 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:116 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][136] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 66: // STATE 137 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:117 - [printf('Output: %e\\n',output)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][137] = 1;
		Printf("Output: %e\n", now.output);
		_m = 3; goto P999; /* 0 */
	case 67: // STATE 168 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:13 - [D_STEP13]
		IfNotBlocked

		reached[0][168] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_137_0: /* 2 */
		now.dealt = 0;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
S_165_0: /* 2 */
S_138_0: /* 2 */
		if (!((now.dfa_state==3)))
			goto S_165_1;
S_147_0: /* 2 */
S_139_0: /* 2 */
		if (!((now.output==11)))
			goto S_147_1;
S_140_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_141_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_148_0;
S_147_1: /* 3 */
S_142_0: /* 2 */
		if (!((((((((((((((((((((((((((now.output==26)||(now.output==25))||(now.output==14))||(now.output==13))||(now.output==12))||(now.output==23))||(now.output==22))||(now.output==8))||(now.output==21))||(now.output==6))||(now.output==18))||(now.output==4))||(now.output==16))||(now.output==3))||(now.output==15))||(now.output==1))||(now.output==24))||(now.output==10))||(now.output==7))||(now.output==20))||(now.output==19))||(now.output==5))||(now.output==17))||(now.output==2))||(now.output==9))))
			goto S_147_2;
S_143_0: /* 2 */
		now.dfa_state = 3;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_144_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_148_0;
S_147_2: /* 3 */
S_145_0: /* 2 */
		/* else */;
S_146_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_148_0;
S_147_3: /* 3 */
		Uerror("blocking sel in d_step (nr.6, near line 17)");
S_148_0: /* 2 */
		goto S_166_0;
S_165_1: /* 3 */
S_149_0: /* 2 */
		if (!((now.dfa_state==2)))
			goto S_165_2;
S_150_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_166_0;
S_165_2: /* 3 */
S_151_0: /* 2 */
		if (!((now.dfa_state==1)))
			goto S_165_3;
S_163_0: /* 2 */
S_152_0: /* 2 */
		if (!(((now.output==6)||(now.output==11))))
			goto S_163_1;
S_153_0: /* 2 */
		now.dfa_state = 2;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_154_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_164_0;
S_163_1: /* 3 */
S_155_0: /* 2 */
		if (!((now.output==4)))
			goto S_163_2;
S_156_0: /* 2 */
		now.dfa_state = 3;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_157_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_164_0;
S_163_2: /* 3 */
S_158_0: /* 2 */
		if (!((((((((((((((now.output==26)||(now.output==25))||(now.output==24))||(now.output==23))||(now.output==22))||(now.output==21))||(now.output==20))||(now.output==19))||(now.output==18))||(now.output==17))||(now.output==16))||(now.output==15))||(now.output==2))))
			goto S_163_3;
S_159_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_160_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_164_0;
S_163_3: /* 3 */
S_161_0: /* 2 */
		/* else */;
S_162_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_164_0;
S_163_4: /* 3 */
		Uerror("blocking sel in d_step (nr.7, near line 29)");
S_164_0: /* 2 */
		goto S_166_0;
S_165_3: /* 3 */
		Uerror("blocking sel in d_step (nr.8, near line 15)");
S_166_0: /* 2 */
		goto S_172_0;
S_172_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 68: // STATE 169 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:44 - [((dealt==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][169] = 1;
		if (!((((int)now.dealt)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 69: // STATE 176 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:119 - [printf('DFA State: %e\\n',dfa_state)] (0:0:0 - 2)
		IfNotBlocked
		reached[0][176] = 1;
		Printf("DFA State: %e\n", now.dfa_state);
		_m = 3; goto P999; /* 0 */
	case 70: // STATE 177 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:120 - [output = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][177] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 1;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 71: // STATE 182 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:123 - [((fsm_state==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][182] = 1;
		if (!((now.fsm_state==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 72: // STATE 183 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:125 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][183] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 73: // STATE 184 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:126 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][184] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 74: // STATE 185 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:127 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][185] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 75: // STATE 186 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:128 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][186] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 76: // STATE 187 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:129 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][187] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 77: // STATE 188 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:130 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][188] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 78: // STATE 189 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:131 - [((input==26))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][189] = 1;
		if (!((now.input==26)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 79: // STATE 190 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:132 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][190] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 80: // STATE 191 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:133 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][191] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 81: // STATE 192 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:134 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][192] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 82: // STATE 193 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:135 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][193] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 83: // STATE 194 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:136 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][194] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 84: // STATE 195 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:137 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][195] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 85: // STATE 196 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:138 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][196] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 86: // STATE 197 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:139 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][197] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 87: // STATE 198 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:140 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][198] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 88: // STATE 199 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:141 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][199] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 89: // STATE 200 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:142 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][200] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 90: // STATE 201 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:143 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][201] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 91: // STATE 202 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:144 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][202] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 92: // STATE 203 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:145 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][203] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 93: // STATE 204 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:146 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][204] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 94: // STATE 205 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:147 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][205] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 95: // STATE 206 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:148 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][206] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 96: // STATE 207 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:149 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][207] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 97: // STATE 208 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:150 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][208] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 98: // STATE 209 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:151 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][209] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 99: // STATE 210 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:152 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][210] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 100: // STATE 211 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:153 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][211] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 101: // STATE 212 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:154 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][212] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 102: // STATE 213 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:155 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][213] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 103: // STATE 214 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:156 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][214] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 104: // STATE 215 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:157 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][215] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 105: // STATE 216 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:158 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][216] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 106: // STATE 217 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:159 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][217] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 107: // STATE 218 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:160 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][218] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 108: // STATE 223 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:163 - [((fsm_state==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][223] = 1;
		if (!((now.fsm_state==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 109: // STATE 224 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:165 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][224] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 110: // STATE 225 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:166 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][225] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 111: // STATE 226 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:167 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][226] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 112: // STATE 227 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:168 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][227] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 113: // STATE 228 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:169 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][228] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 114: // STATE 229 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:170 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][229] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 115: // STATE 230 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:171 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][230] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 116: // STATE 231 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:172 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][231] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 117: // STATE 232 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:173 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][232] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 118: // STATE 233 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:174 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][233] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 119: // STATE 234 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:175 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][234] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 120: // STATE 235 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:176 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][235] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 121: // STATE 236 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:177 - [((input==26))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][236] = 1;
		if (!((now.input==26)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 122: // STATE 237 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:178 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][237] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 123: // STATE 238 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:179 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][238] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 124: // STATE 239 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:180 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][239] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 125: // STATE 240 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:181 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][240] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 126: // STATE 241 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:182 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][241] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 127: // STATE 242 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:183 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][242] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 128: // STATE 243 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:184 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][243] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 129: // STATE 244 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:185 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][244] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 130: // STATE 245 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:186 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][245] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 131: // STATE 246 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:187 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][246] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 132: // STATE 247 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:188 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][247] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 133: // STATE 248 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:189 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][248] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 134: // STATE 249 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:190 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][249] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 135: // STATE 250 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:191 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][250] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 136: // STATE 251 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:192 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][251] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 137: // STATE 252 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:193 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][252] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 138: // STATE 253 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:194 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][253] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 139: // STATE 254 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:195 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][254] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 140: // STATE 255 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:196 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][255] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 141: // STATE 256 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:197 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][256] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 142: // STATE 257 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:198 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][257] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 143: // STATE 258 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:199 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][258] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 144: // STATE 259 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:200 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][259] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 145: // STATE 264 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:203 - [((fsm_state==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][264] = 1;
		if (!((now.fsm_state==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 146: // STATE 265 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:205 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][265] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 147: // STATE 266 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:206 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][266] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 148: // STATE 267 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:207 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][267] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 149: // STATE 268 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:208 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][268] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 150: // STATE 269 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:209 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][269] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 151: // STATE 270 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:210 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][270] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 152: // STATE 271 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:211 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][271] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 153: // STATE 272 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:212 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][272] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 154: // STATE 273 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:213 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][273] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 155: // STATE 274 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:214 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][274] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 156: // STATE 275 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:215 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][275] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 157: // STATE 276 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:216 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][276] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 158: // STATE 277 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:217 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][277] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 159: // STATE 278 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:218 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][278] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 160: // STATE 279 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:219 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][279] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 161: // STATE 280 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:220 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][280] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 162: // STATE 281 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:221 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][281] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 163: // STATE 282 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:222 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][282] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 164: // STATE 283 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:223 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][283] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 165: // STATE 284 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:224 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][284] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 166: // STATE 285 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:225 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][285] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 167: // STATE 286 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:226 - [((input==26))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][286] = 1;
		if (!((now.input==26)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 168: // STATE 287 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:227 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][287] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 169: // STATE 288 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:228 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][288] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 170: // STATE 289 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:229 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][289] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 171: // STATE 290 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:230 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][290] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 172: // STATE 291 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:231 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][291] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 173: // STATE 292 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:232 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][292] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 174: // STATE 293 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:233 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][293] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 175: // STATE 294 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:234 - [output = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][294] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 1;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 176: // STATE 295 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:235 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][295] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 177: // STATE 296 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:236 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][296] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 178: // STATE 297 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:237 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][297] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 179: // STATE 298 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:238 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][298] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 180: // STATE 299 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:239 - [fsm_state = 19] (0:0:1 - 1)
		IfNotBlocked
		reached[0][299] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 19;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 181: // STATE 300 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:240 - [output = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][300] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 2;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 182: // STATE 301 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:241 - [printf('Output: %e\\n',output)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][301] = 1;
		Printf("Output: %e\n", now.output);
		_m = 3; goto P999; /* 0 */
	case 183: // STATE 332 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:13 - [D_STEP13]
		IfNotBlocked

		reached[0][332] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_301_0: /* 2 */
		now.dealt = 0;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
S_329_0: /* 2 */
S_302_0: /* 2 */
		if (!((now.dfa_state==3)))
			goto S_329_1;
S_311_0: /* 2 */
S_303_0: /* 2 */
		if (!((now.output==11)))
			goto S_311_1;
S_304_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_305_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_312_0;
S_311_1: /* 3 */
S_306_0: /* 2 */
		if (!((((((((((((((((((((((((((now.output==26)||(now.output==25))||(now.output==14))||(now.output==13))||(now.output==12))||(now.output==23))||(now.output==22))||(now.output==8))||(now.output==21))||(now.output==6))||(now.output==18))||(now.output==4))||(now.output==16))||(now.output==3))||(now.output==15))||(now.output==1))||(now.output==24))||(now.output==10))||(now.output==7))||(now.output==20))||(now.output==19))||(now.output==5))||(now.output==17))||(now.output==2))||(now.output==9))))
			goto S_311_2;
S_307_0: /* 2 */
		now.dfa_state = 3;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_308_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_312_0;
S_311_2: /* 3 */
S_309_0: /* 2 */
		/* else */;
S_310_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_312_0;
S_311_3: /* 3 */
		Uerror("blocking sel in d_step (nr.9, near line 17)");
S_312_0: /* 2 */
		goto S_330_0;
S_329_1: /* 3 */
S_313_0: /* 2 */
		if (!((now.dfa_state==2)))
			goto S_329_2;
S_314_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_330_0;
S_329_2: /* 3 */
S_315_0: /* 2 */
		if (!((now.dfa_state==1)))
			goto S_329_3;
S_327_0: /* 2 */
S_316_0: /* 2 */
		if (!(((now.output==6)||(now.output==11))))
			goto S_327_1;
S_317_0: /* 2 */
		now.dfa_state = 2;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_318_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_328_0;
S_327_1: /* 3 */
S_319_0: /* 2 */
		if (!((now.output==4)))
			goto S_327_2;
S_320_0: /* 2 */
		now.dfa_state = 3;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_321_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_328_0;
S_327_2: /* 3 */
S_322_0: /* 2 */
		if (!((((((((((((((now.output==26)||(now.output==25))||(now.output==24))||(now.output==23))||(now.output==22))||(now.output==21))||(now.output==20))||(now.output==19))||(now.output==18))||(now.output==17))||(now.output==16))||(now.output==15))||(now.output==2))))
			goto S_327_3;
S_323_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_324_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_328_0;
S_327_3: /* 3 */
S_325_0: /* 2 */
		/* else */;
S_326_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_328_0;
S_327_4: /* 3 */
		Uerror("blocking sel in d_step (nr.10, near line 29)");
S_328_0: /* 2 */
		goto S_330_0;
S_329_3: /* 3 */
		Uerror("blocking sel in d_step (nr.11, near line 15)");
S_330_0: /* 2 */
		goto S_336_0;
S_336_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 184: // STATE 333 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:44 - [((dealt==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][333] = 1;
		if (!((((int)now.dealt)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 185: // STATE 340 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:243 - [printf('DFA State: %e\\n',dfa_state)] (0:0:0 - 2)
		IfNotBlocked
		reached[0][340] = 1;
		Printf("DFA State: %e\n", now.dfa_state);
		_m = 3; goto P999; /* 0 */
	case 186: // STATE 341 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:244 - [output = 4] (0:0:1 - 1)
		IfNotBlocked
		reached[0][341] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 4;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 187: // STATE 346 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:247 - [((fsm_state==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][346] = 1;
		if (!((now.fsm_state==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 188: // STATE 347 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:249 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][347] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 189: // STATE 348 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:250 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][348] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 190: // STATE 349 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:251 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][349] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 191: // STATE 350 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:252 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][350] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 192: // STATE 351 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:253 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][351] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 193: // STATE 352 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:254 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][352] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 194: // STATE 353 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:255 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][353] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 195: // STATE 354 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:256 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][354] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 196: // STATE 355 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:257 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][355] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 197: // STATE 356 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:258 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][356] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 198: // STATE 357 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:259 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][357] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 199: // STATE 358 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:260 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][358] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 200: // STATE 359 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:261 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][359] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 201: // STATE 360 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:262 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][360] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 202: // STATE 361 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:263 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][361] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 203: // STATE 362 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:264 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][362] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 204: // STATE 363 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:265 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][363] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 205: // STATE 364 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:266 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][364] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 206: // STATE 365 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:267 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][365] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 207: // STATE 366 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:268 - [fsm_state = 19] (0:0:1 - 1)
		IfNotBlocked
		reached[0][366] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 19;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 208: // STATE 367 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:269 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][367] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 209: // STATE 368 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:270 - [((input==26))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][368] = 1;
		if (!((now.input==26)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 210: // STATE 369 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:271 - [fsm_state = 19] (0:0:1 - 1)
		IfNotBlocked
		reached[0][369] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 19;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 211: // STATE 370 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:272 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][370] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 212: // STATE 371 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:273 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][371] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 213: // STATE 372 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:274 - [fsm_state = 19] (0:0:1 - 1)
		IfNotBlocked
		reached[0][372] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 19;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 214: // STATE 373 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:275 - [output = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][373] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 1;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 215: // STATE 374 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:276 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][374] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 216: // STATE 375 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:277 - [fsm_state = 19] (0:0:1 - 1)
		IfNotBlocked
		reached[0][375] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 19;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 217: // STATE 376 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:278 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][376] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 218: // STATE 377 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:279 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][377] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 219: // STATE 378 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:280 - [fsm_state = 19] (0:0:1 - 1)
		IfNotBlocked
		reached[0][378] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 19;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 220: // STATE 379 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:281 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][379] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 221: // STATE 380 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:282 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][380] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 222: // STATE 381 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:283 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][381] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 223: // STATE 387 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:287 - [((fsm_state==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][387] = 1;
		if (!((now.fsm_state==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 224: // STATE 388 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:289 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][388] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 225: // STATE 389 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:290 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][389] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 226: // STATE 390 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:291 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][390] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 227: // STATE 391 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:292 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][391] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 228: // STATE 392 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:293 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][392] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 229: // STATE 393 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:294 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][393] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 230: // STATE 394 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:295 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][394] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 231: // STATE 395 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:296 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][395] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 232: // STATE 396 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:297 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][396] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 233: // STATE 397 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:298 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][397] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 234: // STATE 398 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:299 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][398] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 235: // STATE 399 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:300 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][399] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 236: // STATE 400 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:301 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][400] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 237: // STATE 401 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:302 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][401] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 238: // STATE 402 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:303 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][402] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 239: // STATE 403 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:304 - [((input==26))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][403] = 1;
		if (!((now.input==26)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 240: // STATE 404 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:305 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][404] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 241: // STATE 405 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:306 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][405] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 242: // STATE 406 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:307 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][406] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 243: // STATE 407 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:308 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][407] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 244: // STATE 408 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:309 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][408] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 245: // STATE 409 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:310 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][409] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 246: // STATE 410 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:311 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][410] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 247: // STATE 411 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:312 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][411] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 248: // STATE 412 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:313 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][412] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 249: // STATE 413 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:314 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][413] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 250: // STATE 414 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:315 - [output = 14] (0:0:1 - 1)
		IfNotBlocked
		reached[0][414] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 14;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 251: // STATE 415 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:316 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][415] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 252: // STATE 416 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:317 - [fsm_state = 17] (0:0:1 - 1)
		IfNotBlocked
		reached[0][416] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 17;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 253: // STATE 417 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:318 - [output = 6] (0:0:1 - 1)
		IfNotBlocked
		reached[0][417] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 6;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 254: // STATE 418 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:319 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][418] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 255: // STATE 419 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:320 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][419] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 256: // STATE 420 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:321 - [output = 13] (0:0:1 - 1)
		IfNotBlocked
		reached[0][420] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 13;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 257: // STATE 421 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:322 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][421] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 258: // STATE 422 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:323 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][422] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 259: // STATE 423 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:324 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][423] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 260: // STATE 428 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:327 - [((fsm_state==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][428] = 1;
		if (!((now.fsm_state==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 261: // STATE 429 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:329 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][429] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 262: // STATE 430 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:330 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][430] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 263: // STATE 431 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:331 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][431] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 264: // STATE 432 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:332 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][432] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 265: // STATE 433 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:333 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][433] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 266: // STATE 434 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:334 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][434] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 267: // STATE 435 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:335 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][435] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 268: // STATE 436 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:336 - [fsm_state = 17] (0:0:1 - 1)
		IfNotBlocked
		reached[0][436] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 17;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 269: // STATE 437 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:337 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][437] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 270: // STATE 438 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:338 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][438] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 271: // STATE 439 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:339 - [fsm_state = 17] (0:0:1 - 1)
		IfNotBlocked
		reached[0][439] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 17;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 272: // STATE 441 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:341 - [((input==26))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][441] = 1;
		if (!((now.input==26)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 273: // STATE 442 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:342 - [fsm_state = 17] (0:0:1 - 1)
		IfNotBlocked
		reached[0][442] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 17;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 274: // STATE 443 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:343 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][443] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 275: // STATE 444 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:344 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][444] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 276: // STATE 445 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:345 - [fsm_state = 17] (0:0:1 - 1)
		IfNotBlocked
		reached[0][445] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 17;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 277: // STATE 447 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:347 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][447] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 278: // STATE 448 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:348 - [fsm_state = 17] (0:0:1 - 1)
		IfNotBlocked
		reached[0][448] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 17;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 279: // STATE 449 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:349 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][449] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 280: // STATE 450 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:350 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][450] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 281: // STATE 451 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:351 - [fsm_state = 17] (0:0:1 - 1)
		IfNotBlocked
		reached[0][451] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 17;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 282: // STATE 452 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:352 - [output = 14] (0:0:1 - 1)
		IfNotBlocked
		reached[0][452] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 14;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 283: // STATE 453 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:353 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][453] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 284: // STATE 454 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:354 - [fsm_state = 17] (0:0:1 - 1)
		IfNotBlocked
		reached[0][454] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 17;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 285: // STATE 455 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:355 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][455] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 286: // STATE 456 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:356 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][456] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 287: // STATE 457 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:357 - [fsm_state = 17] (0:0:1 - 1)
		IfNotBlocked
		reached[0][457] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 17;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 288: // STATE 458 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:358 - [output = 14] (0:0:1 - 1)
		IfNotBlocked
		reached[0][458] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 14;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 289: // STATE 459 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:359 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][459] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 290: // STATE 460 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:360 - [fsm_state = 14] (0:0:1 - 1)
		IfNotBlocked
		reached[0][460] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 14;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 291: // STATE 461 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:361 - [output = 7] (0:0:1 - 1)
		IfNotBlocked
		reached[0][461] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 7;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 292: // STATE 462 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:362 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][462] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 293: // STATE 463 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:363 - [fsm_state = 13] (0:0:1 - 1)
		IfNotBlocked
		reached[0][463] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 13;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 294: // STATE 464 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:364 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][464] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 295: // STATE 469 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:367 - [((fsm_state==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][469] = 1;
		if (!((now.fsm_state==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 296: // STATE 470 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:369 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][470] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 297: // STATE 471 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:370 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][471] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 298: // STATE 472 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:371 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][472] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 299: // STATE 473 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:372 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][473] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 300: // STATE 474 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:373 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][474] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 301: // STATE 475 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:374 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][475] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 302: // STATE 476 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:375 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][476] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 303: // STATE 477 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:376 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][477] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 304: // STATE 478 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:377 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][478] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 305: // STATE 479 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:378 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][479] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 306: // STATE 480 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:379 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][480] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 307: // STATE 481 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:380 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][481] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 308: // STATE 482 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:381 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][482] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 309: // STATE 483 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:382 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][483] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 310: // STATE 484 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:383 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][484] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 311: // STATE 485 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:384 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][485] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 312: // STATE 486 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:385 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][486] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 313: // STATE 487 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:386 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][487] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 314: // STATE 488 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:387 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][488] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 315: // STATE 489 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:388 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][489] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 316: // STATE 490 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:389 - [output = 13] (0:0:1 - 1)
		IfNotBlocked
		reached[0][490] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 13;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 317: // STATE 491 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:390 - [((input==26))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][491] = 1;
		if (!((now.input==26)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 318: // STATE 492 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:391 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][492] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 319: // STATE 493 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:392 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][493] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 320: // STATE 494 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:393 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][494] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 321: // STATE 495 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:394 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][495] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 322: // STATE 496 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:395 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][496] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 323: // STATE 497 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:396 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][497] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 324: // STATE 498 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:397 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][498] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 325: // STATE 499 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:398 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][499] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 326: // STATE 500 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:399 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][500] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 327: // STATE 501 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:400 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][501] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 328: // STATE 502 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:401 - [output = 14] (0:0:1 - 1)
		IfNotBlocked
		reached[0][502] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 14;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 329: // STATE 503 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:402 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][503] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 330: // STATE 504 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:403 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][504] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 331: // STATE 505 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:404 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][505] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 332: // STATE 510 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:407 - [((fsm_state==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][510] = 1;
		if (!((now.fsm_state==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 333: // STATE 511 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:409 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][511] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 334: // STATE 512 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:410 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][512] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 335: // STATE 513 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:411 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][513] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 336: // STATE 514 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:412 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][514] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 337: // STATE 515 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:413 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][515] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 338: // STATE 516 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:414 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][516] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 339: // STATE 517 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:415 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][517] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 340: // STATE 518 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:416 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][518] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 341: // STATE 519 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:417 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][519] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 342: // STATE 520 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:418 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][520] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 343: // STATE 521 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:419 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][521] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 344: // STATE 522 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:420 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][522] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 345: // STATE 523 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:421 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][523] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 346: // STATE 524 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:422 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][524] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 347: // STATE 525 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:423 - [output = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][525] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 1;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 348: // STATE 526 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:424 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][526] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 349: // STATE 527 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:425 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][527] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 350: // STATE 528 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:426 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][528] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 351: // STATE 529 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:427 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][529] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 352: // STATE 530 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:428 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][530] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 353: // STATE 531 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:429 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][531] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 354: // STATE 532 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:430 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][532] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 355: // STATE 533 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:431 - [fsm_state = 19] (0:0:1 - 1)
		IfNotBlocked
		reached[0][533] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 19;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 356: // STATE 534 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:432 - [output = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][534] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 2;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 357: // STATE 535 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:433 - [printf('Output: %e\\n',output)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][535] = 1;
		Printf("Output: %e\n", now.output);
		_m = 3; goto P999; /* 0 */
	case 358: // STATE 566 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:13 - [D_STEP13]
		IfNotBlocked

		reached[0][566] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_535_0: /* 2 */
		now.dealt = 0;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
S_563_0: /* 2 */
S_536_0: /* 2 */
		if (!((now.dfa_state==3)))
			goto S_563_1;
S_545_0: /* 2 */
S_537_0: /* 2 */
		if (!((now.output==11)))
			goto S_545_1;
S_538_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_539_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_546_0;
S_545_1: /* 3 */
S_540_0: /* 2 */
		if (!((((((((((((((((((((((((((now.output==26)||(now.output==25))||(now.output==14))||(now.output==13))||(now.output==12))||(now.output==23))||(now.output==22))||(now.output==8))||(now.output==21))||(now.output==6))||(now.output==18))||(now.output==4))||(now.output==16))||(now.output==3))||(now.output==15))||(now.output==1))||(now.output==24))||(now.output==10))||(now.output==7))||(now.output==20))||(now.output==19))||(now.output==5))||(now.output==17))||(now.output==2))||(now.output==9))))
			goto S_545_2;
S_541_0: /* 2 */
		now.dfa_state = 3;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_542_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_546_0;
S_545_2: /* 3 */
S_543_0: /* 2 */
		/* else */;
S_544_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_546_0;
S_545_3: /* 3 */
		Uerror("blocking sel in d_step (nr.12, near line 17)");
S_546_0: /* 2 */
		goto S_564_0;
S_563_1: /* 3 */
S_547_0: /* 2 */
		if (!((now.dfa_state==2)))
			goto S_563_2;
S_548_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_564_0;
S_563_2: /* 3 */
S_549_0: /* 2 */
		if (!((now.dfa_state==1)))
			goto S_563_3;
S_561_0: /* 2 */
S_550_0: /* 2 */
		if (!(((now.output==6)||(now.output==11))))
			goto S_561_1;
S_551_0: /* 2 */
		now.dfa_state = 2;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_552_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_562_0;
S_561_1: /* 3 */
S_553_0: /* 2 */
		if (!((now.output==4)))
			goto S_561_2;
S_554_0: /* 2 */
		now.dfa_state = 3;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_555_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_562_0;
S_561_2: /* 3 */
S_556_0: /* 2 */
		if (!((((((((((((((now.output==26)||(now.output==25))||(now.output==24))||(now.output==23))||(now.output==22))||(now.output==21))||(now.output==20))||(now.output==19))||(now.output==18))||(now.output==17))||(now.output==16))||(now.output==15))||(now.output==2))))
			goto S_561_3;
S_557_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_558_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_562_0;
S_561_3: /* 3 */
S_559_0: /* 2 */
		/* else */;
S_560_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_562_0;
S_561_4: /* 3 */
		Uerror("blocking sel in d_step (nr.13, near line 29)");
S_562_0: /* 2 */
		goto S_564_0;
S_563_3: /* 3 */
		Uerror("blocking sel in d_step (nr.14, near line 15)");
S_564_0: /* 2 */
		goto S_570_0;
S_570_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 359: // STATE 567 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:44 - [((dealt==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][567] = 1;
		if (!((((int)now.dealt)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 360: // STATE 574 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:435 - [printf('DFA State: %e\\n',dfa_state)] (0:0:0 - 2)
		IfNotBlocked
		reached[0][574] = 1;
		Printf("DFA State: %e\n", now.dfa_state);
		_m = 3; goto P999; /* 0 */
	case 361: // STATE 575 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:436 - [output = 4] (0:0:1 - 1)
		IfNotBlocked
		reached[0][575] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 4;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 362: // STATE 576 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:437 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][576] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 363: // STATE 577 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:438 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][577] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 364: // STATE 578 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:439 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][578] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 365: // STATE 579 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:440 - [((input==26))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][579] = 1;
		if (!((now.input==26)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 366: // STATE 580 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:441 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][580] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 367: // STATE 581 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:442 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][581] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 368: // STATE 582 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:443 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][582] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 369: // STATE 583 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:444 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][583] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 370: // STATE 584 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:445 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][584] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 371: // STATE 585 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:446 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][585] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 372: // STATE 586 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:447 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][586] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 373: // STATE 587 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:448 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][587] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 374: // STATE 592 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:451 - [((fsm_state==14))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][592] = 1;
		if (!((now.fsm_state==14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 375: // STATE 593 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:453 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][593] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 376: // STATE 594 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:454 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][594] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 377: // STATE 595 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:455 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][595] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 378: // STATE 596 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:456 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][596] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 379: // STATE 597 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:457 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][597] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 380: // STATE 598 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:458 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][598] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 381: // STATE 599 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:459 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][599] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 382: // STATE 600 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:460 - [fsm_state = 17] (0:0:1 - 1)
		IfNotBlocked
		reached[0][600] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 17;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 383: // STATE 601 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:461 - [output = 10] (0:0:1 - 1)
		IfNotBlocked
		reached[0][601] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 10;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 384: // STATE 602 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:462 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][602] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 385: // STATE 603 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:463 - [fsm_state = 14] (0:0:1 - 1)
		IfNotBlocked
		reached[0][603] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 14;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 386: // STATE 604 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:464 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][604] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 387: // STATE 605 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:465 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][605] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 388: // STATE 606 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:466 - [fsm_state = 14] (0:0:1 - 1)
		IfNotBlocked
		reached[0][606] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 14;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 389: // STATE 608 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:468 - [((input==26))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][608] = 1;
		if (!((now.input==26)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 390: // STATE 609 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:469 - [fsm_state = 14] (0:0:1 - 1)
		IfNotBlocked
		reached[0][609] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 14;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 391: // STATE 611 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:471 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][611] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 392: // STATE 612 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:472 - [fsm_state = 14] (0:0:1 - 1)
		IfNotBlocked
		reached[0][612] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 14;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 393: // STATE 614 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:474 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][614] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 394: // STATE 615 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:475 - [fsm_state = 14] (0:0:1 - 1)
		IfNotBlocked
		reached[0][615] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 14;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 395: // STATE 616 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:476 - [output = 14] (0:0:1 - 1)
		IfNotBlocked
		reached[0][616] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 14;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 396: // STATE 617 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:477 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][617] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 397: // STATE 618 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:478 - [fsm_state = 14] (0:0:1 - 1)
		IfNotBlocked
		reached[0][618] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 14;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 398: // STATE 619 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:479 - [output = 14] (0:0:1 - 1)
		IfNotBlocked
		reached[0][619] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 14;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 399: // STATE 620 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:480 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][620] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 400: // STATE 621 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:481 - [fsm_state = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][621] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 12;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 401: // STATE 622 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:482 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][622] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 402: // STATE 623 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:483 - [printf('Output: %e\\n',output)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][623] = 1;
		Printf("Output: %e\n", now.output);
		_m = 3; goto P999; /* 0 */
	case 403: // STATE 654 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:13 - [D_STEP13]
		IfNotBlocked

		reached[0][654] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_623_0: /* 2 */
		now.dealt = 0;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
S_651_0: /* 2 */
S_624_0: /* 2 */
		if (!((now.dfa_state==3)))
			goto S_651_1;
S_633_0: /* 2 */
S_625_0: /* 2 */
		if (!((now.output==11)))
			goto S_633_1;
S_626_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_627_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_634_0;
S_633_1: /* 3 */
S_628_0: /* 2 */
		if (!((((((((((((((((((((((((((now.output==26)||(now.output==25))||(now.output==14))||(now.output==13))||(now.output==12))||(now.output==23))||(now.output==22))||(now.output==8))||(now.output==21))||(now.output==6))||(now.output==18))||(now.output==4))||(now.output==16))||(now.output==3))||(now.output==15))||(now.output==1))||(now.output==24))||(now.output==10))||(now.output==7))||(now.output==20))||(now.output==19))||(now.output==5))||(now.output==17))||(now.output==2))||(now.output==9))))
			goto S_633_2;
S_629_0: /* 2 */
		now.dfa_state = 3;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_630_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_634_0;
S_633_2: /* 3 */
S_631_0: /* 2 */
		/* else */;
S_632_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_634_0;
S_633_3: /* 3 */
		Uerror("blocking sel in d_step (nr.15, near line 17)");
S_634_0: /* 2 */
		goto S_652_0;
S_651_1: /* 3 */
S_635_0: /* 2 */
		if (!((now.dfa_state==2)))
			goto S_651_2;
S_636_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_652_0;
S_651_2: /* 3 */
S_637_0: /* 2 */
		if (!((now.dfa_state==1)))
			goto S_651_3;
S_649_0: /* 2 */
S_638_0: /* 2 */
		if (!(((now.output==6)||(now.output==11))))
			goto S_649_1;
S_639_0: /* 2 */
		now.dfa_state = 2;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_640_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_650_0;
S_649_1: /* 3 */
S_641_0: /* 2 */
		if (!((now.output==4)))
			goto S_649_2;
S_642_0: /* 2 */
		now.dfa_state = 3;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_643_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_650_0;
S_649_2: /* 3 */
S_644_0: /* 2 */
		if (!((((((((((((((now.output==26)||(now.output==25))||(now.output==24))||(now.output==23))||(now.output==22))||(now.output==21))||(now.output==20))||(now.output==19))||(now.output==18))||(now.output==17))||(now.output==16))||(now.output==15))||(now.output==2))))
			goto S_649_3;
S_645_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_646_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_650_0;
S_649_3: /* 3 */
S_647_0: /* 2 */
		/* else */;
S_648_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_650_0;
S_649_4: /* 3 */
		Uerror("blocking sel in d_step (nr.16, near line 29)");
S_650_0: /* 2 */
		goto S_652_0;
S_651_3: /* 3 */
		Uerror("blocking sel in d_step (nr.17, near line 15)");
S_652_0: /* 2 */
		goto S_658_0;
S_658_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 404: // STATE 655 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:44 - [((dealt==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][655] = 1;
		if (!((((int)now.dealt)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 405: // STATE 662 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:485 - [printf('DFA State: %e\\n',dfa_state)] (0:0:0 - 2)
		IfNotBlocked
		reached[0][662] = 1;
		Printf("DFA State: %e\n", now.dfa_state);
		_m = 3; goto P999; /* 0 */
	case 406: // STATE 663 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:486 - [output = 10] (0:0:1 - 1)
		IfNotBlocked
		reached[0][663] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 10;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 407: // STATE 664 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:487 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][664] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 408: // STATE 665 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:488 - [fsm_state = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][665] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 11;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 409: // STATE 666 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:489 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][666] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 410: // STATE 667 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:490 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][667] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 411: // STATE 668 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:491 - [fsm_state = 10] (0:0:1 - 1)
		IfNotBlocked
		reached[0][668] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 10;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 412: // STATE 669 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:492 - [output = 8] (0:0:1 - 1)
		IfNotBlocked
		reached[0][669] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 8;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 413: // STATE 674 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:495 - [((fsm_state==13))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][674] = 1;
		if (!((now.fsm_state==13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 414: // STATE 675 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:497 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][675] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 415: // STATE 676 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:498 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][676] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 416: // STATE 677 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:499 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][677] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 417: // STATE 678 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:500 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][678] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 418: // STATE 679 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:501 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][679] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 419: // STATE 680 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:502 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][680] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 420: // STATE 681 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:503 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][681] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 421: // STATE 682 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:504 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][682] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 422: // STATE 683 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:505 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][683] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 423: // STATE 684 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:506 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][684] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 424: // STATE 685 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:507 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][685] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 425: // STATE 686 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:508 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][686] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 426: // STATE 687 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:509 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][687] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 427: // STATE 688 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:510 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][688] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 428: // STATE 689 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:511 - [output = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][689] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 1;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 429: // STATE 690 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:512 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][690] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 430: // STATE 691 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:513 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][691] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 431: // STATE 692 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:514 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][692] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 432: // STATE 693 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:515 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][693] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 433: // STATE 694 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:516 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][694] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 434: // STATE 695 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:517 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][695] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 435: // STATE 696 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:518 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][696] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 436: // STATE 697 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:519 - [fsm_state = 13] (0:0:1 - 1)
		IfNotBlocked
		reached[0][697] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 13;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 437: // STATE 698 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:520 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][698] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 438: // STATE 699 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:521 - [((input==26))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][699] = 1;
		if (!((now.input==26)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 439: // STATE 700 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:522 - [fsm_state = 13] (0:0:1 - 1)
		IfNotBlocked
		reached[0][700] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 13;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 440: // STATE 701 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:523 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][701] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 441: // STATE 702 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:524 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][702] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 442: // STATE 703 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:525 - [fsm_state = 13] (0:0:1 - 1)
		IfNotBlocked
		reached[0][703] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 13;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 443: // STATE 704 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:526 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][704] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 444: // STATE 705 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:527 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][705] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 445: // STATE 706 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:528 - [fsm_state = 13] (0:0:1 - 1)
		IfNotBlocked
		reached[0][706] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 13;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 446: // STATE 707 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:529 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][707] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 447: // STATE 708 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:530 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][708] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 448: // STATE 709 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:531 - [fsm_state = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][709] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 9;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 449: // STATE 710 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:532 - [output = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][710] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 2;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 450: // STATE 711 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:533 - [printf('Output: %e\\n',output)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][711] = 1;
		Printf("Output: %e\n", now.output);
		_m = 3; goto P999; /* 0 */
	case 451: // STATE 742 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:13 - [D_STEP13]
		IfNotBlocked

		reached[0][742] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_711_0: /* 2 */
		now.dealt = 0;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
S_739_0: /* 2 */
S_712_0: /* 2 */
		if (!((now.dfa_state==3)))
			goto S_739_1;
S_721_0: /* 2 */
S_713_0: /* 2 */
		if (!((now.output==11)))
			goto S_721_1;
S_714_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_715_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_722_0;
S_721_1: /* 3 */
S_716_0: /* 2 */
		if (!((((((((((((((((((((((((((now.output==26)||(now.output==25))||(now.output==14))||(now.output==13))||(now.output==12))||(now.output==23))||(now.output==22))||(now.output==8))||(now.output==21))||(now.output==6))||(now.output==18))||(now.output==4))||(now.output==16))||(now.output==3))||(now.output==15))||(now.output==1))||(now.output==24))||(now.output==10))||(now.output==7))||(now.output==20))||(now.output==19))||(now.output==5))||(now.output==17))||(now.output==2))||(now.output==9))))
			goto S_721_2;
S_717_0: /* 2 */
		now.dfa_state = 3;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_718_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_722_0;
S_721_2: /* 3 */
S_719_0: /* 2 */
		/* else */;
S_720_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_722_0;
S_721_3: /* 3 */
		Uerror("blocking sel in d_step (nr.18, near line 17)");
S_722_0: /* 2 */
		goto S_740_0;
S_739_1: /* 3 */
S_723_0: /* 2 */
		if (!((now.dfa_state==2)))
			goto S_739_2;
S_724_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_740_0;
S_739_2: /* 3 */
S_725_0: /* 2 */
		if (!((now.dfa_state==1)))
			goto S_739_3;
S_737_0: /* 2 */
S_726_0: /* 2 */
		if (!(((now.output==6)||(now.output==11))))
			goto S_737_1;
S_727_0: /* 2 */
		now.dfa_state = 2;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_728_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_738_0;
S_737_1: /* 3 */
S_729_0: /* 2 */
		if (!((now.output==4)))
			goto S_737_2;
S_730_0: /* 2 */
		now.dfa_state = 3;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_731_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_738_0;
S_737_2: /* 3 */
S_732_0: /* 2 */
		if (!((((((((((((((now.output==26)||(now.output==25))||(now.output==24))||(now.output==23))||(now.output==22))||(now.output==21))||(now.output==20))||(now.output==19))||(now.output==18))||(now.output==17))||(now.output==16))||(now.output==15))||(now.output==2))))
			goto S_737_3;
S_733_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_734_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_738_0;
S_737_3: /* 3 */
S_735_0: /* 2 */
		/* else */;
S_736_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_738_0;
S_737_4: /* 3 */
		Uerror("blocking sel in d_step (nr.19, near line 29)");
S_738_0: /* 2 */
		goto S_740_0;
S_739_3: /* 3 */
		Uerror("blocking sel in d_step (nr.20, near line 15)");
S_740_0: /* 2 */
		goto S_746_0;
S_746_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 452: // STATE 743 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:44 - [((dealt==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][743] = 1;
		if (!((((int)now.dealt)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 453: // STATE 750 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:535 - [printf('DFA State: %e\\n',dfa_state)] (0:0:0 - 2)
		IfNotBlocked
		reached[0][750] = 1;
		Printf("DFA State: %e\n", now.dfa_state);
		_m = 3; goto P999; /* 0 */
	case 454: // STATE 751 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:536 - [output = 4] (0:0:1 - 1)
		IfNotBlocked
		reached[0][751] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 4;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 455: // STATE 756 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:539 - [((fsm_state==12))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][756] = 1;
		if (!((now.fsm_state==12)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 456: // STATE 757 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:541 - [((input==26))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][757] = 1;
		if (!((now.input==26)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 457: // STATE 758 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:542 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][758] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 458: // STATE 759 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:543 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][759] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 459: // STATE 760 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:544 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][760] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 460: // STATE 761 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:545 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][761] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 461: // STATE 762 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:546 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][762] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 462: // STATE 763 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:547 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][763] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 463: // STATE 764 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:548 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][764] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 464: // STATE 765 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:549 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][765] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 465: // STATE 766 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:550 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][766] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 466: // STATE 767 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:551 - [fsm_state = 17] (0:0:1 - 1)
		IfNotBlocked
		reached[0][767] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 17;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 467: // STATE 769 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:553 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][769] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 468: // STATE 770 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:554 - [fsm_state = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][770] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 12;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 469: // STATE 771 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:555 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][771] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 470: // STATE 772 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:556 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][772] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 471: // STATE 773 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:557 - [fsm_state = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][773] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 12;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 472: // STATE 775 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:559 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][775] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 473: // STATE 776 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:560 - [fsm_state = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][776] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 12;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 474: // STATE 778 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:562 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][778] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 475: // STATE 779 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:563 - [fsm_state = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][779] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 12;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 476: // STATE 780 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:564 - [output = 14] (0:0:1 - 1)
		IfNotBlocked
		reached[0][780] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 14;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 477: // STATE 781 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:565 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][781] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 478: // STATE 782 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:566 - [fsm_state = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][782] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 12;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 479: // STATE 784 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:568 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][784] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 480: // STATE 785 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:569 - [fsm_state = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][785] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 12;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 481: // STATE 786 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:570 - [output = 14] (0:0:1 - 1)
		IfNotBlocked
		reached[0][786] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 14;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 482: // STATE 787 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:571 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][787] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 483: // STATE 788 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:572 - [fsm_state = 8] (0:0:1 - 1)
		IfNotBlocked
		reached[0][788] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 8;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 484: // STATE 790 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:574 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][790] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 485: // STATE 791 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:575 - [fsm_state = 7] (0:0:1 - 1)
		IfNotBlocked
		reached[0][791] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 7;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 486: // STATE 792 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:576 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][792] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 487: // STATE 797 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:579 - [((fsm_state==11))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][797] = 1;
		if (!((now.fsm_state==11)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 488: // STATE 798 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:581 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][798] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 489: // STATE 799 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:582 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][799] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 490: // STATE 800 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:583 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][800] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 491: // STATE 801 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:584 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][801] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 492: // STATE 802 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:585 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][802] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 493: // STATE 803 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:586 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][803] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 494: // STATE 804 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:587 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][804] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 495: // STATE 805 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:588 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][805] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 496: // STATE 806 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:589 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][806] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 497: // STATE 807 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:590 - [((input==26))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][807] = 1;
		if (!((now.input==26)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 498: // STATE 808 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:591 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][808] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 499: // STATE 809 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:592 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][809] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 500: // STATE 810 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:593 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][810] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 501: // STATE 811 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:594 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][811] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 502: // STATE 812 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:595 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][812] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 503: // STATE 813 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:596 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][813] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 504: // STATE 814 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:597 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][814] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 505: // STATE 815 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:598 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][815] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 506: // STATE 816 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:599 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][816] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 507: // STATE 817 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:600 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][817] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 508: // STATE 818 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:601 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][818] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 509: // STATE 819 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:602 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][819] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 510: // STATE 820 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:603 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][820] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 511: // STATE 821 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:604 - [output = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][821] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 1;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 512: // STATE 822 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:605 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][822] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 513: // STATE 823 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:606 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][823] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 514: // STATE 824 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:607 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][824] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 515: // STATE 825 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:608 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][825] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 516: // STATE 826 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:609 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][826] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 517: // STATE 827 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:610 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][827] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 518: // STATE 828 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:611 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][828] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 519: // STATE 829 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:612 - [fsm_state = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][829] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 11;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 520: // STATE 830 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:613 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][830] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 521: // STATE 831 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:614 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][831] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 522: // STATE 832 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:615 - [fsm_state = 6] (0:0:1 - 1)
		IfNotBlocked
		reached[0][832] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 6;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 523: // STATE 833 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:616 - [output = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][833] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 2;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 524: // STATE 834 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:617 - [printf('Output: %e\\n',output)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][834] = 1;
		Printf("Output: %e\n", now.output);
		_m = 3; goto P999; /* 0 */
	case 525: // STATE 865 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:13 - [D_STEP13]
		IfNotBlocked

		reached[0][865] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_834_0: /* 2 */
		now.dealt = 0;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
S_862_0: /* 2 */
S_835_0: /* 2 */
		if (!((now.dfa_state==3)))
			goto S_862_1;
S_844_0: /* 2 */
S_836_0: /* 2 */
		if (!((now.output==11)))
			goto S_844_1;
S_837_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_838_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_845_0;
S_844_1: /* 3 */
S_839_0: /* 2 */
		if (!((((((((((((((((((((((((((now.output==26)||(now.output==25))||(now.output==14))||(now.output==13))||(now.output==12))||(now.output==23))||(now.output==22))||(now.output==8))||(now.output==21))||(now.output==6))||(now.output==18))||(now.output==4))||(now.output==16))||(now.output==3))||(now.output==15))||(now.output==1))||(now.output==24))||(now.output==10))||(now.output==7))||(now.output==20))||(now.output==19))||(now.output==5))||(now.output==17))||(now.output==2))||(now.output==9))))
			goto S_844_2;
S_840_0: /* 2 */
		now.dfa_state = 3;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_841_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_845_0;
S_844_2: /* 3 */
S_842_0: /* 2 */
		/* else */;
S_843_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_845_0;
S_844_3: /* 3 */
		Uerror("blocking sel in d_step (nr.21, near line 17)");
S_845_0: /* 2 */
		goto S_863_0;
S_862_1: /* 3 */
S_846_0: /* 2 */
		if (!((now.dfa_state==2)))
			goto S_862_2;
S_847_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_863_0;
S_862_2: /* 3 */
S_848_0: /* 2 */
		if (!((now.dfa_state==1)))
			goto S_862_3;
S_860_0: /* 2 */
S_849_0: /* 2 */
		if (!(((now.output==6)||(now.output==11))))
			goto S_860_1;
S_850_0: /* 2 */
		now.dfa_state = 2;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_851_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_861_0;
S_860_1: /* 3 */
S_852_0: /* 2 */
		if (!((now.output==4)))
			goto S_860_2;
S_853_0: /* 2 */
		now.dfa_state = 3;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_854_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_861_0;
S_860_2: /* 3 */
S_855_0: /* 2 */
		if (!((((((((((((((now.output==26)||(now.output==25))||(now.output==24))||(now.output==23))||(now.output==22))||(now.output==21))||(now.output==20))||(now.output==19))||(now.output==18))||(now.output==17))||(now.output==16))||(now.output==15))||(now.output==2))))
			goto S_860_3;
S_856_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_857_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_861_0;
S_860_3: /* 3 */
S_858_0: /* 2 */
		/* else */;
S_859_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_861_0;
S_860_4: /* 3 */
		Uerror("blocking sel in d_step (nr.22, near line 29)");
S_861_0: /* 2 */
		goto S_863_0;
S_862_3: /* 3 */
		Uerror("blocking sel in d_step (nr.23, near line 15)");
S_863_0: /* 2 */
		goto S_869_0;
S_869_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 526: // STATE 866 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:44 - [((dealt==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][866] = 1;
		if (!((((int)now.dealt)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 527: // STATE 873 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:619 - [printf('DFA State: %e\\n',dfa_state)] (0:0:0 - 2)
		IfNotBlocked
		reached[0][873] = 1;
		Printf("DFA State: %e\n", now.dfa_state);
		_m = 3; goto P999; /* 0 */
	case 528: // STATE 874 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:620 - [output = 4] (0:0:1 - 1)
		IfNotBlocked
		reached[0][874] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 4;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 529: // STATE 879 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:623 - [((fsm_state==10))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][879] = 1;
		if (!((now.fsm_state==10)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 530: // STATE 880 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:625 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][880] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 531: // STATE 881 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:626 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][881] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 532: // STATE 882 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:627 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][882] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 533: // STATE 883 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:628 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][883] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 534: // STATE 884 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:629 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][884] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 535: // STATE 885 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:630 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][885] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 536: // STATE 886 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:631 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][886] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 537: // STATE 887 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:632 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][887] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 538: // STATE 888 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:633 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][888] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 539: // STATE 889 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:634 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][889] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 540: // STATE 890 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:635 - [fsm_state = 17] (0:0:1 - 1)
		IfNotBlocked
		reached[0][890] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 17;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 541: // STATE 891 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:636 - [output = 10] (0:0:1 - 1)
		IfNotBlocked
		reached[0][891] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 10;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 542: // STATE 892 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:637 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][892] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 543: // STATE 893 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:638 - [fsm_state = 10] (0:0:1 - 1)
		IfNotBlocked
		reached[0][893] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 10;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 544: // STATE 894 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:639 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][894] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 545: // STATE 895 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:640 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][895] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 546: // STATE 896 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:641 - [fsm_state = 10] (0:0:1 - 1)
		IfNotBlocked
		reached[0][896] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 10;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 547: // STATE 898 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:643 - [((input==26))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][898] = 1;
		if (!((now.input==26)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 548: // STATE 899 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:644 - [fsm_state = 10] (0:0:1 - 1)
		IfNotBlocked
		reached[0][899] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 10;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 549: // STATE 901 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:646 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][901] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 550: // STATE 902 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:647 - [fsm_state = 10] (0:0:1 - 1)
		IfNotBlocked
		reached[0][902] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 10;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 551: // STATE 904 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:649 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][904] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 552: // STATE 905 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:650 - [fsm_state = 10] (0:0:1 - 1)
		IfNotBlocked
		reached[0][905] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 10;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 553: // STATE 906 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:651 - [output = 14] (0:0:1 - 1)
		IfNotBlocked
		reached[0][906] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 14;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 554: // STATE 907 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:652 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][907] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 555: // STATE 908 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:653 - [fsm_state = 10] (0:0:1 - 1)
		IfNotBlocked
		reached[0][908] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 10;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 556: // STATE 909 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:654 - [output = 14] (0:0:1 - 1)
		IfNotBlocked
		reached[0][909] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 14;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 557: // STATE 910 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:655 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][910] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 558: // STATE 911 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:656 - [fsm_state = 8] (0:0:1 - 1)
		IfNotBlocked
		reached[0][911] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 8;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 559: // STATE 912 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:657 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][912] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 560: // STATE 913 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:658 - [printf('Output: %e\\n',output)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][913] = 1;
		Printf("Output: %e\n", now.output);
		_m = 3; goto P999; /* 0 */
	case 561: // STATE 944 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:13 - [D_STEP13]
		IfNotBlocked

		reached[0][944] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_913_0: /* 2 */
		now.dealt = 0;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
S_941_0: /* 2 */
S_914_0: /* 2 */
		if (!((now.dfa_state==3)))
			goto S_941_1;
S_923_0: /* 2 */
S_915_0: /* 2 */
		if (!((now.output==11)))
			goto S_923_1;
S_916_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_917_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_924_0;
S_923_1: /* 3 */
S_918_0: /* 2 */
		if (!((((((((((((((((((((((((((now.output==26)||(now.output==25))||(now.output==14))||(now.output==13))||(now.output==12))||(now.output==23))||(now.output==22))||(now.output==8))||(now.output==21))||(now.output==6))||(now.output==18))||(now.output==4))||(now.output==16))||(now.output==3))||(now.output==15))||(now.output==1))||(now.output==24))||(now.output==10))||(now.output==7))||(now.output==20))||(now.output==19))||(now.output==5))||(now.output==17))||(now.output==2))||(now.output==9))))
			goto S_923_2;
S_919_0: /* 2 */
		now.dfa_state = 3;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_920_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_924_0;
S_923_2: /* 3 */
S_921_0: /* 2 */
		/* else */;
S_922_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_924_0;
S_923_3: /* 3 */
		Uerror("blocking sel in d_step (nr.24, near line 17)");
S_924_0: /* 2 */
		goto S_942_0;
S_941_1: /* 3 */
S_925_0: /* 2 */
		if (!((now.dfa_state==2)))
			goto S_941_2;
S_926_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_942_0;
S_941_2: /* 3 */
S_927_0: /* 2 */
		if (!((now.dfa_state==1)))
			goto S_941_3;
S_939_0: /* 2 */
S_928_0: /* 2 */
		if (!(((now.output==6)||(now.output==11))))
			goto S_939_1;
S_929_0: /* 2 */
		now.dfa_state = 2;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_930_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_940_0;
S_939_1: /* 3 */
S_931_0: /* 2 */
		if (!((now.output==4)))
			goto S_939_2;
S_932_0: /* 2 */
		now.dfa_state = 3;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_933_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_940_0;
S_939_2: /* 3 */
S_934_0: /* 2 */
		if (!((((((((((((((now.output==26)||(now.output==25))||(now.output==24))||(now.output==23))||(now.output==22))||(now.output==21))||(now.output==20))||(now.output==19))||(now.output==18))||(now.output==17))||(now.output==16))||(now.output==15))||(now.output==2))))
			goto S_939_3;
S_935_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_936_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_940_0;
S_939_3: /* 3 */
S_937_0: /* 2 */
		/* else */;
S_938_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_940_0;
S_939_4: /* 3 */
		Uerror("blocking sel in d_step (nr.25, near line 29)");
S_940_0: /* 2 */
		goto S_942_0;
S_941_3: /* 3 */
		Uerror("blocking sel in d_step (nr.26, near line 15)");
S_942_0: /* 2 */
		goto S_948_0;
S_948_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 562: // STATE 945 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:44 - [((dealt==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][945] = 1;
		if (!((((int)now.dealt)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 563: // STATE 952 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:660 - [printf('DFA State: %e\\n',dfa_state)] (0:0:0 - 2)
		IfNotBlocked
		reached[0][952] = 1;
		Printf("DFA State: %e\n", now.dfa_state);
		_m = 3; goto P999; /* 0 */
	case 564: // STATE 953 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:661 - [output = 10] (0:0:1 - 1)
		IfNotBlocked
		reached[0][953] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 10;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 565: // STATE 954 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:662 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][954] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 566: // STATE 955 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:663 - [fsm_state = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][955] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 5;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 567: // STATE 956 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:664 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][956] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 568: // STATE 961 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:667 - [((fsm_state==9))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][961] = 1;
		if (!((now.fsm_state==9)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 569: // STATE 962 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:669 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][962] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 570: // STATE 963 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:670 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][963] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 571: // STATE 964 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:671 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][964] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 572: // STATE 965 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:672 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][965] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 573: // STATE 966 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:673 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][966] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 574: // STATE 967 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:674 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][967] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 575: // STATE 968 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:675 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][968] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 576: // STATE 969 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:676 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][969] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 577: // STATE 970 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:677 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][970] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 578: // STATE 971 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:678 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][971] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 579: // STATE 972 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:679 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][972] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 580: // STATE 973 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:680 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][973] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 581: // STATE 974 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:681 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][974] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 582: // STATE 975 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:682 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][975] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 583: // STATE 976 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:683 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][976] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 584: // STATE 977 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:684 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][977] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 585: // STATE 978 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:685 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][978] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 586: // STATE 979 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:686 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][979] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 587: // STATE 980 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:687 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][980] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 588: // STATE 981 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:688 - [fsm_state = 17] (0:0:1 - 1)
		IfNotBlocked
		reached[0][981] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 17;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 589: // STATE 983 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:690 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][983] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 590: // STATE 984 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:691 - [fsm_state = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][984] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 9;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 591: // STATE 985 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:692 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][985] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 592: // STATE 986 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:693 - [((input==26))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][986] = 1;
		if (!((now.input==26)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 593: // STATE 987 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:694 - [fsm_state = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][987] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 9;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 594: // STATE 988 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:695 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][988] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 595: // STATE 989 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:696 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][989] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 596: // STATE 990 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:697 - [fsm_state = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][990] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 9;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 597: // STATE 991 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:698 - [output = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][991] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 1;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 598: // STATE 992 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:699 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][992] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 599: // STATE 993 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:700 - [fsm_state = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][993] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 9;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 600: // STATE 994 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:701 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][994] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 601: // STATE 995 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:702 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][995] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 602: // STATE 996 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:703 - [fsm_state = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][996] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 9;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 603: // STATE 997 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:704 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][997] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 604: // STATE 1002 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:707 - [((fsm_state==8))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1002] = 1;
		if (!((now.fsm_state==8)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 605: // STATE 1003 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:709 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1003] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 606: // STATE 1004 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:710 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1004] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 607: // STATE 1005 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:711 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1005] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 608: // STATE 1006 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:712 - [((input==26))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1006] = 1;
		if (!((now.input==26)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 609: // STATE 1007 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:713 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1007] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 610: // STATE 1008 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:714 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1008] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 611: // STATE 1009 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:715 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1009] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 612: // STATE 1010 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:716 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1010] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 613: // STATE 1011 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:717 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1011] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 614: // STATE 1012 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:718 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1012] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 615: // STATE 1013 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:719 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1013] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 616: // STATE 1014 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:720 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1014] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 617: // STATE 1015 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:721 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1015] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 618: // STATE 1016 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:722 - [fsm_state = 17] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1016] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 17;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 619: // STATE 1018 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:724 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1018] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 620: // STATE 1019 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:725 - [fsm_state = 8] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1019] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 8;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 621: // STATE 1020 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:726 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1020] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 622: // STATE 1021 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:727 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1021] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 623: // STATE 1022 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:728 - [fsm_state = 8] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1022] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 8;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 624: // STATE 1024 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:730 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1024] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 625: // STATE 1025 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:731 - [fsm_state = 8] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1025] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 8;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 626: // STATE 1027 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:733 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1027] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 627: // STATE 1028 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:734 - [fsm_state = 8] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1028] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 8;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 628: // STATE 1029 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:735 - [output = 14] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1029] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 14;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 629: // STATE 1030 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:736 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1030] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 630: // STATE 1031 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:737 - [fsm_state = 8] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1031] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 8;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 631: // STATE 1033 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:739 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1033] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 632: // STATE 1034 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:740 - [fsm_state = 8] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1034] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 8;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 633: // STATE 1035 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:741 - [output = 14] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1035] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 14;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 634: // STATE 1036 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:742 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1036] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 635: // STATE 1037 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:743 - [fsm_state = 4] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1037] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 4;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 636: // STATE 1038 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:744 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1038] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 637: // STATE 1043 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:747 - [((fsm_state==7))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1043] = 1;
		if (!((now.fsm_state==7)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 638: // STATE 1044 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:749 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1044] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 639: // STATE 1045 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:750 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1045] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 640: // STATE 1046 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:751 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1046] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 641: // STATE 1047 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:752 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1047] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 642: // STATE 1048 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:753 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1048] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 643: // STATE 1049 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:754 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1049] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 644: // STATE 1050 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:755 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1050] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 645: // STATE 1051 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:756 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1051] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 646: // STATE 1052 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:757 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1052] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 647: // STATE 1053 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:758 - [((input==26))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1053] = 1;
		if (!((now.input==26)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 648: // STATE 1054 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:759 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1054] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 649: // STATE 1055 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:760 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1055] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 650: // STATE 1056 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:761 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1056] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 651: // STATE 1057 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:762 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1057] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 652: // STATE 1058 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:763 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1058] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 653: // STATE 1059 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:764 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1059] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 654: // STATE 1060 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:765 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1060] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 655: // STATE 1061 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:766 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1061] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 656: // STATE 1062 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:767 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1062] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 657: // STATE 1063 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:768 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1063] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 658: // STATE 1064 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:769 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1064] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 659: // STATE 1065 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:770 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1065] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 660: // STATE 1066 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:771 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1066] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 661: // STATE 1067 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:772 - [output = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1067] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 1;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 662: // STATE 1068 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:773 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1068] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 663: // STATE 1069 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:774 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1069] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 664: // STATE 1070 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:775 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1070] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 665: // STATE 1071 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:776 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1071] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 666: // STATE 1072 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:777 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1072] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 667: // STATE 1073 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:778 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1073] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 668: // STATE 1074 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:779 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1074] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 669: // STATE 1075 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:780 - [fsm_state = 7] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1075] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 7;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 670: // STATE 1076 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:781 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1076] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 671: // STATE 1077 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:782 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1077] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 672: // STATE 1078 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:783 - [fsm_state = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1078] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 3;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 673: // STATE 1079 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:784 - [output = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1079] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 2;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 674: // STATE 1080 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:785 - [printf('Output: %e\\n',output)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1080] = 1;
		Printf("Output: %e\n", now.output);
		_m = 3; goto P999; /* 0 */
	case 675: // STATE 1111 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:13 - [D_STEP13]
		IfNotBlocked

		reached[0][1111] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_1080_0: /* 2 */
		now.dealt = 0;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
S_1108_0: /* 2 */
S_1081_0: /* 2 */
		if (!((now.dfa_state==3)))
			goto S_1108_1;
S_1090_0: /* 2 */
S_1082_0: /* 2 */
		if (!((now.output==11)))
			goto S_1090_1;
S_1083_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_1084_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_1091_0;
S_1090_1: /* 3 */
S_1085_0: /* 2 */
		if (!((((((((((((((((((((((((((now.output==26)||(now.output==25))||(now.output==14))||(now.output==13))||(now.output==12))||(now.output==23))||(now.output==22))||(now.output==8))||(now.output==21))||(now.output==6))||(now.output==18))||(now.output==4))||(now.output==16))||(now.output==3))||(now.output==15))||(now.output==1))||(now.output==24))||(now.output==10))||(now.output==7))||(now.output==20))||(now.output==19))||(now.output==5))||(now.output==17))||(now.output==2))||(now.output==9))))
			goto S_1090_2;
S_1086_0: /* 2 */
		now.dfa_state = 3;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_1087_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_1091_0;
S_1090_2: /* 3 */
S_1088_0: /* 2 */
		/* else */;
S_1089_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_1091_0;
S_1090_3: /* 3 */
		Uerror("blocking sel in d_step (nr.27, near line 17)");
S_1091_0: /* 2 */
		goto S_1109_0;
S_1108_1: /* 3 */
S_1092_0: /* 2 */
		if (!((now.dfa_state==2)))
			goto S_1108_2;
S_1093_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_1109_0;
S_1108_2: /* 3 */
S_1094_0: /* 2 */
		if (!((now.dfa_state==1)))
			goto S_1108_3;
S_1106_0: /* 2 */
S_1095_0: /* 2 */
		if (!(((now.output==6)||(now.output==11))))
			goto S_1106_1;
S_1096_0: /* 2 */
		now.dfa_state = 2;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_1097_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_1107_0;
S_1106_1: /* 3 */
S_1098_0: /* 2 */
		if (!((now.output==4)))
			goto S_1106_2;
S_1099_0: /* 2 */
		now.dfa_state = 3;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_1100_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_1107_0;
S_1106_2: /* 3 */
S_1101_0: /* 2 */
		if (!((((((((((((((now.output==26)||(now.output==25))||(now.output==24))||(now.output==23))||(now.output==22))||(now.output==21))||(now.output==20))||(now.output==19))||(now.output==18))||(now.output==17))||(now.output==16))||(now.output==15))||(now.output==2))))
			goto S_1106_3;
S_1102_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_1103_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_1107_0;
S_1106_3: /* 3 */
S_1104_0: /* 2 */
		/* else */;
S_1105_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_1107_0;
S_1106_4: /* 3 */
		Uerror("blocking sel in d_step (nr.28, near line 29)");
S_1107_0: /* 2 */
		goto S_1109_0;
S_1108_3: /* 3 */
		Uerror("blocking sel in d_step (nr.29, near line 15)");
S_1109_0: /* 2 */
		goto S_1115_0;
S_1115_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 676: // STATE 1112 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:44 - [((dealt==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1112] = 1;
		if (!((((int)now.dealt)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 677: // STATE 1119 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:787 - [printf('DFA State: %e\\n',dfa_state)] (0:0:0 - 2)
		IfNotBlocked
		reached[0][1119] = 1;
		Printf("DFA State: %e\n", now.dfa_state);
		_m = 3; goto P999; /* 0 */
	case 678: // STATE 1120 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:788 - [output = 4] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1120] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 4;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 679: // STATE 1125 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:791 - [((fsm_state==6))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1125] = 1;
		if (!((now.fsm_state==6)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 680: // STATE 1126 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:793 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1126] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 681: // STATE 1127 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:794 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1127] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 682: // STATE 1128 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:795 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1128] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 683: // STATE 1129 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:796 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1129] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 684: // STATE 1130 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:797 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1130] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 685: // STATE 1131 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:798 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1131] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 686: // STATE 1132 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:799 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1132] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 687: // STATE 1133 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:800 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1133] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 688: // STATE 1134 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:801 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1134] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 689: // STATE 1135 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:802 - [((input==26))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1135] = 1;
		if (!((now.input==26)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 690: // STATE 1136 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:803 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1136] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 691: // STATE 1137 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:804 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1137] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 692: // STATE 1138 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:805 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1138] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 693: // STATE 1139 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:806 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1139] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 694: // STATE 1140 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:807 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1140] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 695: // STATE 1141 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:808 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1141] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 696: // STATE 1142 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:809 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1142] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 697: // STATE 1143 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:810 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1143] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 698: // STATE 1144 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:811 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1144] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 699: // STATE 1145 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:812 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1145] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 700: // STATE 1146 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:813 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1146] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 701: // STATE 1147 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:814 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1147] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 702: // STATE 1148 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:815 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1148] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 703: // STATE 1149 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:816 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1149] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 704: // STATE 1150 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:817 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1150] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 705: // STATE 1151 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:818 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1151] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 706: // STATE 1152 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:819 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1152] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 707: // STATE 1153 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:820 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1153] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 708: // STATE 1154 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:821 - [fsm_state = 14] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1154] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 14;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 709: // STATE 1156 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:823 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1156] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 710: // STATE 1157 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:824 - [fsm_state = 6] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1157] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 6;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 711: // STATE 1158 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:825 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1158] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 712: // STATE 1159 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:826 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1159] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 713: // STATE 1160 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:827 - [fsm_state = 6] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1160] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 6;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 714: // STATE 1161 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:828 - [output = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1161] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 1;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 715: // STATE 1166 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:831 - [((fsm_state==5))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1166] = 1;
		if (!((now.fsm_state==5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 716: // STATE 1167 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:833 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1167] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 717: // STATE 1168 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:834 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1168] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 718: // STATE 1169 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:835 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1169] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 719: // STATE 1170 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:836 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1170] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 720: // STATE 1171 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:837 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1171] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 721: // STATE 1172 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:838 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1172] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 722: // STATE 1173 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:839 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1173] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 723: // STATE 1174 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:840 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1174] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 724: // STATE 1175 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:841 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1175] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 725: // STATE 1176 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:842 - [((input==26))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1176] = 1;
		if (!((now.input==26)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 726: // STATE 1177 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:843 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1177] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 727: // STATE 1178 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:844 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1178] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 728: // STATE 1179 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:845 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1179] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 729: // STATE 1180 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:846 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1180] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 730: // STATE 1181 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:847 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1181] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 731: // STATE 1182 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:848 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1182] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 732: // STATE 1183 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:849 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1183] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 733: // STATE 1184 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:850 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1184] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 734: // STATE 1185 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:851 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1185] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 735: // STATE 1186 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:852 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1186] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 736: // STATE 1187 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:853 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1187] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 737: // STATE 1188 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:854 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1188] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 738: // STATE 1189 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:855 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1189] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 739: // STATE 1190 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:856 - [output = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1190] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 1;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 740: // STATE 1191 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:857 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1191] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 741: // STATE 1192 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:858 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1192] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 742: // STATE 1193 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:859 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1193] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 743: // STATE 1194 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:860 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1194] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 744: // STATE 1195 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:861 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1195] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 745: // STATE 1196 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:862 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1196] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 746: // STATE 1197 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:863 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1197] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 747: // STATE 1198 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:864 - [fsm_state = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1198] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 5;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 748: // STATE 1199 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:865 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1199] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 749: // STATE 1200 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:866 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1200] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 750: // STATE 1201 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:867 - [fsm_state = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1201] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 2;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 751: // STATE 1202 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:868 - [output = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1202] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 2;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 752: // STATE 1203 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:869 - [printf('Output: %e\\n',output)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1203] = 1;
		Printf("Output: %e\n", now.output);
		_m = 3; goto P999; /* 0 */
	case 753: // STATE 1234 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:13 - [D_STEP13]
		IfNotBlocked

		reached[0][1234] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_1203_0: /* 2 */
		now.dealt = 0;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
S_1231_0: /* 2 */
S_1204_0: /* 2 */
		if (!((now.dfa_state==3)))
			goto S_1231_1;
S_1213_0: /* 2 */
S_1205_0: /* 2 */
		if (!((now.output==11)))
			goto S_1213_1;
S_1206_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_1207_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_1214_0;
S_1213_1: /* 3 */
S_1208_0: /* 2 */
		if (!((((((((((((((((((((((((((now.output==26)||(now.output==25))||(now.output==14))||(now.output==13))||(now.output==12))||(now.output==23))||(now.output==22))||(now.output==8))||(now.output==21))||(now.output==6))||(now.output==18))||(now.output==4))||(now.output==16))||(now.output==3))||(now.output==15))||(now.output==1))||(now.output==24))||(now.output==10))||(now.output==7))||(now.output==20))||(now.output==19))||(now.output==5))||(now.output==17))||(now.output==2))||(now.output==9))))
			goto S_1213_2;
S_1209_0: /* 2 */
		now.dfa_state = 3;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_1210_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_1214_0;
S_1213_2: /* 3 */
S_1211_0: /* 2 */
		/* else */;
S_1212_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_1214_0;
S_1213_3: /* 3 */
		Uerror("blocking sel in d_step (nr.30, near line 17)");
S_1214_0: /* 2 */
		goto S_1232_0;
S_1231_1: /* 3 */
S_1215_0: /* 2 */
		if (!((now.dfa_state==2)))
			goto S_1231_2;
S_1216_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_1232_0;
S_1231_2: /* 3 */
S_1217_0: /* 2 */
		if (!((now.dfa_state==1)))
			goto S_1231_3;
S_1229_0: /* 2 */
S_1218_0: /* 2 */
		if (!(((now.output==6)||(now.output==11))))
			goto S_1229_1;
S_1219_0: /* 2 */
		now.dfa_state = 2;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_1220_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_1230_0;
S_1229_1: /* 3 */
S_1221_0: /* 2 */
		if (!((now.output==4)))
			goto S_1229_2;
S_1222_0: /* 2 */
		now.dfa_state = 3;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_1223_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_1230_0;
S_1229_2: /* 3 */
S_1224_0: /* 2 */
		if (!((((((((((((((now.output==26)||(now.output==25))||(now.output==24))||(now.output==23))||(now.output==22))||(now.output==21))||(now.output==20))||(now.output==19))||(now.output==18))||(now.output==17))||(now.output==16))||(now.output==15))||(now.output==2))))
			goto S_1229_3;
S_1225_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_1226_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_1230_0;
S_1229_3: /* 3 */
S_1227_0: /* 2 */
		/* else */;
S_1228_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_1230_0;
S_1229_4: /* 3 */
		Uerror("blocking sel in d_step (nr.31, near line 29)");
S_1230_0: /* 2 */
		goto S_1232_0;
S_1231_3: /* 3 */
		Uerror("blocking sel in d_step (nr.32, near line 15)");
S_1232_0: /* 2 */
		goto S_1238_0;
S_1238_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 754: // STATE 1235 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:44 - [((dealt==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1235] = 1;
		if (!((((int)now.dealt)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 755: // STATE 1242 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:871 - [printf('DFA State: %e\\n',dfa_state)] (0:0:0 - 2)
		IfNotBlocked
		reached[0][1242] = 1;
		Printf("DFA State: %e\n", now.dfa_state);
		_m = 3; goto P999; /* 0 */
	case 756: // STATE 1243 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:872 - [output = 4] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1243] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 4;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 757: // STATE 1248 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:875 - [((fsm_state==4))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1248] = 1;
		if (!((now.fsm_state==4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 758: // STATE 1249 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:877 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1249] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 759: // STATE 1250 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:878 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1250] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 760: // STATE 1251 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:879 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1251] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 761: // STATE 1252 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:880 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1252] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 762: // STATE 1253 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:881 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1253] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 763: // STATE 1254 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:882 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1254] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 764: // STATE 1255 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:883 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1255] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 765: // STATE 1256 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:884 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1256] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 766: // STATE 1257 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:885 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1257] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 767: // STATE 1258 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:886 - [((input==26))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1258] = 1;
		if (!((now.input==26)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 768: // STATE 1259 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:887 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1259] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 769: // STATE 1260 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:888 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1260] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 770: // STATE 1261 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:889 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1261] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 771: // STATE 1262 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:890 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1262] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 772: // STATE 1263 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:891 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1263] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 773: // STATE 1264 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:892 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1264] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 774: // STATE 1265 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:893 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1265] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 775: // STATE 1266 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:894 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1266] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 776: // STATE 1267 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:895 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1267] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 777: // STATE 1268 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:896 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1268] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 778: // STATE 1269 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:897 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1269] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 779: // STATE 1270 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:898 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1270] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 780: // STATE 1271 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:899 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1271] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 781: // STATE 1272 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:900 - [output = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1272] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 1;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 782: // STATE 1273 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:901 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1273] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 783: // STATE 1274 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:902 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1274] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 784: // STATE 1275 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:903 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1275] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 785: // STATE 1276 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:904 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1276] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 786: // STATE 1277 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:905 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1277] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 787: // STATE 1278 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:906 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1278] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 788: // STATE 1279 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:907 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1279] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 789: // STATE 1280 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:908 - [fsm_state = 4] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1280] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 4;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 790: // STATE 1281 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:909 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1281] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 791: // STATE 1282 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:910 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1282] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 792: // STATE 1283 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:911 - [fsm_state = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1283] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 1;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 793: // STATE 1284 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:912 - [output = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1284] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 2;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 794: // STATE 1285 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:913 - [printf('Output: %e\\n',output)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1285] = 1;
		Printf("Output: %e\n", now.output);
		_m = 3; goto P999; /* 0 */
	case 795: // STATE 1316 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:13 - [D_STEP13]
		IfNotBlocked

		reached[0][1316] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_1285_0: /* 2 */
		now.dealt = 0;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
S_1313_0: /* 2 */
S_1286_0: /* 2 */
		if (!((now.dfa_state==3)))
			goto S_1313_1;
S_1295_0: /* 2 */
S_1287_0: /* 2 */
		if (!((now.output==11)))
			goto S_1295_1;
S_1288_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_1289_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_1296_0;
S_1295_1: /* 3 */
S_1290_0: /* 2 */
		if (!((((((((((((((((((((((((((now.output==26)||(now.output==25))||(now.output==14))||(now.output==13))||(now.output==12))||(now.output==23))||(now.output==22))||(now.output==8))||(now.output==21))||(now.output==6))||(now.output==18))||(now.output==4))||(now.output==16))||(now.output==3))||(now.output==15))||(now.output==1))||(now.output==24))||(now.output==10))||(now.output==7))||(now.output==20))||(now.output==19))||(now.output==5))||(now.output==17))||(now.output==2))||(now.output==9))))
			goto S_1295_2;
S_1291_0: /* 2 */
		now.dfa_state = 3;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_1292_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_1296_0;
S_1295_2: /* 3 */
S_1293_0: /* 2 */
		/* else */;
S_1294_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_1296_0;
S_1295_3: /* 3 */
		Uerror("blocking sel in d_step (nr.33, near line 17)");
S_1296_0: /* 2 */
		goto S_1314_0;
S_1313_1: /* 3 */
S_1297_0: /* 2 */
		if (!((now.dfa_state==2)))
			goto S_1313_2;
S_1298_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_1314_0;
S_1313_2: /* 3 */
S_1299_0: /* 2 */
		if (!((now.dfa_state==1)))
			goto S_1313_3;
S_1311_0: /* 2 */
S_1300_0: /* 2 */
		if (!(((now.output==6)||(now.output==11))))
			goto S_1311_1;
S_1301_0: /* 2 */
		now.dfa_state = 2;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_1302_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_1312_0;
S_1311_1: /* 3 */
S_1303_0: /* 2 */
		if (!((now.output==4)))
			goto S_1311_2;
S_1304_0: /* 2 */
		now.dfa_state = 3;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_1305_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_1312_0;
S_1311_2: /* 3 */
S_1306_0: /* 2 */
		if (!((((((((((((((now.output==26)||(now.output==25))||(now.output==24))||(now.output==23))||(now.output==22))||(now.output==21))||(now.output==20))||(now.output==19))||(now.output==18))||(now.output==17))||(now.output==16))||(now.output==15))||(now.output==2))))
			goto S_1311_3;
S_1307_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_1308_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_1312_0;
S_1311_3: /* 3 */
S_1309_0: /* 2 */
		/* else */;
S_1310_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_1312_0;
S_1311_4: /* 3 */
		Uerror("blocking sel in d_step (nr.34, near line 29)");
S_1312_0: /* 2 */
		goto S_1314_0;
S_1313_3: /* 3 */
		Uerror("blocking sel in d_step (nr.35, near line 15)");
S_1314_0: /* 2 */
		goto S_1320_0;
S_1320_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 796: // STATE 1317 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:44 - [((dealt==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1317] = 1;
		if (!((((int)now.dealt)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 797: // STATE 1324 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:915 - [printf('DFA State: %e\\n',dfa_state)] (0:0:0 - 2)
		IfNotBlocked
		reached[0][1324] = 1;
		Printf("DFA State: %e\n", now.dfa_state);
		_m = 3; goto P999; /* 0 */
	case 798: // STATE 1325 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:916 - [output = 4] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1325] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 4;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 799: // STATE 1330 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:919 - [((fsm_state==3))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1330] = 1;
		if (!((now.fsm_state==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 800: // STATE 1331 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:921 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1331] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 801: // STATE 1332 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:922 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1332] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 802: // STATE 1333 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:923 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1333] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 803: // STATE 1334 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:924 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1334] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 804: // STATE 1335 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:925 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1335] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 805: // STATE 1336 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:926 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1336] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 806: // STATE 1337 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:927 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1337] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 807: // STATE 1338 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:928 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1338] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 808: // STATE 1339 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:929 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1339] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 809: // STATE 1340 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:930 - [((input==26))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1340] = 1;
		if (!((now.input==26)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 810: // STATE 1341 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:931 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1341] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 811: // STATE 1342 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:932 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1342] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 812: // STATE 1343 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:933 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1343] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 813: // STATE 1344 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:934 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1344] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 814: // STATE 1345 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:935 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1345] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 815: // STATE 1346 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:936 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1346] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 816: // STATE 1347 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:937 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1347] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 817: // STATE 1348 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:938 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1348] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 818: // STATE 1349 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:939 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1349] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 819: // STATE 1350 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:940 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1350] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 820: // STATE 1351 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:941 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1351] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 821: // STATE 1352 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:942 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1352] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 822: // STATE 1353 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:943 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1353] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 823: // STATE 1354 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:944 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1354] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 824: // STATE 1355 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:945 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1355] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 825: // STATE 1356 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:946 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1356] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 826: // STATE 1357 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:947 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1357] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 827: // STATE 1358 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:948 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1358] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 828: // STATE 1359 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:949 - [fsm_state = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1359] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 12;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 829: // STATE 1361 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:951 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1361] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 830: // STATE 1362 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:952 - [fsm_state = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1362] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 3;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 831: // STATE 1363 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:953 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1363] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 832: // STATE 1364 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:954 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1364] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 833: // STATE 1365 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:955 - [fsm_state = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1365] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 3;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 834: // STATE 1366 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:956 - [output = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1366] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 1;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 835: // STATE 1371 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:959 - [((fsm_state==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1371] = 1;
		if (!((now.fsm_state==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 836: // STATE 1372 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:961 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1372] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 837: // STATE 1373 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:962 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1373] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 838: // STATE 1374 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:963 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1374] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 839: // STATE 1375 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:964 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1375] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 840: // STATE 1376 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:965 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1376] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 841: // STATE 1377 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:966 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1377] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 842: // STATE 1378 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:967 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1378] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 843: // STATE 1379 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:968 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1379] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 844: // STATE 1380 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:969 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1380] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 845: // STATE 1381 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:970 - [((input==26))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1381] = 1;
		if (!((now.input==26)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 846: // STATE 1382 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:971 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1382] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 847: // STATE 1383 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:972 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1383] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 848: // STATE 1384 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:973 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1384] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 849: // STATE 1385 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:974 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1385] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 850: // STATE 1386 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:975 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1386] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 851: // STATE 1387 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:976 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1387] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 852: // STATE 1388 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:977 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1388] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 853: // STATE 1389 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:978 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1389] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 854: // STATE 1390 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:979 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1390] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 855: // STATE 1391 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:980 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1391] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 856: // STATE 1392 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:981 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1392] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 857: // STATE 1393 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:982 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1393] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 858: // STATE 1394 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:983 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1394] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 859: // STATE 1395 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:984 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1395] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 860: // STATE 1396 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:985 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1396] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 861: // STATE 1397 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:986 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1397] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 862: // STATE 1398 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:987 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1398] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 863: // STATE 1399 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:988 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1399] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 864: // STATE 1400 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:989 - [fsm_state = 10] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1400] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 10;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 865: // STATE 1402 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:991 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1402] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 866: // STATE 1403 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:992 - [fsm_state = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1403] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 2;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 867: // STATE 1404 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:993 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1404] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 868: // STATE 1405 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:994 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1405] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 869: // STATE 1406 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:995 - [fsm_state = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1406] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 2;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 870: // STATE 1407 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:996 - [output = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1407] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 1;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 871: // STATE 1412 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:999 - [((fsm_state==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1412] = 1;
		if (!((now.fsm_state==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 872: // STATE 1413 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:1001 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1413] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 873: // STATE 1414 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:1002 - [fsm_state = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1414] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 22;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 874: // STATE 1415 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:1003 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1415] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 875: // STATE 1416 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:1004 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1416] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 876: // STATE 1417 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:1005 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1417] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 877: // STATE 1418 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:1006 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1418] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 878: // STATE 1419 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:1007 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1419] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 879: // STATE 1420 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:1008 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1420] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 880: // STATE 1421 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:1009 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1421] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 881: // STATE 1422 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:1010 - [((input==26))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1422] = 1;
		if (!((now.input==26)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 882: // STATE 1423 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:1011 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1423] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 883: // STATE 1424 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:1012 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1424] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 884: // STATE 1425 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:1013 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1425] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 885: // STATE 1426 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:1014 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1426] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 886: // STATE 1427 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:1015 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1427] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 887: // STATE 1428 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:1016 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1428] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 888: // STATE 1429 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:1017 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1429] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 889: // STATE 1430 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:1018 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1430] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 890: // STATE 1431 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:1019 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1431] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 891: // STATE 1432 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:1020 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1432] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 892: // STATE 1433 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:1021 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1433] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 893: // STATE 1434 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:1022 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1434] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 894: // STATE 1435 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:1023 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1435] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 895: // STATE 1436 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:1024 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1436] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 896: // STATE 1437 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:1025 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1437] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 897: // STATE 1438 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:1026 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1438] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 898: // STATE 1439 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:1027 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1439] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 899: // STATE 1440 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:1028 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1440] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 900: // STATE 1441 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:1029 - [fsm_state = 8] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1441] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 8;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 901: // STATE 1443 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:1031 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1443] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 902: // STATE 1444 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:1032 - [fsm_state = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1444] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 1;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 903: // STATE 1445 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:1033 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1445] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 904: // STATE 1446 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:1034 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1446] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 905: // STATE 1447 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:1035 - [fsm_state = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1447] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 1;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 906: // STATE 1448 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:1036 - [output = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1448] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 1;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 907: // STATE 1455 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:1040 - [printf('FSM State: %e\\n',fsm_state)] (0:0:0 - 277)
		IfNotBlocked
		reached[0][1455] = 1;
		Printf("FSM State: %e\n", now.fsm_state);
		_m = 3; goto P999; /* 0 */
	case 908: // STATE 1456 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:1041 - [printf('Output: %e\\n\\n',output)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1456] = 1;
		Printf("Output: %e\n\n", now.output);
		_m = 3; goto P999; /* 0 */
	case 909: // STATE 1487 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:13 - [D_STEP13]
		IfNotBlocked

		reached[0][1487] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_1456_0: /* 2 */
		now.dealt = 0;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
S_1484_0: /* 2 */
S_1457_0: /* 2 */
		if (!((now.dfa_state==3)))
			goto S_1484_1;
S_1466_0: /* 2 */
S_1458_0: /* 2 */
		if (!((now.output==11)))
			goto S_1466_1;
S_1459_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_1460_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_1467_0;
S_1466_1: /* 3 */
S_1461_0: /* 2 */
		if (!((((((((((((((((((((((((((now.output==26)||(now.output==25))||(now.output==14))||(now.output==13))||(now.output==12))||(now.output==23))||(now.output==22))||(now.output==8))||(now.output==21))||(now.output==6))||(now.output==18))||(now.output==4))||(now.output==16))||(now.output==3))||(now.output==15))||(now.output==1))||(now.output==24))||(now.output==10))||(now.output==7))||(now.output==20))||(now.output==19))||(now.output==5))||(now.output==17))||(now.output==2))||(now.output==9))))
			goto S_1466_2;
S_1462_0: /* 2 */
		now.dfa_state = 3;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_1463_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_1467_0;
S_1466_2: /* 3 */
S_1464_0: /* 2 */
		/* else */;
S_1465_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_1467_0;
S_1466_3: /* 3 */
		Uerror("blocking sel in d_step (nr.36, near line 17)");
S_1467_0: /* 2 */
		goto S_1485_0;
S_1484_1: /* 3 */
S_1468_0: /* 2 */
		if (!((now.dfa_state==2)))
			goto S_1484_2;
S_1469_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_1485_0;
S_1484_2: /* 3 */
S_1470_0: /* 2 */
		if (!((now.dfa_state==1)))
			goto S_1484_3;
S_1482_0: /* 2 */
S_1471_0: /* 2 */
		if (!(((now.output==6)||(now.output==11))))
			goto S_1482_1;
S_1472_0: /* 2 */
		now.dfa_state = 2;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_1473_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_1483_0;
S_1482_1: /* 3 */
S_1474_0: /* 2 */
		if (!((now.output==4)))
			goto S_1482_2;
S_1475_0: /* 2 */
		now.dfa_state = 3;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_1476_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_1483_0;
S_1482_2: /* 3 */
S_1477_0: /* 2 */
		if (!((((((((((((((now.output==26)||(now.output==25))||(now.output==24))||(now.output==23))||(now.output==22))||(now.output==21))||(now.output==20))||(now.output==19))||(now.output==18))||(now.output==17))||(now.output==16))||(now.output==15))||(now.output==2))))
			goto S_1482_3;
S_1478_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_1479_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_1483_0;
S_1482_3: /* 3 */
S_1480_0: /* 2 */
		/* else */;
S_1481_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_1483_0;
S_1482_4: /* 3 */
		Uerror("blocking sel in d_step (nr.37, near line 29)");
S_1483_0: /* 2 */
		goto S_1485_0;
S_1484_3: /* 3 */
		Uerror("blocking sel in d_step (nr.38, near line 15)");
S_1485_0: /* 2 */
		goto S_1491_0;
S_1491_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 910: // STATE 1488 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:44 - [((dealt==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1488] = 1;
		if (!((((int)now.dealt)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 911: // STATE 1495 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:1043 - [printf('DFA State: %e\\n\\n',dfa_state)] (0:0:0 - 2)
		IfNotBlocked
		reached[0][1495] = 1;
		Printf("DFA State: %e\n\n", now.dfa_state);
		_m = 3; goto P999; /* 0 */
	case 912: // STATE 1499 - Dropbear-v2025.89_invalid_response_before_newkeys_introspection.pml:1045 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1499] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

