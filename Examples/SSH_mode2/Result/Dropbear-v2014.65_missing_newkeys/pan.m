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
	case 3: // STATE 1 - _spin_nvr.tmp:3 - [(!((dfa_state!=3)))] (6:0:0 - 1)
		
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
		if (!( !((now.dfa_state!=3))))
			continue;
		/* merge: assert(!(!((dfa_state!=3))))(0, 2, 6) */
		reached[1][2] = 1;
		spin_assert( !( !((now.dfa_state!=3))), " !( !((dfa_state!=3)))", II, tt, t);
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
	case 5: // STATE 1 - Dropbear-v2014.65_missing_newkeys_introspection.pml:58 - [fsm_state = 17] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 17;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 2 - Dropbear-v2014.65_missing_newkeys_introspection.pml:59 - [dfa_state = 4] (0:0:1 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		(trpt+1)->bup.oval = now.dfa_state;
		now.dfa_state = 4;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 3 - Dropbear-v2014.65_missing_newkeys_introspection.pml:60 - [dealt = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.oval = ((int)now.dealt);
		now.dealt = 0;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 5 - Dropbear-v2014.65_missing_newkeys_introspection.pml:65 - [input = 26] (0:0:1 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		(trpt+1)->bup.oval = now.input;
		now.input = 26;
#ifdef VAR_RANGES
		logval("input", now.input);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 6 - Dropbear-v2014.65_missing_newkeys_introspection.pml:66 - [input = 25] (0:0:1 - 1)
		IfNotBlocked
		reached[0][6] = 1;
		(trpt+1)->bup.oval = now.input;
		now.input = 25;
#ifdef VAR_RANGES
		logval("input", now.input);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 7 - Dropbear-v2014.65_missing_newkeys_introspection.pml:67 - [input = 24] (0:0:1 - 1)
		IfNotBlocked
		reached[0][7] = 1;
		(trpt+1)->bup.oval = now.input;
		now.input = 24;
#ifdef VAR_RANGES
		logval("input", now.input);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 8 - Dropbear-v2014.65_missing_newkeys_introspection.pml:68 - [input = 23] (0:0:1 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		(trpt+1)->bup.oval = now.input;
		now.input = 23;
#ifdef VAR_RANGES
		logval("input", now.input);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 9 - Dropbear-v2014.65_missing_newkeys_introspection.pml:69 - [input = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		(trpt+1)->bup.oval = now.input;
		now.input = 22;
#ifdef VAR_RANGES
		logval("input", now.input);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 10 - Dropbear-v2014.65_missing_newkeys_introspection.pml:70 - [input = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[0][10] = 1;
		(trpt+1)->bup.oval = now.input;
		now.input = 21;
#ifdef VAR_RANGES
		logval("input", now.input);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 11 - Dropbear-v2014.65_missing_newkeys_introspection.pml:71 - [input = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[0][11] = 1;
		(trpt+1)->bup.oval = now.input;
		now.input = 20;
#ifdef VAR_RANGES
		logval("input", now.input);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 12 - Dropbear-v2014.65_missing_newkeys_introspection.pml:72 - [input = 19] (0:0:1 - 1)
		IfNotBlocked
		reached[0][12] = 1;
		(trpt+1)->bup.oval = now.input;
		now.input = 19;
#ifdef VAR_RANGES
		logval("input", now.input);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 13 - Dropbear-v2014.65_missing_newkeys_introspection.pml:73 - [input = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		(trpt+1)->bup.oval = now.input;
		now.input = 18;
#ifdef VAR_RANGES
		logval("input", now.input);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 14 - Dropbear-v2014.65_missing_newkeys_introspection.pml:74 - [input = 17] (0:0:1 - 1)
		IfNotBlocked
		reached[0][14] = 1;
		(trpt+1)->bup.oval = now.input;
		now.input = 17;
#ifdef VAR_RANGES
		logval("input", now.input);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 15 - Dropbear-v2014.65_missing_newkeys_introspection.pml:75 - [input = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][15] = 1;
		(trpt+1)->bup.oval = now.input;
		now.input = 16;
#ifdef VAR_RANGES
		logval("input", now.input);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 16 - Dropbear-v2014.65_missing_newkeys_introspection.pml:76 - [input = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][16] = 1;
		(trpt+1)->bup.oval = now.input;
		now.input = 15;
#ifdef VAR_RANGES
		logval("input", now.input);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 17 - Dropbear-v2014.65_missing_newkeys_introspection.pml:77 - [input = 14] (0:0:1 - 1)
		IfNotBlocked
		reached[0][17] = 1;
		(trpt+1)->bup.oval = now.input;
		now.input = 14;
#ifdef VAR_RANGES
		logval("input", now.input);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 20 - Dropbear-v2014.65_missing_newkeys_introspection.pml:79 - [printf('Input: %e\\n',input)] (0:0:0 - 14)
		IfNotBlocked
		reached[0][20] = 1;
		Printf("Input: %e\n", now.input);
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 59 - Dropbear-v2014.65_missing_newkeys_introspection.pml:13 - [D_STEP13]
		IfNotBlocked

		reached[0][59] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_020_0: /* 2 */
		now.dealt = 0;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
S_056_0: /* 2 */
S_021_0: /* 2 */
		if (!((now.dfa_state==4)))
			goto S_056_1;
S_030_0: /* 2 */
S_022_0: /* 2 */
		if (!((now.input==4)))
			goto S_030_1;
S_023_0: /* 2 */
		now.dfa_state = 2;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_024_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_031_0;
S_030_1: /* 3 */
S_025_0: /* 2 */
		if (!((((((((((((((((((((((((((now.input==26)||(now.input==24))||(now.input==12))||(now.input==11))||(now.input==21))||(now.input==10))||(now.input==9))||(now.input==8))||(now.input==7))||(now.input==5))||(now.input==18))||(now.input==17))||(now.input==16))||(now.input==15))||(now.input==14))||(now.input==25))||(now.input==13))||(now.input==23))||(now.input==22))||(now.input==20))||(now.input==19))||(now.input==6))||(now.input==3))||(now.input==2))||(now.input==1))))
			goto S_030_2;
S_026_0: /* 2 */
		now.dfa_state = 4;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_027_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_031_0;
S_030_2: /* 3 */
S_028_0: /* 2 */
		/* else */;
S_029_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_031_0;
S_030_3: /* 3 */
		Uerror("blocking sel in d_step (nr.0, near line 17)");
S_031_0: /* 2 */
		goto S_057_0;
S_056_1: /* 3 */
S_032_0: /* 2 */
		if (!((now.dfa_state==3)))
			goto S_056_2;
S_033_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_057_0;
S_056_2: /* 3 */
S_034_0: /* 2 */
		if (!((now.dfa_state==2)))
			goto S_056_3;
S_043_0: /* 2 */
S_035_0: /* 2 */
		if (!((now.input==12)))
			goto S_043_1;
S_036_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_037_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_044_0;
S_043_1: /* 3 */
S_038_0: /* 2 */
		if (!((((((((((((((((((((((((((now.input==26)||(now.input==24))||(now.input==11))||(now.input==21))||(now.input==10))||(now.input==9))||(now.input==8))||(now.input==7))||(now.input==5))||(now.input==4))||(now.input==18))||(now.input==17))||(now.input==16))||(now.input==15))||(now.input==14))||(now.input==25))||(now.input==13))||(now.input==23))||(now.input==22))||(now.input==20))||(now.input==19))||(now.input==6))||(now.input==3))||(now.input==2))||(now.input==1))))
			goto S_043_2;
S_039_0: /* 2 */
		now.dfa_state = 2;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_040_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_044_0;
S_043_2: /* 3 */
S_041_0: /* 2 */
		/* else */;
S_042_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_044_0;
S_043_3: /* 3 */
		Uerror("blocking sel in d_step (nr.1, near line 29)");
S_044_0: /* 2 */
		goto S_057_0;
S_056_3: /* 3 */
S_045_0: /* 2 */
		if (!((now.dfa_state==1)))
			goto S_056_4;
S_054_0: /* 2 */
S_046_0: /* 2 */
		if (!((((now.input==7)||(now.input==9))||(now.input==6))))
			goto S_054_1;
S_047_0: /* 2 */
		now.dfa_state = 3;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_048_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_055_0;
S_054_1: /* 3 */
S_049_0: /* 2 */
		if (!(((((((((((((((((((((((now.input==26)||(now.input==24))||(now.input==12))||(now.input==11))||(now.input==10))||(now.input==8))||(now.input==5))||(now.input==4))||(now.input==18))||(now.input==17))||(now.input==16))||(now.input==15))||(now.input==14))||(now.input==25))||(now.input==13))||(now.input==23))||(now.input==22))||(now.input==20))||(now.input==19))||(now.input==3))||(now.input==2))||(now.input==1))))
			goto S_054_2;
S_050_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_051_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_055_0;
S_054_2: /* 3 */
S_052_0: /* 2 */
		/* else */;
S_053_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_055_0;
S_054_3: /* 3 */
		Uerror("blocking sel in d_step (nr.2, near line 39)");
S_055_0: /* 2 */
		goto S_057_0;
S_056_4: /* 3 */
		Uerror("blocking sel in d_step (nr.3, near line 15)");
S_057_0: /* 2 */
		goto S_063_0;
S_063_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 23: // STATE 60 - Dropbear-v2014.65_missing_newkeys_introspection.pml:51 - [((dealt==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][60] = 1;
		if (!((((int)now.dealt)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 67 - Dropbear-v2014.65_missing_newkeys_introspection.pml:81 - [printf('DFA State: %e\\n',dfa_state)] (0:0:0 - 2)
		IfNotBlocked
		reached[0][67] = 1;
		Printf("DFA State: %e\n", now.dfa_state);
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 68 - Dropbear-v2014.65_missing_newkeys_introspection.pml:83 - [((fsm_state==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][68] = 1;
		if (!((now.fsm_state==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 69 - Dropbear-v2014.65_missing_newkeys_introspection.pml:85 - [((input==14))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][69] = 1;
		if (!((now.input==14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 70 - Dropbear-v2014.65_missing_newkeys_introspection.pml:86 - [fsm_state = 17] (0:0:1 - 1)
		IfNotBlocked
		reached[0][70] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 17;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 71 - Dropbear-v2014.65_missing_newkeys_introspection.pml:87 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][71] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 72 - Dropbear-v2014.65_missing_newkeys_introspection.pml:88 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][72] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 73 - Dropbear-v2014.65_missing_newkeys_introspection.pml:89 - [fsm_state = 17] (0:0:1 - 1)
		IfNotBlocked
		reached[0][73] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 17;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 74 - Dropbear-v2014.65_missing_newkeys_introspection.pml:90 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][74] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 75 - Dropbear-v2014.65_missing_newkeys_introspection.pml:91 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][75] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 76 - Dropbear-v2014.65_missing_newkeys_introspection.pml:92 - [fsm_state = 17] (0:0:1 - 1)
		IfNotBlocked
		reached[0][76] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 17;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 77 - Dropbear-v2014.65_missing_newkeys_introspection.pml:93 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][77] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 78 - Dropbear-v2014.65_missing_newkeys_introspection.pml:94 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][78] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 79 - Dropbear-v2014.65_missing_newkeys_introspection.pml:95 - [fsm_state = 17] (0:0:1 - 1)
		IfNotBlocked
		reached[0][79] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 17;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 80 - Dropbear-v2014.65_missing_newkeys_introspection.pml:96 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][80] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 81 - Dropbear-v2014.65_missing_newkeys_introspection.pml:97 - [((input==26))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][81] = 1;
		if (!((now.input==26)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 82 - Dropbear-v2014.65_missing_newkeys_introspection.pml:98 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][82] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 83 - Dropbear-v2014.65_missing_newkeys_introspection.pml:99 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][83] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 84 - Dropbear-v2014.65_missing_newkeys_introspection.pml:100 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][84] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 85 - Dropbear-v2014.65_missing_newkeys_introspection.pml:101 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][85] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 86 - Dropbear-v2014.65_missing_newkeys_introspection.pml:102 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][86] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 87 - Dropbear-v2014.65_missing_newkeys_introspection.pml:103 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][87] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 88 - Dropbear-v2014.65_missing_newkeys_introspection.pml:104 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][88] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 89 - Dropbear-v2014.65_missing_newkeys_introspection.pml:105 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][89] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 90 - Dropbear-v2014.65_missing_newkeys_introspection.pml:106 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][90] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 91 - Dropbear-v2014.65_missing_newkeys_introspection.pml:107 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][91] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 49: // STATE 92 - Dropbear-v2014.65_missing_newkeys_introspection.pml:108 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][92] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 93 - Dropbear-v2014.65_missing_newkeys_introspection.pml:109 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][93] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 51: // STATE 94 - Dropbear-v2014.65_missing_newkeys_introspection.pml:110 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][94] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 95 - Dropbear-v2014.65_missing_newkeys_introspection.pml:111 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][95] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 53: // STATE 96 - Dropbear-v2014.65_missing_newkeys_introspection.pml:112 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][96] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 54: // STATE 97 - Dropbear-v2014.65_missing_newkeys_introspection.pml:113 - [fsm_state = 14] (0:0:1 - 1)
		IfNotBlocked
		reached[0][97] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 14;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 98 - Dropbear-v2014.65_missing_newkeys_introspection.pml:114 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][98] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 99 - Dropbear-v2014.65_missing_newkeys_introspection.pml:115 - [printf('Output: %e\\n',output)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][99] = 1;
		Printf("Output: %e\n", now.output);
		_m = 3; goto P999; /* 0 */
	case 57: // STATE 138 - Dropbear-v2014.65_missing_newkeys_introspection.pml:13 - [D_STEP13]
		IfNotBlocked

		reached[0][138] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_099_0: /* 2 */
		now.dealt = 0;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
S_135_0: /* 2 */
S_100_0: /* 2 */
		if (!((now.dfa_state==4)))
			goto S_135_1;
S_109_0: /* 2 */
S_101_0: /* 2 */
		if (!((now.output==4)))
			goto S_109_1;
S_102_0: /* 2 */
		now.dfa_state = 2;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_103_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_110_0;
S_109_1: /* 3 */
S_104_0: /* 2 */
		if (!((((((((((((((((((((((((((now.output==26)||(now.output==24))||(now.output==12))||(now.output==11))||(now.output==21))||(now.output==10))||(now.output==9))||(now.output==8))||(now.output==7))||(now.output==5))||(now.output==18))||(now.output==17))||(now.output==16))||(now.output==15))||(now.output==14))||(now.output==25))||(now.output==13))||(now.output==23))||(now.output==22))||(now.output==20))||(now.output==19))||(now.output==6))||(now.output==3))||(now.output==2))||(now.output==1))))
			goto S_109_2;
S_105_0: /* 2 */
		now.dfa_state = 4;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_106_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_110_0;
S_109_2: /* 3 */
S_107_0: /* 2 */
		/* else */;
S_108_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_110_0;
S_109_3: /* 3 */
		Uerror("blocking sel in d_step (nr.4, near line 17)");
S_110_0: /* 2 */
		goto S_136_0;
S_135_1: /* 3 */
S_111_0: /* 2 */
		if (!((now.dfa_state==3)))
			goto S_135_2;
S_112_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_136_0;
S_135_2: /* 3 */
S_113_0: /* 2 */
		if (!((now.dfa_state==2)))
			goto S_135_3;
S_122_0: /* 2 */
S_114_0: /* 2 */
		if (!((now.output==12)))
			goto S_122_1;
S_115_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_116_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_123_0;
S_122_1: /* 3 */
S_117_0: /* 2 */
		if (!((((((((((((((((((((((((((now.output==26)||(now.output==24))||(now.output==11))||(now.output==21))||(now.output==10))||(now.output==9))||(now.output==8))||(now.output==7))||(now.output==5))||(now.output==4))||(now.output==18))||(now.output==17))||(now.output==16))||(now.output==15))||(now.output==14))||(now.output==25))||(now.output==13))||(now.output==23))||(now.output==22))||(now.output==20))||(now.output==19))||(now.output==6))||(now.output==3))||(now.output==2))||(now.output==1))))
			goto S_122_2;
S_118_0: /* 2 */
		now.dfa_state = 2;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_119_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_123_0;
S_122_2: /* 3 */
S_120_0: /* 2 */
		/* else */;
S_121_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_123_0;
S_122_3: /* 3 */
		Uerror("blocking sel in d_step (nr.5, near line 29)");
S_123_0: /* 2 */
		goto S_136_0;
S_135_3: /* 3 */
S_124_0: /* 2 */
		if (!((now.dfa_state==1)))
			goto S_135_4;
S_133_0: /* 2 */
S_125_0: /* 2 */
		if (!((((now.output==7)||(now.output==9))||(now.output==6))))
			goto S_133_1;
S_126_0: /* 2 */
		now.dfa_state = 3;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_127_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_134_0;
S_133_1: /* 3 */
S_128_0: /* 2 */
		if (!(((((((((((((((((((((((now.output==26)||(now.output==24))||(now.output==12))||(now.output==11))||(now.output==10))||(now.output==8))||(now.output==5))||(now.output==4))||(now.output==18))||(now.output==17))||(now.output==16))||(now.output==15))||(now.output==14))||(now.output==25))||(now.output==13))||(now.output==23))||(now.output==22))||(now.output==20))||(now.output==19))||(now.output==3))||(now.output==2))||(now.output==1))))
			goto S_133_2;
S_129_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_130_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_134_0;
S_133_2: /* 3 */
S_131_0: /* 2 */
		/* else */;
S_132_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_134_0;
S_133_3: /* 3 */
		Uerror("blocking sel in d_step (nr.6, near line 39)");
S_134_0: /* 2 */
		goto S_136_0;
S_135_4: /* 3 */
		Uerror("blocking sel in d_step (nr.7, near line 15)");
S_136_0: /* 2 */
		goto S_142_0;
S_142_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 58: // STATE 139 - Dropbear-v2014.65_missing_newkeys_introspection.pml:51 - [((dealt==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][139] = 1;
		if (!((((int)now.dealt)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 59: // STATE 146 - Dropbear-v2014.65_missing_newkeys_introspection.pml:117 - [printf('DFA State: %e\\n',dfa_state)] (0:0:0 - 2)
		IfNotBlocked
		reached[0][146] = 1;
		Printf("DFA State: %e\n", now.dfa_state);
		_m = 3; goto P999; /* 0 */
	case 60: // STATE 147 - Dropbear-v2014.65_missing_newkeys_introspection.pml:118 - [output = 13] (0:0:1 - 1)
		IfNotBlocked
		reached[0][147] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 13;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 61: // STATE 148 - Dropbear-v2014.65_missing_newkeys_introspection.pml:119 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][148] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 62: // STATE 149 - Dropbear-v2014.65_missing_newkeys_introspection.pml:120 - [fsm_state = 14] (0:0:1 - 1)
		IfNotBlocked
		reached[0][149] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 14;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 63: // STATE 150 - Dropbear-v2014.65_missing_newkeys_introspection.pml:121 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][150] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 64: // STATE 151 - Dropbear-v2014.65_missing_newkeys_introspection.pml:122 - [printf('Output: %e\\n',output)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][151] = 1;
		Printf("Output: %e\n", now.output);
		_m = 3; goto P999; /* 0 */
	case 65: // STATE 190 - Dropbear-v2014.65_missing_newkeys_introspection.pml:13 - [D_STEP13]
		IfNotBlocked

		reached[0][190] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_151_0: /* 2 */
		now.dealt = 0;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
S_187_0: /* 2 */
S_152_0: /* 2 */
		if (!((now.dfa_state==4)))
			goto S_187_1;
S_161_0: /* 2 */
S_153_0: /* 2 */
		if (!((now.output==4)))
			goto S_161_1;
S_154_0: /* 2 */
		now.dfa_state = 2;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_155_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_162_0;
S_161_1: /* 3 */
S_156_0: /* 2 */
		if (!((((((((((((((((((((((((((now.output==26)||(now.output==24))||(now.output==12))||(now.output==11))||(now.output==21))||(now.output==10))||(now.output==9))||(now.output==8))||(now.output==7))||(now.output==5))||(now.output==18))||(now.output==17))||(now.output==16))||(now.output==15))||(now.output==14))||(now.output==25))||(now.output==13))||(now.output==23))||(now.output==22))||(now.output==20))||(now.output==19))||(now.output==6))||(now.output==3))||(now.output==2))||(now.output==1))))
			goto S_161_2;
S_157_0: /* 2 */
		now.dfa_state = 4;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_158_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_162_0;
S_161_2: /* 3 */
S_159_0: /* 2 */
		/* else */;
S_160_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_162_0;
S_161_3: /* 3 */
		Uerror("blocking sel in d_step (nr.8, near line 17)");
S_162_0: /* 2 */
		goto S_188_0;
S_187_1: /* 3 */
S_163_0: /* 2 */
		if (!((now.dfa_state==3)))
			goto S_187_2;
S_164_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_188_0;
S_187_2: /* 3 */
S_165_0: /* 2 */
		if (!((now.dfa_state==2)))
			goto S_187_3;
S_174_0: /* 2 */
S_166_0: /* 2 */
		if (!((now.output==12)))
			goto S_174_1;
S_167_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_168_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_175_0;
S_174_1: /* 3 */
S_169_0: /* 2 */
		if (!((((((((((((((((((((((((((now.output==26)||(now.output==24))||(now.output==11))||(now.output==21))||(now.output==10))||(now.output==9))||(now.output==8))||(now.output==7))||(now.output==5))||(now.output==4))||(now.output==18))||(now.output==17))||(now.output==16))||(now.output==15))||(now.output==14))||(now.output==25))||(now.output==13))||(now.output==23))||(now.output==22))||(now.output==20))||(now.output==19))||(now.output==6))||(now.output==3))||(now.output==2))||(now.output==1))))
			goto S_174_2;
S_170_0: /* 2 */
		now.dfa_state = 2;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_171_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_175_0;
S_174_2: /* 3 */
S_172_0: /* 2 */
		/* else */;
S_173_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_175_0;
S_174_3: /* 3 */
		Uerror("blocking sel in d_step (nr.9, near line 29)");
S_175_0: /* 2 */
		goto S_188_0;
S_187_3: /* 3 */
S_176_0: /* 2 */
		if (!((now.dfa_state==1)))
			goto S_187_4;
S_185_0: /* 2 */
S_177_0: /* 2 */
		if (!((((now.output==7)||(now.output==9))||(now.output==6))))
			goto S_185_1;
S_178_0: /* 2 */
		now.dfa_state = 3;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_179_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_186_0;
S_185_1: /* 3 */
S_180_0: /* 2 */
		if (!(((((((((((((((((((((((now.output==26)||(now.output==24))||(now.output==12))||(now.output==11))||(now.output==10))||(now.output==8))||(now.output==5))||(now.output==4))||(now.output==18))||(now.output==17))||(now.output==16))||(now.output==15))||(now.output==14))||(now.output==25))||(now.output==13))||(now.output==23))||(now.output==22))||(now.output==20))||(now.output==19))||(now.output==3))||(now.output==2))||(now.output==1))))
			goto S_185_2;
S_181_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_182_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_186_0;
S_185_2: /* 3 */
S_183_0: /* 2 */
		/* else */;
S_184_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_186_0;
S_185_3: /* 3 */
		Uerror("blocking sel in d_step (nr.10, near line 39)");
S_186_0: /* 2 */
		goto S_188_0;
S_187_4: /* 3 */
		Uerror("blocking sel in d_step (nr.11, near line 15)");
S_188_0: /* 2 */
		goto S_194_0;
S_194_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 66: // STATE 191 - Dropbear-v2014.65_missing_newkeys_introspection.pml:51 - [((dealt==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][191] = 1;
		if (!((((int)now.dealt)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 67: // STATE 198 - Dropbear-v2014.65_missing_newkeys_introspection.pml:124 - [printf('DFA State: %e\\n',dfa_state)] (0:0:0 - 2)
		IfNotBlocked
		reached[0][198] = 1;
		Printf("DFA State: %e\n", now.dfa_state);
		_m = 3; goto P999; /* 0 */
	case 68: // STATE 199 - Dropbear-v2014.65_missing_newkeys_introspection.pml:125 - [output = 13] (0:0:1 - 1)
		IfNotBlocked
		reached[0][199] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 13;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 69: // STATE 200 - Dropbear-v2014.65_missing_newkeys_introspection.pml:126 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][200] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 70: // STATE 201 - Dropbear-v2014.65_missing_newkeys_introspection.pml:127 - [fsm_state = 14] (0:0:1 - 1)
		IfNotBlocked
		reached[0][201] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 14;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 71: // STATE 202 - Dropbear-v2014.65_missing_newkeys_introspection.pml:128 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][202] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 72: // STATE 203 - Dropbear-v2014.65_missing_newkeys_introspection.pml:129 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][203] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 73: // STATE 204 - Dropbear-v2014.65_missing_newkeys_introspection.pml:130 - [fsm_state = 13] (0:0:1 - 1)
		IfNotBlocked
		reached[0][204] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 13;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 74: // STATE 205 - Dropbear-v2014.65_missing_newkeys_introspection.pml:131 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][205] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 75: // STATE 210 - Dropbear-v2014.65_missing_newkeys_introspection.pml:134 - [((fsm_state==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][210] = 1;
		if (!((now.fsm_state==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 76: // STATE 211 - Dropbear-v2014.65_missing_newkeys_introspection.pml:136 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][211] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 77: // STATE 212 - Dropbear-v2014.65_missing_newkeys_introspection.pml:137 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][212] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 78: // STATE 213 - Dropbear-v2014.65_missing_newkeys_introspection.pml:138 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][213] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 79: // STATE 214 - Dropbear-v2014.65_missing_newkeys_introspection.pml:139 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][214] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 80: // STATE 215 - Dropbear-v2014.65_missing_newkeys_introspection.pml:140 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][215] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 81: // STATE 216 - Dropbear-v2014.65_missing_newkeys_introspection.pml:141 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][216] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 82: // STATE 217 - Dropbear-v2014.65_missing_newkeys_introspection.pml:142 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][217] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 83: // STATE 218 - Dropbear-v2014.65_missing_newkeys_introspection.pml:143 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][218] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 84: // STATE 219 - Dropbear-v2014.65_missing_newkeys_introspection.pml:144 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][219] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 85: // STATE 220 - Dropbear-v2014.65_missing_newkeys_introspection.pml:145 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][220] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 86: // STATE 221 - Dropbear-v2014.65_missing_newkeys_introspection.pml:146 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][221] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 87: // STATE 222 - Dropbear-v2014.65_missing_newkeys_introspection.pml:147 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][222] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 88: // STATE 223 - Dropbear-v2014.65_missing_newkeys_introspection.pml:148 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][223] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 89: // STATE 224 - Dropbear-v2014.65_missing_newkeys_introspection.pml:149 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][224] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 90: // STATE 225 - Dropbear-v2014.65_missing_newkeys_introspection.pml:150 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][225] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 91: // STATE 226 - Dropbear-v2014.65_missing_newkeys_introspection.pml:151 - [((input==14))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][226] = 1;
		if (!((now.input==14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 92: // STATE 227 - Dropbear-v2014.65_missing_newkeys_introspection.pml:152 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][227] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 93: // STATE 228 - Dropbear-v2014.65_missing_newkeys_introspection.pml:153 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][228] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 94: // STATE 229 - Dropbear-v2014.65_missing_newkeys_introspection.pml:154 - [((input==26))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][229] = 1;
		if (!((now.input==26)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 95: // STATE 230 - Dropbear-v2014.65_missing_newkeys_introspection.pml:155 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][230] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 96: // STATE 231 - Dropbear-v2014.65_missing_newkeys_introspection.pml:156 - [output = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][231] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 1;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 97: // STATE 232 - Dropbear-v2014.65_missing_newkeys_introspection.pml:157 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][232] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 98: // STATE 233 - Dropbear-v2014.65_missing_newkeys_introspection.pml:158 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][233] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 99: // STATE 234 - Dropbear-v2014.65_missing_newkeys_introspection.pml:159 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][234] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 100: // STATE 235 - Dropbear-v2014.65_missing_newkeys_introspection.pml:160 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][235] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 101: // STATE 236 - Dropbear-v2014.65_missing_newkeys_introspection.pml:161 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][236] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 102: // STATE 237 - Dropbear-v2014.65_missing_newkeys_introspection.pml:162 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][237] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 103: // STATE 238 - Dropbear-v2014.65_missing_newkeys_introspection.pml:163 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][238] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 104: // STATE 239 - Dropbear-v2014.65_missing_newkeys_introspection.pml:164 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][239] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 105: // STATE 240 - Dropbear-v2014.65_missing_newkeys_introspection.pml:165 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][240] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 106: // STATE 241 - Dropbear-v2014.65_missing_newkeys_introspection.pml:166 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][241] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 107: // STATE 242 - Dropbear-v2014.65_missing_newkeys_introspection.pml:167 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][242] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 108: // STATE 243 - Dropbear-v2014.65_missing_newkeys_introspection.pml:168 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][243] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 109: // STATE 244 - Dropbear-v2014.65_missing_newkeys_introspection.pml:169 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][244] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 110: // STATE 245 - Dropbear-v2014.65_missing_newkeys_introspection.pml:170 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][245] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 111: // STATE 246 - Dropbear-v2014.65_missing_newkeys_introspection.pml:171 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][246] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 112: // STATE 247 - Dropbear-v2014.65_missing_newkeys_introspection.pml:172 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][247] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 113: // STATE 248 - Dropbear-v2014.65_missing_newkeys_introspection.pml:173 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][248] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 114: // STATE 249 - Dropbear-v2014.65_missing_newkeys_introspection.pml:174 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][249] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 115: // STATE 254 - Dropbear-v2014.65_missing_newkeys_introspection.pml:177 - [((fsm_state==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][254] = 1;
		if (!((now.fsm_state==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 116: // STATE 255 - Dropbear-v2014.65_missing_newkeys_introspection.pml:179 - [((input==26))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][255] = 1;
		if (!((now.input==26)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 117: // STATE 256 - Dropbear-v2014.65_missing_newkeys_introspection.pml:180 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][256] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 118: // STATE 257 - Dropbear-v2014.65_missing_newkeys_introspection.pml:181 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][257] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 119: // STATE 258 - Dropbear-v2014.65_missing_newkeys_introspection.pml:182 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][258] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 120: // STATE 259 - Dropbear-v2014.65_missing_newkeys_introspection.pml:183 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][259] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 121: // STATE 260 - Dropbear-v2014.65_missing_newkeys_introspection.pml:184 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][260] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 122: // STATE 261 - Dropbear-v2014.65_missing_newkeys_introspection.pml:185 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][261] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 123: // STATE 262 - Dropbear-v2014.65_missing_newkeys_introspection.pml:186 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][262] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 124: // STATE 263 - Dropbear-v2014.65_missing_newkeys_introspection.pml:187 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][263] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 125: // STATE 264 - Dropbear-v2014.65_missing_newkeys_introspection.pml:188 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][264] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 126: // STATE 265 - Dropbear-v2014.65_missing_newkeys_introspection.pml:189 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][265] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 127: // STATE 266 - Dropbear-v2014.65_missing_newkeys_introspection.pml:190 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][266] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 128: // STATE 267 - Dropbear-v2014.65_missing_newkeys_introspection.pml:191 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][267] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 129: // STATE 268 - Dropbear-v2014.65_missing_newkeys_introspection.pml:192 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][268] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 130: // STATE 269 - Dropbear-v2014.65_missing_newkeys_introspection.pml:193 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][269] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 131: // STATE 270 - Dropbear-v2014.65_missing_newkeys_introspection.pml:194 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][270] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 132: // STATE 271 - Dropbear-v2014.65_missing_newkeys_introspection.pml:195 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][271] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 133: // STATE 272 - Dropbear-v2014.65_missing_newkeys_introspection.pml:196 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][272] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 134: // STATE 273 - Dropbear-v2014.65_missing_newkeys_introspection.pml:197 - [((input==14))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][273] = 1;
		if (!((now.input==14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 135: // STATE 274 - Dropbear-v2014.65_missing_newkeys_introspection.pml:198 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][274] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 136: // STATE 275 - Dropbear-v2014.65_missing_newkeys_introspection.pml:199 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][275] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 137: // STATE 276 - Dropbear-v2014.65_missing_newkeys_introspection.pml:200 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][276] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 138: // STATE 277 - Dropbear-v2014.65_missing_newkeys_introspection.pml:201 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][277] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 139: // STATE 278 - Dropbear-v2014.65_missing_newkeys_introspection.pml:202 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][278] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 140: // STATE 279 - Dropbear-v2014.65_missing_newkeys_introspection.pml:203 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][279] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 141: // STATE 280 - Dropbear-v2014.65_missing_newkeys_introspection.pml:204 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][280] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 142: // STATE 281 - Dropbear-v2014.65_missing_newkeys_introspection.pml:205 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][281] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 143: // STATE 282 - Dropbear-v2014.65_missing_newkeys_introspection.pml:206 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][282] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 144: // STATE 283 - Dropbear-v2014.65_missing_newkeys_introspection.pml:207 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][283] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 145: // STATE 284 - Dropbear-v2014.65_missing_newkeys_introspection.pml:208 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][284] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 146: // STATE 285 - Dropbear-v2014.65_missing_newkeys_introspection.pml:209 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][285] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 147: // STATE 286 - Dropbear-v2014.65_missing_newkeys_introspection.pml:210 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][286] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 148: // STATE 287 - Dropbear-v2014.65_missing_newkeys_introspection.pml:211 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][287] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 149: // STATE 288 - Dropbear-v2014.65_missing_newkeys_introspection.pml:212 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][288] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 150: // STATE 289 - Dropbear-v2014.65_missing_newkeys_introspection.pml:213 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][289] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 151: // STATE 290 - Dropbear-v2014.65_missing_newkeys_introspection.pml:214 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][290] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 152: // STATE 291 - Dropbear-v2014.65_missing_newkeys_introspection.pml:215 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][291] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 153: // STATE 292 - Dropbear-v2014.65_missing_newkeys_introspection.pml:216 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][292] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 154: // STATE 293 - Dropbear-v2014.65_missing_newkeys_introspection.pml:217 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][293] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 155: // STATE 298 - Dropbear-v2014.65_missing_newkeys_introspection.pml:220 - [((fsm_state==14))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][298] = 1;
		if (!((now.fsm_state==14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 156: // STATE 299 - Dropbear-v2014.65_missing_newkeys_introspection.pml:222 - [((input==26))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][299] = 1;
		if (!((now.input==26)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 157: // STATE 300 - Dropbear-v2014.65_missing_newkeys_introspection.pml:223 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][300] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 158: // STATE 301 - Dropbear-v2014.65_missing_newkeys_introspection.pml:224 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][301] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 159: // STATE 302 - Dropbear-v2014.65_missing_newkeys_introspection.pml:225 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][302] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 160: // STATE 303 - Dropbear-v2014.65_missing_newkeys_introspection.pml:226 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][303] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 161: // STATE 304 - Dropbear-v2014.65_missing_newkeys_introspection.pml:227 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][304] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 162: // STATE 305 - Dropbear-v2014.65_missing_newkeys_introspection.pml:228 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][305] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 163: // STATE 306 - Dropbear-v2014.65_missing_newkeys_introspection.pml:229 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][306] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 164: // STATE 307 - Dropbear-v2014.65_missing_newkeys_introspection.pml:230 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][307] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 165: // STATE 308 - Dropbear-v2014.65_missing_newkeys_introspection.pml:231 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][308] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 166: // STATE 309 - Dropbear-v2014.65_missing_newkeys_introspection.pml:232 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][309] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 167: // STATE 310 - Dropbear-v2014.65_missing_newkeys_introspection.pml:233 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][310] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 168: // STATE 311 - Dropbear-v2014.65_missing_newkeys_introspection.pml:234 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][311] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 169: // STATE 312 - Dropbear-v2014.65_missing_newkeys_introspection.pml:235 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][312] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 170: // STATE 313 - Dropbear-v2014.65_missing_newkeys_introspection.pml:236 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][313] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 171: // STATE 314 - Dropbear-v2014.65_missing_newkeys_introspection.pml:237 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][314] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 172: // STATE 315 - Dropbear-v2014.65_missing_newkeys_introspection.pml:238 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][315] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 173: // STATE 316 - Dropbear-v2014.65_missing_newkeys_introspection.pml:239 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][316] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 174: // STATE 317 - Dropbear-v2014.65_missing_newkeys_introspection.pml:240 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][317] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 175: // STATE 318 - Dropbear-v2014.65_missing_newkeys_introspection.pml:241 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][318] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 176: // STATE 319 - Dropbear-v2014.65_missing_newkeys_introspection.pml:242 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][319] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 177: // STATE 320 - Dropbear-v2014.65_missing_newkeys_introspection.pml:243 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][320] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 178: // STATE 321 - Dropbear-v2014.65_missing_newkeys_introspection.pml:244 - [fsm_state = 14] (0:0:1 - 1)
		IfNotBlocked
		reached[0][321] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 14;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 179: // STATE 322 - Dropbear-v2014.65_missing_newkeys_introspection.pml:245 - [output = 13] (0:0:1 - 1)
		IfNotBlocked
		reached[0][322] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 13;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 180: // STATE 323 - Dropbear-v2014.65_missing_newkeys_introspection.pml:246 - [((input==14))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][323] = 1;
		if (!((now.input==14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 181: // STATE 324 - Dropbear-v2014.65_missing_newkeys_introspection.pml:247 - [fsm_state = 14] (0:0:1 - 1)
		IfNotBlocked
		reached[0][324] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 14;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 182: // STATE 325 - Dropbear-v2014.65_missing_newkeys_introspection.pml:248 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][325] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 183: // STATE 326 - Dropbear-v2014.65_missing_newkeys_introspection.pml:249 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][326] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 184: // STATE 327 - Dropbear-v2014.65_missing_newkeys_introspection.pml:250 - [fsm_state = 14] (0:0:1 - 1)
		IfNotBlocked
		reached[0][327] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 14;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 185: // STATE 328 - Dropbear-v2014.65_missing_newkeys_introspection.pml:251 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][328] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 186: // STATE 329 - Dropbear-v2014.65_missing_newkeys_introspection.pml:252 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][329] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 187: // STATE 330 - Dropbear-v2014.65_missing_newkeys_introspection.pml:253 - [fsm_state = 14] (0:0:1 - 1)
		IfNotBlocked
		reached[0][330] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 14;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 188: // STATE 331 - Dropbear-v2014.65_missing_newkeys_introspection.pml:254 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][331] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 189: // STATE 332 - Dropbear-v2014.65_missing_newkeys_introspection.pml:255 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][332] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 190: // STATE 333 - Dropbear-v2014.65_missing_newkeys_introspection.pml:256 - [fsm_state = 14] (0:0:1 - 1)
		IfNotBlocked
		reached[0][333] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 14;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 191: // STATE 334 - Dropbear-v2014.65_missing_newkeys_introspection.pml:257 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][334] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 192: // STATE 335 - Dropbear-v2014.65_missing_newkeys_introspection.pml:258 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][335] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 193: // STATE 336 - Dropbear-v2014.65_missing_newkeys_introspection.pml:259 - [fsm_state = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][336] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 12;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 194: // STATE 337 - Dropbear-v2014.65_missing_newkeys_introspection.pml:260 - [output = 8] (0:0:1 - 1)
		IfNotBlocked
		reached[0][337] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 8;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 195: // STATE 338 - Dropbear-v2014.65_missing_newkeys_introspection.pml:261 - [printf('Output: %e\\n',output)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][338] = 1;
		Printf("Output: %e\n", now.output);
		_m = 3; goto P999; /* 0 */
	case 196: // STATE 377 - Dropbear-v2014.65_missing_newkeys_introspection.pml:13 - [D_STEP13]
		IfNotBlocked

		reached[0][377] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_338_0: /* 2 */
		now.dealt = 0;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
S_374_0: /* 2 */
S_339_0: /* 2 */
		if (!((now.dfa_state==4)))
			goto S_374_1;
S_348_0: /* 2 */
S_340_0: /* 2 */
		if (!((now.output==4)))
			goto S_348_1;
S_341_0: /* 2 */
		now.dfa_state = 2;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_342_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_349_0;
S_348_1: /* 3 */
S_343_0: /* 2 */
		if (!((((((((((((((((((((((((((now.output==26)||(now.output==24))||(now.output==12))||(now.output==11))||(now.output==21))||(now.output==10))||(now.output==9))||(now.output==8))||(now.output==7))||(now.output==5))||(now.output==18))||(now.output==17))||(now.output==16))||(now.output==15))||(now.output==14))||(now.output==25))||(now.output==13))||(now.output==23))||(now.output==22))||(now.output==20))||(now.output==19))||(now.output==6))||(now.output==3))||(now.output==2))||(now.output==1))))
			goto S_348_2;
S_344_0: /* 2 */
		now.dfa_state = 4;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_345_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_349_0;
S_348_2: /* 3 */
S_346_0: /* 2 */
		/* else */;
S_347_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_349_0;
S_348_3: /* 3 */
		Uerror("blocking sel in d_step (nr.12, near line 17)");
S_349_0: /* 2 */
		goto S_375_0;
S_374_1: /* 3 */
S_350_0: /* 2 */
		if (!((now.dfa_state==3)))
			goto S_374_2;
S_351_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_375_0;
S_374_2: /* 3 */
S_352_0: /* 2 */
		if (!((now.dfa_state==2)))
			goto S_374_3;
S_361_0: /* 2 */
S_353_0: /* 2 */
		if (!((now.output==12)))
			goto S_361_1;
S_354_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_355_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_362_0;
S_361_1: /* 3 */
S_356_0: /* 2 */
		if (!((((((((((((((((((((((((((now.output==26)||(now.output==24))||(now.output==11))||(now.output==21))||(now.output==10))||(now.output==9))||(now.output==8))||(now.output==7))||(now.output==5))||(now.output==4))||(now.output==18))||(now.output==17))||(now.output==16))||(now.output==15))||(now.output==14))||(now.output==25))||(now.output==13))||(now.output==23))||(now.output==22))||(now.output==20))||(now.output==19))||(now.output==6))||(now.output==3))||(now.output==2))||(now.output==1))))
			goto S_361_2;
S_357_0: /* 2 */
		now.dfa_state = 2;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_358_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_362_0;
S_361_2: /* 3 */
S_359_0: /* 2 */
		/* else */;
S_360_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_362_0;
S_361_3: /* 3 */
		Uerror("blocking sel in d_step (nr.13, near line 29)");
S_362_0: /* 2 */
		goto S_375_0;
S_374_3: /* 3 */
S_363_0: /* 2 */
		if (!((now.dfa_state==1)))
			goto S_374_4;
S_372_0: /* 2 */
S_364_0: /* 2 */
		if (!((((now.output==7)||(now.output==9))||(now.output==6))))
			goto S_372_1;
S_365_0: /* 2 */
		now.dfa_state = 3;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_366_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_373_0;
S_372_1: /* 3 */
S_367_0: /* 2 */
		if (!(((((((((((((((((((((((now.output==26)||(now.output==24))||(now.output==12))||(now.output==11))||(now.output==10))||(now.output==8))||(now.output==5))||(now.output==4))||(now.output==18))||(now.output==17))||(now.output==16))||(now.output==15))||(now.output==14))||(now.output==25))||(now.output==13))||(now.output==23))||(now.output==22))||(now.output==20))||(now.output==19))||(now.output==3))||(now.output==2))||(now.output==1))))
			goto S_372_2;
S_368_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_369_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_373_0;
S_372_2: /* 3 */
S_370_0: /* 2 */
		/* else */;
S_371_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_373_0;
S_372_3: /* 3 */
		Uerror("blocking sel in d_step (nr.14, near line 39)");
S_373_0: /* 2 */
		goto S_375_0;
S_374_4: /* 3 */
		Uerror("blocking sel in d_step (nr.15, near line 15)");
S_375_0: /* 2 */
		goto S_381_0;
S_381_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 197: // STATE 378 - Dropbear-v2014.65_missing_newkeys_introspection.pml:51 - [((dealt==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][378] = 1;
		if (!((((int)now.dealt)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 198: // STATE 385 - Dropbear-v2014.65_missing_newkeys_introspection.pml:263 - [printf('DFA State: %e\\n',dfa_state)] (0:0:0 - 2)
		IfNotBlocked
		reached[0][385] = 1;
		Printf("DFA State: %e\n", now.dfa_state);
		_m = 3; goto P999; /* 0 */
	case 199: // STATE 386 - Dropbear-v2014.65_missing_newkeys_introspection.pml:264 - [output = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][386] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 2;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 200: // STATE 391 - Dropbear-v2014.65_missing_newkeys_introspection.pml:267 - [((fsm_state==13))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][391] = 1;
		if (!((now.fsm_state==13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 201: // STATE 392 - Dropbear-v2014.65_missing_newkeys_introspection.pml:269 - [((input==26))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][392] = 1;
		if (!((now.input==26)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 202: // STATE 393 - Dropbear-v2014.65_missing_newkeys_introspection.pml:270 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][393] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 203: // STATE 394 - Dropbear-v2014.65_missing_newkeys_introspection.pml:271 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][394] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 204: // STATE 395 - Dropbear-v2014.65_missing_newkeys_introspection.pml:272 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][395] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 205: // STATE 396 - Dropbear-v2014.65_missing_newkeys_introspection.pml:273 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][396] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 206: // STATE 397 - Dropbear-v2014.65_missing_newkeys_introspection.pml:274 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][397] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 207: // STATE 398 - Dropbear-v2014.65_missing_newkeys_introspection.pml:275 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][398] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 208: // STATE 399 - Dropbear-v2014.65_missing_newkeys_introspection.pml:276 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][399] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 209: // STATE 400 - Dropbear-v2014.65_missing_newkeys_introspection.pml:277 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][400] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 210: // STATE 401 - Dropbear-v2014.65_missing_newkeys_introspection.pml:278 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][401] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 211: // STATE 402 - Dropbear-v2014.65_missing_newkeys_introspection.pml:279 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][402] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 212: // STATE 403 - Dropbear-v2014.65_missing_newkeys_introspection.pml:280 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][403] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 213: // STATE 404 - Dropbear-v2014.65_missing_newkeys_introspection.pml:281 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][404] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 214: // STATE 405 - Dropbear-v2014.65_missing_newkeys_introspection.pml:282 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][405] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 215: // STATE 406 - Dropbear-v2014.65_missing_newkeys_introspection.pml:283 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][406] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 216: // STATE 407 - Dropbear-v2014.65_missing_newkeys_introspection.pml:284 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][407] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 217: // STATE 408 - Dropbear-v2014.65_missing_newkeys_introspection.pml:285 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][408] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 218: // STATE 409 - Dropbear-v2014.65_missing_newkeys_introspection.pml:286 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][409] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 219: // STATE 410 - Dropbear-v2014.65_missing_newkeys_introspection.pml:287 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][410] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 220: // STATE 411 - Dropbear-v2014.65_missing_newkeys_introspection.pml:288 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][411] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 221: // STATE 412 - Dropbear-v2014.65_missing_newkeys_introspection.pml:289 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][412] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 222: // STATE 413 - Dropbear-v2014.65_missing_newkeys_introspection.pml:290 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][413] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 223: // STATE 414 - Dropbear-v2014.65_missing_newkeys_introspection.pml:291 - [fsm_state = 14] (0:0:1 - 1)
		IfNotBlocked
		reached[0][414] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 14;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 224: // STATE 416 - Dropbear-v2014.65_missing_newkeys_introspection.pml:293 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][416] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 225: // STATE 417 - Dropbear-v2014.65_missing_newkeys_introspection.pml:294 - [fsm_state = 13] (0:0:1 - 1)
		IfNotBlocked
		reached[0][417] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 13;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 226: // STATE 418 - Dropbear-v2014.65_missing_newkeys_introspection.pml:295 - [output = 13] (0:0:1 - 1)
		IfNotBlocked
		reached[0][418] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 13;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 227: // STATE 419 - Dropbear-v2014.65_missing_newkeys_introspection.pml:296 - [((input==14))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][419] = 1;
		if (!((now.input==14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 228: // STATE 420 - Dropbear-v2014.65_missing_newkeys_introspection.pml:297 - [fsm_state = 13] (0:0:1 - 1)
		IfNotBlocked
		reached[0][420] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 13;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 229: // STATE 421 - Dropbear-v2014.65_missing_newkeys_introspection.pml:298 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][421] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 230: // STATE 422 - Dropbear-v2014.65_missing_newkeys_introspection.pml:299 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][422] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 231: // STATE 423 - Dropbear-v2014.65_missing_newkeys_introspection.pml:300 - [fsm_state = 13] (0:0:1 - 1)
		IfNotBlocked
		reached[0][423] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 13;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 232: // STATE 424 - Dropbear-v2014.65_missing_newkeys_introspection.pml:301 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][424] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 233: // STATE 425 - Dropbear-v2014.65_missing_newkeys_introspection.pml:302 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][425] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 234: // STATE 426 - Dropbear-v2014.65_missing_newkeys_introspection.pml:303 - [fsm_state = 13] (0:0:1 - 1)
		IfNotBlocked
		reached[0][426] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 13;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 235: // STATE 427 - Dropbear-v2014.65_missing_newkeys_introspection.pml:304 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][427] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 236: // STATE 428 - Dropbear-v2014.65_missing_newkeys_introspection.pml:305 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][428] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 237: // STATE 429 - Dropbear-v2014.65_missing_newkeys_introspection.pml:306 - [fsm_state = 13] (0:0:1 - 1)
		IfNotBlocked
		reached[0][429] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 13;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 238: // STATE 430 - Dropbear-v2014.65_missing_newkeys_introspection.pml:307 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][430] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 239: // STATE 435 - Dropbear-v2014.65_missing_newkeys_introspection.pml:310 - [((fsm_state==12))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][435] = 1;
		if (!((now.fsm_state==12)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 240: // STATE 436 - Dropbear-v2014.65_missing_newkeys_introspection.pml:312 - [((input==26))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][436] = 1;
		if (!((now.input==26)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 241: // STATE 437 - Dropbear-v2014.65_missing_newkeys_introspection.pml:313 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][437] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 242: // STATE 438 - Dropbear-v2014.65_missing_newkeys_introspection.pml:314 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][438] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 243: // STATE 439 - Dropbear-v2014.65_missing_newkeys_introspection.pml:315 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][439] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 244: // STATE 440 - Dropbear-v2014.65_missing_newkeys_introspection.pml:316 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][440] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 245: // STATE 441 - Dropbear-v2014.65_missing_newkeys_introspection.pml:317 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][441] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 246: // STATE 442 - Dropbear-v2014.65_missing_newkeys_introspection.pml:318 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][442] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 247: // STATE 443 - Dropbear-v2014.65_missing_newkeys_introspection.pml:319 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][443] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 248: // STATE 444 - Dropbear-v2014.65_missing_newkeys_introspection.pml:320 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][444] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 249: // STATE 445 - Dropbear-v2014.65_missing_newkeys_introspection.pml:321 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][445] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 250: // STATE 446 - Dropbear-v2014.65_missing_newkeys_introspection.pml:322 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][446] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 251: // STATE 447 - Dropbear-v2014.65_missing_newkeys_introspection.pml:323 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][447] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 252: // STATE 448 - Dropbear-v2014.65_missing_newkeys_introspection.pml:324 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][448] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 253: // STATE 449 - Dropbear-v2014.65_missing_newkeys_introspection.pml:325 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][449] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 254: // STATE 450 - Dropbear-v2014.65_missing_newkeys_introspection.pml:326 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][450] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 255: // STATE 451 - Dropbear-v2014.65_missing_newkeys_introspection.pml:327 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][451] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 256: // STATE 452 - Dropbear-v2014.65_missing_newkeys_introspection.pml:328 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][452] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 257: // STATE 453 - Dropbear-v2014.65_missing_newkeys_introspection.pml:329 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][453] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 258: // STATE 454 - Dropbear-v2014.65_missing_newkeys_introspection.pml:330 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][454] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 259: // STATE 455 - Dropbear-v2014.65_missing_newkeys_introspection.pml:331 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][455] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 260: // STATE 456 - Dropbear-v2014.65_missing_newkeys_introspection.pml:332 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][456] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 261: // STATE 457 - Dropbear-v2014.65_missing_newkeys_introspection.pml:333 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][457] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 262: // STATE 458 - Dropbear-v2014.65_missing_newkeys_introspection.pml:334 - [fsm_state = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][458] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 12;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 263: // STATE 459 - Dropbear-v2014.65_missing_newkeys_introspection.pml:335 - [output = 13] (0:0:1 - 1)
		IfNotBlocked
		reached[0][459] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 13;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 264: // STATE 460 - Dropbear-v2014.65_missing_newkeys_introspection.pml:336 - [((input==14))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][460] = 1;
		if (!((now.input==14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 265: // STATE 461 - Dropbear-v2014.65_missing_newkeys_introspection.pml:337 - [fsm_state = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][461] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 12;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 266: // STATE 462 - Dropbear-v2014.65_missing_newkeys_introspection.pml:338 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][462] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 267: // STATE 463 - Dropbear-v2014.65_missing_newkeys_introspection.pml:339 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][463] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 268: // STATE 464 - Dropbear-v2014.65_missing_newkeys_introspection.pml:340 - [fsm_state = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][464] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 12;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 269: // STATE 465 - Dropbear-v2014.65_missing_newkeys_introspection.pml:341 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][465] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 270: // STATE 466 - Dropbear-v2014.65_missing_newkeys_introspection.pml:342 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][466] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 271: // STATE 467 - Dropbear-v2014.65_missing_newkeys_introspection.pml:343 - [fsm_state = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][467] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 12;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 272: // STATE 468 - Dropbear-v2014.65_missing_newkeys_introspection.pml:344 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][468] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 273: // STATE 469 - Dropbear-v2014.65_missing_newkeys_introspection.pml:345 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][469] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 274: // STATE 470 - Dropbear-v2014.65_missing_newkeys_introspection.pml:346 - [fsm_state = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][470] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 12;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 275: // STATE 471 - Dropbear-v2014.65_missing_newkeys_introspection.pml:347 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][471] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 276: // STATE 472 - Dropbear-v2014.65_missing_newkeys_introspection.pml:348 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][472] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 277: // STATE 473 - Dropbear-v2014.65_missing_newkeys_introspection.pml:349 - [fsm_state = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][473] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 11;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 278: // STATE 479 - Dropbear-v2014.65_missing_newkeys_introspection.pml:353 - [((fsm_state==11))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][479] = 1;
		if (!((now.fsm_state==11)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 279: // STATE 480 - Dropbear-v2014.65_missing_newkeys_introspection.pml:355 - [((input==26))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][480] = 1;
		if (!((now.input==26)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 280: // STATE 481 - Dropbear-v2014.65_missing_newkeys_introspection.pml:356 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][481] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 281: // STATE 482 - Dropbear-v2014.65_missing_newkeys_introspection.pml:357 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][482] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 282: // STATE 483 - Dropbear-v2014.65_missing_newkeys_introspection.pml:358 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][483] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 283: // STATE 484 - Dropbear-v2014.65_missing_newkeys_introspection.pml:359 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][484] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 284: // STATE 485 - Dropbear-v2014.65_missing_newkeys_introspection.pml:360 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][485] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 285: // STATE 486 - Dropbear-v2014.65_missing_newkeys_introspection.pml:361 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][486] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 286: // STATE 487 - Dropbear-v2014.65_missing_newkeys_introspection.pml:362 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][487] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 287: // STATE 488 - Dropbear-v2014.65_missing_newkeys_introspection.pml:363 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][488] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 288: // STATE 489 - Dropbear-v2014.65_missing_newkeys_introspection.pml:364 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][489] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 289: // STATE 490 - Dropbear-v2014.65_missing_newkeys_introspection.pml:365 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][490] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 290: // STATE 491 - Dropbear-v2014.65_missing_newkeys_introspection.pml:366 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][491] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 291: // STATE 492 - Dropbear-v2014.65_missing_newkeys_introspection.pml:367 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][492] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 292: // STATE 493 - Dropbear-v2014.65_missing_newkeys_introspection.pml:368 - [fsm_state = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][493] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 11;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 293: // STATE 494 - Dropbear-v2014.65_missing_newkeys_introspection.pml:369 - [output = 10] (0:0:1 - 1)
		IfNotBlocked
		reached[0][494] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 10;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 294: // STATE 495 - Dropbear-v2014.65_missing_newkeys_introspection.pml:370 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][495] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 295: // STATE 496 - Dropbear-v2014.65_missing_newkeys_introspection.pml:371 - [fsm_state = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][496] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 11;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 296: // STATE 497 - Dropbear-v2014.65_missing_newkeys_introspection.pml:372 - [output = 4] (0:0:1 - 1)
		IfNotBlocked
		reached[0][497] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 4;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 297: // STATE 498 - Dropbear-v2014.65_missing_newkeys_introspection.pml:373 - [((input==14))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][498] = 1;
		if (!((now.input==14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 298: // STATE 499 - Dropbear-v2014.65_missing_newkeys_introspection.pml:374 - [fsm_state = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][499] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 11;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 299: // STATE 500 - Dropbear-v2014.65_missing_newkeys_introspection.pml:375 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][500] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 300: // STATE 501 - Dropbear-v2014.65_missing_newkeys_introspection.pml:376 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][501] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 301: // STATE 502 - Dropbear-v2014.65_missing_newkeys_introspection.pml:377 - [fsm_state = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][502] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 11;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 302: // STATE 503 - Dropbear-v2014.65_missing_newkeys_introspection.pml:378 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][503] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 303: // STATE 504 - Dropbear-v2014.65_missing_newkeys_introspection.pml:379 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][504] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 304: // STATE 505 - Dropbear-v2014.65_missing_newkeys_introspection.pml:380 - [fsm_state = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][505] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 11;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 305: // STATE 506 - Dropbear-v2014.65_missing_newkeys_introspection.pml:381 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][506] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 306: // STATE 507 - Dropbear-v2014.65_missing_newkeys_introspection.pml:382 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][507] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 307: // STATE 508 - Dropbear-v2014.65_missing_newkeys_introspection.pml:383 - [fsm_state = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][508] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 11;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 308: // STATE 509 - Dropbear-v2014.65_missing_newkeys_introspection.pml:384 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][509] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 309: // STATE 510 - Dropbear-v2014.65_missing_newkeys_introspection.pml:385 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][510] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 310: // STATE 511 - Dropbear-v2014.65_missing_newkeys_introspection.pml:386 - [fsm_state = 10] (0:0:1 - 1)
		IfNotBlocked
		reached[0][511] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 10;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 311: // STATE 512 - Dropbear-v2014.65_missing_newkeys_introspection.pml:387 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][512] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 312: // STATE 513 - Dropbear-v2014.65_missing_newkeys_introspection.pml:388 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][513] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 313: // STATE 514 - Dropbear-v2014.65_missing_newkeys_introspection.pml:389 - [fsm_state = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][514] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 9;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 314: // STATE 515 - Dropbear-v2014.65_missing_newkeys_introspection.pml:390 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][515] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 315: // STATE 516 - Dropbear-v2014.65_missing_newkeys_introspection.pml:391 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][516] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 316: // STATE 517 - Dropbear-v2014.65_missing_newkeys_introspection.pml:392 - [fsm_state = 8] (0:0:1 - 1)
		IfNotBlocked
		reached[0][517] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 8;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 317: // STATE 518 - Dropbear-v2014.65_missing_newkeys_introspection.pml:393 - [output = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][518] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 9;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 318: // STATE 523 - Dropbear-v2014.65_missing_newkeys_introspection.pml:396 - [((fsm_state==10))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][523] = 1;
		if (!((now.fsm_state==10)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 319: // STATE 524 - Dropbear-v2014.65_missing_newkeys_introspection.pml:398 - [((input==26))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][524] = 1;
		if (!((now.input==26)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 320: // STATE 525 - Dropbear-v2014.65_missing_newkeys_introspection.pml:399 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][525] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 321: // STATE 526 - Dropbear-v2014.65_missing_newkeys_introspection.pml:400 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][526] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 322: // STATE 527 - Dropbear-v2014.65_missing_newkeys_introspection.pml:401 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][527] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 323: // STATE 528 - Dropbear-v2014.65_missing_newkeys_introspection.pml:402 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][528] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 324: // STATE 529 - Dropbear-v2014.65_missing_newkeys_introspection.pml:403 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][529] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 325: // STATE 530 - Dropbear-v2014.65_missing_newkeys_introspection.pml:404 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][530] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 326: // STATE 531 - Dropbear-v2014.65_missing_newkeys_introspection.pml:405 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][531] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 327: // STATE 532 - Dropbear-v2014.65_missing_newkeys_introspection.pml:406 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][532] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 328: // STATE 533 - Dropbear-v2014.65_missing_newkeys_introspection.pml:407 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][533] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 329: // STATE 534 - Dropbear-v2014.65_missing_newkeys_introspection.pml:408 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][534] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 330: // STATE 535 - Dropbear-v2014.65_missing_newkeys_introspection.pml:409 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][535] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 331: // STATE 536 - Dropbear-v2014.65_missing_newkeys_introspection.pml:410 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][536] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 332: // STATE 537 - Dropbear-v2014.65_missing_newkeys_introspection.pml:411 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][537] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 333: // STATE 538 - Dropbear-v2014.65_missing_newkeys_introspection.pml:412 - [output = 13] (0:0:1 - 1)
		IfNotBlocked
		reached[0][538] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 13;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 334: // STATE 539 - Dropbear-v2014.65_missing_newkeys_introspection.pml:413 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][539] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 335: // STATE 540 - Dropbear-v2014.65_missing_newkeys_introspection.pml:414 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][540] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 336: // STATE 541 - Dropbear-v2014.65_missing_newkeys_introspection.pml:415 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][541] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 337: // STATE 542 - Dropbear-v2014.65_missing_newkeys_introspection.pml:416 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][542] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 338: // STATE 543 - Dropbear-v2014.65_missing_newkeys_introspection.pml:417 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][543] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 339: // STATE 544 - Dropbear-v2014.65_missing_newkeys_introspection.pml:418 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][544] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 340: // STATE 545 - Dropbear-v2014.65_missing_newkeys_introspection.pml:419 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][545] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 341: // STATE 546 - Dropbear-v2014.65_missing_newkeys_introspection.pml:420 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][546] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 342: // STATE 547 - Dropbear-v2014.65_missing_newkeys_introspection.pml:421 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][547] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 343: // STATE 548 - Dropbear-v2014.65_missing_newkeys_introspection.pml:422 - [((input==14))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][548] = 1;
		if (!((now.input==14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 344: // STATE 549 - Dropbear-v2014.65_missing_newkeys_introspection.pml:423 - [fsm_state = 10] (0:0:1 - 1)
		IfNotBlocked
		reached[0][549] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 10;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 345: // STATE 550 - Dropbear-v2014.65_missing_newkeys_introspection.pml:424 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][550] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 346: // STATE 551 - Dropbear-v2014.65_missing_newkeys_introspection.pml:425 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][551] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 347: // STATE 552 - Dropbear-v2014.65_missing_newkeys_introspection.pml:426 - [fsm_state = 10] (0:0:1 - 1)
		IfNotBlocked
		reached[0][552] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 10;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 348: // STATE 553 - Dropbear-v2014.65_missing_newkeys_introspection.pml:427 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][553] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 349: // STATE 554 - Dropbear-v2014.65_missing_newkeys_introspection.pml:428 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][554] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 350: // STATE 555 - Dropbear-v2014.65_missing_newkeys_introspection.pml:429 - [fsm_state = 10] (0:0:1 - 1)
		IfNotBlocked
		reached[0][555] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 10;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 351: // STATE 556 - Dropbear-v2014.65_missing_newkeys_introspection.pml:430 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][556] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 352: // STATE 557 - Dropbear-v2014.65_missing_newkeys_introspection.pml:431 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][557] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 353: // STATE 558 - Dropbear-v2014.65_missing_newkeys_introspection.pml:432 - [fsm_state = 10] (0:0:1 - 1)
		IfNotBlocked
		reached[0][558] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 10;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 354: // STATE 559 - Dropbear-v2014.65_missing_newkeys_introspection.pml:433 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][559] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 355: // STATE 560 - Dropbear-v2014.65_missing_newkeys_introspection.pml:434 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][560] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 356: // STATE 561 - Dropbear-v2014.65_missing_newkeys_introspection.pml:435 - [fsm_state = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][561] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 9;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 357: // STATE 567 - Dropbear-v2014.65_missing_newkeys_introspection.pml:439 - [((fsm_state==9))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][567] = 1;
		if (!((now.fsm_state==9)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 358: // STATE 568 - Dropbear-v2014.65_missing_newkeys_introspection.pml:441 - [((input==26))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][568] = 1;
		if (!((now.input==26)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 359: // STATE 569 - Dropbear-v2014.65_missing_newkeys_introspection.pml:442 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][569] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 360: // STATE 570 - Dropbear-v2014.65_missing_newkeys_introspection.pml:443 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][570] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 361: // STATE 571 - Dropbear-v2014.65_missing_newkeys_introspection.pml:444 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][571] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 362: // STATE 572 - Dropbear-v2014.65_missing_newkeys_introspection.pml:445 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][572] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 363: // STATE 573 - Dropbear-v2014.65_missing_newkeys_introspection.pml:446 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][573] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 364: // STATE 574 - Dropbear-v2014.65_missing_newkeys_introspection.pml:447 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][574] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 365: // STATE 575 - Dropbear-v2014.65_missing_newkeys_introspection.pml:448 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][575] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 366: // STATE 576 - Dropbear-v2014.65_missing_newkeys_introspection.pml:449 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][576] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 367: // STATE 577 - Dropbear-v2014.65_missing_newkeys_introspection.pml:450 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][577] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 368: // STATE 578 - Dropbear-v2014.65_missing_newkeys_introspection.pml:451 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][578] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 369: // STATE 579 - Dropbear-v2014.65_missing_newkeys_introspection.pml:452 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][579] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 370: // STATE 580 - Dropbear-v2014.65_missing_newkeys_introspection.pml:453 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][580] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 371: // STATE 581 - Dropbear-v2014.65_missing_newkeys_introspection.pml:454 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][581] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 372: // STATE 582 - Dropbear-v2014.65_missing_newkeys_introspection.pml:455 - [output = 13] (0:0:1 - 1)
		IfNotBlocked
		reached[0][582] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 13;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 373: // STATE 583 - Dropbear-v2014.65_missing_newkeys_introspection.pml:456 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][583] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 374: // STATE 584 - Dropbear-v2014.65_missing_newkeys_introspection.pml:457 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][584] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 375: // STATE 585 - Dropbear-v2014.65_missing_newkeys_introspection.pml:458 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][585] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 376: // STATE 586 - Dropbear-v2014.65_missing_newkeys_introspection.pml:459 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][586] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 377: // STATE 587 - Dropbear-v2014.65_missing_newkeys_introspection.pml:460 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][587] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 378: // STATE 588 - Dropbear-v2014.65_missing_newkeys_introspection.pml:461 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][588] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 379: // STATE 589 - Dropbear-v2014.65_missing_newkeys_introspection.pml:462 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][589] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 380: // STATE 590 - Dropbear-v2014.65_missing_newkeys_introspection.pml:463 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][590] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 381: // STATE 591 - Dropbear-v2014.65_missing_newkeys_introspection.pml:464 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][591] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 382: // STATE 592 - Dropbear-v2014.65_missing_newkeys_introspection.pml:465 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][592] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 383: // STATE 593 - Dropbear-v2014.65_missing_newkeys_introspection.pml:466 - [fsm_state = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][593] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 12;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 384: // STATE 594 - Dropbear-v2014.65_missing_newkeys_introspection.pml:467 - [output = 8] (0:0:1 - 1)
		IfNotBlocked
		reached[0][594] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 8;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 385: // STATE 595 - Dropbear-v2014.65_missing_newkeys_introspection.pml:468 - [printf('Output: %e\\n',output)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][595] = 1;
		Printf("Output: %e\n", now.output);
		_m = 3; goto P999; /* 0 */
	case 386: // STATE 634 - Dropbear-v2014.65_missing_newkeys_introspection.pml:13 - [D_STEP13]
		IfNotBlocked

		reached[0][634] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_595_0: /* 2 */
		now.dealt = 0;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
S_631_0: /* 2 */
S_596_0: /* 2 */
		if (!((now.dfa_state==4)))
			goto S_631_1;
S_605_0: /* 2 */
S_597_0: /* 2 */
		if (!((now.output==4)))
			goto S_605_1;
S_598_0: /* 2 */
		now.dfa_state = 2;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_599_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_606_0;
S_605_1: /* 3 */
S_600_0: /* 2 */
		if (!((((((((((((((((((((((((((now.output==26)||(now.output==24))||(now.output==12))||(now.output==11))||(now.output==21))||(now.output==10))||(now.output==9))||(now.output==8))||(now.output==7))||(now.output==5))||(now.output==18))||(now.output==17))||(now.output==16))||(now.output==15))||(now.output==14))||(now.output==25))||(now.output==13))||(now.output==23))||(now.output==22))||(now.output==20))||(now.output==19))||(now.output==6))||(now.output==3))||(now.output==2))||(now.output==1))))
			goto S_605_2;
S_601_0: /* 2 */
		now.dfa_state = 4;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_602_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_606_0;
S_605_2: /* 3 */
S_603_0: /* 2 */
		/* else */;
S_604_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_606_0;
S_605_3: /* 3 */
		Uerror("blocking sel in d_step (nr.16, near line 17)");
S_606_0: /* 2 */
		goto S_632_0;
S_631_1: /* 3 */
S_607_0: /* 2 */
		if (!((now.dfa_state==3)))
			goto S_631_2;
S_608_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_632_0;
S_631_2: /* 3 */
S_609_0: /* 2 */
		if (!((now.dfa_state==2)))
			goto S_631_3;
S_618_0: /* 2 */
S_610_0: /* 2 */
		if (!((now.output==12)))
			goto S_618_1;
S_611_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_612_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_619_0;
S_618_1: /* 3 */
S_613_0: /* 2 */
		if (!((((((((((((((((((((((((((now.output==26)||(now.output==24))||(now.output==11))||(now.output==21))||(now.output==10))||(now.output==9))||(now.output==8))||(now.output==7))||(now.output==5))||(now.output==4))||(now.output==18))||(now.output==17))||(now.output==16))||(now.output==15))||(now.output==14))||(now.output==25))||(now.output==13))||(now.output==23))||(now.output==22))||(now.output==20))||(now.output==19))||(now.output==6))||(now.output==3))||(now.output==2))||(now.output==1))))
			goto S_618_2;
S_614_0: /* 2 */
		now.dfa_state = 2;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_615_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_619_0;
S_618_2: /* 3 */
S_616_0: /* 2 */
		/* else */;
S_617_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_619_0;
S_618_3: /* 3 */
		Uerror("blocking sel in d_step (nr.17, near line 29)");
S_619_0: /* 2 */
		goto S_632_0;
S_631_3: /* 3 */
S_620_0: /* 2 */
		if (!((now.dfa_state==1)))
			goto S_631_4;
S_629_0: /* 2 */
S_621_0: /* 2 */
		if (!((((now.output==7)||(now.output==9))||(now.output==6))))
			goto S_629_1;
S_622_0: /* 2 */
		now.dfa_state = 3;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_623_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_630_0;
S_629_1: /* 3 */
S_624_0: /* 2 */
		if (!(((((((((((((((((((((((now.output==26)||(now.output==24))||(now.output==12))||(now.output==11))||(now.output==10))||(now.output==8))||(now.output==5))||(now.output==4))||(now.output==18))||(now.output==17))||(now.output==16))||(now.output==15))||(now.output==14))||(now.output==25))||(now.output==13))||(now.output==23))||(now.output==22))||(now.output==20))||(now.output==19))||(now.output==3))||(now.output==2))||(now.output==1))))
			goto S_629_2;
S_625_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_626_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_630_0;
S_629_2: /* 3 */
S_627_0: /* 2 */
		/* else */;
S_628_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_630_0;
S_629_3: /* 3 */
		Uerror("blocking sel in d_step (nr.18, near line 39)");
S_630_0: /* 2 */
		goto S_632_0;
S_631_4: /* 3 */
		Uerror("blocking sel in d_step (nr.19, near line 15)");
S_632_0: /* 2 */
		goto S_638_0;
S_638_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 387: // STATE 635 - Dropbear-v2014.65_missing_newkeys_introspection.pml:51 - [((dealt==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][635] = 1;
		if (!((((int)now.dealt)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 388: // STATE 642 - Dropbear-v2014.65_missing_newkeys_introspection.pml:470 - [printf('DFA State: %e\\n',dfa_state)] (0:0:0 - 2)
		IfNotBlocked
		reached[0][642] = 1;
		Printf("DFA State: %e\n", now.dfa_state);
		_m = 3; goto P999; /* 0 */
	case 389: // STATE 643 - Dropbear-v2014.65_missing_newkeys_introspection.pml:471 - [output = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][643] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 2;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 390: // STATE 644 - Dropbear-v2014.65_missing_newkeys_introspection.pml:472 - [((input==14))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][644] = 1;
		if (!((now.input==14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 391: // STATE 645 - Dropbear-v2014.65_missing_newkeys_introspection.pml:473 - [fsm_state = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][645] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 9;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 392: // STATE 646 - Dropbear-v2014.65_missing_newkeys_introspection.pml:474 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][646] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 393: // STATE 647 - Dropbear-v2014.65_missing_newkeys_introspection.pml:475 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][647] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 394: // STATE 648 - Dropbear-v2014.65_missing_newkeys_introspection.pml:476 - [fsm_state = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][648] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 9;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 395: // STATE 649 - Dropbear-v2014.65_missing_newkeys_introspection.pml:477 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][649] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 396: // STATE 650 - Dropbear-v2014.65_missing_newkeys_introspection.pml:478 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][650] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 397: // STATE 651 - Dropbear-v2014.65_missing_newkeys_introspection.pml:479 - [fsm_state = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][651] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 9;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 398: // STATE 652 - Dropbear-v2014.65_missing_newkeys_introspection.pml:480 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][652] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 399: // STATE 653 - Dropbear-v2014.65_missing_newkeys_introspection.pml:481 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][653] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 400: // STATE 654 - Dropbear-v2014.65_missing_newkeys_introspection.pml:482 - [fsm_state = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][654] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 9;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 401: // STATE 655 - Dropbear-v2014.65_missing_newkeys_introspection.pml:483 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][655] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 402: // STATE 660 - Dropbear-v2014.65_missing_newkeys_introspection.pml:486 - [((fsm_state==8))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][660] = 1;
		if (!((now.fsm_state==8)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 403: // STATE 661 - Dropbear-v2014.65_missing_newkeys_introspection.pml:488 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][661] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 404: // STATE 662 - Dropbear-v2014.65_missing_newkeys_introspection.pml:489 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][662] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 405: // STATE 663 - Dropbear-v2014.65_missing_newkeys_introspection.pml:490 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][663] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 406: // STATE 664 - Dropbear-v2014.65_missing_newkeys_introspection.pml:491 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][664] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 407: // STATE 665 - Dropbear-v2014.65_missing_newkeys_introspection.pml:492 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][665] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 408: // STATE 666 - Dropbear-v2014.65_missing_newkeys_introspection.pml:493 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][666] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 409: // STATE 667 - Dropbear-v2014.65_missing_newkeys_introspection.pml:494 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][667] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 410: // STATE 668 - Dropbear-v2014.65_missing_newkeys_introspection.pml:495 - [fsm_state = 10] (0:0:1 - 1)
		IfNotBlocked
		reached[0][668] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 10;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 411: // STATE 669 - Dropbear-v2014.65_missing_newkeys_introspection.pml:496 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][669] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 412: // STATE 670 - Dropbear-v2014.65_missing_newkeys_introspection.pml:497 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][670] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 413: // STATE 671 - Dropbear-v2014.65_missing_newkeys_introspection.pml:498 - [fsm_state = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[0][671] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 9;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 414: // STATE 672 - Dropbear-v2014.65_missing_newkeys_introspection.pml:499 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][672] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 415: // STATE 673 - Dropbear-v2014.65_missing_newkeys_introspection.pml:500 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][673] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 416: // STATE 674 - Dropbear-v2014.65_missing_newkeys_introspection.pml:501 - [fsm_state = 8] (0:0:1 - 1)
		IfNotBlocked
		reached[0][674] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 8;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 417: // STATE 676 - Dropbear-v2014.65_missing_newkeys_introspection.pml:503 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][676] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 418: // STATE 677 - Dropbear-v2014.65_missing_newkeys_introspection.pml:504 - [fsm_state = 8] (0:0:1 - 1)
		IfNotBlocked
		reached[0][677] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 8;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 419: // STATE 678 - Dropbear-v2014.65_missing_newkeys_introspection.pml:505 - [output = 4] (0:0:1 - 1)
		IfNotBlocked
		reached[0][678] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 4;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 420: // STATE 679 - Dropbear-v2014.65_missing_newkeys_introspection.pml:506 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][679] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 421: // STATE 680 - Dropbear-v2014.65_missing_newkeys_introspection.pml:507 - [fsm_state = 8] (0:0:1 - 1)
		IfNotBlocked
		reached[0][680] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 8;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 422: // STATE 681 - Dropbear-v2014.65_missing_newkeys_introspection.pml:508 - [output = 4] (0:0:1 - 1)
		IfNotBlocked
		reached[0][681] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 4;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 423: // STATE 682 - Dropbear-v2014.65_missing_newkeys_introspection.pml:509 - [((input==14))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][682] = 1;
		if (!((now.input==14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 424: // STATE 683 - Dropbear-v2014.65_missing_newkeys_introspection.pml:510 - [fsm_state = 8] (0:0:1 - 1)
		IfNotBlocked
		reached[0][683] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 8;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 425: // STATE 684 - Dropbear-v2014.65_missing_newkeys_introspection.pml:511 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][684] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 426: // STATE 685 - Dropbear-v2014.65_missing_newkeys_introspection.pml:512 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][685] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 427: // STATE 686 - Dropbear-v2014.65_missing_newkeys_introspection.pml:513 - [fsm_state = 8] (0:0:1 - 1)
		IfNotBlocked
		reached[0][686] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 8;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 428: // STATE 687 - Dropbear-v2014.65_missing_newkeys_introspection.pml:514 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][687] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 429: // STATE 688 - Dropbear-v2014.65_missing_newkeys_introspection.pml:515 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][688] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 430: // STATE 689 - Dropbear-v2014.65_missing_newkeys_introspection.pml:516 - [fsm_state = 8] (0:0:1 - 1)
		IfNotBlocked
		reached[0][689] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 8;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 431: // STATE 691 - Dropbear-v2014.65_missing_newkeys_introspection.pml:518 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][691] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 432: // STATE 692 - Dropbear-v2014.65_missing_newkeys_introspection.pml:519 - [fsm_state = 8] (0:0:1 - 1)
		IfNotBlocked
		reached[0][692] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 8;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 433: // STATE 693 - Dropbear-v2014.65_missing_newkeys_introspection.pml:520 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][693] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 434: // STATE 694 - Dropbear-v2014.65_missing_newkeys_introspection.pml:521 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][694] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 435: // STATE 695 - Dropbear-v2014.65_missing_newkeys_introspection.pml:522 - [fsm_state = 8] (0:0:1 - 1)
		IfNotBlocked
		reached[0][695] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 8;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 436: // STATE 696 - Dropbear-v2014.65_missing_newkeys_introspection.pml:523 - [output = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][696] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 5;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 437: // STATE 697 - Dropbear-v2014.65_missing_newkeys_introspection.pml:524 - [((input==26))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][697] = 1;
		if (!((now.input==26)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 438: // STATE 698 - Dropbear-v2014.65_missing_newkeys_introspection.pml:525 - [fsm_state = 7] (0:0:1 - 1)
		IfNotBlocked
		reached[0][698] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 7;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 439: // STATE 699 - Dropbear-v2014.65_missing_newkeys_introspection.pml:526 - [output = 7] (0:0:1 - 1)
		IfNotBlocked
		reached[0][699] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 7;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 440: // STATE 704 - Dropbear-v2014.65_missing_newkeys_introspection.pml:529 - [((fsm_state==7))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][704] = 1;
		if (!((now.fsm_state==7)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 441: // STATE 705 - Dropbear-v2014.65_missing_newkeys_introspection.pml:531 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][705] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 442: // STATE 706 - Dropbear-v2014.65_missing_newkeys_introspection.pml:532 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][706] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 443: // STATE 707 - Dropbear-v2014.65_missing_newkeys_introspection.pml:533 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][707] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 444: // STATE 708 - Dropbear-v2014.65_missing_newkeys_introspection.pml:534 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][708] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 445: // STATE 709 - Dropbear-v2014.65_missing_newkeys_introspection.pml:535 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][709] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 446: // STATE 710 - Dropbear-v2014.65_missing_newkeys_introspection.pml:536 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][710] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 447: // STATE 711 - Dropbear-v2014.65_missing_newkeys_introspection.pml:537 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][711] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 448: // STATE 712 - Dropbear-v2014.65_missing_newkeys_introspection.pml:538 - [fsm_state = 8] (0:0:1 - 1)
		IfNotBlocked
		reached[0][712] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 8;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 449: // STATE 713 - Dropbear-v2014.65_missing_newkeys_introspection.pml:539 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][713] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 450: // STATE 714 - Dropbear-v2014.65_missing_newkeys_introspection.pml:540 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][714] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 451: // STATE 715 - Dropbear-v2014.65_missing_newkeys_introspection.pml:541 - [fsm_state = 7] (0:0:1 - 1)
		IfNotBlocked
		reached[0][715] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 7;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 452: // STATE 717 - Dropbear-v2014.65_missing_newkeys_introspection.pml:543 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][717] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 453: // STATE 718 - Dropbear-v2014.65_missing_newkeys_introspection.pml:544 - [fsm_state = 7] (0:0:1 - 1)
		IfNotBlocked
		reached[0][718] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 7;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 454: // STATE 719 - Dropbear-v2014.65_missing_newkeys_introspection.pml:545 - [output = 4] (0:0:1 - 1)
		IfNotBlocked
		reached[0][719] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 4;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 455: // STATE 720 - Dropbear-v2014.65_missing_newkeys_introspection.pml:546 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][720] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 456: // STATE 721 - Dropbear-v2014.65_missing_newkeys_introspection.pml:547 - [fsm_state = 7] (0:0:1 - 1)
		IfNotBlocked
		reached[0][721] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 7;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 457: // STATE 722 - Dropbear-v2014.65_missing_newkeys_introspection.pml:548 - [output = 4] (0:0:1 - 1)
		IfNotBlocked
		reached[0][722] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 4;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 458: // STATE 723 - Dropbear-v2014.65_missing_newkeys_introspection.pml:549 - [((input==26))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][723] = 1;
		if (!((now.input==26)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 459: // STATE 724 - Dropbear-v2014.65_missing_newkeys_introspection.pml:550 - [fsm_state = 7] (0:0:1 - 1)
		IfNotBlocked
		reached[0][724] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 7;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 460: // STATE 725 - Dropbear-v2014.65_missing_newkeys_introspection.pml:551 - [output = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][725] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 1;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 461: // STATE 726 - Dropbear-v2014.65_missing_newkeys_introspection.pml:552 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][726] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 462: // STATE 727 - Dropbear-v2014.65_missing_newkeys_introspection.pml:553 - [fsm_state = 7] (0:0:1 - 1)
		IfNotBlocked
		reached[0][727] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 7;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 463: // STATE 729 - Dropbear-v2014.65_missing_newkeys_introspection.pml:555 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][729] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 464: // STATE 730 - Dropbear-v2014.65_missing_newkeys_introspection.pml:556 - [fsm_state = 7] (0:0:1 - 1)
		IfNotBlocked
		reached[0][730] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 7;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 465: // STATE 732 - Dropbear-v2014.65_missing_newkeys_introspection.pml:558 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][732] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 466: // STATE 733 - Dropbear-v2014.65_missing_newkeys_introspection.pml:559 - [fsm_state = 6] (0:0:1 - 1)
		IfNotBlocked
		reached[0][733] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 6;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 467: // STATE 734 - Dropbear-v2014.65_missing_newkeys_introspection.pml:560 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][734] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 468: // STATE 735 - Dropbear-v2014.65_missing_newkeys_introspection.pml:561 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][735] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 469: // STATE 736 - Dropbear-v2014.65_missing_newkeys_introspection.pml:562 - [fsm_state = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][736] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 5;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 470: // STATE 737 - Dropbear-v2014.65_missing_newkeys_introspection.pml:563 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][737] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 471: // STATE 738 - Dropbear-v2014.65_missing_newkeys_introspection.pml:564 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][738] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 472: // STATE 739 - Dropbear-v2014.65_missing_newkeys_introspection.pml:565 - [fsm_state = 4] (0:0:1 - 1)
		IfNotBlocked
		reached[0][739] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 4;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 473: // STATE 740 - Dropbear-v2014.65_missing_newkeys_introspection.pml:566 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][740] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 474: // STATE 741 - Dropbear-v2014.65_missing_newkeys_introspection.pml:567 - [((input==14))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][741] = 1;
		if (!((now.input==14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 475: // STATE 742 - Dropbear-v2014.65_missing_newkeys_introspection.pml:568 - [fsm_state = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][742] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 3;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 476: // STATE 743 - Dropbear-v2014.65_missing_newkeys_introspection.pml:569 - [output = 6] (0:0:1 - 1)
		IfNotBlocked
		reached[0][743] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 6;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 477: // STATE 748 - Dropbear-v2014.65_missing_newkeys_introspection.pml:572 - [((fsm_state==6))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][748] = 1;
		if (!((now.fsm_state==6)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 478: // STATE 749 - Dropbear-v2014.65_missing_newkeys_introspection.pml:574 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][749] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 479: // STATE 750 - Dropbear-v2014.65_missing_newkeys_introspection.pml:575 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][750] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 480: // STATE 751 - Dropbear-v2014.65_missing_newkeys_introspection.pml:576 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][751] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 481: // STATE 752 - Dropbear-v2014.65_missing_newkeys_introspection.pml:577 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][752] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 482: // STATE 753 - Dropbear-v2014.65_missing_newkeys_introspection.pml:578 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][753] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 483: // STATE 754 - Dropbear-v2014.65_missing_newkeys_introspection.pml:579 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][754] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 484: // STATE 755 - Dropbear-v2014.65_missing_newkeys_introspection.pml:580 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][755] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 485: // STATE 756 - Dropbear-v2014.65_missing_newkeys_introspection.pml:581 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][756] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 486: // STATE 757 - Dropbear-v2014.65_missing_newkeys_introspection.pml:582 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][757] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 487: // STATE 758 - Dropbear-v2014.65_missing_newkeys_introspection.pml:583 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][758] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 488: // STATE 759 - Dropbear-v2014.65_missing_newkeys_introspection.pml:584 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][759] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 489: // STATE 760 - Dropbear-v2014.65_missing_newkeys_introspection.pml:585 - [output = 13] (0:0:1 - 1)
		IfNotBlocked
		reached[0][760] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 13;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 490: // STATE 761 - Dropbear-v2014.65_missing_newkeys_introspection.pml:586 - [((input==14))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][761] = 1;
		if (!((now.input==14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 491: // STATE 762 - Dropbear-v2014.65_missing_newkeys_introspection.pml:587 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][762] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 492: // STATE 763 - Dropbear-v2014.65_missing_newkeys_introspection.pml:588 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][763] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 493: // STATE 764 - Dropbear-v2014.65_missing_newkeys_introspection.pml:589 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][764] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 494: // STATE 765 - Dropbear-v2014.65_missing_newkeys_introspection.pml:590 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][765] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 495: // STATE 766 - Dropbear-v2014.65_missing_newkeys_introspection.pml:591 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][766] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 496: // STATE 767 - Dropbear-v2014.65_missing_newkeys_introspection.pml:592 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][767] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 497: // STATE 768 - Dropbear-v2014.65_missing_newkeys_introspection.pml:593 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][768] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 498: // STATE 769 - Dropbear-v2014.65_missing_newkeys_introspection.pml:594 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][769] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 499: // STATE 770 - Dropbear-v2014.65_missing_newkeys_introspection.pml:595 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][770] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 500: // STATE 771 - Dropbear-v2014.65_missing_newkeys_introspection.pml:596 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][771] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 501: // STATE 772 - Dropbear-v2014.65_missing_newkeys_introspection.pml:597 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][772] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 502: // STATE 773 - Dropbear-v2014.65_missing_newkeys_introspection.pml:598 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][773] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 503: // STATE 774 - Dropbear-v2014.65_missing_newkeys_introspection.pml:599 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][774] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 504: // STATE 775 - Dropbear-v2014.65_missing_newkeys_introspection.pml:600 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][775] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 505: // STATE 776 - Dropbear-v2014.65_missing_newkeys_introspection.pml:601 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][776] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 506: // STATE 777 - Dropbear-v2014.65_missing_newkeys_introspection.pml:602 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][777] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 507: // STATE 778 - Dropbear-v2014.65_missing_newkeys_introspection.pml:603 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][778] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 508: // STATE 779 - Dropbear-v2014.65_missing_newkeys_introspection.pml:604 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][779] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 509: // STATE 780 - Dropbear-v2014.65_missing_newkeys_introspection.pml:605 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][780] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 510: // STATE 781 - Dropbear-v2014.65_missing_newkeys_introspection.pml:606 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][781] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 511: // STATE 782 - Dropbear-v2014.65_missing_newkeys_introspection.pml:607 - [((input==26))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][782] = 1;
		if (!((now.input==26)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 512: // STATE 783 - Dropbear-v2014.65_missing_newkeys_introspection.pml:608 - [fsm_state = 6] (0:0:1 - 1)
		IfNotBlocked
		reached[0][783] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 6;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 513: // STATE 784 - Dropbear-v2014.65_missing_newkeys_introspection.pml:609 - [output = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][784] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 1;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 514: // STATE 785 - Dropbear-v2014.65_missing_newkeys_introspection.pml:610 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][785] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 515: // STATE 786 - Dropbear-v2014.65_missing_newkeys_introspection.pml:611 - [fsm_state = 4] (0:0:1 - 1)
		IfNotBlocked
		reached[0][786] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 4;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 516: // STATE 792 - Dropbear-v2014.65_missing_newkeys_introspection.pml:615 - [((fsm_state==5))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][792] = 1;
		if (!((now.fsm_state==5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 517: // STATE 793 - Dropbear-v2014.65_missing_newkeys_introspection.pml:617 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][793] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 518: // STATE 794 - Dropbear-v2014.65_missing_newkeys_introspection.pml:618 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][794] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 519: // STATE 795 - Dropbear-v2014.65_missing_newkeys_introspection.pml:619 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][795] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 520: // STATE 796 - Dropbear-v2014.65_missing_newkeys_introspection.pml:620 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][796] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 521: // STATE 797 - Dropbear-v2014.65_missing_newkeys_introspection.pml:621 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][797] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 522: // STATE 798 - Dropbear-v2014.65_missing_newkeys_introspection.pml:622 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][798] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 523: // STATE 799 - Dropbear-v2014.65_missing_newkeys_introspection.pml:623 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][799] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 524: // STATE 800 - Dropbear-v2014.65_missing_newkeys_introspection.pml:624 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][800] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 525: // STATE 801 - Dropbear-v2014.65_missing_newkeys_introspection.pml:625 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][801] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 526: // STATE 802 - Dropbear-v2014.65_missing_newkeys_introspection.pml:626 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][802] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 527: // STATE 803 - Dropbear-v2014.65_missing_newkeys_introspection.pml:627 - [fsm_state = 8] (0:0:1 - 1)
		IfNotBlocked
		reached[0][803] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 8;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 528: // STATE 805 - Dropbear-v2014.65_missing_newkeys_introspection.pml:629 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][805] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 529: // STATE 806 - Dropbear-v2014.65_missing_newkeys_introspection.pml:630 - [fsm_state = 6] (0:0:1 - 1)
		IfNotBlocked
		reached[0][806] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 6;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 530: // STATE 807 - Dropbear-v2014.65_missing_newkeys_introspection.pml:631 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][807] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 531: // STATE 808 - Dropbear-v2014.65_missing_newkeys_introspection.pml:632 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][808] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 532: // STATE 809 - Dropbear-v2014.65_missing_newkeys_introspection.pml:633 - [fsm_state = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][809] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 5;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 533: // STATE 811 - Dropbear-v2014.65_missing_newkeys_introspection.pml:635 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][811] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 534: // STATE 812 - Dropbear-v2014.65_missing_newkeys_introspection.pml:636 - [fsm_state = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][812] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 5;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 535: // STATE 813 - Dropbear-v2014.65_missing_newkeys_introspection.pml:637 - [output = 4] (0:0:1 - 1)
		IfNotBlocked
		reached[0][813] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 4;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 536: // STATE 814 - Dropbear-v2014.65_missing_newkeys_introspection.pml:638 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][814] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 537: // STATE 815 - Dropbear-v2014.65_missing_newkeys_introspection.pml:639 - [fsm_state = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][815] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 5;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 538: // STATE 816 - Dropbear-v2014.65_missing_newkeys_introspection.pml:640 - [output = 4] (0:0:1 - 1)
		IfNotBlocked
		reached[0][816] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 4;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 539: // STATE 817 - Dropbear-v2014.65_missing_newkeys_introspection.pml:641 - [((input==26))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][817] = 1;
		if (!((now.input==26)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 540: // STATE 818 - Dropbear-v2014.65_missing_newkeys_introspection.pml:642 - [fsm_state = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][818] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 5;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 541: // STATE 819 - Dropbear-v2014.65_missing_newkeys_introspection.pml:643 - [output = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][819] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 1;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 542: // STATE 820 - Dropbear-v2014.65_missing_newkeys_introspection.pml:644 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][820] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 543: // STATE 821 - Dropbear-v2014.65_missing_newkeys_introspection.pml:645 - [fsm_state = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][821] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 5;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 544: // STATE 823 - Dropbear-v2014.65_missing_newkeys_introspection.pml:647 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][823] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 545: // STATE 824 - Dropbear-v2014.65_missing_newkeys_introspection.pml:648 - [fsm_state = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[0][824] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 5;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 546: // STATE 826 - Dropbear-v2014.65_missing_newkeys_introspection.pml:650 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][826] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 547: // STATE 827 - Dropbear-v2014.65_missing_newkeys_introspection.pml:651 - [fsm_state = 4] (0:0:1 - 1)
		IfNotBlocked
		reached[0][827] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 4;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 548: // STATE 828 - Dropbear-v2014.65_missing_newkeys_introspection.pml:652 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][828] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 549: // STATE 829 - Dropbear-v2014.65_missing_newkeys_introspection.pml:653 - [((input==14))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][829] = 1;
		if (!((now.input==14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 550: // STATE 830 - Dropbear-v2014.65_missing_newkeys_introspection.pml:654 - [fsm_state = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][830] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 2;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 551: // STATE 831 - Dropbear-v2014.65_missing_newkeys_introspection.pml:655 - [output = 6] (0:0:1 - 1)
		IfNotBlocked
		reached[0][831] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 6;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 552: // STATE 836 - Dropbear-v2014.65_missing_newkeys_introspection.pml:658 - [((fsm_state==4))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][836] = 1;
		if (!((now.fsm_state==4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 553: // STATE 837 - Dropbear-v2014.65_missing_newkeys_introspection.pml:660 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][837] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 554: // STATE 838 - Dropbear-v2014.65_missing_newkeys_introspection.pml:661 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][838] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 555: // STATE 839 - Dropbear-v2014.65_missing_newkeys_introspection.pml:662 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][839] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 556: // STATE 840 - Dropbear-v2014.65_missing_newkeys_introspection.pml:663 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][840] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 557: // STATE 841 - Dropbear-v2014.65_missing_newkeys_introspection.pml:664 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][841] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 558: // STATE 842 - Dropbear-v2014.65_missing_newkeys_introspection.pml:665 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][842] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 559: // STATE 843 - Dropbear-v2014.65_missing_newkeys_introspection.pml:666 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][843] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 560: // STATE 844 - Dropbear-v2014.65_missing_newkeys_introspection.pml:667 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][844] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 561: // STATE 845 - Dropbear-v2014.65_missing_newkeys_introspection.pml:668 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][845] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 562: // STATE 846 - Dropbear-v2014.65_missing_newkeys_introspection.pml:669 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][846] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 563: // STATE 847 - Dropbear-v2014.65_missing_newkeys_introspection.pml:670 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][847] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 564: // STATE 848 - Dropbear-v2014.65_missing_newkeys_introspection.pml:671 - [output = 13] (0:0:1 - 1)
		IfNotBlocked
		reached[0][848] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 13;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 565: // STATE 849 - Dropbear-v2014.65_missing_newkeys_introspection.pml:672 - [((input==14))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][849] = 1;
		if (!((now.input==14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 566: // STATE 850 - Dropbear-v2014.65_missing_newkeys_introspection.pml:673 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][850] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 567: // STATE 851 - Dropbear-v2014.65_missing_newkeys_introspection.pml:674 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][851] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 568: // STATE 852 - Dropbear-v2014.65_missing_newkeys_introspection.pml:675 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][852] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 569: // STATE 853 - Dropbear-v2014.65_missing_newkeys_introspection.pml:676 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][853] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 570: // STATE 854 - Dropbear-v2014.65_missing_newkeys_introspection.pml:677 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][854] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 571: // STATE 855 - Dropbear-v2014.65_missing_newkeys_introspection.pml:678 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][855] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 572: // STATE 856 - Dropbear-v2014.65_missing_newkeys_introspection.pml:679 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][856] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 573: // STATE 857 - Dropbear-v2014.65_missing_newkeys_introspection.pml:680 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][857] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 574: // STATE 858 - Dropbear-v2014.65_missing_newkeys_introspection.pml:681 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][858] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 575: // STATE 859 - Dropbear-v2014.65_missing_newkeys_introspection.pml:682 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][859] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 576: // STATE 860 - Dropbear-v2014.65_missing_newkeys_introspection.pml:683 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][860] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 577: // STATE 861 - Dropbear-v2014.65_missing_newkeys_introspection.pml:684 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][861] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 578: // STATE 862 - Dropbear-v2014.65_missing_newkeys_introspection.pml:685 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][862] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 579: // STATE 863 - Dropbear-v2014.65_missing_newkeys_introspection.pml:686 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][863] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 580: // STATE 864 - Dropbear-v2014.65_missing_newkeys_introspection.pml:687 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][864] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 581: // STATE 865 - Dropbear-v2014.65_missing_newkeys_introspection.pml:688 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][865] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 582: // STATE 866 - Dropbear-v2014.65_missing_newkeys_introspection.pml:689 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][866] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 583: // STATE 867 - Dropbear-v2014.65_missing_newkeys_introspection.pml:690 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][867] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 584: // STATE 868 - Dropbear-v2014.65_missing_newkeys_introspection.pml:691 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][868] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 585: // STATE 869 - Dropbear-v2014.65_missing_newkeys_introspection.pml:692 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][869] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 586: // STATE 870 - Dropbear-v2014.65_missing_newkeys_introspection.pml:693 - [((input==26))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][870] = 1;
		if (!((now.input==26)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 587: // STATE 871 - Dropbear-v2014.65_missing_newkeys_introspection.pml:694 - [fsm_state = 4] (0:0:1 - 1)
		IfNotBlocked
		reached[0][871] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 4;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 588: // STATE 872 - Dropbear-v2014.65_missing_newkeys_introspection.pml:695 - [output = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][872] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 1;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 589: // STATE 873 - Dropbear-v2014.65_missing_newkeys_introspection.pml:696 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][873] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 590: // STATE 874 - Dropbear-v2014.65_missing_newkeys_introspection.pml:697 - [fsm_state = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][874] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 1;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 591: // STATE 875 - Dropbear-v2014.65_missing_newkeys_introspection.pml:698 - [output = 8] (0:0:1 - 1)
		IfNotBlocked
		reached[0][875] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 8;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 592: // STATE 876 - Dropbear-v2014.65_missing_newkeys_introspection.pml:699 - [printf('Output: %e\\n',output)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][876] = 1;
		Printf("Output: %e\n", now.output);
		_m = 3; goto P999; /* 0 */
	case 593: // STATE 915 - Dropbear-v2014.65_missing_newkeys_introspection.pml:13 - [D_STEP13]
		IfNotBlocked

		reached[0][915] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_876_0: /* 2 */
		now.dealt = 0;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
S_912_0: /* 2 */
S_877_0: /* 2 */
		if (!((now.dfa_state==4)))
			goto S_912_1;
S_886_0: /* 2 */
S_878_0: /* 2 */
		if (!((now.output==4)))
			goto S_886_1;
S_879_0: /* 2 */
		now.dfa_state = 2;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_880_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_887_0;
S_886_1: /* 3 */
S_881_0: /* 2 */
		if (!((((((((((((((((((((((((((now.output==26)||(now.output==24))||(now.output==12))||(now.output==11))||(now.output==21))||(now.output==10))||(now.output==9))||(now.output==8))||(now.output==7))||(now.output==5))||(now.output==18))||(now.output==17))||(now.output==16))||(now.output==15))||(now.output==14))||(now.output==25))||(now.output==13))||(now.output==23))||(now.output==22))||(now.output==20))||(now.output==19))||(now.output==6))||(now.output==3))||(now.output==2))||(now.output==1))))
			goto S_886_2;
S_882_0: /* 2 */
		now.dfa_state = 4;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_883_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_887_0;
S_886_2: /* 3 */
S_884_0: /* 2 */
		/* else */;
S_885_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_887_0;
S_886_3: /* 3 */
		Uerror("blocking sel in d_step (nr.20, near line 17)");
S_887_0: /* 2 */
		goto S_913_0;
S_912_1: /* 3 */
S_888_0: /* 2 */
		if (!((now.dfa_state==3)))
			goto S_912_2;
S_889_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_913_0;
S_912_2: /* 3 */
S_890_0: /* 2 */
		if (!((now.dfa_state==2)))
			goto S_912_3;
S_899_0: /* 2 */
S_891_0: /* 2 */
		if (!((now.output==12)))
			goto S_899_1;
S_892_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_893_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_900_0;
S_899_1: /* 3 */
S_894_0: /* 2 */
		if (!((((((((((((((((((((((((((now.output==26)||(now.output==24))||(now.output==11))||(now.output==21))||(now.output==10))||(now.output==9))||(now.output==8))||(now.output==7))||(now.output==5))||(now.output==4))||(now.output==18))||(now.output==17))||(now.output==16))||(now.output==15))||(now.output==14))||(now.output==25))||(now.output==13))||(now.output==23))||(now.output==22))||(now.output==20))||(now.output==19))||(now.output==6))||(now.output==3))||(now.output==2))||(now.output==1))))
			goto S_899_2;
S_895_0: /* 2 */
		now.dfa_state = 2;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_896_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_900_0;
S_899_2: /* 3 */
S_897_0: /* 2 */
		/* else */;
S_898_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_900_0;
S_899_3: /* 3 */
		Uerror("blocking sel in d_step (nr.21, near line 29)");
S_900_0: /* 2 */
		goto S_913_0;
S_912_3: /* 3 */
S_901_0: /* 2 */
		if (!((now.dfa_state==1)))
			goto S_912_4;
S_910_0: /* 2 */
S_902_0: /* 2 */
		if (!((((now.output==7)||(now.output==9))||(now.output==6))))
			goto S_910_1;
S_903_0: /* 2 */
		now.dfa_state = 3;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_904_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_911_0;
S_910_1: /* 3 */
S_905_0: /* 2 */
		if (!(((((((((((((((((((((((now.output==26)||(now.output==24))||(now.output==12))||(now.output==11))||(now.output==10))||(now.output==8))||(now.output==5))||(now.output==4))||(now.output==18))||(now.output==17))||(now.output==16))||(now.output==15))||(now.output==14))||(now.output==25))||(now.output==13))||(now.output==23))||(now.output==22))||(now.output==20))||(now.output==19))||(now.output==3))||(now.output==2))||(now.output==1))))
			goto S_910_2;
S_906_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_907_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_911_0;
S_910_2: /* 3 */
S_908_0: /* 2 */
		/* else */;
S_909_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_911_0;
S_910_3: /* 3 */
		Uerror("blocking sel in d_step (nr.22, near line 39)");
S_911_0: /* 2 */
		goto S_913_0;
S_912_4: /* 3 */
		Uerror("blocking sel in d_step (nr.23, near line 15)");
S_913_0: /* 2 */
		goto S_919_0;
S_919_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 594: // STATE 916 - Dropbear-v2014.65_missing_newkeys_introspection.pml:51 - [((dealt==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][916] = 1;
		if (!((((int)now.dealt)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 595: // STATE 923 - Dropbear-v2014.65_missing_newkeys_introspection.pml:701 - [printf('DFA State: %e\\n',dfa_state)] (0:0:0 - 2)
		IfNotBlocked
		reached[0][923] = 1;
		Printf("DFA State: %e\n", now.dfa_state);
		_m = 3; goto P999; /* 0 */
	case 596: // STATE 924 - Dropbear-v2014.65_missing_newkeys_introspection.pml:702 - [output = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][924] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 2;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 597: // STATE 929 - Dropbear-v2014.65_missing_newkeys_introspection.pml:705 - [((fsm_state==3))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][929] = 1;
		if (!((now.fsm_state==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 598: // STATE 930 - Dropbear-v2014.65_missing_newkeys_introspection.pml:707 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][930] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 599: // STATE 931 - Dropbear-v2014.65_missing_newkeys_introspection.pml:708 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][931] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 600: // STATE 932 - Dropbear-v2014.65_missing_newkeys_introspection.pml:709 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][932] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 601: // STATE 933 - Dropbear-v2014.65_missing_newkeys_introspection.pml:710 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][933] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 602: // STATE 934 - Dropbear-v2014.65_missing_newkeys_introspection.pml:711 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][934] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 603: // STATE 935 - Dropbear-v2014.65_missing_newkeys_introspection.pml:712 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][935] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 604: // STATE 936 - Dropbear-v2014.65_missing_newkeys_introspection.pml:713 - [((input==14))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][936] = 1;
		if (!((now.input==14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 605: // STATE 937 - Dropbear-v2014.65_missing_newkeys_introspection.pml:714 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][937] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 606: // STATE 938 - Dropbear-v2014.65_missing_newkeys_introspection.pml:715 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][938] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 607: // STATE 939 - Dropbear-v2014.65_missing_newkeys_introspection.pml:716 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][939] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 608: // STATE 940 - Dropbear-v2014.65_missing_newkeys_introspection.pml:717 - [fsm_state = 8] (0:0:1 - 1)
		IfNotBlocked
		reached[0][940] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 8;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 609: // STATE 941 - Dropbear-v2014.65_missing_newkeys_introspection.pml:718 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][941] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 610: // STATE 942 - Dropbear-v2014.65_missing_newkeys_introspection.pml:719 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][942] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 611: // STATE 943 - Dropbear-v2014.65_missing_newkeys_introspection.pml:720 - [fsm_state = 6] (0:0:1 - 1)
		IfNotBlocked
		reached[0][943] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 6;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 612: // STATE 944 - Dropbear-v2014.65_missing_newkeys_introspection.pml:721 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][944] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 613: // STATE 945 - Dropbear-v2014.65_missing_newkeys_introspection.pml:722 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][945] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 614: // STATE 946 - Dropbear-v2014.65_missing_newkeys_introspection.pml:723 - [fsm_state = 4] (0:0:1 - 1)
		IfNotBlocked
		reached[0][946] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 4;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 615: // STATE 947 - Dropbear-v2014.65_missing_newkeys_introspection.pml:724 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][947] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 616: // STATE 948 - Dropbear-v2014.65_missing_newkeys_introspection.pml:725 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][948] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 617: // STATE 949 - Dropbear-v2014.65_missing_newkeys_introspection.pml:726 - [fsm_state = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][949] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 3;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 618: // STATE 951 - Dropbear-v2014.65_missing_newkeys_introspection.pml:728 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][951] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 619: // STATE 952 - Dropbear-v2014.65_missing_newkeys_introspection.pml:729 - [fsm_state = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][952] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 3;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 620: // STATE 953 - Dropbear-v2014.65_missing_newkeys_introspection.pml:730 - [output = 4] (0:0:1 - 1)
		IfNotBlocked
		reached[0][953] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 4;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 621: // STATE 954 - Dropbear-v2014.65_missing_newkeys_introspection.pml:731 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][954] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 622: // STATE 955 - Dropbear-v2014.65_missing_newkeys_introspection.pml:732 - [fsm_state = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][955] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 3;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 623: // STATE 956 - Dropbear-v2014.65_missing_newkeys_introspection.pml:733 - [output = 4] (0:0:1 - 1)
		IfNotBlocked
		reached[0][956] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 4;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 624: // STATE 957 - Dropbear-v2014.65_missing_newkeys_introspection.pml:734 - [((input==26))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][957] = 1;
		if (!((now.input==26)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 625: // STATE 958 - Dropbear-v2014.65_missing_newkeys_introspection.pml:735 - [fsm_state = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][958] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 3;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 626: // STATE 959 - Dropbear-v2014.65_missing_newkeys_introspection.pml:736 - [output = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][959] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 1;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 627: // STATE 960 - Dropbear-v2014.65_missing_newkeys_introspection.pml:737 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][960] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 628: // STATE 961 - Dropbear-v2014.65_missing_newkeys_introspection.pml:738 - [fsm_state = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][961] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 3;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 629: // STATE 963 - Dropbear-v2014.65_missing_newkeys_introspection.pml:740 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][963] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 630: // STATE 964 - Dropbear-v2014.65_missing_newkeys_introspection.pml:741 - [fsm_state = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][964] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 3;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 631: // STATE 966 - Dropbear-v2014.65_missing_newkeys_introspection.pml:743 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][966] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 632: // STATE 967 - Dropbear-v2014.65_missing_newkeys_introspection.pml:744 - [fsm_state = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][967] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 2;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 633: // STATE 968 - Dropbear-v2014.65_missing_newkeys_introspection.pml:745 - [output = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[0][968] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 11;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 634: // STATE 973 - Dropbear-v2014.65_missing_newkeys_introspection.pml:748 - [((fsm_state==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][973] = 1;
		if (!((now.fsm_state==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 635: // STATE 974 - Dropbear-v2014.65_missing_newkeys_introspection.pml:750 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][974] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 636: // STATE 975 - Dropbear-v2014.65_missing_newkeys_introspection.pml:751 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][975] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 637: // STATE 976 - Dropbear-v2014.65_missing_newkeys_introspection.pml:752 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][976] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 638: // STATE 977 - Dropbear-v2014.65_missing_newkeys_introspection.pml:753 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][977] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 639: // STATE 978 - Dropbear-v2014.65_missing_newkeys_introspection.pml:754 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][978] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 640: // STATE 979 - Dropbear-v2014.65_missing_newkeys_introspection.pml:755 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][979] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 641: // STATE 980 - Dropbear-v2014.65_missing_newkeys_introspection.pml:756 - [((input==14))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][980] = 1;
		if (!((now.input==14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 642: // STATE 981 - Dropbear-v2014.65_missing_newkeys_introspection.pml:757 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][981] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 643: // STATE 982 - Dropbear-v2014.65_missing_newkeys_introspection.pml:758 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][982] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 644: // STATE 983 - Dropbear-v2014.65_missing_newkeys_introspection.pml:759 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][983] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 645: // STATE 984 - Dropbear-v2014.65_missing_newkeys_introspection.pml:760 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][984] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 646: // STATE 985 - Dropbear-v2014.65_missing_newkeys_introspection.pml:761 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][985] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 647: // STATE 986 - Dropbear-v2014.65_missing_newkeys_introspection.pml:762 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][986] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 648: // STATE 987 - Dropbear-v2014.65_missing_newkeys_introspection.pml:763 - [fsm_state = 8] (0:0:1 - 1)
		IfNotBlocked
		reached[0][987] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 8;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 649: // STATE 989 - Dropbear-v2014.65_missing_newkeys_introspection.pml:765 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][989] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 650: // STATE 990 - Dropbear-v2014.65_missing_newkeys_introspection.pml:766 - [fsm_state = 6] (0:0:1 - 1)
		IfNotBlocked
		reached[0][990] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 6;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 651: // STATE 991 - Dropbear-v2014.65_missing_newkeys_introspection.pml:767 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][991] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 652: // STATE 992 - Dropbear-v2014.65_missing_newkeys_introspection.pml:768 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][992] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 653: // STATE 993 - Dropbear-v2014.65_missing_newkeys_introspection.pml:769 - [fsm_state = 4] (0:0:1 - 1)
		IfNotBlocked
		reached[0][993] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 4;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 654: // STATE 994 - Dropbear-v2014.65_missing_newkeys_introspection.pml:770 - [output = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[0][994] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 12;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 655: // STATE 995 - Dropbear-v2014.65_missing_newkeys_introspection.pml:771 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][995] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 656: // STATE 996 - Dropbear-v2014.65_missing_newkeys_introspection.pml:772 - [fsm_state = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][996] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 2;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 657: // STATE 998 - Dropbear-v2014.65_missing_newkeys_introspection.pml:774 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][998] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 658: // STATE 999 - Dropbear-v2014.65_missing_newkeys_introspection.pml:775 - [fsm_state = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][999] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 2;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 659: // STATE 1000 - Dropbear-v2014.65_missing_newkeys_introspection.pml:776 - [output = 4] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1000] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 4;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 660: // STATE 1001 - Dropbear-v2014.65_missing_newkeys_introspection.pml:777 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1001] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 661: // STATE 1002 - Dropbear-v2014.65_missing_newkeys_introspection.pml:778 - [fsm_state = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1002] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 2;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 662: // STATE 1003 - Dropbear-v2014.65_missing_newkeys_introspection.pml:779 - [output = 4] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1003] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 4;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 663: // STATE 1004 - Dropbear-v2014.65_missing_newkeys_introspection.pml:780 - [((input==26))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1004] = 1;
		if (!((now.input==26)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 664: // STATE 1005 - Dropbear-v2014.65_missing_newkeys_introspection.pml:781 - [fsm_state = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1005] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 2;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 665: // STATE 1006 - Dropbear-v2014.65_missing_newkeys_introspection.pml:782 - [output = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1006] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 1;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 666: // STATE 1007 - Dropbear-v2014.65_missing_newkeys_introspection.pml:783 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1007] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 667: // STATE 1008 - Dropbear-v2014.65_missing_newkeys_introspection.pml:784 - [fsm_state = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1008] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 2;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 668: // STATE 1010 - Dropbear-v2014.65_missing_newkeys_introspection.pml:786 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1010] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 669: // STATE 1011 - Dropbear-v2014.65_missing_newkeys_introspection.pml:787 - [fsm_state = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1011] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 2;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 670: // STATE 1017 - Dropbear-v2014.65_missing_newkeys_introspection.pml:791 - [((fsm_state==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1017] = 1;
		if (!((now.fsm_state==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 671: // STATE 1018 - Dropbear-v2014.65_missing_newkeys_introspection.pml:793 - [((input==16))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1018] = 1;
		if (!((now.input==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 672: // STATE 1019 - Dropbear-v2014.65_missing_newkeys_introspection.pml:794 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1019] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 673: // STATE 1020 - Dropbear-v2014.65_missing_newkeys_introspection.pml:795 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1020] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 674: // STATE 1021 - Dropbear-v2014.65_missing_newkeys_introspection.pml:796 - [((input==18))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1021] = 1;
		if (!((now.input==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 675: // STATE 1022 - Dropbear-v2014.65_missing_newkeys_introspection.pml:797 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1022] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 676: // STATE 1023 - Dropbear-v2014.65_missing_newkeys_introspection.pml:798 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1023] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 677: // STATE 1024 - Dropbear-v2014.65_missing_newkeys_introspection.pml:799 - [((input==25))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1024] = 1;
		if (!((now.input==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 678: // STATE 1025 - Dropbear-v2014.65_missing_newkeys_introspection.pml:800 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1025] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 679: // STATE 1026 - Dropbear-v2014.65_missing_newkeys_introspection.pml:801 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1026] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 680: // STATE 1027 - Dropbear-v2014.65_missing_newkeys_introspection.pml:802 - [((input==14))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1027] = 1;
		if (!((now.input==14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 681: // STATE 1028 - Dropbear-v2014.65_missing_newkeys_introspection.pml:803 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1028] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 682: // STATE 1029 - Dropbear-v2014.65_missing_newkeys_introspection.pml:804 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1029] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 683: // STATE 1030 - Dropbear-v2014.65_missing_newkeys_introspection.pml:805 - [((input==23))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1030] = 1;
		if (!((now.input==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 684: // STATE 1031 - Dropbear-v2014.65_missing_newkeys_introspection.pml:806 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1031] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 685: // STATE 1032 - Dropbear-v2014.65_missing_newkeys_introspection.pml:807 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1032] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 686: // STATE 1033 - Dropbear-v2014.65_missing_newkeys_introspection.pml:808 - [((input==19))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1033] = 1;
		if (!((now.input==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 687: // STATE 1034 - Dropbear-v2014.65_missing_newkeys_introspection.pml:809 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1034] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 688: // STATE 1035 - Dropbear-v2014.65_missing_newkeys_introspection.pml:810 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1035] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 689: // STATE 1036 - Dropbear-v2014.65_missing_newkeys_introspection.pml:811 - [((input==24))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1036] = 1;
		if (!((now.input==24)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 690: // STATE 1037 - Dropbear-v2014.65_missing_newkeys_introspection.pml:812 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1037] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 691: // STATE 1038 - Dropbear-v2014.65_missing_newkeys_introspection.pml:813 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1038] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 692: // STATE 1039 - Dropbear-v2014.65_missing_newkeys_introspection.pml:814 - [((input==15))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1039] = 1;
		if (!((now.input==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 693: // STATE 1040 - Dropbear-v2014.65_missing_newkeys_introspection.pml:815 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1040] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 694: // STATE 1041 - Dropbear-v2014.65_missing_newkeys_introspection.pml:816 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1041] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 695: // STATE 1042 - Dropbear-v2014.65_missing_newkeys_introspection.pml:817 - [((input==20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1042] = 1;
		if (!((now.input==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 696: // STATE 1043 - Dropbear-v2014.65_missing_newkeys_introspection.pml:818 - [fsm_state = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1043] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 16;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 697: // STATE 1044 - Dropbear-v2014.65_missing_newkeys_introspection.pml:819 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1044] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 698: // STATE 1045 - Dropbear-v2014.65_missing_newkeys_introspection.pml:820 - [((input==22))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1045] = 1;
		if (!((now.input==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 699: // STATE 1046 - Dropbear-v2014.65_missing_newkeys_introspection.pml:821 - [fsm_state = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1046] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 15;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 700: // STATE 1047 - Dropbear-v2014.65_missing_newkeys_introspection.pml:822 - [output = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1047] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 3;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 701: // STATE 1048 - Dropbear-v2014.65_missing_newkeys_introspection.pml:823 - [((input==21))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1048] = 1;
		if (!((now.input==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 702: // STATE 1049 - Dropbear-v2014.65_missing_newkeys_introspection.pml:824 - [fsm_state = 7] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1049] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 7;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 703: // STATE 1051 - Dropbear-v2014.65_missing_newkeys_introspection.pml:826 - [((input==17))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1051] = 1;
		if (!((now.input==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 704: // STATE 1052 - Dropbear-v2014.65_missing_newkeys_introspection.pml:827 - [fsm_state = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1052] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 1;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 705: // STATE 1053 - Dropbear-v2014.65_missing_newkeys_introspection.pml:828 - [output = 13] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1053] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 13;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 706: // STATE 1054 - Dropbear-v2014.65_missing_newkeys_introspection.pml:829 - [((input==26))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1054] = 1;
		if (!((now.input==26)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 707: // STATE 1055 - Dropbear-v2014.65_missing_newkeys_introspection.pml:830 - [fsm_state = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1055] = 1;
		(trpt+1)->bup.oval = now.fsm_state;
		now.fsm_state = 1;
#ifdef VAR_RANGES
		logval("fsm_state", now.fsm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 708: // STATE 1056 - Dropbear-v2014.65_missing_newkeys_introspection.pml:831 - [output = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1056] = 1;
		(trpt+1)->bup.oval = now.output;
		now.output = 1;
#ifdef VAR_RANGES
		logval("output", now.output);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 709: // STATE 1063 - Dropbear-v2014.65_missing_newkeys_introspection.pml:835 - [printf('FSM State: %e\\n',fsm_state)] (0:0:0 - 218)
		IfNotBlocked
		reached[0][1063] = 1;
		Printf("FSM State: %e\n", now.fsm_state);
		_m = 3; goto P999; /* 0 */
	case 710: // STATE 1064 - Dropbear-v2014.65_missing_newkeys_introspection.pml:836 - [printf('Output: %e\\n\\n',output)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1064] = 1;
		Printf("Output: %e\n\n", now.output);
		_m = 3; goto P999; /* 0 */
	case 711: // STATE 1103 - Dropbear-v2014.65_missing_newkeys_introspection.pml:13 - [D_STEP13]
		IfNotBlocked

		reached[0][1103] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_1064_0: /* 2 */
		now.dealt = 0;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
S_1100_0: /* 2 */
S_1065_0: /* 2 */
		if (!((now.dfa_state==4)))
			goto S_1100_1;
S_1074_0: /* 2 */
S_1066_0: /* 2 */
		if (!((now.output==4)))
			goto S_1074_1;
S_1067_0: /* 2 */
		now.dfa_state = 2;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_1068_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_1075_0;
S_1074_1: /* 3 */
S_1069_0: /* 2 */
		if (!((((((((((((((((((((((((((now.output==26)||(now.output==24))||(now.output==12))||(now.output==11))||(now.output==21))||(now.output==10))||(now.output==9))||(now.output==8))||(now.output==7))||(now.output==5))||(now.output==18))||(now.output==17))||(now.output==16))||(now.output==15))||(now.output==14))||(now.output==25))||(now.output==13))||(now.output==23))||(now.output==22))||(now.output==20))||(now.output==19))||(now.output==6))||(now.output==3))||(now.output==2))||(now.output==1))))
			goto S_1074_2;
S_1070_0: /* 2 */
		now.dfa_state = 4;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_1071_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_1075_0;
S_1074_2: /* 3 */
S_1072_0: /* 2 */
		/* else */;
S_1073_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_1075_0;
S_1074_3: /* 3 */
		Uerror("blocking sel in d_step (nr.24, near line 17)");
S_1075_0: /* 2 */
		goto S_1101_0;
S_1100_1: /* 3 */
S_1076_0: /* 2 */
		if (!((now.dfa_state==3)))
			goto S_1100_2;
S_1077_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_1101_0;
S_1100_2: /* 3 */
S_1078_0: /* 2 */
		if (!((now.dfa_state==2)))
			goto S_1100_3;
S_1087_0: /* 2 */
S_1079_0: /* 2 */
		if (!((now.output==12)))
			goto S_1087_1;
S_1080_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_1081_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_1088_0;
S_1087_1: /* 3 */
S_1082_0: /* 2 */
		if (!((((((((((((((((((((((((((now.output==26)||(now.output==24))||(now.output==11))||(now.output==21))||(now.output==10))||(now.output==9))||(now.output==8))||(now.output==7))||(now.output==5))||(now.output==4))||(now.output==18))||(now.output==17))||(now.output==16))||(now.output==15))||(now.output==14))||(now.output==25))||(now.output==13))||(now.output==23))||(now.output==22))||(now.output==20))||(now.output==19))||(now.output==6))||(now.output==3))||(now.output==2))||(now.output==1))))
			goto S_1087_2;
S_1083_0: /* 2 */
		now.dfa_state = 2;
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
		goto S_1088_0;
S_1087_2: /* 3 */
S_1085_0: /* 2 */
		/* else */;
S_1086_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_1088_0;
S_1087_3: /* 3 */
		Uerror("blocking sel in d_step (nr.25, near line 29)");
S_1088_0: /* 2 */
		goto S_1101_0;
S_1100_3: /* 3 */
S_1089_0: /* 2 */
		if (!((now.dfa_state==1)))
			goto S_1100_4;
S_1098_0: /* 2 */
S_1090_0: /* 2 */
		if (!((((now.output==7)||(now.output==9))||(now.output==6))))
			goto S_1098_1;
S_1091_0: /* 2 */
		now.dfa_state = 3;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_1092_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_1099_0;
S_1098_1: /* 3 */
S_1093_0: /* 2 */
		if (!(((((((((((((((((((((((now.output==26)||(now.output==24))||(now.output==12))||(now.output==11))||(now.output==10))||(now.output==8))||(now.output==5))||(now.output==4))||(now.output==18))||(now.output==17))||(now.output==16))||(now.output==15))||(now.output==14))||(now.output==25))||(now.output==13))||(now.output==23))||(now.output==22))||(now.output==20))||(now.output==19))||(now.output==3))||(now.output==2))||(now.output==1))))
			goto S_1098_2;
S_1094_0: /* 2 */
		now.dfa_state = 1;
#ifdef VAR_RANGES
		logval("dfa_state", now.dfa_state);
#endif
		;
S_1095_0: /* 2 */
		now.dealt = 1;
#ifdef VAR_RANGES
		logval("dealt", ((int)now.dealt));
#endif
		;
		goto S_1099_0;
S_1098_2: /* 3 */
S_1096_0: /* 2 */
		/* else */;
S_1097_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_1099_0;
S_1098_3: /* 3 */
		Uerror("blocking sel in d_step (nr.26, near line 39)");
S_1099_0: /* 2 */
		goto S_1101_0;
S_1100_4: /* 3 */
		Uerror("blocking sel in d_step (nr.27, near line 15)");
S_1101_0: /* 2 */
		goto S_1107_0;
S_1107_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 712: // STATE 1104 - Dropbear-v2014.65_missing_newkeys_introspection.pml:51 - [((dealt==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1104] = 1;
		if (!((((int)now.dealt)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 713: // STATE 1111 - Dropbear-v2014.65_missing_newkeys_introspection.pml:838 - [printf('DFA State: %e\\n\\n',dfa_state)] (0:0:0 - 2)
		IfNotBlocked
		reached[0][1111] = 1;
		Printf("DFA State: %e\n\n", now.dfa_state);
		_m = 3; goto P999; /* 0 */
	case 714: // STATE 1115 - Dropbear-v2014.65_missing_newkeys_introspection.pml:840 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1115] = 1;
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

