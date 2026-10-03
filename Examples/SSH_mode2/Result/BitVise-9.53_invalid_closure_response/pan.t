#ifdef PEG
struct T_SRC {
	char *fl; int ln;
} T_SRC[NTRANS];

void
tr_2_src(int m, char *file, int ln)
{	T_SRC[m].fl = file;
	T_SRC[m].ln = ln;
}

void
putpeg(int n, int m)
{	printf("%5d	trans %4d ", m, n);
	printf("%s:%d\n",
		T_SRC[n].fl, T_SRC[n].ln);
}
#endif

void
settable(void)
{	Trans *T;
	Trans *settr(int, int, int, int, int, char *, int, int, int);

	trans = (Trans ***) emalloc(3*sizeof(Trans **));

	/* proctype 1: no_bug */

	trans[1] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[1][7]	= settr(3610,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[1][6] = settr(3609,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(3609,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(3609,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 1][3] = settr(3606,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(3606,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[1][1]	= settr(3604,0,6,3,3,"(!((dfa_state!=3)))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached1[2] = 1;
	trans[1][2]	= settr(0,0,0,0,0,"assert(!(!((dfa_state!=3))))",0,0,0);
	trans[1][4]	= settr(3607,0,6,1,0,"(1)", 0, 2, 0);
	trans[1][5]	= settr(3608,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[1][8]	= settr(3611,0,9,1,0,"break", 0, 2, 0);
	trans[1][9]	= settr(3612,0,10,1,0,"(1)", 0, 2, 0);
	trans[1][10]	= settr(3613,0,0,4,4,"-end-", 0, 3500, 0);

	/* proctype 0: :init: */

	trans[0] = (Trans **) emalloc(3605*sizeof(Trans *));

	trans[0][1]	= settr(0,0,2,5,5,"fsm_state = 50", 1, 2, 0);
	trans[0][2]	= settr(1,0,3,6,6,"dfa_state = 4", 1, 2, 0);
	trans[0][3]	= settr(2,0,3601,7,7,"dealt = 0", 1, 2, 0);
	trans[0][3602]	= settr(3601,0,3601,1,0,".(goto)", 0, 2, 0);
	T = trans[0][3601] = settr(3600,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(3600,0,4,0,0,"DO", 0, 2, 0);
	trans[0][4]	= settr(3,0,18,1,0,"(1)", 0, 2, 0);
	T = trans[0][18] = settr(17,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(17,0,5,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(17,0,6,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(17,0,7,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(17,0,8,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(17,0,9,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(17,0,10,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(17,0,11,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(17,0,12,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(17,0,13,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(17,0,14,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(17,0,15,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(17,0,16,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(17,0,17,0,0,"IF", 0, 2, 0);
	trans[0][5]	= settr(4,0,20,8,8,"input = 28", 1, 2, 0);
	trans[0][19]	= settr(18,0,20,1,0,".(goto)", 0, 2, 0);
	trans[0][6]	= settr(5,0,20,9,9,"input = 27", 1, 2, 0);
	trans[0][7]	= settr(6,0,20,10,10,"input = 26", 1, 2, 0);
	trans[0][8]	= settr(7,0,20,11,11,"input = 25", 1, 2, 0);
	trans[0][9]	= settr(8,0,20,12,12,"input = 24", 1, 2, 0);
	trans[0][10]	= settr(9,0,20,13,13,"input = 23", 1, 2, 0);
	trans[0][11]	= settr(10,0,20,14,14,"input = 22", 1, 2, 0);
	trans[0][12]	= settr(11,0,20,15,15,"input = 21", 1, 2, 0);
	trans[0][13]	= settr(12,0,20,16,16,"input = 20", 1, 2, 0);
	trans[0][14]	= settr(13,0,20,17,17,"input = 19", 1, 2, 0);
	trans[0][15]	= settr(14,0,20,18,18,"input = 18", 1, 2, 0);
	trans[0][16]	= settr(15,0,20,19,19,"input = 17", 1, 2, 0);
	trans[0][17]	= settr(16,0,20,20,20,"input = 16", 1, 2, 0);
	trans[0][20]	= settr(19,0,63,21,0,"printf('Input: %e\\n',input)", 1, 2, 0);
	T = trans[ 0][63] = settr(62,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(62,0,56,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][56]	= settr(55,32,61,22,22,"D_STEP13", 1, 2, 0);
	T = trans[0][61] = settr(60,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(60,0,57,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(60,0,59,0,0,"IF", 0, 2, 0);
	trans[0][57]	= settr(56,0,1,23,0,"((dealt==0))", 1, 2, 0);
	trans[0][58]	= settr(57,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][62]	= settr(61,0,64,1,0,".(goto)", 0, 2, 0);
	trans[0][59]	= settr(58,0,60,2,0,"else", 0, 2, 0);
	trans[0][60]	= settr(59,0,64,1,0,"(1)", 0, 2, 0);
	trans[0][64]	= settr(63,0,3553,24,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	T = trans[0][3553] = settr(3552,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3552,0,65,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3552,0,431,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3552,0,475,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3552,0,519,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3552,0,563,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3552,0,653,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3552,0,697,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3552,0,741,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3552,0,785,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3552,0,829,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3552,0,873,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3552,0,917,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3552,0,1007,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3552,0,1051,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3552,0,1095,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3552,0,1139,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3552,0,1229,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3552,0,1273,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3552,0,1317,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3552,0,1361,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3552,0,1451,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3552,0,1495,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3552,0,1585,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3552,0,1629,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3552,0,1673,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3552,0,1717,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3552,0,1761,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3552,0,1851,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3552,0,1895,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3552,0,1939,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3552,0,2075,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3552,0,2211,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3552,0,2255,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3552,0,2299,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3552,0,2343,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3552,0,2479,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3552,0,2523,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3552,0,2659,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3552,0,2749,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3552,0,2793,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3552,0,2837,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3552,0,2973,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3552,0,3017,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3552,0,3061,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3552,0,3151,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3552,0,3195,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3552,0,3239,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3552,0,3375,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3552,0,3419,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3552,0,3509,0,0,"IF", 0, 2, 0);
	trans[0][65]	= settr(64,0,429,25,0,"((fsm_state==50))", 1, 2, 0);
	T = trans[0][429] = settr(428,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(428,0,66,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(428,0,69,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(428,0,72,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(428,0,75,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(428,0,78,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(428,0,81,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(428,0,130,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(428,0,179,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(428,0,228,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(428,0,277,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(428,0,326,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(428,0,375,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(428,0,424,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(428,0,427,0,0,"IF", 0, 2, 0);
	trans[0][66]	= settr(65,0,67,26,0,"((input==21))", 1, 2, 0);
	trans[0][67]	= settr(66,0,68,27,27,"fsm_state = 50", 1, 2, 0);
	trans[0][68]	= settr(67,0,3555,28,28,"output = 15", 1, 2, 0);
	trans[0][430]	= settr(429,0,3555,1,0,".(goto)", 0, 2, 0);
	trans[0][69]	= settr(68,0,70,29,0,"((input==28))", 1, 2, 0);
	trans[0][70]	= settr(69,0,71,30,30,"fsm_state = 50", 1, 2, 0);
	trans[0][71]	= settr(70,0,3555,31,31,"output = 15", 1, 2, 0);
	trans[0][72]	= settr(71,0,73,32,0,"((input==27))", 1, 2, 0);
	trans[0][73]	= settr(72,0,74,33,33,"fsm_state = 50", 1, 2, 0);
	trans[0][74]	= settr(73,0,3555,34,34,"output = 15", 1, 2, 0);
	trans[0][75]	= settr(74,0,76,35,0,"((input==25))", 1, 2, 0);
	trans[0][76]	= settr(75,0,77,36,36,"fsm_state = 50", 1, 2, 0);
	trans[0][77]	= settr(76,0,3555,37,37,"output = 15", 1, 2, 0);
	trans[0][78]	= settr(77,0,79,38,0,"((input==19))", 1, 2, 0);
	trans[0][79]	= settr(78,0,80,39,39,"fsm_state = 49", 1, 2, 0);
	trans[0][80]	= settr(79,0,3555,40,40,"output = 2", 1, 2, 0);
	trans[0][81]	= settr(80,0,82,41,0,"((input==16))", 1, 2, 0);
	trans[0][82]	= settr(81,0,83,42,42,"fsm_state = 48", 1, 2, 0);
	trans[0][83]	= settr(82,0,84,43,43,"output = 2", 1, 2, 0);
	trans[0][84]	= settr(83,0,127,44,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][127] = settr(126,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(126,0,120,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][120]	= settr(119,32,125,45,45,"D_STEP13", 1, 2, 0);
	T = trans[0][125] = settr(124,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(124,0,121,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(124,0,123,0,0,"IF", 0, 2, 0);
	trans[0][121]	= settr(120,0,1,46,0,"((dealt==0))", 1, 2, 0);
	trans[0][122]	= settr(121,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][126]	= settr(125,0,128,1,0,".(goto)", 0, 2, 0);
	trans[0][123]	= settr(122,0,124,2,0,"else", 0, 2, 0);
	trans[0][124]	= settr(123,0,128,1,0,"(1)", 0, 2, 0);
	trans[0][128]	= settr(127,0,129,47,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][129]	= settr(128,0,3555,48,48,"output = 10", 1, 2, 0);
	trans[0][130]	= settr(129,0,131,49,0,"((input==18))", 1, 2, 0);
	trans[0][131]	= settr(130,0,132,50,50,"fsm_state = 47", 1, 2, 0);
	trans[0][132]	= settr(131,0,133,51,51,"output = 2", 1, 2, 0);
	trans[0][133]	= settr(132,0,176,52,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][176] = settr(175,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(175,0,169,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][169]	= settr(168,32,174,53,53,"D_STEP13", 1, 2, 0);
	T = trans[0][174] = settr(173,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(173,0,170,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(173,0,172,0,0,"IF", 0, 2, 0);
	trans[0][170]	= settr(169,0,1,54,0,"((dealt==0))", 1, 2, 0);
	trans[0][171]	= settr(170,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][175]	= settr(174,0,177,1,0,".(goto)", 0, 2, 0);
	trans[0][172]	= settr(171,0,173,2,0,"else", 0, 2, 0);
	trans[0][173]	= settr(172,0,177,1,0,"(1)", 0, 2, 0);
	trans[0][177]	= settr(176,0,178,55,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][178]	= settr(177,0,3555,56,56,"output = 10", 1, 2, 0);
	trans[0][179]	= settr(178,0,180,57,0,"((input==26))", 1, 2, 0);
	trans[0][180]	= settr(179,0,181,58,58,"fsm_state = 47", 1, 2, 0);
	trans[0][181]	= settr(180,0,182,59,59,"output = 2", 1, 2, 0);
	trans[0][182]	= settr(181,0,225,60,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][225] = settr(224,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(224,0,218,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][218]	= settr(217,32,223,61,61,"D_STEP13", 1, 2, 0);
	T = trans[0][223] = settr(222,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(222,0,219,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(222,0,221,0,0,"IF", 0, 2, 0);
	trans[0][219]	= settr(218,0,1,62,0,"((dealt==0))", 1, 2, 0);
	trans[0][220]	= settr(219,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][224]	= settr(223,0,226,1,0,".(goto)", 0, 2, 0);
	trans[0][221]	= settr(220,0,222,2,0,"else", 0, 2, 0);
	trans[0][222]	= settr(221,0,226,1,0,"(1)", 0, 2, 0);
	trans[0][226]	= settr(225,0,227,63,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][227]	= settr(226,0,3555,64,64,"output = 10", 1, 2, 0);
	trans[0][228]	= settr(227,0,229,65,0,"((input==17))", 1, 2, 0);
	trans[0][229]	= settr(228,0,230,66,66,"fsm_state = 47", 1, 2, 0);
	trans[0][230]	= settr(229,0,231,67,67,"output = 2", 1, 2, 0);
	trans[0][231]	= settr(230,0,274,68,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][274] = settr(273,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(273,0,267,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][267]	= settr(266,32,272,69,69,"D_STEP13", 1, 2, 0);
	T = trans[0][272] = settr(271,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(271,0,268,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(271,0,270,0,0,"IF", 0, 2, 0);
	trans[0][268]	= settr(267,0,1,70,0,"((dealt==0))", 1, 2, 0);
	trans[0][269]	= settr(268,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][273]	= settr(272,0,275,1,0,".(goto)", 0, 2, 0);
	trans[0][270]	= settr(269,0,271,2,0,"else", 0, 2, 0);
	trans[0][271]	= settr(270,0,275,1,0,"(1)", 0, 2, 0);
	trans[0][275]	= settr(274,0,276,71,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][276]	= settr(275,0,3555,72,72,"output = 10", 1, 2, 0);
	trans[0][277]	= settr(276,0,278,73,0,"((input==23))", 1, 2, 0);
	trans[0][278]	= settr(277,0,279,74,74,"fsm_state = 47", 1, 2, 0);
	trans[0][279]	= settr(278,0,280,75,75,"output = 2", 1, 2, 0);
	trans[0][280]	= settr(279,0,323,76,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][323] = settr(322,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(322,0,316,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][316]	= settr(315,32,321,77,77,"D_STEP13", 1, 2, 0);
	T = trans[0][321] = settr(320,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(320,0,317,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(320,0,319,0,0,"IF", 0, 2, 0);
	trans[0][317]	= settr(316,0,1,78,0,"((dealt==0))", 1, 2, 0);
	trans[0][318]	= settr(317,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][322]	= settr(321,0,324,1,0,".(goto)", 0, 2, 0);
	trans[0][319]	= settr(318,0,320,2,0,"else", 0, 2, 0);
	trans[0][320]	= settr(319,0,324,1,0,"(1)", 0, 2, 0);
	trans[0][324]	= settr(323,0,325,79,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][325]	= settr(324,0,3555,80,80,"output = 10", 1, 2, 0);
	trans[0][326]	= settr(325,0,327,81,0,"((input==22))", 1, 2, 0);
	trans[0][327]	= settr(326,0,328,82,82,"fsm_state = 47", 1, 2, 0);
	trans[0][328]	= settr(327,0,329,83,83,"output = 2", 1, 2, 0);
	trans[0][329]	= settr(328,0,372,84,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][372] = settr(371,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(371,0,365,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][365]	= settr(364,32,370,85,85,"D_STEP13", 1, 2, 0);
	T = trans[0][370] = settr(369,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(369,0,366,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(369,0,368,0,0,"IF", 0, 2, 0);
	trans[0][366]	= settr(365,0,1,86,0,"((dealt==0))", 1, 2, 0);
	trans[0][367]	= settr(366,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][371]	= settr(370,0,373,1,0,".(goto)", 0, 2, 0);
	trans[0][368]	= settr(367,0,369,2,0,"else", 0, 2, 0);
	trans[0][369]	= settr(368,0,373,1,0,"(1)", 0, 2, 0);
	trans[0][373]	= settr(372,0,374,87,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][374]	= settr(373,0,3555,88,88,"output = 10", 1, 2, 0);
	trans[0][375]	= settr(374,0,376,89,0,"((input==20))", 1, 2, 0);
	trans[0][376]	= settr(375,0,377,90,90,"fsm_state = 47", 1, 2, 0);
	trans[0][377]	= settr(376,0,378,91,91,"output = 2", 1, 2, 0);
	trans[0][378]	= settr(377,0,421,92,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][421] = settr(420,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(420,0,414,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][414]	= settr(413,32,419,93,93,"D_STEP13", 1, 2, 0);
	T = trans[0][419] = settr(418,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(418,0,415,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(418,0,417,0,0,"IF", 0, 2, 0);
	trans[0][415]	= settr(414,0,1,94,0,"((dealt==0))", 1, 2, 0);
	trans[0][416]	= settr(415,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][420]	= settr(419,0,422,1,0,".(goto)", 0, 2, 0);
	trans[0][417]	= settr(416,0,418,2,0,"else", 0, 2, 0);
	trans[0][418]	= settr(417,0,422,1,0,"(1)", 0, 2, 0);
	trans[0][422]	= settr(421,0,423,95,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][423]	= settr(422,0,3555,96,96,"output = 10", 1, 2, 0);
	trans[0][424]	= settr(423,0,425,97,0,"((input==24))", 1, 2, 0);
	trans[0][425]	= settr(424,0,426,98,98,"fsm_state = 46", 1, 2, 0);
	trans[0][426]	= settr(425,0,3555,99,99,"output = 2", 1, 2, 0);
	trans[0][427]	= settr(426,0,18,2,0,"else", 0, 2, 0);
	trans[0][428]	= settr(427,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3554]	= settr(3553,0,3555,1,0,".(goto)", 0, 2, 0);
	trans[0][431]	= settr(430,0,473,100,0,"((fsm_state==49))", 1, 2, 0);
	T = trans[0][473] = settr(472,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(472,0,432,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(472,0,435,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(472,0,438,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(472,0,441,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(472,0,444,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(472,0,447,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(472,0,450,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(472,0,453,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(472,0,456,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(472,0,459,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(472,0,462,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(472,0,465,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(472,0,468,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(472,0,471,0,0,"IF", 0, 2, 0);
	trans[0][432]	= settr(431,0,433,101,0,"((input==21))", 1, 2, 0);
	trans[0][433]	= settr(432,0,434,102,102,"fsm_state = 49", 1, 2, 0);
	trans[0][434]	= settr(433,0,3555,103,103,"output = 15", 1, 2, 0);
	trans[0][474]	= settr(473,0,3555,1,0,".(goto)", 0, 2, 0);
	trans[0][435]	= settr(434,0,436,104,0,"((input==28))", 1, 2, 0);
	trans[0][436]	= settr(435,0,437,105,105,"fsm_state = 49", 1, 2, 0);
	trans[0][437]	= settr(436,0,3555,106,106,"output = 15", 1, 2, 0);
	trans[0][438]	= settr(437,0,439,107,0,"((input==27))", 1, 2, 0);
	trans[0][439]	= settr(438,0,440,108,108,"fsm_state = 49", 1, 2, 0);
	trans[0][440]	= settr(439,0,3555,109,109,"output = 15", 1, 2, 0);
	trans[0][441]	= settr(440,0,442,110,0,"((input==25))", 1, 2, 0);
	trans[0][442]	= settr(441,0,443,111,111,"fsm_state = 49", 1, 2, 0);
	trans[0][443]	= settr(442,0,3555,112,112,"output = 15", 1, 2, 0);
	trans[0][444]	= settr(443,0,445,113,0,"((input==16))", 1, 2, 0);
	trans[0][445]	= settr(444,0,446,114,114,"fsm_state = 48", 1, 2, 0);
	trans[0][446]	= settr(445,0,3555,115,115,"output = 10", 1, 2, 0);
	trans[0][447]	= settr(446,0,448,116,0,"((input==18))", 1, 2, 0);
	trans[0][448]	= settr(447,0,449,117,117,"fsm_state = 47", 1, 2, 0);
	trans[0][449]	= settr(448,0,3555,118,118,"output = 10", 1, 2, 0);
	trans[0][450]	= settr(449,0,451,119,0,"((input==23))", 1, 2, 0);
	trans[0][451]	= settr(450,0,452,120,120,"fsm_state = 47", 1, 2, 0);
	trans[0][452]	= settr(451,0,3555,121,121,"output = 10", 1, 2, 0);
	trans[0][453]	= settr(452,0,454,122,0,"((input==19))", 1, 2, 0);
	trans[0][454]	= settr(453,0,455,123,123,"fsm_state = 47", 1, 2, 0);
	trans[0][455]	= settr(454,0,3555,124,124,"output = 10", 1, 2, 0);
	trans[0][456]	= settr(455,0,457,125,0,"((input==22))", 1, 2, 0);
	trans[0][457]	= settr(456,0,458,126,126,"fsm_state = 47", 1, 2, 0);
	trans[0][458]	= settr(457,0,3555,127,127,"output = 10", 1, 2, 0);
	trans[0][459]	= settr(458,0,460,128,0,"((input==24))", 1, 2, 0);
	trans[0][460]	= settr(459,0,461,129,129,"fsm_state = 47", 1, 2, 0);
	trans[0][461]	= settr(460,0,3555,130,130,"output = 10", 1, 2, 0);
	trans[0][462]	= settr(461,0,463,131,0,"((input==20))", 1, 2, 0);
	trans[0][463]	= settr(462,0,464,132,132,"fsm_state = 47", 1, 2, 0);
	trans[0][464]	= settr(463,0,3555,133,133,"output = 10", 1, 2, 0);
	trans[0][465]	= settr(464,0,466,134,0,"((input==26))", 1, 2, 0);
	trans[0][466]	= settr(465,0,18,135,135,"fsm_state = 46", 1, 2, 0);
	trans[0][467]	= settr(466,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][468]	= settr(467,0,469,136,0,"((input==17))", 1, 2, 0);
	trans[0][469]	= settr(468,0,18,137,137,"fsm_state = 45", 1, 2, 0);
	trans[0][470]	= settr(469,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][471]	= settr(470,0,18,2,0,"else", 0, 2, 0);
	trans[0][472]	= settr(471,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][475]	= settr(474,0,517,138,0,"((fsm_state==48))", 1, 2, 0);
	T = trans[0][517] = settr(516,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(516,0,476,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(516,0,479,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(516,0,482,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(516,0,485,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(516,0,488,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(516,0,491,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(516,0,494,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(516,0,497,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(516,0,500,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(516,0,503,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(516,0,506,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(516,0,509,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(516,0,512,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(516,0,515,0,0,"IF", 0, 2, 0);
	trans[0][476]	= settr(475,0,477,139,0,"((input==18))", 1, 2, 0);
	trans[0][477]	= settr(476,0,478,140,140,"fsm_state = 48", 1, 2, 0);
	trans[0][478]	= settr(477,0,3555,141,141,"output = 4", 1, 2, 0);
	trans[0][518]	= settr(517,0,3555,1,0,".(goto)", 0, 2, 0);
	trans[0][479]	= settr(478,0,480,142,0,"((input==26))", 1, 2, 0);
	trans[0][480]	= settr(479,0,481,143,143,"fsm_state = 48", 1, 2, 0);
	trans[0][481]	= settr(480,0,3555,144,144,"output = 4", 1, 2, 0);
	trans[0][482]	= settr(481,0,483,145,0,"((input==17))", 1, 2, 0);
	trans[0][483]	= settr(482,0,484,146,146,"fsm_state = 48", 1, 2, 0);
	trans[0][484]	= settr(483,0,3555,147,147,"output = 4", 1, 2, 0);
	trans[0][485]	= settr(484,0,486,148,0,"((input==21))", 1, 2, 0);
	trans[0][486]	= settr(485,0,487,149,149,"fsm_state = 48", 1, 2, 0);
	trans[0][487]	= settr(486,0,3555,150,150,"output = 4", 1, 2, 0);
	trans[0][488]	= settr(487,0,489,151,0,"((input==16))", 1, 2, 0);
	trans[0][489]	= settr(488,0,490,152,152,"fsm_state = 48", 1, 2, 0);
	trans[0][490]	= settr(489,0,3555,153,153,"output = 5", 1, 2, 0);
	trans[0][491]	= settr(490,0,492,154,0,"((input==28))", 1, 2, 0);
	trans[0][492]	= settr(491,0,493,155,155,"fsm_state = 48", 1, 2, 0);
	trans[0][493]	= settr(492,0,3555,156,156,"output = 4", 1, 2, 0);
	trans[0][494]	= settr(493,0,495,157,0,"((input==23))", 1, 2, 0);
	trans[0][495]	= settr(494,0,496,158,158,"fsm_state = 48", 1, 2, 0);
	trans[0][496]	= settr(495,0,3555,159,159,"output = 4", 1, 2, 0);
	trans[0][497]	= settr(496,0,498,160,0,"((input==19))", 1, 2, 0);
	trans[0][498]	= settr(497,0,499,161,161,"fsm_state = 48", 1, 2, 0);
	trans[0][499]	= settr(498,0,3555,162,162,"output = 4", 1, 2, 0);
	trans[0][500]	= settr(499,0,501,163,0,"((input==22))", 1, 2, 0);
	trans[0][501]	= settr(500,0,502,164,164,"fsm_state = 48", 1, 2, 0);
	trans[0][502]	= settr(501,0,3555,165,165,"output = 4", 1, 2, 0);
	trans[0][503]	= settr(502,0,504,166,0,"((input==24))", 1, 2, 0);
	trans[0][504]	= settr(503,0,505,167,167,"fsm_state = 48", 1, 2, 0);
	trans[0][505]	= settr(504,0,3555,168,168,"output = 4", 1, 2, 0);
	trans[0][506]	= settr(505,0,507,169,0,"((input==25))", 1, 2, 0);
	trans[0][507]	= settr(506,0,508,170,170,"fsm_state = 48", 1, 2, 0);
	trans[0][508]	= settr(507,0,3555,171,171,"output = 4", 1, 2, 0);
	trans[0][509]	= settr(508,0,510,172,0,"((input==20))", 1, 2, 0);
	trans[0][510]	= settr(509,0,511,173,173,"fsm_state = 48", 1, 2, 0);
	trans[0][511]	= settr(510,0,3555,174,174,"output = 4", 1, 2, 0);
	trans[0][512]	= settr(511,0,513,175,0,"((input==27))", 1, 2, 0);
	trans[0][513]	= settr(512,0,514,176,176,"fsm_state = 47", 1, 2, 0);
	trans[0][514]	= settr(513,0,3555,177,177,"output = 4", 1, 2, 0);
	trans[0][515]	= settr(514,0,18,2,0,"else", 0, 2, 0);
	trans[0][516]	= settr(515,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][519]	= settr(518,0,561,178,0,"((fsm_state==47))", 1, 2, 0);
	T = trans[0][561] = settr(560,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(560,0,520,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(560,0,523,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(560,0,526,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(560,0,529,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(560,0,532,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(560,0,535,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(560,0,538,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(560,0,541,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(560,0,544,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(560,0,547,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(560,0,550,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(560,0,553,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(560,0,556,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(560,0,559,0,0,"IF", 0, 2, 0);
	trans[0][520]	= settr(519,0,521,179,0,"((input==16))", 1, 2, 0);
	trans[0][521]	= settr(520,0,522,180,180,"fsm_state = 48", 1, 2, 0);
	trans[0][522]	= settr(521,0,3555,181,181,"output = 4", 1, 2, 0);
	trans[0][562]	= settr(561,0,3555,1,0,".(goto)", 0, 2, 0);
	trans[0][523]	= settr(522,0,524,182,0,"((input==18))", 1, 2, 0);
	trans[0][524]	= settr(523,0,525,183,183,"fsm_state = 47", 1, 2, 0);
	trans[0][525]	= settr(524,0,3555,184,184,"output = 4", 1, 2, 0);
	trans[0][526]	= settr(525,0,527,185,0,"((input==26))", 1, 2, 0);
	trans[0][527]	= settr(526,0,528,186,186,"fsm_state = 47", 1, 2, 0);
	trans[0][528]	= settr(527,0,3555,187,187,"output = 4", 1, 2, 0);
	trans[0][529]	= settr(528,0,530,188,0,"((input==17))", 1, 2, 0);
	trans[0][530]	= settr(529,0,531,189,189,"fsm_state = 47", 1, 2, 0);
	trans[0][531]	= settr(530,0,3555,190,190,"output = 4", 1, 2, 0);
	trans[0][532]	= settr(531,0,533,191,0,"((input==21))", 1, 2, 0);
	trans[0][533]	= settr(532,0,534,192,192,"fsm_state = 47", 1, 2, 0);
	trans[0][534]	= settr(533,0,3555,193,193,"output = 15", 1, 2, 0);
	trans[0][535]	= settr(534,0,536,194,0,"((input==28))", 1, 2, 0);
	trans[0][536]	= settr(535,0,537,195,195,"fsm_state = 47", 1, 2, 0);
	trans[0][537]	= settr(536,0,3555,196,196,"output = 15", 1, 2, 0);
	trans[0][538]	= settr(537,0,539,197,0,"((input==23))", 1, 2, 0);
	trans[0][539]	= settr(538,0,540,198,198,"fsm_state = 47", 1, 2, 0);
	trans[0][540]	= settr(539,0,3555,199,199,"output = 4", 1, 2, 0);
	trans[0][541]	= settr(540,0,542,200,0,"((input==19))", 1, 2, 0);
	trans[0][542]	= settr(541,0,543,201,201,"fsm_state = 47", 1, 2, 0);
	trans[0][543]	= settr(542,0,3555,202,202,"output = 4", 1, 2, 0);
	trans[0][544]	= settr(543,0,545,203,0,"((input==27))", 1, 2, 0);
	trans[0][545]	= settr(544,0,546,204,204,"fsm_state = 47", 1, 2, 0);
	trans[0][546]	= settr(545,0,3555,205,205,"output = 15", 1, 2, 0);
	trans[0][547]	= settr(546,0,548,206,0,"((input==22))", 1, 2, 0);
	trans[0][548]	= settr(547,0,549,207,207,"fsm_state = 47", 1, 2, 0);
	trans[0][549]	= settr(548,0,3555,208,208,"output = 4", 1, 2, 0);
	trans[0][550]	= settr(549,0,551,209,0,"((input==24))", 1, 2, 0);
	trans[0][551]	= settr(550,0,552,210,210,"fsm_state = 47", 1, 2, 0);
	trans[0][552]	= settr(551,0,3555,211,211,"output = 4", 1, 2, 0);
	trans[0][553]	= settr(552,0,554,212,0,"((input==25))", 1, 2, 0);
	trans[0][554]	= settr(553,0,555,213,213,"fsm_state = 47", 1, 2, 0);
	trans[0][555]	= settr(554,0,3555,214,214,"output = 15", 1, 2, 0);
	trans[0][556]	= settr(555,0,557,215,0,"((input==20))", 1, 2, 0);
	trans[0][557]	= settr(556,0,558,216,216,"fsm_state = 47", 1, 2, 0);
	trans[0][558]	= settr(557,0,3555,217,217,"output = 4", 1, 2, 0);
	trans[0][559]	= settr(558,0,18,2,0,"else", 0, 2, 0);
	trans[0][560]	= settr(559,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][563]	= settr(562,0,651,218,0,"((fsm_state==46))", 1, 2, 0);
	T = trans[0][651] = settr(650,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(650,0,564,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(650,0,567,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(650,0,570,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(650,0,573,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(650,0,576,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(650,0,579,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(650,0,582,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(650,0,585,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(650,0,588,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(650,0,591,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(650,0,594,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(650,0,597,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(650,0,600,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(650,0,649,0,0,"IF", 0, 2, 0);
	trans[0][564]	= settr(563,0,565,219,0,"((input==16))", 1, 2, 0);
	trans[0][565]	= settr(564,0,566,220,220,"fsm_state = 48", 1, 2, 0);
	trans[0][566]	= settr(565,0,3555,221,221,"output = 10", 1, 2, 0);
	trans[0][652]	= settr(651,0,3555,1,0,".(goto)", 0, 2, 0);
	trans[0][567]	= settr(566,0,568,222,0,"((input==18))", 1, 2, 0);
	trans[0][568]	= settr(567,0,569,223,223,"fsm_state = 47", 1, 2, 0);
	trans[0][569]	= settr(568,0,3555,224,224,"output = 10", 1, 2, 0);
	trans[0][570]	= settr(569,0,571,225,0,"((input==23))", 1, 2, 0);
	trans[0][571]	= settr(570,0,572,226,226,"fsm_state = 47", 1, 2, 0);
	trans[0][572]	= settr(571,0,3555,227,227,"output = 10", 1, 2, 0);
	trans[0][573]	= settr(572,0,574,228,0,"((input==19))", 1, 2, 0);
	trans[0][574]	= settr(573,0,575,229,229,"fsm_state = 47", 1, 2, 0);
	trans[0][575]	= settr(574,0,3555,230,230,"output = 10", 1, 2, 0);
	trans[0][576]	= settr(575,0,577,231,0,"((input==22))", 1, 2, 0);
	trans[0][577]	= settr(576,0,578,232,232,"fsm_state = 47", 1, 2, 0);
	trans[0][578]	= settr(577,0,3555,233,233,"output = 10", 1, 2, 0);
	trans[0][579]	= settr(578,0,580,234,0,"((input==24))", 1, 2, 0);
	trans[0][580]	= settr(579,0,581,235,235,"fsm_state = 47", 1, 2, 0);
	trans[0][581]	= settr(580,0,3555,236,236,"output = 10", 1, 2, 0);
	trans[0][582]	= settr(581,0,583,237,0,"((input==20))", 1, 2, 0);
	trans[0][583]	= settr(582,0,584,238,238,"fsm_state = 47", 1, 2, 0);
	trans[0][584]	= settr(583,0,3555,239,239,"output = 10", 1, 2, 0);
	trans[0][585]	= settr(584,0,586,240,0,"((input==21))", 1, 2, 0);
	trans[0][586]	= settr(585,0,587,241,241,"fsm_state = 46", 1, 2, 0);
	trans[0][587]	= settr(586,0,3555,242,242,"output = 15", 1, 2, 0);
	trans[0][588]	= settr(587,0,589,243,0,"((input==28))", 1, 2, 0);
	trans[0][589]	= settr(588,0,590,244,244,"fsm_state = 46", 1, 2, 0);
	trans[0][590]	= settr(589,0,3555,245,245,"output = 15", 1, 2, 0);
	trans[0][591]	= settr(590,0,592,246,0,"((input==27))", 1, 2, 0);
	trans[0][592]	= settr(591,0,593,247,247,"fsm_state = 46", 1, 2, 0);
	trans[0][593]	= settr(592,0,3555,248,248,"output = 15", 1, 2, 0);
	trans[0][594]	= settr(593,0,595,249,0,"((input==25))", 1, 2, 0);
	trans[0][595]	= settr(594,0,596,250,250,"fsm_state = 46", 1, 2, 0);
	trans[0][596]	= settr(595,0,3555,251,251,"output = 15", 1, 2, 0);
	trans[0][597]	= settr(596,0,598,252,0,"((input==17))", 1, 2, 0);
	trans[0][598]	= settr(597,0,18,253,253,"fsm_state = 45", 1, 2, 0);
	trans[0][599]	= settr(598,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][600]	= settr(599,0,601,254,0,"((input==26))", 1, 2, 0);
	trans[0][601]	= settr(600,0,602,255,255,"fsm_state = 44", 1, 2, 0);
	trans[0][602]	= settr(601,0,603,256,256,"output = 3", 1, 2, 0);
	trans[0][603]	= settr(602,0,646,257,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][646] = settr(645,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(645,0,639,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][639]	= settr(638,32,644,258,258,"D_STEP13", 1, 2, 0);
	T = trans[0][644] = settr(643,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(643,0,640,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(643,0,642,0,0,"IF", 0, 2, 0);
	trans[0][640]	= settr(639,0,1,259,0,"((dealt==0))", 1, 2, 0);
	trans[0][641]	= settr(640,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][645]	= settr(644,0,647,1,0,".(goto)", 0, 2, 0);
	trans[0][642]	= settr(641,0,643,2,0,"else", 0, 2, 0);
	trans[0][643]	= settr(642,0,647,1,0,"(1)", 0, 2, 0);
	trans[0][647]	= settr(646,0,648,260,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][648]	= settr(647,0,3555,261,261,"output = 12", 1, 2, 0);
	trans[0][649]	= settr(648,0,18,2,0,"else", 0, 2, 0);
	trans[0][650]	= settr(649,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][653]	= settr(652,0,695,262,0,"((fsm_state==45))", 1, 2, 0);
	T = trans[0][695] = settr(694,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(694,0,654,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(694,0,657,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(694,0,660,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(694,0,663,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(694,0,666,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(694,0,669,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(694,0,672,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(694,0,675,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(694,0,678,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(694,0,681,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(694,0,684,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(694,0,687,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(694,0,690,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(694,0,693,0,0,"IF", 0, 2, 0);
	trans[0][654]	= settr(653,0,655,263,0,"((input==18))", 1, 2, 0);
	trans[0][655]	= settr(654,0,18,264,264,"fsm_state = 45", 1, 2, 0);
	trans[0][656]	= settr(655,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][696]	= settr(695,0,3555,1,0,".(goto)", 0, 2, 0);
	trans[0][657]	= settr(656,0,658,265,0,"((input==26))", 1, 2, 0);
	trans[0][658]	= settr(657,0,18,266,266,"fsm_state = 45", 1, 2, 0);
	trans[0][659]	= settr(658,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][660]	= settr(659,0,661,267,0,"((input==17))", 1, 2, 0);
	trans[0][661]	= settr(660,0,18,268,268,"fsm_state = 45", 1, 2, 0);
	trans[0][662]	= settr(661,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][663]	= settr(662,0,664,269,0,"((input==21))", 1, 2, 0);
	trans[0][664]	= settr(663,0,665,270,270,"fsm_state = 45", 1, 2, 0);
	trans[0][665]	= settr(664,0,3555,271,271,"output = 15", 1, 2, 0);
	trans[0][666]	= settr(665,0,667,272,0,"((input==28))", 1, 2, 0);
	trans[0][667]	= settr(666,0,668,273,273,"fsm_state = 45", 1, 2, 0);
	trans[0][668]	= settr(667,0,3555,274,274,"output = 15", 1, 2, 0);
	trans[0][669]	= settr(668,0,670,275,0,"((input==23))", 1, 2, 0);
	trans[0][670]	= settr(669,0,18,276,276,"fsm_state = 45", 1, 2, 0);
	trans[0][671]	= settr(670,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][672]	= settr(671,0,673,277,0,"((input==19))", 1, 2, 0);
	trans[0][673]	= settr(672,0,18,278,278,"fsm_state = 45", 1, 2, 0);
	trans[0][674]	= settr(673,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][675]	= settr(674,0,676,279,0,"((input==27))", 1, 2, 0);
	trans[0][676]	= settr(675,0,677,280,280,"fsm_state = 45", 1, 2, 0);
	trans[0][677]	= settr(676,0,3555,281,281,"output = 15", 1, 2, 0);
	trans[0][678]	= settr(677,0,679,282,0,"((input==22))", 1, 2, 0);
	trans[0][679]	= settr(678,0,18,283,283,"fsm_state = 45", 1, 2, 0);
	trans[0][680]	= settr(679,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][681]	= settr(680,0,682,284,0,"((input==24))", 1, 2, 0);
	trans[0][682]	= settr(681,0,18,285,285,"fsm_state = 45", 1, 2, 0);
	trans[0][683]	= settr(682,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][684]	= settr(683,0,685,286,0,"((input==25))", 1, 2, 0);
	trans[0][685]	= settr(684,0,686,287,287,"fsm_state = 45", 1, 2, 0);
	trans[0][686]	= settr(685,0,3555,288,288,"output = 15", 1, 2, 0);
	trans[0][687]	= settr(686,0,688,289,0,"((input==20))", 1, 2, 0);
	trans[0][688]	= settr(687,0,18,290,290,"fsm_state = 45", 1, 2, 0);
	trans[0][689]	= settr(688,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][690]	= settr(689,0,691,291,0,"((input==16))", 1, 2, 0);
	trans[0][691]	= settr(690,0,18,292,292,"fsm_state = 43", 1, 2, 0);
	trans[0][692]	= settr(691,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][693]	= settr(692,0,18,2,0,"else", 0, 2, 0);
	trans[0][694]	= settr(693,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][697]	= settr(696,0,739,293,0,"((fsm_state==44))", 1, 2, 0);
	T = trans[0][739] = settr(738,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(738,0,698,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(738,0,701,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(738,0,704,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(738,0,707,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(738,0,710,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(738,0,713,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(738,0,716,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(738,0,719,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(738,0,722,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(738,0,725,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(738,0,728,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(738,0,731,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(738,0,734,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(738,0,737,0,0,"IF", 0, 2, 0);
	trans[0][698]	= settr(697,0,699,294,0,"((input==16))", 1, 2, 0);
	trans[0][699]	= settr(698,0,700,295,295,"fsm_state = 48", 1, 2, 0);
	trans[0][700]	= settr(699,0,3555,296,296,"output = 10", 1, 2, 0);
	trans[0][740]	= settr(739,0,3555,1,0,".(goto)", 0, 2, 0);
	trans[0][701]	= settr(700,0,702,297,0,"((input==18))", 1, 2, 0);
	trans[0][702]	= settr(701,0,703,298,298,"fsm_state = 47", 1, 2, 0);
	trans[0][703]	= settr(702,0,3555,299,299,"output = 10", 1, 2, 0);
	trans[0][704]	= settr(703,0,705,300,0,"((input==26))", 1, 2, 0);
	trans[0][705]	= settr(704,0,706,301,301,"fsm_state = 47", 1, 2, 0);
	trans[0][706]	= settr(705,0,3555,302,302,"output = 10", 1, 2, 0);
	trans[0][707]	= settr(706,0,708,303,0,"((input==23))", 1, 2, 0);
	trans[0][708]	= settr(707,0,709,304,304,"fsm_state = 47", 1, 2, 0);
	trans[0][709]	= settr(708,0,3555,305,305,"output = 10", 1, 2, 0);
	trans[0][710]	= settr(709,0,711,306,0,"((input==19))", 1, 2, 0);
	trans[0][711]	= settr(710,0,712,307,307,"fsm_state = 47", 1, 2, 0);
	trans[0][712]	= settr(711,0,3555,308,308,"output = 10", 1, 2, 0);
	trans[0][713]	= settr(712,0,714,309,0,"((input==22))", 1, 2, 0);
	trans[0][714]	= settr(713,0,715,310,310,"fsm_state = 47", 1, 2, 0);
	trans[0][715]	= settr(714,0,3555,311,311,"output = 10", 1, 2, 0);
	trans[0][716]	= settr(715,0,717,312,0,"((input==24))", 1, 2, 0);
	trans[0][717]	= settr(716,0,718,313,313,"fsm_state = 47", 1, 2, 0);
	trans[0][718]	= settr(717,0,3555,314,314,"output = 10", 1, 2, 0);
	trans[0][719]	= settr(718,0,720,315,0,"((input==20))", 1, 2, 0);
	trans[0][720]	= settr(719,0,721,316,316,"fsm_state = 47", 1, 2, 0);
	trans[0][721]	= settr(720,0,3555,317,317,"output = 10", 1, 2, 0);
	trans[0][722]	= settr(721,0,723,318,0,"((input==21))", 1, 2, 0);
	trans[0][723]	= settr(722,0,724,319,319,"fsm_state = 44", 1, 2, 0);
	trans[0][724]	= settr(723,0,3555,320,320,"output = 15", 1, 2, 0);
	trans[0][725]	= settr(724,0,726,321,0,"((input==28))", 1, 2, 0);
	trans[0][726]	= settr(725,0,727,322,322,"fsm_state = 44", 1, 2, 0);
	trans[0][727]	= settr(726,0,3555,323,323,"output = 15", 1, 2, 0);
	trans[0][728]	= settr(727,0,729,324,0,"((input==27))", 1, 2, 0);
	trans[0][729]	= settr(728,0,730,325,325,"fsm_state = 44", 1, 2, 0);
	trans[0][730]	= settr(729,0,3555,326,326,"output = 15", 1, 2, 0);
	trans[0][731]	= settr(730,0,732,327,0,"((input==25))", 1, 2, 0);
	trans[0][732]	= settr(731,0,733,328,328,"fsm_state = 44", 1, 2, 0);
	trans[0][733]	= settr(732,0,3555,329,329,"output = 15", 1, 2, 0);
	trans[0][734]	= settr(733,0,735,330,0,"((input==17))", 1, 2, 0);
	trans[0][735]	= settr(734,0,18,331,331,"fsm_state = 42", 1, 2, 0);
	trans[0][736]	= settr(735,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][737]	= settr(736,0,18,2,0,"else", 0, 2, 0);
	trans[0][738]	= settr(737,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][741]	= settr(740,0,783,332,0,"((fsm_state==43))", 1, 2, 0);
	T = trans[0][783] = settr(782,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(782,0,742,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(782,0,745,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(782,0,748,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(782,0,751,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(782,0,754,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(782,0,757,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(782,0,760,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(782,0,763,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(782,0,766,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(782,0,769,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(782,0,772,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(782,0,775,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(782,0,778,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(782,0,781,0,0,"IF", 0, 2, 0);
	trans[0][742]	= settr(741,0,743,333,0,"((input==27))", 1, 2, 0);
	trans[0][743]	= settr(742,0,18,334,334,"fsm_state = 45", 1, 2, 0);
	trans[0][744]	= settr(743,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][784]	= settr(783,0,3555,1,0,".(goto)", 0, 2, 0);
	trans[0][745]	= settr(744,0,746,335,0,"((input==18))", 1, 2, 0);
	trans[0][746]	= settr(745,0,18,336,336,"fsm_state = 43", 1, 2, 0);
	trans[0][747]	= settr(746,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][748]	= settr(747,0,749,337,0,"((input==26))", 1, 2, 0);
	trans[0][749]	= settr(748,0,18,338,338,"fsm_state = 43", 1, 2, 0);
	trans[0][750]	= settr(749,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][751]	= settr(750,0,752,339,0,"((input==17))", 1, 2, 0);
	trans[0][752]	= settr(751,0,18,340,340,"fsm_state = 43", 1, 2, 0);
	trans[0][753]	= settr(752,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][754]	= settr(753,0,755,341,0,"((input==21))", 1, 2, 0);
	trans[0][755]	= settr(754,0,18,342,342,"fsm_state = 43", 1, 2, 0);
	trans[0][756]	= settr(755,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][757]	= settr(756,0,758,343,0,"((input==16))", 1, 2, 0);
	trans[0][758]	= settr(757,0,759,344,344,"fsm_state = 43", 1, 2, 0);
	trans[0][759]	= settr(758,0,3555,345,345,"output = 5", 1, 2, 0);
	trans[0][760]	= settr(759,0,761,346,0,"((input==28))", 1, 2, 0);
	trans[0][761]	= settr(760,0,18,347,347,"fsm_state = 43", 1, 2, 0);
	trans[0][762]	= settr(761,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][763]	= settr(762,0,764,348,0,"((input==23))", 1, 2, 0);
	trans[0][764]	= settr(763,0,18,349,349,"fsm_state = 43", 1, 2, 0);
	trans[0][765]	= settr(764,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][766]	= settr(765,0,767,350,0,"((input==19))", 1, 2, 0);
	trans[0][767]	= settr(766,0,18,351,351,"fsm_state = 43", 1, 2, 0);
	trans[0][768]	= settr(767,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][769]	= settr(768,0,770,352,0,"((input==22))", 1, 2, 0);
	trans[0][770]	= settr(769,0,18,353,353,"fsm_state = 43", 1, 2, 0);
	trans[0][771]	= settr(770,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][772]	= settr(771,0,773,354,0,"((input==24))", 1, 2, 0);
	trans[0][773]	= settr(772,0,18,355,355,"fsm_state = 43", 1, 2, 0);
	trans[0][774]	= settr(773,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][775]	= settr(774,0,776,356,0,"((input==25))", 1, 2, 0);
	trans[0][776]	= settr(775,0,18,357,357,"fsm_state = 43", 1, 2, 0);
	trans[0][777]	= settr(776,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][778]	= settr(777,0,779,358,0,"((input==20))", 1, 2, 0);
	trans[0][779]	= settr(778,0,18,359,359,"fsm_state = 43", 1, 2, 0);
	trans[0][780]	= settr(779,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][781]	= settr(780,0,18,2,0,"else", 0, 2, 0);
	trans[0][782]	= settr(781,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][785]	= settr(784,0,827,360,0,"((fsm_state==42))", 1, 2, 0);
	T = trans[0][827] = settr(826,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(826,0,786,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(826,0,789,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(826,0,792,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(826,0,795,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(826,0,798,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(826,0,801,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(826,0,804,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(826,0,807,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(826,0,810,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(826,0,813,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(826,0,816,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(826,0,819,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(826,0,822,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(826,0,825,0,0,"IF", 0, 2, 0);
	trans[0][786]	= settr(785,0,787,361,0,"((input==26))", 1, 2, 0);
	trans[0][787]	= settr(786,0,788,362,362,"fsm_state = 47", 1, 2, 0);
	trans[0][788]	= settr(787,0,3555,363,363,"output = 10", 1, 2, 0);
	trans[0][828]	= settr(827,0,3555,1,0,".(goto)", 0, 2, 0);
	trans[0][789]	= settr(788,0,790,364,0,"((input==17))", 1, 2, 0);
	trans[0][790]	= settr(789,0,791,365,365,"fsm_state = 47", 1, 2, 0);
	trans[0][791]	= settr(790,0,3555,366,366,"output = 10", 1, 2, 0);
	trans[0][792]	= settr(791,0,793,367,0,"((input==22))", 1, 2, 0);
	trans[0][793]	= settr(792,0,794,368,368,"fsm_state = 47", 1, 2, 0);
	trans[0][794]	= settr(793,0,3555,369,369,"output = 10", 1, 2, 0);
	trans[0][795]	= settr(794,0,796,370,0,"((input==18))", 1, 2, 0);
	trans[0][796]	= settr(795,0,18,371,371,"fsm_state = 42", 1, 2, 0);
	trans[0][797]	= settr(796,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][798]	= settr(797,0,799,372,0,"((input==21))", 1, 2, 0);
	trans[0][799]	= settr(798,0,800,373,373,"fsm_state = 42", 1, 2, 0);
	trans[0][800]	= settr(799,0,3555,374,374,"output = 15", 1, 2, 0);
	trans[0][801]	= settr(800,0,802,375,0,"((input==28))", 1, 2, 0);
	trans[0][802]	= settr(801,0,803,376,376,"fsm_state = 42", 1, 2, 0);
	trans[0][803]	= settr(802,0,3555,377,377,"output = 15", 1, 2, 0);
	trans[0][804]	= settr(803,0,805,378,0,"((input==23))", 1, 2, 0);
	trans[0][805]	= settr(804,0,18,379,379,"fsm_state = 42", 1, 2, 0);
	trans[0][806]	= settr(805,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][807]	= settr(806,0,808,380,0,"((input==27))", 1, 2, 0);
	trans[0][808]	= settr(807,0,809,381,381,"fsm_state = 42", 1, 2, 0);
	trans[0][809]	= settr(808,0,3555,382,382,"output = 15", 1, 2, 0);
	trans[0][810]	= settr(809,0,811,383,0,"((input==25))", 1, 2, 0);
	trans[0][811]	= settr(810,0,812,384,384,"fsm_state = 42", 1, 2, 0);
	trans[0][812]	= settr(811,0,3555,385,385,"output = 15", 1, 2, 0);
	trans[0][813]	= settr(812,0,814,386,0,"((input==19))", 1, 2, 0);
	trans[0][814]	= settr(813,0,815,387,387,"fsm_state = 41", 1, 2, 0);
	trans[0][815]	= settr(814,0,3555,388,388,"output = 2", 1, 2, 0);
	trans[0][816]	= settr(815,0,817,389,0,"((input==16))", 1, 2, 0);
	trans[0][817]	= settr(816,0,18,390,390,"fsm_state = 40", 1, 2, 0);
	trans[0][818]	= settr(817,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][819]	= settr(818,0,820,391,0,"((input==24))", 1, 2, 0);
	trans[0][820]	= settr(819,0,821,392,392,"fsm_state = 39", 1, 2, 0);
	trans[0][821]	= settr(820,0,3555,393,393,"output = 2", 1, 2, 0);
	trans[0][822]	= settr(821,0,823,394,0,"((input==20))", 1, 2, 0);
	trans[0][823]	= settr(822,0,824,395,395,"fsm_state = 38", 1, 2, 0);
	trans[0][824]	= settr(823,0,3555,396,396,"output = 14", 1, 2, 0);
	trans[0][825]	= settr(824,0,18,2,0,"else", 0, 2, 0);
	trans[0][826]	= settr(825,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][829]	= settr(828,0,871,397,0,"((fsm_state==41))", 1, 2, 0);
	T = trans[0][871] = settr(870,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(870,0,830,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(870,0,833,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(870,0,836,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(870,0,839,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(870,0,842,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(870,0,845,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(870,0,848,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(870,0,851,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(870,0,854,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(870,0,857,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(870,0,860,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(870,0,863,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(870,0,866,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(870,0,869,0,0,"IF", 0, 2, 0);
	trans[0][830]	= settr(829,0,831,398,0,"((input==19))", 1, 2, 0);
	trans[0][831]	= settr(830,0,832,399,399,"fsm_state = 47", 1, 2, 0);
	trans[0][832]	= settr(831,0,3555,400,400,"output = 10", 1, 2, 0);
	trans[0][872]	= settr(871,0,3555,1,0,".(goto)", 0, 2, 0);
	trans[0][833]	= settr(832,0,834,401,0,"((input==22))", 1, 2, 0);
	trans[0][834]	= settr(833,0,835,402,402,"fsm_state = 47", 1, 2, 0);
	trans[0][835]	= settr(834,0,3555,403,403,"output = 10", 1, 2, 0);
	trans[0][836]	= settr(835,0,837,404,0,"((input==24))", 1, 2, 0);
	trans[0][837]	= settr(836,0,838,405,405,"fsm_state = 47", 1, 2, 0);
	trans[0][838]	= settr(837,0,3555,406,406,"output = 10", 1, 2, 0);
	trans[0][839]	= settr(838,0,840,407,0,"((input==20))", 1, 2, 0);
	trans[0][840]	= settr(839,0,841,408,408,"fsm_state = 47", 1, 2, 0);
	trans[0][841]	= settr(840,0,3555,409,409,"output = 10", 1, 2, 0);
	trans[0][842]	= settr(841,0,843,410,0,"((input==17))", 1, 2, 0);
	trans[0][843]	= settr(842,0,18,411,411,"fsm_state = 45", 1, 2, 0);
	trans[0][844]	= settr(843,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][845]	= settr(844,0,846,412,0,"((input==18))", 1, 2, 0);
	trans[0][846]	= settr(845,0,18,413,413,"fsm_state = 41", 1, 2, 0);
	trans[0][847]	= settr(846,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][848]	= settr(847,0,849,414,0,"((input==21))", 1, 2, 0);
	trans[0][849]	= settr(848,0,850,415,415,"fsm_state = 41", 1, 2, 0);
	trans[0][850]	= settr(849,0,3555,416,416,"output = 15", 1, 2, 0);
	trans[0][851]	= settr(850,0,852,417,0,"((input==28))", 1, 2, 0);
	trans[0][852]	= settr(851,0,853,418,418,"fsm_state = 41", 1, 2, 0);
	trans[0][853]	= settr(852,0,3555,419,419,"output = 15", 1, 2, 0);
	trans[0][854]	= settr(853,0,855,420,0,"((input==23))", 1, 2, 0);
	trans[0][855]	= settr(854,0,18,421,421,"fsm_state = 41", 1, 2, 0);
	trans[0][856]	= settr(855,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][857]	= settr(856,0,858,422,0,"((input==27))", 1, 2, 0);
	trans[0][858]	= settr(857,0,859,423,423,"fsm_state = 41", 1, 2, 0);
	trans[0][859]	= settr(858,0,3555,424,424,"output = 15", 1, 2, 0);
	trans[0][860]	= settr(859,0,861,425,0,"((input==25))", 1, 2, 0);
	trans[0][861]	= settr(860,0,862,426,426,"fsm_state = 41", 1, 2, 0);
	trans[0][862]	= settr(861,0,3555,427,427,"output = 15", 1, 2, 0);
	trans[0][863]	= settr(862,0,864,428,0,"((input==26))", 1, 2, 0);
	trans[0][864]	= settr(863,0,18,429,429,"fsm_state = 39", 1, 2, 0);
	trans[0][865]	= settr(864,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][866]	= settr(865,0,867,430,0,"((input==16))", 1, 2, 0);
	trans[0][867]	= settr(866,0,18,431,431,"fsm_state = 37", 1, 2, 0);
	trans[0][868]	= settr(867,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][869]	= settr(868,0,18,2,0,"else", 0, 2, 0);
	trans[0][870]	= settr(869,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][873]	= settr(872,0,915,432,0,"((fsm_state==40))", 1, 2, 0);
	T = trans[0][915] = settr(914,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(914,0,874,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(914,0,877,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(914,0,880,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(914,0,883,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(914,0,886,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(914,0,889,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(914,0,892,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(914,0,895,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(914,0,898,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(914,0,901,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(914,0,904,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(914,0,907,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(914,0,910,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(914,0,913,0,0,"IF", 0, 2, 0);
	trans[0][874]	= settr(873,0,875,433,0,"((input==26))", 1, 2, 0);
	trans[0][875]	= settr(874,0,876,434,434,"fsm_state = 48", 1, 2, 0);
	trans[0][876]	= settr(875,0,3555,435,435,"output = 10", 1, 2, 0);
	trans[0][916]	= settr(915,0,3555,1,0,".(goto)", 0, 2, 0);
	trans[0][877]	= settr(876,0,878,436,0,"((input==17))", 1, 2, 0);
	trans[0][878]	= settr(877,0,879,437,437,"fsm_state = 48", 1, 2, 0);
	trans[0][879]	= settr(878,0,3555,438,438,"output = 10", 1, 2, 0);
	trans[0][880]	= settr(879,0,881,439,0,"((input==22))", 1, 2, 0);
	trans[0][881]	= settr(880,0,882,440,440,"fsm_state = 48", 1, 2, 0);
	trans[0][882]	= settr(881,0,3555,441,441,"output = 10", 1, 2, 0);
	trans[0][883]	= settr(882,0,884,442,0,"((input==27))", 1, 2, 0);
	trans[0][884]	= settr(883,0,18,443,443,"fsm_state = 42", 1, 2, 0);
	trans[0][885]	= settr(884,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][886]	= settr(885,0,887,444,0,"((input==18))", 1, 2, 0);
	trans[0][887]	= settr(886,0,18,445,445,"fsm_state = 40", 1, 2, 0);
	trans[0][888]	= settr(887,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][889]	= settr(888,0,890,446,0,"((input==21))", 1, 2, 0);
	trans[0][890]	= settr(889,0,18,447,447,"fsm_state = 40", 1, 2, 0);
	trans[0][891]	= settr(890,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][892]	= settr(891,0,893,448,0,"((input==16))", 1, 2, 0);
	trans[0][893]	= settr(892,0,894,449,449,"fsm_state = 40", 1, 2, 0);
	trans[0][894]	= settr(893,0,3555,450,450,"output = 5", 1, 2, 0);
	trans[0][895]	= settr(894,0,896,451,0,"((input==28))", 1, 2, 0);
	trans[0][896]	= settr(895,0,18,452,452,"fsm_state = 40", 1, 2, 0);
	trans[0][897]	= settr(896,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][898]	= settr(897,0,899,453,0,"((input==23))", 1, 2, 0);
	trans[0][899]	= settr(898,0,18,454,454,"fsm_state = 40", 1, 2, 0);
	trans[0][900]	= settr(899,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][901]	= settr(900,0,902,455,0,"((input==25))", 1, 2, 0);
	trans[0][902]	= settr(901,0,18,456,456,"fsm_state = 40", 1, 2, 0);
	trans[0][903]	= settr(902,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][904]	= settr(903,0,905,457,0,"((input==19))", 1, 2, 0);
	trans[0][905]	= settr(904,0,906,458,458,"fsm_state = 37", 1, 2, 0);
	trans[0][906]	= settr(905,0,3555,459,459,"output = 2", 1, 2, 0);
	trans[0][907]	= settr(906,0,908,460,0,"((input==20))", 1, 2, 0);
	trans[0][908]	= settr(907,0,909,461,461,"fsm_state = 36", 1, 2, 0);
	trans[0][909]	= settr(908,0,3555,462,462,"output = 14", 1, 2, 0);
	trans[0][910]	= settr(909,0,911,463,0,"((input==24))", 1, 2, 0);
	trans[0][911]	= settr(910,0,912,464,464,"fsm_state = 35", 1, 2, 0);
	trans[0][912]	= settr(911,0,3555,465,465,"output = 2", 1, 2, 0);
	trans[0][913]	= settr(912,0,18,2,0,"else", 0, 2, 0);
	trans[0][914]	= settr(913,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][917]	= settr(916,0,1005,466,0,"((fsm_state==39))", 1, 2, 0);
	T = trans[0][1005] = settr(1004,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1004,0,918,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1004,0,921,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1004,0,924,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1004,0,927,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1004,0,930,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1004,0,933,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1004,0,936,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1004,0,939,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1004,0,942,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1004,0,945,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1004,0,948,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1004,0,951,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1004,0,954,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1004,0,1003,0,0,"IF", 0, 2, 0);
	trans[0][918]	= settr(917,0,919,467,0,"((input==19))", 1, 2, 0);
	trans[0][919]	= settr(918,0,920,468,468,"fsm_state = 47", 1, 2, 0);
	trans[0][920]	= settr(919,0,3555,469,469,"output = 10", 1, 2, 0);
	trans[0][1006]	= settr(1005,0,3555,1,0,".(goto)", 0, 2, 0);
	trans[0][921]	= settr(920,0,922,470,0,"((input==22))", 1, 2, 0);
	trans[0][922]	= settr(921,0,923,471,471,"fsm_state = 47", 1, 2, 0);
	trans[0][923]	= settr(922,0,3555,472,472,"output = 10", 1, 2, 0);
	trans[0][924]	= settr(923,0,925,473,0,"((input==24))", 1, 2, 0);
	trans[0][925]	= settr(924,0,926,474,474,"fsm_state = 47", 1, 2, 0);
	trans[0][926]	= settr(925,0,3555,475,475,"output = 10", 1, 2, 0);
	trans[0][927]	= settr(926,0,928,476,0,"((input==20))", 1, 2, 0);
	trans[0][928]	= settr(927,0,929,477,477,"fsm_state = 47", 1, 2, 0);
	trans[0][929]	= settr(928,0,3555,478,478,"output = 10", 1, 2, 0);
	trans[0][930]	= settr(929,0,931,479,0,"((input==17))", 1, 2, 0);
	trans[0][931]	= settr(930,0,18,480,480,"fsm_state = 45", 1, 2, 0);
	trans[0][932]	= settr(931,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][933]	= settr(932,0,934,481,0,"((input==18))", 1, 2, 0);
	trans[0][934]	= settr(933,0,18,482,482,"fsm_state = 39", 1, 2, 0);
	trans[0][935]	= settr(934,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][936]	= settr(935,0,937,483,0,"((input==21))", 1, 2, 0);
	trans[0][937]	= settr(936,0,938,484,484,"fsm_state = 39", 1, 2, 0);
	trans[0][938]	= settr(937,0,3555,485,485,"output = 15", 1, 2, 0);
	trans[0][939]	= settr(938,0,940,486,0,"((input==28))", 1, 2, 0);
	trans[0][940]	= settr(939,0,941,487,487,"fsm_state = 39", 1, 2, 0);
	trans[0][941]	= settr(940,0,3555,488,488,"output = 15", 1, 2, 0);
	trans[0][942]	= settr(941,0,943,489,0,"((input==23))", 1, 2, 0);
	trans[0][943]	= settr(942,0,18,490,490,"fsm_state = 39", 1, 2, 0);
	trans[0][944]	= settr(943,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][945]	= settr(944,0,946,491,0,"((input==27))", 1, 2, 0);
	trans[0][946]	= settr(945,0,947,492,492,"fsm_state = 39", 1, 2, 0);
	trans[0][947]	= settr(946,0,3555,493,493,"output = 15", 1, 2, 0);
	trans[0][948]	= settr(947,0,949,494,0,"((input==25))", 1, 2, 0);
	trans[0][949]	= settr(948,0,950,495,495,"fsm_state = 39", 1, 2, 0);
	trans[0][950]	= settr(949,0,3555,496,496,"output = 15", 1, 2, 0);
	trans[0][951]	= settr(950,0,952,497,0,"((input==16))", 1, 2, 0);
	trans[0][952]	= settr(951,0,18,498,498,"fsm_state = 35", 1, 2, 0);
	trans[0][953]	= settr(952,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][954]	= settr(953,0,955,499,0,"((input==26))", 1, 2, 0);
	trans[0][955]	= settr(954,0,956,500,500,"fsm_state = 34", 1, 2, 0);
	trans[0][956]	= settr(955,0,957,501,501,"output = 3", 1, 2, 0);
	trans[0][957]	= settr(956,0,1000,502,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][1000] = settr(999,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(999,0,993,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][993]	= settr(992,32,998,503,503,"D_STEP13", 1, 2, 0);
	T = trans[0][998] = settr(997,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(997,0,994,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(997,0,996,0,0,"IF", 0, 2, 0);
	trans[0][994]	= settr(993,0,1,504,0,"((dealt==0))", 1, 2, 0);
	trans[0][995]	= settr(994,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][999]	= settr(998,0,1001,1,0,".(goto)", 0, 2, 0);
	trans[0][996]	= settr(995,0,997,2,0,"else", 0, 2, 0);
	trans[0][997]	= settr(996,0,1001,1,0,"(1)", 0, 2, 0);
	trans[0][1001]	= settr(1000,0,1002,505,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][1002]	= settr(1001,0,3555,506,506,"output = 12", 1, 2, 0);
	trans[0][1003]	= settr(1002,0,18,2,0,"else", 0, 2, 0);
	trans[0][1004]	= settr(1003,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1007]	= settr(1006,0,1049,507,0,"((fsm_state==38))", 1, 2, 0);
	T = trans[0][1049] = settr(1048,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1048,0,1008,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1048,0,1011,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1048,0,1014,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1048,0,1017,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1048,0,1020,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1048,0,1023,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1048,0,1026,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1048,0,1029,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1048,0,1032,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1048,0,1035,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1048,0,1038,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1048,0,1041,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1048,0,1044,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1048,0,1047,0,0,"IF", 0, 2, 0);
	trans[0][1008]	= settr(1007,0,1009,508,0,"((input==26))", 1, 2, 0);
	trans[0][1009]	= settr(1008,0,1010,509,509,"fsm_state = 47", 1, 2, 0);
	trans[0][1010]	= settr(1009,0,3555,510,510,"output = 10", 1, 2, 0);
	trans[0][1050]	= settr(1049,0,3555,1,0,".(goto)", 0, 2, 0);
	trans[0][1011]	= settr(1010,0,1012,511,0,"((input==17))", 1, 2, 0);
	trans[0][1012]	= settr(1011,0,1013,512,512,"fsm_state = 47", 1, 2, 0);
	trans[0][1013]	= settr(1012,0,3555,513,513,"output = 10", 1, 2, 0);
	trans[0][1014]	= settr(1013,0,1015,514,0,"((input==22))", 1, 2, 0);
	trans[0][1015]	= settr(1014,0,1016,515,515,"fsm_state = 47", 1, 2, 0);
	trans[0][1016]	= settr(1015,0,3555,516,516,"output = 10", 1, 2, 0);
	trans[0][1017]	= settr(1016,0,1018,517,0,"((input==18))", 1, 2, 0);
	trans[0][1018]	= settr(1017,0,1019,518,518,"fsm_state = 38", 1, 2, 0);
	trans[0][1019]	= settr(1018,0,3555,519,519,"output = 1", 1, 2, 0);
	trans[0][1020]	= settr(1019,0,1021,520,0,"((input==21))", 1, 2, 0);
	trans[0][1021]	= settr(1020,0,1022,521,521,"fsm_state = 38", 1, 2, 0);
	trans[0][1022]	= settr(1021,0,3555,522,522,"output = 15", 1, 2, 0);
	trans[0][1023]	= settr(1022,0,1024,523,0,"((input==28))", 1, 2, 0);
	trans[0][1024]	= settr(1023,0,1025,524,524,"fsm_state = 38", 1, 2, 0);
	trans[0][1025]	= settr(1024,0,3555,525,525,"output = 15", 1, 2, 0);
	trans[0][1026]	= settr(1025,0,1027,526,0,"((input==27))", 1, 2, 0);
	trans[0][1027]	= settr(1026,0,1028,527,527,"fsm_state = 38", 1, 2, 0);
	trans[0][1028]	= settr(1027,0,3555,528,528,"output = 15", 1, 2, 0);
	trans[0][1029]	= settr(1028,0,1030,529,0,"((input==25))", 1, 2, 0);
	trans[0][1030]	= settr(1029,0,1031,530,530,"fsm_state = 38", 1, 2, 0);
	trans[0][1031]	= settr(1030,0,3555,531,531,"output = 15", 1, 2, 0);
	trans[0][1032]	= settr(1031,0,1033,532,0,"((input==20))", 1, 2, 0);
	trans[0][1033]	= settr(1032,0,1034,533,533,"fsm_state = 38", 1, 2, 0);
	trans[0][1034]	= settr(1033,0,3555,534,534,"output = 14", 1, 2, 0);
	trans[0][1035]	= settr(1034,0,1036,535,0,"((input==16))", 1, 2, 0);
	trans[0][1036]	= settr(1035,0,1037,536,536,"fsm_state = 36", 1, 2, 0);
	trans[0][1037]	= settr(1036,0,3555,537,537,"output = 8", 1, 2, 0);
	trans[0][1038]	= settr(1037,0,1039,538,0,"((input==19))", 1, 2, 0);
	trans[0][1039]	= settr(1038,0,1040,539,539,"fsm_state = 33", 1, 2, 0);
	trans[0][1040]	= settr(1039,0,3555,540,540,"output = 2", 1, 2, 0);
	trans[0][1041]	= settr(1040,0,1042,541,0,"((input==23))", 1, 2, 0);
	trans[0][1042]	= settr(1041,0,1043,542,542,"fsm_state = 32", 1, 2, 0);
	trans[0][1043]	= settr(1042,0,3555,543,543,"output = 6", 1, 2, 0);
	trans[0][1044]	= settr(1043,0,1045,544,0,"((input==24))", 1, 2, 0);
	trans[0][1045]	= settr(1044,0,1046,545,545,"fsm_state = 31", 1, 2, 0);
	trans[0][1046]	= settr(1045,0,3555,546,546,"output = 2", 1, 2, 0);
	trans[0][1047]	= settr(1046,0,18,2,0,"else", 0, 2, 0);
	trans[0][1048]	= settr(1047,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1051]	= settr(1050,0,1093,547,0,"((fsm_state==37))", 1, 2, 0);
	T = trans[0][1093] = settr(1092,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1092,0,1052,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1092,0,1055,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1092,0,1058,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1092,0,1061,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1092,0,1064,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1092,0,1067,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1092,0,1070,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1092,0,1073,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1092,0,1076,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1092,0,1079,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1092,0,1082,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1092,0,1085,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1092,0,1088,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1092,0,1091,0,0,"IF", 0, 2, 0);
	trans[0][1052]	= settr(1051,0,1053,548,0,"((input==19))", 1, 2, 0);
	trans[0][1053]	= settr(1052,0,1054,549,549,"fsm_state = 48", 1, 2, 0);
	trans[0][1054]	= settr(1053,0,3555,550,550,"output = 10", 1, 2, 0);
	trans[0][1094]	= settr(1093,0,3555,1,0,".(goto)", 0, 2, 0);
	trans[0][1055]	= settr(1054,0,1056,551,0,"((input==22))", 1, 2, 0);
	trans[0][1056]	= settr(1055,0,1057,552,552,"fsm_state = 48", 1, 2, 0);
	trans[0][1057]	= settr(1056,0,3555,553,553,"output = 10", 1, 2, 0);
	trans[0][1058]	= settr(1057,0,1059,554,0,"((input==24))", 1, 2, 0);
	trans[0][1059]	= settr(1058,0,1060,555,555,"fsm_state = 48", 1, 2, 0);
	trans[0][1060]	= settr(1059,0,3555,556,556,"output = 10", 1, 2, 0);
	trans[0][1061]	= settr(1060,0,1062,557,0,"((input==20))", 1, 2, 0);
	trans[0][1062]	= settr(1061,0,1063,558,558,"fsm_state = 48", 1, 2, 0);
	trans[0][1063]	= settr(1062,0,3555,559,559,"output = 10", 1, 2, 0);
	trans[0][1064]	= settr(1063,0,1065,560,0,"((input==17))", 1, 2, 0);
	trans[0][1065]	= settr(1064,0,18,561,561,"fsm_state = 43", 1, 2, 0);
	trans[0][1066]	= settr(1065,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1067]	= settr(1066,0,1068,562,0,"((input==27))", 1, 2, 0);
	trans[0][1068]	= settr(1067,0,18,563,563,"fsm_state = 41", 1, 2, 0);
	trans[0][1069]	= settr(1068,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1070]	= settr(1069,0,1071,564,0,"((input==18))", 1, 2, 0);
	trans[0][1071]	= settr(1070,0,18,565,565,"fsm_state = 37", 1, 2, 0);
	trans[0][1072]	= settr(1071,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1073]	= settr(1072,0,1074,566,0,"((input==21))", 1, 2, 0);
	trans[0][1074]	= settr(1073,0,18,567,567,"fsm_state = 37", 1, 2, 0);
	trans[0][1075]	= settr(1074,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1076]	= settr(1075,0,1077,568,0,"((input==16))", 1, 2, 0);
	trans[0][1077]	= settr(1076,0,1078,569,569,"fsm_state = 37", 1, 2, 0);
	trans[0][1078]	= settr(1077,0,3555,570,570,"output = 5", 1, 2, 0);
	trans[0][1079]	= settr(1078,0,1080,571,0,"((input==28))", 1, 2, 0);
	trans[0][1080]	= settr(1079,0,18,572,572,"fsm_state = 37", 1, 2, 0);
	trans[0][1081]	= settr(1080,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1082]	= settr(1081,0,1083,573,0,"((input==23))", 1, 2, 0);
	trans[0][1083]	= settr(1082,0,18,574,574,"fsm_state = 37", 1, 2, 0);
	trans[0][1084]	= settr(1083,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1085]	= settr(1084,0,1086,575,0,"((input==25))", 1, 2, 0);
	trans[0][1086]	= settr(1085,0,18,576,576,"fsm_state = 37", 1, 2, 0);
	trans[0][1087]	= settr(1086,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1088]	= settr(1087,0,1089,577,0,"((input==26))", 1, 2, 0);
	trans[0][1089]	= settr(1088,0,18,578,578,"fsm_state = 35", 1, 2, 0);
	trans[0][1090]	= settr(1089,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1091]	= settr(1090,0,18,2,0,"else", 0, 2, 0);
	trans[0][1092]	= settr(1091,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1095]	= settr(1094,0,1137,579,0,"((fsm_state==36))", 1, 2, 0);
	T = trans[0][1137] = settr(1136,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1136,0,1096,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1136,0,1099,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1136,0,1102,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1136,0,1105,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1136,0,1108,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1136,0,1111,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1136,0,1114,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1136,0,1117,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1136,0,1120,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1136,0,1123,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1136,0,1126,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1136,0,1129,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1136,0,1132,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1136,0,1135,0,0,"IF", 0, 2, 0);
	trans[0][1096]	= settr(1095,0,1097,580,0,"((input==26))", 1, 2, 0);
	trans[0][1097]	= settr(1096,0,1098,581,581,"fsm_state = 48", 1, 2, 0);
	trans[0][1098]	= settr(1097,0,3555,582,582,"output = 10", 1, 2, 0);
	trans[0][1138]	= settr(1137,0,3555,1,0,".(goto)", 0, 2, 0);
	trans[0][1099]	= settr(1098,0,1100,583,0,"((input==17))", 1, 2, 0);
	trans[0][1100]	= settr(1099,0,1101,584,584,"fsm_state = 48", 1, 2, 0);
	trans[0][1101]	= settr(1100,0,3555,585,585,"output = 10", 1, 2, 0);
	trans[0][1102]	= settr(1101,0,1103,586,0,"((input==22))", 1, 2, 0);
	trans[0][1103]	= settr(1102,0,1104,587,587,"fsm_state = 48", 1, 2, 0);
	trans[0][1104]	= settr(1103,0,3555,588,588,"output = 10", 1, 2, 0);
	trans[0][1105]	= settr(1104,0,1106,589,0,"((input==27))", 1, 2, 0);
	trans[0][1106]	= settr(1105,0,1107,590,590,"fsm_state = 38", 1, 2, 0);
	trans[0][1107]	= settr(1106,0,3555,591,591,"output = 8", 1, 2, 0);
	trans[0][1108]	= settr(1107,0,1109,592,0,"((input==18))", 1, 2, 0);
	trans[0][1109]	= settr(1108,0,1110,593,593,"fsm_state = 36", 1, 2, 0);
	trans[0][1110]	= settr(1109,0,3555,594,594,"output = 1", 1, 2, 0);
	trans[0][1111]	= settr(1110,0,1112,595,0,"((input==21))", 1, 2, 0);
	trans[0][1112]	= settr(1111,0,1113,596,596,"fsm_state = 36", 1, 2, 0);
	trans[0][1113]	= settr(1112,0,3555,597,597,"output = 8", 1, 2, 0);
	trans[0][1114]	= settr(1113,0,1115,598,0,"((input==16))", 1, 2, 0);
	trans[0][1115]	= settr(1114,0,1116,599,599,"fsm_state = 36", 1, 2, 0);
	trans[0][1116]	= settr(1115,0,3555,600,600,"output = 5", 1, 2, 0);
	trans[0][1117]	= settr(1116,0,1118,601,0,"((input==28))", 1, 2, 0);
	trans[0][1118]	= settr(1117,0,1119,602,602,"fsm_state = 36", 1, 2, 0);
	trans[0][1119]	= settr(1118,0,3555,603,603,"output = 8", 1, 2, 0);
	trans[0][1120]	= settr(1119,0,1121,604,0,"((input==25))", 1, 2, 0);
	trans[0][1121]	= settr(1120,0,1122,605,605,"fsm_state = 36", 1, 2, 0);
	trans[0][1122]	= settr(1121,0,3555,606,606,"output = 8", 1, 2, 0);
	trans[0][1123]	= settr(1122,0,1124,607,0,"((input==20))", 1, 2, 0);
	trans[0][1124]	= settr(1123,0,1125,608,608,"fsm_state = 36", 1, 2, 0);
	trans[0][1125]	= settr(1124,0,3555,609,609,"output = 14", 1, 2, 0);
	trans[0][1126]	= settr(1125,0,1127,610,0,"((input==19))", 1, 2, 0);
	trans[0][1127]	= settr(1126,0,1128,611,611,"fsm_state = 30", 1, 2, 0);
	trans[0][1128]	= settr(1127,0,3555,612,612,"output = 2", 1, 2, 0);
	trans[0][1129]	= settr(1128,0,1130,613,0,"((input==24))", 1, 2, 0);
	trans[0][1130]	= settr(1129,0,1131,614,614,"fsm_state = 29", 1, 2, 0);
	trans[0][1131]	= settr(1130,0,3555,615,615,"output = 2", 1, 2, 0);
	trans[0][1132]	= settr(1131,0,1133,616,0,"((input==23))", 1, 2, 0);
	trans[0][1133]	= settr(1132,0,1134,617,617,"fsm_state = 28", 1, 2, 0);
	trans[0][1134]	= settr(1133,0,3555,618,618,"output = 6", 1, 2, 0);
	trans[0][1135]	= settr(1134,0,18,2,0,"else", 0, 2, 0);
	trans[0][1136]	= settr(1135,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1139]	= settr(1138,0,1227,619,0,"((fsm_state==35))", 1, 2, 0);
	T = trans[0][1227] = settr(1226,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1226,0,1140,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1226,0,1143,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1226,0,1146,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1226,0,1149,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1226,0,1152,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1226,0,1155,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1226,0,1158,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1226,0,1161,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1226,0,1164,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1226,0,1167,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1226,0,1170,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1226,0,1173,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1226,0,1176,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1226,0,1225,0,0,"IF", 0, 2, 0);
	trans[0][1140]	= settr(1139,0,1141,620,0,"((input==19))", 1, 2, 0);
	trans[0][1141]	= settr(1140,0,1142,621,621,"fsm_state = 48", 1, 2, 0);
	trans[0][1142]	= settr(1141,0,3555,622,622,"output = 10", 1, 2, 0);
	trans[0][1228]	= settr(1227,0,3555,1,0,".(goto)", 0, 2, 0);
	trans[0][1143]	= settr(1142,0,1144,623,0,"((input==22))", 1, 2, 0);
	trans[0][1144]	= settr(1143,0,1145,624,624,"fsm_state = 48", 1, 2, 0);
	trans[0][1145]	= settr(1144,0,3555,625,625,"output = 10", 1, 2, 0);
	trans[0][1146]	= settr(1145,0,1147,626,0,"((input==24))", 1, 2, 0);
	trans[0][1147]	= settr(1146,0,1148,627,627,"fsm_state = 48", 1, 2, 0);
	trans[0][1148]	= settr(1147,0,3555,628,628,"output = 10", 1, 2, 0);
	trans[0][1149]	= settr(1148,0,1150,629,0,"((input==20))", 1, 2, 0);
	trans[0][1150]	= settr(1149,0,1151,630,630,"fsm_state = 48", 1, 2, 0);
	trans[0][1151]	= settr(1150,0,3555,631,631,"output = 10", 1, 2, 0);
	trans[0][1152]	= settr(1151,0,1153,632,0,"((input==17))", 1, 2, 0);
	trans[0][1153]	= settr(1152,0,18,633,633,"fsm_state = 43", 1, 2, 0);
	trans[0][1154]	= settr(1153,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1155]	= settr(1154,0,1156,634,0,"((input==27))", 1, 2, 0);
	trans[0][1156]	= settr(1155,0,18,635,635,"fsm_state = 39", 1, 2, 0);
	trans[0][1157]	= settr(1156,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1158]	= settr(1157,0,1159,636,0,"((input==18))", 1, 2, 0);
	trans[0][1159]	= settr(1158,0,18,637,637,"fsm_state = 35", 1, 2, 0);
	trans[0][1160]	= settr(1159,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1161]	= settr(1160,0,1162,638,0,"((input==21))", 1, 2, 0);
	trans[0][1162]	= settr(1161,0,18,639,639,"fsm_state = 35", 1, 2, 0);
	trans[0][1163]	= settr(1162,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1164]	= settr(1163,0,1165,640,0,"((input==16))", 1, 2, 0);
	trans[0][1165]	= settr(1164,0,1166,641,641,"fsm_state = 35", 1, 2, 0);
	trans[0][1166]	= settr(1165,0,3555,642,642,"output = 5", 1, 2, 0);
	trans[0][1167]	= settr(1166,0,1168,643,0,"((input==28))", 1, 2, 0);
	trans[0][1168]	= settr(1167,0,18,644,644,"fsm_state = 35", 1, 2, 0);
	trans[0][1169]	= settr(1168,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1170]	= settr(1169,0,1171,645,0,"((input==23))", 1, 2, 0);
	trans[0][1171]	= settr(1170,0,18,646,646,"fsm_state = 35", 1, 2, 0);
	trans[0][1172]	= settr(1171,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1173]	= settr(1172,0,1174,647,0,"((input==25))", 1, 2, 0);
	trans[0][1174]	= settr(1173,0,18,648,648,"fsm_state = 35", 1, 2, 0);
	trans[0][1175]	= settr(1174,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1176]	= settr(1175,0,1177,649,0,"((input==26))", 1, 2, 0);
	trans[0][1177]	= settr(1176,0,1178,650,650,"fsm_state = 27", 1, 2, 0);
	trans[0][1178]	= settr(1177,0,1179,651,651,"output = 3", 1, 2, 0);
	trans[0][1179]	= settr(1178,0,1222,652,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][1222] = settr(1221,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1221,0,1215,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][1215]	= settr(1214,32,1220,653,653,"D_STEP13", 1, 2, 0);
	T = trans[0][1220] = settr(1219,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1219,0,1216,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1219,0,1218,0,0,"IF", 0, 2, 0);
	trans[0][1216]	= settr(1215,0,1,654,0,"((dealt==0))", 1, 2, 0);
	trans[0][1217]	= settr(1216,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][1221]	= settr(1220,0,1223,1,0,".(goto)", 0, 2, 0);
	trans[0][1218]	= settr(1217,0,1219,2,0,"else", 0, 2, 0);
	trans[0][1219]	= settr(1218,0,1223,1,0,"(1)", 0, 2, 0);
	trans[0][1223]	= settr(1222,0,1224,655,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][1224]	= settr(1223,0,3555,656,656,"output = 12", 1, 2, 0);
	trans[0][1225]	= settr(1224,0,18,2,0,"else", 0, 2, 0);
	trans[0][1226]	= settr(1225,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1229]	= settr(1228,0,1271,657,0,"((fsm_state==34))", 1, 2, 0);
	T = trans[0][1271] = settr(1270,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1270,0,1230,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1270,0,1233,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1270,0,1236,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1270,0,1239,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1270,0,1242,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1270,0,1245,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1270,0,1248,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1270,0,1251,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1270,0,1254,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1270,0,1257,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1270,0,1260,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1270,0,1263,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1270,0,1266,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1270,0,1269,0,0,"IF", 0, 2, 0);
	trans[0][1230]	= settr(1229,0,1231,658,0,"((input==26))", 1, 2, 0);
	trans[0][1231]	= settr(1230,0,1232,659,659,"fsm_state = 47", 1, 2, 0);
	trans[0][1232]	= settr(1231,0,3555,660,660,"output = 10", 1, 2, 0);
	trans[0][1272]	= settr(1271,0,3555,1,0,".(goto)", 0, 2, 0);
	trans[0][1233]	= settr(1232,0,1234,661,0,"((input==19))", 1, 2, 0);
	trans[0][1234]	= settr(1233,0,1235,662,662,"fsm_state = 47", 1, 2, 0);
	trans[0][1235]	= settr(1234,0,3555,663,663,"output = 10", 1, 2, 0);
	trans[0][1236]	= settr(1235,0,1237,664,0,"((input==22))", 1, 2, 0);
	trans[0][1237]	= settr(1236,0,1238,665,665,"fsm_state = 47", 1, 2, 0);
	trans[0][1238]	= settr(1237,0,3555,666,666,"output = 10", 1, 2, 0);
	trans[0][1239]	= settr(1238,0,1240,667,0,"((input==24))", 1, 2, 0);
	trans[0][1240]	= settr(1239,0,1241,668,668,"fsm_state = 47", 1, 2, 0);
	trans[0][1241]	= settr(1240,0,3555,669,669,"output = 10", 1, 2, 0);
	trans[0][1242]	= settr(1241,0,1243,670,0,"((input==20))", 1, 2, 0);
	trans[0][1243]	= settr(1242,0,1244,671,671,"fsm_state = 47", 1, 2, 0);
	trans[0][1244]	= settr(1243,0,3555,672,672,"output = 10", 1, 2, 0);
	trans[0][1245]	= settr(1244,0,1246,673,0,"((input==17))", 1, 2, 0);
	trans[0][1246]	= settr(1245,0,18,674,674,"fsm_state = 42", 1, 2, 0);
	trans[0][1247]	= settr(1246,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1248]	= settr(1247,0,1249,675,0,"((input==18))", 1, 2, 0);
	trans[0][1249]	= settr(1248,0,18,676,676,"fsm_state = 34", 1, 2, 0);
	trans[0][1250]	= settr(1249,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1251]	= settr(1250,0,1252,677,0,"((input==21))", 1, 2, 0);
	trans[0][1252]	= settr(1251,0,1253,678,678,"fsm_state = 34", 1, 2, 0);
	trans[0][1253]	= settr(1252,0,3555,679,679,"output = 15", 1, 2, 0);
	trans[0][1254]	= settr(1253,0,1255,680,0,"((input==28))", 1, 2, 0);
	trans[0][1255]	= settr(1254,0,1256,681,681,"fsm_state = 34", 1, 2, 0);
	trans[0][1256]	= settr(1255,0,3555,682,682,"output = 15", 1, 2, 0);
	trans[0][1257]	= settr(1256,0,1258,683,0,"((input==23))", 1, 2, 0);
	trans[0][1258]	= settr(1257,0,18,684,684,"fsm_state = 34", 1, 2, 0);
	trans[0][1259]	= settr(1258,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1260]	= settr(1259,0,1261,685,0,"((input==27))", 1, 2, 0);
	trans[0][1261]	= settr(1260,0,1262,686,686,"fsm_state = 34", 1, 2, 0);
	trans[0][1262]	= settr(1261,0,3555,687,687,"output = 15", 1, 2, 0);
	trans[0][1263]	= settr(1262,0,1264,688,0,"((input==25))", 1, 2, 0);
	trans[0][1264]	= settr(1263,0,1265,689,689,"fsm_state = 34", 1, 2, 0);
	trans[0][1265]	= settr(1264,0,3555,690,690,"output = 15", 1, 2, 0);
	trans[0][1266]	= settr(1265,0,1267,691,0,"((input==16))", 1, 2, 0);
	trans[0][1267]	= settr(1266,0,18,692,692,"fsm_state = 27", 1, 2, 0);
	trans[0][1268]	= settr(1267,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1269]	= settr(1268,0,18,2,0,"else", 0, 2, 0);
	trans[0][1270]	= settr(1269,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1273]	= settr(1272,0,1315,693,0,"((fsm_state==33))", 1, 2, 0);
	T = trans[0][1315] = settr(1314,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1314,0,1274,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1314,0,1277,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1314,0,1280,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1314,0,1283,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1314,0,1286,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1314,0,1289,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1314,0,1292,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1314,0,1295,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1314,0,1298,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1314,0,1301,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1314,0,1304,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1314,0,1307,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1314,0,1310,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1314,0,1313,0,0,"IF", 0, 2, 0);
	trans[0][1274]	= settr(1273,0,1275,694,0,"((input==19))", 1, 2, 0);
	trans[0][1275]	= settr(1274,0,1276,695,695,"fsm_state = 47", 1, 2, 0);
	trans[0][1276]	= settr(1275,0,3555,696,696,"output = 10", 1, 2, 0);
	trans[0][1316]	= settr(1315,0,3555,1,0,".(goto)", 0, 2, 0);
	trans[0][1277]	= settr(1276,0,1278,697,0,"((input==22))", 1, 2, 0);
	trans[0][1278]	= settr(1277,0,1279,698,698,"fsm_state = 47", 1, 2, 0);
	trans[0][1279]	= settr(1278,0,3555,699,699,"output = 10", 1, 2, 0);
	trans[0][1280]	= settr(1279,0,1281,700,0,"((input==24))", 1, 2, 0);
	trans[0][1281]	= settr(1280,0,1282,701,701,"fsm_state = 47", 1, 2, 0);
	trans[0][1282]	= settr(1281,0,3555,702,702,"output = 10", 1, 2, 0);
	trans[0][1283]	= settr(1282,0,1284,703,0,"((input==20))", 1, 2, 0);
	trans[0][1284]	= settr(1283,0,1285,704,704,"fsm_state = 47", 1, 2, 0);
	trans[0][1285]	= settr(1284,0,3555,705,705,"output = 10", 1, 2, 0);
	trans[0][1286]	= settr(1285,0,1287,706,0,"((input==17))", 1, 2, 0);
	trans[0][1287]	= settr(1286,0,18,707,707,"fsm_state = 45", 1, 2, 0);
	trans[0][1288]	= settr(1287,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1289]	= settr(1288,0,1290,708,0,"((input==21))", 1, 2, 0);
	trans[0][1290]	= settr(1289,0,1291,709,709,"fsm_state = 33", 1, 2, 0);
	trans[0][1291]	= settr(1290,0,3555,710,710,"output = 15", 1, 2, 0);
	trans[0][1292]	= settr(1291,0,1293,711,0,"((input==28))", 1, 2, 0);
	trans[0][1293]	= settr(1292,0,1294,712,712,"fsm_state = 33", 1, 2, 0);
	trans[0][1294]	= settr(1293,0,3555,713,713,"output = 15", 1, 2, 0);
	trans[0][1295]	= settr(1294,0,1296,714,0,"((input==27))", 1, 2, 0);
	trans[0][1296]	= settr(1295,0,1297,715,715,"fsm_state = 33", 1, 2, 0);
	trans[0][1297]	= settr(1296,0,3555,716,716,"output = 15", 1, 2, 0);
	trans[0][1298]	= settr(1297,0,1299,717,0,"((input==25))", 1, 2, 0);
	trans[0][1299]	= settr(1298,0,1300,718,718,"fsm_state = 33", 1, 2, 0);
	trans[0][1300]	= settr(1299,0,3555,719,719,"output = 15", 1, 2, 0);
	trans[0][1301]	= settr(1300,0,1302,720,0,"((input==26))", 1, 2, 0);
	trans[0][1302]	= settr(1301,0,18,721,721,"fsm_state = 31", 1, 2, 0);
	trans[0][1303]	= settr(1302,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1304]	= settr(1303,0,1305,722,0,"((input==16))", 1, 2, 0);
	trans[0][1305]	= settr(1304,0,1306,723,723,"fsm_state = 30", 1, 2, 0);
	trans[0][1306]	= settr(1305,0,3555,724,724,"output = 8", 1, 2, 0);
	trans[0][1307]	= settr(1306,0,1308,725,0,"((input==18))", 1, 2, 0);
	trans[0][1308]	= settr(1307,0,18,726,726,"fsm_state = 26", 1, 2, 0);
	trans[0][1309]	= settr(1308,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1310]	= settr(1309,0,1311,727,0,"((input==23))", 1, 2, 0);
	trans[0][1311]	= settr(1310,0,18,728,728,"fsm_state = 25", 1, 2, 0);
	trans[0][1312]	= settr(1311,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1313]	= settr(1312,0,18,2,0,"else", 0, 2, 0);
	trans[0][1314]	= settr(1313,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1317]	= settr(1316,0,1359,729,0,"((fsm_state==32))", 1, 2, 0);
	T = trans[0][1359] = settr(1358,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1358,0,1318,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1358,0,1321,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1358,0,1324,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1358,0,1327,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1358,0,1330,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1358,0,1333,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1358,0,1336,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1358,0,1339,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1358,0,1342,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1358,0,1345,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1358,0,1348,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1358,0,1351,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1358,0,1354,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1358,0,1357,0,0,"IF", 0, 2, 0);
	trans[0][1318]	= settr(1317,0,1319,730,0,"((input==26))", 1, 2, 0);
	trans[0][1319]	= settr(1318,0,1320,731,731,"fsm_state = 47", 1, 2, 0);
	trans[0][1320]	= settr(1319,0,3555,732,732,"output = 10", 1, 2, 0);
	trans[0][1360]	= settr(1359,0,3555,1,0,".(goto)", 0, 2, 0);
	trans[0][1321]	= settr(1320,0,1322,733,0,"((input==17))", 1, 2, 0);
	trans[0][1322]	= settr(1321,0,1323,734,734,"fsm_state = 47", 1, 2, 0);
	trans[0][1323]	= settr(1322,0,3555,735,735,"output = 10", 1, 2, 0);
	trans[0][1324]	= settr(1323,0,1325,736,0,"((input==22))", 1, 2, 0);
	trans[0][1325]	= settr(1324,0,1326,737,737,"fsm_state = 47", 1, 2, 0);
	trans[0][1326]	= settr(1325,0,3555,738,738,"output = 10", 1, 2, 0);
	trans[0][1327]	= settr(1326,0,1328,739,0,"((input==18))", 1, 2, 0);
	trans[0][1328]	= settr(1327,0,1329,740,740,"fsm_state = 32", 1, 2, 0);
	trans[0][1329]	= settr(1328,0,3555,741,741,"output = 8", 1, 2, 0);
	trans[0][1330]	= settr(1329,0,1331,742,0,"((input==21))", 1, 2, 0);
	trans[0][1331]	= settr(1330,0,1332,743,743,"fsm_state = 32", 1, 2, 0);
	trans[0][1332]	= settr(1331,0,3555,744,744,"output = 15", 1, 2, 0);
	trans[0][1333]	= settr(1332,0,1334,745,0,"((input==28))", 1, 2, 0);
	trans[0][1334]	= settr(1333,0,1335,746,746,"fsm_state = 32", 1, 2, 0);
	trans[0][1335]	= settr(1334,0,3555,747,747,"output = 15", 1, 2, 0);
	trans[0][1336]	= settr(1335,0,1337,748,0,"((input==23))", 1, 2, 0);
	trans[0][1337]	= settr(1336,0,1338,749,749,"fsm_state = 32", 1, 2, 0);
	trans[0][1338]	= settr(1337,0,3555,750,750,"output = 8", 1, 2, 0);
	trans[0][1339]	= settr(1338,0,1340,751,0,"((input==27))", 1, 2, 0);
	trans[0][1340]	= settr(1339,0,1341,752,752,"fsm_state = 32", 1, 2, 0);
	trans[0][1341]	= settr(1340,0,3555,753,753,"output = 15", 1, 2, 0);
	trans[0][1342]	= settr(1341,0,1343,754,0,"((input==25))", 1, 2, 0);
	trans[0][1343]	= settr(1342,0,1344,755,755,"fsm_state = 32", 1, 2, 0);
	trans[0][1344]	= settr(1343,0,3555,756,756,"output = 15", 1, 2, 0);
	trans[0][1345]	= settr(1344,0,1346,757,0,"((input==20))", 1, 2, 0);
	trans[0][1346]	= settr(1345,0,1347,758,758,"fsm_state = 32", 1, 2, 0);
	trans[0][1347]	= settr(1346,0,3555,759,759,"output = 14", 1, 2, 0);
	trans[0][1348]	= settr(1347,0,1349,760,0,"((input==24))", 1, 2, 0);
	trans[0][1349]	= settr(1348,0,1350,761,761,"fsm_state = 24", 1, 2, 0);
	trans[0][1350]	= settr(1349,0,3555,762,762,"output = 2", 1, 2, 0);
	trans[0][1351]	= settr(1350,0,1352,763,0,"((input==16))", 1, 2, 0);
	trans[0][1352]	= settr(1351,0,1353,764,764,"fsm_state = 23", 1, 2, 0);
	trans[0][1353]	= settr(1352,0,3555,765,765,"output = 9", 1, 2, 0);
	trans[0][1354]	= settr(1353,0,1355,766,0,"((input==19))", 1, 2, 0);
	trans[0][1355]	= settr(1354,0,1356,767,767,"fsm_state = 22", 1, 2, 0);
	trans[0][1356]	= settr(1355,0,3555,768,768,"output = 2", 1, 2, 0);
	trans[0][1357]	= settr(1356,0,18,2,0,"else", 0, 2, 0);
	trans[0][1358]	= settr(1357,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1361]	= settr(1360,0,1449,769,0,"((fsm_state==31))", 1, 2, 0);
	T = trans[0][1449] = settr(1448,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1448,0,1362,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1448,0,1365,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1448,0,1368,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1448,0,1371,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1448,0,1374,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1448,0,1377,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1448,0,1380,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1448,0,1383,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1448,0,1386,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1448,0,1389,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1448,0,1392,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1448,0,1395,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1448,0,1398,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1448,0,1447,0,0,"IF", 0, 2, 0);
	trans[0][1362]	= settr(1361,0,1363,770,0,"((input==19))", 1, 2, 0);
	trans[0][1363]	= settr(1362,0,1364,771,771,"fsm_state = 47", 1, 2, 0);
	trans[0][1364]	= settr(1363,0,3555,772,772,"output = 10", 1, 2, 0);
	trans[0][1450]	= settr(1449,0,3555,1,0,".(goto)", 0, 2, 0);
	trans[0][1365]	= settr(1364,0,1366,773,0,"((input==22))", 1, 2, 0);
	trans[0][1366]	= settr(1365,0,1367,774,774,"fsm_state = 47", 1, 2, 0);
	trans[0][1367]	= settr(1366,0,3555,775,775,"output = 10", 1, 2, 0);
	trans[0][1368]	= settr(1367,0,1369,776,0,"((input==24))", 1, 2, 0);
	trans[0][1369]	= settr(1368,0,1370,777,777,"fsm_state = 47", 1, 2, 0);
	trans[0][1370]	= settr(1369,0,3555,778,778,"output = 10", 1, 2, 0);
	trans[0][1371]	= settr(1370,0,1372,779,0,"((input==20))", 1, 2, 0);
	trans[0][1372]	= settr(1371,0,1373,780,780,"fsm_state = 47", 1, 2, 0);
	trans[0][1373]	= settr(1372,0,3555,781,781,"output = 10", 1, 2, 0);
	trans[0][1374]	= settr(1373,0,1375,782,0,"((input==17))", 1, 2, 0);
	trans[0][1375]	= settr(1374,0,18,783,783,"fsm_state = 45", 1, 2, 0);
	trans[0][1376]	= settr(1375,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1377]	= settr(1376,0,1378,784,0,"((input==21))", 1, 2, 0);
	trans[0][1378]	= settr(1377,0,1379,785,785,"fsm_state = 31", 1, 2, 0);
	trans[0][1379]	= settr(1378,0,3555,786,786,"output = 15", 1, 2, 0);
	trans[0][1380]	= settr(1379,0,1381,787,0,"((input==28))", 1, 2, 0);
	trans[0][1381]	= settr(1380,0,1382,788,788,"fsm_state = 31", 1, 2, 0);
	trans[0][1382]	= settr(1381,0,3555,789,789,"output = 15", 1, 2, 0);
	trans[0][1383]	= settr(1382,0,1384,790,0,"((input==27))", 1, 2, 0);
	trans[0][1384]	= settr(1383,0,1385,791,791,"fsm_state = 31", 1, 2, 0);
	trans[0][1385]	= settr(1384,0,3555,792,792,"output = 15", 1, 2, 0);
	trans[0][1386]	= settr(1385,0,1387,793,0,"((input==25))", 1, 2, 0);
	trans[0][1387]	= settr(1386,0,1388,794,794,"fsm_state = 31", 1, 2, 0);
	trans[0][1388]	= settr(1387,0,3555,795,795,"output = 15", 1, 2, 0);
	trans[0][1389]	= settr(1388,0,1390,796,0,"((input==16))", 1, 2, 0);
	trans[0][1390]	= settr(1389,0,1391,797,797,"fsm_state = 29", 1, 2, 0);
	trans[0][1391]	= settr(1390,0,3555,798,798,"output = 8", 1, 2, 0);
	trans[0][1392]	= settr(1391,0,1393,799,0,"((input==18))", 1, 2, 0);
	trans[0][1393]	= settr(1392,0,18,800,800,"fsm_state = 21", 1, 2, 0);
	trans[0][1394]	= settr(1393,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1395]	= settr(1394,0,1396,801,0,"((input==23))", 1, 2, 0);
	trans[0][1396]	= settr(1395,0,18,802,802,"fsm_state = 20", 1, 2, 0);
	trans[0][1397]	= settr(1396,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1398]	= settr(1397,0,1399,803,0,"((input==26))", 1, 2, 0);
	trans[0][1399]	= settr(1398,0,1400,804,804,"fsm_state = 19", 1, 2, 0);
	trans[0][1400]	= settr(1399,0,1401,805,805,"output = 3", 1, 2, 0);
	trans[0][1401]	= settr(1400,0,1444,806,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][1444] = settr(1443,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1443,0,1437,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][1437]	= settr(1436,32,1442,807,807,"D_STEP13", 1, 2, 0);
	T = trans[0][1442] = settr(1441,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1441,0,1438,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1441,0,1440,0,0,"IF", 0, 2, 0);
	trans[0][1438]	= settr(1437,0,1,808,0,"((dealt==0))", 1, 2, 0);
	trans[0][1439]	= settr(1438,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][1443]	= settr(1442,0,1445,1,0,".(goto)", 0, 2, 0);
	trans[0][1440]	= settr(1439,0,1441,2,0,"else", 0, 2, 0);
	trans[0][1441]	= settr(1440,0,1445,1,0,"(1)", 0, 2, 0);
	trans[0][1445]	= settr(1444,0,1446,809,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][1446]	= settr(1445,0,3555,810,810,"output = 12", 1, 2, 0);
	trans[0][1447]	= settr(1446,0,18,2,0,"else", 0, 2, 0);
	trans[0][1448]	= settr(1447,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1451]	= settr(1450,0,1493,811,0,"((fsm_state==30))", 1, 2, 0);
	T = trans[0][1493] = settr(1492,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1492,0,1452,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1492,0,1455,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1492,0,1458,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1492,0,1461,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1492,0,1464,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1492,0,1467,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1492,0,1470,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1492,0,1473,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1492,0,1476,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1492,0,1479,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1492,0,1482,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1492,0,1485,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1492,0,1488,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1492,0,1491,0,0,"IF", 0, 2, 0);
	trans[0][1452]	= settr(1451,0,1453,812,0,"((input==19))", 1, 2, 0);
	trans[0][1453]	= settr(1452,0,1454,813,813,"fsm_state = 48", 1, 2, 0);
	trans[0][1454]	= settr(1453,0,3555,814,814,"output = 10", 1, 2, 0);
	trans[0][1494]	= settr(1493,0,3555,1,0,".(goto)", 0, 2, 0);
	trans[0][1455]	= settr(1454,0,1456,815,0,"((input==22))", 1, 2, 0);
	trans[0][1456]	= settr(1455,0,1457,816,816,"fsm_state = 48", 1, 2, 0);
	trans[0][1457]	= settr(1456,0,3555,817,817,"output = 10", 1, 2, 0);
	trans[0][1458]	= settr(1457,0,1459,818,0,"((input==24))", 1, 2, 0);
	trans[0][1459]	= settr(1458,0,1460,819,819,"fsm_state = 48", 1, 2, 0);
	trans[0][1460]	= settr(1459,0,3555,820,820,"output = 10", 1, 2, 0);
	trans[0][1461]	= settr(1460,0,1462,821,0,"((input==20))", 1, 2, 0);
	trans[0][1462]	= settr(1461,0,1463,822,822,"fsm_state = 48", 1, 2, 0);
	trans[0][1463]	= settr(1462,0,3555,823,823,"output = 10", 1, 2, 0);
	trans[0][1464]	= settr(1463,0,1465,824,0,"((input==17))", 1, 2, 0);
	trans[0][1465]	= settr(1464,0,18,825,825,"fsm_state = 43", 1, 2, 0);
	trans[0][1466]	= settr(1465,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1467]	= settr(1466,0,1468,826,0,"((input==27))", 1, 2, 0);
	trans[0][1468]	= settr(1467,0,1469,827,827,"fsm_state = 33", 1, 2, 0);
	trans[0][1469]	= settr(1468,0,3555,828,828,"output = 8", 1, 2, 0);
	trans[0][1470]	= settr(1469,0,1471,829,0,"((input==21))", 1, 2, 0);
	trans[0][1471]	= settr(1470,0,1472,830,830,"fsm_state = 30", 1, 2, 0);
	trans[0][1472]	= settr(1471,0,3555,831,831,"output = 8", 1, 2, 0);
	trans[0][1473]	= settr(1472,0,1474,832,0,"((input==16))", 1, 2, 0);
	trans[0][1474]	= settr(1473,0,1475,833,833,"fsm_state = 30", 1, 2, 0);
	trans[0][1475]	= settr(1474,0,3555,834,834,"output = 5", 1, 2, 0);
	trans[0][1476]	= settr(1475,0,1477,835,0,"((input==28))", 1, 2, 0);
	trans[0][1477]	= settr(1476,0,1478,836,836,"fsm_state = 30", 1, 2, 0);
	trans[0][1478]	= settr(1477,0,3555,837,837,"output = 8", 1, 2, 0);
	trans[0][1479]	= settr(1478,0,1480,838,0,"((input==25))", 1, 2, 0);
	trans[0][1480]	= settr(1479,0,1481,839,839,"fsm_state = 30", 1, 2, 0);
	trans[0][1481]	= settr(1480,0,3555,840,840,"output = 8", 1, 2, 0);
	trans[0][1482]	= settr(1481,0,1483,841,0,"((input==26))", 1, 2, 0);
	trans[0][1483]	= settr(1482,0,18,842,842,"fsm_state = 29", 1, 2, 0);
	trans[0][1484]	= settr(1483,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1485]	= settr(1484,0,1486,843,0,"((input==18))", 1, 2, 0);
	trans[0][1486]	= settr(1485,0,18,844,844,"fsm_state = 18", 1, 2, 0);
	trans[0][1487]	= settr(1486,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1488]	= settr(1487,0,1489,845,0,"((input==23))", 1, 2, 0);
	trans[0][1489]	= settr(1488,0,18,846,846,"fsm_state = 17", 1, 2, 0);
	trans[0][1490]	= settr(1489,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1491]	= settr(1490,0,18,2,0,"else", 0, 2, 0);
	trans[0][1492]	= settr(1491,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1495]	= settr(1494,0,1583,847,0,"((fsm_state==29))", 1, 2, 0);
	T = trans[0][1583] = settr(1582,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1582,0,1496,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1582,0,1499,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1582,0,1502,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1582,0,1505,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1582,0,1508,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1582,0,1511,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1582,0,1514,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1582,0,1517,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1582,0,1520,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1582,0,1523,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1582,0,1526,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1582,0,1529,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1582,0,1578,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1582,0,1581,0,0,"IF", 0, 2, 0);
	trans[0][1496]	= settr(1495,0,1497,848,0,"((input==19))", 1, 2, 0);
	trans[0][1497]	= settr(1496,0,1498,849,849,"fsm_state = 48", 1, 2, 0);
	trans[0][1498]	= settr(1497,0,3555,850,850,"output = 10", 1, 2, 0);
	trans[0][1584]	= settr(1583,0,3555,1,0,".(goto)", 0, 2, 0);
	trans[0][1499]	= settr(1498,0,1500,851,0,"((input==22))", 1, 2, 0);
	trans[0][1500]	= settr(1499,0,1501,852,852,"fsm_state = 48", 1, 2, 0);
	trans[0][1501]	= settr(1500,0,3555,853,853,"output = 10", 1, 2, 0);
	trans[0][1502]	= settr(1501,0,1503,854,0,"((input==24))", 1, 2, 0);
	trans[0][1503]	= settr(1502,0,1504,855,855,"fsm_state = 48", 1, 2, 0);
	trans[0][1504]	= settr(1503,0,3555,856,856,"output = 10", 1, 2, 0);
	trans[0][1505]	= settr(1504,0,1506,857,0,"((input==20))", 1, 2, 0);
	trans[0][1506]	= settr(1505,0,1507,858,858,"fsm_state = 48", 1, 2, 0);
	trans[0][1507]	= settr(1506,0,3555,859,859,"output = 10", 1, 2, 0);
	trans[0][1508]	= settr(1507,0,1509,860,0,"((input==17))", 1, 2, 0);
	trans[0][1509]	= settr(1508,0,18,861,861,"fsm_state = 43", 1, 2, 0);
	trans[0][1510]	= settr(1509,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1511]	= settr(1510,0,1512,862,0,"((input==27))", 1, 2, 0);
	trans[0][1512]	= settr(1511,0,1513,863,863,"fsm_state = 31", 1, 2, 0);
	trans[0][1513]	= settr(1512,0,3555,864,864,"output = 8", 1, 2, 0);
	trans[0][1514]	= settr(1513,0,1515,865,0,"((input==21))", 1, 2, 0);
	trans[0][1515]	= settr(1514,0,1516,866,866,"fsm_state = 29", 1, 2, 0);
	trans[0][1516]	= settr(1515,0,3555,867,867,"output = 8", 1, 2, 0);
	trans[0][1517]	= settr(1516,0,1518,868,0,"((input==16))", 1, 2, 0);
	trans[0][1518]	= settr(1517,0,1519,869,869,"fsm_state = 29", 1, 2, 0);
	trans[0][1519]	= settr(1518,0,3555,870,870,"output = 5", 1, 2, 0);
	trans[0][1520]	= settr(1519,0,1521,871,0,"((input==28))", 1, 2, 0);
	trans[0][1521]	= settr(1520,0,1522,872,872,"fsm_state = 29", 1, 2, 0);
	trans[0][1522]	= settr(1521,0,3555,873,873,"output = 8", 1, 2, 0);
	trans[0][1523]	= settr(1522,0,1524,874,0,"((input==25))", 1, 2, 0);
	trans[0][1524]	= settr(1523,0,1525,875,875,"fsm_state = 29", 1, 2, 0);
	trans[0][1525]	= settr(1524,0,3555,876,876,"output = 8", 1, 2, 0);
	trans[0][1526]	= settr(1525,0,1527,877,0,"((input==18))", 1, 2, 0);
	trans[0][1527]	= settr(1526,0,18,878,878,"fsm_state = 16", 1, 2, 0);
	trans[0][1528]	= settr(1527,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1529]	= settr(1528,0,1530,879,0,"((input==26))", 1, 2, 0);
	trans[0][1530]	= settr(1529,0,1531,880,880,"fsm_state = 15", 1, 2, 0);
	trans[0][1531]	= settr(1530,0,1532,881,881,"output = 3", 1, 2, 0);
	trans[0][1532]	= settr(1531,0,1575,882,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][1575] = settr(1574,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1574,0,1568,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][1568]	= settr(1567,32,1573,883,883,"D_STEP13", 1, 2, 0);
	T = trans[0][1573] = settr(1572,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1572,0,1569,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1572,0,1571,0,0,"IF", 0, 2, 0);
	trans[0][1569]	= settr(1568,0,1,884,0,"((dealt==0))", 1, 2, 0);
	trans[0][1570]	= settr(1569,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][1574]	= settr(1573,0,1576,1,0,".(goto)", 0, 2, 0);
	trans[0][1571]	= settr(1570,0,1572,2,0,"else", 0, 2, 0);
	trans[0][1572]	= settr(1571,0,1576,1,0,"(1)", 0, 2, 0);
	trans[0][1576]	= settr(1575,0,1577,885,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][1577]	= settr(1576,0,3555,886,886,"output = 12", 1, 2, 0);
	trans[0][1578]	= settr(1577,0,1579,887,0,"((input==23))", 1, 2, 0);
	trans[0][1579]	= settr(1578,0,18,888,888,"fsm_state = 14", 1, 2, 0);
	trans[0][1580]	= settr(1579,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1581]	= settr(1580,0,18,2,0,"else", 0, 2, 0);
	trans[0][1582]	= settr(1581,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1585]	= settr(1584,0,1627,889,0,"((fsm_state==28))", 1, 2, 0);
	T = trans[0][1627] = settr(1626,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1626,0,1586,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1626,0,1589,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1626,0,1592,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1626,0,1595,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1626,0,1598,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1626,0,1601,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1626,0,1604,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1626,0,1607,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1626,0,1610,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1626,0,1613,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1626,0,1616,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1626,0,1619,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1626,0,1622,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1626,0,1625,0,0,"IF", 0, 2, 0);
	trans[0][1586]	= settr(1585,0,1587,890,0,"((input==26))", 1, 2, 0);
	trans[0][1587]	= settr(1586,0,1588,891,891,"fsm_state = 48", 1, 2, 0);
	trans[0][1588]	= settr(1587,0,3555,892,892,"output = 10", 1, 2, 0);
	trans[0][1628]	= settr(1627,0,3555,1,0,".(goto)", 0, 2, 0);
	trans[0][1589]	= settr(1588,0,1590,893,0,"((input==17))", 1, 2, 0);
	trans[0][1590]	= settr(1589,0,1591,894,894,"fsm_state = 48", 1, 2, 0);
	trans[0][1591]	= settr(1590,0,3555,895,895,"output = 10", 1, 2, 0);
	trans[0][1592]	= settr(1591,0,1593,896,0,"((input==22))", 1, 2, 0);
	trans[0][1593]	= settr(1592,0,1594,897,897,"fsm_state = 48", 1, 2, 0);
	trans[0][1594]	= settr(1593,0,3555,898,898,"output = 10", 1, 2, 0);
	trans[0][1595]	= settr(1594,0,1596,899,0,"((input==27))", 1, 2, 0);
	trans[0][1596]	= settr(1595,0,18,900,900,"fsm_state = 32", 1, 2, 0);
	trans[0][1597]	= settr(1596,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1598]	= settr(1597,0,1599,901,0,"((input==18))", 1, 2, 0);
	trans[0][1599]	= settr(1598,0,1600,902,902,"fsm_state = 28", 1, 2, 0);
	trans[0][1600]	= settr(1599,0,3555,903,903,"output = 8", 1, 2, 0);
	trans[0][1601]	= settr(1600,0,1602,904,0,"((input==21))", 1, 2, 0);
	trans[0][1602]	= settr(1601,0,18,905,905,"fsm_state = 28", 1, 2, 0);
	trans[0][1603]	= settr(1602,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1604]	= settr(1603,0,1605,906,0,"((input==16))", 1, 2, 0);
	trans[0][1605]	= settr(1604,0,1606,907,907,"fsm_state = 28", 1, 2, 0);
	trans[0][1606]	= settr(1605,0,3555,908,908,"output = 5", 1, 2, 0);
	trans[0][1607]	= settr(1606,0,1608,909,0,"((input==28))", 1, 2, 0);
	trans[0][1608]	= settr(1607,0,18,910,910,"fsm_state = 28", 1, 2, 0);
	trans[0][1609]	= settr(1608,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1610]	= settr(1609,0,1611,911,0,"((input==23))", 1, 2, 0);
	trans[0][1611]	= settr(1610,0,1612,912,912,"fsm_state = 28", 1, 2, 0);
	trans[0][1612]	= settr(1611,0,3555,913,913,"output = 8", 1, 2, 0);
	trans[0][1613]	= settr(1612,0,1614,914,0,"((input==25))", 1, 2, 0);
	trans[0][1614]	= settr(1613,0,18,915,915,"fsm_state = 28", 1, 2, 0);
	trans[0][1615]	= settr(1614,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1616]	= settr(1615,0,1617,916,0,"((input==20))", 1, 2, 0);
	trans[0][1617]	= settr(1616,0,1618,917,917,"fsm_state = 28", 1, 2, 0);
	trans[0][1618]	= settr(1617,0,3555,918,918,"output = 14", 1, 2, 0);
	trans[0][1619]	= settr(1618,0,1620,919,0,"((input==24))", 1, 2, 0);
	trans[0][1620]	= settr(1619,0,1621,920,920,"fsm_state = 13", 1, 2, 0);
	trans[0][1621]	= settr(1620,0,3555,921,921,"output = 2", 1, 2, 0);
	trans[0][1622]	= settr(1621,0,1623,922,0,"((input==19))", 1, 2, 0);
	trans[0][1623]	= settr(1622,0,1624,923,923,"fsm_state = 12", 1, 2, 0);
	trans[0][1624]	= settr(1623,0,3555,924,924,"output = 2", 1, 2, 0);
	trans[0][1625]	= settr(1624,0,18,2,0,"else", 0, 2, 0);
	trans[0][1626]	= settr(1625,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1629]	= settr(1628,0,1671,925,0,"((fsm_state==27))", 1, 2, 0);
	T = trans[0][1671] = settr(1670,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1670,0,1630,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1670,0,1633,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1670,0,1636,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1670,0,1639,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1670,0,1642,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1670,0,1645,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1670,0,1648,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1670,0,1651,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1670,0,1654,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1670,0,1657,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1670,0,1660,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1670,0,1663,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1670,0,1666,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1670,0,1669,0,0,"IF", 0, 2, 0);
	trans[0][1630]	= settr(1629,0,1631,926,0,"((input==26))", 1, 2, 0);
	trans[0][1631]	= settr(1630,0,1632,927,927,"fsm_state = 48", 1, 2, 0);
	trans[0][1632]	= settr(1631,0,3555,928,928,"output = 10", 1, 2, 0);
	trans[0][1672]	= settr(1671,0,3555,1,0,".(goto)", 0, 2, 0);
	trans[0][1633]	= settr(1632,0,1634,929,0,"((input==19))", 1, 2, 0);
	trans[0][1634]	= settr(1633,0,1635,930,930,"fsm_state = 48", 1, 2, 0);
	trans[0][1635]	= settr(1634,0,3555,931,931,"output = 10", 1, 2, 0);
	trans[0][1636]	= settr(1635,0,1637,932,0,"((input==22))", 1, 2, 0);
	trans[0][1637]	= settr(1636,0,1638,933,933,"fsm_state = 48", 1, 2, 0);
	trans[0][1638]	= settr(1637,0,3555,934,934,"output = 10", 1, 2, 0);
	trans[0][1639]	= settr(1638,0,1640,935,0,"((input==24))", 1, 2, 0);
	trans[0][1640]	= settr(1639,0,1641,936,936,"fsm_state = 48", 1, 2, 0);
	trans[0][1641]	= settr(1640,0,3555,937,937,"output = 10", 1, 2, 0);
	trans[0][1642]	= settr(1641,0,1643,938,0,"((input==20))", 1, 2, 0);
	trans[0][1643]	= settr(1642,0,1644,939,939,"fsm_state = 48", 1, 2, 0);
	trans[0][1644]	= settr(1643,0,3555,940,940,"output = 10", 1, 2, 0);
	trans[0][1645]	= settr(1644,0,1646,941,0,"((input==17))", 1, 2, 0);
	trans[0][1646]	= settr(1645,0,18,942,942,"fsm_state = 40", 1, 2, 0);
	trans[0][1647]	= settr(1646,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1648]	= settr(1647,0,1649,943,0,"((input==27))", 1, 2, 0);
	trans[0][1649]	= settr(1648,0,18,944,944,"fsm_state = 34", 1, 2, 0);
	trans[0][1650]	= settr(1649,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1651]	= settr(1650,0,1652,945,0,"((input==18))", 1, 2, 0);
	trans[0][1652]	= settr(1651,0,18,946,946,"fsm_state = 27", 1, 2, 0);
	trans[0][1653]	= settr(1652,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1654]	= settr(1653,0,1655,947,0,"((input==21))", 1, 2, 0);
	trans[0][1655]	= settr(1654,0,18,948,948,"fsm_state = 27", 1, 2, 0);
	trans[0][1656]	= settr(1655,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1657]	= settr(1656,0,1658,949,0,"((input==16))", 1, 2, 0);
	trans[0][1658]	= settr(1657,0,1659,950,950,"fsm_state = 27", 1, 2, 0);
	trans[0][1659]	= settr(1658,0,3555,951,951,"output = 5", 1, 2, 0);
	trans[0][1660]	= settr(1659,0,1661,952,0,"((input==28))", 1, 2, 0);
	trans[0][1661]	= settr(1660,0,18,953,953,"fsm_state = 27", 1, 2, 0);
	trans[0][1662]	= settr(1661,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1663]	= settr(1662,0,1664,954,0,"((input==23))", 1, 2, 0);
	trans[0][1664]	= settr(1663,0,18,955,955,"fsm_state = 27", 1, 2, 0);
	trans[0][1665]	= settr(1664,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1666]	= settr(1665,0,1667,956,0,"((input==25))", 1, 2, 0);
	trans[0][1667]	= settr(1666,0,18,957,957,"fsm_state = 27", 1, 2, 0);
	trans[0][1668]	= settr(1667,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1669]	= settr(1668,0,18,2,0,"else", 0, 2, 0);
	trans[0][1670]	= settr(1669,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1673]	= settr(1672,0,1715,958,0,"((fsm_state==26))", 1, 2, 0);
	T = trans[0][1715] = settr(1714,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1714,0,1674,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1714,0,1677,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1714,0,1680,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1714,0,1683,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1714,0,1686,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1714,0,1689,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1714,0,1692,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1714,0,1695,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1714,0,1698,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1714,0,1701,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1714,0,1704,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1714,0,1707,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1714,0,1710,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1714,0,1713,0,0,"IF", 0, 2, 0);
	trans[0][1674]	= settr(1673,0,1675,959,0,"((input==19))", 1, 2, 0);
	trans[0][1675]	= settr(1674,0,1676,960,960,"fsm_state = 47", 1, 2, 0);
	trans[0][1676]	= settr(1675,0,3555,961,961,"output = 10", 1, 2, 0);
	trans[0][1716]	= settr(1715,0,3555,1,0,".(goto)", 0, 2, 0);
	trans[0][1677]	= settr(1676,0,1678,962,0,"((input==22))", 1, 2, 0);
	trans[0][1678]	= settr(1677,0,1679,963,963,"fsm_state = 47", 1, 2, 0);
	trans[0][1679]	= settr(1678,0,3555,964,964,"output = 10", 1, 2, 0);
	trans[0][1680]	= settr(1679,0,1681,965,0,"((input==24))", 1, 2, 0);
	trans[0][1681]	= settr(1680,0,1682,966,966,"fsm_state = 47", 1, 2, 0);
	trans[0][1682]	= settr(1681,0,3555,967,967,"output = 10", 1, 2, 0);
	trans[0][1683]	= settr(1682,0,1684,968,0,"((input==20))", 1, 2, 0);
	trans[0][1684]	= settr(1683,0,1685,969,969,"fsm_state = 47", 1, 2, 0);
	trans[0][1685]	= settr(1684,0,3555,970,970,"output = 10", 1, 2, 0);
	trans[0][1686]	= settr(1685,0,1687,971,0,"((input==17))", 1, 2, 0);
	trans[0][1687]	= settr(1686,0,18,972,972,"fsm_state = 45", 1, 2, 0);
	trans[0][1688]	= settr(1687,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1689]	= settr(1688,0,1690,973,0,"((input==18))", 1, 2, 0);
	trans[0][1690]	= settr(1689,0,18,974,974,"fsm_state = 26", 1, 2, 0);
	trans[0][1691]	= settr(1690,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1692]	= settr(1691,0,1693,975,0,"((input==21))", 1, 2, 0);
	trans[0][1693]	= settr(1692,0,1694,976,976,"fsm_state = 26", 1, 2, 0);
	trans[0][1694]	= settr(1693,0,3555,977,977,"output = 15", 1, 2, 0);
	trans[0][1695]	= settr(1694,0,1696,978,0,"((input==28))", 1, 2, 0);
	trans[0][1696]	= settr(1695,0,1697,979,979,"fsm_state = 26", 1, 2, 0);
	trans[0][1697]	= settr(1696,0,3555,980,980,"output = 15", 1, 2, 0);
	trans[0][1698]	= settr(1697,0,1699,981,0,"((input==27))", 1, 2, 0);
	trans[0][1699]	= settr(1698,0,1700,982,982,"fsm_state = 26", 1, 2, 0);
	trans[0][1700]	= settr(1699,0,3555,983,983,"output = 15", 1, 2, 0);
	trans[0][1701]	= settr(1700,0,1702,984,0,"((input==25))", 1, 2, 0);
	trans[0][1702]	= settr(1701,0,1703,985,985,"fsm_state = 26", 1, 2, 0);
	trans[0][1703]	= settr(1702,0,3555,986,986,"output = 15", 1, 2, 0);
	trans[0][1704]	= settr(1703,0,1705,987,0,"((input==23))", 1, 2, 0);
	trans[0][1705]	= settr(1704,0,18,988,988,"fsm_state = 25", 1, 2, 0);
	trans[0][1706]	= settr(1705,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1707]	= settr(1706,0,1708,989,0,"((input==26))", 1, 2, 0);
	trans[0][1708]	= settr(1707,0,18,990,990,"fsm_state = 21", 1, 2, 0);
	trans[0][1709]	= settr(1708,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1710]	= settr(1709,0,1711,991,0,"((input==16))", 1, 2, 0);
	trans[0][1711]	= settr(1710,0,1712,992,992,"fsm_state = 18", 1, 2, 0);
	trans[0][1712]	= settr(1711,0,3555,993,993,"output = 8", 1, 2, 0);
	trans[0][1713]	= settr(1712,0,18,2,0,"else", 0, 2, 0);
	trans[0][1714]	= settr(1713,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1717]	= settr(1716,0,1759,994,0,"((fsm_state==25))", 1, 2, 0);
	T = trans[0][1759] = settr(1758,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1758,0,1718,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1758,0,1721,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1758,0,1724,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1758,0,1727,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1758,0,1730,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1758,0,1733,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1758,0,1736,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1758,0,1739,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1758,0,1742,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1758,0,1745,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1758,0,1748,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1758,0,1751,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1758,0,1754,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1758,0,1757,0,0,"IF", 0, 2, 0);
	trans[0][1718]	= settr(1717,0,1719,995,0,"((input==19))", 1, 2, 0);
	trans[0][1719]	= settr(1718,0,1720,996,996,"fsm_state = 47", 1, 2, 0);
	trans[0][1720]	= settr(1719,0,3555,997,997,"output = 10", 1, 2, 0);
	trans[0][1760]	= settr(1759,0,3555,1,0,".(goto)", 0, 2, 0);
	trans[0][1721]	= settr(1720,0,1722,998,0,"((input==22))", 1, 2, 0);
	trans[0][1722]	= settr(1721,0,1723,999,999,"fsm_state = 47", 1, 2, 0);
	trans[0][1723]	= settr(1722,0,3555,1000,1000,"output = 10", 1, 2, 0);
	trans[0][1724]	= settr(1723,0,1725,1001,0,"((input==24))", 1, 2, 0);
	trans[0][1725]	= settr(1724,0,1726,1002,1002,"fsm_state = 47", 1, 2, 0);
	trans[0][1726]	= settr(1725,0,3555,1003,1003,"output = 10", 1, 2, 0);
	trans[0][1727]	= settr(1726,0,1728,1004,0,"((input==20))", 1, 2, 0);
	trans[0][1728]	= settr(1727,0,1729,1005,1005,"fsm_state = 47", 1, 2, 0);
	trans[0][1729]	= settr(1728,0,3555,1006,1006,"output = 10", 1, 2, 0);
	trans[0][1730]	= settr(1729,0,1731,1007,0,"((input==17))", 1, 2, 0);
	trans[0][1731]	= settr(1730,0,18,1008,1008,"fsm_state = 45", 1, 2, 0);
	trans[0][1732]	= settr(1731,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1733]	= settr(1732,0,1734,1009,0,"((input==18))", 1, 2, 0);
	trans[0][1734]	= settr(1733,0,1735,1010,1010,"fsm_state = 25", 1, 2, 0);
	trans[0][1735]	= settr(1734,0,3555,1011,1011,"output = 8", 1, 2, 0);
	trans[0][1736]	= settr(1735,0,1737,1012,0,"((input==21))", 1, 2, 0);
	trans[0][1737]	= settr(1736,0,1738,1013,1013,"fsm_state = 25", 1, 2, 0);
	trans[0][1738]	= settr(1737,0,3555,1014,1014,"output = 15", 1, 2, 0);
	trans[0][1739]	= settr(1738,0,1740,1015,0,"((input==28))", 1, 2, 0);
	trans[0][1740]	= settr(1739,0,1741,1016,1016,"fsm_state = 25", 1, 2, 0);
	trans[0][1741]	= settr(1740,0,3555,1017,1017,"output = 15", 1, 2, 0);
	trans[0][1742]	= settr(1741,0,1743,1018,0,"((input==23))", 1, 2, 0);
	trans[0][1743]	= settr(1742,0,1744,1019,1019,"fsm_state = 25", 1, 2, 0);
	trans[0][1744]	= settr(1743,0,3555,1020,1020,"output = 8", 1, 2, 0);
	trans[0][1745]	= settr(1744,0,1746,1021,0,"((input==27))", 1, 2, 0);
	trans[0][1746]	= settr(1745,0,1747,1022,1022,"fsm_state = 25", 1, 2, 0);
	trans[0][1747]	= settr(1746,0,3555,1023,1023,"output = 15", 1, 2, 0);
	trans[0][1748]	= settr(1747,0,1749,1024,0,"((input==25))", 1, 2, 0);
	trans[0][1749]	= settr(1748,0,1750,1025,1025,"fsm_state = 25", 1, 2, 0);
	trans[0][1750]	= settr(1749,0,3555,1026,1026,"output = 15", 1, 2, 0);
	trans[0][1751]	= settr(1750,0,1752,1027,0,"((input==26))", 1, 2, 0);
	trans[0][1752]	= settr(1751,0,18,1028,1028,"fsm_state = 20", 1, 2, 0);
	trans[0][1753]	= settr(1752,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1754]	= settr(1753,0,1755,1029,0,"((input==16))", 1, 2, 0);
	trans[0][1755]	= settr(1754,0,18,1030,1030,"fsm_state = 11", 1, 2, 0);
	trans[0][1756]	= settr(1755,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1757]	= settr(1756,0,18,2,0,"else", 0, 2, 0);
	trans[0][1758]	= settr(1757,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1761]	= settr(1760,0,1849,1031,0,"((fsm_state==24))", 1, 2, 0);
	T = trans[0][1849] = settr(1848,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1848,0,1762,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1848,0,1765,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1848,0,1768,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1848,0,1771,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1848,0,1774,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1848,0,1777,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1848,0,1780,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1848,0,1783,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1848,0,1786,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1848,0,1789,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1848,0,1792,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1848,0,1795,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1848,0,1798,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1848,0,1847,0,0,"IF", 0, 2, 0);
	trans[0][1762]	= settr(1761,0,1763,1032,0,"((input==19))", 1, 2, 0);
	trans[0][1763]	= settr(1762,0,1764,1033,1033,"fsm_state = 47", 1, 2, 0);
	trans[0][1764]	= settr(1763,0,3555,1034,1034,"output = 10", 1, 2, 0);
	trans[0][1850]	= settr(1849,0,3555,1,0,".(goto)", 0, 2, 0);
	trans[0][1765]	= settr(1764,0,1766,1035,0,"((input==22))", 1, 2, 0);
	trans[0][1766]	= settr(1765,0,1767,1036,1036,"fsm_state = 47", 1, 2, 0);
	trans[0][1767]	= settr(1766,0,3555,1037,1037,"output = 10", 1, 2, 0);
	trans[0][1768]	= settr(1767,0,1769,1038,0,"((input==24))", 1, 2, 0);
	trans[0][1769]	= settr(1768,0,1770,1039,1039,"fsm_state = 47", 1, 2, 0);
	trans[0][1770]	= settr(1769,0,3555,1040,1040,"output = 10", 1, 2, 0);
	trans[0][1771]	= settr(1770,0,1772,1041,0,"((input==20))", 1, 2, 0);
	trans[0][1772]	= settr(1771,0,1773,1042,1042,"fsm_state = 47", 1, 2, 0);
	trans[0][1773]	= settr(1772,0,3555,1043,1043,"output = 10", 1, 2, 0);
	trans[0][1774]	= settr(1773,0,1775,1044,0,"((input==17))", 1, 2, 0);
	trans[0][1775]	= settr(1774,0,18,1045,1045,"fsm_state = 45", 1, 2, 0);
	trans[0][1776]	= settr(1775,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1777]	= settr(1776,0,1778,1046,0,"((input==18))", 1, 2, 0);
	trans[0][1778]	= settr(1777,0,1779,1047,1047,"fsm_state = 24", 1, 2, 0);
	trans[0][1779]	= settr(1778,0,3555,1048,1048,"output = 8", 1, 2, 0);
	trans[0][1780]	= settr(1779,0,1781,1049,0,"((input==21))", 1, 2, 0);
	trans[0][1781]	= settr(1780,0,1782,1050,1050,"fsm_state = 24", 1, 2, 0);
	trans[0][1782]	= settr(1781,0,3555,1051,1051,"output = 15", 1, 2, 0);
	trans[0][1783]	= settr(1782,0,1784,1052,0,"((input==28))", 1, 2, 0);
	trans[0][1784]	= settr(1783,0,1785,1053,1053,"fsm_state = 24", 1, 2, 0);
	trans[0][1785]	= settr(1784,0,3555,1054,1054,"output = 15", 1, 2, 0);
	trans[0][1786]	= settr(1785,0,1787,1055,0,"((input==23))", 1, 2, 0);
	trans[0][1787]	= settr(1786,0,1788,1056,1056,"fsm_state = 24", 1, 2, 0);
	trans[0][1788]	= settr(1787,0,3555,1057,1057,"output = 8", 1, 2, 0);
	trans[0][1789]	= settr(1788,0,1790,1058,0,"((input==27))", 1, 2, 0);
	trans[0][1790]	= settr(1789,0,1791,1059,1059,"fsm_state = 24", 1, 2, 0);
	trans[0][1791]	= settr(1790,0,3555,1060,1060,"output = 15", 1, 2, 0);
	trans[0][1792]	= settr(1791,0,1793,1061,0,"((input==25))", 1, 2, 0);
	trans[0][1793]	= settr(1792,0,1794,1062,1062,"fsm_state = 24", 1, 2, 0);
	trans[0][1794]	= settr(1793,0,3555,1063,1063,"output = 15", 1, 2, 0);
	trans[0][1795]	= settr(1794,0,1796,1064,0,"((input==16))", 1, 2, 0);
	trans[0][1796]	= settr(1795,0,18,1065,1065,"fsm_state = 10", 1, 2, 0);
	trans[0][1797]	= settr(1796,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1798]	= settr(1797,0,1799,1066,0,"((input==26))", 1, 2, 0);
	trans[0][1799]	= settr(1798,0,1800,1067,1067,"fsm_state = 9", 1, 2, 0);
	trans[0][1800]	= settr(1799,0,1801,1068,1068,"output = 3", 1, 2, 0);
	trans[0][1801]	= settr(1800,0,1844,1069,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][1844] = settr(1843,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1843,0,1837,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][1837]	= settr(1836,32,1842,1070,1070,"D_STEP13", 1, 2, 0);
	T = trans[0][1842] = settr(1841,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1841,0,1838,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1841,0,1840,0,0,"IF", 0, 2, 0);
	trans[0][1838]	= settr(1837,0,1,1071,0,"((dealt==0))", 1, 2, 0);
	trans[0][1839]	= settr(1838,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][1843]	= settr(1842,0,1845,1,0,".(goto)", 0, 2, 0);
	trans[0][1840]	= settr(1839,0,1841,2,0,"else", 0, 2, 0);
	trans[0][1841]	= settr(1840,0,1845,1,0,"(1)", 0, 2, 0);
	trans[0][1845]	= settr(1844,0,1846,1072,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][1846]	= settr(1845,0,3555,1073,1073,"output = 12", 1, 2, 0);
	trans[0][1847]	= settr(1846,0,18,2,0,"else", 0, 2, 0);
	trans[0][1848]	= settr(1847,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1851]	= settr(1850,0,1893,1074,0,"((fsm_state==23))", 1, 2, 0);
	T = trans[0][1893] = settr(1892,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1892,0,1852,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1892,0,1855,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1892,0,1858,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1892,0,1861,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1892,0,1864,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1892,0,1867,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1892,0,1870,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1892,0,1873,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1892,0,1876,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1892,0,1879,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1892,0,1882,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1892,0,1885,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1892,0,1888,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1892,0,1891,0,0,"IF", 0, 2, 0);
	trans[0][1852]	= settr(1851,0,1853,1075,0,"((input==26))", 1, 2, 0);
	trans[0][1853]	= settr(1852,0,1854,1076,1076,"fsm_state = 48", 1, 2, 0);
	trans[0][1854]	= settr(1853,0,3555,1077,1077,"output = 10", 1, 2, 0);
	trans[0][1894]	= settr(1893,0,3555,1,0,".(goto)", 0, 2, 0);
	trans[0][1855]	= settr(1854,0,1856,1078,0,"((input==17))", 1, 2, 0);
	trans[0][1856]	= settr(1855,0,1857,1079,1079,"fsm_state = 48", 1, 2, 0);
	trans[0][1857]	= settr(1856,0,3555,1080,1080,"output = 10", 1, 2, 0);
	trans[0][1858]	= settr(1857,0,1859,1081,0,"((input==22))", 1, 2, 0);
	trans[0][1859]	= settr(1858,0,1860,1082,1082,"fsm_state = 48", 1, 2, 0);
	trans[0][1860]	= settr(1859,0,3555,1083,1083,"output = 10", 1, 2, 0);
	trans[0][1861]	= settr(1860,0,1862,1084,0,"((input==27))", 1, 2, 0);
	trans[0][1862]	= settr(1861,0,1863,1085,1085,"fsm_state = 32", 1, 2, 0);
	trans[0][1863]	= settr(1862,0,3555,1086,1086,"output = 13", 1, 2, 0);
	trans[0][1864]	= settr(1863,0,1865,1087,0,"((input==25))", 1, 2, 0);
	trans[0][1865]	= settr(1864,0,1866,1088,1088,"fsm_state = 28", 1, 2, 0);
	trans[0][1866]	= settr(1865,0,3555,1089,1089,"output = 13", 1, 2, 0);
	trans[0][1867]	= settr(1866,0,1868,1090,0,"((input==18))", 1, 2, 0);
	trans[0][1868]	= settr(1867,0,1869,1091,1091,"fsm_state = 23", 1, 2, 0);
	trans[0][1869]	= settr(1868,0,3555,1092,1092,"output = 8", 1, 2, 0);
	trans[0][1870]	= settr(1869,0,1871,1093,0,"((input==21))", 1, 2, 0);
	trans[0][1871]	= settr(1870,0,1872,1094,1094,"fsm_state = 23", 1, 2, 0);
	trans[0][1872]	= settr(1871,0,3555,1095,1095,"output = 7", 1, 2, 0);
	trans[0][1873]	= settr(1872,0,1874,1096,0,"((input==16))", 1, 2, 0);
	trans[0][1874]	= settr(1873,0,1875,1097,1097,"fsm_state = 23", 1, 2, 0);
	trans[0][1875]	= settr(1874,0,3555,1098,1098,"output = 5", 1, 2, 0);
	trans[0][1876]	= settr(1875,0,1877,1099,0,"((input==23))", 1, 2, 0);
	trans[0][1877]	= settr(1876,0,1878,1100,1100,"fsm_state = 23", 1, 2, 0);
	trans[0][1878]	= settr(1877,0,3555,1101,1101,"output = 8", 1, 2, 0);
	trans[0][1879]	= settr(1878,0,1880,1102,0,"((input==20))", 1, 2, 0);
	trans[0][1880]	= settr(1879,0,1881,1103,1103,"fsm_state = 23", 1, 2, 0);
	trans[0][1881]	= settr(1880,0,3555,1104,1104,"output = 14", 1, 2, 0);
	trans[0][1882]	= settr(1881,0,1883,1105,0,"((input==28))", 1, 2, 0);
	trans[0][1883]	= settr(1882,0,18,1106,1106,"fsm_state = 8", 1, 2, 0);
	trans[0][1884]	= settr(1883,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1885]	= settr(1884,0,1886,1107,0,"((input==24))", 1, 2, 0);
	trans[0][1886]	= settr(1885,0,1887,1108,1108,"fsm_state = 7", 1, 2, 0);
	trans[0][1887]	= settr(1886,0,3555,1109,1109,"output = 2", 1, 2, 0);
	trans[0][1888]	= settr(1887,0,1889,1110,0,"((input==19))", 1, 2, 0);
	trans[0][1889]	= settr(1888,0,1890,1111,1111,"fsm_state = 6", 1, 2, 0);
	trans[0][1890]	= settr(1889,0,3555,1112,1112,"output = 2", 1, 2, 0);
	trans[0][1891]	= settr(1890,0,18,2,0,"else", 0, 2, 0);
	trans[0][1892]	= settr(1891,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1895]	= settr(1894,0,1937,1113,0,"((fsm_state==22))", 1, 2, 0);
	T = trans[0][1937] = settr(1936,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1936,0,1896,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1936,0,1899,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1936,0,1902,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1936,0,1905,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1936,0,1908,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1936,0,1911,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1936,0,1914,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1936,0,1917,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1936,0,1920,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1936,0,1923,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1936,0,1926,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1936,0,1929,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1936,0,1932,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1936,0,1935,0,0,"IF", 0, 2, 0);
	trans[0][1896]	= settr(1895,0,1897,1114,0,"((input==19))", 1, 2, 0);
	trans[0][1897]	= settr(1896,0,1898,1115,1115,"fsm_state = 47", 1, 2, 0);
	trans[0][1898]	= settr(1897,0,3555,1116,1116,"output = 10", 1, 2, 0);
	trans[0][1938]	= settr(1937,0,3555,1,0,".(goto)", 0, 2, 0);
	trans[0][1899]	= settr(1898,0,1900,1117,0,"((input==22))", 1, 2, 0);
	trans[0][1900]	= settr(1899,0,1901,1118,1118,"fsm_state = 47", 1, 2, 0);
	trans[0][1901]	= settr(1900,0,3555,1119,1119,"output = 10", 1, 2, 0);
	trans[0][1902]	= settr(1901,0,1903,1120,0,"((input==24))", 1, 2, 0);
	trans[0][1903]	= settr(1902,0,1904,1121,1121,"fsm_state = 47", 1, 2, 0);
	trans[0][1904]	= settr(1903,0,3555,1122,1122,"output = 10", 1, 2, 0);
	trans[0][1905]	= settr(1904,0,1906,1123,0,"((input==20))", 1, 2, 0);
	trans[0][1906]	= settr(1905,0,1907,1124,1124,"fsm_state = 47", 1, 2, 0);
	trans[0][1907]	= settr(1906,0,3555,1125,1125,"output = 10", 1, 2, 0);
	trans[0][1908]	= settr(1907,0,1909,1126,0,"((input==17))", 1, 2, 0);
	trans[0][1909]	= settr(1908,0,18,1127,1127,"fsm_state = 45", 1, 2, 0);
	trans[0][1910]	= settr(1909,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1911]	= settr(1910,0,1912,1128,0,"((input==26))", 1, 2, 0);
	trans[0][1912]	= settr(1911,0,18,1129,1129,"fsm_state = 24", 1, 2, 0);
	trans[0][1913]	= settr(1912,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1914]	= settr(1913,0,1915,1130,0,"((input==18))", 1, 2, 0);
	trans[0][1915]	= settr(1914,0,1916,1131,1131,"fsm_state = 22", 1, 2, 0);
	trans[0][1916]	= settr(1915,0,3555,1132,1132,"output = 8", 1, 2, 0);
	trans[0][1917]	= settr(1916,0,1918,1133,0,"((input==21))", 1, 2, 0);
	trans[0][1918]	= settr(1917,0,1919,1134,1134,"fsm_state = 22", 1, 2, 0);
	trans[0][1919]	= settr(1918,0,3555,1135,1135,"output = 15", 1, 2, 0);
	trans[0][1920]	= settr(1919,0,1921,1136,0,"((input==28))", 1, 2, 0);
	trans[0][1921]	= settr(1920,0,1922,1137,1137,"fsm_state = 22", 1, 2, 0);
	trans[0][1922]	= settr(1921,0,3555,1138,1138,"output = 15", 1, 2, 0);
	trans[0][1923]	= settr(1922,0,1924,1139,0,"((input==23))", 1, 2, 0);
	trans[0][1924]	= settr(1923,0,1925,1140,1140,"fsm_state = 22", 1, 2, 0);
	trans[0][1925]	= settr(1924,0,3555,1141,1141,"output = 8", 1, 2, 0);
	trans[0][1926]	= settr(1925,0,1927,1142,0,"((input==27))", 1, 2, 0);
	trans[0][1927]	= settr(1926,0,1928,1143,1143,"fsm_state = 22", 1, 2, 0);
	trans[0][1928]	= settr(1927,0,3555,1144,1144,"output = 15", 1, 2, 0);
	trans[0][1929]	= settr(1928,0,1930,1145,0,"((input==25))", 1, 2, 0);
	trans[0][1930]	= settr(1929,0,1931,1146,1146,"fsm_state = 22", 1, 2, 0);
	trans[0][1931]	= settr(1930,0,3555,1147,1147,"output = 15", 1, 2, 0);
	trans[0][1932]	= settr(1931,0,1933,1148,0,"((input==16))", 1, 2, 0);
	trans[0][1933]	= settr(1932,0,18,1149,1149,"fsm_state = 11", 1, 2, 0);
	trans[0][1934]	= settr(1933,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1935]	= settr(1934,0,18,2,0,"else", 0, 2, 0);
	trans[0][1936]	= settr(1935,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1939]	= settr(1938,0,2073,1150,0,"((fsm_state==21))", 1, 2, 0);
	T = trans[0][2073] = settr(2072,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2072,0,1940,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2072,0,1943,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2072,0,1946,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2072,0,1949,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2072,0,1952,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2072,0,1955,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2072,0,1958,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2072,0,1961,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2072,0,1964,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2072,0,1967,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2072,0,1970,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2072,0,1973,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2072,0,2068,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2072,0,2071,0,0,"IF", 0, 2, 0);
	trans[0][1940]	= settr(1939,0,1941,1151,0,"((input==19))", 1, 2, 0);
	trans[0][1941]	= settr(1940,0,1942,1152,1152,"fsm_state = 47", 1, 2, 0);
	trans[0][1942]	= settr(1941,0,3555,1153,1153,"output = 10", 1, 2, 0);
	trans[0][2074]	= settr(2073,0,3555,1,0,".(goto)", 0, 2, 0);
	trans[0][1943]	= settr(1942,0,1944,1154,0,"((input==22))", 1, 2, 0);
	trans[0][1944]	= settr(1943,0,1945,1155,1155,"fsm_state = 47", 1, 2, 0);
	trans[0][1945]	= settr(1944,0,3555,1156,1156,"output = 10", 1, 2, 0);
	trans[0][1946]	= settr(1945,0,1947,1157,0,"((input==24))", 1, 2, 0);
	trans[0][1947]	= settr(1946,0,1948,1158,1158,"fsm_state = 47", 1, 2, 0);
	trans[0][1948]	= settr(1947,0,3555,1159,1159,"output = 10", 1, 2, 0);
	trans[0][1949]	= settr(1948,0,1950,1160,0,"((input==20))", 1, 2, 0);
	trans[0][1950]	= settr(1949,0,1951,1161,1161,"fsm_state = 47", 1, 2, 0);
	trans[0][1951]	= settr(1950,0,3555,1162,1162,"output = 10", 1, 2, 0);
	trans[0][1952]	= settr(1951,0,1953,1163,0,"((input==17))", 1, 2, 0);
	trans[0][1953]	= settr(1952,0,18,1164,1164,"fsm_state = 45", 1, 2, 0);
	trans[0][1954]	= settr(1953,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1955]	= settr(1954,0,1956,1165,0,"((input==18))", 1, 2, 0);
	trans[0][1956]	= settr(1955,0,18,1166,1166,"fsm_state = 21", 1, 2, 0);
	trans[0][1957]	= settr(1956,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1958]	= settr(1957,0,1959,1167,0,"((input==21))", 1, 2, 0);
	trans[0][1959]	= settr(1958,0,1960,1168,1168,"fsm_state = 21", 1, 2, 0);
	trans[0][1960]	= settr(1959,0,3555,1169,1169,"output = 15", 1, 2, 0);
	trans[0][1961]	= settr(1960,0,1962,1170,0,"((input==28))", 1, 2, 0);
	trans[0][1962]	= settr(1961,0,1963,1171,1171,"fsm_state = 21", 1, 2, 0);
	trans[0][1963]	= settr(1962,0,3555,1172,1172,"output = 15", 1, 2, 0);
	trans[0][1964]	= settr(1963,0,1965,1173,0,"((input==27))", 1, 2, 0);
	trans[0][1965]	= settr(1964,0,1966,1174,1174,"fsm_state = 21", 1, 2, 0);
	trans[0][1966]	= settr(1965,0,3555,1175,1175,"output = 15", 1, 2, 0);
	trans[0][1967]	= settr(1966,0,1968,1176,0,"((input==25))", 1, 2, 0);
	trans[0][1968]	= settr(1967,0,1969,1177,1177,"fsm_state = 21", 1, 2, 0);
	trans[0][1969]	= settr(1968,0,3555,1178,1178,"output = 15", 1, 2, 0);
	trans[0][1970]	= settr(1969,0,1971,1179,0,"((input==23))", 1, 2, 0);
	trans[0][1971]	= settr(1970,0,18,1180,1180,"fsm_state = 20", 1, 2, 0);
	trans[0][1972]	= settr(1971,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1973]	= settr(1972,0,1974,1181,0,"((input==26))", 1, 2, 0);
	trans[0][1974]	= settr(1973,0,1975,1182,1182,"fsm_state = 19", 1, 2, 0);
	trans[0][1975]	= settr(1974,0,1976,1183,1183,"output = 3", 1, 2, 0);
	trans[0][1976]	= settr(1975,0,2019,1184,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2019] = settr(2018,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2018,0,2012,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2012]	= settr(2011,32,2017,1185,1185,"D_STEP13", 1, 2, 0);
	T = trans[0][2017] = settr(2016,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2016,0,2013,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2016,0,2015,0,0,"IF", 0, 2, 0);
	trans[0][2013]	= settr(2012,0,1,1186,0,"((dealt==0))", 1, 2, 0);
	trans[0][2014]	= settr(2013,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2018]	= settr(2017,0,2020,1,0,".(goto)", 0, 2, 0);
	trans[0][2015]	= settr(2014,0,2016,2,0,"else", 0, 2, 0);
	trans[0][2016]	= settr(2015,0,2020,1,0,"(1)", 0, 2, 0);
	trans[0][2020]	= settr(2019,0,2021,1187,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2021]	= settr(2020,0,2022,1188,1188,"output = 12", 1, 2, 0);
	trans[0][2022]	= settr(2021,0,2065,1189,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2065] = settr(2064,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2064,0,2058,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2058]	= settr(2057,32,2063,1190,1190,"D_STEP13", 1, 2, 0);
	T = trans[0][2063] = settr(2062,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2062,0,2059,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2062,0,2061,0,0,"IF", 0, 2, 0);
	trans[0][2059]	= settr(2058,0,1,1191,0,"((dealt==0))", 1, 2, 0);
	trans[0][2060]	= settr(2059,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2064]	= settr(2063,0,2066,1,0,".(goto)", 0, 2, 0);
	trans[0][2061]	= settr(2060,0,2062,2,0,"else", 0, 2, 0);
	trans[0][2062]	= settr(2061,0,2066,1,0,"(1)", 0, 2, 0);
	trans[0][2066]	= settr(2065,0,2067,1192,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2067]	= settr(2066,0,3555,1193,1193,"output = 11", 1, 2, 0);
	trans[0][2068]	= settr(2067,0,2069,1194,0,"((input==16))", 1, 2, 0);
	trans[0][2069]	= settr(2068,0,2070,1195,1195,"fsm_state = 16", 1, 2, 0);
	trans[0][2070]	= settr(2069,0,3555,1196,1196,"output = 8", 1, 2, 0);
	trans[0][2071]	= settr(2070,0,18,2,0,"else", 0, 2, 0);
	trans[0][2072]	= settr(2071,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2075]	= settr(2074,0,2209,1197,0,"((fsm_state==20))", 1, 2, 0);
	T = trans[0][2209] = settr(2208,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2208,0,2076,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2208,0,2079,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2208,0,2082,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2208,0,2085,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2208,0,2088,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2208,0,2091,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2208,0,2094,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2208,0,2097,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2208,0,2100,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2208,0,2103,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2208,0,2106,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2208,0,2109,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2208,0,2112,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2208,0,2207,0,0,"IF", 0, 2, 0);
	trans[0][2076]	= settr(2075,0,2077,1198,0,"((input==19))", 1, 2, 0);
	trans[0][2077]	= settr(2076,0,2078,1199,1199,"fsm_state = 47", 1, 2, 0);
	trans[0][2078]	= settr(2077,0,3555,1200,1200,"output = 10", 1, 2, 0);
	trans[0][2210]	= settr(2209,0,3555,1,0,".(goto)", 0, 2, 0);
	trans[0][2079]	= settr(2078,0,2080,1201,0,"((input==22))", 1, 2, 0);
	trans[0][2080]	= settr(2079,0,2081,1202,1202,"fsm_state = 47", 1, 2, 0);
	trans[0][2081]	= settr(2080,0,3555,1203,1203,"output = 10", 1, 2, 0);
	trans[0][2082]	= settr(2081,0,2083,1204,0,"((input==24))", 1, 2, 0);
	trans[0][2083]	= settr(2082,0,2084,1205,1205,"fsm_state = 47", 1, 2, 0);
	trans[0][2084]	= settr(2083,0,3555,1206,1206,"output = 10", 1, 2, 0);
	trans[0][2085]	= settr(2084,0,2086,1207,0,"((input==20))", 1, 2, 0);
	trans[0][2086]	= settr(2085,0,2087,1208,1208,"fsm_state = 47", 1, 2, 0);
	trans[0][2087]	= settr(2086,0,3555,1209,1209,"output = 10", 1, 2, 0);
	trans[0][2088]	= settr(2087,0,2089,1210,0,"((input==17))", 1, 2, 0);
	trans[0][2089]	= settr(2088,0,18,1211,1211,"fsm_state = 45", 1, 2, 0);
	trans[0][2090]	= settr(2089,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2091]	= settr(2090,0,2092,1212,0,"((input==18))", 1, 2, 0);
	trans[0][2092]	= settr(2091,0,2093,1213,1213,"fsm_state = 20", 1, 2, 0);
	trans[0][2093]	= settr(2092,0,3555,1214,1214,"output = 8", 1, 2, 0);
	trans[0][2094]	= settr(2093,0,2095,1215,0,"((input==21))", 1, 2, 0);
	trans[0][2095]	= settr(2094,0,2096,1216,1216,"fsm_state = 20", 1, 2, 0);
	trans[0][2096]	= settr(2095,0,3555,1217,1217,"output = 15", 1, 2, 0);
	trans[0][2097]	= settr(2096,0,2098,1218,0,"((input==28))", 1, 2, 0);
	trans[0][2098]	= settr(2097,0,2099,1219,1219,"fsm_state = 20", 1, 2, 0);
	trans[0][2099]	= settr(2098,0,3555,1220,1220,"output = 15", 1, 2, 0);
	trans[0][2100]	= settr(2099,0,2101,1221,0,"((input==23))", 1, 2, 0);
	trans[0][2101]	= settr(2100,0,2102,1222,1222,"fsm_state = 20", 1, 2, 0);
	trans[0][2102]	= settr(2101,0,3555,1223,1223,"output = 8", 1, 2, 0);
	trans[0][2103]	= settr(2102,0,2104,1224,0,"((input==27))", 1, 2, 0);
	trans[0][2104]	= settr(2103,0,2105,1225,1225,"fsm_state = 20", 1, 2, 0);
	trans[0][2105]	= settr(2104,0,3555,1226,1226,"output = 15", 1, 2, 0);
	trans[0][2106]	= settr(2105,0,2107,1227,0,"((input==25))", 1, 2, 0);
	trans[0][2107]	= settr(2106,0,2108,1228,1228,"fsm_state = 20", 1, 2, 0);
	trans[0][2108]	= settr(2107,0,3555,1229,1229,"output = 15", 1, 2, 0);
	trans[0][2109]	= settr(2108,0,2110,1230,0,"((input==16))", 1, 2, 0);
	trans[0][2110]	= settr(2109,0,18,1231,1231,"fsm_state = 10", 1, 2, 0);
	trans[0][2111]	= settr(2110,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2112]	= settr(2111,0,2113,1232,0,"((input==26))", 1, 2, 0);
	trans[0][2113]	= settr(2112,0,2114,1233,1233,"fsm_state = 9", 1, 2, 0);
	trans[0][2114]	= settr(2113,0,2115,1234,1234,"output = 3", 1, 2, 0);
	trans[0][2115]	= settr(2114,0,2158,1235,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2158] = settr(2157,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2157,0,2151,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2151]	= settr(2150,32,2156,1236,1236,"D_STEP13", 1, 2, 0);
	T = trans[0][2156] = settr(2155,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2155,0,2152,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2155,0,2154,0,0,"IF", 0, 2, 0);
	trans[0][2152]	= settr(2151,0,1,1237,0,"((dealt==0))", 1, 2, 0);
	trans[0][2153]	= settr(2152,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2157]	= settr(2156,0,2159,1,0,".(goto)", 0, 2, 0);
	trans[0][2154]	= settr(2153,0,2155,2,0,"else", 0, 2, 0);
	trans[0][2155]	= settr(2154,0,2159,1,0,"(1)", 0, 2, 0);
	trans[0][2159]	= settr(2158,0,2160,1238,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2160]	= settr(2159,0,2161,1239,1239,"output = 12", 1, 2, 0);
	trans[0][2161]	= settr(2160,0,2204,1240,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2204] = settr(2203,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2203,0,2197,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2197]	= settr(2196,32,2202,1241,1241,"D_STEP13", 1, 2, 0);
	T = trans[0][2202] = settr(2201,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2201,0,2198,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2201,0,2200,0,0,"IF", 0, 2, 0);
	trans[0][2198]	= settr(2197,0,1,1242,0,"((dealt==0))", 1, 2, 0);
	trans[0][2199]	= settr(2198,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2203]	= settr(2202,0,2205,1,0,".(goto)", 0, 2, 0);
	trans[0][2200]	= settr(2199,0,2201,2,0,"else", 0, 2, 0);
	trans[0][2201]	= settr(2200,0,2205,1,0,"(1)", 0, 2, 0);
	trans[0][2205]	= settr(2204,0,2206,1243,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2206]	= settr(2205,0,3555,1244,1244,"output = 11", 1, 2, 0);
	trans[0][2207]	= settr(2206,0,18,2,0,"else", 0, 2, 0);
	trans[0][2208]	= settr(2207,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2211]	= settr(2210,0,2253,1245,0,"((fsm_state==19))", 1, 2, 0);
	T = trans[0][2253] = settr(2252,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2252,0,2212,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2252,0,2215,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2252,0,2218,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2252,0,2221,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2252,0,2224,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2252,0,2227,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2252,0,2230,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2252,0,2233,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2252,0,2236,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2252,0,2239,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2252,0,2242,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2252,0,2245,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2252,0,2248,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2252,0,2251,0,0,"IF", 0, 2, 0);
	trans[0][2212]	= settr(2211,0,2213,1246,0,"((input==26))", 1, 2, 0);
	trans[0][2213]	= settr(2212,0,2214,1247,1247,"fsm_state = 47", 1, 2, 0);
	trans[0][2214]	= settr(2213,0,3555,1248,1248,"output = 10", 1, 2, 0);
	trans[0][2254]	= settr(2253,0,3555,1,0,".(goto)", 0, 2, 0);
	trans[0][2215]	= settr(2214,0,2216,1249,0,"((input==19))", 1, 2, 0);
	trans[0][2216]	= settr(2215,0,2217,1250,1250,"fsm_state = 47", 1, 2, 0);
	trans[0][2217]	= settr(2216,0,3555,1251,1251,"output = 10", 1, 2, 0);
	trans[0][2218]	= settr(2217,0,2219,1252,0,"((input==22))", 1, 2, 0);
	trans[0][2219]	= settr(2218,0,2220,1253,1253,"fsm_state = 47", 1, 2, 0);
	trans[0][2220]	= settr(2219,0,3555,1254,1254,"output = 10", 1, 2, 0);
	trans[0][2221]	= settr(2220,0,2222,1255,0,"((input==24))", 1, 2, 0);
	trans[0][2222]	= settr(2221,0,2223,1256,1256,"fsm_state = 47", 1, 2, 0);
	trans[0][2223]	= settr(2222,0,3555,1257,1257,"output = 10", 1, 2, 0);
	trans[0][2224]	= settr(2223,0,2225,1258,0,"((input==20))", 1, 2, 0);
	trans[0][2225]	= settr(2224,0,2226,1259,1259,"fsm_state = 47", 1, 2, 0);
	trans[0][2226]	= settr(2225,0,3555,1260,1260,"output = 10", 1, 2, 0);
	trans[0][2227]	= settr(2226,0,2228,1261,0,"((input==17))", 1, 2, 0);
	trans[0][2228]	= settr(2227,0,18,1262,1262,"fsm_state = 38", 1, 2, 0);
	trans[0][2229]	= settr(2228,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2230]	= settr(2229,0,2231,1263,0,"((input==18))", 1, 2, 0);
	trans[0][2231]	= settr(2230,0,2232,1264,1264,"fsm_state = 19", 1, 2, 0);
	trans[0][2232]	= settr(2231,0,3555,1265,1265,"output = 1", 1, 2, 0);
	trans[0][2233]	= settr(2232,0,2234,1266,0,"((input==21))", 1, 2, 0);
	trans[0][2234]	= settr(2233,0,2235,1267,1267,"fsm_state = 19", 1, 2, 0);
	trans[0][2235]	= settr(2234,0,3555,1268,1268,"output = 15", 1, 2, 0);
	trans[0][2236]	= settr(2235,0,2237,1269,0,"((input==28))", 1, 2, 0);
	trans[0][2237]	= settr(2236,0,2238,1270,1270,"fsm_state = 19", 1, 2, 0);
	trans[0][2238]	= settr(2237,0,3555,1271,1271,"output = 15", 1, 2, 0);
	trans[0][2239]	= settr(2238,0,2240,1272,0,"((input==27))", 1, 2, 0);
	trans[0][2240]	= settr(2239,0,2241,1273,1273,"fsm_state = 19", 1, 2, 0);
	trans[0][2241]	= settr(2240,0,3555,1274,1274,"output = 15", 1, 2, 0);
	trans[0][2242]	= settr(2241,0,2243,1275,0,"((input==25))", 1, 2, 0);
	trans[0][2243]	= settr(2242,0,2244,1276,1276,"fsm_state = 19", 1, 2, 0);
	trans[0][2244]	= settr(2243,0,3555,1277,1277,"output = 15", 1, 2, 0);
	trans[0][2245]	= settr(2244,0,2246,1278,0,"((input==16))", 1, 2, 0);
	trans[0][2246]	= settr(2245,0,2247,1279,1279,"fsm_state = 15", 1, 2, 0);
	trans[0][2247]	= settr(2246,0,3555,1280,1280,"output = 8", 1, 2, 0);
	trans[0][2248]	= settr(2247,0,2249,1281,0,"((input==23))", 1, 2, 0);
	trans[0][2249]	= settr(2248,0,2250,1282,1282,"fsm_state = 9", 1, 2, 0);
	trans[0][2250]	= settr(2249,0,3555,1283,1283,"output = 6", 1, 2, 0);
	trans[0][2251]	= settr(2250,0,18,2,0,"else", 0, 2, 0);
	trans[0][2252]	= settr(2251,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2255]	= settr(2254,0,2297,1284,0,"((fsm_state==18))", 1, 2, 0);
	T = trans[0][2297] = settr(2296,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2296,0,2256,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2296,0,2259,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2296,0,2262,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2296,0,2265,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2296,0,2268,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2296,0,2271,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2296,0,2274,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2296,0,2277,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2296,0,2280,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2296,0,2283,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2296,0,2286,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2296,0,2289,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2296,0,2292,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2296,0,2295,0,0,"IF", 0, 2, 0);
	trans[0][2256]	= settr(2255,0,2257,1285,0,"((input==19))", 1, 2, 0);
	trans[0][2257]	= settr(2256,0,2258,1286,1286,"fsm_state = 48", 1, 2, 0);
	trans[0][2258]	= settr(2257,0,3555,1287,1287,"output = 10", 1, 2, 0);
	trans[0][2298]	= settr(2297,0,3555,1,0,".(goto)", 0, 2, 0);
	trans[0][2259]	= settr(2258,0,2260,1288,0,"((input==22))", 1, 2, 0);
	trans[0][2260]	= settr(2259,0,2261,1289,1289,"fsm_state = 48", 1, 2, 0);
	trans[0][2261]	= settr(2260,0,3555,1290,1290,"output = 10", 1, 2, 0);
	trans[0][2262]	= settr(2261,0,2263,1291,0,"((input==24))", 1, 2, 0);
	trans[0][2263]	= settr(2262,0,2264,1292,1292,"fsm_state = 48", 1, 2, 0);
	trans[0][2264]	= settr(2263,0,3555,1293,1293,"output = 10", 1, 2, 0);
	trans[0][2265]	= settr(2264,0,2266,1294,0,"((input==20))", 1, 2, 0);
	trans[0][2266]	= settr(2265,0,2267,1295,1295,"fsm_state = 48", 1, 2, 0);
	trans[0][2267]	= settr(2266,0,3555,1296,1296,"output = 10", 1, 2, 0);
	trans[0][2268]	= settr(2267,0,2269,1297,0,"((input==17))", 1, 2, 0);
	trans[0][2269]	= settr(2268,0,18,1298,1298,"fsm_state = 43", 1, 2, 0);
	trans[0][2270]	= settr(2269,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2271]	= settr(2270,0,2272,1299,0,"((input==27))", 1, 2, 0);
	trans[0][2272]	= settr(2271,0,2273,1300,1300,"fsm_state = 26", 1, 2, 0);
	trans[0][2273]	= settr(2272,0,3555,1301,1301,"output = 8", 1, 2, 0);
	trans[0][2274]	= settr(2273,0,2275,1302,0,"((input==18))", 1, 2, 0);
	trans[0][2275]	= settr(2274,0,18,1303,1303,"fsm_state = 18", 1, 2, 0);
	trans[0][2276]	= settr(2275,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2277]	= settr(2276,0,2278,1304,0,"((input==21))", 1, 2, 0);
	trans[0][2278]	= settr(2277,0,2279,1305,1305,"fsm_state = 18", 1, 2, 0);
	trans[0][2279]	= settr(2278,0,3555,1306,1306,"output = 8", 1, 2, 0);
	trans[0][2280]	= settr(2279,0,2281,1307,0,"((input==16))", 1, 2, 0);
	trans[0][2281]	= settr(2280,0,2282,1308,1308,"fsm_state = 18", 1, 2, 0);
	trans[0][2282]	= settr(2281,0,3555,1309,1309,"output = 5", 1, 2, 0);
	trans[0][2283]	= settr(2282,0,2284,1310,0,"((input==28))", 1, 2, 0);
	trans[0][2284]	= settr(2283,0,2285,1311,1311,"fsm_state = 18", 1, 2, 0);
	trans[0][2285]	= settr(2284,0,3555,1312,1312,"output = 8", 1, 2, 0);
	trans[0][2286]	= settr(2285,0,2287,1313,0,"((input==25))", 1, 2, 0);
	trans[0][2287]	= settr(2286,0,2288,1314,1314,"fsm_state = 18", 1, 2, 0);
	trans[0][2288]	= settr(2287,0,3555,1315,1315,"output = 8", 1, 2, 0);
	trans[0][2289]	= settr(2288,0,2290,1316,0,"((input==23))", 1, 2, 0);
	trans[0][2290]	= settr(2289,0,18,1317,1317,"fsm_state = 17", 1, 2, 0);
	trans[0][2291]	= settr(2290,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2292]	= settr(2291,0,2293,1318,0,"((input==26))", 1, 2, 0);
	trans[0][2293]	= settr(2292,0,18,1319,1319,"fsm_state = 16", 1, 2, 0);
	trans[0][2294]	= settr(2293,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2295]	= settr(2294,0,18,2,0,"else", 0, 2, 0);
	trans[0][2296]	= settr(2295,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2299]	= settr(2298,0,2341,1320,0,"((fsm_state==17))", 1, 2, 0);
	T = trans[0][2341] = settr(2340,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2340,0,2300,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2340,0,2303,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2340,0,2306,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2340,0,2309,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2340,0,2312,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2340,0,2315,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2340,0,2318,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2340,0,2321,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2340,0,2324,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2340,0,2327,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2340,0,2330,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2340,0,2333,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2340,0,2336,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2340,0,2339,0,0,"IF", 0, 2, 0);
	trans[0][2300]	= settr(2299,0,2301,1321,0,"((input==19))", 1, 2, 0);
	trans[0][2301]	= settr(2300,0,2302,1322,1322,"fsm_state = 48", 1, 2, 0);
	trans[0][2302]	= settr(2301,0,3555,1323,1323,"output = 10", 1, 2, 0);
	trans[0][2342]	= settr(2341,0,3555,1,0,".(goto)", 0, 2, 0);
	trans[0][2303]	= settr(2302,0,2304,1324,0,"((input==22))", 1, 2, 0);
	trans[0][2304]	= settr(2303,0,2305,1325,1325,"fsm_state = 48", 1, 2, 0);
	trans[0][2305]	= settr(2304,0,3555,1326,1326,"output = 10", 1, 2, 0);
	trans[0][2306]	= settr(2305,0,2307,1327,0,"((input==24))", 1, 2, 0);
	trans[0][2307]	= settr(2306,0,2308,1328,1328,"fsm_state = 48", 1, 2, 0);
	trans[0][2308]	= settr(2307,0,3555,1329,1329,"output = 10", 1, 2, 0);
	trans[0][2309]	= settr(2308,0,2310,1330,0,"((input==20))", 1, 2, 0);
	trans[0][2310]	= settr(2309,0,2311,1331,1331,"fsm_state = 48", 1, 2, 0);
	trans[0][2311]	= settr(2310,0,3555,1332,1332,"output = 10", 1, 2, 0);
	trans[0][2312]	= settr(2311,0,2313,1333,0,"((input==17))", 1, 2, 0);
	trans[0][2313]	= settr(2312,0,18,1334,1334,"fsm_state = 43", 1, 2, 0);
	trans[0][2314]	= settr(2313,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2315]	= settr(2314,0,2316,1335,0,"((input==27))", 1, 2, 0);
	trans[0][2316]	= settr(2315,0,18,1336,1336,"fsm_state = 25", 1, 2, 0);
	trans[0][2317]	= settr(2316,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2318]	= settr(2317,0,2319,1337,0,"((input==18))", 1, 2, 0);
	trans[0][2319]	= settr(2318,0,2320,1338,1338,"fsm_state = 17", 1, 2, 0);
	trans[0][2320]	= settr(2319,0,3555,1339,1339,"output = 8", 1, 2, 0);
	trans[0][2321]	= settr(2320,0,2322,1340,0,"((input==21))", 1, 2, 0);
	trans[0][2322]	= settr(2321,0,18,1341,1341,"fsm_state = 17", 1, 2, 0);
	trans[0][2323]	= settr(2322,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2324]	= settr(2323,0,2325,1342,0,"((input==16))", 1, 2, 0);
	trans[0][2325]	= settr(2324,0,2326,1343,1343,"fsm_state = 17", 1, 2, 0);
	trans[0][2326]	= settr(2325,0,3555,1344,1344,"output = 5", 1, 2, 0);
	trans[0][2327]	= settr(2326,0,2328,1345,0,"((input==28))", 1, 2, 0);
	trans[0][2328]	= settr(2327,0,18,1346,1346,"fsm_state = 17", 1, 2, 0);
	trans[0][2329]	= settr(2328,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2330]	= settr(2329,0,2331,1347,0,"((input==23))", 1, 2, 0);
	trans[0][2331]	= settr(2330,0,2332,1348,1348,"fsm_state = 17", 1, 2, 0);
	trans[0][2332]	= settr(2331,0,3555,1349,1349,"output = 8", 1, 2, 0);
	trans[0][2333]	= settr(2332,0,2334,1350,0,"((input==25))", 1, 2, 0);
	trans[0][2334]	= settr(2333,0,18,1351,1351,"fsm_state = 17", 1, 2, 0);
	trans[0][2335]	= settr(2334,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2336]	= settr(2335,0,2337,1352,0,"((input==26))", 1, 2, 0);
	trans[0][2337]	= settr(2336,0,18,1353,1353,"fsm_state = 14", 1, 2, 0);
	trans[0][2338]	= settr(2337,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2339]	= settr(2338,0,18,2,0,"else", 0, 2, 0);
	trans[0][2340]	= settr(2339,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2343]	= settr(2342,0,2477,1354,0,"((fsm_state==16))", 1, 2, 0);
	T = trans[0][2477] = settr(2476,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2476,0,2344,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2476,0,2347,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2476,0,2350,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2476,0,2353,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2476,0,2356,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2476,0,2359,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2476,0,2362,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2476,0,2365,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2476,0,2368,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2476,0,2371,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2476,0,2374,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2476,0,2377,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2476,0,2472,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2476,0,2475,0,0,"IF", 0, 2, 0);
	trans[0][2344]	= settr(2343,0,2345,1355,0,"((input==19))", 1, 2, 0);
	trans[0][2345]	= settr(2344,0,2346,1356,1356,"fsm_state = 48", 1, 2, 0);
	trans[0][2346]	= settr(2345,0,3555,1357,1357,"output = 10", 1, 2, 0);
	trans[0][2478]	= settr(2477,0,3555,1,0,".(goto)", 0, 2, 0);
	trans[0][2347]	= settr(2346,0,2348,1358,0,"((input==22))", 1, 2, 0);
	trans[0][2348]	= settr(2347,0,2349,1359,1359,"fsm_state = 48", 1, 2, 0);
	trans[0][2349]	= settr(2348,0,3555,1360,1360,"output = 10", 1, 2, 0);
	trans[0][2350]	= settr(2349,0,2351,1361,0,"((input==24))", 1, 2, 0);
	trans[0][2351]	= settr(2350,0,2352,1362,1362,"fsm_state = 48", 1, 2, 0);
	trans[0][2352]	= settr(2351,0,3555,1363,1363,"output = 10", 1, 2, 0);
	trans[0][2353]	= settr(2352,0,2354,1364,0,"((input==20))", 1, 2, 0);
	trans[0][2354]	= settr(2353,0,2355,1365,1365,"fsm_state = 48", 1, 2, 0);
	trans[0][2355]	= settr(2354,0,3555,1366,1366,"output = 10", 1, 2, 0);
	trans[0][2356]	= settr(2355,0,2357,1367,0,"((input==17))", 1, 2, 0);
	trans[0][2357]	= settr(2356,0,18,1368,1368,"fsm_state = 43", 1, 2, 0);
	trans[0][2358]	= settr(2357,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2359]	= settr(2358,0,2360,1369,0,"((input==27))", 1, 2, 0);
	trans[0][2360]	= settr(2359,0,2361,1370,1370,"fsm_state = 21", 1, 2, 0);
	trans[0][2361]	= settr(2360,0,3555,1371,1371,"output = 8", 1, 2, 0);
	trans[0][2362]	= settr(2361,0,2363,1372,0,"((input==18))", 1, 2, 0);
	trans[0][2363]	= settr(2362,0,18,1373,1373,"fsm_state = 16", 1, 2, 0);
	trans[0][2364]	= settr(2363,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2365]	= settr(2364,0,2366,1374,0,"((input==21))", 1, 2, 0);
	trans[0][2366]	= settr(2365,0,2367,1375,1375,"fsm_state = 16", 1, 2, 0);
	trans[0][2367]	= settr(2366,0,3555,1376,1376,"output = 8", 1, 2, 0);
	trans[0][2368]	= settr(2367,0,2369,1377,0,"((input==16))", 1, 2, 0);
	trans[0][2369]	= settr(2368,0,2370,1378,1378,"fsm_state = 16", 1, 2, 0);
	trans[0][2370]	= settr(2369,0,3555,1379,1379,"output = 5", 1, 2, 0);
	trans[0][2371]	= settr(2370,0,2372,1380,0,"((input==28))", 1, 2, 0);
	trans[0][2372]	= settr(2371,0,2373,1381,1381,"fsm_state = 16", 1, 2, 0);
	trans[0][2373]	= settr(2372,0,3555,1382,1382,"output = 8", 1, 2, 0);
	trans[0][2374]	= settr(2373,0,2375,1383,0,"((input==25))", 1, 2, 0);
	trans[0][2375]	= settr(2374,0,2376,1384,1384,"fsm_state = 16", 1, 2, 0);
	trans[0][2376]	= settr(2375,0,3555,1385,1385,"output = 8", 1, 2, 0);
	trans[0][2377]	= settr(2376,0,2378,1386,0,"((input==26))", 1, 2, 0);
	trans[0][2378]	= settr(2377,0,2379,1387,1387,"fsm_state = 15", 1, 2, 0);
	trans[0][2379]	= settr(2378,0,2380,1388,1388,"output = 3", 1, 2, 0);
	trans[0][2380]	= settr(2379,0,2423,1389,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2423] = settr(2422,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2422,0,2416,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2416]	= settr(2415,32,2421,1390,1390,"D_STEP13", 1, 2, 0);
	T = trans[0][2421] = settr(2420,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2420,0,2417,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2420,0,2419,0,0,"IF", 0, 2, 0);
	trans[0][2417]	= settr(2416,0,1,1391,0,"((dealt==0))", 1, 2, 0);
	trans[0][2418]	= settr(2417,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2422]	= settr(2421,0,2424,1,0,".(goto)", 0, 2, 0);
	trans[0][2419]	= settr(2418,0,2420,2,0,"else", 0, 2, 0);
	trans[0][2420]	= settr(2419,0,2424,1,0,"(1)", 0, 2, 0);
	trans[0][2424]	= settr(2423,0,2425,1392,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2425]	= settr(2424,0,2426,1393,1393,"output = 12", 1, 2, 0);
	trans[0][2426]	= settr(2425,0,2469,1394,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2469] = settr(2468,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2468,0,2462,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2462]	= settr(2461,32,2467,1395,1395,"D_STEP13", 1, 2, 0);
	T = trans[0][2467] = settr(2466,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2466,0,2463,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2466,0,2465,0,0,"IF", 0, 2, 0);
	trans[0][2463]	= settr(2462,0,1,1396,0,"((dealt==0))", 1, 2, 0);
	trans[0][2464]	= settr(2463,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2468]	= settr(2467,0,2470,1,0,".(goto)", 0, 2, 0);
	trans[0][2465]	= settr(2464,0,2466,2,0,"else", 0, 2, 0);
	trans[0][2466]	= settr(2465,0,2470,1,0,"(1)", 0, 2, 0);
	trans[0][2470]	= settr(2469,0,2471,1397,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2471]	= settr(2470,0,3555,1398,1398,"output = 11", 1, 2, 0);
	trans[0][2472]	= settr(2471,0,2473,1399,0,"((input==23))", 1, 2, 0);
	trans[0][2473]	= settr(2472,0,18,1400,1400,"fsm_state = 14", 1, 2, 0);
	trans[0][2474]	= settr(2473,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2475]	= settr(2474,0,18,2,0,"else", 0, 2, 0);
	trans[0][2476]	= settr(2475,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2479]	= settr(2478,0,2521,1401,0,"((fsm_state==15))", 1, 2, 0);
	T = trans[0][2521] = settr(2520,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2520,0,2480,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2520,0,2483,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2520,0,2486,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2520,0,2489,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2520,0,2492,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2520,0,2495,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2520,0,2498,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2520,0,2501,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2520,0,2504,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2520,0,2507,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2520,0,2510,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2520,0,2513,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2520,0,2516,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2520,0,2519,0,0,"IF", 0, 2, 0);
	trans[0][2480]	= settr(2479,0,2481,1402,0,"((input==26))", 1, 2, 0);
	trans[0][2481]	= settr(2480,0,2482,1403,1403,"fsm_state = 48", 1, 2, 0);
	trans[0][2482]	= settr(2481,0,3555,1404,1404,"output = 10", 1, 2, 0);
	trans[0][2522]	= settr(2521,0,3555,1,0,".(goto)", 0, 2, 0);
	trans[0][2483]	= settr(2482,0,2484,1405,0,"((input==19))", 1, 2, 0);
	trans[0][2484]	= settr(2483,0,2485,1406,1406,"fsm_state = 48", 1, 2, 0);
	trans[0][2485]	= settr(2484,0,3555,1407,1407,"output = 10", 1, 2, 0);
	trans[0][2486]	= settr(2485,0,2487,1408,0,"((input==22))", 1, 2, 0);
	trans[0][2487]	= settr(2486,0,2488,1409,1409,"fsm_state = 48", 1, 2, 0);
	trans[0][2488]	= settr(2487,0,3555,1410,1410,"output = 10", 1, 2, 0);
	trans[0][2489]	= settr(2488,0,2490,1411,0,"((input==24))", 1, 2, 0);
	trans[0][2490]	= settr(2489,0,2491,1412,1412,"fsm_state = 48", 1, 2, 0);
	trans[0][2491]	= settr(2490,0,3555,1413,1413,"output = 10", 1, 2, 0);
	trans[0][2492]	= settr(2491,0,2493,1414,0,"((input==20))", 1, 2, 0);
	trans[0][2493]	= settr(2492,0,2494,1415,1415,"fsm_state = 48", 1, 2, 0);
	trans[0][2494]	= settr(2493,0,3555,1416,1416,"output = 10", 1, 2, 0);
	trans[0][2495]	= settr(2494,0,2496,1417,0,"((input==17))", 1, 2, 0);
	trans[0][2496]	= settr(2495,0,18,1418,1418,"fsm_state = 36", 1, 2, 0);
	trans[0][2497]	= settr(2496,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2498]	= settr(2497,0,2499,1419,0,"((input==27))", 1, 2, 0);
	trans[0][2499]	= settr(2498,0,2500,1420,1420,"fsm_state = 19", 1, 2, 0);
	trans[0][2500]	= settr(2499,0,3555,1421,1421,"output = 8", 1, 2, 0);
	trans[0][2501]	= settr(2500,0,2502,1422,0,"((input==18))", 1, 2, 0);
	trans[0][2502]	= settr(2501,0,2503,1423,1423,"fsm_state = 15", 1, 2, 0);
	trans[0][2503]	= settr(2502,0,3555,1424,1424,"output = 1", 1, 2, 0);
	trans[0][2504]	= settr(2503,0,2505,1425,0,"((input==21))", 1, 2, 0);
	trans[0][2505]	= settr(2504,0,2506,1426,1426,"fsm_state = 15", 1, 2, 0);
	trans[0][2506]	= settr(2505,0,3555,1427,1427,"output = 8", 1, 2, 0);
	trans[0][2507]	= settr(2506,0,2508,1428,0,"((input==16))", 1, 2, 0);
	trans[0][2508]	= settr(2507,0,2509,1429,1429,"fsm_state = 15", 1, 2, 0);
	trans[0][2509]	= settr(2508,0,3555,1430,1430,"output = 5", 1, 2, 0);
	trans[0][2510]	= settr(2509,0,2511,1431,0,"((input==28))", 1, 2, 0);
	trans[0][2511]	= settr(2510,0,2512,1432,1432,"fsm_state = 15", 1, 2, 0);
	trans[0][2512]	= settr(2511,0,3555,1433,1433,"output = 8", 1, 2, 0);
	trans[0][2513]	= settr(2512,0,2514,1434,0,"((input==25))", 1, 2, 0);
	trans[0][2514]	= settr(2513,0,2515,1435,1435,"fsm_state = 15", 1, 2, 0);
	trans[0][2515]	= settr(2514,0,3555,1436,1436,"output = 8", 1, 2, 0);
	trans[0][2516]	= settr(2515,0,2517,1437,0,"((input==23))", 1, 2, 0);
	trans[0][2517]	= settr(2516,0,2518,1438,1438,"fsm_state = 5", 1, 2, 0);
	trans[0][2518]	= settr(2517,0,3555,1439,1439,"output = 6", 1, 2, 0);
	trans[0][2519]	= settr(2518,0,18,2,0,"else", 0, 2, 0);
	trans[0][2520]	= settr(2519,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2523]	= settr(2522,0,2657,1440,0,"((fsm_state==14))", 1, 2, 0);
	T = trans[0][2657] = settr(2656,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2656,0,2524,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2656,0,2527,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2656,0,2530,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2656,0,2533,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2656,0,2536,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2656,0,2539,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2656,0,2542,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2656,0,2545,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2656,0,2548,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2656,0,2551,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2656,0,2554,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2656,0,2557,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2656,0,2560,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2656,0,2655,0,0,"IF", 0, 2, 0);
	trans[0][2524]	= settr(2523,0,2525,1441,0,"((input==19))", 1, 2, 0);
	trans[0][2525]	= settr(2524,0,2526,1442,1442,"fsm_state = 48", 1, 2, 0);
	trans[0][2526]	= settr(2525,0,3555,1443,1443,"output = 10", 1, 2, 0);
	trans[0][2658]	= settr(2657,0,3555,1,0,".(goto)", 0, 2, 0);
	trans[0][2527]	= settr(2526,0,2528,1444,0,"((input==22))", 1, 2, 0);
	trans[0][2528]	= settr(2527,0,2529,1445,1445,"fsm_state = 48", 1, 2, 0);
	trans[0][2529]	= settr(2528,0,3555,1446,1446,"output = 10", 1, 2, 0);
	trans[0][2530]	= settr(2529,0,2531,1447,0,"((input==24))", 1, 2, 0);
	trans[0][2531]	= settr(2530,0,2532,1448,1448,"fsm_state = 48", 1, 2, 0);
	trans[0][2532]	= settr(2531,0,3555,1449,1449,"output = 10", 1, 2, 0);
	trans[0][2533]	= settr(2532,0,2534,1450,0,"((input==20))", 1, 2, 0);
	trans[0][2534]	= settr(2533,0,2535,1451,1451,"fsm_state = 48", 1, 2, 0);
	trans[0][2535]	= settr(2534,0,3555,1452,1452,"output = 10", 1, 2, 0);
	trans[0][2536]	= settr(2535,0,2537,1453,0,"((input==17))", 1, 2, 0);
	trans[0][2537]	= settr(2536,0,18,1454,1454,"fsm_state = 43", 1, 2, 0);
	trans[0][2538]	= settr(2537,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2539]	= settr(2538,0,2540,1455,0,"((input==27))", 1, 2, 0);
	trans[0][2540]	= settr(2539,0,18,1456,1456,"fsm_state = 20", 1, 2, 0);
	trans[0][2541]	= settr(2540,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2542]	= settr(2541,0,2543,1457,0,"((input==18))", 1, 2, 0);
	trans[0][2543]	= settr(2542,0,2544,1458,1458,"fsm_state = 14", 1, 2, 0);
	trans[0][2544]	= settr(2543,0,3555,1459,1459,"output = 8", 1, 2, 0);
	trans[0][2545]	= settr(2544,0,2546,1460,0,"((input==21))", 1, 2, 0);
	trans[0][2546]	= settr(2545,0,18,1461,1461,"fsm_state = 14", 1, 2, 0);
	trans[0][2547]	= settr(2546,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2548]	= settr(2547,0,2549,1462,0,"((input==16))", 1, 2, 0);
	trans[0][2549]	= settr(2548,0,2550,1463,1463,"fsm_state = 14", 1, 2, 0);
	trans[0][2550]	= settr(2549,0,3555,1464,1464,"output = 5", 1, 2, 0);
	trans[0][2551]	= settr(2550,0,2552,1465,0,"((input==28))", 1, 2, 0);
	trans[0][2552]	= settr(2551,0,18,1466,1466,"fsm_state = 14", 1, 2, 0);
	trans[0][2553]	= settr(2552,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2554]	= settr(2553,0,2555,1467,0,"((input==23))", 1, 2, 0);
	trans[0][2555]	= settr(2554,0,2556,1468,1468,"fsm_state = 14", 1, 2, 0);
	trans[0][2556]	= settr(2555,0,3555,1469,1469,"output = 8", 1, 2, 0);
	trans[0][2557]	= settr(2556,0,2558,1470,0,"((input==25))", 1, 2, 0);
	trans[0][2558]	= settr(2557,0,18,1471,1471,"fsm_state = 14", 1, 2, 0);
	trans[0][2559]	= settr(2558,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2560]	= settr(2559,0,2561,1472,0,"((input==26))", 1, 2, 0);
	trans[0][2561]	= settr(2560,0,2562,1473,1473,"fsm_state = 5", 1, 2, 0);
	trans[0][2562]	= settr(2561,0,2563,1474,1474,"output = 3", 1, 2, 0);
	trans[0][2563]	= settr(2562,0,2606,1475,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2606] = settr(2605,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2605,0,2599,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2599]	= settr(2598,32,2604,1476,1476,"D_STEP13", 1, 2, 0);
	T = trans[0][2604] = settr(2603,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2603,0,2600,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2603,0,2602,0,0,"IF", 0, 2, 0);
	trans[0][2600]	= settr(2599,0,1,1477,0,"((dealt==0))", 1, 2, 0);
	trans[0][2601]	= settr(2600,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2605]	= settr(2604,0,2607,1,0,".(goto)", 0, 2, 0);
	trans[0][2602]	= settr(2601,0,2603,2,0,"else", 0, 2, 0);
	trans[0][2603]	= settr(2602,0,2607,1,0,"(1)", 0, 2, 0);
	trans[0][2607]	= settr(2606,0,2608,1478,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2608]	= settr(2607,0,2609,1479,1479,"output = 12", 1, 2, 0);
	trans[0][2609]	= settr(2608,0,2652,1480,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2652] = settr(2651,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2651,0,2645,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2645]	= settr(2644,32,2650,1481,1481,"D_STEP13", 1, 2, 0);
	T = trans[0][2650] = settr(2649,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2649,0,2646,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2649,0,2648,0,0,"IF", 0, 2, 0);
	trans[0][2646]	= settr(2645,0,1,1482,0,"((dealt==0))", 1, 2, 0);
	trans[0][2647]	= settr(2646,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2651]	= settr(2650,0,2653,1,0,".(goto)", 0, 2, 0);
	trans[0][2648]	= settr(2647,0,2649,2,0,"else", 0, 2, 0);
	trans[0][2649]	= settr(2648,0,2653,1,0,"(1)", 0, 2, 0);
	trans[0][2653]	= settr(2652,0,2654,1483,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2654]	= settr(2653,0,3555,1484,1484,"output = 11", 1, 2, 0);
	trans[0][2655]	= settr(2654,0,18,2,0,"else", 0, 2, 0);
	trans[0][2656]	= settr(2655,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2659]	= settr(2658,0,2747,1485,0,"((fsm_state==13))", 1, 2, 0);
	T = trans[0][2747] = settr(2746,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2746,0,2660,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2746,0,2663,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2746,0,2666,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2746,0,2669,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2746,0,2672,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2746,0,2675,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2746,0,2678,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2746,0,2681,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2746,0,2684,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2746,0,2687,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2746,0,2690,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2746,0,2693,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2746,0,2696,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2746,0,2745,0,0,"IF", 0, 2, 0);
	trans[0][2660]	= settr(2659,0,2661,1486,0,"((input==19))", 1, 2, 0);
	trans[0][2661]	= settr(2660,0,2662,1487,1487,"fsm_state = 48", 1, 2, 0);
	trans[0][2662]	= settr(2661,0,3555,1488,1488,"output = 10", 1, 2, 0);
	trans[0][2748]	= settr(2747,0,3555,1,0,".(goto)", 0, 2, 0);
	trans[0][2663]	= settr(2662,0,2664,1489,0,"((input==22))", 1, 2, 0);
	trans[0][2664]	= settr(2663,0,2665,1490,1490,"fsm_state = 48", 1, 2, 0);
	trans[0][2665]	= settr(2664,0,3555,1491,1491,"output = 10", 1, 2, 0);
	trans[0][2666]	= settr(2665,0,2667,1492,0,"((input==24))", 1, 2, 0);
	trans[0][2667]	= settr(2666,0,2668,1493,1493,"fsm_state = 48", 1, 2, 0);
	trans[0][2668]	= settr(2667,0,3555,1494,1494,"output = 10", 1, 2, 0);
	trans[0][2669]	= settr(2668,0,2670,1495,0,"((input==20))", 1, 2, 0);
	trans[0][2670]	= settr(2669,0,2671,1496,1496,"fsm_state = 48", 1, 2, 0);
	trans[0][2671]	= settr(2670,0,3555,1497,1497,"output = 10", 1, 2, 0);
	trans[0][2672]	= settr(2671,0,2673,1498,0,"((input==17))", 1, 2, 0);
	trans[0][2673]	= settr(2672,0,18,1499,1499,"fsm_state = 43", 1, 2, 0);
	trans[0][2674]	= settr(2673,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2675]	= settr(2674,0,2676,1500,0,"((input==27))", 1, 2, 0);
	trans[0][2676]	= settr(2675,0,18,1501,1501,"fsm_state = 24", 1, 2, 0);
	trans[0][2677]	= settr(2676,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2678]	= settr(2677,0,2679,1502,0,"((input==18))", 1, 2, 0);
	trans[0][2679]	= settr(2678,0,2680,1503,1503,"fsm_state = 13", 1, 2, 0);
	trans[0][2680]	= settr(2679,0,3555,1504,1504,"output = 8", 1, 2, 0);
	trans[0][2681]	= settr(2680,0,2682,1505,0,"((input==21))", 1, 2, 0);
	trans[0][2682]	= settr(2681,0,18,1506,1506,"fsm_state = 13", 1, 2, 0);
	trans[0][2683]	= settr(2682,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2684]	= settr(2683,0,2685,1507,0,"((input==16))", 1, 2, 0);
	trans[0][2685]	= settr(2684,0,2686,1508,1508,"fsm_state = 13", 1, 2, 0);
	trans[0][2686]	= settr(2685,0,3555,1509,1509,"output = 5", 1, 2, 0);
	trans[0][2687]	= settr(2686,0,2688,1510,0,"((input==28))", 1, 2, 0);
	trans[0][2688]	= settr(2687,0,18,1511,1511,"fsm_state = 13", 1, 2, 0);
	trans[0][2689]	= settr(2688,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2690]	= settr(2689,0,2691,1512,0,"((input==23))", 1, 2, 0);
	trans[0][2691]	= settr(2690,0,2692,1513,1513,"fsm_state = 13", 1, 2, 0);
	trans[0][2692]	= settr(2691,0,3555,1514,1514,"output = 8", 1, 2, 0);
	trans[0][2693]	= settr(2692,0,2694,1515,0,"((input==25))", 1, 2, 0);
	trans[0][2694]	= settr(2693,0,18,1516,1516,"fsm_state = 13", 1, 2, 0);
	trans[0][2695]	= settr(2694,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2696]	= settr(2695,0,2697,1517,0,"((input==26))", 1, 2, 0);
	trans[0][2697]	= settr(2696,0,2698,1518,1518,"fsm_state = 5", 1, 2, 0);
	trans[0][2698]	= settr(2697,0,2699,1519,1519,"output = 3", 1, 2, 0);
	trans[0][2699]	= settr(2698,0,2742,1520,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2742] = settr(2741,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2741,0,2735,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2735]	= settr(2734,32,2740,1521,1521,"D_STEP13", 1, 2, 0);
	T = trans[0][2740] = settr(2739,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2739,0,2736,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2739,0,2738,0,0,"IF", 0, 2, 0);
	trans[0][2736]	= settr(2735,0,1,1522,0,"((dealt==0))", 1, 2, 0);
	trans[0][2737]	= settr(2736,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2741]	= settr(2740,0,2743,1,0,".(goto)", 0, 2, 0);
	trans[0][2738]	= settr(2737,0,2739,2,0,"else", 0, 2, 0);
	trans[0][2739]	= settr(2738,0,2743,1,0,"(1)", 0, 2, 0);
	trans[0][2743]	= settr(2742,0,2744,1523,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2744]	= settr(2743,0,3555,1524,1524,"output = 12", 1, 2, 0);
	trans[0][2745]	= settr(2744,0,18,2,0,"else", 0, 2, 0);
	trans[0][2746]	= settr(2745,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2749]	= settr(2748,0,2791,1525,0,"((fsm_state==12))", 1, 2, 0);
	T = trans[0][2791] = settr(2790,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2790,0,2750,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2790,0,2753,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2790,0,2756,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2790,0,2759,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2790,0,2762,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2790,0,2765,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2790,0,2768,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2790,0,2771,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2790,0,2774,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2790,0,2777,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2790,0,2780,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2790,0,2783,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2790,0,2786,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2790,0,2789,0,0,"IF", 0, 2, 0);
	trans[0][2750]	= settr(2749,0,2751,1526,0,"((input==19))", 1, 2, 0);
	trans[0][2751]	= settr(2750,0,2752,1527,1527,"fsm_state = 48", 1, 2, 0);
	trans[0][2752]	= settr(2751,0,3555,1528,1528,"output = 10", 1, 2, 0);
	trans[0][2792]	= settr(2791,0,3555,1,0,".(goto)", 0, 2, 0);
	trans[0][2753]	= settr(2752,0,2754,1529,0,"((input==22))", 1, 2, 0);
	trans[0][2754]	= settr(2753,0,2755,1530,1530,"fsm_state = 48", 1, 2, 0);
	trans[0][2755]	= settr(2754,0,3555,1531,1531,"output = 10", 1, 2, 0);
	trans[0][2756]	= settr(2755,0,2757,1532,0,"((input==24))", 1, 2, 0);
	trans[0][2757]	= settr(2756,0,2758,1533,1533,"fsm_state = 48", 1, 2, 0);
	trans[0][2758]	= settr(2757,0,3555,1534,1534,"output = 10", 1, 2, 0);
	trans[0][2759]	= settr(2758,0,2760,1535,0,"((input==20))", 1, 2, 0);
	trans[0][2760]	= settr(2759,0,2761,1536,1536,"fsm_state = 48", 1, 2, 0);
	trans[0][2761]	= settr(2760,0,3555,1537,1537,"output = 10", 1, 2, 0);
	trans[0][2762]	= settr(2761,0,2763,1538,0,"((input==17))", 1, 2, 0);
	trans[0][2763]	= settr(2762,0,18,1539,1539,"fsm_state = 43", 1, 2, 0);
	trans[0][2764]	= settr(2763,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2765]	= settr(2764,0,2766,1540,0,"((input==27))", 1, 2, 0);
	trans[0][2766]	= settr(2765,0,18,1541,1541,"fsm_state = 22", 1, 2, 0);
	trans[0][2767]	= settr(2766,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2768]	= settr(2767,0,2769,1542,0,"((input==26))", 1, 2, 0);
	trans[0][2769]	= settr(2768,0,18,1543,1543,"fsm_state = 13", 1, 2, 0);
	trans[0][2770]	= settr(2769,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2771]	= settr(2770,0,2772,1544,0,"((input==18))", 1, 2, 0);
	trans[0][2772]	= settr(2771,0,2773,1545,1545,"fsm_state = 12", 1, 2, 0);
	trans[0][2773]	= settr(2772,0,3555,1546,1546,"output = 8", 1, 2, 0);
	trans[0][2774]	= settr(2773,0,2775,1547,0,"((input==21))", 1, 2, 0);
	trans[0][2775]	= settr(2774,0,18,1548,1548,"fsm_state = 12", 1, 2, 0);
	trans[0][2776]	= settr(2775,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2777]	= settr(2776,0,2778,1549,0,"((input==16))", 1, 2, 0);
	trans[0][2778]	= settr(2777,0,2779,1550,1550,"fsm_state = 12", 1, 2, 0);
	trans[0][2779]	= settr(2778,0,3555,1551,1551,"output = 5", 1, 2, 0);
	trans[0][2780]	= settr(2779,0,2781,1552,0,"((input==28))", 1, 2, 0);
	trans[0][2781]	= settr(2780,0,18,1553,1553,"fsm_state = 12", 1, 2, 0);
	trans[0][2782]	= settr(2781,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2783]	= settr(2782,0,2784,1554,0,"((input==23))", 1, 2, 0);
	trans[0][2784]	= settr(2783,0,2785,1555,1555,"fsm_state = 12", 1, 2, 0);
	trans[0][2785]	= settr(2784,0,3555,1556,1556,"output = 8", 1, 2, 0);
	trans[0][2786]	= settr(2785,0,2787,1557,0,"((input==25))", 1, 2, 0);
	trans[0][2787]	= settr(2786,0,18,1558,1558,"fsm_state = 12", 1, 2, 0);
	trans[0][2788]	= settr(2787,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2789]	= settr(2788,0,18,2,0,"else", 0, 2, 0);
	trans[0][2790]	= settr(2789,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2793]	= settr(2792,0,2835,1559,0,"((fsm_state==11))", 1, 2, 0);
	T = trans[0][2835] = settr(2834,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2834,0,2794,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2834,0,2797,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2834,0,2800,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2834,0,2803,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2834,0,2806,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2834,0,2809,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2834,0,2812,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2834,0,2815,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2834,0,2818,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2834,0,2821,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2834,0,2824,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2834,0,2827,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2834,0,2830,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2834,0,2833,0,0,"IF", 0, 2, 0);
	trans[0][2794]	= settr(2793,0,2795,1560,0,"((input==19))", 1, 2, 0);
	trans[0][2795]	= settr(2794,0,2796,1561,1561,"fsm_state = 48", 1, 2, 0);
	trans[0][2796]	= settr(2795,0,3555,1562,1562,"output = 10", 1, 2, 0);
	trans[0][2836]	= settr(2835,0,3555,1,0,".(goto)", 0, 2, 0);
	trans[0][2797]	= settr(2796,0,2798,1563,0,"((input==22))", 1, 2, 0);
	trans[0][2798]	= settr(2797,0,2799,1564,1564,"fsm_state = 48", 1, 2, 0);
	trans[0][2799]	= settr(2798,0,3555,1565,1565,"output = 10", 1, 2, 0);
	trans[0][2800]	= settr(2799,0,2801,1566,0,"((input==24))", 1, 2, 0);
	trans[0][2801]	= settr(2800,0,2802,1567,1567,"fsm_state = 48", 1, 2, 0);
	trans[0][2802]	= settr(2801,0,3555,1568,1568,"output = 10", 1, 2, 0);
	trans[0][2803]	= settr(2802,0,2804,1569,0,"((input==20))", 1, 2, 0);
	trans[0][2804]	= settr(2803,0,2805,1570,1570,"fsm_state = 48", 1, 2, 0);
	trans[0][2805]	= settr(2804,0,3555,1571,1571,"output = 10", 1, 2, 0);
	trans[0][2806]	= settr(2805,0,2807,1572,0,"((input==17))", 1, 2, 0);
	trans[0][2807]	= settr(2806,0,18,1573,1573,"fsm_state = 43", 1, 2, 0);
	trans[0][2808]	= settr(2807,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2809]	= settr(2808,0,2810,1574,0,"((input==27))", 1, 2, 0);
	trans[0][2810]	= settr(2809,0,18,1575,1575,"fsm_state = 25", 1, 2, 0);
	trans[0][2811]	= settr(2810,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2812]	= settr(2811,0,2813,1576,0,"((input==25))", 1, 2, 0);
	trans[0][2813]	= settr(2812,0,18,1577,1577,"fsm_state = 17", 1, 2, 0);
	trans[0][2814]	= settr(2813,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2815]	= settr(2814,0,2816,1578,0,"((input==18))", 1, 2, 0);
	trans[0][2816]	= settr(2815,0,2817,1579,1579,"fsm_state = 11", 1, 2, 0);
	trans[0][2817]	= settr(2816,0,3555,1580,1580,"output = 8", 1, 2, 0);
	trans[0][2818]	= settr(2817,0,2819,1581,0,"((input==21))", 1, 2, 0);
	trans[0][2819]	= settr(2818,0,18,1582,1582,"fsm_state = 11", 1, 2, 0);
	trans[0][2820]	= settr(2819,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2821]	= settr(2820,0,2822,1583,0,"((input==16))", 1, 2, 0);
	trans[0][2822]	= settr(2821,0,2823,1584,1584,"fsm_state = 11", 1, 2, 0);
	trans[0][2823]	= settr(2822,0,3555,1585,1585,"output = 5", 1, 2, 0);
	trans[0][2824]	= settr(2823,0,2825,1586,0,"((input==28))", 1, 2, 0);
	trans[0][2825]	= settr(2824,0,18,1587,1587,"fsm_state = 11", 1, 2, 0);
	trans[0][2826]	= settr(2825,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2827]	= settr(2826,0,2828,1588,0,"((input==23))", 1, 2, 0);
	trans[0][2828]	= settr(2827,0,2829,1589,1589,"fsm_state = 11", 1, 2, 0);
	trans[0][2829]	= settr(2828,0,3555,1590,1590,"output = 8", 1, 2, 0);
	trans[0][2830]	= settr(2829,0,2831,1591,0,"((input==26))", 1, 2, 0);
	trans[0][2831]	= settr(2830,0,18,1592,1592,"fsm_state = 10", 1, 2, 0);
	trans[0][2832]	= settr(2831,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2833]	= settr(2832,0,18,2,0,"else", 0, 2, 0);
	trans[0][2834]	= settr(2833,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2837]	= settr(2836,0,2971,1593,0,"((fsm_state==10))", 1, 2, 0);
	T = trans[0][2971] = settr(2970,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2970,0,2838,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2970,0,2841,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2970,0,2844,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2970,0,2847,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2970,0,2850,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2970,0,2853,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2970,0,2856,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2970,0,2859,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2970,0,2862,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2970,0,2865,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2970,0,2868,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2970,0,2871,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2970,0,2874,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2970,0,2969,0,0,"IF", 0, 2, 0);
	trans[0][2838]	= settr(2837,0,2839,1594,0,"((input==19))", 1, 2, 0);
	trans[0][2839]	= settr(2838,0,2840,1595,1595,"fsm_state = 48", 1, 2, 0);
	trans[0][2840]	= settr(2839,0,3555,1596,1596,"output = 10", 1, 2, 0);
	trans[0][2972]	= settr(2971,0,3555,1,0,".(goto)", 0, 2, 0);
	trans[0][2841]	= settr(2840,0,2842,1597,0,"((input==22))", 1, 2, 0);
	trans[0][2842]	= settr(2841,0,2843,1598,1598,"fsm_state = 48", 1, 2, 0);
	trans[0][2843]	= settr(2842,0,3555,1599,1599,"output = 10", 1, 2, 0);
	trans[0][2844]	= settr(2843,0,2845,1600,0,"((input==24))", 1, 2, 0);
	trans[0][2845]	= settr(2844,0,2846,1601,1601,"fsm_state = 48", 1, 2, 0);
	trans[0][2846]	= settr(2845,0,3555,1602,1602,"output = 10", 1, 2, 0);
	trans[0][2847]	= settr(2846,0,2848,1603,0,"((input==20))", 1, 2, 0);
	trans[0][2848]	= settr(2847,0,2849,1604,1604,"fsm_state = 48", 1, 2, 0);
	trans[0][2849]	= settr(2848,0,3555,1605,1605,"output = 10", 1, 2, 0);
	trans[0][2850]	= settr(2849,0,2851,1606,0,"((input==17))", 1, 2, 0);
	trans[0][2851]	= settr(2850,0,18,1607,1607,"fsm_state = 43", 1, 2, 0);
	trans[0][2852]	= settr(2851,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2853]	= settr(2852,0,2854,1608,0,"((input==27))", 1, 2, 0);
	trans[0][2854]	= settr(2853,0,18,1609,1609,"fsm_state = 20", 1, 2, 0);
	trans[0][2855]	= settr(2854,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2856]	= settr(2855,0,2857,1610,0,"((input==25))", 1, 2, 0);
	trans[0][2857]	= settr(2856,0,18,1611,1611,"fsm_state = 14", 1, 2, 0);
	trans[0][2858]	= settr(2857,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2859]	= settr(2858,0,2860,1612,0,"((input==18))", 1, 2, 0);
	trans[0][2860]	= settr(2859,0,2861,1613,1613,"fsm_state = 10", 1, 2, 0);
	trans[0][2861]	= settr(2860,0,3555,1614,1614,"output = 8", 1, 2, 0);
	trans[0][2862]	= settr(2861,0,2863,1615,0,"((input==21))", 1, 2, 0);
	trans[0][2863]	= settr(2862,0,18,1616,1616,"fsm_state = 10", 1, 2, 0);
	trans[0][2864]	= settr(2863,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2865]	= settr(2864,0,2866,1617,0,"((input==16))", 1, 2, 0);
	trans[0][2866]	= settr(2865,0,2867,1618,1618,"fsm_state = 10", 1, 2, 0);
	trans[0][2867]	= settr(2866,0,3555,1619,1619,"output = 5", 1, 2, 0);
	trans[0][2868]	= settr(2867,0,2869,1620,0,"((input==23))", 1, 2, 0);
	trans[0][2869]	= settr(2868,0,2870,1621,1621,"fsm_state = 10", 1, 2, 0);
	trans[0][2870]	= settr(2869,0,3555,1622,1622,"output = 8", 1, 2, 0);
	trans[0][2871]	= settr(2870,0,2872,1623,0,"((input==28))", 1, 2, 0);
	trans[0][2872]	= settr(2871,0,18,1624,1624,"fsm_state = 4", 1, 2, 0);
	trans[0][2873]	= settr(2872,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2874]	= settr(2873,0,2875,1625,0,"((input==26))", 1, 2, 0);
	trans[0][2875]	= settr(2874,0,2876,1626,1626,"fsm_state = 3", 1, 2, 0);
	trans[0][2876]	= settr(2875,0,2877,1627,1627,"output = 3", 1, 2, 0);
	trans[0][2877]	= settr(2876,0,2920,1628,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2920] = settr(2919,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2919,0,2913,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2913]	= settr(2912,32,2918,1629,1629,"D_STEP13", 1, 2, 0);
	T = trans[0][2918] = settr(2917,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2917,0,2914,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2917,0,2916,0,0,"IF", 0, 2, 0);
	trans[0][2914]	= settr(2913,0,1,1630,0,"((dealt==0))", 1, 2, 0);
	trans[0][2915]	= settr(2914,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2919]	= settr(2918,0,2921,1,0,".(goto)", 0, 2, 0);
	trans[0][2916]	= settr(2915,0,2917,2,0,"else", 0, 2, 0);
	trans[0][2917]	= settr(2916,0,2921,1,0,"(1)", 0, 2, 0);
	trans[0][2921]	= settr(2920,0,2922,1631,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2922]	= settr(2921,0,2923,1632,1632,"output = 12", 1, 2, 0);
	trans[0][2923]	= settr(2922,0,2966,1633,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2966] = settr(2965,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2965,0,2959,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2959]	= settr(2958,32,2964,1634,1634,"D_STEP13", 1, 2, 0);
	T = trans[0][2964] = settr(2963,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2963,0,2960,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2963,0,2962,0,0,"IF", 0, 2, 0);
	trans[0][2960]	= settr(2959,0,1,1635,0,"((dealt==0))", 1, 2, 0);
	trans[0][2961]	= settr(2960,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2965]	= settr(2964,0,2967,1,0,".(goto)", 0, 2, 0);
	trans[0][2962]	= settr(2961,0,2963,2,0,"else", 0, 2, 0);
	trans[0][2963]	= settr(2962,0,2967,1,0,"(1)", 0, 2, 0);
	trans[0][2967]	= settr(2966,0,2968,1636,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2968]	= settr(2967,0,3555,1637,1637,"output = 11", 1, 2, 0);
	trans[0][2969]	= settr(2968,0,18,2,0,"else", 0, 2, 0);
	trans[0][2970]	= settr(2969,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2973]	= settr(2972,0,3015,1638,0,"((fsm_state==9))", 1, 2, 0);
	T = trans[0][3015] = settr(3014,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3014,0,2974,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3014,0,2977,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3014,0,2980,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3014,0,2983,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3014,0,2986,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3014,0,2989,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3014,0,2992,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3014,0,2995,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3014,0,2998,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3014,0,3001,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3014,0,3004,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3014,0,3007,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3014,0,3010,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3014,0,3013,0,0,"IF", 0, 2, 0);
	trans[0][2974]	= settr(2973,0,2975,1639,0,"((input==26))", 1, 2, 0);
	trans[0][2975]	= settr(2974,0,2976,1640,1640,"fsm_state = 47", 1, 2, 0);
	trans[0][2976]	= settr(2975,0,3555,1641,1641,"output = 10", 1, 2, 0);
	trans[0][3016]	= settr(3015,0,3555,1,0,".(goto)", 0, 2, 0);
	trans[0][2977]	= settr(2976,0,2978,1642,0,"((input==19))", 1, 2, 0);
	trans[0][2978]	= settr(2977,0,2979,1643,1643,"fsm_state = 47", 1, 2, 0);
	trans[0][2979]	= settr(2978,0,3555,1644,1644,"output = 10", 1, 2, 0);
	trans[0][2980]	= settr(2979,0,2981,1645,0,"((input==22))", 1, 2, 0);
	trans[0][2981]	= settr(2980,0,2982,1646,1646,"fsm_state = 47", 1, 2, 0);
	trans[0][2982]	= settr(2981,0,3555,1647,1647,"output = 10", 1, 2, 0);
	trans[0][2983]	= settr(2982,0,2984,1648,0,"((input==24))", 1, 2, 0);
	trans[0][2984]	= settr(2983,0,2985,1649,1649,"fsm_state = 47", 1, 2, 0);
	trans[0][2985]	= settr(2984,0,3555,1650,1650,"output = 10", 1, 2, 0);
	trans[0][2986]	= settr(2985,0,2987,1651,0,"((input==20))", 1, 2, 0);
	trans[0][2987]	= settr(2986,0,2988,1652,1652,"fsm_state = 47", 1, 2, 0);
	trans[0][2988]	= settr(2987,0,3555,1653,1653,"output = 10", 1, 2, 0);
	trans[0][2989]	= settr(2988,0,2990,1654,0,"((input==17))", 1, 2, 0);
	trans[0][2990]	= settr(2989,0,18,1655,1655,"fsm_state = 32", 1, 2, 0);
	trans[0][2991]	= settr(2990,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2992]	= settr(2991,0,2993,1656,0,"((input==18))", 1, 2, 0);
	trans[0][2993]	= settr(2992,0,2994,1657,1657,"fsm_state = 9", 1, 2, 0);
	trans[0][2994]	= settr(2993,0,3555,1658,1658,"output = 8", 1, 2, 0);
	trans[0][2995]	= settr(2994,0,2996,1659,0,"((input==21))", 1, 2, 0);
	trans[0][2996]	= settr(2995,0,2997,1660,1660,"fsm_state = 9", 1, 2, 0);
	trans[0][2997]	= settr(2996,0,3555,1661,1661,"output = 15", 1, 2, 0);
	trans[0][2998]	= settr(2997,0,2999,1662,0,"((input==28))", 1, 2, 0);
	trans[0][2999]	= settr(2998,0,3000,1663,1663,"fsm_state = 9", 1, 2, 0);
	trans[0][3000]	= settr(2999,0,3555,1664,1664,"output = 15", 1, 2, 0);
	trans[0][3001]	= settr(3000,0,3002,1665,0,"((input==23))", 1, 2, 0);
	trans[0][3002]	= settr(3001,0,3003,1666,1666,"fsm_state = 9", 1, 2, 0);
	trans[0][3003]	= settr(3002,0,3555,1667,1667,"output = 8", 1, 2, 0);
	trans[0][3004]	= settr(3003,0,3005,1668,0,"((input==27))", 1, 2, 0);
	trans[0][3005]	= settr(3004,0,3006,1669,1669,"fsm_state = 9", 1, 2, 0);
	trans[0][3006]	= settr(3005,0,3555,1670,1670,"output = 15", 1, 2, 0);
	trans[0][3007]	= settr(3006,0,3008,1671,0,"((input==25))", 1, 2, 0);
	trans[0][3008]	= settr(3007,0,3009,1672,1672,"fsm_state = 9", 1, 2, 0);
	trans[0][3009]	= settr(3008,0,3555,1673,1673,"output = 15", 1, 2, 0);
	trans[0][3010]	= settr(3009,0,3011,1674,0,"((input==16))", 1, 2, 0);
	trans[0][3011]	= settr(3010,0,3012,1675,1675,"fsm_state = 3", 1, 2, 0);
	trans[0][3012]	= settr(3011,0,3555,1676,1676,"output = 9", 1, 2, 0);
	trans[0][3013]	= settr(3012,0,18,2,0,"else", 0, 2, 0);
	trans[0][3014]	= settr(3013,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3017]	= settr(3016,0,3059,1677,0,"((fsm_state==8))", 1, 2, 0);
	T = trans[0][3059] = settr(3058,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3058,0,3018,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3058,0,3021,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3058,0,3024,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3058,0,3027,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3058,0,3030,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3058,0,3033,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3058,0,3036,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3058,0,3039,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3058,0,3042,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3058,0,3045,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3058,0,3048,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3058,0,3051,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3058,0,3054,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3058,0,3057,0,0,"IF", 0, 2, 0);
	trans[0][3018]	= settr(3017,0,3019,1678,0,"((input==26))", 1, 2, 0);
	trans[0][3019]	= settr(3018,0,3020,1679,1679,"fsm_state = 48", 1, 2, 0);
	trans[0][3020]	= settr(3019,0,3555,1680,1680,"output = 10", 1, 2, 0);
	trans[0][3060]	= settr(3059,0,3555,1,0,".(goto)", 0, 2, 0);
	trans[0][3021]	= settr(3020,0,3022,1681,0,"((input==17))", 1, 2, 0);
	trans[0][3022]	= settr(3021,0,3023,1682,1682,"fsm_state = 48", 1, 2, 0);
	trans[0][3023]	= settr(3022,0,3555,1683,1683,"output = 10", 1, 2, 0);
	trans[0][3024]	= settr(3023,0,3025,1684,0,"((input==22))", 1, 2, 0);
	trans[0][3025]	= settr(3024,0,3026,1685,1685,"fsm_state = 48", 1, 2, 0);
	trans[0][3026]	= settr(3025,0,3555,1686,1686,"output = 10", 1, 2, 0);
	trans[0][3027]	= settr(3026,0,3028,1687,0,"((input==27))", 1, 2, 0);
	trans[0][3028]	= settr(3027,0,3029,1688,1688,"fsm_state = 32", 1, 2, 0);
	trans[0][3029]	= settr(3028,0,3555,1689,1689,"output = 13", 1, 2, 0);
	trans[0][3030]	= settr(3029,0,3031,1690,0,"((input==18))", 1, 2, 0);
	trans[0][3031]	= settr(3030,0,3032,1691,1691,"fsm_state = 8", 1, 2, 0);
	trans[0][3032]	= settr(3031,0,3555,1692,1692,"output = 8", 1, 2, 0);
	trans[0][3033]	= settr(3032,0,3034,1693,0,"((input==21))", 1, 2, 0);
	trans[0][3034]	= settr(3033,0,3035,1694,1694,"fsm_state = 8", 1, 2, 0);
	trans[0][3035]	= settr(3034,0,3555,1695,1695,"output = 7", 1, 2, 0);
	trans[0][3036]	= settr(3035,0,3037,1696,0,"((input==16))", 1, 2, 0);
	trans[0][3037]	= settr(3036,0,3038,1697,1697,"fsm_state = 8", 1, 2, 0);
	trans[0][3038]	= settr(3037,0,3555,1698,1698,"output = 5", 1, 2, 0);
	trans[0][3039]	= settr(3038,0,3040,1699,0,"((input==28))", 1, 2, 0);
	trans[0][3040]	= settr(3039,0,18,1700,1700,"fsm_state = 8", 1, 2, 0);
	trans[0][3041]	= settr(3040,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3042]	= settr(3041,0,3043,1701,0,"((input==23))", 1, 2, 0);
	trans[0][3043]	= settr(3042,0,3044,1702,1702,"fsm_state = 8", 1, 2, 0);
	trans[0][3044]	= settr(3043,0,3555,1703,1703,"output = 8", 1, 2, 0);
	trans[0][3045]	= settr(3044,0,3046,1704,0,"((input==25))", 1, 2, 0);
	trans[0][3046]	= settr(3045,0,18,1705,1705,"fsm_state = 8", 1, 2, 0);
	trans[0][3047]	= settr(3046,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3048]	= settr(3047,0,3049,1706,0,"((input==20))", 1, 2, 0);
	trans[0][3049]	= settr(3048,0,3050,1707,1707,"fsm_state = 8", 1, 2, 0);
	trans[0][3050]	= settr(3049,0,3555,1708,1708,"output = 14", 1, 2, 0);
	trans[0][3051]	= settr(3050,0,3052,1709,0,"((input==19))", 1, 2, 0);
	trans[0][3052]	= settr(3051,0,3053,1710,1710,"fsm_state = 6", 1, 2, 0);
	trans[0][3053]	= settr(3052,0,3555,1711,1711,"output = 2", 1, 2, 0);
	trans[0][3054]	= settr(3053,0,3055,1712,0,"((input==24))", 1, 2, 0);
	trans[0][3055]	= settr(3054,0,3056,1713,1713,"fsm_state = 2", 1, 2, 0);
	trans[0][3056]	= settr(3055,0,3555,1714,1714,"output = 2", 1, 2, 0);
	trans[0][3057]	= settr(3056,0,18,2,0,"else", 0, 2, 0);
	trans[0][3058]	= settr(3057,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3061]	= settr(3060,0,3149,1715,0,"((fsm_state==7))", 1, 2, 0);
	T = trans[0][3149] = settr(3148,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3148,0,3062,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3148,0,3065,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3148,0,3068,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3148,0,3071,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3148,0,3074,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3148,0,3077,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3148,0,3080,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3148,0,3083,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3148,0,3086,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3148,0,3089,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3148,0,3092,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3148,0,3095,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3148,0,3144,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3148,0,3147,0,0,"IF", 0, 2, 0);
	trans[0][3062]	= settr(3061,0,3063,1716,0,"((input==19))", 1, 2, 0);
	trans[0][3063]	= settr(3062,0,3064,1717,1717,"fsm_state = 48", 1, 2, 0);
	trans[0][3064]	= settr(3063,0,3555,1718,1718,"output = 10", 1, 2, 0);
	trans[0][3150]	= settr(3149,0,3555,1,0,".(goto)", 0, 2, 0);
	trans[0][3065]	= settr(3064,0,3066,1719,0,"((input==22))", 1, 2, 0);
	trans[0][3066]	= settr(3065,0,3067,1720,1720,"fsm_state = 48", 1, 2, 0);
	trans[0][3067]	= settr(3066,0,3555,1721,1721,"output = 10", 1, 2, 0);
	trans[0][3068]	= settr(3067,0,3069,1722,0,"((input==24))", 1, 2, 0);
	trans[0][3069]	= settr(3068,0,3070,1723,1723,"fsm_state = 48", 1, 2, 0);
	trans[0][3070]	= settr(3069,0,3555,1724,1724,"output = 10", 1, 2, 0);
	trans[0][3071]	= settr(3070,0,3072,1725,0,"((input==20))", 1, 2, 0);
	trans[0][3072]	= settr(3071,0,3073,1726,1726,"fsm_state = 48", 1, 2, 0);
	trans[0][3073]	= settr(3072,0,3555,1727,1727,"output = 10", 1, 2, 0);
	trans[0][3074]	= settr(3073,0,3075,1728,0,"((input==17))", 1, 2, 0);
	trans[0][3075]	= settr(3074,0,18,1729,1729,"fsm_state = 43", 1, 2, 0);
	trans[0][3076]	= settr(3075,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3077]	= settr(3076,0,3078,1730,0,"((input==27))", 1, 2, 0);
	trans[0][3078]	= settr(3077,0,18,1731,1731,"fsm_state = 20", 1, 2, 0);
	trans[0][3079]	= settr(3078,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3080]	= settr(3079,0,3081,1732,0,"((input==25))", 1, 2, 0);
	trans[0][3081]	= settr(3080,0,18,1733,1733,"fsm_state = 14", 1, 2, 0);
	trans[0][3082]	= settr(3081,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3083]	= settr(3082,0,3084,1734,0,"((input==21))", 1, 2, 0);
	trans[0][3084]	= settr(3083,0,18,1735,1735,"fsm_state = 10", 1, 2, 0);
	trans[0][3085]	= settr(3084,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3086]	= settr(3085,0,3087,1736,0,"((input==18))", 1, 2, 0);
	trans[0][3087]	= settr(3086,0,3088,1737,1737,"fsm_state = 7", 1, 2, 0);
	trans[0][3088]	= settr(3087,0,3555,1738,1738,"output = 8", 1, 2, 0);
	trans[0][3089]	= settr(3088,0,3090,1739,0,"((input==16))", 1, 2, 0);
	trans[0][3090]	= settr(3089,0,3091,1740,1740,"fsm_state = 7", 1, 2, 0);
	trans[0][3091]	= settr(3090,0,3555,1741,1741,"output = 5", 1, 2, 0);
	trans[0][3092]	= settr(3091,0,3093,1742,0,"((input==23))", 1, 2, 0);
	trans[0][3093]	= settr(3092,0,3094,1743,1743,"fsm_state = 7", 1, 2, 0);
	trans[0][3094]	= settr(3093,0,3555,1744,1744,"output = 8", 1, 2, 0);
	trans[0][3095]	= settr(3094,0,3096,1745,0,"((input==26))", 1, 2, 0);
	trans[0][3096]	= settr(3095,0,3097,1746,1746,"fsm_state = 3", 1, 2, 0);
	trans[0][3097]	= settr(3096,0,3098,1747,1747,"output = 3", 1, 2, 0);
	trans[0][3098]	= settr(3097,0,3141,1748,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][3141] = settr(3140,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(3140,0,3134,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][3134]	= settr(3133,32,3139,1749,1749,"D_STEP13", 1, 2, 0);
	T = trans[0][3139] = settr(3138,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3138,0,3135,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3138,0,3137,0,0,"IF", 0, 2, 0);
	trans[0][3135]	= settr(3134,0,1,1750,0,"((dealt==0))", 1, 2, 0);
	trans[0][3136]	= settr(3135,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][3140]	= settr(3139,0,3142,1,0,".(goto)", 0, 2, 0);
	trans[0][3137]	= settr(3136,0,3138,2,0,"else", 0, 2, 0);
	trans[0][3138]	= settr(3137,0,3142,1,0,"(1)", 0, 2, 0);
	trans[0][3142]	= settr(3141,0,3143,1751,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][3143]	= settr(3142,0,3555,1752,1752,"output = 12", 1, 2, 0);
	trans[0][3144]	= settr(3143,0,3145,1753,0,"((input==28))", 1, 2, 0);
	trans[0][3145]	= settr(3144,0,18,1754,1754,"fsm_state = 2", 1, 2, 0);
	trans[0][3146]	= settr(3145,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3147]	= settr(3146,0,18,2,0,"else", 0, 2, 0);
	trans[0][3148]	= settr(3147,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3151]	= settr(3150,0,3193,1755,0,"((fsm_state==6))", 1, 2, 0);
	T = trans[0][3193] = settr(3192,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3192,0,3152,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3192,0,3155,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3192,0,3158,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3192,0,3161,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3192,0,3164,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3192,0,3167,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3192,0,3170,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3192,0,3173,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3192,0,3176,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3192,0,3179,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3192,0,3182,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3192,0,3185,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3192,0,3188,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3192,0,3191,0,0,"IF", 0, 2, 0);
	trans[0][3152]	= settr(3151,0,3153,1756,0,"((input==19))", 1, 2, 0);
	trans[0][3153]	= settr(3152,0,3154,1757,1757,"fsm_state = 48", 1, 2, 0);
	trans[0][3154]	= settr(3153,0,3555,1758,1758,"output = 10", 1, 2, 0);
	trans[0][3194]	= settr(3193,0,3555,1,0,".(goto)", 0, 2, 0);
	trans[0][3155]	= settr(3154,0,3156,1759,0,"((input==22))", 1, 2, 0);
	trans[0][3156]	= settr(3155,0,3157,1760,1760,"fsm_state = 48", 1, 2, 0);
	trans[0][3157]	= settr(3156,0,3555,1761,1761,"output = 10", 1, 2, 0);
	trans[0][3158]	= settr(3157,0,3159,1762,0,"((input==24))", 1, 2, 0);
	trans[0][3159]	= settr(3158,0,3160,1763,1763,"fsm_state = 48", 1, 2, 0);
	trans[0][3160]	= settr(3159,0,3555,1764,1764,"output = 10", 1, 2, 0);
	trans[0][3161]	= settr(3160,0,3162,1765,0,"((input==20))", 1, 2, 0);
	trans[0][3162]	= settr(3161,0,3163,1766,1766,"fsm_state = 48", 1, 2, 0);
	trans[0][3163]	= settr(3162,0,3555,1767,1767,"output = 10", 1, 2, 0);
	trans[0][3164]	= settr(3163,0,3165,1768,0,"((input==17))", 1, 2, 0);
	trans[0][3165]	= settr(3164,0,18,1769,1769,"fsm_state = 43", 1, 2, 0);
	trans[0][3166]	= settr(3165,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3167]	= settr(3166,0,3168,1770,0,"((input==27))", 1, 2, 0);
	trans[0][3168]	= settr(3167,0,18,1771,1771,"fsm_state = 25", 1, 2, 0);
	trans[0][3169]	= settr(3168,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3170]	= settr(3169,0,3171,1772,0,"((input==25))", 1, 2, 0);
	trans[0][3171]	= settr(3170,0,18,1773,1773,"fsm_state = 17", 1, 2, 0);
	trans[0][3172]	= settr(3171,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3173]	= settr(3172,0,3174,1774,0,"((input==21))", 1, 2, 0);
	trans[0][3174]	= settr(3173,0,18,1775,1775,"fsm_state = 11", 1, 2, 0);
	trans[0][3175]	= settr(3174,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3176]	= settr(3175,0,3177,1776,0,"((input==26))", 1, 2, 0);
	trans[0][3177]	= settr(3176,0,18,1777,1777,"fsm_state = 7", 1, 2, 0);
	trans[0][3178]	= settr(3177,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3179]	= settr(3178,0,3180,1778,0,"((input==18))", 1, 2, 0);
	trans[0][3180]	= settr(3179,0,3181,1779,1779,"fsm_state = 6", 1, 2, 0);
	trans[0][3181]	= settr(3180,0,3555,1780,1780,"output = 8", 1, 2, 0);
	trans[0][3182]	= settr(3181,0,3183,1781,0,"((input==16))", 1, 2, 0);
	trans[0][3183]	= settr(3182,0,3184,1782,1782,"fsm_state = 6", 1, 2, 0);
	trans[0][3184]	= settr(3183,0,3555,1783,1783,"output = 5", 1, 2, 0);
	trans[0][3185]	= settr(3184,0,3186,1784,0,"((input==28))", 1, 2, 0);
	trans[0][3186]	= settr(3185,0,18,1785,1785,"fsm_state = 6", 1, 2, 0);
	trans[0][3187]	= settr(3186,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3188]	= settr(3187,0,3189,1786,0,"((input==23))", 1, 2, 0);
	trans[0][3189]	= settr(3188,0,3190,1787,1787,"fsm_state = 6", 1, 2, 0);
	trans[0][3190]	= settr(3189,0,3555,1788,1788,"output = 8", 1, 2, 0);
	trans[0][3191]	= settr(3190,0,18,2,0,"else", 0, 2, 0);
	trans[0][3192]	= settr(3191,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3195]	= settr(3194,0,3237,1789,0,"((fsm_state==5))", 1, 2, 0);
	T = trans[0][3237] = settr(3236,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3236,0,3196,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3236,0,3199,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3236,0,3202,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3236,0,3205,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3236,0,3208,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3236,0,3211,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3236,0,3214,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3236,0,3217,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3236,0,3220,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3236,0,3223,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3236,0,3226,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3236,0,3229,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3236,0,3232,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3236,0,3235,0,0,"IF", 0, 2, 0);
	trans[0][3196]	= settr(3195,0,3197,1790,0,"((input==26))", 1, 2, 0);
	trans[0][3197]	= settr(3196,0,3198,1791,1791,"fsm_state = 48", 1, 2, 0);
	trans[0][3198]	= settr(3197,0,3555,1792,1792,"output = 10", 1, 2, 0);
	trans[0][3238]	= settr(3237,0,3555,1,0,".(goto)", 0, 2, 0);
	trans[0][3199]	= settr(3198,0,3200,1793,0,"((input==19))", 1, 2, 0);
	trans[0][3200]	= settr(3199,0,3201,1794,1794,"fsm_state = 48", 1, 2, 0);
	trans[0][3201]	= settr(3200,0,3555,1795,1795,"output = 10", 1, 2, 0);
	trans[0][3202]	= settr(3201,0,3203,1796,0,"((input==22))", 1, 2, 0);
	trans[0][3203]	= settr(3202,0,3204,1797,1797,"fsm_state = 48", 1, 2, 0);
	trans[0][3204]	= settr(3203,0,3555,1798,1798,"output = 10", 1, 2, 0);
	trans[0][3205]	= settr(3204,0,3206,1799,0,"((input==24))", 1, 2, 0);
	trans[0][3206]	= settr(3205,0,3207,1800,1800,"fsm_state = 48", 1, 2, 0);
	trans[0][3207]	= settr(3206,0,3555,1801,1801,"output = 10", 1, 2, 0);
	trans[0][3208]	= settr(3207,0,3209,1802,0,"((input==20))", 1, 2, 0);
	trans[0][3209]	= settr(3208,0,3210,1803,1803,"fsm_state = 48", 1, 2, 0);
	trans[0][3210]	= settr(3209,0,3555,1804,1804,"output = 10", 1, 2, 0);
	trans[0][3211]	= settr(3210,0,3212,1805,0,"((input==17))", 1, 2, 0);
	trans[0][3212]	= settr(3211,0,18,1806,1806,"fsm_state = 28", 1, 2, 0);
	trans[0][3213]	= settr(3212,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3214]	= settr(3213,0,3215,1807,0,"((input==27))", 1, 2, 0);
	trans[0][3215]	= settr(3214,0,18,1808,1808,"fsm_state = 9", 1, 2, 0);
	trans[0][3216]	= settr(3215,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3217]	= settr(3216,0,3218,1809,0,"((input==18))", 1, 2, 0);
	trans[0][3218]	= settr(3217,0,3219,1810,1810,"fsm_state = 5", 1, 2, 0);
	trans[0][3219]	= settr(3218,0,3555,1811,1811,"output = 8", 1, 2, 0);
	trans[0][3220]	= settr(3219,0,3221,1812,0,"((input==21))", 1, 2, 0);
	trans[0][3221]	= settr(3220,0,18,1813,1813,"fsm_state = 5", 1, 2, 0);
	trans[0][3222]	= settr(3221,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3223]	= settr(3222,0,3224,1814,0,"((input==16))", 1, 2, 0);
	trans[0][3224]	= settr(3223,0,3225,1815,1815,"fsm_state = 5", 1, 2, 0);
	trans[0][3225]	= settr(3224,0,3555,1816,1816,"output = 5", 1, 2, 0);
	trans[0][3226]	= settr(3225,0,3227,1817,0,"((input==28))", 1, 2, 0);
	trans[0][3227]	= settr(3226,0,18,1818,1818,"fsm_state = 5", 1, 2, 0);
	trans[0][3228]	= settr(3227,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3229]	= settr(3228,0,3230,1819,0,"((input==23))", 1, 2, 0);
	trans[0][3230]	= settr(3229,0,3231,1820,1820,"fsm_state = 5", 1, 2, 0);
	trans[0][3231]	= settr(3230,0,3555,1821,1821,"output = 8", 1, 2, 0);
	trans[0][3232]	= settr(3231,0,3233,1822,0,"((input==25))", 1, 2, 0);
	trans[0][3233]	= settr(3232,0,18,1823,1823,"fsm_state = 5", 1, 2, 0);
	trans[0][3234]	= settr(3233,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3235]	= settr(3234,0,18,2,0,"else", 0, 2, 0);
	trans[0][3236]	= settr(3235,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3239]	= settr(3238,0,3373,1824,0,"((fsm_state==4))", 1, 2, 0);
	T = trans[0][3373] = settr(3372,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3372,0,3240,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3372,0,3243,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3372,0,3246,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3372,0,3249,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3372,0,3252,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3372,0,3255,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3372,0,3258,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3372,0,3261,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3372,0,3264,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3372,0,3267,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3372,0,3270,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3372,0,3273,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3372,0,3276,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3372,0,3371,0,0,"IF", 0, 2, 0);
	trans[0][3240]	= settr(3239,0,3241,1825,0,"((input==19))", 1, 2, 0);
	trans[0][3241]	= settr(3240,0,3242,1826,1826,"fsm_state = 48", 1, 2, 0);
	trans[0][3242]	= settr(3241,0,3555,1827,1827,"output = 10", 1, 2, 0);
	trans[0][3374]	= settr(3373,0,3555,1,0,".(goto)", 0, 2, 0);
	trans[0][3243]	= settr(3242,0,3244,1828,0,"((input==22))", 1, 2, 0);
	trans[0][3244]	= settr(3243,0,3245,1829,1829,"fsm_state = 48", 1, 2, 0);
	trans[0][3245]	= settr(3244,0,3555,1830,1830,"output = 10", 1, 2, 0);
	trans[0][3246]	= settr(3245,0,3247,1831,0,"((input==24))", 1, 2, 0);
	trans[0][3247]	= settr(3246,0,3248,1832,1832,"fsm_state = 48", 1, 2, 0);
	trans[0][3248]	= settr(3247,0,3555,1833,1833,"output = 10", 1, 2, 0);
	trans[0][3249]	= settr(3248,0,3250,1834,0,"((input==20))", 1, 2, 0);
	trans[0][3250]	= settr(3249,0,3251,1835,1835,"fsm_state = 48", 1, 2, 0);
	trans[0][3251]	= settr(3250,0,3555,1836,1836,"output = 10", 1, 2, 0);
	trans[0][3252]	= settr(3251,0,3253,1837,0,"((input==17))", 1, 2, 0);
	trans[0][3253]	= settr(3252,0,18,1838,1838,"fsm_state = 43", 1, 2, 0);
	trans[0][3254]	= settr(3253,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3255]	= settr(3254,0,3256,1839,0,"((input==27))", 1, 2, 0);
	trans[0][3256]	= settr(3255,0,18,1840,1840,"fsm_state = 20", 1, 2, 0);
	trans[0][3257]	= settr(3256,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3258]	= settr(3257,0,3259,1841,0,"((input==18))", 1, 2, 0);
	trans[0][3259]	= settr(3258,0,3260,1842,1842,"fsm_state = 4", 1, 2, 0);
	trans[0][3260]	= settr(3259,0,3555,1843,1843,"output = 8", 1, 2, 0);
	trans[0][3261]	= settr(3260,0,3262,1844,0,"((input==21))", 1, 2, 0);
	trans[0][3262]	= settr(3261,0,18,1845,1845,"fsm_state = 4", 1, 2, 0);
	trans[0][3263]	= settr(3262,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3264]	= settr(3263,0,3265,1846,0,"((input==16))", 1, 2, 0);
	trans[0][3265]	= settr(3264,0,3266,1847,1847,"fsm_state = 4", 1, 2, 0);
	trans[0][3266]	= settr(3265,0,3555,1848,1848,"output = 5", 1, 2, 0);
	trans[0][3267]	= settr(3266,0,3268,1849,0,"((input==28))", 1, 2, 0);
	trans[0][3268]	= settr(3267,0,18,1850,1850,"fsm_state = 4", 1, 2, 0);
	trans[0][3269]	= settr(3268,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3270]	= settr(3269,0,3271,1851,0,"((input==23))", 1, 2, 0);
	trans[0][3271]	= settr(3270,0,3272,1852,1852,"fsm_state = 4", 1, 2, 0);
	trans[0][3272]	= settr(3271,0,3555,1853,1853,"output = 8", 1, 2, 0);
	trans[0][3273]	= settr(3272,0,3274,1854,0,"((input==25))", 1, 2, 0);
	trans[0][3274]	= settr(3273,0,18,1855,1855,"fsm_state = 4", 1, 2, 0);
	trans[0][3275]	= settr(3274,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3276]	= settr(3275,0,3277,1856,0,"((input==26))", 1, 2, 0);
	trans[0][3277]	= settr(3276,0,3278,1857,1857,"fsm_state = 1", 1, 2, 0);
	trans[0][3278]	= settr(3277,0,3279,1858,1858,"output = 3", 1, 2, 0);
	trans[0][3279]	= settr(3278,0,3322,1859,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][3322] = settr(3321,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(3321,0,3315,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][3315]	= settr(3314,32,3320,1860,1860,"D_STEP13", 1, 2, 0);
	T = trans[0][3320] = settr(3319,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3319,0,3316,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3319,0,3318,0,0,"IF", 0, 2, 0);
	trans[0][3316]	= settr(3315,0,1,1861,0,"((dealt==0))", 1, 2, 0);
	trans[0][3317]	= settr(3316,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][3321]	= settr(3320,0,3323,1,0,".(goto)", 0, 2, 0);
	trans[0][3318]	= settr(3317,0,3319,2,0,"else", 0, 2, 0);
	trans[0][3319]	= settr(3318,0,3323,1,0,"(1)", 0, 2, 0);
	trans[0][3323]	= settr(3322,0,3324,1862,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][3324]	= settr(3323,0,3325,1863,1863,"output = 12", 1, 2, 0);
	trans[0][3325]	= settr(3324,0,3368,1864,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][3368] = settr(3367,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(3367,0,3361,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][3361]	= settr(3360,32,3366,1865,1865,"D_STEP13", 1, 2, 0);
	T = trans[0][3366] = settr(3365,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3365,0,3362,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3365,0,3364,0,0,"IF", 0, 2, 0);
	trans[0][3362]	= settr(3361,0,1,1866,0,"((dealt==0))", 1, 2, 0);
	trans[0][3363]	= settr(3362,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][3367]	= settr(3366,0,3369,1,0,".(goto)", 0, 2, 0);
	trans[0][3364]	= settr(3363,0,3365,2,0,"else", 0, 2, 0);
	trans[0][3365]	= settr(3364,0,3369,1,0,"(1)", 0, 2, 0);
	trans[0][3369]	= settr(3368,0,3370,1867,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][3370]	= settr(3369,0,3555,1868,1868,"output = 11", 1, 2, 0);
	trans[0][3371]	= settr(3370,0,18,2,0,"else", 0, 2, 0);
	trans[0][3372]	= settr(3371,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3375]	= settr(3374,0,3417,1869,0,"((fsm_state==3))", 1, 2, 0);
	T = trans[0][3417] = settr(3416,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3416,0,3376,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3416,0,3379,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3416,0,3382,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3416,0,3385,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3416,0,3388,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3416,0,3391,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3416,0,3394,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3416,0,3397,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3416,0,3400,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3416,0,3403,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3416,0,3406,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3416,0,3409,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3416,0,3412,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3416,0,3415,0,0,"IF", 0, 2, 0);
	trans[0][3376]	= settr(3375,0,3377,1870,0,"((input==26))", 1, 2, 0);
	trans[0][3377]	= settr(3376,0,3378,1871,1871,"fsm_state = 48", 1, 2, 0);
	trans[0][3378]	= settr(3377,0,3555,1872,1872,"output = 10", 1, 2, 0);
	trans[0][3418]	= settr(3417,0,3555,1,0,".(goto)", 0, 2, 0);
	trans[0][3379]	= settr(3378,0,3380,1873,0,"((input==19))", 1, 2, 0);
	trans[0][3380]	= settr(3379,0,3381,1874,1874,"fsm_state = 48", 1, 2, 0);
	trans[0][3381]	= settr(3380,0,3555,1875,1875,"output = 10", 1, 2, 0);
	trans[0][3382]	= settr(3381,0,3383,1876,0,"((input==22))", 1, 2, 0);
	trans[0][3383]	= settr(3382,0,3384,1877,1877,"fsm_state = 48", 1, 2, 0);
	trans[0][3384]	= settr(3383,0,3555,1878,1878,"output = 10", 1, 2, 0);
	trans[0][3385]	= settr(3384,0,3386,1879,0,"((input==24))", 1, 2, 0);
	trans[0][3386]	= settr(3385,0,3387,1880,1880,"fsm_state = 48", 1, 2, 0);
	trans[0][3387]	= settr(3386,0,3555,1881,1881,"output = 10", 1, 2, 0);
	trans[0][3388]	= settr(3387,0,3389,1882,0,"((input==20))", 1, 2, 0);
	trans[0][3389]	= settr(3388,0,3390,1883,1883,"fsm_state = 48", 1, 2, 0);
	trans[0][3390]	= settr(3389,0,3555,1884,1884,"output = 10", 1, 2, 0);
	trans[0][3391]	= settr(3390,0,3392,1885,0,"((input==17))", 1, 2, 0);
	trans[0][3392]	= settr(3391,0,18,1886,1886,"fsm_state = 23", 1, 2, 0);
	trans[0][3393]	= settr(3392,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3394]	= settr(3393,0,3395,1887,0,"((input==27))", 1, 2, 0);
	trans[0][3395]	= settr(3394,0,3396,1888,1888,"fsm_state = 9", 1, 2, 0);
	trans[0][3396]	= settr(3395,0,3555,1889,1889,"output = 13", 1, 2, 0);
	trans[0][3397]	= settr(3396,0,3398,1890,0,"((input==25))", 1, 2, 0);
	trans[0][3398]	= settr(3397,0,3399,1891,1891,"fsm_state = 5", 1, 2, 0);
	trans[0][3399]	= settr(3398,0,3555,1892,1892,"output = 13", 1, 2, 0);
	trans[0][3400]	= settr(3399,0,3401,1893,0,"((input==18))", 1, 2, 0);
	trans[0][3401]	= settr(3400,0,3402,1894,1894,"fsm_state = 3", 1, 2, 0);
	trans[0][3402]	= settr(3401,0,3555,1895,1895,"output = 8", 1, 2, 0);
	trans[0][3403]	= settr(3402,0,3404,1896,0,"((input==21))", 1, 2, 0);
	trans[0][3404]	= settr(3403,0,3405,1897,1897,"fsm_state = 3", 1, 2, 0);
	trans[0][3405]	= settr(3404,0,3555,1898,1898,"output = 7", 1, 2, 0);
	trans[0][3406]	= settr(3405,0,3407,1899,0,"((input==16))", 1, 2, 0);
	trans[0][3407]	= settr(3406,0,3408,1900,1900,"fsm_state = 3", 1, 2, 0);
	trans[0][3408]	= settr(3407,0,3555,1901,1901,"output = 5", 1, 2, 0);
	trans[0][3409]	= settr(3408,0,3410,1902,0,"((input==23))", 1, 2, 0);
	trans[0][3410]	= settr(3409,0,3411,1903,1903,"fsm_state = 3", 1, 2, 0);
	trans[0][3411]	= settr(3410,0,3555,1904,1904,"output = 8", 1, 2, 0);
	trans[0][3412]	= settr(3411,0,3413,1905,0,"((input==28))", 1, 2, 0);
	trans[0][3413]	= settr(3412,0,18,1906,1906,"fsm_state = 1", 1, 2, 0);
	trans[0][3414]	= settr(3413,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3415]	= settr(3414,0,18,2,0,"else", 0, 2, 0);
	trans[0][3416]	= settr(3415,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3419]	= settr(3418,0,3507,1907,0,"((fsm_state==2))", 1, 2, 0);
	T = trans[0][3507] = settr(3506,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3506,0,3420,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3506,0,3423,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3506,0,3426,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3506,0,3429,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3506,0,3432,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3506,0,3435,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3506,0,3438,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3506,0,3441,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3506,0,3444,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3506,0,3447,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3506,0,3450,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3506,0,3453,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3506,0,3456,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3506,0,3505,0,0,"IF", 0, 2, 0);
	trans[0][3420]	= settr(3419,0,3421,1908,0,"((input==19))", 1, 2, 0);
	trans[0][3421]	= settr(3420,0,3422,1909,1909,"fsm_state = 48", 1, 2, 0);
	trans[0][3422]	= settr(3421,0,3555,1910,1910,"output = 10", 1, 2, 0);
	trans[0][3508]	= settr(3507,0,3555,1,0,".(goto)", 0, 2, 0);
	trans[0][3423]	= settr(3422,0,3424,1911,0,"((input==22))", 1, 2, 0);
	trans[0][3424]	= settr(3423,0,3425,1912,1912,"fsm_state = 48", 1, 2, 0);
	trans[0][3425]	= settr(3424,0,3555,1913,1913,"output = 10", 1, 2, 0);
	trans[0][3426]	= settr(3425,0,3427,1914,0,"((input==24))", 1, 2, 0);
	trans[0][3427]	= settr(3426,0,3428,1915,1915,"fsm_state = 48", 1, 2, 0);
	trans[0][3428]	= settr(3427,0,3555,1916,1916,"output = 10", 1, 2, 0);
	trans[0][3429]	= settr(3428,0,3430,1917,0,"((input==20))", 1, 2, 0);
	trans[0][3430]	= settr(3429,0,3431,1918,1918,"fsm_state = 48", 1, 2, 0);
	trans[0][3431]	= settr(3430,0,3555,1919,1919,"output = 10", 1, 2, 0);
	trans[0][3432]	= settr(3431,0,3433,1920,0,"((input==17))", 1, 2, 0);
	trans[0][3433]	= settr(3432,0,18,1921,1921,"fsm_state = 43", 1, 2, 0);
	trans[0][3434]	= settr(3433,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3435]	= settr(3434,0,3436,1922,0,"((input==27))", 1, 2, 0);
	trans[0][3436]	= settr(3435,0,18,1923,1923,"fsm_state = 20", 1, 2, 0);
	trans[0][3437]	= settr(3436,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3438]	= settr(3437,0,3439,1924,0,"((input==21))", 1, 2, 0);
	trans[0][3439]	= settr(3438,0,18,1925,1925,"fsm_state = 4", 1, 2, 0);
	trans[0][3440]	= settr(3439,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3441]	= settr(3440,0,3442,1926,0,"((input==18))", 1, 2, 0);
	trans[0][3442]	= settr(3441,0,3443,1927,1927,"fsm_state = 2", 1, 2, 0);
	trans[0][3443]	= settr(3442,0,3555,1928,1928,"output = 8", 1, 2, 0);
	trans[0][3444]	= settr(3443,0,3445,1929,0,"((input==16))", 1, 2, 0);
	trans[0][3445]	= settr(3444,0,3446,1930,1930,"fsm_state = 2", 1, 2, 0);
	trans[0][3446]	= settr(3445,0,3555,1931,1931,"output = 5", 1, 2, 0);
	trans[0][3447]	= settr(3446,0,3448,1932,0,"((input==28))", 1, 2, 0);
	trans[0][3448]	= settr(3447,0,18,1933,1933,"fsm_state = 2", 1, 2, 0);
	trans[0][3449]	= settr(3448,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3450]	= settr(3449,0,3451,1934,0,"((input==23))", 1, 2, 0);
	trans[0][3451]	= settr(3450,0,3452,1935,1935,"fsm_state = 2", 1, 2, 0);
	trans[0][3452]	= settr(3451,0,3555,1936,1936,"output = 8", 1, 2, 0);
	trans[0][3453]	= settr(3452,0,3454,1937,0,"((input==25))", 1, 2, 0);
	trans[0][3454]	= settr(3453,0,18,1938,1938,"fsm_state = 2", 1, 2, 0);
	trans[0][3455]	= settr(3454,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3456]	= settr(3455,0,3457,1939,0,"((input==26))", 1, 2, 0);
	trans[0][3457]	= settr(3456,0,3458,1940,1940,"fsm_state = 1", 1, 2, 0);
	trans[0][3458]	= settr(3457,0,3459,1941,1941,"output = 3", 1, 2, 0);
	trans[0][3459]	= settr(3458,0,3502,1942,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][3502] = settr(3501,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(3501,0,3495,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][3495]	= settr(3494,32,3500,1943,1943,"D_STEP13", 1, 2, 0);
	T = trans[0][3500] = settr(3499,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3499,0,3496,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3499,0,3498,0,0,"IF", 0, 2, 0);
	trans[0][3496]	= settr(3495,0,1,1944,0,"((dealt==0))", 1, 2, 0);
	trans[0][3497]	= settr(3496,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][3501]	= settr(3500,0,3503,1,0,".(goto)", 0, 2, 0);
	trans[0][3498]	= settr(3497,0,3499,2,0,"else", 0, 2, 0);
	trans[0][3499]	= settr(3498,0,3503,1,0,"(1)", 0, 2, 0);
	trans[0][3503]	= settr(3502,0,3504,1945,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][3504]	= settr(3503,0,3555,1946,1946,"output = 12", 1, 2, 0);
	trans[0][3505]	= settr(3504,0,18,2,0,"else", 0, 2, 0);
	trans[0][3506]	= settr(3505,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3509]	= settr(3508,0,3551,1947,0,"((fsm_state==1))", 1, 2, 0);
	T = trans[0][3551] = settr(3550,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3550,0,3510,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3550,0,3513,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3550,0,3516,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3550,0,3519,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3550,0,3522,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3550,0,3525,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3550,0,3528,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3550,0,3531,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3550,0,3534,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3550,0,3537,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3550,0,3540,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3550,0,3543,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3550,0,3546,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3550,0,3549,0,0,"IF", 0, 2, 0);
	trans[0][3510]	= settr(3509,0,3511,1948,0,"((input==26))", 1, 2, 0);
	trans[0][3511]	= settr(3510,0,3512,1949,1949,"fsm_state = 48", 1, 2, 0);
	trans[0][3512]	= settr(3511,0,3555,1950,1950,"output = 10", 1, 2, 0);
	trans[0][3552]	= settr(3551,0,3555,1,0,".(goto)", 0, 2, 0);
	trans[0][3513]	= settr(3512,0,3514,1951,0,"((input==19))", 1, 2, 0);
	trans[0][3514]	= settr(3513,0,3515,1952,1952,"fsm_state = 48", 1, 2, 0);
	trans[0][3515]	= settr(3514,0,3555,1953,1953,"output = 10", 1, 2, 0);
	trans[0][3516]	= settr(3515,0,3517,1954,0,"((input==22))", 1, 2, 0);
	trans[0][3517]	= settr(3516,0,3518,1955,1955,"fsm_state = 48", 1, 2, 0);
	trans[0][3518]	= settr(3517,0,3555,1956,1956,"output = 10", 1, 2, 0);
	trans[0][3519]	= settr(3518,0,3520,1957,0,"((input==24))", 1, 2, 0);
	trans[0][3520]	= settr(3519,0,3521,1958,1958,"fsm_state = 48", 1, 2, 0);
	trans[0][3521]	= settr(3520,0,3555,1959,1959,"output = 10", 1, 2, 0);
	trans[0][3522]	= settr(3521,0,3523,1960,0,"((input==20))", 1, 2, 0);
	trans[0][3523]	= settr(3522,0,3524,1961,1961,"fsm_state = 48", 1, 2, 0);
	trans[0][3524]	= settr(3523,0,3555,1962,1962,"output = 10", 1, 2, 0);
	trans[0][3525]	= settr(3524,0,3526,1963,0,"((input==27))", 1, 2, 0);
	trans[0][3526]	= settr(3525,0,3527,1964,1964,"fsm_state = 9", 1, 2, 0);
	trans[0][3527]	= settr(3526,0,3555,1965,1965,"output = 13", 1, 2, 0);
	trans[0][3528]	= settr(3527,0,3529,1966,0,"((input==17))", 1, 2, 0);
	trans[0][3529]	= settr(3528,0,18,1967,1967,"fsm_state = 8", 1, 2, 0);
	trans[0][3530]	= settr(3529,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3531]	= settr(3530,0,3532,1968,0,"((input==18))", 1, 2, 0);
	trans[0][3532]	= settr(3531,0,3533,1969,1969,"fsm_state = 1", 1, 2, 0);
	trans[0][3533]	= settr(3532,0,3555,1970,1970,"output = 8", 1, 2, 0);
	trans[0][3534]	= settr(3533,0,3535,1971,0,"((input==21))", 1, 2, 0);
	trans[0][3535]	= settr(3534,0,3536,1972,1972,"fsm_state = 1", 1, 2, 0);
	trans[0][3536]	= settr(3535,0,3555,1973,1973,"output = 7", 1, 2, 0);
	trans[0][3537]	= settr(3536,0,3538,1974,0,"((input==16))", 1, 2, 0);
	trans[0][3538]	= settr(3537,0,3539,1975,1975,"fsm_state = 1", 1, 2, 0);
	trans[0][3539]	= settr(3538,0,3555,1976,1976,"output = 5", 1, 2, 0);
	trans[0][3540]	= settr(3539,0,3541,1977,0,"((input==28))", 1, 2, 0);
	trans[0][3541]	= settr(3540,0,18,1978,1978,"fsm_state = 1", 1, 2, 0);
	trans[0][3542]	= settr(3541,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3543]	= settr(3542,0,3544,1979,0,"((input==23))", 1, 2, 0);
	trans[0][3544]	= settr(3543,0,3545,1980,1980,"fsm_state = 1", 1, 2, 0);
	trans[0][3545]	= settr(3544,0,3555,1981,1981,"output = 8", 1, 2, 0);
	trans[0][3546]	= settr(3545,0,3547,1982,0,"((input==25))", 1, 2, 0);
	trans[0][3547]	= settr(3546,0,18,1983,1983,"fsm_state = 1", 1, 2, 0);
	trans[0][3548]	= settr(3547,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3549]	= settr(3548,0,18,2,0,"else", 0, 2, 0);
	trans[0][3550]	= settr(3549,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3555]	= settr(3554,0,3556,1984,0,"printf('FSM State: %e\\n',fsm_state)", 1, 2, 0);
	trans[0][3556]	= settr(3555,0,3599,1985,0,"printf('Output: %e\\n\\n',output)", 1, 2, 0);
	T = trans[ 0][3599] = settr(3598,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(3598,0,3592,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][3592]	= settr(3591,32,3597,1986,1986,"D_STEP13", 1, 2, 0);
	T = trans[0][3597] = settr(3596,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3596,0,3593,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3596,0,3595,0,0,"IF", 0, 2, 0);
	trans[0][3593]	= settr(3592,0,1,1987,0,"((dealt==0))", 1, 2, 0);
	trans[0][3594]	= settr(3593,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][3598]	= settr(3597,0,3600,1,0,".(goto)", 0, 2, 0);
	trans[0][3595]	= settr(3594,0,3596,2,0,"else", 0, 2, 0);
	trans[0][3596]	= settr(3595,0,3600,1,0,"(1)", 0, 2, 0);
	trans[0][3600]	= settr(3599,0,3601,1988,0,"printf('DFA State: %e\\n\\n',dfa_state)", 1, 2, 0);
	trans[0][3603]	= settr(3602,0,3604,1,0,"break", 0, 2, 0);
	trans[0][3604]	= settr(3603,0,0,1989,1989,"-end-", 0, 3500, 0);
	/* np_ demon: */
	trans[_NP_] = (Trans **) emalloc(3*sizeof(Trans *));
	T = trans[_NP_][0] = settr(9997,0,1,_T5,0,"(np_)", 1,2,0);
	    T->nxt	  = settr(9998,0,0,_T2,0,"(1)",   0,2,0);
	T = trans[_NP_][1] = settr(9999,0,1,_T5,0,"(np_)", 1,2,0);
}

Trans *
settr(	int t_id, int a, int b, int c, int d,
	char *t, int g, int tpe0, int tpe1)
{	Trans *tmp = (Trans *) emalloc(sizeof(Trans));

	tmp->atom  = a&(6|32);	/* only (2|8|32) have meaning */
	if (!g) tmp->atom |= 8;	/* no global references */
	tmp->st    = b;
	tmp->tpe[0] = tpe0;
	tmp->tpe[1] = tpe1;
	tmp->tp    = t;
	tmp->t_id  = t_id;
	tmp->forw  = c;
	tmp->back  = d;
	return tmp;
}

Trans *
cpytr(Trans *a)
{	Trans *tmp = (Trans *) emalloc(sizeof(Trans));

	int i;
	tmp->atom  = a->atom;
	tmp->st    = a->st;
#ifdef HAS_UNLESS
	tmp->e_trans = a->e_trans;
	for (i = 0; i < HAS_UNLESS; i++)
		tmp->escp[i] = a->escp[i];
#endif
	tmp->tpe[0] = a->tpe[0];
	tmp->tpe[1] = a->tpe[1];
	for (i = 0; i < 6; i++)
	{	tmp->qu[i] = a->qu[i];
		tmp->ty[i] = a->ty[i];
	}
	tmp->tp    = (char *) emalloc(strlen(a->tp)+1);
	strcpy(tmp->tp, a->tp);
	tmp->t_id  = a->t_id;
	tmp->forw  = a->forw;
	tmp->back  = a->back;
	return tmp;
}

#ifndef NOREDUCE
int
srinc_set(int n)
{	if (n <= 2) return LOCAL;
	if (n <= 2+  DELTA) return Q_FULL_F; /* 's' or nfull  */
	if (n <= 2+2*DELTA) return Q_EMPT_F; /* 'r' or nempty */
	if (n <= 2+3*DELTA) return Q_EMPT_T; /* empty */
	if (n <= 2+4*DELTA) return Q_FULL_T; /* full  */
	if (n ==   5*DELTA) return GLOBAL;
	if (n ==   6*DELTA) return TIMEOUT_F;
	if (n ==   7*DELTA) return ALPHA_F;
	Uerror("cannot happen srinc_class");
	return BAD;
}
int
srunc(int n, int m)
{	switch(m) {
	case Q_FULL_F: return n-2;
	case Q_EMPT_F: return n-2-DELTA;
	case Q_EMPT_T: return n-2-2*DELTA;
	case Q_FULL_T: return n-2-3*DELTA;
	case ALPHA_F:
	case TIMEOUT_F: return 257; /* non-zero, and > MAXQ */
	}
	Uerror("cannot happen srunc");
	return 0;
}
#endif
int cnt;
#ifdef HAS_UNLESS
int
isthere(Trans *a, int b)
{	Trans *t;
	for (t = a; t; t = t->nxt)
		if (t->t_id == b)
			return 1;
	return 0;
}
#endif
#ifndef NOREDUCE
int
mark_safety(Trans *t) /* for conditional safety */
{	int g = 0, i, j, k;

	if (!t) return 0;
	if (t->qu[0])
		return (t->qu[1])?2:1;	/* marked */

	for (i = 0; i < 2; i++)
	{	j = srinc_set(t->tpe[i]);
		if (j >= GLOBAL && j != ALPHA_F)
			return -1;
		if (j != LOCAL)
		{	k = srunc(t->tpe[i], j);
			if (g == 0
			||  t->qu[0] != k
			||  t->ty[0] != j)
			{	t->qu[g] = k;
				t->ty[g] = j;
				g++;
	}	}	}
	return g;
}
#endif
void
retrans(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
	/* process n, with m states, is=initial state */
{	Trans *T0, *T1, *T2, *T3;
	Trans *T4, *T5; /* t_reverse or has_unless */
	int i;
#if defined(HAS_UNLESS) || !defined(NOREDUCE)
	int k;
#endif
#ifndef NOREDUCE
	int g, h, j, aa;
#endif
#ifdef HAS_UNLESS
	int p;
#endif
	if (state_tables >= 4)
	{	printf("STEP 1 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
	do {
		for (i = 1, cnt = 0; i < m; i++)
		{	T2 = trans[n][i];
			T1 = T2?T2->nxt:(Trans *)0;
/* prescan: */		for (T0 = T1; T0; T0 = T0->nxt)
/* choice in choice */	{	if (T0->st && trans[n][T0->st]
				&&  trans[n][T0->st]->nxt)
					break;
			}
#if 0
		if (T0)
		printf("\tstate %d / %d: choice in choice\n",
		i, T0->st);
#endif
			if (T0)
			for (T0 = T1; T0; T0 = T0->nxt)
			{	T3 = trans[n][T0->st];
				if (!T3->nxt)
				{	T2->nxt = cpytr(T0);
					T2 = T2->nxt;
					imed(T2, T0->st, n, i);
					continue;
				}
				do {	T3 = T3->nxt;
					T2->nxt = cpytr(T3);
					T2 = T2->nxt;
					imed(T2, T0->st, n, i);
				} while (T3->nxt);
				cnt++;
			}
		}
	} while (cnt);
	if (state_tables >= 3)
	{	printf("STEP 2 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
	for (i = 1; i < m; i++)
	{	if (trans[n][i] && trans[n][i]->nxt) /* optimize */
		{	T1 = trans[n][i]->nxt;
#if 0
			printf("\t\tpull %d (%d) to %d\n",
			T1->st, T1->forw, i);
#endif
			srcln[i] = srcln[T1->st];	/* Oyvind Teig, 5.2.0 */

			if (!trans[n][T1->st]) continue;
			T0 = cpytr(trans[n][T1->st]);
			trans[n][i] = T0;
			reach[T1->st] = 1;
			imed(T0, T1->st, n, i);
			for (T1 = T1->nxt; T1; T1 = T1->nxt)
			{
#if 0
			printf("\t\tpull %d (%d) to %d\n",
				T1->st, T1->forw, i);
#endif
		/*		srcln[i] = srcln[T1->st];  gh: not useful */
				if (!trans[n][T1->st]) continue;
				T0->nxt = cpytr(trans[n][T1->st]);
				T0 = T0->nxt;
				reach[T1->st] = 1;
				imed(T0, T1->st, n, i);
	}	}	}
	if (state_tables >= 2)
	{	printf("STEP 3 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
#ifdef HAS_UNLESS
	for (i = 1; i < m; i++)
	{	if (!trans[n][i]) continue;
		/* check for each state i if an
		 * escape to some state p is defined
		 * if so, copy and mark p's transitions
		 * and prepend them to the transition-
		 * list of state i
		 */
	 if (!like_java) /* the default */
	 {	for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		for (k = HAS_UNLESS-1; k >= 0; k--)
		{	if (p = T0->escp[k])
			for (T1 = trans[n][p]; T1; T1 = T1->nxt)
			{	if (isthere(trans[n][i], T1->t_id))
					continue;
				T2 = cpytr(T1);
				T2->e_trans = p;
				T2->nxt = trans[n][i];
				trans[n][i] = T2;
		}	}
	 } else /* outermost unless checked first */
	 {	T4 = T3 = (Trans *) 0;
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		for (k = HAS_UNLESS-1; k >= 0; k--)
		{	if (p = T0->escp[k])
			for (T1 = trans[n][p]; T1; T1 = T1->nxt)
			{	if (isthere(trans[n][i], T1->t_id))
					continue;
				T2 = cpytr(T1);
				T2->nxt = (Trans *) 0;
				T2->e_trans = p;
				if (T3)	T3->nxt = T2;
				else	T4 = T2;
				T3 = T2;
		}	}
		if (T4)
		{	T3->nxt = trans[n][i];
			trans[n][i] = T4;
		}
	 }
	}
#endif
#ifndef NOREDUCE
	for (i = 1; i < m; i++)
	{	if (a_cycles)
		{ /* moves through these states are visible */
	#if PROG_LAB>0 && defined(HAS_NP)
			if (progstate[n][i])
				goto degrade;
			for (T1 = trans[n][i]; T1; T1 = T1->nxt)
				if (progstate[n][T1->st])
					goto degrade;
	#endif
			if (accpstate[n][i] || visstate[n][i])
				goto degrade;
			for (T1 = trans[n][i]; T1; T1 = T1->nxt)
				if (accpstate[n][T1->st])
					goto degrade;
		}
		T1 = trans[n][i];
		if (!T1) continue;
		g = mark_safety(T1);	/* V3.3.1 */
		if (g < 0) goto degrade; /* global */
		/* check if mixing of guards preserves reduction */
		if (T1->nxt)
		{	k = 0;
			for (T0 = T1; T0; T0 = T0->nxt)
			{	if (!(T0->atom&8))
					goto degrade;
				for (aa = 0; aa < 2; aa++)
				{	j = srinc_set(T0->tpe[aa]);
					if (j >= GLOBAL && j != ALPHA_F)
						goto degrade;
					if (T0->tpe[aa]
					&&  T0->tpe[aa]
					!=  T1->tpe[0])
						k = 1;
			}	}
			/* g = 0;	V3.3.1 */
			if (k)	/* non-uniform selection */
			for (T0 = T1; T0; T0 = T0->nxt)
			for (aa = 0; aa < 2; aa++)
			{	j = srinc_set(T0->tpe[aa]);
				if (j != LOCAL)
				{	k = srunc(T0->tpe[aa], j);
					for (h = 0; h < 6; h++)
						if (T1->qu[h] == k
						&&  T1->ty[h] == j)
							break;
					if (h >= 6)
					{	T1->qu[g%6] = k;
						T1->ty[g%6] = j;
						g++;
			}	}	}
			if (g > 6)
			{	T1->qu[0] = 0;	/* turn it off */
				printf("pan: warning, line %d, ",
					srcln[i]);
			 	printf("too many stmnt types (%d)",
					g);
			  	printf(" in selection\n");
			  goto degrade;
			}
		}
		/* mark all options global if >=1 is global */
		for (T1 = trans[n][i]; T1; T1 = T1->nxt)
			if (!(T1->atom&8)) break;
		if (T1)
degrade:	for (T1 = trans[n][i]; T1; T1 = T1->nxt)
			T1->atom &= ~8;	/* mark as unsafe */
		/* can only mix 'r's or 's's if on same chan */
		/* and not mixed with other local operations */
		T1 = trans[n][i];
		if (!T1 || T1->qu[0]) continue;
		j = T1->tpe[0];
		if (T1->nxt && T1->atom&8)
		{ if (j == 5*DELTA)
		  {	printf("warning: line %d ", srcln[i]);
			printf("mixed condition ");
			printf("(defeats reduction)\n");
			goto degrade;
		  }
		  for (T0 = T1; T0; T0 = T0->nxt)
		  for (aa = 0; aa < 2; aa++)
		  if  (T0->tpe[aa] && T0->tpe[aa] != j)
		  {	printf("warning: line %d ", srcln[i]);
			printf("[%d-%d] mixed %stion ",
				T0->tpe[aa], j, 
				(j==5*DELTA)?"condi":"selec");
			printf("(defeats reduction)\n");
			printf("	'%s' <-> '%s'\n",
				T1->tp, T0->tp);
			goto degrade;
		} }
	}
#endif
	for (i = 1; i < m; i++)
	{	T2 = trans[n][i];
		if (!T2
		||  T2->nxt
		||  strncmp(T2->tp, ".(goto)", 7)
		||  !stopstate[n][i])
			continue;
		stopstate[n][T2->st] = 1;
	}
	if (state_tables && !verbose)
	{	if (dodot)
		{	char buf[256], *q = buf, *p = procname[n];
			while (*p != '\0')
			{	if (*p != ':')
				{	*q++ = *p;
				}
				p++;
			}
			*q = '\0';
			printf("digraph ");
			switch (Btypes[n]) {
			case I_PROC:  printf("init {\n"); break;
			case N_CLAIM: printf("claim_%s {\n", buf); break;
			case E_TRACE: printf("notrace {\n"); break;
			case N_TRACE: printf("trace {\n"); break;
			default:      printf("p_%s {\n", buf); break;
			}
			printf("size=\"8,10\";\n");
			printf("  GT [shape=box,style=dotted,label=\"%s\"];\n", buf);
			printf("  GT -> S%d;\n", is);
		} else
		{	switch (Btypes[n]) {
			case I_PROC:  printf("init\n"); break;
			case N_CLAIM: printf("claim %s\n", procname[n]); break;
			case E_TRACE: printf("notrace assertion\n"); break;
			case N_TRACE: printf("trace assertion\n"); break;
			default:      printf("proctype %s\n", procname[n]); break;
		}	}
		for (i = 1; i < m; i++)
		{	reach[i] = 1;
		}
		tagtable(n, m, is, srcln, reach);
		if (dodot) printf("}\n");
	} else
	for (i = 1; i < m; i++)
	{	int nrelse;
		if (Btypes[n] != N_CLAIM)
		{	for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			{	if (T0->st == i
				&& strcmp(T0->tp, "(1)") == 0)
				{	printf("error: proctype '%s' ",
						procname[n]);
		  			printf("line %d, state %d: has un",
						srcln[i], i);
					printf("conditional self-loop\n");
					pan_exit(1);
		}	}	}
		nrelse = 0;
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		{	if (strcmp(T0->tp, "else") == 0)
				nrelse++;
		}
		if (nrelse > 1)
		{	printf("error: proctype '%s' state",
				procname[n]);
		  	printf(" %d, inherits %d", i, nrelse);
		  	printf(" 'else' stmnts\n");
			pan_exit(1);
	}	}
#if !defined(LOOPSTATE) && !defined(BFS_PAR)
	if (state_tables)
#endif
	do_dfs(n, m, is, srcln, reach, lpstate);

	if (!t_reverse)
	{	return;
	}
	/* process n, with m states, is=initial state -- reverse list */
	if (!state_tables && Btypes[n] != N_CLAIM)
	{	for (i = 1; i < m; i++)
		{	Trans *Tx = (Trans *) 0; /* list of escapes */
			Trans *Ty = (Trans *) 0; /* its tail element */
			T1 = (Trans *) 0; /* reversed list */
			T2 = (Trans *) 0; /* its tail */
			T3 = (Trans *) 0; /* remembers possible 'else' */

			/* find unless-escapes, they should go first */
			T4 = T5 = T0 = trans[n][i];
	#ifdef HAS_UNLESS
			while (T4 && T4->e_trans) /* escapes are first in orig list */
			{	T5 = T4;	  /* remember predecessor */
				T4 = T4->nxt;
			}
	#endif
			/* T4 points to first non-escape, T5 to its parent, T0 to original list */
			if (T4 != T0)		 /* there was at least one escape */
			{	T3 = T5->nxt;		 /* start of non-escapes */
				T5->nxt = (Trans *) 0;	 /* separate */
				Tx = T0;		 /* start of the escapes */
				Ty = T5;		 /* its tail */
				T0 = T3;		 /* the rest, to be reversed */
			}
			/* T0 points to first non-escape, Tx to the list of escapes, Ty to its tail */

			/* first tail-add non-escape transitions, reversed */
			T3 = (Trans *) 0;
			for (T5 = T0; T5; T5 = T4)
			{	T4 = T5->nxt;
	#ifdef HAS_UNLESS
				if (T5->e_trans)
				{	printf("error: cannot happen!\n");
					continue;
				}
	#endif
				if (strcmp(T5->tp, "else") == 0)
				{	T3 = T5;
					T5->nxt = (Trans *) 0;
				} else
				{	T5->nxt = T1;
					if (!T1) { T2 = T5; }
					T1 = T5;
			}	}
			/* T3 points to a possible else, which is removed from the list */
			/* T1 points to the reversed list so far (without escapes) */
			/* T2 points to the tail element -- where the else should go */
			if (T2 && T3)
			{	T2->nxt = T3;	/* add else */
			} else
			{	if (T3) /* there was an else, but there's no tail */
				{	if (!T1)	/* and no reversed list */
					{	T1 = T3; /* odd, but possible */
					} else		/* even stranger */
					{	T1->nxt = T3;
			}	}	}

			/* add in the escapes, to that they appear at the front */
			if (Tx && Ty) { Ty->nxt = T1; T1 = Tx; }

			trans[n][i] = T1;
			/* reversed, with escapes first and else last */
	}	}
	if (state_tables && verbose)
	{	printf("FINAL proctype %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
	}
}
void
imed(Trans *T, int v, int n, int j)	/* set intermediate state */
{	progstate[n][T->st] |= progstate[n][v];
	accpstate[n][T->st] |= accpstate[n][v];
	stopstate[n][T->st] |= stopstate[n][v];
	mapstate[n][j] = T->st;
}
void
tagtable(int n, int m, int is, short srcln[], uchar reach[])
{	Trans *z;

	if (is >= m || !trans[n][is]
	||  is <= 0 || reach[is] == 0)
		return;
	reach[is] = 0;
	if (state_tables)
	for (z = trans[n][is]; z; z = z->nxt)
	{	if (dodot)
			dot_crack(n, is, z);
		else
			crack(n, is, z, srcln);
	}

	for (z = trans[n][is]; z; z = z->nxt)
	{
#ifdef HAS_UNLESS
		int i, j;
#endif
		tagtable(n, m, z->st, srcln, reach);
#ifdef HAS_UNLESS
		for (i = 0; i < HAS_UNLESS; i++)
		{	j = trans[n][is]->escp[i];
			if (!j) break;
			tagtable(n, m, j, srcln, reach);
		}
#endif
	}
}

extern Trans *t_id_lkup[];

void
dfs_table(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
{	Trans *z;

	if (is >= m || is <= 0 || !trans[n][is])
		return;
	if ((reach[is] & (4|8|16)) != 0)
	{	if ((reach[is] & (8|16)) == 16)	/* on stack, not yet recorded */
		{	lpstate[is] = 1;
			reach[is] |= 8; /* recorded */
			if (state_tables && verbose)
			{	printf("state %d line %d is a loopstate\n", is, srcln[is]);
		}	}
		return;
	}
	reach[is] |= (4|16);	/* visited | onstack */
	for (z = trans[n][is]; z; z = z->nxt)
	{	t_id_lkup[z->t_id] = z;
#ifdef HAS_UNLESS
		int i, j;
#endif
		dfs_table(n, m, z->st, srcln, reach, lpstate);
#ifdef HAS_UNLESS
		for (i = 0; i < HAS_UNLESS; i++)
		{	j = trans[n][is]->escp[i];
			if (!j) break;
			dfs_table(n, m, j, srcln, reach, lpstate);
		}
#endif
	}
	reach[is] &= ~16; /* no longer on stack */
}
void
do_dfs(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
{	int i;
	dfs_table(n, m, is, srcln, reach, lpstate);
	for (i = 0; i < m; i++)
		reach[i] &= ~(4|8|16);
}
void
crack(int n, int j, Trans *z, short srcln[])
{	int i;

	if (!z) return;
	printf("	state %3d -(tr %3d)-> state %3d  ",
		j, z->forw, z->st);
	printf("[id %3d tp %3d", z->t_id, z->tpe[0]);
	if (z->tpe[1]) printf(",%d", z->tpe[1]);
#ifdef HAS_UNLESS
	if (z->e_trans)
		printf(" org %3d", z->e_trans);
	else if (state_tables >= 2)
	for (i = 0; i < HAS_UNLESS; i++)
	{	if (!z->escp[i]) break;
		printf(" esc %d", z->escp[i]);
	}
#endif
	printf("]");
	printf(" [%s%s%s%s%s] %s:%d => ",
		z->atom&6?"A":z->atom&32?"D":"-",
		accpstate[n][j]?"a" :"-",
		stopstate[n][j]?"e" : "-",
		progstate[n][j]?"p" : "-",
		z->atom & 8 ?"L":"G",
		PanSource, srcln[j]);
	for (i = 0; z->tp[i]; i++)
		if (z->tp[i] == '\n')
			printf("\\n");
		else
			putchar(z->tp[i]);
	if (verbose && z->qu[0])
	{	printf("\t[");
		for (i = 0; i < 6; i++)
			if (z->qu[i])
				printf("(%d,%d)",
				z->qu[i], z->ty[i]);
		printf("]");
	}
	printf("\n");
	fflush(stdout);
}
/* spin -a m.pml; cc -o pan pan.c; ./pan -D | dot -Tps > foo.ps; ps2pdf foo.ps */
void
dot_crack(int n, int j, Trans *z)
{	int i;

	if (!z) return;
	printf("	S%d -> S%d  [color=black", j, z->st);

	if (z->atom&6) printf(",style=dashed");
	else if (z->atom&32) printf(",style=dotted");
	else if (z->atom&8) printf(",style=solid");
	else printf(",style=bold");

	printf(",label=\"");
	for (i = 0; z->tp[i]; i++)
	{	if (z->tp[i] == '\\'
		&&  z->tp[i+1] == 'n')
		{	i++; printf(" ");
		} else
		{	putchar(z->tp[i]);
	}	}
	printf("\"];\n");
	if (accpstate[n][j]) printf("  S%d [color=red,style=bold];\n", j);
	else if (progstate[n][j]) printf("  S%d [color=green,style=bold];\n", j);
	if (stopstate[n][j]) printf("  S%d [color=blue,style=bold,shape=box];\n", j);
}

#ifdef VAR_RANGES
#define BYTESIZE	32	/* 2^8 : 2^3 = 256:8 = 32 */

typedef struct Vr_Ptr {
	char	*nm;
	uchar	vals[BYTESIZE];
	struct Vr_Ptr *nxt;
} Vr_Ptr;
Vr_Ptr *ranges = (Vr_Ptr *) 0;

void
logval(char *s, int v)
{	Vr_Ptr *tmp;

	if (v<0 || v > 255) return;
	for (tmp = ranges; tmp; tmp = tmp->nxt)
		if (!strcmp(tmp->nm, s))
			goto found;
	tmp = (Vr_Ptr *) emalloc(sizeof(Vr_Ptr));
	tmp->nxt = ranges;
	ranges = tmp;
	tmp->nm = s;
found:
	tmp->vals[(v)/8] |= 1<<((v)%8);
}

void
dumpval(uchar X[], int range)
{	int w, x, i, j = -1;

	for (w = i = 0; w < range; w++)
	for (x = 0; x < 8; x++, i++)
	{
from:		if ((X[w] & (1<<x)))
		{	printf("%d", i);
			j = i;
			goto upto;
	}	}
	return;
	for (w = 0; w < range; w++)
	for (x = 0; x < 8; x++, i++)
	{
upto:		if (!(X[w] & (1<<x)))
		{	if (i-1 == j)
				printf(", ");
			else
				printf("-%d, ", i-1);
			goto from;
	}	}
	if (j >= 0 && j != 255)
		printf("-255");
}

void
dumpranges(void)
{	Vr_Ptr *tmp;
	printf("\nValues assigned within ");
	printf("interval [0..255]:\n");
	for (tmp = ranges; tmp; tmp = tmp->nxt)
	{	printf("\t%s\t: ", tmp->nm);
		dumpval(tmp->vals, BYTESIZE);
		printf("\n");
	}
}
#endif
