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
	case 5: // STATE 1 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:51 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 2 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:52 - [dfa_state = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		(trpt+1)->bup.oval = now.dfa_state;
		now.dfa_state = 3;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 3 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:53 - [dealt = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.oval = ((int)now.dealt);
		now.dealt = 0;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 5 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:58 - [input = 25] (0:0:1 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		(trpt+1)->bup.oval = now.input;
		now.input = 25;
#ifdef VAR_RANGES
		logval("input", now.input);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 6 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:59 - [input = 24] (0:0:1 - 1)
		IfNotBlocked
		reached[0][6] = 1;
		(trpt+1)->bup.oval = now.input;
		now.input = 24;
#ifdef VAR_RANGES
		logval("input", now.input);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 7 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:60 - [input = 23] (0:0:1 - 1)
		IfNotBlocked
		reached[0][7] = 1;
		(trpt+1)->bup.oval = now.input;
		now.input = 23;
#ifdef VAR_RANGES
		logval("input", now.input);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 8 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:61 - [input = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		(trpt+1)->bup.oval = now.input;
		now.input = 22;
#ifdef VAR_RANGES
		logval("input", now.input);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 9 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:62 - [input = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		(trpt+1)->bup.oval = now.input;
		now.input = 21;
#ifdef VAR_RANGES
		logval("input", now.input);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 10 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:63 - [input = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][10] = 1;
		(trpt+1)->bup.oval = now.input;
		now.input = 20;
#ifdef VAR_RANGES
		logval("input", now.input);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 11 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:64 - [input = 19] (0:0:1 - 1)
		IfNotBlocked
		reached[0][11] = 1;
		(trpt+1)->bup.oval = now.input;
		now.input = 19;
#ifdef VAR_RANGES
		logval("input", now.input);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 12 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:65 - [input = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][12] = 1;
		(trpt+1)->bup.oval = now.input;
		now.input = 18;
#ifdef VAR_RANGES
		logval("input", now.input);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 13 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:66 - [input = 17] (0:0:1 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		(trpt+1)->bup.oval = now.input;
		now.input = 17;
#ifdef VAR_RANGES
		logval("input", now.input);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 14 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:67 - [input = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][14] = 1;
		(trpt+1)->bup.oval = now.input;
		now.input = 16;
#ifdef VAR_RANGES
		logval("input", now.input);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 15 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:68 - [input = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][15] = 1;
		(trpt+1)->bup.oval = now.input;
		now.input = 15;
#ifdef VAR_RANGES
		logval("input", now.input);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 16 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:69 - [input = 14] (0:0:1 - 1)
		IfNotBlocked
		reached[0][16] = 1;
		(trpt+1)->bup.oval = now.input;
		now.input = 14;
#ifdef VAR_RANGES
		logval("input", now.input);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 19 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:71 - [printf('Input: %e\\n',input)] (0:0:0 - 13)
		IfNotBlocked
		reached[0][19] = 1;
		Printf("Input: %e\n", now.input);
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 50 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:13 - [D_STEP13]
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
		if (!((now.input==10)))
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
		if (!(((((((((((((((((((((((((now.input==24)||(now.input==23))||(now.input==21))||(now.input==11))||(now.input==20))||(now.input==9))||(now.input==18))||(now.input==8))||(now.input==17))||(now.input==16))||(now.input==14))||(now.input==2))||(now.input==25))||(now.input==13))||(now.input==12))||(now.input==22))||(now.input==19))||(now.input==7))||(now.input==6))||(now.input==15))||(now.input==5))||(now.input==4))||(now.input==3))||(now.input==1))))
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
		if (!(((now.input==8)||(now.input==10))))
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
		if (!((now.input==7)))
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
		if (!((((((((((((((now.input==25)||(now.input==24))||(now.input==23))||(now.input==22))||(now.input==21))||(now.input==20))||(now.input==19))||(now.input==18))||(now.input==17))||(now.input==16))||(now.input==15))||(now.input==14))||(now.input==3))))
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

	case 22: // STATE 51 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:44 - [((dealt==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][51] = 1;
		if (!((((int)now.dealt)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 58 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:73 - [printf('DFA State: %e\\n',dfa_state)] (0:0:0 - 2)
		IfNotBlocked
		reached[0][58] = 1;
		Printf("DFA State: %e\n", now.dfa_state);
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 59 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:75 - [((fsm_state==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][59] = 1;
		if (!((now.fsm_state==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 60 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:77 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][60] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 61 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:78 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][61] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 62 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:79 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][62] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 63 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:80 - [((input==14))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][63] = 1;
		if (!((now.input==14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 64 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:81 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][64] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 65 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:82 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][65] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 66 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:83 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][66] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 67 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:84 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][67] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 68 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:85 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][68] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 69 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:86 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][69] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 70 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:87 - [fsm_state = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][70] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 21;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 71 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:88 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][71] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 72 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:89 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][72] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 73 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:90 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][73] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 74 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:91 - [output = 10] (0:0:1 - 1)
		IfNotBlocked
		reached[0][74] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 10;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 75 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:92 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][75] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 76 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:93 - [fsm_state = 19] (0:0:1 - 1)
		IfNotBlocked
		reached[0][76] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 19;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 77 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:94 - [output = 10] (0:0:1 - 1)
		IfNotBlocked
		reached[0][77] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 10;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 78 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:95 - [printf('Output: %e\\n',output)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][78] = 1;
		Printf("Output: %e\n", now.output);
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 109 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:13 - [D_STEP13]
		IfNotBlocked

		reached[0][109] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_078_0: /* 2 */
		now.dealt = 0;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
S_106_0: /* 2 */
S_079_0: /* 2 */
		if (!((now.dfa_state==3)))
			goto S_106_1;
S_088_0: /* 2 */
S_080_0: /* 2 */
		if (!((now.output==10)))
			goto S_088_1;
S_081_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_082_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_089_0;
S_088_1: /* 3 */
S_083_0: /* 2 */
		if (!(((((((((((((((((((((((((now.output==24)||(now.output==23))||(now.output==21))||(now.output==11))||(now.output==20))||(now.output==9))||(now.output==18))||(now.output==8))||(now.output==17))||(now.output==16))||(now.output==14))||(now.output==2))||(now.output==25))||(now.output==13))||(now.output==12))||(now.output==22))||(now.output==19))||(now.output==7))||(now.output==6))||(now.output==15))||(now.output==5))||(now.output==4))||(now.output==3))||(now.output==1))))
			goto S_088_2;
S_084_0: /* 2 */
		now.dfa_state = 3;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_085_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_089_0;
S_088_2: /* 3 */
S_086_0: /* 2 */
		/* else */;
S_087_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_089_0;
S_088_3: /* 3 */
		Uerror("blocking sel in d_step (nr.3, near line 17)");
S_089_0: /* 2 */
		goto S_107_0;
S_106_1: /* 3 */
S_090_0: /* 2 */
		if (!((now.dfa_state==2)))
			goto S_106_2;
S_091_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_107_0;
S_106_2: /* 3 */
S_092_0: /* 2 */
		if (!((now.dfa_state==1)))
			goto S_106_3;
S_104_0: /* 2 */
S_093_0: /* 2 */
		if (!(((now.output==8)||(now.output==10))))
			goto S_104_1;
S_094_0: /* 2 */
		now.dfa_state = 2;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_095_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_105_0;
S_104_1: /* 3 */
S_096_0: /* 2 */
		if (!((now.output==7)))
			goto S_104_2;
S_097_0: /* 2 */
		now.dfa_state = 3;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_098_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_105_0;
S_104_2: /* 3 */
S_099_0: /* 2 */
		if (!((((((((((((((now.output==25)||(now.output==24))||(now.output==23))||(now.output==22))||(now.output==21))||(now.output==20))||(now.output==19))||(now.output==18))||(now.output==17))||(now.output==16))||(now.output==15))||(now.output==14))||(now.output==3))))
			goto S_104_3;
S_100_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_101_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_105_0;
S_104_3: /* 3 */
S_102_0: /* 2 */
		/* else */;
S_103_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_105_0;
S_104_4: /* 3 */
		Uerror("blocking sel in d_step (nr.4, near line 29)");
S_105_0: /* 2 */
		goto S_107_0;
S_106_3: /* 3 */
		Uerror("blocking sel in d_step (nr.5, near line 15)");
S_107_0: /* 2 */
		goto S_113_0;
S_113_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 45: // STATE 110 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:44 - [((dealt==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][110] = 1;
		if (!((((int)now.dealt)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 117 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:97 - [printf('DFA State: %e\\n',dfa_state)] (0:0:0 - 2)
		IfNotBlocked
		reached[0][117] = 1;
		Printf("DFA State: %e\n", now.dfa_state);
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 118 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:98 - [output = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][118] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 2;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 119 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:99 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][119] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 49: // STATE 120 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:100 - [fsm_state = 19] (0:0:1 - 1)
		IfNotBlocked
		reached[0][120] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 19;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 121 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:101 - [output = 10] (0:0:1 - 1)
		IfNotBlocked
		reached[0][121] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 10;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 51: // STATE 122 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:102 - [printf('Output: %e\\n',output)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][122] = 1;
		Printf("Output: %e\n", now.output);
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 153 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:13 - [D_STEP13]
		IfNotBlocked

		reached[0][153] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_122_0: /* 2 */
		now.dealt = 0;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
S_150_0: /* 2 */
S_123_0: /* 2 */
		if (!((now.dfa_state==3)))
			goto S_150_1;
S_132_0: /* 2 */
S_124_0: /* 2 */
		if (!((now.output==10)))
			goto S_132_1;
S_125_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_126_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_133_0;
S_132_1: /* 3 */
S_127_0: /* 2 */
		if (!(((((((((((((((((((((((((now.output==24)||(now.output==23))||(now.output==21))||(now.output==11))||(now.output==20))||(now.output==9))||(now.output==18))||(now.output==8))||(now.output==17))||(now.output==16))||(now.output==14))||(now.output==2))||(now.output==25))||(now.output==13))||(now.output==12))||(now.output==22))||(now.output==19))||(now.output==7))||(now.output==6))||(now.output==15))||(now.output==5))||(now.output==4))||(now.output==3))||(now.output==1))))
			goto S_132_2;
S_128_0: /* 2 */
		now.dfa_state = 3;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_129_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_133_0;
S_132_2: /* 3 */
S_130_0: /* 2 */
		/* else */;
S_131_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_133_0;
S_132_3: /* 3 */
		Uerror("blocking sel in d_step (nr.6, near line 17)");
S_133_0: /* 2 */
		goto S_151_0;
S_150_1: /* 3 */
S_134_0: /* 2 */
		if (!((now.dfa_state==2)))
			goto S_150_2;
S_135_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_151_0;
S_150_2: /* 3 */
S_136_0: /* 2 */
		if (!((now.dfa_state==1)))
			goto S_150_3;
S_148_0: /* 2 */
S_137_0: /* 2 */
		if (!(((now.output==8)||(now.output==10))))
			goto S_148_1;
S_138_0: /* 2 */
		now.dfa_state = 2;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_139_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_149_0;
S_148_1: /* 3 */
S_140_0: /* 2 */
		if (!((now.output==7)))
			goto S_148_2;
S_141_0: /* 2 */
		now.dfa_state = 3;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_142_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_149_0;
S_148_2: /* 3 */
S_143_0: /* 2 */
		if (!((((((((((((((now.output==25)||(now.output==24))||(now.output==23))||(now.output==22))||(now.output==21))||(now.output==20))||(now.output==19))||(now.output==18))||(now.output==17))||(now.output==16))||(now.output==15))||(now.output==14))||(now.output==3))))
			goto S_148_3;
S_144_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_145_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_149_0;
S_148_3: /* 3 */
S_146_0: /* 2 */
		/* else */;
S_147_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_149_0;
S_148_4: /* 3 */
		Uerror("blocking sel in d_step (nr.7, near line 29)");
S_149_0: /* 2 */
		goto S_151_0;
S_150_3: /* 3 */
		Uerror("blocking sel in d_step (nr.8, near line 15)");
S_151_0: /* 2 */
		goto S_157_0;
S_157_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 53: // STATE 154 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:44 - [((dealt==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][154] = 1;
		if (!((((int)now.dealt)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 54: // STATE 161 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:104 - [printf('DFA State: %e\\n',dfa_state)] (0:0:0 - 2)
		IfNotBlocked
		reached[0][161] = 1;
		Printf("DFA State: %e\n", now.dfa_state);
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 162 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:105 - [output = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][162] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 2;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 163 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:106 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][163] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 57: // STATE 164 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:107 - [fsm_state = 19] (0:0:1 - 1)
		IfNotBlocked
		reached[0][164] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 19;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 58: // STATE 165 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:108 - [output = 10] (0:0:1 - 1)
		IfNotBlocked
		reached[0][165] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 10;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 59: // STATE 166 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:109 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][166] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 60: // STATE 167 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:110 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][167] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 61: // STATE 168 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:111 - [output = 10] (0:0:1 - 1)
		IfNotBlocked
		reached[0][168] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 10;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 62: // STATE 169 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:112 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][169] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 63: // STATE 170 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:113 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][170] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 64: // STATE 171 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:114 - [output = 10] (0:0:1 - 1)
		IfNotBlocked
		reached[0][171] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 10;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 65: // STATE 172 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:115 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][172] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 66: // STATE 173 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:116 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][173] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 67: // STATE 174 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:117 - [output = 10] (0:0:1 - 1)
		IfNotBlocked
		reached[0][174] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 10;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 68: // STATE 175 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:118 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][175] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 69: // STATE 176 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:119 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][176] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 70: // STATE 177 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:120 - [output = 10] (0:0:1 - 1)
		IfNotBlocked
		reached[0][177] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 10;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 71: // STATE 182 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:123 - [((fsm_state==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][182] = 1;
		if (!((now.fsm_state==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 72: // STATE 183 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:125 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][183] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 73: // STATE 184 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:126 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][184] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 74: // STATE 185 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:127 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][185] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 75: // STATE 186 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:128 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][186] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 76: // STATE 187 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:129 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][187] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 77: // STATE 188 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:130 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][188] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 78: // STATE 189 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:131 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][189] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 79: // STATE 190 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:132 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][190] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 80: // STATE 191 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:133 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][191] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 81: // STATE 192 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:134 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][192] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 82: // STATE 193 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:135 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][193] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 83: // STATE 194 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:136 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][194] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 84: // STATE 195 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:137 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][195] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 85: // STATE 196 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:138 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][196] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 86: // STATE 197 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:139 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][197] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 87: // STATE 198 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:140 - [((input==14))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][198] = 1;
		if (!((now.input==14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 88: // STATE 199 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:141 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][199] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 89: // STATE 200 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:142 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][200] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 90: // STATE 201 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:143 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][201] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 91: // STATE 202 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:144 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][202] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 92: // STATE 203 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:145 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][203] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 93: // STATE 204 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:146 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][204] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 94: // STATE 205 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:147 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][205] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 95: // STATE 206 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:148 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][206] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 96: // STATE 207 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:149 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][207] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 97: // STATE 208 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:150 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][208] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 98: // STATE 209 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:151 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][209] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 99: // STATE 210 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:152 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][210] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 100: // STATE 211 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:153 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][211] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 101: // STATE 212 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:154 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][212] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 102: // STATE 213 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:155 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][213] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 103: // STATE 214 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:156 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][214] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 104: // STATE 215 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:157 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][215] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 105: // STATE 216 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:158 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][216] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 106: // STATE 217 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:159 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][217] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 107: // STATE 218 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:160 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][218] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 108: // STATE 223 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:163 - [((fsm_state==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][223] = 1;
		if (!((now.fsm_state==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 109: // STATE 224 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:165 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][224] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 110: // STATE 225 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:166 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][225] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 111: // STATE 226 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:167 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][226] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 112: // STATE 227 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:168 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][227] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 113: // STATE 228 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:169 - [fsm_state = 19] (0:0:1 - 1)
		IfNotBlocked
		reached[0][228] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 19;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 114: // STATE 229 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:170 - [output = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][229] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 2;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 115: // STATE 230 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:171 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][230] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 116: // STATE 231 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:172 - [fsm_state = 19] (0:0:1 - 1)
		IfNotBlocked
		reached[0][231] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 19;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 117: // STATE 232 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:173 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][232] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 118: // STATE 233 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:174 - [((input==14))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][233] = 1;
		if (!((now.input==14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 119: // STATE 234 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:175 - [fsm_state = 19] (0:0:1 - 1)
		IfNotBlocked
		reached[0][234] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 19;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 120: // STATE 235 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:176 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][235] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 121: // STATE 236 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:177 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][236] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 122: // STATE 237 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:178 - [fsm_state = 19] (0:0:1 - 1)
		IfNotBlocked
		reached[0][237] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 19;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 123: // STATE 238 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:179 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][238] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 124: // STATE 239 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:180 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][239] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 125: // STATE 240 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:181 - [fsm_state = 19] (0:0:1 - 1)
		IfNotBlocked
		reached[0][240] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 19;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 126: // STATE 241 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:182 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][241] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 127: // STATE 242 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:183 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][242] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 128: // STATE 243 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:184 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][243] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 129: // STATE 244 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:185 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][244] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 130: // STATE 245 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:186 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][245] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 131: // STATE 246 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:187 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][246] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 132: // STATE 247 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:188 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][247] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 133: // STATE 248 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:189 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][248] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 134: // STATE 249 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:190 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][249] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 135: // STATE 250 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:191 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][250] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 136: // STATE 251 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:192 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][251] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 137: // STATE 252 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:193 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][252] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 138: // STATE 253 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:194 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][253] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 139: // STATE 254 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:195 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][254] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 140: // STATE 255 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:196 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][255] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 141: // STATE 256 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:197 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][256] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 142: // STATE 257 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:198 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][257] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 143: // STATE 258 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:199 - [fsm_state = 17] (0:0:1 - 1)
		IfNotBlocked
		reached[0][258] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 17;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 144: // STATE 259 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:200 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][259] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 145: // STATE 260 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:201 - [printf('Output: %e\\n',output)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][260] = 1;
		Printf("Output: %e\n", now.output);
		_m = 3; goto P999; /* 0 */
	case 146: // STATE 291 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:13 - [D_STEP13]
		IfNotBlocked

		reached[0][291] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_260_0: /* 2 */
		now.dealt = 0;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
S_288_0: /* 2 */
S_261_0: /* 2 */
		if (!((now.dfa_state==3)))
			goto S_288_1;
S_270_0: /* 2 */
S_262_0: /* 2 */
		if (!((now.output==10)))
			goto S_270_1;
S_263_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_264_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_271_0;
S_270_1: /* 3 */
S_265_0: /* 2 */
		if (!(((((((((((((((((((((((((now.output==24)||(now.output==23))||(now.output==21))||(now.output==11))||(now.output==20))||(now.output==9))||(now.output==18))||(now.output==8))||(now.output==17))||(now.output==16))||(now.output==14))||(now.output==2))||(now.output==25))||(now.output==13))||(now.output==12))||(now.output==22))||(now.output==19))||(now.output==7))||(now.output==6))||(now.output==15))||(now.output==5))||(now.output==4))||(now.output==3))||(now.output==1))))
			goto S_270_2;
S_266_0: /* 2 */
		now.dfa_state = 3;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_267_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_271_0;
S_270_2: /* 3 */
S_268_0: /* 2 */
		/* else */;
S_269_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_271_0;
S_270_3: /* 3 */
		Uerror("blocking sel in d_step (nr.9, near line 17)");
S_271_0: /* 2 */
		goto S_289_0;
S_288_1: /* 3 */
S_272_0: /* 2 */
		if (!((now.dfa_state==2)))
			goto S_288_2;
S_273_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_289_0;
S_288_2: /* 3 */
S_274_0: /* 2 */
		if (!((now.dfa_state==1)))
			goto S_288_3;
S_286_0: /* 2 */
S_275_0: /* 2 */
		if (!(((now.output==8)||(now.output==10))))
			goto S_286_1;
S_276_0: /* 2 */
		now.dfa_state = 2;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_277_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_287_0;
S_286_1: /* 3 */
S_278_0: /* 2 */
		if (!((now.output==7)))
			goto S_286_2;
S_279_0: /* 2 */
		now.dfa_state = 3;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_280_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_287_0;
S_286_2: /* 3 */
S_281_0: /* 2 */
		if (!((((((((((((((now.output==25)||(now.output==24))||(now.output==23))||(now.output==22))||(now.output==21))||(now.output==20))||(now.output==19))||(now.output==18))||(now.output==17))||(now.output==16))||(now.output==15))||(now.output==14))||(now.output==3))))
			goto S_286_3;
S_282_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_283_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_287_0;
S_286_3: /* 3 */
S_284_0: /* 2 */
		/* else */;
S_285_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_287_0;
S_286_4: /* 3 */
		Uerror("blocking sel in d_step (nr.10, near line 29)");
S_287_0: /* 2 */
		goto S_289_0;
S_288_3: /* 3 */
		Uerror("blocking sel in d_step (nr.11, near line 15)");
S_289_0: /* 2 */
		goto S_295_0;
S_295_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 147: // STATE 292 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:44 - [((dealt==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][292] = 1;
		if (!((((int)now.dealt)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 148: // STATE 299 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:203 - [printf('DFA State: %e\\n',dfa_state)] (0:0:0 - 2)
		IfNotBlocked
		reached[0][299] = 1;
		Printf("DFA State: %e\n", now.dfa_state);
		_m = 3; goto P999; /* 0 */
	case 149: // STATE 300 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:204 - [output = 7] (0:0:1 - 1)
		IfNotBlocked
		reached[0][300] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 7;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 150: // STATE 305 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:207 - [((fsm_state==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][305] = 1;
		if (!((now.fsm_state==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 151: // STATE 306 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:209 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][306] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 152: // STATE 307 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:210 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][307] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 153: // STATE 308 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:211 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][308] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 154: // STATE 309 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:212 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][309] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 155: // STATE 310 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:213 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][310] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 156: // STATE 311 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:214 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][311] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 157: // STATE 312 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:215 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][312] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 158: // STATE 313 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:216 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][313] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 159: // STATE 314 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:217 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][314] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 160: // STATE 315 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:218 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][315] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 161: // STATE 316 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:219 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][316] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 162: // STATE 317 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:220 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][317] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 163: // STATE 318 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:221 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][318] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 164: // STATE 319 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:222 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][319] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 165: // STATE 320 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:223 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][320] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 166: // STATE 321 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:224 - [((input==14))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][321] = 1;
		if (!((now.input==14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 167: // STATE 322 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:225 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][322] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 168: // STATE 323 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:226 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][323] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 169: // STATE 324 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:227 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][324] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 170: // STATE 325 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:228 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][325] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 171: // STATE 326 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:229 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][326] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 172: // STATE 327 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:230 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][327] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 173: // STATE 328 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:231 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][328] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 174: // STATE 329 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:232 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][329] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 175: // STATE 330 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:233 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][330] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 176: // STATE 331 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:234 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][331] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 177: // STATE 332 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:235 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][332] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 178: // STATE 333 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:236 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][333] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 179: // STATE 334 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:237 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][334] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 180: // STATE 335 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:238 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][335] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 181: // STATE 336 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:239 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][336] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 182: // STATE 337 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:240 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][337] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 183: // STATE 338 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:241 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][338] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 184: // STATE 339 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:242 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][339] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 185: // STATE 340 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:243 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][340] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 186: // STATE 341 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:244 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][341] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 187: // STATE 346 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:247 - [((fsm_state==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][346] = 1;
		if (!((now.fsm_state==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 188: // STATE 347 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:249 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][347] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 189: // STATE 348 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:250 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][348] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 190: // STATE 349 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:251 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][349] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 191: // STATE 350 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:252 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][350] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 192: // STATE 351 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:253 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][351] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 193: // STATE 352 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:254 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][352] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 194: // STATE 353 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:255 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][353] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 195: // STATE 354 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:256 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][354] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 196: // STATE 355 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:257 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][355] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 197: // STATE 356 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:258 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][356] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 198: // STATE 357 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:259 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][357] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 199: // STATE 358 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:260 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][358] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 200: // STATE 359 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:261 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][359] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 201: // STATE 360 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:262 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][360] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 202: // STATE 361 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:263 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][361] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 203: // STATE 362 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:264 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][362] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 204: // STATE 363 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:265 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][363] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 205: // STATE 364 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:266 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][364] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 206: // STATE 365 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:267 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][365] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 207: // STATE 366 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:268 - [fsm_state = 17] (0:0:1 - 1)
		IfNotBlocked
		reached[0][366] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 17;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 208: // STATE 367 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:269 - [output = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][367] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 2;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 209: // STATE 368 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:270 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][368] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 210: // STATE 369 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:271 - [fsm_state = 17] (0:0:1 - 1)
		IfNotBlocked
		reached[0][369] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 17;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 211: // STATE 370 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:272 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][370] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 212: // STATE 371 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:273 - [((input==14))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][371] = 1;
		if (!((now.input==14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 213: // STATE 372 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:274 - [fsm_state = 17] (0:0:1 - 1)
		IfNotBlocked
		reached[0][372] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 17;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 214: // STATE 373 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:275 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][373] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 215: // STATE 374 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:276 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][374] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 216: // STATE 375 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:277 - [fsm_state = 17] (0:0:1 - 1)
		IfNotBlocked
		reached[0][375] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 17;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 217: // STATE 376 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:278 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][376] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 218: // STATE 377 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:279 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][377] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 219: // STATE 378 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:280 - [fsm_state = 17] (0:0:1 - 1)
		IfNotBlocked
		reached[0][378] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 17;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 220: // STATE 379 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:281 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][379] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 221: // STATE 380 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:282 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][380] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 222: // STATE 381 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:283 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][381] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 223: // STATE 387 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:287 - [((fsm_state==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][387] = 1;
		if (!((now.fsm_state==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 224: // STATE 388 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:289 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][388] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 225: // STATE 389 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:290 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][389] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 226: // STATE 390 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:291 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][390] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 227: // STATE 391 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:292 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][391] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 228: // STATE 392 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:293 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][392] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 229: // STATE 393 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:294 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][393] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 230: // STATE 394 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:295 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][394] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 231: // STATE 395 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:296 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][395] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 232: // STATE 396 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:297 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][396] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 233: // STATE 397 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:298 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][397] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 234: // STATE 398 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:299 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][398] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 235: // STATE 399 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:300 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][399] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 236: // STATE 400 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:301 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][400] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 237: // STATE 401 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:302 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][401] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 238: // STATE 402 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:303 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][402] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 239: // STATE 403 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:304 - [((input==14))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][403] = 1;
		if (!((now.input==14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 240: // STATE 404 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:305 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][404] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 241: // STATE 405 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:306 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][405] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 242: // STATE 406 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:307 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][406] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 243: // STATE 407 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:308 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][407] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 244: // STATE 408 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:309 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][408] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 245: // STATE 409 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:310 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][409] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 246: // STATE 410 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:311 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][410] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 247: // STATE 411 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:312 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][411] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 248: // STATE 412 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:313 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][412] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 249: // STATE 413 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:314 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][413] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 250: // STATE 414 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:315 - [output = 6] (0:0:1 - 1)
		IfNotBlocked
		reached[0][414] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 6;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 251: // STATE 415 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:316 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][415] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 252: // STATE 416 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:317 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][416] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 253: // STATE 417 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:318 - [output = 8] (0:0:1 - 1)
		IfNotBlocked
		reached[0][417] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 8;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 254: // STATE 418 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:319 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][418] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 255: // STATE 419 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:320 - [fsm_state = 14] (0:0:1 - 1)
		IfNotBlocked
		reached[0][419] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 14;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 256: // STATE 420 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:321 - [output = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][420] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 1;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 257: // STATE 421 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:322 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][421] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 258: // STATE 422 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:323 - [fsm_state = 13] (0:0:1 - 1)
		IfNotBlocked
		reached[0][422] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 13;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 259: // STATE 423 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:324 - [output = 10] (0:0:1 - 1)
		IfNotBlocked
		reached[0][423] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 10;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 260: // STATE 428 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:327 - [((fsm_state==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][428] = 1;
		if (!((now.fsm_state==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 261: // STATE 429 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:329 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][429] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 262: // STATE 430 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:330 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][430] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 263: // STATE 431 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:331 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][431] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 264: // STATE 432 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:332 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][432] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 265: // STATE 433 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:333 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][433] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 266: // STATE 434 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:334 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][434] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 267: // STATE 435 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:335 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][435] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 268: // STATE 436 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:336 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][436] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 269: // STATE 438 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:338 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][438] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 270: // STATE 439 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:339 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][439] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 271: // STATE 440 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:340 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][440] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 272: // STATE 441 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:341 - [((input==14))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][441] = 1;
		if (!((now.input==14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 273: // STATE 442 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:342 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][442] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 274: // STATE 443 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:343 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][443] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 275: // STATE 444 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:344 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][444] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 276: // STATE 445 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:345 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][445] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 277: // STATE 447 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:347 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][447] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 278: // STATE 448 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:348 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][448] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 279: // STATE 449 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:349 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][449] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 280: // STATE 450 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:350 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][450] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 281: // STATE 451 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:351 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][451] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 282: // STATE 452 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:352 - [output = 6] (0:0:1 - 1)
		IfNotBlocked
		reached[0][452] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 6;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 283: // STATE 453 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:353 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][453] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 284: // STATE 454 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:354 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][454] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 285: // STATE 455 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:355 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][455] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 286: // STATE 456 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:356 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][456] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 287: // STATE 457 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:357 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][457] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 288: // STATE 458 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:358 - [output = 6] (0:0:1 - 1)
		IfNotBlocked
		reached[0][458] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 6;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 289: // STATE 459 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:359 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][459] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 290: // STATE 460 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:360 - [fsm_state = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][460] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 12;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 291: // STATE 461 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:361 - [output = 10] (0:0:1 - 1)
		IfNotBlocked
		reached[0][461] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 10;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 292: // STATE 462 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:362 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][462] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 293: // STATE 463 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:363 - [fsm_state = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][463] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 11;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 294: // STATE 464 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:364 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][464] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 295: // STATE 469 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:367 - [((fsm_state==14))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][469] = 1;
		if (!((now.fsm_state==14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 296: // STATE 470 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:369 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][470] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 297: // STATE 471 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:370 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][471] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 298: // STATE 472 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:371 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][472] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 299: // STATE 473 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:372 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][473] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 300: // STATE 474 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:373 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][474] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 301: // STATE 475 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:374 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][475] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 302: // STATE 476 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:375 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][476] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 303: // STATE 477 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:376 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][477] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 304: // STATE 478 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:377 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][478] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 305: // STATE 479 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:378 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][479] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 306: // STATE 480 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:379 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][480] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 307: // STATE 481 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:380 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][481] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 308: // STATE 482 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:381 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][482] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 309: // STATE 483 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:382 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][483] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 310: // STATE 484 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:383 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][484] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 311: // STATE 485 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:384 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][485] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 312: // STATE 486 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:385 - [fsm_state = 14] (0:0:1 - 1)
		IfNotBlocked
		reached[0][486] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 14;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 313: // STATE 487 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:386 - [output = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][487] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 1;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 314: // STATE 488 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:387 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][488] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 315: // STATE 489 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:388 - [fsm_state = 14] (0:0:1 - 1)
		IfNotBlocked
		reached[0][489] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 14;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 316: // STATE 490 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:389 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][490] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 317: // STATE 491 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:390 - [((input==14))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][491] = 1;
		if (!((now.input==14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 318: // STATE 492 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:391 - [fsm_state = 14] (0:0:1 - 1)
		IfNotBlocked
		reached[0][492] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 14;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 319: // STATE 493 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:392 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][493] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 320: // STATE 494 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:393 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][494] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 321: // STATE 495 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:394 - [fsm_state = 14] (0:0:1 - 1)
		IfNotBlocked
		reached[0][495] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 14;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 322: // STATE 496 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:395 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][496] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 323: // STATE 497 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:396 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][497] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 324: // STATE 498 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:397 - [fsm_state = 14] (0:0:1 - 1)
		IfNotBlocked
		reached[0][498] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 14;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 325: // STATE 499 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:398 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][499] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 326: // STATE 500 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:399 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][500] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 327: // STATE 501 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:400 - [fsm_state = 14] (0:0:1 - 1)
		IfNotBlocked
		reached[0][501] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 14;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 328: // STATE 502 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:401 - [output = 6] (0:0:1 - 1)
		IfNotBlocked
		reached[0][502] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 6;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 329: // STATE 503 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:402 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][503] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 330: // STATE 504 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:403 - [fsm_state = 10] (0:0:1 - 1)
		IfNotBlocked
		reached[0][504] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 10;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 331: // STATE 505 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:404 - [output = 10] (0:0:1 - 1)
		IfNotBlocked
		reached[0][505] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 10;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 332: // STATE 510 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:407 - [((fsm_state==13))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][510] = 1;
		if (!((now.fsm_state==13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 333: // STATE 511 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:409 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][511] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 334: // STATE 512 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:410 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][512] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 335: // STATE 513 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:411 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][513] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 336: // STATE 514 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:412 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][514] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 337: // STATE 515 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:413 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][515] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 338: // STATE 516 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:414 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][516] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 339: // STATE 517 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:415 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][517] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 340: // STATE 518 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:416 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][518] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 341: // STATE 519 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:417 - [output = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][519] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 2;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 342: // STATE 520 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:418 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][520] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 343: // STATE 521 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:419 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][521] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 344: // STATE 522 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:420 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][522] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 345: // STATE 523 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:421 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][523] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 346: // STATE 524 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:422 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][524] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 347: // STATE 525 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:423 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][525] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 348: // STATE 526 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:424 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][526] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 349: // STATE 527 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:425 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][527] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 350: // STATE 528 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:426 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][528] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 351: // STATE 529 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:427 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][529] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 352: // STATE 530 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:428 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][530] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 353: // STATE 531 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:429 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][531] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 354: // STATE 532 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:430 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][532] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 355: // STATE 533 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:431 - [fsm_state = 17] (0:0:1 - 1)
		IfNotBlocked
		reached[0][533] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 17;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 356: // STATE 534 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:432 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][534] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 357: // STATE 535 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:433 - [printf('Output: %e\\n',output)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][535] = 1;
		Printf("Output: %e\n", now.output);
		_m = 3; goto P999; /* 0 */
	case 358: // STATE 566 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:13 - [D_STEP13]
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
		if (!((now.output==10)))
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
		if (!(((((((((((((((((((((((((now.output==24)||(now.output==23))||(now.output==21))||(now.output==11))||(now.output==20))||(now.output==9))||(now.output==18))||(now.output==8))||(now.output==17))||(now.output==16))||(now.output==14))||(now.output==2))||(now.output==25))||(now.output==13))||(now.output==12))||(now.output==22))||(now.output==19))||(now.output==7))||(now.output==6))||(now.output==15))||(now.output==5))||(now.output==4))||(now.output==3))||(now.output==1))))
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
		if (!(((now.output==8)||(now.output==10))))
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
		if (!((now.output==7)))
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
		if (!((((((((((((((now.output==25)||(now.output==24))||(now.output==23))||(now.output==22))||(now.output==21))||(now.output==20))||(now.output==19))||(now.output==18))||(now.output==17))||(now.output==16))||(now.output==15))||(now.output==14))||(now.output==3))))
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

	case 359: // STATE 567 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:44 - [((dealt==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][567] = 1;
		if (!((((int)now.dealt)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 360: // STATE 574 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:435 - [printf('DFA State: %e\\n',dfa_state)] (0:0:0 - 2)
		IfNotBlocked
		reached[0][574] = 1;
		Printf("DFA State: %e\n", now.dfa_state);
		_m = 3; goto P999; /* 0 */
	case 361: // STATE 575 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:436 - [output = 7] (0:0:1 - 1)
		IfNotBlocked
		reached[0][575] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 7;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 362: // STATE 576 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:437 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][576] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 363: // STATE 577 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:438 - [fsm_state = 13] (0:0:1 - 1)
		IfNotBlocked
		reached[0][577] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 13;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 364: // STATE 578 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:439 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][578] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 365: // STATE 579 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:440 - [((input==14))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][579] = 1;
		if (!((now.input==14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 366: // STATE 580 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:441 - [fsm_state = 13] (0:0:1 - 1)
		IfNotBlocked
		reached[0][580] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 13;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 367: // STATE 581 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:442 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][581] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 368: // STATE 582 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:443 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][582] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 369: // STATE 583 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:444 - [fsm_state = 13] (0:0:1 - 1)
		IfNotBlocked
		reached[0][583] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 13;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 370: // STATE 584 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:445 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][584] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 371: // STATE 585 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:446 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][585] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 372: // STATE 586 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:447 - [fsm_state = 13] (0:0:1 - 1)
		IfNotBlocked
		reached[0][586] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 13;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 373: // STATE 587 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:448 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][587] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 374: // STATE 592 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:451 - [((fsm_state==12))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][592] = 1;
		if (!((now.fsm_state==12)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 375: // STATE 593 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:453 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][593] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 376: // STATE 594 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:454 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][594] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 377: // STATE 595 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:455 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][595] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 378: // STATE 596 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:456 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][596] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 379: // STATE 597 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:457 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][597] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 380: // STATE 598 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:458 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][598] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 381: // STATE 599 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:459 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][599] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 382: // STATE 600 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:460 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][600] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 383: // STATE 601 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:461 - [output = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][601] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 2;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 384: // STATE 602 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:462 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][602] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 385: // STATE 603 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:463 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][603] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 386: // STATE 604 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:464 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][604] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 387: // STATE 605 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:465 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][605] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 388: // STATE 606 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:466 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][606] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 389: // STATE 607 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:467 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][607] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 390: // STATE 608 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:468 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][608] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 391: // STATE 609 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:469 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][609] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 392: // STATE 610 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:470 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][610] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 393: // STATE 611 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:471 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][611] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 394: // STATE 612 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:472 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][612] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 395: // STATE 613 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:473 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][613] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 396: // STATE 614 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:474 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][614] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 397: // STATE 615 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:475 - [fsm_state = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][615] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 12;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 398: // STATE 616 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:476 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][616] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 399: // STATE 617 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:477 - [((input==14))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][617] = 1;
		if (!((now.input==14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 400: // STATE 618 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:478 - [fsm_state = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][618] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 12;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 401: // STATE 619 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:479 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][619] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 402: // STATE 620 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:480 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][620] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 403: // STATE 621 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:481 - [fsm_state = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][621] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 12;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 404: // STATE 622 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:482 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][622] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 405: // STATE 623 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:483 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][623] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 406: // STATE 624 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:484 - [fsm_state = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][624] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 12;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 407: // STATE 625 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:485 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][625] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 408: // STATE 626 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:486 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][626] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 409: // STATE 627 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:487 - [fsm_state = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][627] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 9;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 410: // STATE 628 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:488 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][628] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 411: // STATE 629 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:489 - [printf('Output: %e\\n',output)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][629] = 1;
		Printf("Output: %e\n", now.output);
		_m = 3; goto P999; /* 0 */
	case 412: // STATE 660 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:13 - [D_STEP13]
		IfNotBlocked

		reached[0][660] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_629_0: /* 2 */
		now.dealt = 0;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
S_657_0: /* 2 */
S_630_0: /* 2 */
		if (!((now.dfa_state==3)))
			goto S_657_1;
S_639_0: /* 2 */
S_631_0: /* 2 */
		if (!((now.output==10)))
			goto S_639_1;
S_632_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_633_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_640_0;
S_639_1: /* 3 */
S_634_0: /* 2 */
		if (!(((((((((((((((((((((((((now.output==24)||(now.output==23))||(now.output==21))||(now.output==11))||(now.output==20))||(now.output==9))||(now.output==18))||(now.output==8))||(now.output==17))||(now.output==16))||(now.output==14))||(now.output==2))||(now.output==25))||(now.output==13))||(now.output==12))||(now.output==22))||(now.output==19))||(now.output==7))||(now.output==6))||(now.output==15))||(now.output==5))||(now.output==4))||(now.output==3))||(now.output==1))))
			goto S_639_2;
S_635_0: /* 2 */
		now.dfa_state = 3;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_636_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_640_0;
S_639_2: /* 3 */
S_637_0: /* 2 */
		/* else */;
S_638_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_640_0;
S_639_3: /* 3 */
		Uerror("blocking sel in d_step (nr.15, near line 17)");
S_640_0: /* 2 */
		goto S_658_0;
S_657_1: /* 3 */
S_641_0: /* 2 */
		if (!((now.dfa_state==2)))
			goto S_657_2;
S_642_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_658_0;
S_657_2: /* 3 */
S_643_0: /* 2 */
		if (!((now.dfa_state==1)))
			goto S_657_3;
S_655_0: /* 2 */
S_644_0: /* 2 */
		if (!(((now.output==8)||(now.output==10))))
			goto S_655_1;
S_645_0: /* 2 */
		now.dfa_state = 2;
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
		goto S_656_0;
S_655_1: /* 3 */
S_647_0: /* 2 */
		if (!((now.output==7)))
			goto S_655_2;
S_648_0: /* 2 */
		now.dfa_state = 3;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_649_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_656_0;
S_655_2: /* 3 */
S_650_0: /* 2 */
		if (!((((((((((((((now.output==25)||(now.output==24))||(now.output==23))||(now.output==22))||(now.output==21))||(now.output==20))||(now.output==19))||(now.output==18))||(now.output==17))||(now.output==16))||(now.output==15))||(now.output==14))||(now.output==3))))
			goto S_655_3;
S_651_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_652_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_656_0;
S_655_3: /* 3 */
S_653_0: /* 2 */
		/* else */;
S_654_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_656_0;
S_655_4: /* 3 */
		Uerror("blocking sel in d_step (nr.16, near line 29)");
S_656_0: /* 2 */
		goto S_658_0;
S_657_3: /* 3 */
		Uerror("blocking sel in d_step (nr.17, near line 15)");
S_658_0: /* 2 */
		goto S_664_0;
S_664_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 413: // STATE 661 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:44 - [((dealt==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][661] = 1;
		if (!((((int)now.dealt)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 414: // STATE 668 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:491 - [printf('DFA State: %e\\n',dfa_state)] (0:0:0 - 2)
		IfNotBlocked
		reached[0][668] = 1;
		Printf("DFA State: %e\n", now.dfa_state);
		_m = 3; goto P999; /* 0 */
	case 415: // STATE 669 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:492 - [output = 7] (0:0:1 - 1)
		IfNotBlocked
		reached[0][669] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 7;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 416: // STATE 674 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:495 - [((fsm_state==11))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][674] = 1;
		if (!((now.fsm_state==11)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 417: // STATE 675 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:497 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][675] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 418: // STATE 676 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:498 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][676] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 419: // STATE 677 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:499 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][677] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 420: // STATE 678 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:500 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][678] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 421: // STATE 679 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:501 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][679] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 422: // STATE 680 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:502 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][680] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 423: // STATE 681 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:503 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][681] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 424: // STATE 682 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:504 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][682] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 425: // STATE 683 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:505 - [output = 4] (0:0:1 - 1)
		IfNotBlocked
		reached[0][683] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 4;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 426: // STATE 684 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:506 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][684] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 427: // STATE 685 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:507 - [fsm_state = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][685] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 11;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 428: // STATE 687 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:509 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][687] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 429: // STATE 688 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:510 - [fsm_state = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][688] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 11;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 430: // STATE 689 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:511 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][689] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 431: // STATE 690 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:512 - [((input==14))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][690] = 1;
		if (!((now.input==14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 432: // STATE 691 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:513 - [fsm_state = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][691] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 11;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 433: // STATE 693 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:515 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][693] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 434: // STATE 694 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:516 - [fsm_state = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][694] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 11;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 435: // STATE 696 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:518 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][696] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 436: // STATE 697 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:519 - [fsm_state = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][697] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 11;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 437: // STATE 698 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:520 - [output = 6] (0:0:1 - 1)
		IfNotBlocked
		reached[0][698] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 6;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 438: // STATE 699 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:521 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][699] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 439: // STATE 700 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:522 - [fsm_state = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][700] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 11;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 440: // STATE 701 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:523 - [output = 6] (0:0:1 - 1)
		IfNotBlocked
		reached[0][701] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 6;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 441: // STATE 702 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:524 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][702] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 442: // STATE 703 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:525 - [fsm_state = 8] (0:0:1 - 1)
		IfNotBlocked
		reached[0][703] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 8;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 443: // STATE 704 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:526 - [output = 10] (0:0:1 - 1)
		IfNotBlocked
		reached[0][704] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 10;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 444: // STATE 705 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:527 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][705] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 445: // STATE 706 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:528 - [fsm_state = 7] (0:0:1 - 1)
		IfNotBlocked
		reached[0][706] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 7;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 446: // STATE 707 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:529 - [output = 13] (0:0:1 - 1)
		IfNotBlocked
		reached[0][707] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 13;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 447: // STATE 708 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:530 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][708] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 448: // STATE 709 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:531 - [fsm_state = 6] (0:0:1 - 1)
		IfNotBlocked
		reached[0][709] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 6;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 449: // STATE 710 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:532 - [output = 4] (0:0:1 - 1)
		IfNotBlocked
		reached[0][710] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 4;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 450: // STATE 715 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:535 - [((fsm_state==10))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][715] = 1;
		if (!((now.fsm_state==10)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 451: // STATE 716 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:537 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][716] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 452: // STATE 717 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:538 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][717] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 453: // STATE 718 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:539 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][718] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 454: // STATE 719 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:540 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][719] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 455: // STATE 720 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:541 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][720] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 456: // STATE 721 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:542 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][721] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 457: // STATE 722 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:543 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][722] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 458: // STATE 723 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:544 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][723] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 459: // STATE 724 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:545 - [output = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][724] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 2;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 460: // STATE 725 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:546 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][725] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 461: // STATE 726 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:547 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][726] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 462: // STATE 727 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:548 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][727] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 463: // STATE 728 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:549 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][728] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 464: // STATE 729 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:550 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][729] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 465: // STATE 730 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:551 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][730] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 466: // STATE 731 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:552 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][731] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 467: // STATE 732 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:553 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][732] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 468: // STATE 733 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:554 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][733] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 469: // STATE 734 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:555 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][734] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 470: // STATE 735 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:556 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][735] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 471: // STATE 736 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:557 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][736] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 472: // STATE 737 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:558 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][737] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 473: // STATE 738 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:559 - [fsm_state = 10] (0:0:1 - 1)
		IfNotBlocked
		reached[0][738] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 10;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 474: // STATE 739 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:560 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][739] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 475: // STATE 740 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:561 - [((input==14))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][740] = 1;
		if (!((now.input==14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 476: // STATE 741 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:562 - [fsm_state = 10] (0:0:1 - 1)
		IfNotBlocked
		reached[0][741] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 10;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 477: // STATE 742 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:563 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][742] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 478: // STATE 743 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:564 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][743] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 479: // STATE 744 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:565 - [fsm_state = 10] (0:0:1 - 1)
		IfNotBlocked
		reached[0][744] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 10;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 480: // STATE 745 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:566 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][745] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 481: // STATE 746 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:567 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][746] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 482: // STATE 747 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:568 - [fsm_state = 10] (0:0:1 - 1)
		IfNotBlocked
		reached[0][747] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 10;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 483: // STATE 748 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:569 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][748] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 484: // STATE 749 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:570 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][749] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 485: // STATE 750 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:571 - [fsm_state = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][750] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 5;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 486: // STATE 751 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:572 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][751] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 487: // STATE 752 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:573 - [printf('Output: %e\\n',output)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][752] = 1;
		Printf("Output: %e\n", now.output);
		_m = 3; goto P999; /* 0 */
	case 488: // STATE 783 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:13 - [D_STEP13]
		IfNotBlocked

		reached[0][783] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_752_0: /* 2 */
		now.dealt = 0;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
S_780_0: /* 2 */
S_753_0: /* 2 */
		if (!((now.dfa_state==3)))
			goto S_780_1;
S_762_0: /* 2 */
S_754_0: /* 2 */
		if (!((now.output==10)))
			goto S_762_1;
S_755_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_756_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_763_0;
S_762_1: /* 3 */
S_757_0: /* 2 */
		if (!(((((((((((((((((((((((((now.output==24)||(now.output==23))||(now.output==21))||(now.output==11))||(now.output==20))||(now.output==9))||(now.output==18))||(now.output==8))||(now.output==17))||(now.output==16))||(now.output==14))||(now.output==2))||(now.output==25))||(now.output==13))||(now.output==12))||(now.output==22))||(now.output==19))||(now.output==7))||(now.output==6))||(now.output==15))||(now.output==5))||(now.output==4))||(now.output==3))||(now.output==1))))
			goto S_762_2;
S_758_0: /* 2 */
		now.dfa_state = 3;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_759_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_763_0;
S_762_2: /* 3 */
S_760_0: /* 2 */
		/* else */;
S_761_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_763_0;
S_762_3: /* 3 */
		Uerror("blocking sel in d_step (nr.18, near line 17)");
S_763_0: /* 2 */
		goto S_781_0;
S_780_1: /* 3 */
S_764_0: /* 2 */
		if (!((now.dfa_state==2)))
			goto S_780_2;
S_765_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_781_0;
S_780_2: /* 3 */
S_766_0: /* 2 */
		if (!((now.dfa_state==1)))
			goto S_780_3;
S_778_0: /* 2 */
S_767_0: /* 2 */
		if (!(((now.output==8)||(now.output==10))))
			goto S_778_1;
S_768_0: /* 2 */
		now.dfa_state = 2;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_769_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_779_0;
S_778_1: /* 3 */
S_770_0: /* 2 */
		if (!((now.output==7)))
			goto S_778_2;
S_771_0: /* 2 */
		now.dfa_state = 3;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_772_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_779_0;
S_778_2: /* 3 */
S_773_0: /* 2 */
		if (!((((((((((((((now.output==25)||(now.output==24))||(now.output==23))||(now.output==22))||(now.output==21))||(now.output==20))||(now.output==19))||(now.output==18))||(now.output==17))||(now.output==16))||(now.output==15))||(now.output==14))||(now.output==3))))
			goto S_778_3;
S_774_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_775_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_779_0;
S_778_3: /* 3 */
S_776_0: /* 2 */
		/* else */;
S_777_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_779_0;
S_778_4: /* 3 */
		Uerror("blocking sel in d_step (nr.19, near line 29)");
S_779_0: /* 2 */
		goto S_781_0;
S_780_3: /* 3 */
		Uerror("blocking sel in d_step (nr.20, near line 15)");
S_781_0: /* 2 */
		goto S_787_0;
S_787_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 489: // STATE 784 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:44 - [((dealt==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][784] = 1;
		if (!((((int)now.dealt)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 490: // STATE 791 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:575 - [printf('DFA State: %e\\n',dfa_state)] (0:0:0 - 2)
		IfNotBlocked
		reached[0][791] = 1;
		Printf("DFA State: %e\n", now.dfa_state);
		_m = 3; goto P999; /* 0 */
	case 491: // STATE 792 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:576 - [output = 7] (0:0:1 - 1)
		IfNotBlocked
		reached[0][792] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 7;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 492: // STATE 797 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:579 - [((fsm_state==9))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][797] = 1;
		if (!((now.fsm_state==9)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 493: // STATE 798 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:581 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][798] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 494: // STATE 799 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:582 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][799] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 495: // STATE 800 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:583 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][800] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 496: // STATE 801 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:584 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][801] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 497: // STATE 802 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:585 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][802] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 498: // STATE 803 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:586 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][803] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 499: // STATE 804 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:587 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][804] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 500: // STATE 805 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:588 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][805] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 501: // STATE 806 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:589 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][806] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 502: // STATE 807 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:590 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][807] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 503: // STATE 808 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:591 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][808] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 504: // STATE 809 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:592 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][809] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 505: // STATE 810 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:593 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][810] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 506: // STATE 811 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:594 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][811] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 507: // STATE 812 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:595 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][812] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 508: // STATE 813 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:596 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][813] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 509: // STATE 814 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:597 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][814] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 510: // STATE 815 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:598 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][815] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 511: // STATE 816 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:599 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][816] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 512: // STATE 817 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:600 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][817] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 513: // STATE 819 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:602 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][819] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 514: // STATE 820 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:603 - [fsm_state = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][820] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 9;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 515: // STATE 821 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:604 - [output = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][821] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 2;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 516: // STATE 822 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:605 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][822] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 517: // STATE 823 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:606 - [fsm_state = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][823] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 9;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 518: // STATE 824 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:607 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][824] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 519: // STATE 825 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:608 - [((input==14))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][825] = 1;
		if (!((now.input==14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 520: // STATE 826 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:609 - [fsm_state = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][826] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 9;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 521: // STATE 827 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:610 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][827] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 522: // STATE 828 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:611 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][828] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 523: // STATE 829 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:612 - [fsm_state = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][829] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 9;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 524: // STATE 830 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:613 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][830] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 525: // STATE 831 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:614 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][831] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 526: // STATE 832 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:615 - [fsm_state = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][832] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 9;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 527: // STATE 833 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:616 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][833] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 528: // STATE 838 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:619 - [((fsm_state==8))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][838] = 1;
		if (!((now.fsm_state==8)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 529: // STATE 839 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:621 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][839] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 530: // STATE 840 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:622 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][840] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 531: // STATE 841 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:623 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][841] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 532: // STATE 842 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:624 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][842] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 533: // STATE 843 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:625 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][843] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 534: // STATE 844 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:626 - [output = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][844] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 2;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 535: // STATE 845 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:627 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][845] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 536: // STATE 846 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:628 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][846] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 537: // STATE 847 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:629 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][847] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 538: // STATE 848 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:630 - [((input==14))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][848] = 1;
		if (!((now.input==14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 539: // STATE 849 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:631 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][849] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 540: // STATE 850 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:632 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][850] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 541: // STATE 851 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:633 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][851] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 542: // STATE 852 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:634 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][852] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 543: // STATE 853 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:635 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][853] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 544: // STATE 854 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:636 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][854] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 545: // STATE 855 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:637 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][855] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 546: // STATE 856 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:638 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][856] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 547: // STATE 857 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:639 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][857] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 548: // STATE 858 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:640 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][858] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 549: // STATE 859 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:641 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][859] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 550: // STATE 860 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:642 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][860] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 551: // STATE 861 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:643 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][861] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 552: // STATE 862 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:644 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][862] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 553: // STATE 863 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:645 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][863] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 554: // STATE 864 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:646 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][864] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 555: // STATE 865 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:647 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][865] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 556: // STATE 866 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:648 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][866] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 557: // STATE 867 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:649 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][867] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 558: // STATE 868 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:650 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][868] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 559: // STATE 869 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:651 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][869] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 560: // STATE 870 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:652 - [fsm_state = 8] (0:0:1 - 1)
		IfNotBlocked
		reached[0][870] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 8;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 561: // STATE 871 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:653 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][871] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 562: // STATE 872 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:654 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][872] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 563: // STATE 873 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:655 - [fsm_state = 4] (0:0:1 - 1)
		IfNotBlocked
		reached[0][873] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 4;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 564: // STATE 874 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:656 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][874] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 565: // STATE 875 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:657 - [printf('Output: %e\\n',output)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][875] = 1;
		Printf("Output: %e\n", now.output);
		_m = 3; goto P999; /* 0 */
	case 566: // STATE 906 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:13 - [D_STEP13]
		IfNotBlocked

		reached[0][906] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_875_0: /* 2 */
		now.dealt = 0;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
S_903_0: /* 2 */
S_876_0: /* 2 */
		if (!((now.dfa_state==3)))
			goto S_903_1;
S_885_0: /* 2 */
S_877_0: /* 2 */
		if (!((now.output==10)))
			goto S_885_1;
S_878_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_879_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_886_0;
S_885_1: /* 3 */
S_880_0: /* 2 */
		if (!(((((((((((((((((((((((((now.output==24)||(now.output==23))||(now.output==21))||(now.output==11))||(now.output==20))||(now.output==9))||(now.output==18))||(now.output==8))||(now.output==17))||(now.output==16))||(now.output==14))||(now.output==2))||(now.output==25))||(now.output==13))||(now.output==12))||(now.output==22))||(now.output==19))||(now.output==7))||(now.output==6))||(now.output==15))||(now.output==5))||(now.output==4))||(now.output==3))||(now.output==1))))
			goto S_885_2;
S_881_0: /* 2 */
		now.dfa_state = 3;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_882_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_886_0;
S_885_2: /* 3 */
S_883_0: /* 2 */
		/* else */;
S_884_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_886_0;
S_885_3: /* 3 */
		Uerror("blocking sel in d_step (nr.21, near line 17)");
S_886_0: /* 2 */
		goto S_904_0;
S_903_1: /* 3 */
S_887_0: /* 2 */
		if (!((now.dfa_state==2)))
			goto S_903_2;
S_888_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_904_0;
S_903_2: /* 3 */
S_889_0: /* 2 */
		if (!((now.dfa_state==1)))
			goto S_903_3;
S_901_0: /* 2 */
S_890_0: /* 2 */
		if (!(((now.output==8)||(now.output==10))))
			goto S_901_1;
S_891_0: /* 2 */
		now.dfa_state = 2;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_892_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_902_0;
S_901_1: /* 3 */
S_893_0: /* 2 */
		if (!((now.output==7)))
			goto S_901_2;
S_894_0: /* 2 */
		now.dfa_state = 3;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_895_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_902_0;
S_901_2: /* 3 */
S_896_0: /* 2 */
		if (!((((((((((((((now.output==25)||(now.output==24))||(now.output==23))||(now.output==22))||(now.output==21))||(now.output==20))||(now.output==19))||(now.output==18))||(now.output==17))||(now.output==16))||(now.output==15))||(now.output==14))||(now.output==3))))
			goto S_901_3;
S_897_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_898_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_902_0;
S_901_3: /* 3 */
S_899_0: /* 2 */
		/* else */;
S_900_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_902_0;
S_901_4: /* 3 */
		Uerror("blocking sel in d_step (nr.22, near line 29)");
S_902_0: /* 2 */
		goto S_904_0;
S_903_3: /* 3 */
		Uerror("blocking sel in d_step (nr.23, near line 15)");
S_904_0: /* 2 */
		goto S_910_0;
S_910_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 567: // STATE 907 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:44 - [((dealt==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][907] = 1;
		if (!((((int)now.dealt)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 568: // STATE 914 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:659 - [printf('DFA State: %e\\n',dfa_state)] (0:0:0 - 2)
		IfNotBlocked
		reached[0][914] = 1;
		Printf("DFA State: %e\n", now.dfa_state);
		_m = 3; goto P999; /* 0 */
	case 569: // STATE 915 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:660 - [output = 7] (0:0:1 - 1)
		IfNotBlocked
		reached[0][915] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 7;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 570: // STATE 920 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:663 - [((fsm_state==7))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][920] = 1;
		if (!((now.fsm_state==7)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 571: // STATE 921 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:665 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][921] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 572: // STATE 922 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:666 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][922] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 573: // STATE 923 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:667 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][923] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 574: // STATE 924 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:668 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][924] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 575: // STATE 925 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:669 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][925] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 576: // STATE 926 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:670 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][926] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 577: // STATE 927 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:671 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][927] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 578: // STATE 928 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:672 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][928] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 579: // STATE 929 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:673 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][929] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 580: // STATE 930 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:674 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][930] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 581: // STATE 931 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:675 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][931] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 582: // STATE 932 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:676 - [output = 4] (0:0:1 - 1)
		IfNotBlocked
		reached[0][932] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 4;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 583: // STATE 933 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:677 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][933] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 584: // STATE 934 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:678 - [fsm_state = 8] (0:0:1 - 1)
		IfNotBlocked
		reached[0][934] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 8;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 585: // STATE 935 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:679 - [output = 10] (0:0:1 - 1)
		IfNotBlocked
		reached[0][935] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 10;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 586: // STATE 936 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:680 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][936] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 587: // STATE 937 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:681 - [fsm_state = 7] (0:0:1 - 1)
		IfNotBlocked
		reached[0][937] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 7;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 588: // STATE 939 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:683 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][939] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 589: // STATE 940 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:684 - [fsm_state = 7] (0:0:1 - 1)
		IfNotBlocked
		reached[0][940] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 7;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 590: // STATE 941 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:685 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][941] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 591: // STATE 942 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:686 - [((input==14))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][942] = 1;
		if (!((now.input==14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 592: // STATE 943 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:687 - [fsm_state = 7] (0:0:1 - 1)
		IfNotBlocked
		reached[0][943] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 7;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 593: // STATE 945 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:689 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][945] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 594: // STATE 946 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:690 - [fsm_state = 7] (0:0:1 - 1)
		IfNotBlocked
		reached[0][946] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 7;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 595: // STATE 948 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:692 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][948] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 596: // STATE 949 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:693 - [fsm_state = 7] (0:0:1 - 1)
		IfNotBlocked
		reached[0][949] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 7;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 597: // STATE 950 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:694 - [output = 6] (0:0:1 - 1)
		IfNotBlocked
		reached[0][950] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 6;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 598: // STATE 951 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:695 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][951] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 599: // STATE 952 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:696 - [fsm_state = 7] (0:0:1 - 1)
		IfNotBlocked
		reached[0][952] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 7;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 600: // STATE 953 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:697 - [output = 6] (0:0:1 - 1)
		IfNotBlocked
		reached[0][953] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 6;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 601: // STATE 954 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:698 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][954] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 602: // STATE 955 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:699 - [fsm_state = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][955] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 3;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 603: // STATE 956 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:700 - [output = 4] (0:0:1 - 1)
		IfNotBlocked
		reached[0][956] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 4;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 604: // STATE 961 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:703 - [((fsm_state==6))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][961] = 1;
		if (!((now.fsm_state==6)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 605: // STATE 962 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:705 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][962] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 606: // STATE 963 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:706 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][963] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 607: // STATE 964 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:707 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][964] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 608: // STATE 965 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:708 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][965] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 609: // STATE 966 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:709 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][966] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 610: // STATE 967 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:710 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][967] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 611: // STATE 968 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:711 - [((input==14))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][968] = 1;
		if (!((now.input==14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 612: // STATE 969 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:712 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][969] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 613: // STATE 970 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:713 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][970] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 614: // STATE 971 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:714 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][971] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 615: // STATE 972 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:715 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][972] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 616: // STATE 974 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:717 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][974] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 617: // STATE 975 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:718 - [fsm_state = 6] (0:0:1 - 1)
		IfNotBlocked
		reached[0][975] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 6;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 618: // STATE 977 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:720 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][977] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 619: // STATE 978 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:721 - [fsm_state = 6] (0:0:1 - 1)
		IfNotBlocked
		reached[0][978] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 6;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 620: // STATE 979 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:722 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][979] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 621: // STATE 980 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:723 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][980] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 622: // STATE 981 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:724 - [fsm_state = 6] (0:0:1 - 1)
		IfNotBlocked
		reached[0][981] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 6;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 623: // STATE 983 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:726 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][983] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 624: // STATE 984 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:727 - [fsm_state = 6] (0:0:1 - 1)
		IfNotBlocked
		reached[0][984] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 6;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 625: // STATE 985 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:728 - [output = 6] (0:0:1 - 1)
		IfNotBlocked
		reached[0][985] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 6;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 626: // STATE 986 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:729 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][986] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 627: // STATE 987 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:730 - [fsm_state = 6] (0:0:1 - 1)
		IfNotBlocked
		reached[0][987] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 6;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 628: // STATE 989 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:732 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][989] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 629: // STATE 990 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:733 - [fsm_state = 6] (0:0:1 - 1)
		IfNotBlocked
		reached[0][990] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 6;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 630: // STATE 991 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:734 - [output = 6] (0:0:1 - 1)
		IfNotBlocked
		reached[0][991] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 6;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 631: // STATE 992 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:735 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][992] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 632: // STATE 993 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:736 - [fsm_state = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][993] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 3;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 633: // STATE 994 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:737 - [output = 13] (0:0:1 - 1)
		IfNotBlocked
		reached[0][994] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 13;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 634: // STATE 995 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:738 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][995] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 635: // STATE 996 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:739 - [fsm_state = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][996] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 2;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 636: // STATE 997 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:740 - [output = 10] (0:0:1 - 1)
		IfNotBlocked
		reached[0][997] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 10;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 637: // STATE 1002 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:743 - [((fsm_state==5))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1002] = 1;
		if (!((now.fsm_state==5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 638: // STATE 1003 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:745 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1003] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 639: // STATE 1004 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:746 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1004] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 640: // STATE 1005 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:747 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1005] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 641: // STATE 1006 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:748 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1006] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 642: // STATE 1007 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:749 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1007] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 643: // STATE 1008 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:750 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1008] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 644: // STATE 1009 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:751 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1009] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 645: // STATE 1010 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:752 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1010] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 646: // STATE 1011 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:753 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1011] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 647: // STATE 1012 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:754 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1012] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 648: // STATE 1013 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:755 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1013] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 649: // STATE 1014 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:756 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1014] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 650: // STATE 1015 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:757 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1015] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 651: // STATE 1016 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:758 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1016] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 652: // STATE 1017 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:759 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1017] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 653: // STATE 1018 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:760 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1018] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 654: // STATE 1019 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:761 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1019] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 655: // STATE 1020 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:762 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1020] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 656: // STATE 1021 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:763 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1021] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 657: // STATE 1022 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:764 - [fsm_state = 14] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1022] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 14;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 658: // STATE 1024 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:766 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1024] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 659: // STATE 1025 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:767 - [fsm_state = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1025] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 5;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 660: // STATE 1026 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:768 - [output = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1026] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 2;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 661: // STATE 1027 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:769 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1027] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 662: // STATE 1028 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:770 - [fsm_state = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1028] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 5;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 663: // STATE 1029 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:771 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1029] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 664: // STATE 1030 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:772 - [((input==14))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1030] = 1;
		if (!((now.input==14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 665: // STATE 1031 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:773 - [fsm_state = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1031] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 5;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 666: // STATE 1032 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:774 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1032] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 667: // STATE 1033 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:775 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1033] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 668: // STATE 1034 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:776 - [fsm_state = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1034] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 5;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 669: // STATE 1035 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:777 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1035] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 670: // STATE 1036 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:778 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1036] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 671: // STATE 1037 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:779 - [fsm_state = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1037] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 5;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 672: // STATE 1038 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:780 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1038] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 673: // STATE 1043 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:783 - [((fsm_state==4))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1043] = 1;
		if (!((now.fsm_state==4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 674: // STATE 1044 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:785 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1044] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 675: // STATE 1045 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:786 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1045] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 676: // STATE 1046 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:787 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1046] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 677: // STATE 1047 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:788 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1047] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 678: // STATE 1048 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:789 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1048] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 679: // STATE 1049 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:790 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1049] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 680: // STATE 1050 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:791 - [((input==14))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1050] = 1;
		if (!((now.input==14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 681: // STATE 1051 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:792 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1051] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 682: // STATE 1052 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:793 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1052] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 683: // STATE 1053 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:794 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1053] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 684: // STATE 1054 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:795 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1054] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 685: // STATE 1055 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:796 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1055] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 686: // STATE 1056 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:797 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1056] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 687: // STATE 1057 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:798 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1057] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 688: // STATE 1058 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:799 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1058] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 689: // STATE 1059 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:800 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1059] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 690: // STATE 1060 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:801 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1060] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 691: // STATE 1061 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:802 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1061] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 692: // STATE 1062 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:803 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1062] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 693: // STATE 1063 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:804 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1063] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 694: // STATE 1064 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:805 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1064] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 695: // STATE 1065 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:806 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1065] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 696: // STATE 1066 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:807 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1066] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 697: // STATE 1067 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:808 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1067] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 698: // STATE 1068 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:809 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1068] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 699: // STATE 1069 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:810 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1069] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 700: // STATE 1070 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:811 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1070] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 701: // STATE 1071 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:812 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1071] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 702: // STATE 1072 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:813 - [fsm_state = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1072] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 11;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 703: // STATE 1074 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:815 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1074] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 704: // STATE 1075 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:816 - [fsm_state = 4] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1075] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 4;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 705: // STATE 1076 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:817 - [output = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1076] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 2;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 706: // STATE 1077 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:818 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1077] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 707: // STATE 1078 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:819 - [fsm_state = 4] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1078] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 4;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 708: // STATE 1079 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:820 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1079] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 709: // STATE 1084 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:823 - [((fsm_state==3))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1084] = 1;
		if (!((now.fsm_state==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 710: // STATE 1085 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:825 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1085] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 711: // STATE 1086 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:826 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1086] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 712: // STATE 1087 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:827 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1087] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 713: // STATE 1088 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:828 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1088] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 714: // STATE 1089 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:829 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1089] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 715: // STATE 1090 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:830 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1090] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 716: // STATE 1091 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:831 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1091] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 717: // STATE 1092 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:832 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1092] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 718: // STATE 1093 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:833 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1093] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 719: // STATE 1094 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:834 - [((input==14))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1094] = 1;
		if (!((now.input==14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 720: // STATE 1095 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:835 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1095] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 721: // STATE 1096 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:836 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1096] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 722: // STATE 1097 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:837 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1097] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 723: // STATE 1098 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:838 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1098] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 724: // STATE 1100 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:840 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1100] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 725: // STATE 1101 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:841 - [fsm_state = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1101] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 3;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 726: // STATE 1103 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:843 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1103] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 727: // STATE 1104 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:844 - [fsm_state = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1104] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 3;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 728: // STATE 1105 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:845 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1105] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 729: // STATE 1106 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:846 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1106] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 730: // STATE 1107 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:847 - [fsm_state = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1107] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 3;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 731: // STATE 1109 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:849 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1109] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 732: // STATE 1110 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:850 - [fsm_state = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1110] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 3;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 733: // STATE 1111 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:851 - [output = 6] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1111] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 6;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 734: // STATE 1112 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:852 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1112] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 735: // STATE 1113 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:853 - [fsm_state = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1113] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 3;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 736: // STATE 1115 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:855 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1115] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 737: // STATE 1116 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:856 - [fsm_state = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1116] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 3;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 738: // STATE 1117 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:857 - [output = 6] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1117] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 6;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 739: // STATE 1118 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:858 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1118] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 740: // STATE 1119 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:859 - [fsm_state = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1119] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 2;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 741: // STATE 1120 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:860 - [output = 10] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1120] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 10;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 742: // STATE 1125 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:863 - [((fsm_state==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1125] = 1;
		if (!((now.fsm_state==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 743: // STATE 1126 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:865 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1126] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 744: // STATE 1127 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:866 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1127] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 745: // STATE 1128 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:867 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1128] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 746: // STATE 1129 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:868 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1129] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 747: // STATE 1130 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:869 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1130] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 748: // STATE 1131 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:870 - [output = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1131] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 2;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 749: // STATE 1132 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:871 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1132] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 750: // STATE 1133 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:872 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1133] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 751: // STATE 1134 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:873 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1134] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 752: // STATE 1135 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:874 - [((input==14))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1135] = 1;
		if (!((now.input==14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 753: // STATE 1136 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:875 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1136] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 754: // STATE 1137 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:876 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1137] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 755: // STATE 1138 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:877 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1138] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 756: // STATE 1139 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:878 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1139] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 757: // STATE 1140 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:879 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1140] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 758: // STATE 1141 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:880 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1141] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 759: // STATE 1142 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:881 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1142] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 760: // STATE 1143 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:882 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1143] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 761: // STATE 1144 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:883 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1144] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 762: // STATE 1145 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:884 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1145] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 763: // STATE 1146 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:885 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1146] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 764: // STATE 1147 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:886 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1147] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 765: // STATE 1148 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:887 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1148] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 766: // STATE 1149 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:888 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1149] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 767: // STATE 1150 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:889 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1150] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 768: // STATE 1151 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:890 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1151] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 769: // STATE 1152 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:891 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1152] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 770: // STATE 1153 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:892 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1153] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 771: // STATE 1154 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:893 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1154] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 772: // STATE 1155 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:894 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1155] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 773: // STATE 1156 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:895 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1156] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 774: // STATE 1157 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:896 - [fsm_state = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1157] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 2;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 775: // STATE 1158 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:897 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1158] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 776: // STATE 1159 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:898 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1159] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 777: // STATE 1160 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:899 - [fsm_state = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1160] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 1;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 778: // STATE 1161 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:900 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1161] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 779: // STATE 1162 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:901 - [printf('Output: %e\\n',output)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1162] = 1;
		Printf("Output: %e\n", now.output);
		_m = 3; goto P999; /* 0 */
	case 780: // STATE 1193 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:13 - [D_STEP13]
		IfNotBlocked

		reached[0][1193] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_1162_0: /* 2 */
		now.dealt = 0;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
S_1190_0: /* 2 */
S_1163_0: /* 2 */
		if (!((now.dfa_state==3)))
			goto S_1190_1;
S_1172_0: /* 2 */
S_1164_0: /* 2 */
		if (!((now.output==10)))
			goto S_1172_1;
S_1165_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_1166_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_1173_0;
S_1172_1: /* 3 */
S_1167_0: /* 2 */
		if (!(((((((((((((((((((((((((now.output==24)||(now.output==23))||(now.output==21))||(now.output==11))||(now.output==20))||(now.output==9))||(now.output==18))||(now.output==8))||(now.output==17))||(now.output==16))||(now.output==14))||(now.output==2))||(now.output==25))||(now.output==13))||(now.output==12))||(now.output==22))||(now.output==19))||(now.output==7))||(now.output==6))||(now.output==15))||(now.output==5))||(now.output==4))||(now.output==3))||(now.output==1))))
			goto S_1172_2;
S_1168_0: /* 2 */
		now.dfa_state = 3;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_1169_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_1173_0;
S_1172_2: /* 3 */
S_1170_0: /* 2 */
		/* else */;
S_1171_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_1173_0;
S_1172_3: /* 3 */
		Uerror("blocking sel in d_step (nr.24, near line 17)");
S_1173_0: /* 2 */
		goto S_1191_0;
S_1190_1: /* 3 */
S_1174_0: /* 2 */
		if (!((now.dfa_state==2)))
			goto S_1190_2;
S_1175_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_1191_0;
S_1190_2: /* 3 */
S_1176_0: /* 2 */
		if (!((now.dfa_state==1)))
			goto S_1190_3;
S_1188_0: /* 2 */
S_1177_0: /* 2 */
		if (!(((now.output==8)||(now.output==10))))
			goto S_1188_1;
S_1178_0: /* 2 */
		now.dfa_state = 2;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_1179_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_1189_0;
S_1188_1: /* 3 */
S_1180_0: /* 2 */
		if (!((now.output==7)))
			goto S_1188_2;
S_1181_0: /* 2 */
		now.dfa_state = 3;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_1182_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_1189_0;
S_1188_2: /* 3 */
S_1183_0: /* 2 */
		if (!((((((((((((((now.output==25)||(now.output==24))||(now.output==23))||(now.output==22))||(now.output==21))||(now.output==20))||(now.output==19))||(now.output==18))||(now.output==17))||(now.output==16))||(now.output==15))||(now.output==14))||(now.output==3))))
			goto S_1188_3;
S_1184_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_1185_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_1189_0;
S_1188_3: /* 3 */
S_1186_0: /* 2 */
		/* else */;
S_1187_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_1189_0;
S_1188_4: /* 3 */
		Uerror("blocking sel in d_step (nr.25, near line 29)");
S_1189_0: /* 2 */
		goto S_1191_0;
S_1190_3: /* 3 */
		Uerror("blocking sel in d_step (nr.26, near line 15)");
S_1191_0: /* 2 */
		goto S_1197_0;
S_1197_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 781: // STATE 1194 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:44 - [((dealt==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1194] = 1;
		if (!((((int)now.dealt)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 782: // STATE 1201 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:903 - [printf('DFA State: %e\\n',dfa_state)] (0:0:0 - 2)
		IfNotBlocked
		reached[0][1201] = 1;
		Printf("DFA State: %e\n", now.dfa_state);
		_m = 3; goto P999; /* 0 */
	case 783: // STATE 1202 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:904 - [output = 7] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1202] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 7;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 784: // STATE 1207 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:907 - [((fsm_state==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1207] = 1;
		if (!((now.fsm_state==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 785: // STATE 1208 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:909 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1208] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 786: // STATE 1209 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:910 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1209] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 787: // STATE 1210 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:911 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1210] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 788: // STATE 1211 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:912 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1211] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 789: // STATE 1212 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:913 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1212] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 790: // STATE 1213 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:914 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1213] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 791: // STATE 1214 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:915 - [((input==14))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1214] = 1;
		if (!((now.input==14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 792: // STATE 1215 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:916 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1215] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 793: // STATE 1216 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:917 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1216] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 794: // STATE 1217 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:918 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1217] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 795: // STATE 1218 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:919 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1218] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 796: // STATE 1219 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:920 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1219] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 797: // STATE 1220 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:921 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1220] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 798: // STATE 1221 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:922 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1221] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 799: // STATE 1222 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:923 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1222] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 800: // STATE 1223 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:924 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1223] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 801: // STATE 1224 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:925 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1224] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 802: // STATE 1225 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:926 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1225] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 803: // STATE 1226 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:927 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1226] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 804: // STATE 1227 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:928 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1227] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 805: // STATE 1228 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:929 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1228] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 806: // STATE 1229 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:930 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1229] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 807: // STATE 1230 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:931 - [fsm_state = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1230] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 20;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 808: // STATE 1231 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:932 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1231] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 809: // STATE 1232 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:933 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1232] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 810: // STATE 1233 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:934 - [fsm_state = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1233] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 18;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 811: // STATE 1234 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:935 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1234] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 812: // STATE 1235 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:936 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1235] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 813: // STATE 1236 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:937 - [fsm_state = 6] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1236] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 6;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 814: // STATE 1238 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:939 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1238] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 815: // STATE 1239 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:940 - [fsm_state = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1239] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 1;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 816: // STATE 1240 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:941 - [output = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1240] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 2;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 817: // STATE 1241 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:942 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1241] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 818: // STATE 1242 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:943 - [fsm_state = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1242] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 1;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 819: // STATE 1243 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:944 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1243] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 820: // STATE 1250 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:948 - [printf('FSM State: %e\\n',fsm_state)] (0:0:0 - 253)
		IfNotBlocked
		reached[0][1250] = 1;
		Printf("FSM State: %e\n", now.fsm_state);
		_m = 3; goto P999; /* 0 */
	case 821: // STATE 1251 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:949 - [printf('Output: %e\\n\\n',output)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1251] = 1;
		Printf("Output: %e\n\n", now.output);
		_m = 3; goto P999; /* 0 */
	case 822: // STATE 1282 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:13 - [D_STEP13]
		IfNotBlocked

		reached[0][1282] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_1251_0: /* 2 */
		now.dealt = 0;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
S_1279_0: /* 2 */
S_1252_0: /* 2 */
		if (!((now.dfa_state==3)))
			goto S_1279_1;
S_1261_0: /* 2 */
S_1253_0: /* 2 */
		if (!((now.output==10)))
			goto S_1261_1;
S_1254_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_1255_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_1262_0;
S_1261_1: /* 3 */
S_1256_0: /* 2 */
		if (!(((((((((((((((((((((((((now.output==24)||(now.output==23))||(now.output==21))||(now.output==11))||(now.output==20))||(now.output==9))||(now.output==18))||(now.output==8))||(now.output==17))||(now.output==16))||(now.output==14))||(now.output==2))||(now.output==25))||(now.output==13))||(now.output==12))||(now.output==22))||(now.output==19))||(now.output==7))||(now.output==6))||(now.output==15))||(now.output==5))||(now.output==4))||(now.output==3))||(now.output==1))))
			goto S_1261_2;
S_1257_0: /* 2 */
		now.dfa_state = 3;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_1258_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_1262_0;
S_1261_2: /* 3 */
S_1259_0: /* 2 */
		/* else */;
S_1260_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_1262_0;
S_1261_3: /* 3 */
		Uerror("blocking sel in d_step (nr.27, near line 17)");
S_1262_0: /* 2 */
		goto S_1280_0;
S_1279_1: /* 3 */
S_1263_0: /* 2 */
		if (!((now.dfa_state==2)))
			goto S_1279_2;
S_1264_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_1280_0;
S_1279_2: /* 3 */
S_1265_0: /* 2 */
		if (!((now.dfa_state==1)))
			goto S_1279_3;
S_1277_0: /* 2 */
S_1266_0: /* 2 */
		if (!(((now.output==8)||(now.output==10))))
			goto S_1277_1;
S_1267_0: /* 2 */
		now.dfa_state = 2;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_1268_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_1278_0;
S_1277_1: /* 3 */
S_1269_0: /* 2 */
		if (!((now.output==7)))
			goto S_1277_2;
S_1270_0: /* 2 */
		now.dfa_state = 3;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_1271_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_1278_0;
S_1277_2: /* 3 */
S_1272_0: /* 2 */
		if (!((((((((((((((now.output==25)||(now.output==24))||(now.output==23))||(now.output==22))||(now.output==21))||(now.output==20))||(now.output==19))||(now.output==18))||(now.output==17))||(now.output==16))||(now.output==15))||(now.output==14))||(now.output==3))))
			goto S_1277_3;
S_1273_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_1274_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_1278_0;
S_1277_3: /* 3 */
S_1275_0: /* 2 */
		/* else */;
S_1276_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_1278_0;
S_1277_4: /* 3 */
		Uerror("blocking sel in d_step (nr.28, near line 29)");
S_1278_0: /* 2 */
		goto S_1280_0;
S_1279_3: /* 3 */
		Uerror("blocking sel in d_step (nr.29, near line 15)");
S_1280_0: /* 2 */
		goto S_1286_0;
S_1286_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 823: // STATE 1283 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:44 - [((dealt==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1283] = 1;
		if (!((((int)now.dealt)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 824: // STATE 1290 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:951 - [printf('DFA State: %e\\n\\n',dfa_state)] (0:0:0 - 2)
		IfNotBlocked
		reached[0][1290] = 1;
		Printf("DFA State: %e\n\n", now.dfa_state);
		_m = 3; goto P999; /* 0 */
	case 825: // STATE 1294 - Dropbear-v2020.81_invalid_response_before_newkeys_introspection.pml:953 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1294] = 1;
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

