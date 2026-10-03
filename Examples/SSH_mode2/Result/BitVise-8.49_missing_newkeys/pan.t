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

	trans[1][7]	= settr(3409,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[1][6] = settr(3408,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(3408,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(3408,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 1][3] = settr(3405,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(3405,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[1][1]	= settr(3403,0,6,3,3,"(!((dfa_state!=3)))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached1[2] = 1;
	trans[1][2]	= settr(0,0,0,0,0,"assert(!(!((dfa_state!=3))))",0,0,0);
	trans[1][4]	= settr(3406,0,6,1,0,"(1)", 0, 2, 0);
	trans[1][5]	= settr(3407,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[1][8]	= settr(3410,0,9,1,0,"break", 0, 2, 0);
	trans[1][9]	= settr(3411,0,10,1,0,"(1)", 0, 2, 0);
	trans[1][10]	= settr(3412,0,0,4,4,"-end-", 0, 3500, 0);

	/* proctype 0: :init: */

	trans[0] = (Trans **) emalloc(3404*sizeof(Trans *));

	trans[0][1]	= settr(0,0,2,5,5,"fsm_state = 43", 1, 2, 0);
	trans[0][2]	= settr(1,0,3,6,6,"dfa_state = 4", 1, 2, 0);
	trans[0][3]	= settr(2,0,3400,7,7,"dealt = 0", 1, 2, 0);
	trans[0][3401]	= settr(3400,0,3400,1,0,".(goto)", 0, 2, 0);
	T = trans[0][3400] = settr(3399,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(3399,0,4,0,0,"DO", 0, 2, 0);
	trans[0][4]	= settr(3,0,17,1,0,"(1)", 0, 2, 0);
	T = trans[0][17] = settr(16,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(16,0,5,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(16,0,6,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(16,0,7,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(16,0,8,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(16,0,9,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(16,0,10,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(16,0,11,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(16,0,12,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(16,0,13,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(16,0,14,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(16,0,15,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(16,0,16,0,0,"IF", 0, 2, 0);
	trans[0][5]	= settr(4,0,19,8,8,"input = 27", 1, 2, 0);
	trans[0][18]	= settr(17,0,19,1,0,".(goto)", 0, 2, 0);
	trans[0][6]	= settr(5,0,19,9,9,"input = 26", 1, 2, 0);
	trans[0][7]	= settr(6,0,19,10,10,"input = 25", 1, 2, 0);
	trans[0][8]	= settr(7,0,19,11,11,"input = 24", 1, 2, 0);
	trans[0][9]	= settr(8,0,19,12,12,"input = 23", 1, 2, 0);
	trans[0][10]	= settr(9,0,19,13,13,"input = 22", 1, 2, 0);
	trans[0][11]	= settr(10,0,19,14,14,"input = 21", 1, 2, 0);
	trans[0][12]	= settr(11,0,19,15,15,"input = 20", 1, 2, 0);
	trans[0][13]	= settr(12,0,19,16,16,"input = 19", 1, 2, 0);
	trans[0][14]	= settr(13,0,19,17,17,"input = 18", 1, 2, 0);
	trans[0][15]	= settr(14,0,19,18,18,"input = 17", 1, 2, 0);
	trans[0][16]	= settr(15,0,19,19,19,"input = 16", 1, 2, 0);
	trans[0][19]	= settr(18,0,65,20,0,"printf('Input: %e\\n',input)", 1, 2, 0);
	T = trans[ 0][65] = settr(64,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(64,0,58,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][58]	= settr(57,32,63,21,21,"D_STEP13", 1, 2, 0);
	T = trans[0][63] = settr(62,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(62,0,59,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(62,0,61,0,0,"IF", 0, 2, 0);
	trans[0][59]	= settr(58,0,1,22,0,"((dealt==0))", 1, 2, 0);
	trans[0][60]	= settr(59,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][64]	= settr(63,0,66,1,0,".(goto)", 0, 2, 0);
	trans[0][61]	= settr(60,0,62,2,0,"else", 0, 2, 0);
	trans[0][62]	= settr(61,0,66,1,0,"(1)", 0, 2, 0);
	trans[0][66]	= settr(65,0,3349,23,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	T = trans[0][3349] = settr(3348,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3348,0,67,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3348,0,451,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3348,0,492,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3348,0,582,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3348,0,623,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3348,0,664,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3348,0,705,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3348,0,746,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3348,0,787,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3348,0,828,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3348,0,869,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3348,0,959,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3348,0,1000,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3348,0,1090,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3348,0,1131,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3348,0,1221,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3348,0,1262,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3348,0,1352,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3348,0,1393,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3348,0,1434,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3348,0,1475,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3348,0,1565,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3348,0,1606,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3348,0,1745,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3348,0,1884,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3348,0,2023,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3348,0,2064,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3348,0,2203,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3348,0,2293,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3348,0,2334,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3348,0,2424,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3348,0,2465,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3348,0,2506,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3348,0,2645,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3348,0,2686,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3348,0,2727,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3348,0,2866,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3348,0,2956,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3348,0,2997,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3348,0,3087,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3348,0,3226,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3348,0,3267,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3348,0,3308,0,0,"IF", 0, 2, 0);
	trans[0][67]	= settr(66,0,449,24,0,"((fsm_state==43))", 1, 2, 0);
	T = trans[0][449] = settr(448,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(448,0,68,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(448,0,71,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(448,0,74,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(448,0,77,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(448,0,80,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(448,0,132,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(448,0,135,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(448,0,187,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(448,0,239,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(448,0,291,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(448,0,343,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(448,0,395,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(448,0,447,0,0,"IF", 0, 2, 0);
	trans[0][68]	= settr(67,0,69,25,0,"((input==19))", 1, 2, 0);
	trans[0][69]	= settr(68,0,70,26,26,"fsm_state = 43", 1, 2, 0);
	trans[0][70]	= settr(69,0,3351,27,27,"output = 3", 1, 2, 0);
	trans[0][450]	= settr(449,0,3351,1,0,".(goto)", 0, 2, 0);
	trans[0][71]	= settr(70,0,72,28,0,"((input==17))", 1, 2, 0);
	trans[0][72]	= settr(71,0,73,29,29,"fsm_state = 43", 1, 2, 0);
	trans[0][73]	= settr(72,0,3351,30,30,"output = 3", 1, 2, 0);
	trans[0][74]	= settr(73,0,75,31,0,"((input==21))", 1, 2, 0);
	trans[0][75]	= settr(74,0,76,32,32,"fsm_state = 43", 1, 2, 0);
	trans[0][76]	= settr(75,0,3351,33,33,"output = 3", 1, 2, 0);
	trans[0][77]	= settr(76,0,78,34,0,"((input==16))", 1, 2, 0);
	trans[0][78]	= settr(77,0,79,35,35,"fsm_state = 43", 1, 2, 0);
	trans[0][79]	= settr(78,0,3351,36,36,"output = 3", 1, 2, 0);
	trans[0][80]	= settr(79,0,81,37,0,"((input==26))", 1, 2, 0);
	trans[0][81]	= settr(80,0,82,38,38,"fsm_state = 42", 1, 2, 0);
	trans[0][82]	= settr(81,0,83,39,39,"output = 6", 1, 2, 0);
	trans[0][83]	= settr(82,0,129,40,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][129] = settr(128,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(128,0,122,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][122]	= settr(121,32,127,41,41,"D_STEP13", 1, 2, 0);
	T = trans[0][127] = settr(126,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(126,0,123,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(126,0,125,0,0,"IF", 0, 2, 0);
	trans[0][123]	= settr(122,0,1,42,0,"((dealt==0))", 1, 2, 0);
	trans[0][124]	= settr(123,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][128]	= settr(127,0,130,1,0,".(goto)", 0, 2, 0);
	trans[0][125]	= settr(124,0,126,2,0,"else", 0, 2, 0);
	trans[0][126]	= settr(125,0,130,1,0,"(1)", 0, 2, 0);
	trans[0][130]	= settr(129,0,131,43,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][131]	= settr(130,0,3351,44,44,"output = 4", 1, 2, 0);
	trans[0][132]	= settr(131,0,133,45,0,"((input==27))", 1, 2, 0);
	trans[0][133]	= settr(132,0,134,46,46,"fsm_state = 41", 1, 2, 0);
	trans[0][134]	= settr(133,0,3351,47,47,"output = 6", 1, 2, 0);
	trans[0][135]	= settr(134,0,136,48,0,"((input==24))", 1, 2, 0);
	trans[0][136]	= settr(135,0,137,49,49,"fsm_state = 40", 1, 2, 0);
	trans[0][137]	= settr(136,0,138,50,50,"output = 6", 1, 2, 0);
	trans[0][138]	= settr(137,0,184,51,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][184] = settr(183,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(183,0,177,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][177]	= settr(176,32,182,52,52,"D_STEP13", 1, 2, 0);
	T = trans[0][182] = settr(181,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(181,0,178,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(181,0,180,0,0,"IF", 0, 2, 0);
	trans[0][178]	= settr(177,0,1,53,0,"((dealt==0))", 1, 2, 0);
	trans[0][179]	= settr(178,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][183]	= settr(182,0,185,1,0,".(goto)", 0, 2, 0);
	trans[0][180]	= settr(179,0,181,2,0,"else", 0, 2, 0);
	trans[0][181]	= settr(180,0,185,1,0,"(1)", 0, 2, 0);
	trans[0][185]	= settr(184,0,186,54,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][186]	= settr(185,0,3351,55,55,"output = 4", 1, 2, 0);
	trans[0][187]	= settr(186,0,188,56,0,"((input==18))", 1, 2, 0);
	trans[0][188]	= settr(187,0,189,57,57,"fsm_state = 40", 1, 2, 0);
	trans[0][189]	= settr(188,0,190,58,58,"output = 6", 1, 2, 0);
	trans[0][190]	= settr(189,0,236,59,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][236] = settr(235,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(235,0,229,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][229]	= settr(228,32,234,60,60,"D_STEP13", 1, 2, 0);
	T = trans[0][234] = settr(233,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(233,0,230,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(233,0,232,0,0,"IF", 0, 2, 0);
	trans[0][230]	= settr(229,0,1,61,0,"((dealt==0))", 1, 2, 0);
	trans[0][231]	= settr(230,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][235]	= settr(234,0,237,1,0,".(goto)", 0, 2, 0);
	trans[0][232]	= settr(231,0,233,2,0,"else", 0, 2, 0);
	trans[0][233]	= settr(232,0,237,1,0,"(1)", 0, 2, 0);
	trans[0][237]	= settr(236,0,238,62,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][238]	= settr(237,0,3351,63,63,"output = 4", 1, 2, 0);
	trans[0][239]	= settr(238,0,240,64,0,"((input==25))", 1, 2, 0);
	trans[0][240]	= settr(239,0,241,65,65,"fsm_state = 40", 1, 2, 0);
	trans[0][241]	= settr(240,0,242,66,66,"output = 6", 1, 2, 0);
	trans[0][242]	= settr(241,0,288,67,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][288] = settr(287,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(287,0,281,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][281]	= settr(280,32,286,68,68,"D_STEP13", 1, 2, 0);
	T = trans[0][286] = settr(285,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(285,0,282,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(285,0,284,0,0,"IF", 0, 2, 0);
	trans[0][282]	= settr(281,0,1,69,0,"((dealt==0))", 1, 2, 0);
	trans[0][283]	= settr(282,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][287]	= settr(286,0,289,1,0,".(goto)", 0, 2, 0);
	trans[0][284]	= settr(283,0,285,2,0,"else", 0, 2, 0);
	trans[0][285]	= settr(284,0,289,1,0,"(1)", 0, 2, 0);
	trans[0][289]	= settr(288,0,290,70,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][290]	= settr(289,0,3351,71,71,"output = 4", 1, 2, 0);
	trans[0][291]	= settr(290,0,292,72,0,"((input==23))", 1, 2, 0);
	trans[0][292]	= settr(291,0,293,73,73,"fsm_state = 40", 1, 2, 0);
	trans[0][293]	= settr(292,0,294,74,74,"output = 6", 1, 2, 0);
	trans[0][294]	= settr(293,0,340,75,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][340] = settr(339,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(339,0,333,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][333]	= settr(332,32,338,76,76,"D_STEP13", 1, 2, 0);
	T = trans[0][338] = settr(337,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(337,0,334,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(337,0,336,0,0,"IF", 0, 2, 0);
	trans[0][334]	= settr(333,0,1,77,0,"((dealt==0))", 1, 2, 0);
	trans[0][335]	= settr(334,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][339]	= settr(338,0,341,1,0,".(goto)", 0, 2, 0);
	trans[0][336]	= settr(335,0,337,2,0,"else", 0, 2, 0);
	trans[0][337]	= settr(336,0,341,1,0,"(1)", 0, 2, 0);
	trans[0][341]	= settr(340,0,342,78,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][342]	= settr(341,0,3351,79,79,"output = 4", 1, 2, 0);
	trans[0][343]	= settr(342,0,344,80,0,"((input==22))", 1, 2, 0);
	trans[0][344]	= settr(343,0,345,81,81,"fsm_state = 40", 1, 2, 0);
	trans[0][345]	= settr(344,0,346,82,82,"output = 6", 1, 2, 0);
	trans[0][346]	= settr(345,0,392,83,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][392] = settr(391,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(391,0,385,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][385]	= settr(384,32,390,84,84,"D_STEP13", 1, 2, 0);
	T = trans[0][390] = settr(389,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(389,0,386,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(389,0,388,0,0,"IF", 0, 2, 0);
	trans[0][386]	= settr(385,0,1,85,0,"((dealt==0))", 1, 2, 0);
	trans[0][387]	= settr(386,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][391]	= settr(390,0,393,1,0,".(goto)", 0, 2, 0);
	trans[0][388]	= settr(387,0,389,2,0,"else", 0, 2, 0);
	trans[0][389]	= settr(388,0,393,1,0,"(1)", 0, 2, 0);
	trans[0][393]	= settr(392,0,394,86,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][394]	= settr(393,0,3351,87,87,"output = 4", 1, 2, 0);
	trans[0][395]	= settr(394,0,396,88,0,"((input==20))", 1, 2, 0);
	trans[0][396]	= settr(395,0,397,89,89,"fsm_state = 40", 1, 2, 0);
	trans[0][397]	= settr(396,0,398,90,90,"output = 6", 1, 2, 0);
	trans[0][398]	= settr(397,0,444,91,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][444] = settr(443,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(443,0,437,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][437]	= settr(436,32,442,92,92,"D_STEP13", 1, 2, 0);
	T = trans[0][442] = settr(441,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(441,0,438,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(441,0,440,0,0,"IF", 0, 2, 0);
	trans[0][438]	= settr(437,0,1,93,0,"((dealt==0))", 1, 2, 0);
	trans[0][439]	= settr(438,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][443]	= settr(442,0,445,1,0,".(goto)", 0, 2, 0);
	trans[0][440]	= settr(439,0,441,2,0,"else", 0, 2, 0);
	trans[0][441]	= settr(440,0,445,1,0,"(1)", 0, 2, 0);
	trans[0][445]	= settr(444,0,446,94,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][446]	= settr(445,0,3351,95,95,"output = 4", 1, 2, 0);
	trans[0][447]	= settr(446,0,17,2,0,"else", 0, 2, 0);
	trans[0][448]	= settr(447,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3350]	= settr(3349,0,3351,1,0,".(goto)", 0, 2, 0);
	trans[0][451]	= settr(450,0,490,96,0,"((fsm_state==42))", 1, 2, 0);
	T = trans[0][490] = settr(489,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(489,0,452,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(489,0,455,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(489,0,458,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(489,0,461,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(489,0,464,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(489,0,467,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(489,0,470,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(489,0,473,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(489,0,476,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(489,0,479,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(489,0,482,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(489,0,485,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(489,0,488,0,0,"IF", 0, 2, 0);
	trans[0][452]	= settr(451,0,453,97,0,"((input==24))", 1, 2, 0);
	trans[0][453]	= settr(452,0,454,98,98,"fsm_state = 42", 1, 2, 0);
	trans[0][454]	= settr(453,0,3351,99,99,"output = 9", 1, 2, 0);
	trans[0][491]	= settr(490,0,3351,1,0,".(goto)", 0, 2, 0);
	trans[0][455]	= settr(454,0,456,100,0,"((input==18))", 1, 2, 0);
	trans[0][456]	= settr(455,0,457,101,101,"fsm_state = 42", 1, 2, 0);
	trans[0][457]	= settr(456,0,3351,102,102,"output = 9", 1, 2, 0);
	trans[0][458]	= settr(457,0,459,103,0,"((input==25))", 1, 2, 0);
	trans[0][459]	= settr(458,0,460,104,104,"fsm_state = 42", 1, 2, 0);
	trans[0][460]	= settr(459,0,3351,105,105,"output = 9", 1, 2, 0);
	trans[0][461]	= settr(460,0,462,106,0,"((input==19))", 1, 2, 0);
	trans[0][462]	= settr(461,0,463,107,107,"fsm_state = 42", 1, 2, 0);
	trans[0][463]	= settr(462,0,3351,108,108,"output = 9", 1, 2, 0);
	trans[0][464]	= settr(463,0,465,109,0,"((input==26))", 1, 2, 0);
	trans[0][465]	= settr(464,0,466,110,110,"fsm_state = 42", 1, 2, 0);
	trans[0][466]	= settr(465,0,3351,111,111,"output = 5", 1, 2, 0);
	trans[0][467]	= settr(466,0,468,112,0,"((input==17))", 1, 2, 0);
	trans[0][468]	= settr(467,0,469,113,113,"fsm_state = 42", 1, 2, 0);
	trans[0][469]	= settr(468,0,3351,114,114,"output = 9", 1, 2, 0);
	trans[0][470]	= settr(469,0,471,115,0,"((input==23))", 1, 2, 0);
	trans[0][471]	= settr(470,0,472,116,116,"fsm_state = 42", 1, 2, 0);
	trans[0][472]	= settr(471,0,3351,117,117,"output = 9", 1, 2, 0);
	trans[0][473]	= settr(472,0,474,118,0,"((input==22))", 1, 2, 0);
	trans[0][474]	= settr(473,0,475,119,119,"fsm_state = 42", 1, 2, 0);
	trans[0][475]	= settr(474,0,3351,120,120,"output = 9", 1, 2, 0);
	trans[0][476]	= settr(475,0,477,121,0,"((input==27))", 1, 2, 0);
	trans[0][477]	= settr(476,0,478,122,122,"fsm_state = 42", 1, 2, 0);
	trans[0][478]	= settr(477,0,3351,123,123,"output = 9", 1, 2, 0);
	trans[0][479]	= settr(478,0,480,124,0,"((input==16))", 1, 2, 0);
	trans[0][480]	= settr(479,0,481,125,125,"fsm_state = 42", 1, 2, 0);
	trans[0][481]	= settr(480,0,3351,126,126,"output = 9", 1, 2, 0);
	trans[0][482]	= settr(481,0,483,127,0,"((input==20))", 1, 2, 0);
	trans[0][483]	= settr(482,0,484,128,128,"fsm_state = 42", 1, 2, 0);
	trans[0][484]	= settr(483,0,3351,129,129,"output = 9", 1, 2, 0);
	trans[0][485]	= settr(484,0,486,130,0,"((input==21))", 1, 2, 0);
	trans[0][486]	= settr(485,0,487,131,131,"fsm_state = 40", 1, 2, 0);
	trans[0][487]	= settr(486,0,3351,132,132,"output = 9", 1, 2, 0);
	trans[0][488]	= settr(487,0,17,2,0,"else", 0, 2, 0);
	trans[0][489]	= settr(488,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][492]	= settr(491,0,580,133,0,"((fsm_state==41))", 1, 2, 0);
	T = trans[0][580] = settr(579,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(579,0,493,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(579,0,496,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(579,0,499,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(579,0,502,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(579,0,505,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(579,0,508,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(579,0,511,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(579,0,514,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(579,0,517,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(579,0,520,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(579,0,523,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(579,0,575,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(579,0,578,0,0,"IF", 0, 2, 0);
	trans[0][493]	= settr(492,0,494,134,0,"((input==26))", 1, 2, 0);
	trans[0][494]	= settr(493,0,495,135,135,"fsm_state = 42", 1, 2, 0);
	trans[0][495]	= settr(494,0,3351,136,136,"output = 4", 1, 2, 0);
	trans[0][581]	= settr(580,0,3351,1,0,".(goto)", 0, 2, 0);
	trans[0][496]	= settr(495,0,497,137,0,"((input==19))", 1, 2, 0);
	trans[0][497]	= settr(496,0,498,138,138,"fsm_state = 41", 1, 2, 0);
	trans[0][498]	= settr(497,0,3351,139,139,"output = 3", 1, 2, 0);
	trans[0][499]	= settr(498,0,500,140,0,"((input==17))", 1, 2, 0);
	trans[0][500]	= settr(499,0,501,141,141,"fsm_state = 41", 1, 2, 0);
	trans[0][501]	= settr(500,0,3351,142,142,"output = 3", 1, 2, 0);
	trans[0][502]	= settr(501,0,503,143,0,"((input==21))", 1, 2, 0);
	trans[0][503]	= settr(502,0,504,144,144,"fsm_state = 41", 1, 2, 0);
	trans[0][504]	= settr(503,0,3351,145,145,"output = 3", 1, 2, 0);
	trans[0][505]	= settr(504,0,506,146,0,"((input==16))", 1, 2, 0);
	trans[0][506]	= settr(505,0,507,147,147,"fsm_state = 41", 1, 2, 0);
	trans[0][507]	= settr(506,0,3351,148,148,"output = 3", 1, 2, 0);
	trans[0][508]	= settr(507,0,509,149,0,"((input==24))", 1, 2, 0);
	trans[0][509]	= settr(508,0,510,150,150,"fsm_state = 40", 1, 2, 0);
	trans[0][510]	= settr(509,0,3351,151,151,"output = 4", 1, 2, 0);
	trans[0][511]	= settr(510,0,512,152,0,"((input==23))", 1, 2, 0);
	trans[0][512]	= settr(511,0,513,153,153,"fsm_state = 40", 1, 2, 0);
	trans[0][513]	= settr(512,0,3351,154,154,"output = 4", 1, 2, 0);
	trans[0][514]	= settr(513,0,515,155,0,"((input==22))", 1, 2, 0);
	trans[0][515]	= settr(514,0,516,156,156,"fsm_state = 40", 1, 2, 0);
	trans[0][516]	= settr(515,0,3351,157,157,"output = 4", 1, 2, 0);
	trans[0][517]	= settr(516,0,518,158,0,"((input==27))", 1, 2, 0);
	trans[0][518]	= settr(517,0,519,159,159,"fsm_state = 40", 1, 2, 0);
	trans[0][519]	= settr(518,0,3351,160,160,"output = 4", 1, 2, 0);
	trans[0][520]	= settr(519,0,521,161,0,"((input==20))", 1, 2, 0);
	trans[0][521]	= settr(520,0,522,162,162,"fsm_state = 40", 1, 2, 0);
	trans[0][522]	= settr(521,0,3351,163,163,"output = 4", 1, 2, 0);
	trans[0][523]	= settr(522,0,524,164,0,"((input==18))", 1, 2, 0);
	trans[0][524]	= settr(523,0,525,165,165,"fsm_state = 39", 1, 2, 0);
	trans[0][525]	= settr(524,0,526,166,166,"output = 8", 1, 2, 0);
	trans[0][526]	= settr(525,0,572,167,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][572] = settr(571,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(571,0,565,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][565]	= settr(564,32,570,168,168,"D_STEP13", 1, 2, 0);
	T = trans[0][570] = settr(569,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(569,0,566,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(569,0,568,0,0,"IF", 0, 2, 0);
	trans[0][566]	= settr(565,0,1,169,0,"((dealt==0))", 1, 2, 0);
	trans[0][567]	= settr(566,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][571]	= settr(570,0,573,1,0,".(goto)", 0, 2, 0);
	trans[0][568]	= settr(567,0,569,2,0,"else", 0, 2, 0);
	trans[0][569]	= settr(568,0,573,1,0,"(1)", 0, 2, 0);
	trans[0][573]	= settr(572,0,574,170,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][574]	= settr(573,0,3351,171,171,"output = 1", 1, 2, 0);
	trans[0][575]	= settr(574,0,576,172,0,"((input==25))", 1, 2, 0);
	trans[0][576]	= settr(575,0,17,173,173,"fsm_state = 38", 1, 2, 0);
	trans[0][577]	= settr(576,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][578]	= settr(577,0,17,2,0,"else", 0, 2, 0);
	trans[0][579]	= settr(578,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][582]	= settr(581,0,621,174,0,"((fsm_state==40))", 1, 2, 0);
	T = trans[0][621] = settr(620,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(620,0,583,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(620,0,586,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(620,0,589,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(620,0,592,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(620,0,595,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(620,0,598,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(620,0,601,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(620,0,604,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(620,0,607,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(620,0,610,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(620,0,613,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(620,0,616,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(620,0,619,0,0,"IF", 0, 2, 0);
	trans[0][583]	= settr(582,0,584,175,0,"((input==26))", 1, 2, 0);
	trans[0][584]	= settr(583,0,585,176,176,"fsm_state = 42", 1, 2, 0);
	trans[0][585]	= settr(584,0,3351,177,177,"output = 9", 1, 2, 0);
	trans[0][622]	= settr(621,0,3351,1,0,".(goto)", 0, 2, 0);
	trans[0][586]	= settr(585,0,587,178,0,"((input==24))", 1, 2, 0);
	trans[0][587]	= settr(586,0,588,179,179,"fsm_state = 40", 1, 2, 0);
	trans[0][588]	= settr(587,0,3351,180,180,"output = 9", 1, 2, 0);
	trans[0][589]	= settr(588,0,590,181,0,"((input==18))", 1, 2, 0);
	trans[0][590]	= settr(589,0,591,182,182,"fsm_state = 40", 1, 2, 0);
	trans[0][591]	= settr(590,0,3351,183,183,"output = 9", 1, 2, 0);
	trans[0][592]	= settr(591,0,593,184,0,"((input==25))", 1, 2, 0);
	trans[0][593]	= settr(592,0,594,185,185,"fsm_state = 40", 1, 2, 0);
	trans[0][594]	= settr(593,0,3351,186,186,"output = 9", 1, 2, 0);
	trans[0][595]	= settr(594,0,596,187,0,"((input==19))", 1, 2, 0);
	trans[0][596]	= settr(595,0,597,188,188,"fsm_state = 40", 1, 2, 0);
	trans[0][597]	= settr(596,0,3351,189,189,"output = 3", 1, 2, 0);
	trans[0][598]	= settr(597,0,599,190,0,"((input==17))", 1, 2, 0);
	trans[0][599]	= settr(598,0,600,191,191,"fsm_state = 40", 1, 2, 0);
	trans[0][600]	= settr(599,0,3351,192,192,"output = 3", 1, 2, 0);
	trans[0][601]	= settr(600,0,602,193,0,"((input==23))", 1, 2, 0);
	trans[0][602]	= settr(601,0,603,194,194,"fsm_state = 40", 1, 2, 0);
	trans[0][603]	= settr(602,0,3351,195,195,"output = 9", 1, 2, 0);
	trans[0][604]	= settr(603,0,605,196,0,"((input==21))", 1, 2, 0);
	trans[0][605]	= settr(604,0,606,197,197,"fsm_state = 40", 1, 2, 0);
	trans[0][606]	= settr(605,0,3351,198,198,"output = 3", 1, 2, 0);
	trans[0][607]	= settr(606,0,608,199,0,"((input==22))", 1, 2, 0);
	trans[0][608]	= settr(607,0,609,200,200,"fsm_state = 40", 1, 2, 0);
	trans[0][609]	= settr(608,0,3351,201,201,"output = 9", 1, 2, 0);
	trans[0][610]	= settr(609,0,611,202,0,"((input==27))", 1, 2, 0);
	trans[0][611]	= settr(610,0,612,203,203,"fsm_state = 40", 1, 2, 0);
	trans[0][612]	= settr(611,0,3351,204,204,"output = 9", 1, 2, 0);
	trans[0][613]	= settr(612,0,614,205,0,"((input==16))", 1, 2, 0);
	trans[0][614]	= settr(613,0,615,206,206,"fsm_state = 40", 1, 2, 0);
	trans[0][615]	= settr(614,0,3351,207,207,"output = 3", 1, 2, 0);
	trans[0][616]	= settr(615,0,617,208,0,"((input==20))", 1, 2, 0);
	trans[0][617]	= settr(616,0,618,209,209,"fsm_state = 40", 1, 2, 0);
	trans[0][618]	= settr(617,0,3351,210,210,"output = 9", 1, 2, 0);
	trans[0][619]	= settr(618,0,17,2,0,"else", 0, 2, 0);
	trans[0][620]	= settr(619,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][623]	= settr(622,0,662,211,0,"((fsm_state==39))", 1, 2, 0);
	T = trans[0][662] = settr(661,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(661,0,624,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(661,0,627,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(661,0,630,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(661,0,633,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(661,0,636,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(661,0,639,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(661,0,642,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(661,0,645,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(661,0,648,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(661,0,651,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(661,0,654,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(661,0,657,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(661,0,660,0,0,"IF", 0, 2, 0);
	trans[0][624]	= settr(623,0,625,212,0,"((input==26))", 1, 2, 0);
	trans[0][625]	= settr(624,0,626,213,213,"fsm_state = 42", 1, 2, 0);
	trans[0][626]	= settr(625,0,3351,214,214,"output = 4", 1, 2, 0);
	trans[0][663]	= settr(662,0,3351,1,0,".(goto)", 0, 2, 0);
	trans[0][627]	= settr(626,0,628,215,0,"((input==24))", 1, 2, 0);
	trans[0][628]	= settr(627,0,629,216,216,"fsm_state = 40", 1, 2, 0);
	trans[0][629]	= settr(628,0,3351,217,217,"output = 4", 1, 2, 0);
	trans[0][630]	= settr(629,0,631,218,0,"((input==23))", 1, 2, 0);
	trans[0][631]	= settr(630,0,632,219,219,"fsm_state = 40", 1, 2, 0);
	trans[0][632]	= settr(631,0,3351,220,220,"output = 4", 1, 2, 0);
	trans[0][633]	= settr(632,0,634,221,0,"((input==22))", 1, 2, 0);
	trans[0][634]	= settr(633,0,635,222,222,"fsm_state = 40", 1, 2, 0);
	trans[0][635]	= settr(634,0,3351,223,223,"output = 4", 1, 2, 0);
	trans[0][636]	= settr(635,0,637,224,0,"((input==27))", 1, 2, 0);
	trans[0][637]	= settr(636,0,638,225,225,"fsm_state = 40", 1, 2, 0);
	trans[0][638]	= settr(637,0,3351,226,226,"output = 4", 1, 2, 0);
	trans[0][639]	= settr(638,0,640,227,0,"((input==20))", 1, 2, 0);
	trans[0][640]	= settr(639,0,641,228,228,"fsm_state = 40", 1, 2, 0);
	trans[0][641]	= settr(640,0,3351,229,229,"output = 4", 1, 2, 0);
	trans[0][642]	= settr(641,0,643,230,0,"((input==18))", 1, 2, 0);
	trans[0][643]	= settr(642,0,17,231,231,"fsm_state = 39", 1, 2, 0);
	trans[0][644]	= settr(643,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][645]	= settr(644,0,646,232,0,"((input==19))", 1, 2, 0);
	trans[0][646]	= settr(645,0,647,233,233,"fsm_state = 39", 1, 2, 0);
	trans[0][647]	= settr(646,0,3351,234,234,"output = 3", 1, 2, 0);
	trans[0][648]	= settr(647,0,649,235,0,"((input==17))", 1, 2, 0);
	trans[0][649]	= settr(648,0,650,236,236,"fsm_state = 39", 1, 2, 0);
	trans[0][650]	= settr(649,0,3351,237,237,"output = 3", 1, 2, 0);
	trans[0][651]	= settr(650,0,652,238,0,"((input==21))", 1, 2, 0);
	trans[0][652]	= settr(651,0,653,239,239,"fsm_state = 39", 1, 2, 0);
	trans[0][653]	= settr(652,0,3351,240,240,"output = 3", 1, 2, 0);
	trans[0][654]	= settr(653,0,655,241,0,"((input==16))", 1, 2, 0);
	trans[0][655]	= settr(654,0,656,242,242,"fsm_state = 39", 1, 2, 0);
	trans[0][656]	= settr(655,0,3351,243,243,"output = 3", 1, 2, 0);
	trans[0][657]	= settr(656,0,658,244,0,"((input==25))", 1, 2, 0);
	trans[0][658]	= settr(657,0,17,245,245,"fsm_state = 37", 1, 2, 0);
	trans[0][659]	= settr(658,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][660]	= settr(659,0,17,2,0,"else", 0, 2, 0);
	trans[0][661]	= settr(660,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][664]	= settr(663,0,703,246,0,"((fsm_state==38))", 1, 2, 0);
	T = trans[0][703] = settr(702,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(702,0,665,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(702,0,668,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(702,0,671,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(702,0,674,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(702,0,677,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(702,0,680,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(702,0,683,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(702,0,686,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(702,0,689,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(702,0,692,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(702,0,695,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(702,0,698,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(702,0,701,0,0,"IF", 0, 2, 0);
	trans[0][665]	= settr(664,0,666,247,0,"((input==24))", 1, 2, 0);
	trans[0][666]	= settr(665,0,17,248,248,"fsm_state = 38", 1, 2, 0);
	trans[0][667]	= settr(666,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][704]	= settr(703,0,3351,1,0,".(goto)", 0, 2, 0);
	trans[0][668]	= settr(667,0,669,249,0,"((input==18))", 1, 2, 0);
	trans[0][669]	= settr(668,0,17,250,250,"fsm_state = 38", 1, 2, 0);
	trans[0][670]	= settr(669,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][671]	= settr(670,0,672,251,0,"((input==25))", 1, 2, 0);
	trans[0][672]	= settr(671,0,17,252,252,"fsm_state = 38", 1, 2, 0);
	trans[0][673]	= settr(672,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][674]	= settr(673,0,675,253,0,"((input==19))", 1, 2, 0);
	trans[0][675]	= settr(674,0,676,254,254,"fsm_state = 38", 1, 2, 0);
	trans[0][676]	= settr(675,0,3351,255,255,"output = 3", 1, 2, 0);
	trans[0][677]	= settr(676,0,678,256,0,"((input==17))", 1, 2, 0);
	trans[0][678]	= settr(677,0,679,257,257,"fsm_state = 38", 1, 2, 0);
	trans[0][679]	= settr(678,0,3351,258,258,"output = 3", 1, 2, 0);
	trans[0][680]	= settr(679,0,681,259,0,"((input==23))", 1, 2, 0);
	trans[0][681]	= settr(680,0,17,260,260,"fsm_state = 38", 1, 2, 0);
	trans[0][682]	= settr(681,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][683]	= settr(682,0,684,261,0,"((input==21))", 1, 2, 0);
	trans[0][684]	= settr(683,0,685,262,262,"fsm_state = 38", 1, 2, 0);
	trans[0][685]	= settr(684,0,3351,263,263,"output = 3", 1, 2, 0);
	trans[0][686]	= settr(685,0,687,264,0,"((input==22))", 1, 2, 0);
	trans[0][687]	= settr(686,0,17,265,265,"fsm_state = 38", 1, 2, 0);
	trans[0][688]	= settr(687,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][689]	= settr(688,0,690,266,0,"((input==27))", 1, 2, 0);
	trans[0][690]	= settr(689,0,17,267,267,"fsm_state = 38", 1, 2, 0);
	trans[0][691]	= settr(690,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][692]	= settr(691,0,693,268,0,"((input==16))", 1, 2, 0);
	trans[0][693]	= settr(692,0,694,269,269,"fsm_state = 38", 1, 2, 0);
	trans[0][694]	= settr(693,0,3351,270,270,"output = 3", 1, 2, 0);
	trans[0][695]	= settr(694,0,696,271,0,"((input==20))", 1, 2, 0);
	trans[0][696]	= settr(695,0,17,272,272,"fsm_state = 38", 1, 2, 0);
	trans[0][697]	= settr(696,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][698]	= settr(697,0,699,273,0,"((input==26))", 1, 2, 0);
	trans[0][699]	= settr(698,0,17,274,274,"fsm_state = 36", 1, 2, 0);
	trans[0][700]	= settr(699,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][701]	= settr(700,0,17,2,0,"else", 0, 2, 0);
	trans[0][702]	= settr(701,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][705]	= settr(704,0,744,275,0,"((fsm_state==37))", 1, 2, 0);
	T = trans[0][744] = settr(743,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(743,0,706,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(743,0,709,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(743,0,712,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(743,0,715,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(743,0,718,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(743,0,721,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(743,0,724,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(743,0,727,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(743,0,730,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(743,0,733,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(743,0,736,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(743,0,739,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(743,0,742,0,0,"IF", 0, 2, 0);
	trans[0][706]	= settr(705,0,707,276,0,"((input==18))", 1, 2, 0);
	trans[0][707]	= settr(706,0,708,277,277,"fsm_state = 40", 1, 2, 0);
	trans[0][708]	= settr(707,0,3351,278,278,"output = 4", 1, 2, 0);
	trans[0][745]	= settr(744,0,3351,1,0,".(goto)", 0, 2, 0);
	trans[0][709]	= settr(708,0,710,279,0,"((input==25))", 1, 2, 0);
	trans[0][710]	= settr(709,0,711,280,280,"fsm_state = 40", 1, 2, 0);
	trans[0][711]	= settr(710,0,3351,281,281,"output = 4", 1, 2, 0);
	trans[0][712]	= settr(711,0,713,282,0,"((input==22))", 1, 2, 0);
	trans[0][713]	= settr(712,0,714,283,283,"fsm_state = 40", 1, 2, 0);
	trans[0][714]	= settr(713,0,3351,284,284,"output = 4", 1, 2, 0);
	trans[0][715]	= settr(714,0,716,285,0,"((input==24))", 1, 2, 0);
	trans[0][716]	= settr(715,0,17,286,286,"fsm_state = 37", 1, 2, 0);
	trans[0][717]	= settr(716,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][718]	= settr(717,0,719,287,0,"((input==19))", 1, 2, 0);
	trans[0][719]	= settr(718,0,720,288,288,"fsm_state = 37", 1, 2, 0);
	trans[0][720]	= settr(719,0,3351,289,289,"output = 3", 1, 2, 0);
	trans[0][721]	= settr(720,0,722,290,0,"((input==17))", 1, 2, 0);
	trans[0][722]	= settr(721,0,723,291,291,"fsm_state = 37", 1, 2, 0);
	trans[0][723]	= settr(722,0,3351,292,292,"output = 3", 1, 2, 0);
	trans[0][724]	= settr(723,0,725,293,0,"((input==23))", 1, 2, 0);
	trans[0][725]	= settr(724,0,17,294,294,"fsm_state = 37", 1, 2, 0);
	trans[0][726]	= settr(725,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][727]	= settr(726,0,728,295,0,"((input==21))", 1, 2, 0);
	trans[0][728]	= settr(727,0,729,296,296,"fsm_state = 37", 1, 2, 0);
	trans[0][729]	= settr(728,0,3351,297,297,"output = 3", 1, 2, 0);
	trans[0][730]	= settr(729,0,731,298,0,"((input==16))", 1, 2, 0);
	trans[0][731]	= settr(730,0,732,299,299,"fsm_state = 37", 1, 2, 0);
	trans[0][732]	= settr(731,0,3351,300,300,"output = 3", 1, 2, 0);
	trans[0][733]	= settr(732,0,734,301,0,"((input==26))", 1, 2, 0);
	trans[0][734]	= settr(733,0,17,302,302,"fsm_state = 35", 1, 2, 0);
	trans[0][735]	= settr(734,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][736]	= settr(735,0,737,303,0,"((input==20))", 1, 2, 0);
	trans[0][737]	= settr(736,0,738,304,304,"fsm_state = 34", 1, 2, 0);
	trans[0][738]	= settr(737,0,3351,305,305,"output = 13", 1, 2, 0);
	trans[0][739]	= settr(738,0,740,306,0,"((input==27))", 1, 2, 0);
	trans[0][740]	= settr(739,0,741,307,307,"fsm_state = 33", 1, 2, 0);
	trans[0][741]	= settr(740,0,3351,308,308,"output = 6", 1, 2, 0);
	trans[0][742]	= settr(741,0,17,2,0,"else", 0, 2, 0);
	trans[0][743]	= settr(742,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][746]	= settr(745,0,785,309,0,"((fsm_state==36))", 1, 2, 0);
	T = trans[0][785] = settr(784,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(784,0,747,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(784,0,750,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(784,0,753,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(784,0,756,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(784,0,759,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(784,0,762,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(784,0,765,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(784,0,768,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(784,0,771,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(784,0,774,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(784,0,777,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(784,0,780,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(784,0,783,0,0,"IF", 0, 2, 0);
	trans[0][747]	= settr(746,0,748,310,0,"((input==21))", 1, 2, 0);
	trans[0][748]	= settr(747,0,17,311,311,"fsm_state = 38", 1, 2, 0);
	trans[0][749]	= settr(748,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][786]	= settr(785,0,3351,1,0,".(goto)", 0, 2, 0);
	trans[0][750]	= settr(749,0,751,312,0,"((input==24))", 1, 2, 0);
	trans[0][751]	= settr(750,0,17,313,313,"fsm_state = 36", 1, 2, 0);
	trans[0][752]	= settr(751,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][753]	= settr(752,0,754,314,0,"((input==18))", 1, 2, 0);
	trans[0][754]	= settr(753,0,17,315,315,"fsm_state = 36", 1, 2, 0);
	trans[0][755]	= settr(754,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][756]	= settr(755,0,757,316,0,"((input==25))", 1, 2, 0);
	trans[0][757]	= settr(756,0,17,317,317,"fsm_state = 36", 1, 2, 0);
	trans[0][758]	= settr(757,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][759]	= settr(758,0,760,318,0,"((input==19))", 1, 2, 0);
	trans[0][760]	= settr(759,0,17,319,319,"fsm_state = 36", 1, 2, 0);
	trans[0][761]	= settr(760,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][762]	= settr(761,0,763,320,0,"((input==26))", 1, 2, 0);
	trans[0][763]	= settr(762,0,764,321,321,"fsm_state = 36", 1, 2, 0);
	trans[0][764]	= settr(763,0,3351,322,322,"output = 5", 1, 2, 0);
	trans[0][765]	= settr(764,0,766,323,0,"((input==17))", 1, 2, 0);
	trans[0][766]	= settr(765,0,17,324,324,"fsm_state = 36", 1, 2, 0);
	trans[0][767]	= settr(766,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][768]	= settr(767,0,769,325,0,"((input==23))", 1, 2, 0);
	trans[0][769]	= settr(768,0,17,326,326,"fsm_state = 36", 1, 2, 0);
	trans[0][770]	= settr(769,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][771]	= settr(770,0,772,327,0,"((input==22))", 1, 2, 0);
	trans[0][772]	= settr(771,0,17,328,328,"fsm_state = 36", 1, 2, 0);
	trans[0][773]	= settr(772,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][774]	= settr(773,0,775,329,0,"((input==27))", 1, 2, 0);
	trans[0][775]	= settr(774,0,17,330,330,"fsm_state = 36", 1, 2, 0);
	trans[0][776]	= settr(775,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][777]	= settr(776,0,778,331,0,"((input==16))", 1, 2, 0);
	trans[0][778]	= settr(777,0,17,332,332,"fsm_state = 36", 1, 2, 0);
	trans[0][779]	= settr(778,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][780]	= settr(779,0,781,333,0,"((input==20))", 1, 2, 0);
	trans[0][781]	= settr(780,0,17,334,334,"fsm_state = 36", 1, 2, 0);
	trans[0][782]	= settr(781,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][783]	= settr(782,0,17,2,0,"else", 0, 2, 0);
	trans[0][784]	= settr(783,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][787]	= settr(786,0,826,335,0,"((fsm_state==35))", 1, 2, 0);
	T = trans[0][826] = settr(825,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(825,0,788,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(825,0,791,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(825,0,794,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(825,0,797,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(825,0,800,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(825,0,803,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(825,0,806,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(825,0,809,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(825,0,812,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(825,0,815,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(825,0,818,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(825,0,821,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(825,0,824,0,0,"IF", 0, 2, 0);
	trans[0][788]	= settr(787,0,789,336,0,"((input==18))", 1, 2, 0);
	trans[0][789]	= settr(788,0,790,337,337,"fsm_state = 42", 1, 2, 0);
	trans[0][790]	= settr(789,0,3351,338,338,"output = 4", 1, 2, 0);
	trans[0][827]	= settr(826,0,3351,1,0,".(goto)", 0, 2, 0);
	trans[0][791]	= settr(790,0,792,339,0,"((input==25))", 1, 2, 0);
	trans[0][792]	= settr(791,0,793,340,340,"fsm_state = 42", 1, 2, 0);
	trans[0][793]	= settr(792,0,3351,341,341,"output = 4", 1, 2, 0);
	trans[0][794]	= settr(793,0,795,342,0,"((input==22))", 1, 2, 0);
	trans[0][795]	= settr(794,0,796,343,343,"fsm_state = 42", 1, 2, 0);
	trans[0][796]	= settr(795,0,3351,344,344,"output = 4", 1, 2, 0);
	trans[0][797]	= settr(796,0,798,345,0,"((input==21))", 1, 2, 0);
	trans[0][798]	= settr(797,0,17,346,346,"fsm_state = 37", 1, 2, 0);
	trans[0][799]	= settr(798,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][800]	= settr(799,0,801,347,0,"((input==24))", 1, 2, 0);
	trans[0][801]	= settr(800,0,17,348,348,"fsm_state = 35", 1, 2, 0);
	trans[0][802]	= settr(801,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][803]	= settr(802,0,804,349,0,"((input==19))", 1, 2, 0);
	trans[0][804]	= settr(803,0,17,350,350,"fsm_state = 35", 1, 2, 0);
	trans[0][805]	= settr(804,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][806]	= settr(805,0,807,351,0,"((input==26))", 1, 2, 0);
	trans[0][807]	= settr(806,0,808,352,352,"fsm_state = 35", 1, 2, 0);
	trans[0][808]	= settr(807,0,3351,353,353,"output = 5", 1, 2, 0);
	trans[0][809]	= settr(808,0,810,354,0,"((input==17))", 1, 2, 0);
	trans[0][810]	= settr(809,0,17,355,355,"fsm_state = 35", 1, 2, 0);
	trans[0][811]	= settr(810,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][812]	= settr(811,0,813,356,0,"((input==23))", 1, 2, 0);
	trans[0][813]	= settr(812,0,17,357,357,"fsm_state = 35", 1, 2, 0);
	trans[0][814]	= settr(813,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][815]	= settr(814,0,816,358,0,"((input==16))", 1, 2, 0);
	trans[0][816]	= settr(815,0,17,359,359,"fsm_state = 35", 1, 2, 0);
	trans[0][817]	= settr(816,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][818]	= settr(817,0,819,360,0,"((input==20))", 1, 2, 0);
	trans[0][819]	= settr(818,0,820,361,361,"fsm_state = 32", 1, 2, 0);
	trans[0][820]	= settr(819,0,3351,362,362,"output = 13", 1, 2, 0);
	trans[0][821]	= settr(820,0,822,363,0,"((input==27))", 1, 2, 0);
	trans[0][822]	= settr(821,0,823,364,364,"fsm_state = 31", 1, 2, 0);
	trans[0][823]	= settr(822,0,3351,365,365,"output = 6", 1, 2, 0);
	trans[0][824]	= settr(823,0,17,2,0,"else", 0, 2, 0);
	trans[0][825]	= settr(824,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][828]	= settr(827,0,867,366,0,"((fsm_state==34))", 1, 2, 0);
	T = trans[0][867] = settr(866,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(866,0,829,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(866,0,832,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(866,0,835,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(866,0,838,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(866,0,841,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(866,0,844,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(866,0,847,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(866,0,850,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(866,0,853,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(866,0,856,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(866,0,859,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(866,0,862,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(866,0,865,0,0,"IF", 0, 2, 0);
	trans[0][829]	= settr(828,0,830,367,0,"((input==18))", 1, 2, 0);
	trans[0][830]	= settr(829,0,831,368,368,"fsm_state = 40", 1, 2, 0);
	trans[0][831]	= settr(830,0,3351,369,369,"output = 4", 1, 2, 0);
	trans[0][868]	= settr(867,0,3351,1,0,".(goto)", 0, 2, 0);
	trans[0][832]	= settr(831,0,833,370,0,"((input==25))", 1, 2, 0);
	trans[0][833]	= settr(832,0,834,371,371,"fsm_state = 40", 1, 2, 0);
	trans[0][834]	= settr(833,0,3351,372,372,"output = 4", 1, 2, 0);
	trans[0][835]	= settr(834,0,836,373,0,"((input==22))", 1, 2, 0);
	trans[0][836]	= settr(835,0,837,374,374,"fsm_state = 40", 1, 2, 0);
	trans[0][837]	= settr(836,0,3351,375,375,"output = 4", 1, 2, 0);
	trans[0][838]	= settr(837,0,839,376,0,"((input==24))", 1, 2, 0);
	trans[0][839]	= settr(838,0,840,377,377,"fsm_state = 34", 1, 2, 0);
	trans[0][840]	= settr(839,0,3351,378,378,"output = 11", 1, 2, 0);
	trans[0][841]	= settr(840,0,842,379,0,"((input==19))", 1, 2, 0);
	trans[0][842]	= settr(841,0,843,380,380,"fsm_state = 34", 1, 2, 0);
	trans[0][843]	= settr(842,0,3351,381,381,"output = 3", 1, 2, 0);
	trans[0][844]	= settr(843,0,845,382,0,"((input==17))", 1, 2, 0);
	trans[0][845]	= settr(844,0,846,383,383,"fsm_state = 34", 1, 2, 0);
	trans[0][846]	= settr(845,0,3351,384,384,"output = 3", 1, 2, 0);
	trans[0][847]	= settr(846,0,848,385,0,"((input==21))", 1, 2, 0);
	trans[0][848]	= settr(847,0,849,386,386,"fsm_state = 34", 1, 2, 0);
	trans[0][849]	= settr(848,0,3351,387,387,"output = 3", 1, 2, 0);
	trans[0][850]	= settr(849,0,851,388,0,"((input==16))", 1, 2, 0);
	trans[0][851]	= settr(850,0,852,389,389,"fsm_state = 34", 1, 2, 0);
	trans[0][852]	= settr(851,0,3351,390,390,"output = 3", 1, 2, 0);
	trans[0][853]	= settr(852,0,854,391,0,"((input==20))", 1, 2, 0);
	trans[0][854]	= settr(853,0,855,392,392,"fsm_state = 34", 1, 2, 0);
	trans[0][855]	= settr(854,0,3351,393,393,"output = 13", 1, 2, 0);
	trans[0][856]	= settr(855,0,857,394,0,"((input==26))", 1, 2, 0);
	trans[0][857]	= settr(856,0,858,395,395,"fsm_state = 32", 1, 2, 0);
	trans[0][858]	= settr(857,0,3351,396,396,"output = 14", 1, 2, 0);
	trans[0][859]	= settr(858,0,860,397,0,"((input==23))", 1, 2, 0);
	trans[0][860]	= settr(859,0,861,398,398,"fsm_state = 30", 1, 2, 0);
	trans[0][861]	= settr(860,0,3351,399,399,"output = 7", 1, 2, 0);
	trans[0][862]	= settr(861,0,863,400,0,"((input==27))", 1, 2, 0);
	trans[0][863]	= settr(862,0,864,401,401,"fsm_state = 29", 1, 2, 0);
	trans[0][864]	= settr(863,0,3351,402,402,"output = 6", 1, 2, 0);
	trans[0][865]	= settr(864,0,17,2,0,"else", 0, 2, 0);
	trans[0][866]	= settr(865,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][869]	= settr(868,0,957,403,0,"((fsm_state==33))", 1, 2, 0);
	T = trans[0][957] = settr(956,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(956,0,870,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(956,0,873,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(956,0,876,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(956,0,879,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(956,0,882,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(956,0,885,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(956,0,888,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(956,0,891,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(956,0,894,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(956,0,897,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(956,0,900,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(956,0,903,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(956,0,955,0,0,"IF", 0, 2, 0);
	trans[0][870]	= settr(869,0,871,404,0,"((input==22))", 1, 2, 0);
	trans[0][871]	= settr(870,0,872,405,405,"fsm_state = 40", 1, 2, 0);
	trans[0][872]	= settr(871,0,3351,406,406,"output = 4", 1, 2, 0);
	trans[0][958]	= settr(957,0,3351,1,0,".(goto)", 0, 2, 0);
	trans[0][873]	= settr(872,0,874,407,0,"((input==27))", 1, 2, 0);
	trans[0][874]	= settr(873,0,875,408,408,"fsm_state = 40", 1, 2, 0);
	trans[0][875]	= settr(874,0,3351,409,409,"output = 4", 1, 2, 0);
	trans[0][876]	= settr(875,0,877,410,0,"((input==20))", 1, 2, 0);
	trans[0][877]	= settr(876,0,878,411,411,"fsm_state = 40", 1, 2, 0);
	trans[0][878]	= settr(877,0,3351,412,412,"output = 4", 1, 2, 0);
	trans[0][879]	= settr(878,0,880,413,0,"((input==25))", 1, 2, 0);
	trans[0][880]	= settr(879,0,17,414,414,"fsm_state = 38", 1, 2, 0);
	trans[0][881]	= settr(880,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][882]	= settr(881,0,883,415,0,"((input==24))", 1, 2, 0);
	trans[0][883]	= settr(882,0,17,416,416,"fsm_state = 33", 1, 2, 0);
	trans[0][884]	= settr(883,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][885]	= settr(884,0,886,417,0,"((input==19))", 1, 2, 0);
	trans[0][886]	= settr(885,0,887,418,418,"fsm_state = 33", 1, 2, 0);
	trans[0][887]	= settr(886,0,3351,419,419,"output = 3", 1, 2, 0);
	trans[0][888]	= settr(887,0,889,420,0,"((input==17))", 1, 2, 0);
	trans[0][889]	= settr(888,0,890,421,421,"fsm_state = 33", 1, 2, 0);
	trans[0][890]	= settr(889,0,3351,422,422,"output = 3", 1, 2, 0);
	trans[0][891]	= settr(890,0,892,423,0,"((input==23))", 1, 2, 0);
	trans[0][892]	= settr(891,0,17,424,424,"fsm_state = 33", 1, 2, 0);
	trans[0][893]	= settr(892,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][894]	= settr(893,0,895,425,0,"((input==21))", 1, 2, 0);
	trans[0][895]	= settr(894,0,896,426,426,"fsm_state = 33", 1, 2, 0);
	trans[0][896]	= settr(895,0,3351,427,427,"output = 3", 1, 2, 0);
	trans[0][897]	= settr(896,0,898,428,0,"((input==16))", 1, 2, 0);
	trans[0][898]	= settr(897,0,899,429,429,"fsm_state = 33", 1, 2, 0);
	trans[0][899]	= settr(898,0,3351,430,430,"output = 3", 1, 2, 0);
	trans[0][900]	= settr(899,0,901,431,0,"((input==26))", 1, 2, 0);
	trans[0][901]	= settr(900,0,17,432,432,"fsm_state = 31", 1, 2, 0);
	trans[0][902]	= settr(901,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][903]	= settr(902,0,904,433,0,"((input==18))", 1, 2, 0);
	trans[0][904]	= settr(903,0,905,434,434,"fsm_state = 28", 1, 2, 0);
	trans[0][905]	= settr(904,0,906,435,435,"output = 8", 1, 2, 0);
	trans[0][906]	= settr(905,0,952,436,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][952] = settr(951,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(951,0,945,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][945]	= settr(944,32,950,437,437,"D_STEP13", 1, 2, 0);
	T = trans[0][950] = settr(949,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(949,0,946,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(949,0,948,0,0,"IF", 0, 2, 0);
	trans[0][946]	= settr(945,0,1,438,0,"((dealt==0))", 1, 2, 0);
	trans[0][947]	= settr(946,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][951]	= settr(950,0,953,1,0,".(goto)", 0, 2, 0);
	trans[0][948]	= settr(947,0,949,2,0,"else", 0, 2, 0);
	trans[0][949]	= settr(948,0,953,1,0,"(1)", 0, 2, 0);
	trans[0][953]	= settr(952,0,954,439,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][954]	= settr(953,0,3351,440,440,"output = 1", 1, 2, 0);
	trans[0][955]	= settr(954,0,17,2,0,"else", 0, 2, 0);
	trans[0][956]	= settr(955,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][959]	= settr(958,0,998,441,0,"((fsm_state==32))", 1, 2, 0);
	T = trans[0][998] = settr(997,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(997,0,960,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(997,0,963,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(997,0,966,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(997,0,969,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(997,0,972,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(997,0,975,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(997,0,978,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(997,0,981,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(997,0,984,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(997,0,987,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(997,0,990,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(997,0,993,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(997,0,996,0,0,"IF", 0, 2, 0);
	trans[0][960]	= settr(959,0,961,442,0,"((input==18))", 1, 2, 0);
	trans[0][961]	= settr(960,0,962,443,443,"fsm_state = 42", 1, 2, 0);
	trans[0][962]	= settr(961,0,3351,444,444,"output = 4", 1, 2, 0);
	trans[0][999]	= settr(998,0,3351,1,0,".(goto)", 0, 2, 0);
	trans[0][963]	= settr(962,0,964,445,0,"((input==25))", 1, 2, 0);
	trans[0][964]	= settr(963,0,965,446,446,"fsm_state = 42", 1, 2, 0);
	trans[0][965]	= settr(964,0,3351,447,447,"output = 4", 1, 2, 0);
	trans[0][966]	= settr(965,0,967,448,0,"((input==22))", 1, 2, 0);
	trans[0][967]	= settr(966,0,968,449,449,"fsm_state = 42", 1, 2, 0);
	trans[0][968]	= settr(967,0,3351,450,450,"output = 4", 1, 2, 0);
	trans[0][969]	= settr(968,0,970,451,0,"((input==21))", 1, 2, 0);
	trans[0][970]	= settr(969,0,971,452,452,"fsm_state = 34", 1, 2, 0);
	trans[0][971]	= settr(970,0,3351,453,453,"output = 14", 1, 2, 0);
	trans[0][972]	= settr(971,0,973,454,0,"((input==24))", 1, 2, 0);
	trans[0][973]	= settr(972,0,974,455,455,"fsm_state = 32", 1, 2, 0);
	trans[0][974]	= settr(973,0,3351,456,456,"output = 11", 1, 2, 0);
	trans[0][975]	= settr(974,0,976,457,0,"((input==19))", 1, 2, 0);
	trans[0][976]	= settr(975,0,977,458,458,"fsm_state = 32", 1, 2, 0);
	trans[0][977]	= settr(976,0,3351,459,459,"output = 14", 1, 2, 0);
	trans[0][978]	= settr(977,0,979,460,0,"((input==26))", 1, 2, 0);
	trans[0][979]	= settr(978,0,980,461,461,"fsm_state = 32", 1, 2, 0);
	trans[0][980]	= settr(979,0,3351,462,462,"output = 5", 1, 2, 0);
	trans[0][981]	= settr(980,0,982,463,0,"((input==17))", 1, 2, 0);
	trans[0][982]	= settr(981,0,983,464,464,"fsm_state = 32", 1, 2, 0);
	trans[0][983]	= settr(982,0,3351,465,465,"output = 14", 1, 2, 0);
	trans[0][984]	= settr(983,0,985,466,0,"((input==16))", 1, 2, 0);
	trans[0][985]	= settr(984,0,986,467,467,"fsm_state = 32", 1, 2, 0);
	trans[0][986]	= settr(985,0,3351,468,468,"output = 14", 1, 2, 0);
	trans[0][987]	= settr(986,0,988,469,0,"((input==20))", 1, 2, 0);
	trans[0][988]	= settr(987,0,989,470,470,"fsm_state = 32", 1, 2, 0);
	trans[0][989]	= settr(988,0,3351,471,471,"output = 13", 1, 2, 0);
	trans[0][990]	= settr(989,0,991,472,0,"((input==27))", 1, 2, 0);
	trans[0][991]	= settr(990,0,992,473,473,"fsm_state = 27", 1, 2, 0);
	trans[0][992]	= settr(991,0,3351,474,474,"output = 6", 1, 2, 0);
	trans[0][993]	= settr(992,0,994,475,0,"((input==23))", 1, 2, 0);
	trans[0][994]	= settr(993,0,995,476,476,"fsm_state = 26", 1, 2, 0);
	trans[0][995]	= settr(994,0,3351,477,477,"output = 7", 1, 2, 0);
	trans[0][996]	= settr(995,0,17,2,0,"else", 0, 2, 0);
	trans[0][997]	= settr(996,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1000]	= settr(999,0,1088,478,0,"((fsm_state==31))", 1, 2, 0);
	T = trans[0][1088] = settr(1087,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1087,0,1001,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1087,0,1004,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1087,0,1007,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1087,0,1010,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1087,0,1013,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1087,0,1016,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1087,0,1019,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1087,0,1022,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1087,0,1025,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1087,0,1028,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1087,0,1031,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1087,0,1034,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1087,0,1086,0,0,"IF", 0, 2, 0);
	trans[0][1001]	= settr(1000,0,1002,479,0,"((input==22))", 1, 2, 0);
	trans[0][1002]	= settr(1001,0,1003,480,480,"fsm_state = 42", 1, 2, 0);
	trans[0][1003]	= settr(1002,0,3351,481,481,"output = 4", 1, 2, 0);
	trans[0][1089]	= settr(1088,0,3351,1,0,".(goto)", 0, 2, 0);
	trans[0][1004]	= settr(1003,0,1005,482,0,"((input==27))", 1, 2, 0);
	trans[0][1005]	= settr(1004,0,1006,483,483,"fsm_state = 42", 1, 2, 0);
	trans[0][1006]	= settr(1005,0,3351,484,484,"output = 4", 1, 2, 0);
	trans[0][1007]	= settr(1006,0,1008,485,0,"((input==20))", 1, 2, 0);
	trans[0][1008]	= settr(1007,0,1009,486,486,"fsm_state = 42", 1, 2, 0);
	trans[0][1009]	= settr(1008,0,3351,487,487,"output = 4", 1, 2, 0);
	trans[0][1010]	= settr(1009,0,1011,488,0,"((input==25))", 1, 2, 0);
	trans[0][1011]	= settr(1010,0,17,489,489,"fsm_state = 36", 1, 2, 0);
	trans[0][1012]	= settr(1011,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1013]	= settr(1012,0,1014,490,0,"((input==21))", 1, 2, 0);
	trans[0][1014]	= settr(1013,0,17,491,491,"fsm_state = 33", 1, 2, 0);
	trans[0][1015]	= settr(1014,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1016]	= settr(1015,0,1017,492,0,"((input==24))", 1, 2, 0);
	trans[0][1017]	= settr(1016,0,17,493,493,"fsm_state = 31", 1, 2, 0);
	trans[0][1018]	= settr(1017,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1019]	= settr(1018,0,1020,494,0,"((input==19))", 1, 2, 0);
	trans[0][1020]	= settr(1019,0,17,495,495,"fsm_state = 31", 1, 2, 0);
	trans[0][1021]	= settr(1020,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1022]	= settr(1021,0,1023,496,0,"((input==26))", 1, 2, 0);
	trans[0][1023]	= settr(1022,0,1024,497,497,"fsm_state = 31", 1, 2, 0);
	trans[0][1024]	= settr(1023,0,3351,498,498,"output = 5", 1, 2, 0);
	trans[0][1025]	= settr(1024,0,1026,499,0,"((input==17))", 1, 2, 0);
	trans[0][1026]	= settr(1025,0,17,500,500,"fsm_state = 31", 1, 2, 0);
	trans[0][1027]	= settr(1026,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1028]	= settr(1027,0,1029,501,0,"((input==23))", 1, 2, 0);
	trans[0][1029]	= settr(1028,0,17,502,502,"fsm_state = 31", 1, 2, 0);
	trans[0][1030]	= settr(1029,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1031]	= settr(1030,0,1032,503,0,"((input==16))", 1, 2, 0);
	trans[0][1032]	= settr(1031,0,17,504,504,"fsm_state = 31", 1, 2, 0);
	trans[0][1033]	= settr(1032,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1034]	= settr(1033,0,1035,505,0,"((input==18))", 1, 2, 0);
	trans[0][1035]	= settr(1034,0,1036,506,506,"fsm_state = 25", 1, 2, 0);
	trans[0][1036]	= settr(1035,0,1037,507,507,"output = 8", 1, 2, 0);
	trans[0][1037]	= settr(1036,0,1083,508,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][1083] = settr(1082,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1082,0,1076,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][1076]	= settr(1075,32,1081,509,509,"D_STEP13", 1, 2, 0);
	T = trans[0][1081] = settr(1080,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1080,0,1077,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1080,0,1079,0,0,"IF", 0, 2, 0);
	trans[0][1077]	= settr(1076,0,1,510,0,"((dealt==0))", 1, 2, 0);
	trans[0][1078]	= settr(1077,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][1082]	= settr(1081,0,1084,1,0,".(goto)", 0, 2, 0);
	trans[0][1079]	= settr(1078,0,1080,2,0,"else", 0, 2, 0);
	trans[0][1080]	= settr(1079,0,1084,1,0,"(1)", 0, 2, 0);
	trans[0][1084]	= settr(1083,0,1085,511,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][1085]	= settr(1084,0,3351,512,512,"output = 1", 1, 2, 0);
	trans[0][1086]	= settr(1085,0,17,2,0,"else", 0, 2, 0);
	trans[0][1087]	= settr(1086,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1090]	= settr(1089,0,1129,513,0,"((fsm_state==30))", 1, 2, 0);
	T = trans[0][1129] = settr(1128,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1128,0,1091,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1128,0,1094,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1128,0,1097,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1128,0,1100,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1128,0,1103,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1128,0,1106,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1128,0,1109,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1128,0,1112,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1128,0,1115,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1128,0,1118,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1128,0,1121,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1128,0,1124,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1128,0,1127,0,0,"IF", 0, 2, 0);
	trans[0][1091]	= settr(1090,0,1092,514,0,"((input==18))", 1, 2, 0);
	trans[0][1092]	= settr(1091,0,1093,515,515,"fsm_state = 40", 1, 2, 0);
	trans[0][1093]	= settr(1092,0,3351,516,516,"output = 4", 1, 2, 0);
	trans[0][1130]	= settr(1129,0,3351,1,0,".(goto)", 0, 2, 0);
	trans[0][1094]	= settr(1093,0,1095,517,0,"((input==25))", 1, 2, 0);
	trans[0][1095]	= settr(1094,0,1096,518,518,"fsm_state = 40", 1, 2, 0);
	trans[0][1096]	= settr(1095,0,3351,519,519,"output = 4", 1, 2, 0);
	trans[0][1097]	= settr(1096,0,1098,520,0,"((input==22))", 1, 2, 0);
	trans[0][1098]	= settr(1097,0,1099,521,521,"fsm_state = 40", 1, 2, 0);
	trans[0][1099]	= settr(1098,0,3351,522,522,"output = 4", 1, 2, 0);
	trans[0][1100]	= settr(1099,0,1101,523,0,"((input==24))", 1, 2, 0);
	trans[0][1101]	= settr(1100,0,1102,524,524,"fsm_state = 30", 1, 2, 0);
	trans[0][1102]	= settr(1101,0,3351,525,525,"output = 14", 1, 2, 0);
	trans[0][1103]	= settr(1102,0,1104,526,0,"((input==19))", 1, 2, 0);
	trans[0][1104]	= settr(1103,0,1105,527,527,"fsm_state = 30", 1, 2, 0);
	trans[0][1105]	= settr(1104,0,3351,528,528,"output = 3", 1, 2, 0);
	trans[0][1106]	= settr(1105,0,1107,529,0,"((input==17))", 1, 2, 0);
	trans[0][1107]	= settr(1106,0,1108,530,530,"fsm_state = 30", 1, 2, 0);
	trans[0][1108]	= settr(1107,0,3351,531,531,"output = 3", 1, 2, 0);
	trans[0][1109]	= settr(1108,0,1110,532,0,"((input==23))", 1, 2, 0);
	trans[0][1110]	= settr(1109,0,1111,533,533,"fsm_state = 30", 1, 2, 0);
	trans[0][1111]	= settr(1110,0,3351,534,534,"output = 14", 1, 2, 0);
	trans[0][1112]	= settr(1111,0,1113,535,0,"((input==21))", 1, 2, 0);
	trans[0][1113]	= settr(1112,0,1114,536,536,"fsm_state = 30", 1, 2, 0);
	trans[0][1114]	= settr(1113,0,3351,537,537,"output = 3", 1, 2, 0);
	trans[0][1115]	= settr(1114,0,1116,538,0,"((input==16))", 1, 2, 0);
	trans[0][1116]	= settr(1115,0,1117,539,539,"fsm_state = 30", 1, 2, 0);
	trans[0][1117]	= settr(1116,0,3351,540,540,"output = 3", 1, 2, 0);
	trans[0][1118]	= settr(1117,0,1119,541,0,"((input==20))", 1, 2, 0);
	trans[0][1119]	= settr(1118,0,1120,542,542,"fsm_state = 30", 1, 2, 0);
	trans[0][1120]	= settr(1119,0,3351,543,543,"output = 13", 1, 2, 0);
	trans[0][1121]	= settr(1120,0,1122,544,0,"((input==26))", 1, 2, 0);
	trans[0][1122]	= settr(1121,0,1123,545,545,"fsm_state = 24", 1, 2, 0);
	trans[0][1123]	= settr(1122,0,3351,546,546,"output = 10", 1, 2, 0);
	trans[0][1124]	= settr(1123,0,1125,547,0,"((input==27))", 1, 2, 0);
	trans[0][1125]	= settr(1124,0,1126,548,548,"fsm_state = 23", 1, 2, 0);
	trans[0][1126]	= settr(1125,0,3351,549,549,"output = 6", 1, 2, 0);
	trans[0][1127]	= settr(1126,0,17,2,0,"else", 0, 2, 0);
	trans[0][1128]	= settr(1127,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1131]	= settr(1130,0,1219,550,0,"((fsm_state==29))", 1, 2, 0);
	T = trans[0][1219] = settr(1218,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1218,0,1132,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1218,0,1135,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1218,0,1138,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1218,0,1141,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1218,0,1144,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1218,0,1147,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1218,0,1150,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1218,0,1153,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1218,0,1156,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1218,0,1159,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1218,0,1211,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1218,0,1214,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1218,0,1217,0,0,"IF", 0, 2, 0);
	trans[0][1132]	= settr(1131,0,1133,551,0,"((input==22))", 1, 2, 0);
	trans[0][1133]	= settr(1132,0,1134,552,552,"fsm_state = 40", 1, 2, 0);
	trans[0][1134]	= settr(1133,0,3351,553,553,"output = 4", 1, 2, 0);
	trans[0][1220]	= settr(1219,0,3351,1,0,".(goto)", 0, 2, 0);
	trans[0][1135]	= settr(1134,0,1136,554,0,"((input==27))", 1, 2, 0);
	trans[0][1136]	= settr(1135,0,1137,555,555,"fsm_state = 40", 1, 2, 0);
	trans[0][1137]	= settr(1136,0,3351,556,556,"output = 4", 1, 2, 0);
	trans[0][1138]	= settr(1137,0,1139,557,0,"((input==20))", 1, 2, 0);
	trans[0][1139]	= settr(1138,0,1140,558,558,"fsm_state = 40", 1, 2, 0);
	trans[0][1140]	= settr(1139,0,3351,559,559,"output = 4", 1, 2, 0);
	trans[0][1141]	= settr(1140,0,1142,560,0,"((input==25))", 1, 2, 0);
	trans[0][1142]	= settr(1141,0,17,561,561,"fsm_state = 38", 1, 2, 0);
	trans[0][1143]	= settr(1142,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1144]	= settr(1143,0,1145,562,0,"((input==19))", 1, 2, 0);
	trans[0][1145]	= settr(1144,0,1146,563,563,"fsm_state = 29", 1, 2, 0);
	trans[0][1146]	= settr(1145,0,3351,564,564,"output = 3", 1, 2, 0);
	trans[0][1147]	= settr(1146,0,1148,565,0,"((input==17))", 1, 2, 0);
	trans[0][1148]	= settr(1147,0,1149,566,566,"fsm_state = 29", 1, 2, 0);
	trans[0][1149]	= settr(1148,0,3351,567,567,"output = 3", 1, 2, 0);
	trans[0][1150]	= settr(1149,0,1151,568,0,"((input==21))", 1, 2, 0);
	trans[0][1151]	= settr(1150,0,1152,569,569,"fsm_state = 29", 1, 2, 0);
	trans[0][1152]	= settr(1151,0,3351,570,570,"output = 3", 1, 2, 0);
	trans[0][1153]	= settr(1152,0,1154,571,0,"((input==16))", 1, 2, 0);
	trans[0][1154]	= settr(1153,0,1155,572,572,"fsm_state = 29", 1, 2, 0);
	trans[0][1155]	= settr(1154,0,3351,573,573,"output = 3", 1, 2, 0);
	trans[0][1156]	= settr(1155,0,1157,574,0,"((input==26))", 1, 2, 0);
	trans[0][1157]	= settr(1156,0,1158,575,575,"fsm_state = 27", 1, 2, 0);
	trans[0][1158]	= settr(1157,0,3351,576,576,"output = 14", 1, 2, 0);
	trans[0][1159]	= settr(1158,0,1160,577,0,"((input==18))", 1, 2, 0);
	trans[0][1160]	= settr(1159,0,1161,578,578,"fsm_state = 22", 1, 2, 0);
	trans[0][1161]	= settr(1160,0,1162,579,579,"output = 8", 1, 2, 0);
	trans[0][1162]	= settr(1161,0,1208,580,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][1208] = settr(1207,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1207,0,1201,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][1201]	= settr(1200,32,1206,581,581,"D_STEP13", 1, 2, 0);
	T = trans[0][1206] = settr(1205,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1205,0,1202,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1205,0,1204,0,0,"IF", 0, 2, 0);
	trans[0][1202]	= settr(1201,0,1,582,0,"((dealt==0))", 1, 2, 0);
	trans[0][1203]	= settr(1202,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][1207]	= settr(1206,0,1209,1,0,".(goto)", 0, 2, 0);
	trans[0][1204]	= settr(1203,0,1205,2,0,"else", 0, 2, 0);
	trans[0][1205]	= settr(1204,0,1209,1,0,"(1)", 0, 2, 0);
	trans[0][1209]	= settr(1208,0,1210,583,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][1210]	= settr(1209,0,3351,584,584,"output = 1", 1, 2, 0);
	trans[0][1211]	= settr(1210,0,1212,585,0,"((input==24))", 1, 2, 0);
	trans[0][1212]	= settr(1211,0,17,586,586,"fsm_state = 21", 1, 2, 0);
	trans[0][1213]	= settr(1212,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1214]	= settr(1213,0,1215,587,0,"((input==23))", 1, 2, 0);
	trans[0][1215]	= settr(1214,0,17,588,588,"fsm_state = 20", 1, 2, 0);
	trans[0][1216]	= settr(1215,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1217]	= settr(1216,0,17,2,0,"else", 0, 2, 0);
	trans[0][1218]	= settr(1217,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1221]	= settr(1220,0,1260,589,0,"((fsm_state==28))", 1, 2, 0);
	T = trans[0][1260] = settr(1259,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1259,0,1222,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1259,0,1225,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1259,0,1228,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1259,0,1231,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1259,0,1234,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1259,0,1237,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1259,0,1240,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1259,0,1243,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1259,0,1246,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1259,0,1249,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1259,0,1252,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1259,0,1255,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1259,0,1258,0,0,"IF", 0, 2, 0);
	trans[0][1222]	= settr(1221,0,1223,590,0,"((input==22))", 1, 2, 0);
	trans[0][1223]	= settr(1222,0,1224,591,591,"fsm_state = 40", 1, 2, 0);
	trans[0][1224]	= settr(1223,0,3351,592,592,"output = 4", 1, 2, 0);
	trans[0][1261]	= settr(1260,0,3351,1,0,".(goto)", 0, 2, 0);
	trans[0][1225]	= settr(1224,0,1226,593,0,"((input==27))", 1, 2, 0);
	trans[0][1226]	= settr(1225,0,1227,594,594,"fsm_state = 40", 1, 2, 0);
	trans[0][1227]	= settr(1226,0,3351,595,595,"output = 4", 1, 2, 0);
	trans[0][1228]	= settr(1227,0,1229,596,0,"((input==20))", 1, 2, 0);
	trans[0][1229]	= settr(1228,0,1230,597,597,"fsm_state = 40", 1, 2, 0);
	trans[0][1230]	= settr(1229,0,3351,598,598,"output = 4", 1, 2, 0);
	trans[0][1231]	= settr(1230,0,1232,599,0,"((input==25))", 1, 2, 0);
	trans[0][1232]	= settr(1231,0,17,600,600,"fsm_state = 37", 1, 2, 0);
	trans[0][1233]	= settr(1232,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1234]	= settr(1233,0,1235,601,0,"((input==24))", 1, 2, 0);
	trans[0][1235]	= settr(1234,0,17,602,602,"fsm_state = 28", 1, 2, 0);
	trans[0][1236]	= settr(1235,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1237]	= settr(1236,0,1238,603,0,"((input==18))", 1, 2, 0);
	trans[0][1238]	= settr(1237,0,17,604,604,"fsm_state = 28", 1, 2, 0);
	trans[0][1239]	= settr(1238,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1240]	= settr(1239,0,1241,605,0,"((input==19))", 1, 2, 0);
	trans[0][1241]	= settr(1240,0,1242,606,606,"fsm_state = 28", 1, 2, 0);
	trans[0][1242]	= settr(1241,0,3351,607,607,"output = 3", 1, 2, 0);
	trans[0][1243]	= settr(1242,0,1244,608,0,"((input==17))", 1, 2, 0);
	trans[0][1244]	= settr(1243,0,1245,609,609,"fsm_state = 28", 1, 2, 0);
	trans[0][1245]	= settr(1244,0,3351,610,610,"output = 3", 1, 2, 0);
	trans[0][1246]	= settr(1245,0,1247,611,0,"((input==23))", 1, 2, 0);
	trans[0][1247]	= settr(1246,0,17,612,612,"fsm_state = 28", 1, 2, 0);
	trans[0][1248]	= settr(1247,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1249]	= settr(1248,0,1250,613,0,"((input==21))", 1, 2, 0);
	trans[0][1250]	= settr(1249,0,1251,614,614,"fsm_state = 28", 1, 2, 0);
	trans[0][1251]	= settr(1250,0,3351,615,615,"output = 3", 1, 2, 0);
	trans[0][1252]	= settr(1251,0,1253,616,0,"((input==16))", 1, 2, 0);
	trans[0][1253]	= settr(1252,0,1254,617,617,"fsm_state = 28", 1, 2, 0);
	trans[0][1254]	= settr(1253,0,3351,618,618,"output = 3", 1, 2, 0);
	trans[0][1255]	= settr(1254,0,1256,619,0,"((input==26))", 1, 2, 0);
	trans[0][1256]	= settr(1255,0,17,620,620,"fsm_state = 25", 1, 2, 0);
	trans[0][1257]	= settr(1256,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1258]	= settr(1257,0,17,2,0,"else", 0, 2, 0);
	trans[0][1259]	= settr(1258,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1262]	= settr(1261,0,1350,621,0,"((fsm_state==27))", 1, 2, 0);
	T = trans[0][1350] = settr(1349,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1349,0,1263,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1349,0,1266,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1349,0,1269,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1349,0,1272,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1349,0,1275,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1349,0,1278,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1349,0,1281,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1349,0,1284,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1349,0,1287,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1349,0,1290,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1349,0,1293,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1349,0,1345,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1349,0,1348,0,0,"IF", 0, 2, 0);
	trans[0][1263]	= settr(1262,0,1264,622,0,"((input==22))", 1, 2, 0);
	trans[0][1264]	= settr(1263,0,1265,623,623,"fsm_state = 42", 1, 2, 0);
	trans[0][1265]	= settr(1264,0,3351,624,624,"output = 4", 1, 2, 0);
	trans[0][1351]	= settr(1350,0,3351,1,0,".(goto)", 0, 2, 0);
	trans[0][1266]	= settr(1265,0,1267,625,0,"((input==27))", 1, 2, 0);
	trans[0][1267]	= settr(1266,0,1268,626,626,"fsm_state = 42", 1, 2, 0);
	trans[0][1268]	= settr(1267,0,3351,627,627,"output = 4", 1, 2, 0);
	trans[0][1269]	= settr(1268,0,1270,628,0,"((input==20))", 1, 2, 0);
	trans[0][1270]	= settr(1269,0,1271,629,629,"fsm_state = 42", 1, 2, 0);
	trans[0][1271]	= settr(1270,0,3351,630,630,"output = 4", 1, 2, 0);
	trans[0][1272]	= settr(1271,0,1273,631,0,"((input==25))", 1, 2, 0);
	trans[0][1273]	= settr(1272,0,17,632,632,"fsm_state = 36", 1, 2, 0);
	trans[0][1274]	= settr(1273,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1275]	= settr(1274,0,1276,633,0,"((input==21))", 1, 2, 0);
	trans[0][1276]	= settr(1275,0,1277,634,634,"fsm_state = 29", 1, 2, 0);
	trans[0][1277]	= settr(1276,0,3351,635,635,"output = 14", 1, 2, 0);
	trans[0][1278]	= settr(1277,0,1279,636,0,"((input==19))", 1, 2, 0);
	trans[0][1279]	= settr(1278,0,1280,637,637,"fsm_state = 27", 1, 2, 0);
	trans[0][1280]	= settr(1279,0,3351,638,638,"output = 14", 1, 2, 0);
	trans[0][1281]	= settr(1280,0,1282,639,0,"((input==26))", 1, 2, 0);
	trans[0][1282]	= settr(1281,0,1283,640,640,"fsm_state = 27", 1, 2, 0);
	trans[0][1283]	= settr(1282,0,3351,641,641,"output = 5", 1, 2, 0);
	trans[0][1284]	= settr(1283,0,1285,642,0,"((input==17))", 1, 2, 0);
	trans[0][1285]	= settr(1284,0,1286,643,643,"fsm_state = 27", 1, 2, 0);
	trans[0][1286]	= settr(1285,0,3351,644,644,"output = 14", 1, 2, 0);
	trans[0][1287]	= settr(1286,0,1288,645,0,"((input==16))", 1, 2, 0);
	trans[0][1288]	= settr(1287,0,1289,646,646,"fsm_state = 27", 1, 2, 0);
	trans[0][1289]	= settr(1288,0,3351,647,647,"output = 14", 1, 2, 0);
	trans[0][1290]	= settr(1289,0,1291,648,0,"((input==24))", 1, 2, 0);
	trans[0][1291]	= settr(1290,0,17,649,649,"fsm_state = 19", 1, 2, 0);
	trans[0][1292]	= settr(1291,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1293]	= settr(1292,0,1294,650,0,"((input==18))", 1, 2, 0);
	trans[0][1294]	= settr(1293,0,1295,651,651,"fsm_state = 18", 1, 2, 0);
	trans[0][1295]	= settr(1294,0,1296,652,652,"output = 8", 1, 2, 0);
	trans[0][1296]	= settr(1295,0,1342,653,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][1342] = settr(1341,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1341,0,1335,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][1335]	= settr(1334,32,1340,654,654,"D_STEP13", 1, 2, 0);
	T = trans[0][1340] = settr(1339,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1339,0,1336,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1339,0,1338,0,0,"IF", 0, 2, 0);
	trans[0][1336]	= settr(1335,0,1,655,0,"((dealt==0))", 1, 2, 0);
	trans[0][1337]	= settr(1336,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][1341]	= settr(1340,0,1343,1,0,".(goto)", 0, 2, 0);
	trans[0][1338]	= settr(1337,0,1339,2,0,"else", 0, 2, 0);
	trans[0][1339]	= settr(1338,0,1343,1,0,"(1)", 0, 2, 0);
	trans[0][1343]	= settr(1342,0,1344,656,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][1344]	= settr(1343,0,3351,657,657,"output = 1", 1, 2, 0);
	trans[0][1345]	= settr(1344,0,1346,658,0,"((input==23))", 1, 2, 0);
	trans[0][1346]	= settr(1345,0,17,659,659,"fsm_state = 17", 1, 2, 0);
	trans[0][1347]	= settr(1346,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1348]	= settr(1347,0,17,2,0,"else", 0, 2, 0);
	trans[0][1349]	= settr(1348,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1352]	= settr(1351,0,1391,660,0,"((fsm_state==26))", 1, 2, 0);
	T = trans[0][1391] = settr(1390,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1390,0,1353,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1390,0,1356,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1390,0,1359,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1390,0,1362,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1390,0,1365,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1390,0,1368,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1390,0,1371,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1390,0,1374,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1390,0,1377,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1390,0,1380,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1390,0,1383,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1390,0,1386,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1390,0,1389,0,0,"IF", 0, 2, 0);
	trans[0][1353]	= settr(1352,0,1354,661,0,"((input==18))", 1, 2, 0);
	trans[0][1354]	= settr(1353,0,1355,662,662,"fsm_state = 42", 1, 2, 0);
	trans[0][1355]	= settr(1354,0,3351,663,663,"output = 4", 1, 2, 0);
	trans[0][1392]	= settr(1391,0,3351,1,0,".(goto)", 0, 2, 0);
	trans[0][1356]	= settr(1355,0,1357,664,0,"((input==25))", 1, 2, 0);
	trans[0][1357]	= settr(1356,0,1358,665,665,"fsm_state = 42", 1, 2, 0);
	trans[0][1358]	= settr(1357,0,3351,666,666,"output = 4", 1, 2, 0);
	trans[0][1359]	= settr(1358,0,1360,667,0,"((input==22))", 1, 2, 0);
	trans[0][1360]	= settr(1359,0,1361,668,668,"fsm_state = 42", 1, 2, 0);
	trans[0][1361]	= settr(1360,0,3351,669,669,"output = 4", 1, 2, 0);
	trans[0][1362]	= settr(1361,0,1363,670,0,"((input==21))", 1, 2, 0);
	trans[0][1363]	= settr(1362,0,17,671,671,"fsm_state = 30", 1, 2, 0);
	trans[0][1364]	= settr(1363,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1365]	= settr(1364,0,1366,672,0,"((input==24))", 1, 2, 0);
	trans[0][1366]	= settr(1365,0,1367,673,673,"fsm_state = 26", 1, 2, 0);
	trans[0][1367]	= settr(1366,0,3351,674,674,"output = 14", 1, 2, 0);
	trans[0][1368]	= settr(1367,0,1369,675,0,"((input==19))", 1, 2, 0);
	trans[0][1369]	= settr(1368,0,17,676,676,"fsm_state = 26", 1, 2, 0);
	trans[0][1370]	= settr(1369,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1371]	= settr(1370,0,1372,677,0,"((input==26))", 1, 2, 0);
	trans[0][1372]	= settr(1371,0,1373,678,678,"fsm_state = 26", 1, 2, 0);
	trans[0][1373]	= settr(1372,0,3351,679,679,"output = 5", 1, 2, 0);
	trans[0][1374]	= settr(1373,0,1375,680,0,"((input==17))", 1, 2, 0);
	trans[0][1375]	= settr(1374,0,17,681,681,"fsm_state = 26", 1, 2, 0);
	trans[0][1376]	= settr(1375,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1377]	= settr(1376,0,1378,682,0,"((input==23))", 1, 2, 0);
	trans[0][1378]	= settr(1377,0,1379,683,683,"fsm_state = 26", 1, 2, 0);
	trans[0][1379]	= settr(1378,0,3351,684,684,"output = 14", 1, 2, 0);
	trans[0][1380]	= settr(1379,0,1381,685,0,"((input==16))", 1, 2, 0);
	trans[0][1381]	= settr(1380,0,17,686,686,"fsm_state = 26", 1, 2, 0);
	trans[0][1382]	= settr(1381,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1383]	= settr(1382,0,1384,687,0,"((input==20))", 1, 2, 0);
	trans[0][1384]	= settr(1383,0,1385,688,688,"fsm_state = 26", 1, 2, 0);
	trans[0][1385]	= settr(1384,0,3351,689,689,"output = 13", 1, 2, 0);
	trans[0][1386]	= settr(1385,0,1387,690,0,"((input==27))", 1, 2, 0);
	trans[0][1387]	= settr(1386,0,1388,691,691,"fsm_state = 16", 1, 2, 0);
	trans[0][1388]	= settr(1387,0,3351,692,692,"output = 6", 1, 2, 0);
	trans[0][1389]	= settr(1388,0,17,2,0,"else", 0, 2, 0);
	trans[0][1390]	= settr(1389,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1393]	= settr(1392,0,1432,693,0,"((fsm_state==25))", 1, 2, 0);
	T = trans[0][1432] = settr(1431,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1431,0,1394,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1431,0,1397,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1431,0,1400,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1431,0,1403,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1431,0,1406,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1431,0,1409,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1431,0,1412,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1431,0,1415,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1431,0,1418,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1431,0,1421,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1431,0,1424,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1431,0,1427,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1431,0,1430,0,0,"IF", 0, 2, 0);
	trans[0][1394]	= settr(1393,0,1395,694,0,"((input==22))", 1, 2, 0);
	trans[0][1395]	= settr(1394,0,1396,695,695,"fsm_state = 42", 1, 2, 0);
	trans[0][1396]	= settr(1395,0,3351,696,696,"output = 4", 1, 2, 0);
	trans[0][1433]	= settr(1432,0,3351,1,0,".(goto)", 0, 2, 0);
	trans[0][1397]	= settr(1396,0,1398,697,0,"((input==27))", 1, 2, 0);
	trans[0][1398]	= settr(1397,0,1399,698,698,"fsm_state = 42", 1, 2, 0);
	trans[0][1399]	= settr(1398,0,3351,699,699,"output = 4", 1, 2, 0);
	trans[0][1400]	= settr(1399,0,1401,700,0,"((input==20))", 1, 2, 0);
	trans[0][1401]	= settr(1400,0,1402,701,701,"fsm_state = 42", 1, 2, 0);
	trans[0][1402]	= settr(1401,0,3351,702,702,"output = 4", 1, 2, 0);
	trans[0][1403]	= settr(1402,0,1404,703,0,"((input==25))", 1, 2, 0);
	trans[0][1404]	= settr(1403,0,17,704,704,"fsm_state = 35", 1, 2, 0);
	trans[0][1405]	= settr(1404,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1406]	= settr(1405,0,1407,705,0,"((input==21))", 1, 2, 0);
	trans[0][1407]	= settr(1406,0,17,706,706,"fsm_state = 28", 1, 2, 0);
	trans[0][1408]	= settr(1407,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1409]	= settr(1408,0,1410,707,0,"((input==24))", 1, 2, 0);
	trans[0][1410]	= settr(1409,0,17,708,708,"fsm_state = 25", 1, 2, 0);
	trans[0][1411]	= settr(1410,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1412]	= settr(1411,0,1413,709,0,"((input==18))", 1, 2, 0);
	trans[0][1413]	= settr(1412,0,17,710,710,"fsm_state = 25", 1, 2, 0);
	trans[0][1414]	= settr(1413,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1415]	= settr(1414,0,1416,711,0,"((input==19))", 1, 2, 0);
	trans[0][1416]	= settr(1415,0,17,712,712,"fsm_state = 25", 1, 2, 0);
	trans[0][1417]	= settr(1416,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1418]	= settr(1417,0,1419,713,0,"((input==26))", 1, 2, 0);
	trans[0][1419]	= settr(1418,0,1420,714,714,"fsm_state = 25", 1, 2, 0);
	trans[0][1420]	= settr(1419,0,3351,715,715,"output = 5", 1, 2, 0);
	trans[0][1421]	= settr(1420,0,1422,716,0,"((input==17))", 1, 2, 0);
	trans[0][1422]	= settr(1421,0,17,717,717,"fsm_state = 25", 1, 2, 0);
	trans[0][1423]	= settr(1422,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1424]	= settr(1423,0,1425,718,0,"((input==23))", 1, 2, 0);
	trans[0][1425]	= settr(1424,0,17,719,719,"fsm_state = 25", 1, 2, 0);
	trans[0][1426]	= settr(1425,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1427]	= settr(1426,0,1428,720,0,"((input==16))", 1, 2, 0);
	trans[0][1428]	= settr(1427,0,17,721,721,"fsm_state = 25", 1, 2, 0);
	trans[0][1429]	= settr(1428,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1430]	= settr(1429,0,17,2,0,"else", 0, 2, 0);
	trans[0][1431]	= settr(1430,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1434]	= settr(1433,0,1473,722,0,"((fsm_state==24))", 1, 2, 0);
	T = trans[0][1473] = settr(1472,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1472,0,1435,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1472,0,1438,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1472,0,1441,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1472,0,1444,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1472,0,1447,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1472,0,1450,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1472,0,1453,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1472,0,1456,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1472,0,1459,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1472,0,1462,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1472,0,1465,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1472,0,1468,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1472,0,1471,0,0,"IF", 0, 2, 0);
	trans[0][1435]	= settr(1434,0,1436,723,0,"((input==18))", 1, 2, 0);
	trans[0][1436]	= settr(1435,0,1437,724,724,"fsm_state = 42", 1, 2, 0);
	trans[0][1437]	= settr(1436,0,3351,725,725,"output = 4", 1, 2, 0);
	trans[0][1474]	= settr(1473,0,3351,1,0,".(goto)", 0, 2, 0);
	trans[0][1438]	= settr(1437,0,1439,726,0,"((input==25))", 1, 2, 0);
	trans[0][1439]	= settr(1438,0,1440,727,727,"fsm_state = 42", 1, 2, 0);
	trans[0][1440]	= settr(1439,0,3351,728,728,"output = 4", 1, 2, 0);
	trans[0][1441]	= settr(1440,0,1442,729,0,"((input==22))", 1, 2, 0);
	trans[0][1442]	= settr(1441,0,1443,730,730,"fsm_state = 42", 1, 2, 0);
	trans[0][1443]	= settr(1442,0,3351,731,731,"output = 4", 1, 2, 0);
	trans[0][1444]	= settr(1443,0,1445,732,0,"((input==24))", 1, 2, 0);
	trans[0][1445]	= settr(1444,0,1446,733,733,"fsm_state = 24", 1, 2, 0);
	trans[0][1446]	= settr(1445,0,3351,734,734,"output = 14", 1, 2, 0);
	trans[0][1447]	= settr(1446,0,1448,735,0,"((input==19))", 1, 2, 0);
	trans[0][1448]	= settr(1447,0,1449,736,736,"fsm_state = 24", 1, 2, 0);
	trans[0][1449]	= settr(1448,0,3351,737,737,"output = 2", 1, 2, 0);
	trans[0][1450]	= settr(1449,0,1451,738,0,"((input==26))", 1, 2, 0);
	trans[0][1451]	= settr(1450,0,1452,739,739,"fsm_state = 24", 1, 2, 0);
	trans[0][1452]	= settr(1451,0,3351,740,740,"output = 5", 1, 2, 0);
	trans[0][1453]	= settr(1452,0,1454,741,0,"((input==23))", 1, 2, 0);
	trans[0][1454]	= settr(1453,0,1455,742,742,"fsm_state = 24", 1, 2, 0);
	trans[0][1455]	= settr(1454,0,3351,743,743,"output = 14", 1, 2, 0);
	trans[0][1456]	= settr(1455,0,1457,744,0,"((input==20))", 1, 2, 0);
	trans[0][1457]	= settr(1456,0,1458,745,745,"fsm_state = 24", 1, 2, 0);
	trans[0][1458]	= settr(1457,0,3351,746,746,"output = 13", 1, 2, 0);
	trans[0][1459]	= settr(1458,0,1460,747,0,"((input==16))", 1, 2, 0);
	trans[0][1460]	= settr(1459,0,1461,748,748,"fsm_state = 15", 1, 2, 0);
	trans[0][1461]	= settr(1460,0,3351,749,749,"output = 15", 1, 2, 0);
	trans[0][1462]	= settr(1461,0,1463,750,0,"((input==27))", 1, 2, 0);
	trans[0][1463]	= settr(1462,0,1464,751,751,"fsm_state = 14", 1, 2, 0);
	trans[0][1464]	= settr(1463,0,3351,752,752,"output = 6", 1, 2, 0);
	trans[0][1465]	= settr(1464,0,1466,753,0,"((input==21))", 1, 2, 0);
	trans[0][1466]	= settr(1465,0,1467,754,754,"fsm_state = 13", 1, 2, 0);
	trans[0][1467]	= settr(1466,0,3351,755,755,"output = 15", 1, 2, 0);
	trans[0][1468]	= settr(1467,0,1469,756,0,"((input==17))", 1, 2, 0);
	trans[0][1469]	= settr(1468,0,17,757,757,"fsm_state = 12", 1, 2, 0);
	trans[0][1470]	= settr(1469,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1471]	= settr(1470,0,17,2,0,"else", 0, 2, 0);
	trans[0][1472]	= settr(1471,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1475]	= settr(1474,0,1563,758,0,"((fsm_state==23))", 1, 2, 0);
	T = trans[0][1563] = settr(1562,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1562,0,1476,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1562,0,1479,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1562,0,1482,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1562,0,1485,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1562,0,1488,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1562,0,1491,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1562,0,1494,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1562,0,1497,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1562,0,1500,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1562,0,1503,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1562,0,1506,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1562,0,1509,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1562,0,1561,0,0,"IF", 0, 2, 0);
	trans[0][1476]	= settr(1475,0,1477,759,0,"((input==22))", 1, 2, 0);
	trans[0][1477]	= settr(1476,0,1478,760,760,"fsm_state = 40", 1, 2, 0);
	trans[0][1478]	= settr(1477,0,3351,761,761,"output = 4", 1, 2, 0);
	trans[0][1564]	= settr(1563,0,3351,1,0,".(goto)", 0, 2, 0);
	trans[0][1479]	= settr(1478,0,1480,762,0,"((input==27))", 1, 2, 0);
	trans[0][1480]	= settr(1479,0,1481,763,763,"fsm_state = 40", 1, 2, 0);
	trans[0][1481]	= settr(1480,0,3351,764,764,"output = 4", 1, 2, 0);
	trans[0][1482]	= settr(1481,0,1483,765,0,"((input==20))", 1, 2, 0);
	trans[0][1483]	= settr(1482,0,1484,766,766,"fsm_state = 40", 1, 2, 0);
	trans[0][1484]	= settr(1483,0,3351,767,767,"output = 4", 1, 2, 0);
	trans[0][1485]	= settr(1484,0,1486,768,0,"((input==25))", 1, 2, 0);
	trans[0][1486]	= settr(1485,0,17,769,769,"fsm_state = 38", 1, 2, 0);
	trans[0][1487]	= settr(1486,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1488]	= settr(1487,0,1489,770,0,"((input==24))", 1, 2, 0);
	trans[0][1489]	= settr(1488,0,1490,771,771,"fsm_state = 23", 1, 2, 0);
	trans[0][1490]	= settr(1489,0,3351,772,772,"output = 14", 1, 2, 0);
	trans[0][1491]	= settr(1490,0,1492,773,0,"((input==19))", 1, 2, 0);
	trans[0][1492]	= settr(1491,0,1493,774,774,"fsm_state = 23", 1, 2, 0);
	trans[0][1493]	= settr(1492,0,3351,775,775,"output = 3", 1, 2, 0);
	trans[0][1494]	= settr(1493,0,1495,776,0,"((input==17))", 1, 2, 0);
	trans[0][1495]	= settr(1494,0,1496,777,777,"fsm_state = 23", 1, 2, 0);
	trans[0][1496]	= settr(1495,0,3351,778,778,"output = 3", 1, 2, 0);
	trans[0][1497]	= settr(1496,0,1498,779,0,"((input==23))", 1, 2, 0);
	trans[0][1498]	= settr(1497,0,1499,780,780,"fsm_state = 23", 1, 2, 0);
	trans[0][1499]	= settr(1498,0,3351,781,781,"output = 14", 1, 2, 0);
	trans[0][1500]	= settr(1499,0,1501,782,0,"((input==21))", 1, 2, 0);
	trans[0][1501]	= settr(1500,0,1502,783,783,"fsm_state = 23", 1, 2, 0);
	trans[0][1502]	= settr(1501,0,3351,784,784,"output = 3", 1, 2, 0);
	trans[0][1503]	= settr(1502,0,1504,785,0,"((input==16))", 1, 2, 0);
	trans[0][1504]	= settr(1503,0,1505,786,786,"fsm_state = 23", 1, 2, 0);
	trans[0][1505]	= settr(1504,0,3351,787,787,"output = 3", 1, 2, 0);
	trans[0][1506]	= settr(1505,0,1507,788,0,"((input==26))", 1, 2, 0);
	trans[0][1507]	= settr(1506,0,17,789,789,"fsm_state = 11", 1, 2, 0);
	trans[0][1508]	= settr(1507,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1509]	= settr(1508,0,1510,790,0,"((input==18))", 1, 2, 0);
	trans[0][1510]	= settr(1509,0,1511,791,791,"fsm_state = 10", 1, 2, 0);
	trans[0][1511]	= settr(1510,0,1512,792,792,"output = 8", 1, 2, 0);
	trans[0][1512]	= settr(1511,0,1558,793,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][1558] = settr(1557,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1557,0,1551,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][1551]	= settr(1550,32,1556,794,794,"D_STEP13", 1, 2, 0);
	T = trans[0][1556] = settr(1555,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1555,0,1552,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1555,0,1554,0,0,"IF", 0, 2, 0);
	trans[0][1552]	= settr(1551,0,1,795,0,"((dealt==0))", 1, 2, 0);
	trans[0][1553]	= settr(1552,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][1557]	= settr(1556,0,1559,1,0,".(goto)", 0, 2, 0);
	trans[0][1554]	= settr(1553,0,1555,2,0,"else", 0, 2, 0);
	trans[0][1555]	= settr(1554,0,1559,1,0,"(1)", 0, 2, 0);
	trans[0][1559]	= settr(1558,0,1560,796,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][1560]	= settr(1559,0,3351,797,797,"output = 1", 1, 2, 0);
	trans[0][1561]	= settr(1560,0,17,2,0,"else", 0, 2, 0);
	trans[0][1562]	= settr(1561,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1565]	= settr(1564,0,1604,798,0,"((fsm_state==22))", 1, 2, 0);
	T = trans[0][1604] = settr(1603,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1603,0,1566,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1603,0,1569,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1603,0,1572,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1603,0,1575,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1603,0,1578,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1603,0,1581,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1603,0,1584,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1603,0,1587,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1603,0,1590,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1603,0,1593,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1603,0,1596,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1603,0,1599,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1603,0,1602,0,0,"IF", 0, 2, 0);
	trans[0][1566]	= settr(1565,0,1567,799,0,"((input==22))", 1, 2, 0);
	trans[0][1567]	= settr(1566,0,1568,800,800,"fsm_state = 40", 1, 2, 0);
	trans[0][1568]	= settr(1567,0,3351,801,801,"output = 4", 1, 2, 0);
	trans[0][1605]	= settr(1604,0,3351,1,0,".(goto)", 0, 2, 0);
	trans[0][1569]	= settr(1568,0,1570,802,0,"((input==27))", 1, 2, 0);
	trans[0][1570]	= settr(1569,0,1571,803,803,"fsm_state = 40", 1, 2, 0);
	trans[0][1571]	= settr(1570,0,3351,804,804,"output = 4", 1, 2, 0);
	trans[0][1572]	= settr(1571,0,1573,805,0,"((input==20))", 1, 2, 0);
	trans[0][1573]	= settr(1572,0,1574,806,806,"fsm_state = 40", 1, 2, 0);
	trans[0][1574]	= settr(1573,0,3351,807,807,"output = 4", 1, 2, 0);
	trans[0][1575]	= settr(1574,0,1576,808,0,"((input==25))", 1, 2, 0);
	trans[0][1576]	= settr(1575,0,17,809,809,"fsm_state = 34", 1, 2, 0);
	trans[0][1577]	= settr(1576,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1578]	= settr(1577,0,1579,810,0,"((input==24))", 1, 2, 0);
	trans[0][1579]	= settr(1578,0,1580,811,811,"fsm_state = 22", 1, 2, 0);
	trans[0][1580]	= settr(1579,0,3351,812,812,"output = 11", 1, 2, 0);
	trans[0][1581]	= settr(1580,0,1582,813,0,"((input==18))", 1, 2, 0);
	trans[0][1582]	= settr(1581,0,17,814,814,"fsm_state = 22", 1, 2, 0);
	trans[0][1583]	= settr(1582,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1584]	= settr(1583,0,1585,815,0,"((input==19))", 1, 2, 0);
	trans[0][1585]	= settr(1584,0,1586,816,816,"fsm_state = 22", 1, 2, 0);
	trans[0][1586]	= settr(1585,0,3351,817,817,"output = 3", 1, 2, 0);
	trans[0][1587]	= settr(1586,0,1588,818,0,"((input==17))", 1, 2, 0);
	trans[0][1588]	= settr(1587,0,1589,819,819,"fsm_state = 22", 1, 2, 0);
	trans[0][1589]	= settr(1588,0,3351,820,820,"output = 3", 1, 2, 0);
	trans[0][1590]	= settr(1589,0,1591,821,0,"((input==21))", 1, 2, 0);
	trans[0][1591]	= settr(1590,0,1592,822,822,"fsm_state = 22", 1, 2, 0);
	trans[0][1592]	= settr(1591,0,3351,823,823,"output = 3", 1, 2, 0);
	trans[0][1593]	= settr(1592,0,1594,824,0,"((input==16))", 1, 2, 0);
	trans[0][1594]	= settr(1593,0,1595,825,825,"fsm_state = 22", 1, 2, 0);
	trans[0][1595]	= settr(1594,0,3351,826,826,"output = 3", 1, 2, 0);
	trans[0][1596]	= settr(1595,0,1597,827,0,"((input==26))", 1, 2, 0);
	trans[0][1597]	= settr(1596,0,1598,828,828,"fsm_state = 18", 1, 2, 0);
	trans[0][1598]	= settr(1597,0,3351,829,829,"output = 14", 1, 2, 0);
	trans[0][1599]	= settr(1598,0,1600,830,0,"((input==23))", 1, 2, 0);
	trans[0][1600]	= settr(1599,0,1601,831,831,"fsm_state = 10", 1, 2, 0);
	trans[0][1601]	= settr(1600,0,3351,832,832,"output = 7", 1, 2, 0);
	trans[0][1602]	= settr(1601,0,17,2,0,"else", 0, 2, 0);
	trans[0][1603]	= settr(1602,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1606]	= settr(1605,0,1743,833,0,"((fsm_state==21))", 1, 2, 0);
	T = trans[0][1743] = settr(1742,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1742,0,1607,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1742,0,1610,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1742,0,1613,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1742,0,1616,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1742,0,1619,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1742,0,1720,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1742,0,1723,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1742,0,1726,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1742,0,1729,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1742,0,1732,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1742,0,1735,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1742,0,1738,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1742,0,1741,0,0,"IF", 0, 2, 0);
	trans[0][1607]	= settr(1606,0,1608,834,0,"((input==22))", 1, 2, 0);
	trans[0][1608]	= settr(1607,0,1609,835,835,"fsm_state = 40", 1, 2, 0);
	trans[0][1609]	= settr(1608,0,3351,836,836,"output = 4", 1, 2, 0);
	trans[0][1744]	= settr(1743,0,3351,1,0,".(goto)", 0, 2, 0);
	trans[0][1610]	= settr(1609,0,1611,837,0,"((input==27))", 1, 2, 0);
	trans[0][1611]	= settr(1610,0,1612,838,838,"fsm_state = 40", 1, 2, 0);
	trans[0][1612]	= settr(1611,0,3351,839,839,"output = 4", 1, 2, 0);
	trans[0][1613]	= settr(1612,0,1614,840,0,"((input==20))", 1, 2, 0);
	trans[0][1614]	= settr(1613,0,1615,841,841,"fsm_state = 40", 1, 2, 0);
	trans[0][1615]	= settr(1614,0,3351,842,842,"output = 4", 1, 2, 0);
	trans[0][1616]	= settr(1615,0,1617,843,0,"((input==25))", 1, 2, 0);
	trans[0][1617]	= settr(1616,0,17,844,844,"fsm_state = 38", 1, 2, 0);
	trans[0][1618]	= settr(1617,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1619]	= settr(1618,0,1620,845,0,"((input==18))", 1, 2, 0);
	trans[0][1620]	= settr(1619,0,1621,846,846,"fsm_state = 22", 1, 2, 0);
	trans[0][1621]	= settr(1620,0,1622,847,847,"output = 8", 1, 2, 0);
	trans[0][1622]	= settr(1621,0,1668,848,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][1668] = settr(1667,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1667,0,1661,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][1661]	= settr(1660,32,1666,849,849,"D_STEP13", 1, 2, 0);
	T = trans[0][1666] = settr(1665,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1665,0,1662,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1665,0,1664,0,0,"IF", 0, 2, 0);
	trans[0][1662]	= settr(1661,0,1,850,0,"((dealt==0))", 1, 2, 0);
	trans[0][1663]	= settr(1662,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][1667]	= settr(1666,0,1669,1,0,".(goto)", 0, 2, 0);
	trans[0][1664]	= settr(1663,0,1665,2,0,"else", 0, 2, 0);
	trans[0][1665]	= settr(1664,0,1669,1,0,"(1)", 0, 2, 0);
	trans[0][1669]	= settr(1668,0,1670,851,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][1670]	= settr(1669,0,1671,852,852,"output = 1", 1, 2, 0);
	trans[0][1671]	= settr(1670,0,1717,853,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][1717] = settr(1716,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1716,0,1710,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][1710]	= settr(1709,32,1715,854,854,"D_STEP13", 1, 2, 0);
	T = trans[0][1715] = settr(1714,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1714,0,1711,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1714,0,1713,0,0,"IF", 0, 2, 0);
	trans[0][1711]	= settr(1710,0,1,855,0,"((dealt==0))", 1, 2, 0);
	trans[0][1712]	= settr(1711,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][1716]	= settr(1715,0,1718,1,0,".(goto)", 0, 2, 0);
	trans[0][1713]	= settr(1712,0,1714,2,0,"else", 0, 2, 0);
	trans[0][1714]	= settr(1713,0,1718,1,0,"(1)", 0, 2, 0);
	trans[0][1718]	= settr(1717,0,1719,856,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][1719]	= settr(1718,0,3351,857,857,"output = 12", 1, 2, 0);
	trans[0][1720]	= settr(1719,0,1721,858,0,"((input==24))", 1, 2, 0);
	trans[0][1721]	= settr(1720,0,17,859,859,"fsm_state = 21", 1, 2, 0);
	trans[0][1722]	= settr(1721,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1723]	= settr(1722,0,1724,860,0,"((input==19))", 1, 2, 0);
	trans[0][1724]	= settr(1723,0,1725,861,861,"fsm_state = 21", 1, 2, 0);
	trans[0][1725]	= settr(1724,0,3351,862,862,"output = 3", 1, 2, 0);
	trans[0][1726]	= settr(1725,0,1727,863,0,"((input==17))", 1, 2, 0);
	trans[0][1727]	= settr(1726,0,1728,864,864,"fsm_state = 21", 1, 2, 0);
	trans[0][1728]	= settr(1727,0,3351,865,865,"output = 3", 1, 2, 0);
	trans[0][1729]	= settr(1728,0,1730,866,0,"((input==21))", 1, 2, 0);
	trans[0][1730]	= settr(1729,0,1731,867,867,"fsm_state = 21", 1, 2, 0);
	trans[0][1731]	= settr(1730,0,3351,868,868,"output = 3", 1, 2, 0);
	trans[0][1732]	= settr(1731,0,1733,869,0,"((input==16))", 1, 2, 0);
	trans[0][1733]	= settr(1732,0,1734,870,870,"fsm_state = 21", 1, 2, 0);
	trans[0][1734]	= settr(1733,0,3351,871,871,"output = 3", 1, 2, 0);
	trans[0][1735]	= settr(1734,0,1736,872,0,"((input==23))", 1, 2, 0);
	trans[0][1736]	= settr(1735,0,17,873,873,"fsm_state = 20", 1, 2, 0);
	trans[0][1737]	= settr(1736,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1738]	= settr(1737,0,1739,874,0,"((input==26))", 1, 2, 0);
	trans[0][1739]	= settr(1738,0,1740,875,875,"fsm_state = 19", 1, 2, 0);
	trans[0][1740]	= settr(1739,0,3351,876,876,"output = 14", 1, 2, 0);
	trans[0][1741]	= settr(1740,0,17,2,0,"else", 0, 2, 0);
	trans[0][1742]	= settr(1741,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1745]	= settr(1744,0,1882,877,0,"((fsm_state==20))", 1, 2, 0);
	T = trans[0][1882] = settr(1881,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1881,0,1746,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1881,0,1749,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1881,0,1752,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1881,0,1755,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1881,0,1758,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1881,0,1761,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1881,0,1764,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1881,0,1767,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1881,0,1770,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1881,0,1773,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1881,0,1776,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1881,0,1779,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1881,0,1880,0,0,"IF", 0, 2, 0);
	trans[0][1746]	= settr(1745,0,1747,878,0,"((input==22))", 1, 2, 0);
	trans[0][1747]	= settr(1746,0,1748,879,879,"fsm_state = 40", 1, 2, 0);
	trans[0][1748]	= settr(1747,0,3351,880,880,"output = 4", 1, 2, 0);
	trans[0][1883]	= settr(1882,0,3351,1,0,".(goto)", 0, 2, 0);
	trans[0][1749]	= settr(1748,0,1750,881,0,"((input==27))", 1, 2, 0);
	trans[0][1750]	= settr(1749,0,1751,882,882,"fsm_state = 40", 1, 2, 0);
	trans[0][1751]	= settr(1750,0,3351,883,883,"output = 4", 1, 2, 0);
	trans[0][1752]	= settr(1751,0,1753,884,0,"((input==20))", 1, 2, 0);
	trans[0][1753]	= settr(1752,0,1754,885,885,"fsm_state = 40", 1, 2, 0);
	trans[0][1754]	= settr(1753,0,3351,886,886,"output = 4", 1, 2, 0);
	trans[0][1755]	= settr(1754,0,1756,887,0,"((input==25))", 1, 2, 0);
	trans[0][1756]	= settr(1755,0,17,888,888,"fsm_state = 38", 1, 2, 0);
	trans[0][1757]	= settr(1756,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1758]	= settr(1757,0,1759,889,0,"((input==24))", 1, 2, 0);
	trans[0][1759]	= settr(1758,0,1760,890,890,"fsm_state = 20", 1, 2, 0);
	trans[0][1760]	= settr(1759,0,3351,891,891,"output = 14", 1, 2, 0);
	trans[0][1761]	= settr(1760,0,1762,892,0,"((input==19))", 1, 2, 0);
	trans[0][1762]	= settr(1761,0,1763,893,893,"fsm_state = 20", 1, 2, 0);
	trans[0][1763]	= settr(1762,0,3351,894,894,"output = 3", 1, 2, 0);
	trans[0][1764]	= settr(1763,0,1765,895,0,"((input==17))", 1, 2, 0);
	trans[0][1765]	= settr(1764,0,1766,896,896,"fsm_state = 20", 1, 2, 0);
	trans[0][1766]	= settr(1765,0,3351,897,897,"output = 3", 1, 2, 0);
	trans[0][1767]	= settr(1766,0,1768,898,0,"((input==23))", 1, 2, 0);
	trans[0][1768]	= settr(1767,0,1769,899,899,"fsm_state = 20", 1, 2, 0);
	trans[0][1769]	= settr(1768,0,3351,900,900,"output = 14", 1, 2, 0);
	trans[0][1770]	= settr(1769,0,1771,901,0,"((input==21))", 1, 2, 0);
	trans[0][1771]	= settr(1770,0,1772,902,902,"fsm_state = 20", 1, 2, 0);
	trans[0][1772]	= settr(1771,0,3351,903,903,"output = 3", 1, 2, 0);
	trans[0][1773]	= settr(1772,0,1774,904,0,"((input==16))", 1, 2, 0);
	trans[0][1774]	= settr(1773,0,1775,905,905,"fsm_state = 20", 1, 2, 0);
	trans[0][1775]	= settr(1774,0,3351,906,906,"output = 3", 1, 2, 0);
	trans[0][1776]	= settr(1775,0,1777,907,0,"((input==26))", 1, 2, 0);
	trans[0][1777]	= settr(1776,0,17,908,908,"fsm_state = 11", 1, 2, 0);
	trans[0][1778]	= settr(1777,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1779]	= settr(1778,0,1780,909,0,"((input==18))", 1, 2, 0);
	trans[0][1780]	= settr(1779,0,1781,910,910,"fsm_state = 10", 1, 2, 0);
	trans[0][1781]	= settr(1780,0,1782,911,911,"output = 8", 1, 2, 0);
	trans[0][1782]	= settr(1781,0,1828,912,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][1828] = settr(1827,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1827,0,1821,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][1821]	= settr(1820,32,1826,913,913,"D_STEP13", 1, 2, 0);
	T = trans[0][1826] = settr(1825,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1825,0,1822,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1825,0,1824,0,0,"IF", 0, 2, 0);
	trans[0][1822]	= settr(1821,0,1,914,0,"((dealt==0))", 1, 2, 0);
	trans[0][1823]	= settr(1822,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][1827]	= settr(1826,0,1829,1,0,".(goto)", 0, 2, 0);
	trans[0][1824]	= settr(1823,0,1825,2,0,"else", 0, 2, 0);
	trans[0][1825]	= settr(1824,0,1829,1,0,"(1)", 0, 2, 0);
	trans[0][1829]	= settr(1828,0,1830,915,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][1830]	= settr(1829,0,1831,916,916,"output = 1", 1, 2, 0);
	trans[0][1831]	= settr(1830,0,1877,917,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][1877] = settr(1876,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1876,0,1870,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][1870]	= settr(1869,32,1875,918,918,"D_STEP13", 1, 2, 0);
	T = trans[0][1875] = settr(1874,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1874,0,1871,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1874,0,1873,0,0,"IF", 0, 2, 0);
	trans[0][1871]	= settr(1870,0,1,919,0,"((dealt==0))", 1, 2, 0);
	trans[0][1872]	= settr(1871,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][1876]	= settr(1875,0,1878,1,0,".(goto)", 0, 2, 0);
	trans[0][1873]	= settr(1872,0,1874,2,0,"else", 0, 2, 0);
	trans[0][1874]	= settr(1873,0,1878,1,0,"(1)", 0, 2, 0);
	trans[0][1878]	= settr(1877,0,1879,920,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][1879]	= settr(1878,0,3351,921,921,"output = 12", 1, 2, 0);
	trans[0][1880]	= settr(1879,0,17,2,0,"else", 0, 2, 0);
	trans[0][1881]	= settr(1880,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1884]	= settr(1883,0,2021,922,0,"((fsm_state==19))", 1, 2, 0);
	T = trans[0][2021] = settr(2020,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2020,0,1885,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2020,0,1888,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2020,0,1891,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2020,0,1894,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2020,0,1897,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2020,0,1900,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2020,0,1903,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2020,0,1906,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2020,0,1909,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2020,0,1912,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2020,0,1915,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2020,0,2016,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2020,0,2019,0,0,"IF", 0, 2, 0);
	trans[0][1885]	= settr(1884,0,1886,923,0,"((input==22))", 1, 2, 0);
	trans[0][1886]	= settr(1885,0,1887,924,924,"fsm_state = 42", 1, 2, 0);
	trans[0][1887]	= settr(1886,0,3351,925,925,"output = 4", 1, 2, 0);
	trans[0][2022]	= settr(2021,0,3351,1,0,".(goto)", 0, 2, 0);
	trans[0][1888]	= settr(1887,0,1889,926,0,"((input==27))", 1, 2, 0);
	trans[0][1889]	= settr(1888,0,1890,927,927,"fsm_state = 42", 1, 2, 0);
	trans[0][1890]	= settr(1889,0,3351,928,928,"output = 4", 1, 2, 0);
	trans[0][1891]	= settr(1890,0,1892,929,0,"((input==20))", 1, 2, 0);
	trans[0][1892]	= settr(1891,0,1893,930,930,"fsm_state = 42", 1, 2, 0);
	trans[0][1893]	= settr(1892,0,3351,931,931,"output = 4", 1, 2, 0);
	trans[0][1894]	= settr(1893,0,1895,932,0,"((input==25))", 1, 2, 0);
	trans[0][1895]	= settr(1894,0,17,933,933,"fsm_state = 36", 1, 2, 0);
	trans[0][1896]	= settr(1895,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1897]	= settr(1896,0,1898,934,0,"((input==21))", 1, 2, 0);
	trans[0][1898]	= settr(1897,0,1899,935,935,"fsm_state = 21", 1, 2, 0);
	trans[0][1899]	= settr(1898,0,3351,936,936,"output = 14", 1, 2, 0);
	trans[0][1900]	= settr(1899,0,1901,937,0,"((input==24))", 1, 2, 0);
	trans[0][1901]	= settr(1900,0,17,938,938,"fsm_state = 19", 1, 2, 0);
	trans[0][1902]	= settr(1901,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1903]	= settr(1902,0,1904,939,0,"((input==19))", 1, 2, 0);
	trans[0][1904]	= settr(1903,0,1905,940,940,"fsm_state = 19", 1, 2, 0);
	trans[0][1905]	= settr(1904,0,3351,941,941,"output = 14", 1, 2, 0);
	trans[0][1906]	= settr(1905,0,1907,942,0,"((input==26))", 1, 2, 0);
	trans[0][1907]	= settr(1906,0,1908,943,943,"fsm_state = 19", 1, 2, 0);
	trans[0][1908]	= settr(1907,0,3351,944,944,"output = 5", 1, 2, 0);
	trans[0][1909]	= settr(1908,0,1910,945,0,"((input==17))", 1, 2, 0);
	trans[0][1910]	= settr(1909,0,1911,946,946,"fsm_state = 19", 1, 2, 0);
	trans[0][1911]	= settr(1910,0,3351,947,947,"output = 14", 1, 2, 0);
	trans[0][1912]	= settr(1911,0,1913,948,0,"((input==16))", 1, 2, 0);
	trans[0][1913]	= settr(1912,0,1914,949,949,"fsm_state = 19", 1, 2, 0);
	trans[0][1914]	= settr(1913,0,3351,950,950,"output = 14", 1, 2, 0);
	trans[0][1915]	= settr(1914,0,1916,951,0,"((input==18))", 1, 2, 0);
	trans[0][1916]	= settr(1915,0,1917,952,952,"fsm_state = 18", 1, 2, 0);
	trans[0][1917]	= settr(1916,0,1918,953,953,"output = 8", 1, 2, 0);
	trans[0][1918]	= settr(1917,0,1964,954,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][1964] = settr(1963,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1963,0,1957,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][1957]	= settr(1956,32,1962,955,955,"D_STEP13", 1, 2, 0);
	T = trans[0][1962] = settr(1961,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1961,0,1958,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1961,0,1960,0,0,"IF", 0, 2, 0);
	trans[0][1958]	= settr(1957,0,1,956,0,"((dealt==0))", 1, 2, 0);
	trans[0][1959]	= settr(1958,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][1963]	= settr(1962,0,1965,1,0,".(goto)", 0, 2, 0);
	trans[0][1960]	= settr(1959,0,1961,2,0,"else", 0, 2, 0);
	trans[0][1961]	= settr(1960,0,1965,1,0,"(1)", 0, 2, 0);
	trans[0][1965]	= settr(1964,0,1966,957,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][1966]	= settr(1965,0,1967,958,958,"output = 1", 1, 2, 0);
	trans[0][1967]	= settr(1966,0,2013,959,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2013] = settr(2012,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2012,0,2006,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2006]	= settr(2005,32,2011,960,960,"D_STEP13", 1, 2, 0);
	T = trans[0][2011] = settr(2010,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2010,0,2007,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2010,0,2009,0,0,"IF", 0, 2, 0);
	trans[0][2007]	= settr(2006,0,1,961,0,"((dealt==0))", 1, 2, 0);
	trans[0][2008]	= settr(2007,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2012]	= settr(2011,0,2014,1,0,".(goto)", 0, 2, 0);
	trans[0][2009]	= settr(2008,0,2010,2,0,"else", 0, 2, 0);
	trans[0][2010]	= settr(2009,0,2014,1,0,"(1)", 0, 2, 0);
	trans[0][2014]	= settr(2013,0,2015,962,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2015]	= settr(2014,0,3351,963,963,"output = 12", 1, 2, 0);
	trans[0][2016]	= settr(2015,0,2017,964,0,"((input==23))", 1, 2, 0);
	trans[0][2017]	= settr(2016,0,17,965,965,"fsm_state = 17", 1, 2, 0);
	trans[0][2018]	= settr(2017,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2019]	= settr(2018,0,17,2,0,"else", 0, 2, 0);
	trans[0][2020]	= settr(2019,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2023]	= settr(2022,0,2062,966,0,"((fsm_state==18))", 1, 2, 0);
	T = trans[0][2062] = settr(2061,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2061,0,2024,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2061,0,2027,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2061,0,2030,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2061,0,2033,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2061,0,2036,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2061,0,2039,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2061,0,2042,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2061,0,2045,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2061,0,2048,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2061,0,2051,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2061,0,2054,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2061,0,2057,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2061,0,2060,0,0,"IF", 0, 2, 0);
	trans[0][2024]	= settr(2023,0,2025,967,0,"((input==22))", 1, 2, 0);
	trans[0][2025]	= settr(2024,0,2026,968,968,"fsm_state = 42", 1, 2, 0);
	trans[0][2026]	= settr(2025,0,3351,969,969,"output = 4", 1, 2, 0);
	trans[0][2063]	= settr(2062,0,3351,1,0,".(goto)", 0, 2, 0);
	trans[0][2027]	= settr(2026,0,2028,970,0,"((input==27))", 1, 2, 0);
	trans[0][2028]	= settr(2027,0,2029,971,971,"fsm_state = 42", 1, 2, 0);
	trans[0][2029]	= settr(2028,0,3351,972,972,"output = 4", 1, 2, 0);
	trans[0][2030]	= settr(2029,0,2031,973,0,"((input==20))", 1, 2, 0);
	trans[0][2031]	= settr(2030,0,2032,974,974,"fsm_state = 42", 1, 2, 0);
	trans[0][2032]	= settr(2031,0,3351,975,975,"output = 4", 1, 2, 0);
	trans[0][2033]	= settr(2032,0,2034,976,0,"((input==25))", 1, 2, 0);
	trans[0][2034]	= settr(2033,0,17,977,977,"fsm_state = 32", 1, 2, 0);
	trans[0][2035]	= settr(2034,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2036]	= settr(2035,0,2037,978,0,"((input==21))", 1, 2, 0);
	trans[0][2037]	= settr(2036,0,2038,979,979,"fsm_state = 22", 1, 2, 0);
	trans[0][2038]	= settr(2037,0,3351,980,980,"output = 14", 1, 2, 0);
	trans[0][2039]	= settr(2038,0,2040,981,0,"((input==24))", 1, 2, 0);
	trans[0][2040]	= settr(2039,0,2041,982,982,"fsm_state = 18", 1, 2, 0);
	trans[0][2041]	= settr(2040,0,3351,983,983,"output = 11", 1, 2, 0);
	trans[0][2042]	= settr(2041,0,2043,984,0,"((input==18))", 1, 2, 0);
	trans[0][2043]	= settr(2042,0,17,985,985,"fsm_state = 18", 1, 2, 0);
	trans[0][2044]	= settr(2043,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2045]	= settr(2044,0,2046,986,0,"((input==19))", 1, 2, 0);
	trans[0][2046]	= settr(2045,0,2047,987,987,"fsm_state = 18", 1, 2, 0);
	trans[0][2047]	= settr(2046,0,3351,988,988,"output = 14", 1, 2, 0);
	trans[0][2048]	= settr(2047,0,2049,989,0,"((input==26))", 1, 2, 0);
	trans[0][2049]	= settr(2048,0,2050,990,990,"fsm_state = 18", 1, 2, 0);
	trans[0][2050]	= settr(2049,0,3351,991,991,"output = 5", 1, 2, 0);
	trans[0][2051]	= settr(2050,0,2052,992,0,"((input==17))", 1, 2, 0);
	trans[0][2052]	= settr(2051,0,2053,993,993,"fsm_state = 18", 1, 2, 0);
	trans[0][2053]	= settr(2052,0,3351,994,994,"output = 14", 1, 2, 0);
	trans[0][2054]	= settr(2053,0,2055,995,0,"((input==16))", 1, 2, 0);
	trans[0][2055]	= settr(2054,0,2056,996,996,"fsm_state = 18", 1, 2, 0);
	trans[0][2056]	= settr(2055,0,3351,997,997,"output = 14", 1, 2, 0);
	trans[0][2057]	= settr(2056,0,2058,998,0,"((input==23))", 1, 2, 0);
	trans[0][2058]	= settr(2057,0,2059,999,999,"fsm_state = 9", 1, 2, 0);
	trans[0][2059]	= settr(2058,0,3351,1000,1000,"output = 7", 1, 2, 0);
	trans[0][2060]	= settr(2059,0,17,2,0,"else", 0, 2, 0);
	trans[0][2061]	= settr(2060,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2064]	= settr(2063,0,2201,1001,0,"((fsm_state==17))", 1, 2, 0);
	T = trans[0][2201] = settr(2200,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2200,0,2065,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2200,0,2068,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2200,0,2071,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2200,0,2074,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2200,0,2077,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2200,0,2080,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2200,0,2083,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2200,0,2086,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2200,0,2089,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2200,0,2092,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2200,0,2095,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2200,0,2098,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2200,0,2199,0,0,"IF", 0, 2, 0);
	trans[0][2065]	= settr(2064,0,2066,1002,0,"((input==22))", 1, 2, 0);
	trans[0][2066]	= settr(2065,0,2067,1003,1003,"fsm_state = 42", 1, 2, 0);
	trans[0][2067]	= settr(2066,0,3351,1004,1004,"output = 4", 1, 2, 0);
	trans[0][2202]	= settr(2201,0,3351,1,0,".(goto)", 0, 2, 0);
	trans[0][2068]	= settr(2067,0,2069,1005,0,"((input==27))", 1, 2, 0);
	trans[0][2069]	= settr(2068,0,2070,1006,1006,"fsm_state = 42", 1, 2, 0);
	trans[0][2070]	= settr(2069,0,3351,1007,1007,"output = 4", 1, 2, 0);
	trans[0][2071]	= settr(2070,0,2072,1008,0,"((input==20))", 1, 2, 0);
	trans[0][2072]	= settr(2071,0,2073,1009,1009,"fsm_state = 42", 1, 2, 0);
	trans[0][2073]	= settr(2072,0,3351,1010,1010,"output = 4", 1, 2, 0);
	trans[0][2074]	= settr(2073,0,2075,1011,0,"((input==25))", 1, 2, 0);
	trans[0][2075]	= settr(2074,0,17,1012,1012,"fsm_state = 36", 1, 2, 0);
	trans[0][2076]	= settr(2075,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2077]	= settr(2076,0,2078,1013,0,"((input==21))", 1, 2, 0);
	trans[0][2078]	= settr(2077,0,17,1014,1014,"fsm_state = 20", 1, 2, 0);
	trans[0][2079]	= settr(2078,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2080]	= settr(2079,0,2081,1015,0,"((input==24))", 1, 2, 0);
	trans[0][2081]	= settr(2080,0,2082,1016,1016,"fsm_state = 17", 1, 2, 0);
	trans[0][2082]	= settr(2081,0,3351,1017,1017,"output = 14", 1, 2, 0);
	trans[0][2083]	= settr(2082,0,2084,1018,0,"((input==19))", 1, 2, 0);
	trans[0][2084]	= settr(2083,0,17,1019,1019,"fsm_state = 17", 1, 2, 0);
	trans[0][2085]	= settr(2084,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2086]	= settr(2085,0,2087,1020,0,"((input==26))", 1, 2, 0);
	trans[0][2087]	= settr(2086,0,2088,1021,1021,"fsm_state = 17", 1, 2, 0);
	trans[0][2088]	= settr(2087,0,3351,1022,1022,"output = 5", 1, 2, 0);
	trans[0][2089]	= settr(2088,0,2090,1023,0,"((input==17))", 1, 2, 0);
	trans[0][2090]	= settr(2089,0,17,1024,1024,"fsm_state = 17", 1, 2, 0);
	trans[0][2091]	= settr(2090,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2092]	= settr(2091,0,2093,1025,0,"((input==23))", 1, 2, 0);
	trans[0][2093]	= settr(2092,0,2094,1026,1026,"fsm_state = 17", 1, 2, 0);
	trans[0][2094]	= settr(2093,0,3351,1027,1027,"output = 14", 1, 2, 0);
	trans[0][2095]	= settr(2094,0,2096,1028,0,"((input==16))", 1, 2, 0);
	trans[0][2096]	= settr(2095,0,17,1029,1029,"fsm_state = 17", 1, 2, 0);
	trans[0][2097]	= settr(2096,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2098]	= settr(2097,0,2099,1030,0,"((input==18))", 1, 2, 0);
	trans[0][2099]	= settr(2098,0,2100,1031,1031,"fsm_state = 9", 1, 2, 0);
	trans[0][2100]	= settr(2099,0,2101,1032,1032,"output = 8", 1, 2, 0);
	trans[0][2101]	= settr(2100,0,2147,1033,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2147] = settr(2146,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2146,0,2140,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2140]	= settr(2139,32,2145,1034,1034,"D_STEP13", 1, 2, 0);
	T = trans[0][2145] = settr(2144,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2144,0,2141,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2144,0,2143,0,0,"IF", 0, 2, 0);
	trans[0][2141]	= settr(2140,0,1,1035,0,"((dealt==0))", 1, 2, 0);
	trans[0][2142]	= settr(2141,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2146]	= settr(2145,0,2148,1,0,".(goto)", 0, 2, 0);
	trans[0][2143]	= settr(2142,0,2144,2,0,"else", 0, 2, 0);
	trans[0][2144]	= settr(2143,0,2148,1,0,"(1)", 0, 2, 0);
	trans[0][2148]	= settr(2147,0,2149,1036,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2149]	= settr(2148,0,2150,1037,1037,"output = 1", 1, 2, 0);
	trans[0][2150]	= settr(2149,0,2196,1038,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2196] = settr(2195,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2195,0,2189,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2189]	= settr(2188,32,2194,1039,1039,"D_STEP13", 1, 2, 0);
	T = trans[0][2194] = settr(2193,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2193,0,2190,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2193,0,2192,0,0,"IF", 0, 2, 0);
	trans[0][2190]	= settr(2189,0,1,1040,0,"((dealt==0))", 1, 2, 0);
	trans[0][2191]	= settr(2190,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2195]	= settr(2194,0,2197,1,0,".(goto)", 0, 2, 0);
	trans[0][2192]	= settr(2191,0,2193,2,0,"else", 0, 2, 0);
	trans[0][2193]	= settr(2192,0,2197,1,0,"(1)", 0, 2, 0);
	trans[0][2197]	= settr(2196,0,2198,1041,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2198]	= settr(2197,0,3351,1042,1042,"output = 12", 1, 2, 0);
	trans[0][2199]	= settr(2198,0,17,2,0,"else", 0, 2, 0);
	trans[0][2200]	= settr(2199,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2203]	= settr(2202,0,2291,1043,0,"((fsm_state==16))", 1, 2, 0);
	T = trans[0][2291] = settr(2290,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2290,0,2204,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2290,0,2207,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2290,0,2210,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2290,0,2213,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2290,0,2216,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2290,0,2219,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2290,0,2222,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2290,0,2225,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2290,0,2228,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2290,0,2231,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2290,0,2234,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2290,0,2237,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2290,0,2289,0,0,"IF", 0, 2, 0);
	trans[0][2204]	= settr(2203,0,2205,1044,0,"((input==22))", 1, 2, 0);
	trans[0][2205]	= settr(2204,0,2206,1045,1045,"fsm_state = 42", 1, 2, 0);
	trans[0][2206]	= settr(2205,0,3351,1046,1046,"output = 4", 1, 2, 0);
	trans[0][2292]	= settr(2291,0,3351,1,0,".(goto)", 0, 2, 0);
	trans[0][2207]	= settr(2206,0,2208,1047,0,"((input==27))", 1, 2, 0);
	trans[0][2208]	= settr(2207,0,2209,1048,1048,"fsm_state = 42", 1, 2, 0);
	trans[0][2209]	= settr(2208,0,3351,1049,1049,"output = 4", 1, 2, 0);
	trans[0][2210]	= settr(2209,0,2211,1050,0,"((input==20))", 1, 2, 0);
	trans[0][2211]	= settr(2210,0,2212,1051,1051,"fsm_state = 42", 1, 2, 0);
	trans[0][2212]	= settr(2211,0,3351,1052,1052,"output = 4", 1, 2, 0);
	trans[0][2213]	= settr(2212,0,2214,1053,0,"((input==25))", 1, 2, 0);
	trans[0][2214]	= settr(2213,0,17,1054,1054,"fsm_state = 36", 1, 2, 0);
	trans[0][2215]	= settr(2214,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2216]	= settr(2215,0,2217,1055,0,"((input==21))", 1, 2, 0);
	trans[0][2217]	= settr(2216,0,17,1056,1056,"fsm_state = 23", 1, 2, 0);
	trans[0][2218]	= settr(2217,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2219]	= settr(2218,0,2220,1057,0,"((input==24))", 1, 2, 0);
	trans[0][2220]	= settr(2219,0,2221,1058,1058,"fsm_state = 16", 1, 2, 0);
	trans[0][2221]	= settr(2220,0,3351,1059,1059,"output = 14", 1, 2, 0);
	trans[0][2222]	= settr(2221,0,2223,1060,0,"((input==19))", 1, 2, 0);
	trans[0][2223]	= settr(2222,0,17,1061,1061,"fsm_state = 16", 1, 2, 0);
	trans[0][2224]	= settr(2223,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2225]	= settr(2224,0,2226,1062,0,"((input==26))", 1, 2, 0);
	trans[0][2226]	= settr(2225,0,2227,1063,1063,"fsm_state = 16", 1, 2, 0);
	trans[0][2227]	= settr(2226,0,3351,1064,1064,"output = 5", 1, 2, 0);
	trans[0][2228]	= settr(2227,0,2229,1065,0,"((input==17))", 1, 2, 0);
	trans[0][2229]	= settr(2228,0,17,1066,1066,"fsm_state = 16", 1, 2, 0);
	trans[0][2230]	= settr(2229,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2231]	= settr(2230,0,2232,1067,0,"((input==23))", 1, 2, 0);
	trans[0][2232]	= settr(2231,0,2233,1068,1068,"fsm_state = 16", 1, 2, 0);
	trans[0][2233]	= settr(2232,0,3351,1069,1069,"output = 14", 1, 2, 0);
	trans[0][2234]	= settr(2233,0,2235,1070,0,"((input==16))", 1, 2, 0);
	trans[0][2235]	= settr(2234,0,17,1071,1071,"fsm_state = 16", 1, 2, 0);
	trans[0][2236]	= settr(2235,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2237]	= settr(2236,0,2238,1072,0,"((input==18))", 1, 2, 0);
	trans[0][2238]	= settr(2237,0,2239,1073,1073,"fsm_state = 9", 1, 2, 0);
	trans[0][2239]	= settr(2238,0,2240,1074,1074,"output = 8", 1, 2, 0);
	trans[0][2240]	= settr(2239,0,2286,1075,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2286] = settr(2285,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2285,0,2279,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2279]	= settr(2278,32,2284,1076,1076,"D_STEP13", 1, 2, 0);
	T = trans[0][2284] = settr(2283,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2283,0,2280,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2283,0,2282,0,0,"IF", 0, 2, 0);
	trans[0][2280]	= settr(2279,0,1,1077,0,"((dealt==0))", 1, 2, 0);
	trans[0][2281]	= settr(2280,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2285]	= settr(2284,0,2287,1,0,".(goto)", 0, 2, 0);
	trans[0][2282]	= settr(2281,0,2283,2,0,"else", 0, 2, 0);
	trans[0][2283]	= settr(2282,0,2287,1,0,"(1)", 0, 2, 0);
	trans[0][2287]	= settr(2286,0,2288,1078,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2288]	= settr(2287,0,3351,1079,1079,"output = 1", 1, 2, 0);
	trans[0][2289]	= settr(2288,0,17,2,0,"else", 0, 2, 0);
	trans[0][2290]	= settr(2289,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2293]	= settr(2292,0,2332,1080,0,"((fsm_state==15))", 1, 2, 0);
	T = trans[0][2332] = settr(2331,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2331,0,2294,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2331,0,2297,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2331,0,2300,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2331,0,2303,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2331,0,2306,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2331,0,2309,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2331,0,2312,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2331,0,2315,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2331,0,2318,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2331,0,2321,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2331,0,2324,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2331,0,2327,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2331,0,2330,0,0,"IF", 0, 2, 0);
	trans[0][2294]	= settr(2293,0,2295,1081,0,"((input==18))", 1, 2, 0);
	trans[0][2295]	= settr(2294,0,2296,1082,1082,"fsm_state = 42", 1, 2, 0);
	trans[0][2296]	= settr(2295,0,3351,1083,1083,"output = 4", 1, 2, 0);
	trans[0][2333]	= settr(2332,0,3351,1,0,".(goto)", 0, 2, 0);
	trans[0][2297]	= settr(2296,0,2298,1084,0,"((input==25))", 1, 2, 0);
	trans[0][2298]	= settr(2297,0,2299,1085,1085,"fsm_state = 42", 1, 2, 0);
	trans[0][2299]	= settr(2298,0,3351,1086,1086,"output = 4", 1, 2, 0);
	trans[0][2300]	= settr(2299,0,2301,1087,0,"((input==22))", 1, 2, 0);
	trans[0][2301]	= settr(2300,0,2302,1088,1088,"fsm_state = 42", 1, 2, 0);
	trans[0][2302]	= settr(2301,0,3351,1089,1089,"output = 4", 1, 2, 0);
	trans[0][2303]	= settr(2302,0,2304,1090,0,"((input==27))", 1, 2, 0);
	trans[0][2304]	= settr(2303,0,2305,1091,1091,"fsm_state = 16", 1, 2, 0);
	trans[0][2305]	= settr(2304,0,3351,1092,1092,"output = 6", 1, 2, 0);
	trans[0][2306]	= settr(2305,0,2307,1093,0,"((input==24))", 1, 2, 0);
	trans[0][2307]	= settr(2306,0,2308,1094,1094,"fsm_state = 15", 1, 2, 0);
	trans[0][2308]	= settr(2307,0,3351,1095,1095,"output = 14", 1, 2, 0);
	trans[0][2309]	= settr(2308,0,2310,1096,0,"((input==19))", 1, 2, 0);
	trans[0][2310]	= settr(2309,0,17,1097,1097,"fsm_state = 15", 1, 2, 0);
	trans[0][2311]	= settr(2310,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2312]	= settr(2311,0,2313,1098,0,"((input==26))", 1, 2, 0);
	trans[0][2313]	= settr(2312,0,2314,1099,1099,"fsm_state = 15", 1, 2, 0);
	trans[0][2314]	= settr(2313,0,3351,1100,1100,"output = 5", 1, 2, 0);
	trans[0][2315]	= settr(2314,0,2316,1101,0,"((input==17))", 1, 2, 0);
	trans[0][2316]	= settr(2315,0,17,1102,1102,"fsm_state = 15", 1, 2, 0);
	trans[0][2317]	= settr(2316,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2318]	= settr(2317,0,2319,1103,0,"((input==23))", 1, 2, 0);
	trans[0][2319]	= settr(2318,0,2320,1104,1104,"fsm_state = 15", 1, 2, 0);
	trans[0][2320]	= settr(2319,0,3351,1105,1105,"output = 14", 1, 2, 0);
	trans[0][2321]	= settr(2320,0,2322,1106,0,"((input==16))", 1, 2, 0);
	trans[0][2322]	= settr(2321,0,17,1107,1107,"fsm_state = 15", 1, 2, 0);
	trans[0][2323]	= settr(2322,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2324]	= settr(2323,0,2325,1108,0,"((input==20))", 1, 2, 0);
	trans[0][2325]	= settr(2324,0,2326,1109,1109,"fsm_state = 15", 1, 2, 0);
	trans[0][2326]	= settr(2325,0,3351,1110,1110,"output = 13", 1, 2, 0);
	trans[0][2327]	= settr(2326,0,2328,1111,0,"((input==21))", 1, 2, 0);
	trans[0][2328]	= settr(2327,0,17,1112,1112,"fsm_state = 13", 1, 2, 0);
	trans[0][2329]	= settr(2328,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2330]	= settr(2329,0,17,2,0,"else", 0, 2, 0);
	trans[0][2331]	= settr(2330,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2334]	= settr(2333,0,2422,1113,0,"((fsm_state==14))", 1, 2, 0);
	T = trans[0][2422] = settr(2421,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2421,0,2335,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2421,0,2338,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2421,0,2341,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2421,0,2344,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2421,0,2347,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2421,0,2350,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2421,0,2353,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2421,0,2356,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2421,0,2359,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2421,0,2362,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2421,0,2365,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2421,0,2368,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2421,0,2420,0,0,"IF", 0, 2, 0);
	trans[0][2335]	= settr(2334,0,2336,1114,0,"((input==22))", 1, 2, 0);
	trans[0][2336]	= settr(2335,0,2337,1115,1115,"fsm_state = 42", 1, 2, 0);
	trans[0][2337]	= settr(2336,0,3351,1116,1116,"output = 4", 1, 2, 0);
	trans[0][2423]	= settr(2422,0,3351,1,0,".(goto)", 0, 2, 0);
	trans[0][2338]	= settr(2337,0,2339,1117,0,"((input==27))", 1, 2, 0);
	trans[0][2339]	= settr(2338,0,2340,1118,1118,"fsm_state = 42", 1, 2, 0);
	trans[0][2340]	= settr(2339,0,3351,1119,1119,"output = 4", 1, 2, 0);
	trans[0][2341]	= settr(2340,0,2342,1120,0,"((input==20))", 1, 2, 0);
	trans[0][2342]	= settr(2341,0,2343,1121,1121,"fsm_state = 42", 1, 2, 0);
	trans[0][2343]	= settr(2342,0,3351,1122,1122,"output = 4", 1, 2, 0);
	trans[0][2344]	= settr(2343,0,2345,1123,0,"((input==25))", 1, 2, 0);
	trans[0][2345]	= settr(2344,0,17,1124,1124,"fsm_state = 36", 1, 2, 0);
	trans[0][2346]	= settr(2345,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2347]	= settr(2346,0,2348,1125,0,"((input==16))", 1, 2, 0);
	trans[0][2348]	= settr(2347,0,17,1126,1126,"fsm_state = 17", 1, 2, 0);
	trans[0][2349]	= settr(2348,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2350]	= settr(2349,0,2351,1127,0,"((input==24))", 1, 2, 0);
	trans[0][2351]	= settr(2350,0,2352,1128,1128,"fsm_state = 14", 1, 2, 0);
	trans[0][2352]	= settr(2351,0,3351,1129,1129,"output = 14", 1, 2, 0);
	trans[0][2353]	= settr(2352,0,2354,1130,0,"((input==26))", 1, 2, 0);
	trans[0][2354]	= settr(2353,0,2355,1131,1131,"fsm_state = 14", 1, 2, 0);
	trans[0][2355]	= settr(2354,0,3351,1132,1132,"output = 5", 1, 2, 0);
	trans[0][2356]	= settr(2355,0,2357,1133,0,"((input==23))", 1, 2, 0);
	trans[0][2357]	= settr(2356,0,2358,1134,1134,"fsm_state = 14", 1, 2, 0);
	trans[0][2358]	= settr(2357,0,3351,1135,1135,"output = 14", 1, 2, 0);
	trans[0][2359]	= settr(2358,0,2360,1136,0,"((input==19))", 1, 2, 0);
	trans[0][2360]	= settr(2359,0,17,1137,1137,"fsm_state = 11", 1, 2, 0);
	trans[0][2361]	= settr(2360,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2362]	= settr(2361,0,2363,1138,0,"((input==21))", 1, 2, 0);
	trans[0][2363]	= settr(2362,0,17,1139,1139,"fsm_state = 8", 1, 2, 0);
	trans[0][2364]	= settr(2363,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2365]	= settr(2364,0,2366,1140,0,"((input==17))", 1, 2, 0);
	trans[0][2366]	= settr(2365,0,17,1141,1141,"fsm_state = 7", 1, 2, 0);
	trans[0][2367]	= settr(2366,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2368]	= settr(2367,0,2369,1142,0,"((input==18))", 1, 2, 0);
	trans[0][2369]	= settr(2368,0,2370,1143,1143,"fsm_state = 6", 1, 2, 0);
	trans[0][2370]	= settr(2369,0,2371,1144,1144,"output = 8", 1, 2, 0);
	trans[0][2371]	= settr(2370,0,2417,1145,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2417] = settr(2416,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2416,0,2410,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2410]	= settr(2409,32,2415,1146,1146,"D_STEP13", 1, 2, 0);
	T = trans[0][2415] = settr(2414,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2414,0,2411,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2414,0,2413,0,0,"IF", 0, 2, 0);
	trans[0][2411]	= settr(2410,0,1,1147,0,"((dealt==0))", 1, 2, 0);
	trans[0][2412]	= settr(2411,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2416]	= settr(2415,0,2418,1,0,".(goto)", 0, 2, 0);
	trans[0][2413]	= settr(2412,0,2414,2,0,"else", 0, 2, 0);
	trans[0][2414]	= settr(2413,0,2418,1,0,"(1)", 0, 2, 0);
	trans[0][2418]	= settr(2417,0,2419,1148,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2419]	= settr(2418,0,3351,1149,1149,"output = 1", 1, 2, 0);
	trans[0][2420]	= settr(2419,0,17,2,0,"else", 0, 2, 0);
	trans[0][2421]	= settr(2420,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2424]	= settr(2423,0,2463,1150,0,"((fsm_state==13))", 1, 2, 0);
	T = trans[0][2463] = settr(2462,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2462,0,2425,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2462,0,2428,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2462,0,2431,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2462,0,2434,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2462,0,2437,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2462,0,2440,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2462,0,2443,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2462,0,2446,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2462,0,2449,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2462,0,2452,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2462,0,2455,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2462,0,2458,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2462,0,2461,0,0,"IF", 0, 2, 0);
	trans[0][2425]	= settr(2424,0,2426,1151,0,"((input==18))", 1, 2, 0);
	trans[0][2426]	= settr(2425,0,2427,1152,1152,"fsm_state = 40", 1, 2, 0);
	trans[0][2427]	= settr(2426,0,3351,1153,1153,"output = 4", 1, 2, 0);
	trans[0][2464]	= settr(2463,0,3351,1,0,".(goto)", 0, 2, 0);
	trans[0][2428]	= settr(2427,0,2429,1154,0,"((input==25))", 1, 2, 0);
	trans[0][2429]	= settr(2428,0,2430,1155,1155,"fsm_state = 40", 1, 2, 0);
	trans[0][2430]	= settr(2429,0,3351,1156,1156,"output = 4", 1, 2, 0);
	trans[0][2431]	= settr(2430,0,2432,1157,0,"((input==22))", 1, 2, 0);
	trans[0][2432]	= settr(2431,0,2433,1158,1158,"fsm_state = 40", 1, 2, 0);
	trans[0][2433]	= settr(2432,0,3351,1159,1159,"output = 4", 1, 2, 0);
	trans[0][2434]	= settr(2433,0,2435,1160,0,"((input==26))", 1, 2, 0);
	trans[0][2435]	= settr(2434,0,2436,1161,1161,"fsm_state = 24", 1, 2, 0);
	trans[0][2436]	= settr(2435,0,3351,1162,1162,"output = 10", 1, 2, 0);
	trans[0][2437]	= settr(2436,0,2438,1163,0,"((input==24))", 1, 2, 0);
	trans[0][2438]	= settr(2437,0,2439,1164,1164,"fsm_state = 13", 1, 2, 0);
	trans[0][2439]	= settr(2438,0,3351,1165,1165,"output = 14", 1, 2, 0);
	trans[0][2440]	= settr(2439,0,2441,1166,0,"((input==19))", 1, 2, 0);
	trans[0][2441]	= settr(2440,0,2442,1167,1167,"fsm_state = 13", 1, 2, 0);
	trans[0][2442]	= settr(2441,0,3351,1168,1168,"output = 3", 1, 2, 0);
	trans[0][2443]	= settr(2442,0,2444,1169,0,"((input==17))", 1, 2, 0);
	trans[0][2444]	= settr(2443,0,2445,1170,1170,"fsm_state = 13", 1, 2, 0);
	trans[0][2445]	= settr(2444,0,3351,1171,1171,"output = 3", 1, 2, 0);
	trans[0][2446]	= settr(2445,0,2447,1172,0,"((input==23))", 1, 2, 0);
	trans[0][2447]	= settr(2446,0,2448,1173,1173,"fsm_state = 13", 1, 2, 0);
	trans[0][2448]	= settr(2447,0,3351,1174,1174,"output = 14", 1, 2, 0);
	trans[0][2449]	= settr(2448,0,2450,1175,0,"((input==21))", 1, 2, 0);
	trans[0][2450]	= settr(2449,0,2451,1176,1176,"fsm_state = 13", 1, 2, 0);
	trans[0][2451]	= settr(2450,0,3351,1177,1177,"output = 3", 1, 2, 0);
	trans[0][2452]	= settr(2451,0,2453,1178,0,"((input==16))", 1, 2, 0);
	trans[0][2453]	= settr(2452,0,2454,1179,1179,"fsm_state = 13", 1, 2, 0);
	trans[0][2454]	= settr(2453,0,3351,1180,1180,"output = 3", 1, 2, 0);
	trans[0][2455]	= settr(2454,0,2456,1181,0,"((input==20))", 1, 2, 0);
	trans[0][2456]	= settr(2455,0,2457,1182,1182,"fsm_state = 13", 1, 2, 0);
	trans[0][2457]	= settr(2456,0,3351,1183,1183,"output = 13", 1, 2, 0);
	trans[0][2458]	= settr(2457,0,2459,1184,0,"((input==27))", 1, 2, 0);
	trans[0][2459]	= settr(2458,0,2460,1185,1185,"fsm_state = 5", 1, 2, 0);
	trans[0][2460]	= settr(2459,0,3351,1186,1186,"output = 6", 1, 2, 0);
	trans[0][2461]	= settr(2460,0,17,2,0,"else", 0, 2, 0);
	trans[0][2462]	= settr(2461,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2465]	= settr(2464,0,2504,1187,0,"((fsm_state==12))", 1, 2, 0);
	T = trans[0][2504] = settr(2503,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2503,0,2466,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2503,0,2469,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2503,0,2472,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2503,0,2475,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2503,0,2478,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2503,0,2481,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2503,0,2484,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2503,0,2487,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2503,0,2490,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2503,0,2493,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2503,0,2496,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2503,0,2499,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2503,0,2502,0,0,"IF", 0, 2, 0);
	trans[0][2466]	= settr(2465,0,2467,1188,0,"((input==18))", 1, 2, 0);
	trans[0][2467]	= settr(2466,0,2468,1189,1189,"fsm_state = 42", 1, 2, 0);
	trans[0][2468]	= settr(2467,0,3351,1190,1190,"output = 4", 1, 2, 0);
	trans[0][2505]	= settr(2504,0,3351,1,0,".(goto)", 0, 2, 0);
	trans[0][2469]	= settr(2468,0,2470,1191,0,"((input==25))", 1, 2, 0);
	trans[0][2470]	= settr(2469,0,2471,1192,1192,"fsm_state = 42", 1, 2, 0);
	trans[0][2471]	= settr(2470,0,3351,1193,1193,"output = 4", 1, 2, 0);
	trans[0][2472]	= settr(2471,0,2473,1194,0,"((input==22))", 1, 2, 0);
	trans[0][2473]	= settr(2472,0,2474,1195,1195,"fsm_state = 42", 1, 2, 0);
	trans[0][2474]	= settr(2473,0,3351,1196,1196,"output = 4", 1, 2, 0);
	trans[0][2475]	= settr(2474,0,2476,1197,0,"((input==21))", 1, 2, 0);
	trans[0][2476]	= settr(2475,0,2477,1198,1198,"fsm_state = 13", 1, 2, 0);
	trans[0][2477]	= settr(2476,0,3351,1199,1199,"output = 15", 1, 2, 0);
	trans[0][2478]	= settr(2477,0,2479,1200,0,"((input==24))", 1, 2, 0);
	trans[0][2479]	= settr(2478,0,2480,1201,1201,"fsm_state = 12", 1, 2, 0);
	trans[0][2480]	= settr(2479,0,3351,1202,1202,"output = 14", 1, 2, 0);
	trans[0][2481]	= settr(2480,0,2482,1203,0,"((input==19))", 1, 2, 0);
	trans[0][2482]	= settr(2481,0,2483,1204,1204,"fsm_state = 12", 1, 2, 0);
	trans[0][2483]	= settr(2482,0,3351,1205,1205,"output = 2", 1, 2, 0);
	trans[0][2484]	= settr(2483,0,2485,1206,0,"((input==26))", 1, 2, 0);
	trans[0][2485]	= settr(2484,0,2486,1207,1207,"fsm_state = 12", 1, 2, 0);
	trans[0][2486]	= settr(2485,0,3351,1208,1208,"output = 5", 1, 2, 0);
	trans[0][2487]	= settr(2486,0,2488,1209,0,"((input==17))", 1, 2, 0);
	trans[0][2488]	= settr(2487,0,17,1210,1210,"fsm_state = 12", 1, 2, 0);
	trans[0][2489]	= settr(2488,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2490]	= settr(2489,0,2491,1211,0,"((input==23))", 1, 2, 0);
	trans[0][2491]	= settr(2490,0,2492,1212,1212,"fsm_state = 12", 1, 2, 0);
	trans[0][2492]	= settr(2491,0,3351,1213,1213,"output = 14", 1, 2, 0);
	trans[0][2493]	= settr(2492,0,2494,1214,0,"((input==16))", 1, 2, 0);
	trans[0][2494]	= settr(2493,0,17,1215,1215,"fsm_state = 12", 1, 2, 0);
	trans[0][2495]	= settr(2494,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2496]	= settr(2495,0,2497,1216,0,"((input==20))", 1, 2, 0);
	trans[0][2497]	= settr(2496,0,2498,1217,1217,"fsm_state = 12", 1, 2, 0);
	trans[0][2498]	= settr(2497,0,3351,1218,1218,"output = 13", 1, 2, 0);
	trans[0][2499]	= settr(2498,0,2500,1219,0,"((input==27))", 1, 2, 0);
	trans[0][2500]	= settr(2499,0,2501,1220,1220,"fsm_state = 7", 1, 2, 0);
	trans[0][2501]	= settr(2500,0,3351,1221,1221,"output = 6", 1, 2, 0);
	trans[0][2502]	= settr(2501,0,17,2,0,"else", 0, 2, 0);
	trans[0][2503]	= settr(2502,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2506]	= settr(2505,0,2643,1222,0,"((fsm_state==11))", 1, 2, 0);
	T = trans[0][2643] = settr(2642,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2642,0,2507,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2642,0,2510,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2642,0,2513,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2642,0,2516,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2642,0,2519,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2642,0,2522,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2642,0,2525,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2642,0,2528,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2642,0,2531,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2642,0,2534,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2642,0,2537,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2642,0,2638,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2642,0,2641,0,0,"IF", 0, 2, 0);
	trans[0][2507]	= settr(2506,0,2508,1223,0,"((input==22))", 1, 2, 0);
	trans[0][2508]	= settr(2507,0,2509,1224,1224,"fsm_state = 42", 1, 2, 0);
	trans[0][2509]	= settr(2508,0,3351,1225,1225,"output = 4", 1, 2, 0);
	trans[0][2644]	= settr(2643,0,3351,1,0,".(goto)", 0, 2, 0);
	trans[0][2510]	= settr(2509,0,2511,1226,0,"((input==27))", 1, 2, 0);
	trans[0][2511]	= settr(2510,0,2512,1227,1227,"fsm_state = 42", 1, 2, 0);
	trans[0][2512]	= settr(2511,0,3351,1228,1228,"output = 4", 1, 2, 0);
	trans[0][2513]	= settr(2512,0,2514,1229,0,"((input==20))", 1, 2, 0);
	trans[0][2514]	= settr(2513,0,2515,1230,1230,"fsm_state = 42", 1, 2, 0);
	trans[0][2515]	= settr(2514,0,3351,1231,1231,"output = 4", 1, 2, 0);
	trans[0][2516]	= settr(2515,0,2517,1232,0,"((input==25))", 1, 2, 0);
	trans[0][2517]	= settr(2516,0,17,1233,1233,"fsm_state = 36", 1, 2, 0);
	trans[0][2518]	= settr(2517,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2519]	= settr(2518,0,2520,1234,0,"((input==16))", 1, 2, 0);
	trans[0][2520]	= settr(2519,0,17,1235,1235,"fsm_state = 17", 1, 2, 0);
	trans[0][2521]	= settr(2520,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2522]	= settr(2521,0,2523,1236,0,"((input==24))", 1, 2, 0);
	trans[0][2523]	= settr(2522,0,2524,1237,1237,"fsm_state = 11", 1, 2, 0);
	trans[0][2524]	= settr(2523,0,3351,1238,1238,"output = 14", 1, 2, 0);
	trans[0][2525]	= settr(2524,0,2526,1239,0,"((input==19))", 1, 2, 0);
	trans[0][2526]	= settr(2525,0,17,1240,1240,"fsm_state = 11", 1, 2, 0);
	trans[0][2527]	= settr(2526,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2528]	= settr(2527,0,2529,1241,0,"((input==26))", 1, 2, 0);
	trans[0][2529]	= settr(2528,0,2530,1242,1242,"fsm_state = 11", 1, 2, 0);
	trans[0][2530]	= settr(2529,0,3351,1243,1243,"output = 5", 1, 2, 0);
	trans[0][2531]	= settr(2530,0,2532,1244,0,"((input==23))", 1, 2, 0);
	trans[0][2532]	= settr(2531,0,2533,1245,1245,"fsm_state = 11", 1, 2, 0);
	trans[0][2533]	= settr(2532,0,3351,1246,1246,"output = 14", 1, 2, 0);
	trans[0][2534]	= settr(2533,0,2535,1247,0,"((input==21))", 1, 2, 0);
	trans[0][2535]	= settr(2534,0,17,1248,1248,"fsm_state = 8", 1, 2, 0);
	trans[0][2536]	= settr(2535,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2537]	= settr(2536,0,2538,1249,0,"((input==18))", 1, 2, 0);
	trans[0][2538]	= settr(2537,0,2539,1250,1250,"fsm_state = 6", 1, 2, 0);
	trans[0][2539]	= settr(2538,0,2540,1251,1251,"output = 8", 1, 2, 0);
	trans[0][2540]	= settr(2539,0,2586,1252,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2586] = settr(2585,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2585,0,2579,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2579]	= settr(2578,32,2584,1253,1253,"D_STEP13", 1, 2, 0);
	T = trans[0][2584] = settr(2583,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2583,0,2580,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2583,0,2582,0,0,"IF", 0, 2, 0);
	trans[0][2580]	= settr(2579,0,1,1254,0,"((dealt==0))", 1, 2, 0);
	trans[0][2581]	= settr(2580,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2585]	= settr(2584,0,2587,1,0,".(goto)", 0, 2, 0);
	trans[0][2582]	= settr(2581,0,2583,2,0,"else", 0, 2, 0);
	trans[0][2583]	= settr(2582,0,2587,1,0,"(1)", 0, 2, 0);
	trans[0][2587]	= settr(2586,0,2588,1255,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2588]	= settr(2587,0,2589,1256,1256,"output = 1", 1, 2, 0);
	trans[0][2589]	= settr(2588,0,2635,1257,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2635] = settr(2634,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2634,0,2628,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2628]	= settr(2627,32,2633,1258,1258,"D_STEP13", 1, 2, 0);
	T = trans[0][2633] = settr(2632,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2632,0,2629,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2632,0,2631,0,0,"IF", 0, 2, 0);
	trans[0][2629]	= settr(2628,0,1,1259,0,"((dealt==0))", 1, 2, 0);
	trans[0][2630]	= settr(2629,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2634]	= settr(2633,0,2636,1,0,".(goto)", 0, 2, 0);
	trans[0][2631]	= settr(2630,0,2632,2,0,"else", 0, 2, 0);
	trans[0][2632]	= settr(2631,0,2636,1,0,"(1)", 0, 2, 0);
	trans[0][2636]	= settr(2635,0,2637,1260,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2637]	= settr(2636,0,3351,1261,1261,"output = 12", 1, 2, 0);
	trans[0][2638]	= settr(2637,0,2639,1262,0,"((input==17))", 1, 2, 0);
	trans[0][2639]	= settr(2638,0,17,1263,1263,"fsm_state = 4", 1, 2, 0);
	trans[0][2640]	= settr(2639,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2641]	= settr(2640,0,17,2,0,"else", 0, 2, 0);
	trans[0][2642]	= settr(2641,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2645]	= settr(2644,0,2684,1264,0,"((fsm_state==10))", 1, 2, 0);
	T = trans[0][2684] = settr(2683,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2683,0,2646,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2683,0,2649,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2683,0,2652,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2683,0,2655,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2683,0,2658,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2683,0,2661,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2683,0,2664,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2683,0,2667,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2683,0,2670,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2683,0,2673,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2683,0,2676,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2683,0,2679,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2683,0,2682,0,0,"IF", 0, 2, 0);
	trans[0][2646]	= settr(2645,0,2647,1265,0,"((input==22))", 1, 2, 0);
	trans[0][2647]	= settr(2646,0,2648,1266,1266,"fsm_state = 40", 1, 2, 0);
	trans[0][2648]	= settr(2647,0,3351,1267,1267,"output = 4", 1, 2, 0);
	trans[0][2685]	= settr(2684,0,3351,1,0,".(goto)", 0, 2, 0);
	trans[0][2649]	= settr(2648,0,2650,1268,0,"((input==27))", 1, 2, 0);
	trans[0][2650]	= settr(2649,0,2651,1269,1269,"fsm_state = 40", 1, 2, 0);
	trans[0][2651]	= settr(2650,0,3351,1270,1270,"output = 4", 1, 2, 0);
	trans[0][2652]	= settr(2651,0,2653,1271,0,"((input==20))", 1, 2, 0);
	trans[0][2653]	= settr(2652,0,2654,1272,1272,"fsm_state = 40", 1, 2, 0);
	trans[0][2654]	= settr(2653,0,3351,1273,1273,"output = 4", 1, 2, 0);
	trans[0][2655]	= settr(2654,0,2656,1274,0,"((input==25))", 1, 2, 0);
	trans[0][2656]	= settr(2655,0,17,1275,1275,"fsm_state = 30", 1, 2, 0);
	trans[0][2657]	= settr(2656,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2658]	= settr(2657,0,2659,1276,0,"((input==24))", 1, 2, 0);
	trans[0][2659]	= settr(2658,0,2660,1277,1277,"fsm_state = 10", 1, 2, 0);
	trans[0][2660]	= settr(2659,0,3351,1278,1278,"output = 14", 1, 2, 0);
	trans[0][2661]	= settr(2660,0,2662,1279,0,"((input==18))", 1, 2, 0);
	trans[0][2662]	= settr(2661,0,17,1280,1280,"fsm_state = 10", 1, 2, 0);
	trans[0][2663]	= settr(2662,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2664]	= settr(2663,0,2665,1281,0,"((input==19))", 1, 2, 0);
	trans[0][2665]	= settr(2664,0,2666,1282,1282,"fsm_state = 10", 1, 2, 0);
	trans[0][2666]	= settr(2665,0,3351,1283,1283,"output = 3", 1, 2, 0);
	trans[0][2667]	= settr(2666,0,2668,1284,0,"((input==17))", 1, 2, 0);
	trans[0][2668]	= settr(2667,0,2669,1285,1285,"fsm_state = 10", 1, 2, 0);
	trans[0][2669]	= settr(2668,0,3351,1286,1286,"output = 3", 1, 2, 0);
	trans[0][2670]	= settr(2669,0,2671,1287,0,"((input==23))", 1, 2, 0);
	trans[0][2671]	= settr(2670,0,2672,1288,1288,"fsm_state = 10", 1, 2, 0);
	trans[0][2672]	= settr(2671,0,3351,1289,1289,"output = 14", 1, 2, 0);
	trans[0][2673]	= settr(2672,0,2674,1290,0,"((input==21))", 1, 2, 0);
	trans[0][2674]	= settr(2673,0,2675,1291,1291,"fsm_state = 10", 1, 2, 0);
	trans[0][2675]	= settr(2674,0,3351,1292,1292,"output = 3", 1, 2, 0);
	trans[0][2676]	= settr(2675,0,2677,1293,0,"((input==16))", 1, 2, 0);
	trans[0][2677]	= settr(2676,0,2678,1294,1294,"fsm_state = 10", 1, 2, 0);
	trans[0][2678]	= settr(2677,0,3351,1295,1295,"output = 3", 1, 2, 0);
	trans[0][2679]	= settr(2678,0,2680,1296,0,"((input==26))", 1, 2, 0);
	trans[0][2680]	= settr(2679,0,2681,1297,1297,"fsm_state = 6", 1, 2, 0);
	trans[0][2681]	= settr(2680,0,3351,1298,1298,"output = 10", 1, 2, 0);
	trans[0][2682]	= settr(2681,0,17,2,0,"else", 0, 2, 0);
	trans[0][2683]	= settr(2682,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2686]	= settr(2685,0,2725,1299,0,"((fsm_state==9))", 1, 2, 0);
	T = trans[0][2725] = settr(2724,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2724,0,2687,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2724,0,2690,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2724,0,2693,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2724,0,2696,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2724,0,2699,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2724,0,2702,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2724,0,2705,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2724,0,2708,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2724,0,2711,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2724,0,2714,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2724,0,2717,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2724,0,2720,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2724,0,2723,0,0,"IF", 0, 2, 0);
	trans[0][2687]	= settr(2686,0,2688,1300,0,"((input==22))", 1, 2, 0);
	trans[0][2688]	= settr(2687,0,2689,1301,1301,"fsm_state = 42", 1, 2, 0);
	trans[0][2689]	= settr(2688,0,3351,1302,1302,"output = 4", 1, 2, 0);
	trans[0][2726]	= settr(2725,0,3351,1,0,".(goto)", 0, 2, 0);
	trans[0][2690]	= settr(2689,0,2691,1303,0,"((input==27))", 1, 2, 0);
	trans[0][2691]	= settr(2690,0,2692,1304,1304,"fsm_state = 42", 1, 2, 0);
	trans[0][2692]	= settr(2691,0,3351,1305,1305,"output = 4", 1, 2, 0);
	trans[0][2693]	= settr(2692,0,2694,1306,0,"((input==20))", 1, 2, 0);
	trans[0][2694]	= settr(2693,0,2695,1307,1307,"fsm_state = 42", 1, 2, 0);
	trans[0][2695]	= settr(2694,0,3351,1308,1308,"output = 4", 1, 2, 0);
	trans[0][2696]	= settr(2695,0,2697,1309,0,"((input==25))", 1, 2, 0);
	trans[0][2697]	= settr(2696,0,17,1310,1310,"fsm_state = 26", 1, 2, 0);
	trans[0][2698]	= settr(2697,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2699]	= settr(2698,0,2700,1311,0,"((input==21))", 1, 2, 0);
	trans[0][2700]	= settr(2699,0,17,1312,1312,"fsm_state = 10", 1, 2, 0);
	trans[0][2701]	= settr(2700,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2702]	= settr(2701,0,2703,1313,0,"((input==24))", 1, 2, 0);
	trans[0][2703]	= settr(2702,0,2704,1314,1314,"fsm_state = 9", 1, 2, 0);
	trans[0][2704]	= settr(2703,0,3351,1315,1315,"output = 14", 1, 2, 0);
	trans[0][2705]	= settr(2704,0,2706,1316,0,"((input==18))", 1, 2, 0);
	trans[0][2706]	= settr(2705,0,17,1317,1317,"fsm_state = 9", 1, 2, 0);
	trans[0][2707]	= settr(2706,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2708]	= settr(2707,0,2709,1318,0,"((input==19))", 1, 2, 0);
	trans[0][2709]	= settr(2708,0,17,1319,1319,"fsm_state = 9", 1, 2, 0);
	trans[0][2710]	= settr(2709,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2711]	= settr(2710,0,2712,1320,0,"((input==26))", 1, 2, 0);
	trans[0][2712]	= settr(2711,0,2713,1321,1321,"fsm_state = 9", 1, 2, 0);
	trans[0][2713]	= settr(2712,0,3351,1322,1322,"output = 5", 1, 2, 0);
	trans[0][2714]	= settr(2713,0,2715,1323,0,"((input==17))", 1, 2, 0);
	trans[0][2715]	= settr(2714,0,17,1324,1324,"fsm_state = 9", 1, 2, 0);
	trans[0][2716]	= settr(2715,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2717]	= settr(2716,0,2718,1325,0,"((input==23))", 1, 2, 0);
	trans[0][2718]	= settr(2717,0,2719,1326,1326,"fsm_state = 9", 1, 2, 0);
	trans[0][2719]	= settr(2718,0,3351,1327,1327,"output = 14", 1, 2, 0);
	trans[0][2720]	= settr(2719,0,2721,1328,0,"((input==16))", 1, 2, 0);
	trans[0][2721]	= settr(2720,0,17,1329,1329,"fsm_state = 9", 1, 2, 0);
	trans[0][2722]	= settr(2721,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2723]	= settr(2722,0,17,2,0,"else", 0, 2, 0);
	trans[0][2724]	= settr(2723,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2727]	= settr(2726,0,2864,1330,0,"((fsm_state==8))", 1, 2, 0);
	T = trans[0][2864] = settr(2863,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2863,0,2728,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2863,0,2731,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2863,0,2734,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2863,0,2737,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2863,0,2740,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2863,0,2743,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2863,0,2746,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2863,0,2749,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2863,0,2752,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2863,0,2755,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2863,0,2758,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2863,0,2761,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2863,0,2862,0,0,"IF", 0, 2, 0);
	trans[0][2728]	= settr(2727,0,2729,1331,0,"((input==22))", 1, 2, 0);
	trans[0][2729]	= settr(2728,0,2730,1332,1332,"fsm_state = 40", 1, 2, 0);
	trans[0][2730]	= settr(2729,0,3351,1333,1333,"output = 4", 1, 2, 0);
	trans[0][2865]	= settr(2864,0,3351,1,0,".(goto)", 0, 2, 0);
	trans[0][2731]	= settr(2730,0,2732,1334,0,"((input==27))", 1, 2, 0);
	trans[0][2732]	= settr(2731,0,2733,1335,1335,"fsm_state = 40", 1, 2, 0);
	trans[0][2733]	= settr(2732,0,3351,1336,1336,"output = 4", 1, 2, 0);
	trans[0][2734]	= settr(2733,0,2735,1337,0,"((input==20))", 1, 2, 0);
	trans[0][2735]	= settr(2734,0,2736,1338,1338,"fsm_state = 40", 1, 2, 0);
	trans[0][2736]	= settr(2735,0,3351,1339,1339,"output = 4", 1, 2, 0);
	trans[0][2737]	= settr(2736,0,2738,1340,0,"((input==25))", 1, 2, 0);
	trans[0][2738]	= settr(2737,0,17,1341,1341,"fsm_state = 38", 1, 2, 0);
	trans[0][2739]	= settr(2738,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2740]	= settr(2739,0,2741,1342,0,"((input==24))", 1, 2, 0);
	trans[0][2741]	= settr(2740,0,2742,1343,1343,"fsm_state = 8", 1, 2, 0);
	trans[0][2742]	= settr(2741,0,3351,1344,1344,"output = 14", 1, 2, 0);
	trans[0][2743]	= settr(2742,0,2744,1345,0,"((input==19))", 1, 2, 0);
	trans[0][2744]	= settr(2743,0,2745,1346,1346,"fsm_state = 8", 1, 2, 0);
	trans[0][2745]	= settr(2744,0,3351,1347,1347,"output = 3", 1, 2, 0);
	trans[0][2746]	= settr(2745,0,2747,1348,0,"((input==17))", 1, 2, 0);
	trans[0][2747]	= settr(2746,0,2748,1349,1349,"fsm_state = 8", 1, 2, 0);
	trans[0][2748]	= settr(2747,0,3351,1350,1350,"output = 3", 1, 2, 0);
	trans[0][2749]	= settr(2748,0,2750,1351,0,"((input==23))", 1, 2, 0);
	trans[0][2750]	= settr(2749,0,2751,1352,1352,"fsm_state = 8", 1, 2, 0);
	trans[0][2751]	= settr(2750,0,3351,1353,1353,"output = 14", 1, 2, 0);
	trans[0][2752]	= settr(2751,0,2753,1354,0,"((input==21))", 1, 2, 0);
	trans[0][2753]	= settr(2752,0,2754,1355,1355,"fsm_state = 8", 1, 2, 0);
	trans[0][2754]	= settr(2753,0,3351,1356,1356,"output = 3", 1, 2, 0);
	trans[0][2755]	= settr(2754,0,2756,1357,0,"((input==16))", 1, 2, 0);
	trans[0][2756]	= settr(2755,0,2757,1358,1358,"fsm_state = 8", 1, 2, 0);
	trans[0][2757]	= settr(2756,0,3351,1359,1359,"output = 3", 1, 2, 0);
	trans[0][2758]	= settr(2757,0,2759,1360,0,"((input==26))", 1, 2, 0);
	trans[0][2759]	= settr(2758,0,17,1361,1361,"fsm_state = 4", 1, 2, 0);
	trans[0][2760]	= settr(2759,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2761]	= settr(2760,0,2762,1362,0,"((input==18))", 1, 2, 0);
	trans[0][2762]	= settr(2761,0,2763,1363,1363,"fsm_state = 3", 1, 2, 0);
	trans[0][2763]	= settr(2762,0,2764,1364,1364,"output = 8", 1, 2, 0);
	trans[0][2764]	= settr(2763,0,2810,1365,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2810] = settr(2809,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2809,0,2803,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2803]	= settr(2802,32,2808,1366,1366,"D_STEP13", 1, 2, 0);
	T = trans[0][2808] = settr(2807,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2807,0,2804,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2807,0,2806,0,0,"IF", 0, 2, 0);
	trans[0][2804]	= settr(2803,0,1,1367,0,"((dealt==0))", 1, 2, 0);
	trans[0][2805]	= settr(2804,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2809]	= settr(2808,0,2811,1,0,".(goto)", 0, 2, 0);
	trans[0][2806]	= settr(2805,0,2807,2,0,"else", 0, 2, 0);
	trans[0][2807]	= settr(2806,0,2811,1,0,"(1)", 0, 2, 0);
	trans[0][2811]	= settr(2810,0,2812,1368,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2812]	= settr(2811,0,2813,1369,1369,"output = 1", 1, 2, 0);
	trans[0][2813]	= settr(2812,0,2859,1370,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2859] = settr(2858,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2858,0,2852,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2852]	= settr(2851,32,2857,1371,1371,"D_STEP13", 1, 2, 0);
	T = trans[0][2857] = settr(2856,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2856,0,2853,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2856,0,2855,0,0,"IF", 0, 2, 0);
	trans[0][2853]	= settr(2852,0,1,1372,0,"((dealt==0))", 1, 2, 0);
	trans[0][2854]	= settr(2853,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2858]	= settr(2857,0,2860,1,0,".(goto)", 0, 2, 0);
	trans[0][2855]	= settr(2854,0,2856,2,0,"else", 0, 2, 0);
	trans[0][2856]	= settr(2855,0,2860,1,0,"(1)", 0, 2, 0);
	trans[0][2860]	= settr(2859,0,2861,1373,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2861]	= settr(2860,0,3351,1374,1374,"output = 12", 1, 2, 0);
	trans[0][2862]	= settr(2861,0,17,2,0,"else", 0, 2, 0);
	trans[0][2863]	= settr(2862,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2866]	= settr(2865,0,2954,1375,0,"((fsm_state==7))", 1, 2, 0);
	T = trans[0][2954] = settr(2953,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2953,0,2867,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2953,0,2870,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2953,0,2873,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2953,0,2876,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2953,0,2879,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2953,0,2882,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2953,0,2885,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2953,0,2888,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2953,0,2891,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2953,0,2894,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2953,0,2897,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2953,0,2900,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2953,0,2952,0,0,"IF", 0, 2, 0);
	trans[0][2867]	= settr(2866,0,2868,1376,0,"((input==22))", 1, 2, 0);
	trans[0][2868]	= settr(2867,0,2869,1377,1377,"fsm_state = 42", 1, 2, 0);
	trans[0][2869]	= settr(2868,0,3351,1378,1378,"output = 4", 1, 2, 0);
	trans[0][2955]	= settr(2954,0,3351,1,0,".(goto)", 0, 2, 0);
	trans[0][2870]	= settr(2869,0,2871,1379,0,"((input==27))", 1, 2, 0);
	trans[0][2871]	= settr(2870,0,2872,1380,1380,"fsm_state = 42", 1, 2, 0);
	trans[0][2872]	= settr(2871,0,3351,1381,1381,"output = 4", 1, 2, 0);
	trans[0][2873]	= settr(2872,0,2874,1382,0,"((input==20))", 1, 2, 0);
	trans[0][2874]	= settr(2873,0,2875,1383,1383,"fsm_state = 42", 1, 2, 0);
	trans[0][2875]	= settr(2874,0,3351,1384,1384,"output = 4", 1, 2, 0);
	trans[0][2876]	= settr(2875,0,2877,1385,0,"((input==25))", 1, 2, 0);
	trans[0][2877]	= settr(2876,0,17,1386,1386,"fsm_state = 36", 1, 2, 0);
	trans[0][2878]	= settr(2877,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2879]	= settr(2878,0,2880,1387,0,"((input==21))", 1, 2, 0);
	trans[0][2880]	= settr(2879,0,17,1388,1388,"fsm_state = 8", 1, 2, 0);
	trans[0][2881]	= settr(2880,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2882]	= settr(2881,0,2883,1389,0,"((input==24))", 1, 2, 0);
	trans[0][2883]	= settr(2882,0,2884,1390,1390,"fsm_state = 7", 1, 2, 0);
	trans[0][2884]	= settr(2883,0,3351,1391,1391,"output = 14", 1, 2, 0);
	trans[0][2885]	= settr(2884,0,2886,1392,0,"((input==26))", 1, 2, 0);
	trans[0][2886]	= settr(2885,0,2887,1393,1393,"fsm_state = 7", 1, 2, 0);
	trans[0][2887]	= settr(2886,0,3351,1394,1394,"output = 5", 1, 2, 0);
	trans[0][2888]	= settr(2887,0,2889,1395,0,"((input==17))", 1, 2, 0);
	trans[0][2889]	= settr(2888,0,17,1396,1396,"fsm_state = 7", 1, 2, 0);
	trans[0][2890]	= settr(2889,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2891]	= settr(2890,0,2892,1397,0,"((input==23))", 1, 2, 0);
	trans[0][2892]	= settr(2891,0,2893,1398,1398,"fsm_state = 7", 1, 2, 0);
	trans[0][2893]	= settr(2892,0,3351,1399,1399,"output = 14", 1, 2, 0);
	trans[0][2894]	= settr(2893,0,2895,1400,0,"((input==16))", 1, 2, 0);
	trans[0][2895]	= settr(2894,0,17,1401,1401,"fsm_state = 7", 1, 2, 0);
	trans[0][2896]	= settr(2895,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2897]	= settr(2896,0,2898,1402,0,"((input==19))", 1, 2, 0);
	trans[0][2898]	= settr(2897,0,17,1403,1403,"fsm_state = 4", 1, 2, 0);
	trans[0][2899]	= settr(2898,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2900]	= settr(2899,0,2901,1404,0,"((input==18))", 1, 2, 0);
	trans[0][2901]	= settr(2900,0,2902,1405,1405,"fsm_state = 2", 1, 2, 0);
	trans[0][2902]	= settr(2901,0,2903,1406,1406,"output = 8", 1, 2, 0);
	trans[0][2903]	= settr(2902,0,2949,1407,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2949] = settr(2948,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2948,0,2942,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2942]	= settr(2941,32,2947,1408,1408,"D_STEP13", 1, 2, 0);
	T = trans[0][2947] = settr(2946,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2946,0,2943,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2946,0,2945,0,0,"IF", 0, 2, 0);
	trans[0][2943]	= settr(2942,0,1,1409,0,"((dealt==0))", 1, 2, 0);
	trans[0][2944]	= settr(2943,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2948]	= settr(2947,0,2950,1,0,".(goto)", 0, 2, 0);
	trans[0][2945]	= settr(2944,0,2946,2,0,"else", 0, 2, 0);
	trans[0][2946]	= settr(2945,0,2950,1,0,"(1)", 0, 2, 0);
	trans[0][2950]	= settr(2949,0,2951,1410,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2951]	= settr(2950,0,3351,1411,1411,"output = 1", 1, 2, 0);
	trans[0][2952]	= settr(2951,0,17,2,0,"else", 0, 2, 0);
	trans[0][2953]	= settr(2952,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2956]	= settr(2955,0,2995,1412,0,"((fsm_state==6))", 1, 2, 0);
	T = trans[0][2995] = settr(2994,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2994,0,2957,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2994,0,2960,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2994,0,2963,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2994,0,2966,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2994,0,2969,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2994,0,2972,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2994,0,2975,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2994,0,2978,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2994,0,2981,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2994,0,2984,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2994,0,2987,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2994,0,2990,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2994,0,2993,0,0,"IF", 0, 2, 0);
	trans[0][2957]	= settr(2956,0,2958,1413,0,"((input==22))", 1, 2, 0);
	trans[0][2958]	= settr(2957,0,2959,1414,1414,"fsm_state = 42", 1, 2, 0);
	trans[0][2959]	= settr(2958,0,3351,1415,1415,"output = 4", 1, 2, 0);
	trans[0][2996]	= settr(2995,0,3351,1,0,".(goto)", 0, 2, 0);
	trans[0][2960]	= settr(2959,0,2961,1416,0,"((input==27))", 1, 2, 0);
	trans[0][2961]	= settr(2960,0,2962,1417,1417,"fsm_state = 42", 1, 2, 0);
	trans[0][2962]	= settr(2961,0,3351,1418,1418,"output = 4", 1, 2, 0);
	trans[0][2963]	= settr(2962,0,2964,1419,0,"((input==20))", 1, 2, 0);
	trans[0][2964]	= settr(2963,0,2965,1420,1420,"fsm_state = 42", 1, 2, 0);
	trans[0][2965]	= settr(2964,0,3351,1421,1421,"output = 4", 1, 2, 0);
	trans[0][2966]	= settr(2965,0,2967,1422,0,"((input==25))", 1, 2, 0);
	trans[0][2967]	= settr(2966,0,17,1423,1423,"fsm_state = 24", 1, 2, 0);
	trans[0][2968]	= settr(2967,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2969]	= settr(2968,0,2970,1424,0,"((input==24))", 1, 2, 0);
	trans[0][2970]	= settr(2969,0,2971,1425,1425,"fsm_state = 6", 1, 2, 0);
	trans[0][2971]	= settr(2970,0,3351,1426,1426,"output = 14", 1, 2, 0);
	trans[0][2972]	= settr(2971,0,2973,1427,0,"((input==18))", 1, 2, 0);
	trans[0][2973]	= settr(2972,0,17,1428,1428,"fsm_state = 6", 1, 2, 0);
	trans[0][2974]	= settr(2973,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2975]	= settr(2974,0,2976,1429,0,"((input==19))", 1, 2, 0);
	trans[0][2976]	= settr(2975,0,2977,1430,1430,"fsm_state = 6", 1, 2, 0);
	trans[0][2977]	= settr(2976,0,3351,1431,1431,"output = 2", 1, 2, 0);
	trans[0][2978]	= settr(2977,0,2979,1432,0,"((input==26))", 1, 2, 0);
	trans[0][2979]	= settr(2978,0,2980,1433,1433,"fsm_state = 6", 1, 2, 0);
	trans[0][2980]	= settr(2979,0,3351,1434,1434,"output = 5", 1, 2, 0);
	trans[0][2981]	= settr(2980,0,2982,1435,0,"((input==23))", 1, 2, 0);
	trans[0][2982]	= settr(2981,0,2983,1436,1436,"fsm_state = 6", 1, 2, 0);
	trans[0][2983]	= settr(2982,0,3351,1437,1437,"output = 14", 1, 2, 0);
	trans[0][2984]	= settr(2983,0,2985,1438,0,"((input==21))", 1, 2, 0);
	trans[0][2985]	= settr(2984,0,2986,1439,1439,"fsm_state = 3", 1, 2, 0);
	trans[0][2986]	= settr(2985,0,3351,1440,1440,"output = 15", 1, 2, 0);
	trans[0][2987]	= settr(2986,0,2988,1441,0,"((input==17))", 1, 2, 0);
	trans[0][2988]	= settr(2987,0,17,1442,1442,"fsm_state = 2", 1, 2, 0);
	trans[0][2989]	= settr(2988,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2990]	= settr(2989,0,2991,1443,0,"((input==16))", 1, 2, 0);
	trans[0][2991]	= settr(2990,0,2992,1444,1444,"fsm_state = 1", 1, 2, 0);
	trans[0][2992]	= settr(2991,0,3351,1445,1445,"output = 15", 1, 2, 0);
	trans[0][2993]	= settr(2992,0,17,2,0,"else", 0, 2, 0);
	trans[0][2994]	= settr(2993,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2997]	= settr(2996,0,3085,1446,0,"((fsm_state==5))", 1, 2, 0);
	T = trans[0][3085] = settr(3084,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3084,0,2998,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3084,0,3001,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3084,0,3004,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3084,0,3007,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3084,0,3010,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3084,0,3013,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3084,0,3016,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3084,0,3019,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3084,0,3022,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3084,0,3025,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3084,0,3028,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3084,0,3031,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3084,0,3083,0,0,"IF", 0, 2, 0);
	trans[0][2998]	= settr(2997,0,2999,1447,0,"((input==22))", 1, 2, 0);
	trans[0][2999]	= settr(2998,0,3000,1448,1448,"fsm_state = 40", 1, 2, 0);
	trans[0][3000]	= settr(2999,0,3351,1449,1449,"output = 4", 1, 2, 0);
	trans[0][3086]	= settr(3085,0,3351,1,0,".(goto)", 0, 2, 0);
	trans[0][3001]	= settr(3000,0,3002,1450,0,"((input==27))", 1, 2, 0);
	trans[0][3002]	= settr(3001,0,3003,1451,1451,"fsm_state = 40", 1, 2, 0);
	trans[0][3003]	= settr(3002,0,3351,1452,1452,"output = 4", 1, 2, 0);
	trans[0][3004]	= settr(3003,0,3005,1453,0,"((input==20))", 1, 2, 0);
	trans[0][3005]	= settr(3004,0,3006,1454,1454,"fsm_state = 40", 1, 2, 0);
	trans[0][3006]	= settr(3005,0,3351,1455,1455,"output = 4", 1, 2, 0);
	trans[0][3007]	= settr(3006,0,3008,1456,0,"((input==25))", 1, 2, 0);
	trans[0][3008]	= settr(3007,0,17,1457,1457,"fsm_state = 38", 1, 2, 0);
	trans[0][3009]	= settr(3008,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3010]	= settr(3009,0,3011,1458,0,"((input==24))", 1, 2, 0);
	trans[0][3011]	= settr(3010,0,3012,1459,1459,"fsm_state = 5", 1, 2, 0);
	trans[0][3012]	= settr(3011,0,3351,1460,1460,"output = 14", 1, 2, 0);
	trans[0][3013]	= settr(3012,0,3014,1461,0,"((input==19))", 1, 2, 0);
	trans[0][3014]	= settr(3013,0,3015,1462,1462,"fsm_state = 5", 1, 2, 0);
	trans[0][3015]	= settr(3014,0,3351,1463,1463,"output = 3", 1, 2, 0);
	trans[0][3016]	= settr(3015,0,3017,1464,0,"((input==17))", 1, 2, 0);
	trans[0][3017]	= settr(3016,0,3018,1465,1465,"fsm_state = 5", 1, 2, 0);
	trans[0][3018]	= settr(3017,0,3351,1466,1466,"output = 3", 1, 2, 0);
	trans[0][3019]	= settr(3018,0,3020,1467,0,"((input==23))", 1, 2, 0);
	trans[0][3020]	= settr(3019,0,3021,1468,1468,"fsm_state = 5", 1, 2, 0);
	trans[0][3021]	= settr(3020,0,3351,1469,1469,"output = 14", 1, 2, 0);
	trans[0][3022]	= settr(3021,0,3023,1470,0,"((input==21))", 1, 2, 0);
	trans[0][3023]	= settr(3022,0,3024,1471,1471,"fsm_state = 5", 1, 2, 0);
	trans[0][3024]	= settr(3023,0,3351,1472,1472,"output = 3", 1, 2, 0);
	trans[0][3025]	= settr(3024,0,3026,1473,0,"((input==16))", 1, 2, 0);
	trans[0][3026]	= settr(3025,0,3027,1474,1474,"fsm_state = 5", 1, 2, 0);
	trans[0][3027]	= settr(3026,0,3351,1475,1475,"output = 3", 1, 2, 0);
	trans[0][3028]	= settr(3027,0,3029,1476,0,"((input==26))", 1, 2, 0);
	trans[0][3029]	= settr(3028,0,17,1477,1477,"fsm_state = 4", 1, 2, 0);
	trans[0][3030]	= settr(3029,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3031]	= settr(3030,0,3032,1478,0,"((input==18))", 1, 2, 0);
	trans[0][3032]	= settr(3031,0,3033,1479,1479,"fsm_state = 3", 1, 2, 0);
	trans[0][3033]	= settr(3032,0,3034,1480,1480,"output = 8", 1, 2, 0);
	trans[0][3034]	= settr(3033,0,3080,1481,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][3080] = settr(3079,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(3079,0,3073,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][3073]	= settr(3072,32,3078,1482,1482,"D_STEP13", 1, 2, 0);
	T = trans[0][3078] = settr(3077,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3077,0,3074,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3077,0,3076,0,0,"IF", 0, 2, 0);
	trans[0][3074]	= settr(3073,0,1,1483,0,"((dealt==0))", 1, 2, 0);
	trans[0][3075]	= settr(3074,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][3079]	= settr(3078,0,3081,1,0,".(goto)", 0, 2, 0);
	trans[0][3076]	= settr(3075,0,3077,2,0,"else", 0, 2, 0);
	trans[0][3077]	= settr(3076,0,3081,1,0,"(1)", 0, 2, 0);
	trans[0][3081]	= settr(3080,0,3082,1484,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][3082]	= settr(3081,0,3351,1485,1485,"output = 1", 1, 2, 0);
	trans[0][3083]	= settr(3082,0,17,2,0,"else", 0, 2, 0);
	trans[0][3084]	= settr(3083,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3087]	= settr(3086,0,3224,1486,0,"((fsm_state==4))", 1, 2, 0);
	T = trans[0][3224] = settr(3223,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3223,0,3088,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3223,0,3091,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3223,0,3094,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3223,0,3097,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3223,0,3100,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3223,0,3103,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3223,0,3106,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3223,0,3109,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3223,0,3112,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3223,0,3115,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3223,0,3118,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3223,0,3121,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3223,0,3222,0,0,"IF", 0, 2, 0);
	trans[0][3088]	= settr(3087,0,3089,1487,0,"((input==22))", 1, 2, 0);
	trans[0][3089]	= settr(3088,0,3090,1488,1488,"fsm_state = 42", 1, 2, 0);
	trans[0][3090]	= settr(3089,0,3351,1489,1489,"output = 4", 1, 2, 0);
	trans[0][3225]	= settr(3224,0,3351,1,0,".(goto)", 0, 2, 0);
	trans[0][3091]	= settr(3090,0,3092,1490,0,"((input==27))", 1, 2, 0);
	trans[0][3092]	= settr(3091,0,3093,1491,1491,"fsm_state = 42", 1, 2, 0);
	trans[0][3093]	= settr(3092,0,3351,1492,1492,"output = 4", 1, 2, 0);
	trans[0][3094]	= settr(3093,0,3095,1493,0,"((input==20))", 1, 2, 0);
	trans[0][3095]	= settr(3094,0,3096,1494,1494,"fsm_state = 42", 1, 2, 0);
	trans[0][3096]	= settr(3095,0,3351,1495,1495,"output = 4", 1, 2, 0);
	trans[0][3097]	= settr(3096,0,3098,1496,0,"((input==25))", 1, 2, 0);
	trans[0][3098]	= settr(3097,0,17,1497,1497,"fsm_state = 36", 1, 2, 0);
	trans[0][3099]	= settr(3098,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3100]	= settr(3099,0,3101,1498,0,"((input==21))", 1, 2, 0);
	trans[0][3101]	= settr(3100,0,17,1499,1499,"fsm_state = 8", 1, 2, 0);
	trans[0][3102]	= settr(3101,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3103]	= settr(3102,0,3104,1500,0,"((input==24))", 1, 2, 0);
	trans[0][3104]	= settr(3103,0,3105,1501,1501,"fsm_state = 4", 1, 2, 0);
	trans[0][3105]	= settr(3104,0,3351,1502,1502,"output = 14", 1, 2, 0);
	trans[0][3106]	= settr(3105,0,3107,1503,0,"((input==19))", 1, 2, 0);
	trans[0][3107]	= settr(3106,0,17,1504,1504,"fsm_state = 4", 1, 2, 0);
	trans[0][3108]	= settr(3107,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3109]	= settr(3108,0,3110,1505,0,"((input==26))", 1, 2, 0);
	trans[0][3110]	= settr(3109,0,3111,1506,1506,"fsm_state = 4", 1, 2, 0);
	trans[0][3111]	= settr(3110,0,3351,1507,1507,"output = 5", 1, 2, 0);
	trans[0][3112]	= settr(3111,0,3113,1508,0,"((input==17))", 1, 2, 0);
	trans[0][3113]	= settr(3112,0,17,1509,1509,"fsm_state = 4", 1, 2, 0);
	trans[0][3114]	= settr(3113,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3115]	= settr(3114,0,3116,1510,0,"((input==23))", 1, 2, 0);
	trans[0][3116]	= settr(3115,0,3117,1511,1511,"fsm_state = 4", 1, 2, 0);
	trans[0][3117]	= settr(3116,0,3351,1512,1512,"output = 14", 1, 2, 0);
	trans[0][3118]	= settr(3117,0,3119,1513,0,"((input==16))", 1, 2, 0);
	trans[0][3119]	= settr(3118,0,17,1514,1514,"fsm_state = 4", 1, 2, 0);
	trans[0][3120]	= settr(3119,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3121]	= settr(3120,0,3122,1515,0,"((input==18))", 1, 2, 0);
	trans[0][3122]	= settr(3121,0,3123,1516,1516,"fsm_state = 2", 1, 2, 0);
	trans[0][3123]	= settr(3122,0,3124,1517,1517,"output = 8", 1, 2, 0);
	trans[0][3124]	= settr(3123,0,3170,1518,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][3170] = settr(3169,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(3169,0,3163,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][3163]	= settr(3162,32,3168,1519,1519,"D_STEP13", 1, 2, 0);
	T = trans[0][3168] = settr(3167,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3167,0,3164,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3167,0,3166,0,0,"IF", 0, 2, 0);
	trans[0][3164]	= settr(3163,0,1,1520,0,"((dealt==0))", 1, 2, 0);
	trans[0][3165]	= settr(3164,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][3169]	= settr(3168,0,3171,1,0,".(goto)", 0, 2, 0);
	trans[0][3166]	= settr(3165,0,3167,2,0,"else", 0, 2, 0);
	trans[0][3167]	= settr(3166,0,3171,1,0,"(1)", 0, 2, 0);
	trans[0][3171]	= settr(3170,0,3172,1521,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][3172]	= settr(3171,0,3173,1522,1522,"output = 1", 1, 2, 0);
	trans[0][3173]	= settr(3172,0,3219,1523,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][3219] = settr(3218,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(3218,0,3212,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][3212]	= settr(3211,32,3217,1524,1524,"D_STEP13", 1, 2, 0);
	T = trans[0][3217] = settr(3216,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3216,0,3213,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3216,0,3215,0,0,"IF", 0, 2, 0);
	trans[0][3213]	= settr(3212,0,1,1525,0,"((dealt==0))", 1, 2, 0);
	trans[0][3214]	= settr(3213,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][3218]	= settr(3217,0,3220,1,0,".(goto)", 0, 2, 0);
	trans[0][3215]	= settr(3214,0,3216,2,0,"else", 0, 2, 0);
	trans[0][3216]	= settr(3215,0,3220,1,0,"(1)", 0, 2, 0);
	trans[0][3220]	= settr(3219,0,3221,1526,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][3221]	= settr(3220,0,3351,1527,1527,"output = 12", 1, 2, 0);
	trans[0][3222]	= settr(3221,0,17,2,0,"else", 0, 2, 0);
	trans[0][3223]	= settr(3222,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3226]	= settr(3225,0,3265,1528,0,"((fsm_state==3))", 1, 2, 0);
	T = trans[0][3265] = settr(3264,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3264,0,3227,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3264,0,3230,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3264,0,3233,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3264,0,3236,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3264,0,3239,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3264,0,3242,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3264,0,3245,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3264,0,3248,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3264,0,3251,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3264,0,3254,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3264,0,3257,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3264,0,3260,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3264,0,3263,0,0,"IF", 0, 2, 0);
	trans[0][3227]	= settr(3226,0,3228,1529,0,"((input==22))", 1, 2, 0);
	trans[0][3228]	= settr(3227,0,3229,1530,1530,"fsm_state = 40", 1, 2, 0);
	trans[0][3229]	= settr(3228,0,3351,1531,1531,"output = 4", 1, 2, 0);
	trans[0][3266]	= settr(3265,0,3351,1,0,".(goto)", 0, 2, 0);
	trans[0][3230]	= settr(3229,0,3231,1532,0,"((input==27))", 1, 2, 0);
	trans[0][3231]	= settr(3230,0,3232,1533,1533,"fsm_state = 40", 1, 2, 0);
	trans[0][3232]	= settr(3231,0,3351,1534,1534,"output = 4", 1, 2, 0);
	trans[0][3233]	= settr(3232,0,3234,1535,0,"((input==20))", 1, 2, 0);
	trans[0][3234]	= settr(3233,0,3235,1536,1536,"fsm_state = 40", 1, 2, 0);
	trans[0][3235]	= settr(3234,0,3351,1537,1537,"output = 4", 1, 2, 0);
	trans[0][3236]	= settr(3235,0,3237,1538,0,"((input==25))", 1, 2, 0);
	trans[0][3237]	= settr(3236,0,17,1539,1539,"fsm_state = 13", 1, 2, 0);
	trans[0][3238]	= settr(3237,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3239]	= settr(3238,0,3240,1540,0,"((input==26))", 1, 2, 0);
	trans[0][3240]	= settr(3239,0,3241,1541,1541,"fsm_state = 6", 1, 2, 0);
	trans[0][3241]	= settr(3240,0,3351,1542,1542,"output = 10", 1, 2, 0);
	trans[0][3242]	= settr(3241,0,3243,1543,0,"((input==24))", 1, 2, 0);
	trans[0][3243]	= settr(3242,0,3244,1544,1544,"fsm_state = 3", 1, 2, 0);
	trans[0][3244]	= settr(3243,0,3351,1545,1545,"output = 14", 1, 2, 0);
	trans[0][3245]	= settr(3244,0,3246,1546,0,"((input==18))", 1, 2, 0);
	trans[0][3246]	= settr(3245,0,17,1547,1547,"fsm_state = 3", 1, 2, 0);
	trans[0][3247]	= settr(3246,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3248]	= settr(3247,0,3249,1548,0,"((input==19))", 1, 2, 0);
	trans[0][3249]	= settr(3248,0,3250,1549,1549,"fsm_state = 3", 1, 2, 0);
	trans[0][3250]	= settr(3249,0,3351,1550,1550,"output = 3", 1, 2, 0);
	trans[0][3251]	= settr(3250,0,3252,1551,0,"((input==17))", 1, 2, 0);
	trans[0][3252]	= settr(3251,0,3253,1552,1552,"fsm_state = 3", 1, 2, 0);
	trans[0][3253]	= settr(3252,0,3351,1553,1553,"output = 3", 1, 2, 0);
	trans[0][3254]	= settr(3253,0,3255,1554,0,"((input==23))", 1, 2, 0);
	trans[0][3255]	= settr(3254,0,3256,1555,1555,"fsm_state = 3", 1, 2, 0);
	trans[0][3256]	= settr(3255,0,3351,1556,1556,"output = 14", 1, 2, 0);
	trans[0][3257]	= settr(3256,0,3258,1557,0,"((input==21))", 1, 2, 0);
	trans[0][3258]	= settr(3257,0,3259,1558,1558,"fsm_state = 3", 1, 2, 0);
	trans[0][3259]	= settr(3258,0,3351,1559,1559,"output = 3", 1, 2, 0);
	trans[0][3260]	= settr(3259,0,3261,1560,0,"((input==16))", 1, 2, 0);
	trans[0][3261]	= settr(3260,0,3262,1561,1561,"fsm_state = 3", 1, 2, 0);
	trans[0][3262]	= settr(3261,0,3351,1562,1562,"output = 3", 1, 2, 0);
	trans[0][3263]	= settr(3262,0,17,2,0,"else", 0, 2, 0);
	trans[0][3264]	= settr(3263,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3267]	= settr(3266,0,3306,1563,0,"((fsm_state==2))", 1, 2, 0);
	T = trans[0][3306] = settr(3305,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3305,0,3268,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3305,0,3271,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3305,0,3274,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3305,0,3277,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3305,0,3280,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3305,0,3283,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3305,0,3286,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3305,0,3289,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3305,0,3292,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3305,0,3295,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3305,0,3298,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3305,0,3301,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3305,0,3304,0,0,"IF", 0, 2, 0);
	trans[0][3268]	= settr(3267,0,3269,1564,0,"((input==22))", 1, 2, 0);
	trans[0][3269]	= settr(3268,0,3270,1565,1565,"fsm_state = 42", 1, 2, 0);
	trans[0][3270]	= settr(3269,0,3351,1566,1566,"output = 4", 1, 2, 0);
	trans[0][3307]	= settr(3306,0,3351,1,0,".(goto)", 0, 2, 0);
	trans[0][3271]	= settr(3270,0,3272,1567,0,"((input==27))", 1, 2, 0);
	trans[0][3272]	= settr(3271,0,3273,1568,1568,"fsm_state = 42", 1, 2, 0);
	trans[0][3273]	= settr(3272,0,3351,1569,1569,"output = 4", 1, 2, 0);
	trans[0][3274]	= settr(3273,0,3275,1570,0,"((input==20))", 1, 2, 0);
	trans[0][3275]	= settr(3274,0,3276,1571,1571,"fsm_state = 42", 1, 2, 0);
	trans[0][3276]	= settr(3275,0,3351,1572,1572,"output = 4", 1, 2, 0);
	trans[0][3277]	= settr(3276,0,3278,1573,0,"((input==25))", 1, 2, 0);
	trans[0][3278]	= settr(3277,0,17,1574,1574,"fsm_state = 12", 1, 2, 0);
	trans[0][3279]	= settr(3278,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3280]	= settr(3279,0,3281,1575,0,"((input==21))", 1, 2, 0);
	trans[0][3281]	= settr(3280,0,3282,1576,1576,"fsm_state = 3", 1, 2, 0);
	trans[0][3282]	= settr(3281,0,3351,1577,1577,"output = 15", 1, 2, 0);
	trans[0][3283]	= settr(3282,0,3284,1578,0,"((input==24))", 1, 2, 0);
	trans[0][3284]	= settr(3283,0,3285,1579,1579,"fsm_state = 2", 1, 2, 0);
	trans[0][3285]	= settr(3284,0,3351,1580,1580,"output = 14", 1, 2, 0);
	trans[0][3286]	= settr(3285,0,3287,1581,0,"((input==18))", 1, 2, 0);
	trans[0][3287]	= settr(3286,0,17,1582,1582,"fsm_state = 2", 1, 2, 0);
	trans[0][3288]	= settr(3287,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3289]	= settr(3288,0,3290,1583,0,"((input==19))", 1, 2, 0);
	trans[0][3290]	= settr(3289,0,3291,1584,1584,"fsm_state = 2", 1, 2, 0);
	trans[0][3291]	= settr(3290,0,3351,1585,1585,"output = 2", 1, 2, 0);
	trans[0][3292]	= settr(3291,0,3293,1586,0,"((input==26))", 1, 2, 0);
	trans[0][3293]	= settr(3292,0,3294,1587,1587,"fsm_state = 2", 1, 2, 0);
	trans[0][3294]	= settr(3293,0,3351,1588,1588,"output = 5", 1, 2, 0);
	trans[0][3295]	= settr(3294,0,3296,1589,0,"((input==17))", 1, 2, 0);
	trans[0][3296]	= settr(3295,0,17,1590,1590,"fsm_state = 2", 1, 2, 0);
	trans[0][3297]	= settr(3296,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3298]	= settr(3297,0,3299,1591,0,"((input==23))", 1, 2, 0);
	trans[0][3299]	= settr(3298,0,3300,1592,1592,"fsm_state = 2", 1, 2, 0);
	trans[0][3300]	= settr(3299,0,3351,1593,1593,"output = 14", 1, 2, 0);
	trans[0][3301]	= settr(3300,0,3302,1594,0,"((input==16))", 1, 2, 0);
	trans[0][3302]	= settr(3301,0,17,1595,1595,"fsm_state = 2", 1, 2, 0);
	trans[0][3303]	= settr(3302,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3304]	= settr(3303,0,17,2,0,"else", 0, 2, 0);
	trans[0][3305]	= settr(3304,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3308]	= settr(3307,0,3347,1596,0,"((fsm_state==1))", 1, 2, 0);
	T = trans[0][3347] = settr(3346,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3346,0,3309,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3346,0,3312,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3346,0,3315,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3346,0,3318,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3346,0,3321,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3346,0,3324,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3346,0,3327,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3346,0,3330,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3346,0,3333,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3346,0,3336,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3346,0,3339,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3346,0,3342,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3346,0,3345,0,0,"IF", 0, 2, 0);
	trans[0][3309]	= settr(3308,0,3310,1597,0,"((input==22))", 1, 2, 0);
	trans[0][3310]	= settr(3309,0,3311,1598,1598,"fsm_state = 42", 1, 2, 0);
	trans[0][3311]	= settr(3310,0,3351,1599,1599,"output = 4", 1, 2, 0);
	trans[0][3348]	= settr(3347,0,3351,1,0,".(goto)", 0, 2, 0);
	trans[0][3312]	= settr(3311,0,3313,1600,0,"((input==27))", 1, 2, 0);
	trans[0][3313]	= settr(3312,0,3314,1601,1601,"fsm_state = 42", 1, 2, 0);
	trans[0][3314]	= settr(3313,0,3351,1602,1602,"output = 4", 1, 2, 0);
	trans[0][3315]	= settr(3314,0,3316,1603,0,"((input==20))", 1, 2, 0);
	trans[0][3316]	= settr(3315,0,3317,1604,1604,"fsm_state = 42", 1, 2, 0);
	trans[0][3317]	= settr(3316,0,3351,1605,1605,"output = 4", 1, 2, 0);
	trans[0][3318]	= settr(3317,0,3319,1606,0,"((input==25))", 1, 2, 0);
	trans[0][3319]	= settr(3318,0,17,1607,1607,"fsm_state = 15", 1, 2, 0);
	trans[0][3320]	= settr(3319,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3321]	= settr(3320,0,3322,1608,0,"((input==21))", 1, 2, 0);
	trans[0][3322]	= settr(3321,0,17,1609,1609,"fsm_state = 3", 1, 2, 0);
	trans[0][3323]	= settr(3322,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3324]	= settr(3323,0,3325,1610,0,"((input==24))", 1, 2, 0);
	trans[0][3325]	= settr(3324,0,3326,1611,1611,"fsm_state = 1", 1, 2, 0);
	trans[0][3326]	= settr(3325,0,3351,1612,1612,"output = 14", 1, 2, 0);
	trans[0][3327]	= settr(3326,0,3328,1613,0,"((input==18))", 1, 2, 0);
	trans[0][3328]	= settr(3327,0,17,1614,1614,"fsm_state = 1", 1, 2, 0);
	trans[0][3329]	= settr(3328,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3330]	= settr(3329,0,3331,1615,0,"((input==19))", 1, 2, 0);
	trans[0][3331]	= settr(3330,0,17,1616,1616,"fsm_state = 1", 1, 2, 0);
	trans[0][3332]	= settr(3331,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3333]	= settr(3332,0,3334,1617,0,"((input==26))", 1, 2, 0);
	trans[0][3334]	= settr(3333,0,3335,1618,1618,"fsm_state = 1", 1, 2, 0);
	trans[0][3335]	= settr(3334,0,3351,1619,1619,"output = 5", 1, 2, 0);
	trans[0][3336]	= settr(3335,0,3337,1620,0,"((input==17))", 1, 2, 0);
	trans[0][3337]	= settr(3336,0,17,1621,1621,"fsm_state = 1", 1, 2, 0);
	trans[0][3338]	= settr(3337,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3339]	= settr(3338,0,3340,1622,0,"((input==23))", 1, 2, 0);
	trans[0][3340]	= settr(3339,0,3341,1623,1623,"fsm_state = 1", 1, 2, 0);
	trans[0][3341]	= settr(3340,0,3351,1624,1624,"output = 14", 1, 2, 0);
	trans[0][3342]	= settr(3341,0,3343,1625,0,"((input==16))", 1, 2, 0);
	trans[0][3343]	= settr(3342,0,17,1626,1626,"fsm_state = 1", 1, 2, 0);
	trans[0][3344]	= settr(3343,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3345]	= settr(3344,0,17,2,0,"else", 0, 2, 0);
	trans[0][3346]	= settr(3345,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3351]	= settr(3350,0,3352,1627,0,"printf('FSM State: %e\\n',fsm_state)", 1, 2, 0);
	trans[0][3352]	= settr(3351,0,3398,1628,0,"printf('Output: %e\\n\\n',output)", 1, 2, 0);
	T = trans[ 0][3398] = settr(3397,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(3397,0,3391,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][3391]	= settr(3390,32,3396,1629,1629,"D_STEP13", 1, 2, 0);
	T = trans[0][3396] = settr(3395,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3395,0,3392,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3395,0,3394,0,0,"IF", 0, 2, 0);
	trans[0][3392]	= settr(3391,0,1,1630,0,"((dealt==0))", 1, 2, 0);
	trans[0][3393]	= settr(3392,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][3397]	= settr(3396,0,3399,1,0,".(goto)", 0, 2, 0);
	trans[0][3394]	= settr(3393,0,3395,2,0,"else", 0, 2, 0);
	trans[0][3395]	= settr(3394,0,3399,1,0,"(1)", 0, 2, 0);
	trans[0][3399]	= settr(3398,0,3400,1631,0,"printf('DFA State: %e\\n\\n',dfa_state)", 1, 2, 0);
	trans[0][3402]	= settr(3401,0,3403,1,0,"break", 0, 2, 0);
	trans[0][3403]	= settr(3402,0,0,1632,1632,"-end-", 0, 3500, 0);
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
