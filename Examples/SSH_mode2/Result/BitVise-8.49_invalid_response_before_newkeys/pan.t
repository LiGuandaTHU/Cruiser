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

	trans[1][7]	= settr(3145,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[1][6] = settr(3144,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(3144,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(3144,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 1][3] = settr(3141,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(3141,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[1][1]	= settr(3139,0,6,3,3,"(!((dfa_state!=2)))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached1[2] = 1;
	trans[1][2]	= settr(0,0,0,0,0,"assert(!(!((dfa_state!=2))))",0,0,0);
	trans[1][4]	= settr(3142,0,6,1,0,"(1)", 0, 2, 0);
	trans[1][5]	= settr(3143,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[1][8]	= settr(3146,0,9,1,0,"break", 0, 2, 0);
	trans[1][9]	= settr(3147,0,10,1,0,"(1)", 0, 2, 0);
	trans[1][10]	= settr(3148,0,0,4,4,"-end-", 0, 3500, 0);

	/* proctype 0: :init: */

	trans[0] = (Trans **) emalloc(3140*sizeof(Trans *));

	trans[0][1]	= settr(0,0,2,5,5,"fsm_state = 43", 1, 2, 0);
	trans[0][2]	= settr(1,0,3,6,6,"dfa_state = 3", 1, 2, 0);
	trans[0][3]	= settr(2,0,3136,7,7,"dealt = 0", 1, 2, 0);
	trans[0][3137]	= settr(3136,0,3136,1,0,".(goto)", 0, 2, 0);
	T = trans[0][3136] = settr(3135,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(3135,0,4,0,0,"DO", 0, 2, 0);
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
	trans[0][19]	= settr(18,0,57,20,0,"printf('Input: %e\\n',input)", 1, 2, 0);
	T = trans[ 0][57] = settr(56,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(56,0,50,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][50]	= settr(49,32,55,21,21,"D_STEP13", 1, 2, 0);
	T = trans[0][55] = settr(54,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(54,0,51,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(54,0,53,0,0,"IF", 0, 2, 0);
	trans[0][51]	= settr(50,0,1,22,0,"((dealt==0))", 1, 2, 0);
	trans[0][52]	= settr(51,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][56]	= settr(55,0,58,1,0,".(goto)", 0, 2, 0);
	trans[0][53]	= settr(52,0,54,2,0,"else", 0, 2, 0);
	trans[0][54]	= settr(53,0,58,1,0,"(1)", 0, 2, 0);
	trans[0][58]	= settr(57,0,3093,23,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	T = trans[0][3093] = settr(3092,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3092,0,59,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3092,0,387,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3092,0,428,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3092,0,510,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3092,0,551,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3092,0,592,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3092,0,633,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3092,0,674,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3092,0,715,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3092,0,756,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3092,0,797,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3092,0,879,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3092,0,920,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3092,0,1002,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3092,0,1043,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3092,0,1125,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3092,0,1166,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3092,0,1248,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3092,0,1289,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3092,0,1330,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3092,0,1371,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3092,0,1453,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3092,0,1494,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3092,0,1617,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3092,0,1740,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3092,0,1863,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3092,0,1904,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3092,0,2027,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3092,0,2109,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3092,0,2150,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3092,0,2232,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3092,0,2273,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3092,0,2314,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3092,0,2437,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3092,0,2478,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3092,0,2519,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3092,0,2642,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3092,0,2724,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3092,0,2765,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3092,0,2847,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3092,0,2970,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3092,0,3011,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3092,0,3052,0,0,"IF", 0, 2, 0);
	trans[0][59]	= settr(58,0,385,24,0,"((fsm_state==43))", 1, 2, 0);
	T = trans[0][385] = settr(384,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(384,0,60,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(384,0,63,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(384,0,66,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(384,0,69,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(384,0,72,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(384,0,116,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(384,0,119,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(384,0,163,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(384,0,207,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(384,0,251,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(384,0,295,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(384,0,339,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(384,0,383,0,0,"IF", 0, 2, 0);
	trans[0][60]	= settr(59,0,61,25,0,"((input==19))", 1, 2, 0);
	trans[0][61]	= settr(60,0,62,26,26,"fsm_state = 43", 1, 2, 0);
	trans[0][62]	= settr(61,0,3095,27,27,"output = 5", 1, 2, 0);
	trans[0][386]	= settr(385,0,3095,1,0,".(goto)", 0, 2, 0);
	trans[0][63]	= settr(62,0,64,28,0,"((input==25))", 1, 2, 0);
	trans[0][64]	= settr(63,0,65,29,29,"fsm_state = 43", 1, 2, 0);
	trans[0][65]	= settr(64,0,3095,30,30,"output = 5", 1, 2, 0);
	trans[0][66]	= settr(65,0,67,31,0,"((input==16))", 1, 2, 0);
	trans[0][67]	= settr(66,0,68,32,32,"fsm_state = 43", 1, 2, 0);
	trans[0][68]	= settr(67,0,3095,33,33,"output = 5", 1, 2, 0);
	trans[0][69]	= settr(68,0,70,34,0,"((input==24))", 1, 2, 0);
	trans[0][70]	= settr(69,0,71,35,35,"fsm_state = 43", 1, 2, 0);
	trans[0][71]	= settr(70,0,3095,36,36,"output = 5", 1, 2, 0);
	trans[0][72]	= settr(71,0,73,37,0,"((input==18))", 1, 2, 0);
	trans[0][73]	= settr(72,0,74,38,38,"fsm_state = 42", 1, 2, 0);
	trans[0][74]	= settr(73,0,75,39,39,"output = 13", 1, 2, 0);
	trans[0][75]	= settr(74,0,113,40,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][113] = settr(112,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(112,0,106,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][106]	= settr(105,32,111,41,41,"D_STEP13", 1, 2, 0);
	T = trans[0][111] = settr(110,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(110,0,107,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(110,0,109,0,0,"IF", 0, 2, 0);
	trans[0][107]	= settr(106,0,1,42,0,"((dealt==0))", 1, 2, 0);
	trans[0][108]	= settr(107,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][112]	= settr(111,0,114,1,0,".(goto)", 0, 2, 0);
	trans[0][109]	= settr(108,0,110,2,0,"else", 0, 2, 0);
	trans[0][110]	= settr(109,0,114,1,0,"(1)", 0, 2, 0);
	trans[0][114]	= settr(113,0,115,43,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][115]	= settr(114,0,3095,44,44,"output = 4", 1, 2, 0);
	trans[0][116]	= settr(115,0,117,45,0,"((input==17))", 1, 2, 0);
	trans[0][117]	= settr(116,0,118,46,46,"fsm_state = 41", 1, 2, 0);
	trans[0][118]	= settr(117,0,3095,47,47,"output = 13", 1, 2, 0);
	trans[0][119]	= settr(118,0,120,48,0,"((input==27))", 1, 2, 0);
	trans[0][120]	= settr(119,0,121,49,49,"fsm_state = 40", 1, 2, 0);
	trans[0][121]	= settr(120,0,122,50,50,"output = 13", 1, 2, 0);
	trans[0][122]	= settr(121,0,160,51,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][160] = settr(159,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(159,0,153,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][153]	= settr(152,32,158,52,52,"D_STEP13", 1, 2, 0);
	T = trans[0][158] = settr(157,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(157,0,154,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(157,0,156,0,0,"IF", 0, 2, 0);
	trans[0][154]	= settr(153,0,1,53,0,"((dealt==0))", 1, 2, 0);
	trans[0][155]	= settr(154,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][159]	= settr(158,0,161,1,0,".(goto)", 0, 2, 0);
	trans[0][156]	= settr(155,0,157,2,0,"else", 0, 2, 0);
	trans[0][157]	= settr(156,0,161,1,0,"(1)", 0, 2, 0);
	trans[0][161]	= settr(160,0,162,54,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][162]	= settr(161,0,3095,55,55,"output = 4", 1, 2, 0);
	trans[0][163]	= settr(162,0,164,56,0,"((input==20))", 1, 2, 0);
	trans[0][164]	= settr(163,0,165,57,57,"fsm_state = 40", 1, 2, 0);
	trans[0][165]	= settr(164,0,166,58,58,"output = 13", 1, 2, 0);
	trans[0][166]	= settr(165,0,204,59,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][204] = settr(203,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(203,0,197,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][197]	= settr(196,32,202,60,60,"D_STEP13", 1, 2, 0);
	T = trans[0][202] = settr(201,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(201,0,198,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(201,0,200,0,0,"IF", 0, 2, 0);
	trans[0][198]	= settr(197,0,1,61,0,"((dealt==0))", 1, 2, 0);
	trans[0][199]	= settr(198,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][203]	= settr(202,0,205,1,0,".(goto)", 0, 2, 0);
	trans[0][200]	= settr(199,0,201,2,0,"else", 0, 2, 0);
	trans[0][201]	= settr(200,0,205,1,0,"(1)", 0, 2, 0);
	trans[0][205]	= settr(204,0,206,62,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][206]	= settr(205,0,3095,63,63,"output = 4", 1, 2, 0);
	trans[0][207]	= settr(206,0,208,64,0,"((input==23))", 1, 2, 0);
	trans[0][208]	= settr(207,0,209,65,65,"fsm_state = 40", 1, 2, 0);
	trans[0][209]	= settr(208,0,210,66,66,"output = 13", 1, 2, 0);
	trans[0][210]	= settr(209,0,248,67,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][248] = settr(247,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(247,0,241,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][241]	= settr(240,32,246,68,68,"D_STEP13", 1, 2, 0);
	T = trans[0][246] = settr(245,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(245,0,242,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(245,0,244,0,0,"IF", 0, 2, 0);
	trans[0][242]	= settr(241,0,1,69,0,"((dealt==0))", 1, 2, 0);
	trans[0][243]	= settr(242,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][247]	= settr(246,0,249,1,0,".(goto)", 0, 2, 0);
	trans[0][244]	= settr(243,0,245,2,0,"else", 0, 2, 0);
	trans[0][245]	= settr(244,0,249,1,0,"(1)", 0, 2, 0);
	trans[0][249]	= settr(248,0,250,70,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][250]	= settr(249,0,3095,71,71,"output = 4", 1, 2, 0);
	trans[0][251]	= settr(250,0,252,72,0,"((input==21))", 1, 2, 0);
	trans[0][252]	= settr(251,0,253,73,73,"fsm_state = 40", 1, 2, 0);
	trans[0][253]	= settr(252,0,254,74,74,"output = 13", 1, 2, 0);
	trans[0][254]	= settr(253,0,292,75,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][292] = settr(291,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(291,0,285,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][285]	= settr(284,32,290,76,76,"D_STEP13", 1, 2, 0);
	T = trans[0][290] = settr(289,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(289,0,286,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(289,0,288,0,0,"IF", 0, 2, 0);
	trans[0][286]	= settr(285,0,1,77,0,"((dealt==0))", 1, 2, 0);
	trans[0][287]	= settr(286,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][291]	= settr(290,0,293,1,0,".(goto)", 0, 2, 0);
	trans[0][288]	= settr(287,0,289,2,0,"else", 0, 2, 0);
	trans[0][289]	= settr(288,0,293,1,0,"(1)", 0, 2, 0);
	trans[0][293]	= settr(292,0,294,78,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][294]	= settr(293,0,3095,79,79,"output = 4", 1, 2, 0);
	trans[0][295]	= settr(294,0,296,80,0,"((input==26))", 1, 2, 0);
	trans[0][296]	= settr(295,0,297,81,81,"fsm_state = 40", 1, 2, 0);
	trans[0][297]	= settr(296,0,298,82,82,"output = 13", 1, 2, 0);
	trans[0][298]	= settr(297,0,336,83,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][336] = settr(335,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(335,0,329,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][329]	= settr(328,32,334,84,84,"D_STEP13", 1, 2, 0);
	T = trans[0][334] = settr(333,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(333,0,330,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(333,0,332,0,0,"IF", 0, 2, 0);
	trans[0][330]	= settr(329,0,1,85,0,"((dealt==0))", 1, 2, 0);
	trans[0][331]	= settr(330,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][335]	= settr(334,0,337,1,0,".(goto)", 0, 2, 0);
	trans[0][332]	= settr(331,0,333,2,0,"else", 0, 2, 0);
	trans[0][333]	= settr(332,0,337,1,0,"(1)", 0, 2, 0);
	trans[0][337]	= settr(336,0,338,86,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][338]	= settr(337,0,3095,87,87,"output = 4", 1, 2, 0);
	trans[0][339]	= settr(338,0,340,88,0,"((input==22))", 1, 2, 0);
	trans[0][340]	= settr(339,0,341,89,89,"fsm_state = 40", 1, 2, 0);
	trans[0][341]	= settr(340,0,342,90,90,"output = 13", 1, 2, 0);
	trans[0][342]	= settr(341,0,380,91,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][380] = settr(379,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(379,0,373,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][373]	= settr(372,32,378,92,92,"D_STEP13", 1, 2, 0);
	T = trans[0][378] = settr(377,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(377,0,374,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(377,0,376,0,0,"IF", 0, 2, 0);
	trans[0][374]	= settr(373,0,1,93,0,"((dealt==0))", 1, 2, 0);
	trans[0][375]	= settr(374,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][379]	= settr(378,0,381,1,0,".(goto)", 0, 2, 0);
	trans[0][376]	= settr(375,0,377,2,0,"else", 0, 2, 0);
	trans[0][377]	= settr(376,0,381,1,0,"(1)", 0, 2, 0);
	trans[0][381]	= settr(380,0,382,94,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][382]	= settr(381,0,3095,95,95,"output = 4", 1, 2, 0);
	trans[0][383]	= settr(382,0,17,2,0,"else", 0, 2, 0);
	trans[0][384]	= settr(383,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3094]	= settr(3093,0,3095,1,0,".(goto)", 0, 2, 0);
	trans[0][387]	= settr(386,0,426,96,0,"((fsm_state==42))", 1, 2, 0);
	T = trans[0][426] = settr(425,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(425,0,388,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(425,0,391,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(425,0,394,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(425,0,397,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(425,0,400,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(425,0,403,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(425,0,406,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(425,0,409,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(425,0,412,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(425,0,415,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(425,0,418,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(425,0,421,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(425,0,424,0,0,"IF", 0, 2, 0);
	trans[0][388]	= settr(387,0,389,97,0,"((input==27))", 1, 2, 0);
	trans[0][389]	= settr(388,0,390,98,98,"fsm_state = 42", 1, 2, 0);
	trans[0][390]	= settr(389,0,3095,99,99,"output = 9", 1, 2, 0);
	trans[0][427]	= settr(426,0,3095,1,0,".(goto)", 0, 2, 0);
	trans[0][391]	= settr(390,0,392,100,0,"((input==20))", 1, 2, 0);
	trans[0][392]	= settr(391,0,393,101,101,"fsm_state = 42", 1, 2, 0);
	trans[0][393]	= settr(392,0,3095,102,102,"output = 9", 1, 2, 0);
	trans[0][394]	= settr(393,0,395,103,0,"((input==23))", 1, 2, 0);
	trans[0][395]	= settr(394,0,396,104,104,"fsm_state = 42", 1, 2, 0);
	trans[0][396]	= settr(395,0,3095,105,105,"output = 9", 1, 2, 0);
	trans[0][397]	= settr(396,0,398,106,0,"((input==19))", 1, 2, 0);
	trans[0][398]	= settr(397,0,399,107,107,"fsm_state = 42", 1, 2, 0);
	trans[0][399]	= settr(398,0,3095,108,108,"output = 9", 1, 2, 0);
	trans[0][400]	= settr(399,0,401,109,0,"((input==18))", 1, 2, 0);
	trans[0][401]	= settr(400,0,402,110,110,"fsm_state = 42", 1, 2, 0);
	trans[0][402]	= settr(401,0,3095,111,111,"output = 8", 1, 2, 0);
	trans[0][403]	= settr(402,0,404,112,0,"((input==25))", 1, 2, 0);
	trans[0][404]	= settr(403,0,405,113,113,"fsm_state = 42", 1, 2, 0);
	trans[0][405]	= settr(404,0,3095,114,114,"output = 9", 1, 2, 0);
	trans[0][406]	= settr(405,0,407,115,0,"((input==21))", 1, 2, 0);
	trans[0][407]	= settr(406,0,408,116,116,"fsm_state = 42", 1, 2, 0);
	trans[0][408]	= settr(407,0,3095,117,117,"output = 9", 1, 2, 0);
	trans[0][409]	= settr(408,0,410,118,0,"((input==26))", 1, 2, 0);
	trans[0][410]	= settr(409,0,411,119,119,"fsm_state = 42", 1, 2, 0);
	trans[0][411]	= settr(410,0,3095,120,120,"output = 9", 1, 2, 0);
	trans[0][412]	= settr(411,0,413,121,0,"((input==17))", 1, 2, 0);
	trans[0][413]	= settr(412,0,414,122,122,"fsm_state = 42", 1, 2, 0);
	trans[0][414]	= settr(413,0,3095,123,123,"output = 9", 1, 2, 0);
	trans[0][415]	= settr(414,0,416,124,0,"((input==24))", 1, 2, 0);
	trans[0][416]	= settr(415,0,417,125,125,"fsm_state = 42", 1, 2, 0);
	trans[0][417]	= settr(416,0,3095,126,126,"output = 9", 1, 2, 0);
	trans[0][418]	= settr(417,0,419,127,0,"((input==22))", 1, 2, 0);
	trans[0][419]	= settr(418,0,420,128,128,"fsm_state = 42", 1, 2, 0);
	trans[0][420]	= settr(419,0,3095,129,129,"output = 9", 1, 2, 0);
	trans[0][421]	= settr(420,0,422,130,0,"((input==16))", 1, 2, 0);
	trans[0][422]	= settr(421,0,423,131,131,"fsm_state = 40", 1, 2, 0);
	trans[0][423]	= settr(422,0,3095,132,132,"output = 9", 1, 2, 0);
	trans[0][424]	= settr(423,0,17,2,0,"else", 0, 2, 0);
	trans[0][425]	= settr(424,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][428]	= settr(427,0,508,133,0,"((fsm_state==41))", 1, 2, 0);
	T = trans[0][508] = settr(507,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(507,0,429,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(507,0,432,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(507,0,435,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(507,0,438,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(507,0,441,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(507,0,444,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(507,0,447,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(507,0,450,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(507,0,453,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(507,0,456,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(507,0,459,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(507,0,503,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(507,0,506,0,0,"IF", 0, 2, 0);
	trans[0][429]	= settr(428,0,430,134,0,"((input==18))", 1, 2, 0);
	trans[0][430]	= settr(429,0,431,135,135,"fsm_state = 42", 1, 2, 0);
	trans[0][431]	= settr(430,0,3095,136,136,"output = 4", 1, 2, 0);
	trans[0][509]	= settr(508,0,3095,1,0,".(goto)", 0, 2, 0);
	trans[0][432]	= settr(431,0,433,137,0,"((input==19))", 1, 2, 0);
	trans[0][433]	= settr(432,0,434,138,138,"fsm_state = 41", 1, 2, 0);
	trans[0][434]	= settr(433,0,3095,139,139,"output = 5", 1, 2, 0);
	trans[0][435]	= settr(434,0,436,140,0,"((input==25))", 1, 2, 0);
	trans[0][436]	= settr(435,0,437,141,141,"fsm_state = 41", 1, 2, 0);
	trans[0][437]	= settr(436,0,3095,142,142,"output = 5", 1, 2, 0);
	trans[0][438]	= settr(437,0,439,143,0,"((input==16))", 1, 2, 0);
	trans[0][439]	= settr(438,0,440,144,144,"fsm_state = 41", 1, 2, 0);
	trans[0][440]	= settr(439,0,3095,145,145,"output = 5", 1, 2, 0);
	trans[0][441]	= settr(440,0,442,146,0,"((input==24))", 1, 2, 0);
	trans[0][442]	= settr(441,0,443,147,147,"fsm_state = 41", 1, 2, 0);
	trans[0][443]	= settr(442,0,3095,148,148,"output = 5", 1, 2, 0);
	trans[0][444]	= settr(443,0,445,149,0,"((input==27))", 1, 2, 0);
	trans[0][445]	= settr(444,0,446,150,150,"fsm_state = 40", 1, 2, 0);
	trans[0][446]	= settr(445,0,3095,151,151,"output = 4", 1, 2, 0);
	trans[0][447]	= settr(446,0,448,152,0,"((input==21))", 1, 2, 0);
	trans[0][448]	= settr(447,0,449,153,153,"fsm_state = 40", 1, 2, 0);
	trans[0][449]	= settr(448,0,3095,154,154,"output = 4", 1, 2, 0);
	trans[0][450]	= settr(449,0,451,155,0,"((input==26))", 1, 2, 0);
	trans[0][451]	= settr(450,0,452,156,156,"fsm_state = 40", 1, 2, 0);
	trans[0][452]	= settr(451,0,3095,157,157,"output = 4", 1, 2, 0);
	trans[0][453]	= settr(452,0,454,158,0,"((input==17))", 1, 2, 0);
	trans[0][454]	= settr(453,0,455,159,159,"fsm_state = 40", 1, 2, 0);
	trans[0][455]	= settr(454,0,3095,160,160,"output = 4", 1, 2, 0);
	trans[0][456]	= settr(455,0,457,161,0,"((input==22))", 1, 2, 0);
	trans[0][457]	= settr(456,0,458,162,162,"fsm_state = 40", 1, 2, 0);
	trans[0][458]	= settr(457,0,3095,163,163,"output = 4", 1, 2, 0);
	trans[0][459]	= settr(458,0,460,164,0,"((input==20))", 1, 2, 0);
	trans[0][460]	= settr(459,0,461,165,165,"fsm_state = 39", 1, 2, 0);
	trans[0][461]	= settr(460,0,462,166,166,"output = 12", 1, 2, 0);
	trans[0][462]	= settr(461,0,500,167,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][500] = settr(499,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(499,0,493,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][493]	= settr(492,32,498,168,168,"D_STEP13", 1, 2, 0);
	T = trans[0][498] = settr(497,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(497,0,494,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(497,0,496,0,0,"IF", 0, 2, 0);
	trans[0][494]	= settr(493,0,1,169,0,"((dealt==0))", 1, 2, 0);
	trans[0][495]	= settr(494,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][499]	= settr(498,0,501,1,0,".(goto)", 0, 2, 0);
	trans[0][496]	= settr(495,0,497,2,0,"else", 0, 2, 0);
	trans[0][497]	= settr(496,0,501,1,0,"(1)", 0, 2, 0);
	trans[0][501]	= settr(500,0,502,170,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][502]	= settr(501,0,3095,171,171,"output = 2", 1, 2, 0);
	trans[0][503]	= settr(502,0,504,172,0,"((input==23))", 1, 2, 0);
	trans[0][504]	= settr(503,0,17,173,173,"fsm_state = 38", 1, 2, 0);
	trans[0][505]	= settr(504,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][506]	= settr(505,0,17,2,0,"else", 0, 2, 0);
	trans[0][507]	= settr(506,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][510]	= settr(509,0,549,174,0,"((fsm_state==40))", 1, 2, 0);
	T = trans[0][549] = settr(548,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(548,0,511,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(548,0,514,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(548,0,517,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(548,0,520,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(548,0,523,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(548,0,526,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(548,0,529,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(548,0,532,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(548,0,535,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(548,0,538,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(548,0,541,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(548,0,544,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(548,0,547,0,0,"IF", 0, 2, 0);
	trans[0][511]	= settr(510,0,512,175,0,"((input==18))", 1, 2, 0);
	trans[0][512]	= settr(511,0,513,176,176,"fsm_state = 42", 1, 2, 0);
	trans[0][513]	= settr(512,0,3095,177,177,"output = 9", 1, 2, 0);
	trans[0][550]	= settr(549,0,3095,1,0,".(goto)", 0, 2, 0);
	trans[0][514]	= settr(513,0,515,178,0,"((input==27))", 1, 2, 0);
	trans[0][515]	= settr(514,0,516,179,179,"fsm_state = 40", 1, 2, 0);
	trans[0][516]	= settr(515,0,3095,180,180,"output = 9", 1, 2, 0);
	trans[0][517]	= settr(516,0,518,181,0,"((input==20))", 1, 2, 0);
	trans[0][518]	= settr(517,0,519,182,182,"fsm_state = 40", 1, 2, 0);
	trans[0][519]	= settr(518,0,3095,183,183,"output = 9", 1, 2, 0);
	trans[0][520]	= settr(519,0,521,184,0,"((input==23))", 1, 2, 0);
	trans[0][521]	= settr(520,0,522,185,185,"fsm_state = 40", 1, 2, 0);
	trans[0][522]	= settr(521,0,3095,186,186,"output = 9", 1, 2, 0);
	trans[0][523]	= settr(522,0,524,187,0,"((input==19))", 1, 2, 0);
	trans[0][524]	= settr(523,0,525,188,188,"fsm_state = 40", 1, 2, 0);
	trans[0][525]	= settr(524,0,3095,189,189,"output = 5", 1, 2, 0);
	trans[0][526]	= settr(525,0,527,190,0,"((input==25))", 1, 2, 0);
	trans[0][527]	= settr(526,0,528,191,191,"fsm_state = 40", 1, 2, 0);
	trans[0][528]	= settr(527,0,3095,192,192,"output = 5", 1, 2, 0);
	trans[0][529]	= settr(528,0,530,193,0,"((input==21))", 1, 2, 0);
	trans[0][530]	= settr(529,0,531,194,194,"fsm_state = 40", 1, 2, 0);
	trans[0][531]	= settr(530,0,3095,195,195,"output = 9", 1, 2, 0);
	trans[0][532]	= settr(531,0,533,196,0,"((input==16))", 1, 2, 0);
	trans[0][533]	= settr(532,0,534,197,197,"fsm_state = 40", 1, 2, 0);
	trans[0][534]	= settr(533,0,3095,198,198,"output = 5", 1, 2, 0);
	trans[0][535]	= settr(534,0,536,199,0,"((input==26))", 1, 2, 0);
	trans[0][536]	= settr(535,0,537,200,200,"fsm_state = 40", 1, 2, 0);
	trans[0][537]	= settr(536,0,3095,201,201,"output = 9", 1, 2, 0);
	trans[0][538]	= settr(537,0,539,202,0,"((input==17))", 1, 2, 0);
	trans[0][539]	= settr(538,0,540,203,203,"fsm_state = 40", 1, 2, 0);
	trans[0][540]	= settr(539,0,3095,204,204,"output = 9", 1, 2, 0);
	trans[0][541]	= settr(540,0,542,205,0,"((input==24))", 1, 2, 0);
	trans[0][542]	= settr(541,0,543,206,206,"fsm_state = 40", 1, 2, 0);
	trans[0][543]	= settr(542,0,3095,207,207,"output = 5", 1, 2, 0);
	trans[0][544]	= settr(543,0,545,208,0,"((input==22))", 1, 2, 0);
	trans[0][545]	= settr(544,0,546,209,209,"fsm_state = 40", 1, 2, 0);
	trans[0][546]	= settr(545,0,3095,210,210,"output = 9", 1, 2, 0);
	trans[0][547]	= settr(546,0,17,2,0,"else", 0, 2, 0);
	trans[0][548]	= settr(547,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][551]	= settr(550,0,590,211,0,"((fsm_state==39))", 1, 2, 0);
	T = trans[0][590] = settr(589,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(589,0,552,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(589,0,555,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(589,0,558,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(589,0,561,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(589,0,564,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(589,0,567,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(589,0,570,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(589,0,573,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(589,0,576,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(589,0,579,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(589,0,582,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(589,0,585,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(589,0,588,0,0,"IF", 0, 2, 0);
	trans[0][552]	= settr(551,0,553,212,0,"((input==18))", 1, 2, 0);
	trans[0][553]	= settr(552,0,554,213,213,"fsm_state = 42", 1, 2, 0);
	trans[0][554]	= settr(553,0,3095,214,214,"output = 4", 1, 2, 0);
	trans[0][591]	= settr(590,0,3095,1,0,".(goto)", 0, 2, 0);
	trans[0][555]	= settr(554,0,556,215,0,"((input==27))", 1, 2, 0);
	trans[0][556]	= settr(555,0,557,216,216,"fsm_state = 40", 1, 2, 0);
	trans[0][557]	= settr(556,0,3095,217,217,"output = 4", 1, 2, 0);
	trans[0][558]	= settr(557,0,559,218,0,"((input==21))", 1, 2, 0);
	trans[0][559]	= settr(558,0,560,219,219,"fsm_state = 40", 1, 2, 0);
	trans[0][560]	= settr(559,0,3095,220,220,"output = 4", 1, 2, 0);
	trans[0][561]	= settr(560,0,562,221,0,"((input==26))", 1, 2, 0);
	trans[0][562]	= settr(561,0,563,222,222,"fsm_state = 40", 1, 2, 0);
	trans[0][563]	= settr(562,0,3095,223,223,"output = 4", 1, 2, 0);
	trans[0][564]	= settr(563,0,565,224,0,"((input==17))", 1, 2, 0);
	trans[0][565]	= settr(564,0,566,225,225,"fsm_state = 40", 1, 2, 0);
	trans[0][566]	= settr(565,0,3095,226,226,"output = 4", 1, 2, 0);
	trans[0][567]	= settr(566,0,568,227,0,"((input==22))", 1, 2, 0);
	trans[0][568]	= settr(567,0,569,228,228,"fsm_state = 40", 1, 2, 0);
	trans[0][569]	= settr(568,0,3095,229,229,"output = 4", 1, 2, 0);
	trans[0][570]	= settr(569,0,571,230,0,"((input==20))", 1, 2, 0);
	trans[0][571]	= settr(570,0,17,231,231,"fsm_state = 39", 1, 2, 0);
	trans[0][572]	= settr(571,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][573]	= settr(572,0,574,232,0,"((input==19))", 1, 2, 0);
	trans[0][574]	= settr(573,0,575,233,233,"fsm_state = 39", 1, 2, 0);
	trans[0][575]	= settr(574,0,3095,234,234,"output = 5", 1, 2, 0);
	trans[0][576]	= settr(575,0,577,235,0,"((input==25))", 1, 2, 0);
	trans[0][577]	= settr(576,0,578,236,236,"fsm_state = 39", 1, 2, 0);
	trans[0][578]	= settr(577,0,3095,237,237,"output = 5", 1, 2, 0);
	trans[0][579]	= settr(578,0,580,238,0,"((input==16))", 1, 2, 0);
	trans[0][580]	= settr(579,0,581,239,239,"fsm_state = 39", 1, 2, 0);
	trans[0][581]	= settr(580,0,3095,240,240,"output = 5", 1, 2, 0);
	trans[0][582]	= settr(581,0,583,241,0,"((input==24))", 1, 2, 0);
	trans[0][583]	= settr(582,0,584,242,242,"fsm_state = 39", 1, 2, 0);
	trans[0][584]	= settr(583,0,3095,243,243,"output = 5", 1, 2, 0);
	trans[0][585]	= settr(584,0,586,244,0,"((input==23))", 1, 2, 0);
	trans[0][586]	= settr(585,0,17,245,245,"fsm_state = 37", 1, 2, 0);
	trans[0][587]	= settr(586,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][588]	= settr(587,0,17,2,0,"else", 0, 2, 0);
	trans[0][589]	= settr(588,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][592]	= settr(591,0,631,246,0,"((fsm_state==38))", 1, 2, 0);
	T = trans[0][631] = settr(630,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(630,0,593,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(630,0,596,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(630,0,599,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(630,0,602,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(630,0,605,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(630,0,608,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(630,0,611,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(630,0,614,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(630,0,617,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(630,0,620,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(630,0,623,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(630,0,626,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(630,0,629,0,0,"IF", 0, 2, 0);
	trans[0][593]	= settr(592,0,594,247,0,"((input==27))", 1, 2, 0);
	trans[0][594]	= settr(593,0,17,248,248,"fsm_state = 38", 1, 2, 0);
	trans[0][595]	= settr(594,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][632]	= settr(631,0,3095,1,0,".(goto)", 0, 2, 0);
	trans[0][596]	= settr(595,0,597,249,0,"((input==20))", 1, 2, 0);
	trans[0][597]	= settr(596,0,17,250,250,"fsm_state = 38", 1, 2, 0);
	trans[0][598]	= settr(597,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][599]	= settr(598,0,600,251,0,"((input==23))", 1, 2, 0);
	trans[0][600]	= settr(599,0,17,252,252,"fsm_state = 38", 1, 2, 0);
	trans[0][601]	= settr(600,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][602]	= settr(601,0,603,253,0,"((input==19))", 1, 2, 0);
	trans[0][603]	= settr(602,0,604,254,254,"fsm_state = 38", 1, 2, 0);
	trans[0][604]	= settr(603,0,3095,255,255,"output = 5", 1, 2, 0);
	trans[0][605]	= settr(604,0,606,256,0,"((input==25))", 1, 2, 0);
	trans[0][606]	= settr(605,0,607,257,257,"fsm_state = 38", 1, 2, 0);
	trans[0][607]	= settr(606,0,3095,258,258,"output = 5", 1, 2, 0);
	trans[0][608]	= settr(607,0,609,259,0,"((input==21))", 1, 2, 0);
	trans[0][609]	= settr(608,0,17,260,260,"fsm_state = 38", 1, 2, 0);
	trans[0][610]	= settr(609,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][611]	= settr(610,0,612,261,0,"((input==16))", 1, 2, 0);
	trans[0][612]	= settr(611,0,613,262,262,"fsm_state = 38", 1, 2, 0);
	trans[0][613]	= settr(612,0,3095,263,263,"output = 5", 1, 2, 0);
	trans[0][614]	= settr(613,0,615,264,0,"((input==26))", 1, 2, 0);
	trans[0][615]	= settr(614,0,17,265,265,"fsm_state = 38", 1, 2, 0);
	trans[0][616]	= settr(615,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][617]	= settr(616,0,618,266,0,"((input==17))", 1, 2, 0);
	trans[0][618]	= settr(617,0,17,267,267,"fsm_state = 38", 1, 2, 0);
	trans[0][619]	= settr(618,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][620]	= settr(619,0,621,268,0,"((input==24))", 1, 2, 0);
	trans[0][621]	= settr(620,0,622,269,269,"fsm_state = 38", 1, 2, 0);
	trans[0][622]	= settr(621,0,3095,270,270,"output = 5", 1, 2, 0);
	trans[0][623]	= settr(622,0,624,271,0,"((input==22))", 1, 2, 0);
	trans[0][624]	= settr(623,0,17,272,272,"fsm_state = 38", 1, 2, 0);
	trans[0][625]	= settr(624,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][626]	= settr(625,0,627,273,0,"((input==18))", 1, 2, 0);
	trans[0][627]	= settr(626,0,17,274,274,"fsm_state = 36", 1, 2, 0);
	trans[0][628]	= settr(627,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][629]	= settr(628,0,17,2,0,"else", 0, 2, 0);
	trans[0][630]	= settr(629,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][633]	= settr(632,0,672,275,0,"((fsm_state==37))", 1, 2, 0);
	T = trans[0][672] = settr(671,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(671,0,634,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(671,0,637,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(671,0,640,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(671,0,643,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(671,0,646,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(671,0,649,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(671,0,652,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(671,0,655,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(671,0,658,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(671,0,661,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(671,0,664,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(671,0,667,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(671,0,670,0,0,"IF", 0, 2, 0);
	trans[0][634]	= settr(633,0,635,276,0,"((input==20))", 1, 2, 0);
	trans[0][635]	= settr(634,0,636,277,277,"fsm_state = 40", 1, 2, 0);
	trans[0][636]	= settr(635,0,3095,278,278,"output = 4", 1, 2, 0);
	trans[0][673]	= settr(672,0,3095,1,0,".(goto)", 0, 2, 0);
	trans[0][637]	= settr(636,0,638,279,0,"((input==23))", 1, 2, 0);
	trans[0][638]	= settr(637,0,639,280,280,"fsm_state = 40", 1, 2, 0);
	trans[0][639]	= settr(638,0,3095,281,281,"output = 4", 1, 2, 0);
	trans[0][640]	= settr(639,0,641,282,0,"((input==26))", 1, 2, 0);
	trans[0][641]	= settr(640,0,642,283,283,"fsm_state = 40", 1, 2, 0);
	trans[0][642]	= settr(641,0,3095,284,284,"output = 4", 1, 2, 0);
	trans[0][643]	= settr(642,0,644,285,0,"((input==27))", 1, 2, 0);
	trans[0][644]	= settr(643,0,17,286,286,"fsm_state = 37", 1, 2, 0);
	trans[0][645]	= settr(644,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][646]	= settr(645,0,647,287,0,"((input==19))", 1, 2, 0);
	trans[0][647]	= settr(646,0,648,288,288,"fsm_state = 37", 1, 2, 0);
	trans[0][648]	= settr(647,0,3095,289,289,"output = 5", 1, 2, 0);
	trans[0][649]	= settr(648,0,650,290,0,"((input==25))", 1, 2, 0);
	trans[0][650]	= settr(649,0,651,291,291,"fsm_state = 37", 1, 2, 0);
	trans[0][651]	= settr(650,0,3095,292,292,"output = 5", 1, 2, 0);
	trans[0][652]	= settr(651,0,653,293,0,"((input==21))", 1, 2, 0);
	trans[0][653]	= settr(652,0,17,294,294,"fsm_state = 37", 1, 2, 0);
	trans[0][654]	= settr(653,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][655]	= settr(654,0,656,295,0,"((input==16))", 1, 2, 0);
	trans[0][656]	= settr(655,0,657,296,296,"fsm_state = 37", 1, 2, 0);
	trans[0][657]	= settr(656,0,3095,297,297,"output = 5", 1, 2, 0);
	trans[0][658]	= settr(657,0,659,298,0,"((input==24))", 1, 2, 0);
	trans[0][659]	= settr(658,0,660,299,299,"fsm_state = 37", 1, 2, 0);
	trans[0][660]	= settr(659,0,3095,300,300,"output = 5", 1, 2, 0);
	trans[0][661]	= settr(660,0,662,301,0,"((input==18))", 1, 2, 0);
	trans[0][662]	= settr(661,0,17,302,302,"fsm_state = 35", 1, 2, 0);
	trans[0][663]	= settr(662,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][664]	= settr(663,0,665,303,0,"((input==22))", 1, 2, 0);
	trans[0][665]	= settr(664,0,666,304,304,"fsm_state = 34", 1, 2, 0);
	trans[0][666]	= settr(665,0,3095,305,305,"output = 14", 1, 2, 0);
	trans[0][667]	= settr(666,0,668,306,0,"((input==17))", 1, 2, 0);
	trans[0][668]	= settr(667,0,669,307,307,"fsm_state = 33", 1, 2, 0);
	trans[0][669]	= settr(668,0,3095,308,308,"output = 13", 1, 2, 0);
	trans[0][670]	= settr(669,0,17,2,0,"else", 0, 2, 0);
	trans[0][671]	= settr(670,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][674]	= settr(673,0,713,309,0,"((fsm_state==36))", 1, 2, 0);
	T = trans[0][713] = settr(712,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(712,0,675,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(712,0,678,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(712,0,681,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(712,0,684,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(712,0,687,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(712,0,690,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(712,0,693,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(712,0,696,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(712,0,699,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(712,0,702,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(712,0,705,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(712,0,708,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(712,0,711,0,0,"IF", 0, 2, 0);
	trans[0][675]	= settr(674,0,676,310,0,"((input==16))", 1, 2, 0);
	trans[0][676]	= settr(675,0,17,311,311,"fsm_state = 38", 1, 2, 0);
	trans[0][677]	= settr(676,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][714]	= settr(713,0,3095,1,0,".(goto)", 0, 2, 0);
	trans[0][678]	= settr(677,0,679,312,0,"((input==27))", 1, 2, 0);
	trans[0][679]	= settr(678,0,17,313,313,"fsm_state = 36", 1, 2, 0);
	trans[0][680]	= settr(679,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][681]	= settr(680,0,682,314,0,"((input==20))", 1, 2, 0);
	trans[0][682]	= settr(681,0,17,315,315,"fsm_state = 36", 1, 2, 0);
	trans[0][683]	= settr(682,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][684]	= settr(683,0,685,316,0,"((input==23))", 1, 2, 0);
	trans[0][685]	= settr(684,0,17,317,317,"fsm_state = 36", 1, 2, 0);
	trans[0][686]	= settr(685,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][687]	= settr(686,0,688,318,0,"((input==19))", 1, 2, 0);
	trans[0][688]	= settr(687,0,17,319,319,"fsm_state = 36", 1, 2, 0);
	trans[0][689]	= settr(688,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][690]	= settr(689,0,691,320,0,"((input==18))", 1, 2, 0);
	trans[0][691]	= settr(690,0,692,321,321,"fsm_state = 36", 1, 2, 0);
	trans[0][692]	= settr(691,0,3095,322,322,"output = 8", 1, 2, 0);
	trans[0][693]	= settr(692,0,694,323,0,"((input==25))", 1, 2, 0);
	trans[0][694]	= settr(693,0,17,324,324,"fsm_state = 36", 1, 2, 0);
	trans[0][695]	= settr(694,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][696]	= settr(695,0,697,325,0,"((input==21))", 1, 2, 0);
	trans[0][697]	= settr(696,0,17,326,326,"fsm_state = 36", 1, 2, 0);
	trans[0][698]	= settr(697,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][699]	= settr(698,0,700,327,0,"((input==26))", 1, 2, 0);
	trans[0][700]	= settr(699,0,17,328,328,"fsm_state = 36", 1, 2, 0);
	trans[0][701]	= settr(700,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][702]	= settr(701,0,703,329,0,"((input==17))", 1, 2, 0);
	trans[0][703]	= settr(702,0,17,330,330,"fsm_state = 36", 1, 2, 0);
	trans[0][704]	= settr(703,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][705]	= settr(704,0,706,331,0,"((input==24))", 1, 2, 0);
	trans[0][706]	= settr(705,0,17,332,332,"fsm_state = 36", 1, 2, 0);
	trans[0][707]	= settr(706,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][708]	= settr(707,0,709,333,0,"((input==22))", 1, 2, 0);
	trans[0][709]	= settr(708,0,17,334,334,"fsm_state = 36", 1, 2, 0);
	trans[0][710]	= settr(709,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][711]	= settr(710,0,17,2,0,"else", 0, 2, 0);
	trans[0][712]	= settr(711,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][715]	= settr(714,0,754,335,0,"((fsm_state==35))", 1, 2, 0);
	T = trans[0][754] = settr(753,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(753,0,716,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(753,0,719,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(753,0,722,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(753,0,725,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(753,0,728,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(753,0,731,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(753,0,734,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(753,0,737,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(753,0,740,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(753,0,743,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(753,0,746,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(753,0,749,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(753,0,752,0,0,"IF", 0, 2, 0);
	trans[0][716]	= settr(715,0,717,336,0,"((input==20))", 1, 2, 0);
	trans[0][717]	= settr(716,0,718,337,337,"fsm_state = 42", 1, 2, 0);
	trans[0][718]	= settr(717,0,3095,338,338,"output = 4", 1, 2, 0);
	trans[0][755]	= settr(754,0,3095,1,0,".(goto)", 0, 2, 0);
	trans[0][719]	= settr(718,0,720,339,0,"((input==23))", 1, 2, 0);
	trans[0][720]	= settr(719,0,721,340,340,"fsm_state = 42", 1, 2, 0);
	trans[0][721]	= settr(720,0,3095,341,341,"output = 4", 1, 2, 0);
	trans[0][722]	= settr(721,0,723,342,0,"((input==26))", 1, 2, 0);
	trans[0][723]	= settr(722,0,724,343,343,"fsm_state = 42", 1, 2, 0);
	trans[0][724]	= settr(723,0,3095,344,344,"output = 4", 1, 2, 0);
	trans[0][725]	= settr(724,0,726,345,0,"((input==16))", 1, 2, 0);
	trans[0][726]	= settr(725,0,17,346,346,"fsm_state = 37", 1, 2, 0);
	trans[0][727]	= settr(726,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][728]	= settr(727,0,729,347,0,"((input==27))", 1, 2, 0);
	trans[0][729]	= settr(728,0,17,348,348,"fsm_state = 35", 1, 2, 0);
	trans[0][730]	= settr(729,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][731]	= settr(730,0,732,349,0,"((input==19))", 1, 2, 0);
	trans[0][732]	= settr(731,0,17,350,350,"fsm_state = 35", 1, 2, 0);
	trans[0][733]	= settr(732,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][734]	= settr(733,0,735,351,0,"((input==18))", 1, 2, 0);
	trans[0][735]	= settr(734,0,736,352,352,"fsm_state = 35", 1, 2, 0);
	trans[0][736]	= settr(735,0,3095,353,353,"output = 8", 1, 2, 0);
	trans[0][737]	= settr(736,0,738,354,0,"((input==25))", 1, 2, 0);
	trans[0][738]	= settr(737,0,17,355,355,"fsm_state = 35", 1, 2, 0);
	trans[0][739]	= settr(738,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][740]	= settr(739,0,741,356,0,"((input==21))", 1, 2, 0);
	trans[0][741]	= settr(740,0,17,357,357,"fsm_state = 35", 1, 2, 0);
	trans[0][742]	= settr(741,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][743]	= settr(742,0,744,358,0,"((input==24))", 1, 2, 0);
	trans[0][744]	= settr(743,0,17,359,359,"fsm_state = 35", 1, 2, 0);
	trans[0][745]	= settr(744,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][746]	= settr(745,0,747,360,0,"((input==22))", 1, 2, 0);
	trans[0][747]	= settr(746,0,748,361,361,"fsm_state = 32", 1, 2, 0);
	trans[0][748]	= settr(747,0,3095,362,362,"output = 14", 1, 2, 0);
	trans[0][749]	= settr(748,0,750,363,0,"((input==17))", 1, 2, 0);
	trans[0][750]	= settr(749,0,751,364,364,"fsm_state = 31", 1, 2, 0);
	trans[0][751]	= settr(750,0,3095,365,365,"output = 13", 1, 2, 0);
	trans[0][752]	= settr(751,0,17,2,0,"else", 0, 2, 0);
	trans[0][753]	= settr(752,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][756]	= settr(755,0,795,366,0,"((fsm_state==34))", 1, 2, 0);
	T = trans[0][795] = settr(794,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(794,0,757,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(794,0,760,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(794,0,763,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(794,0,766,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(794,0,769,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(794,0,772,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(794,0,775,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(794,0,778,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(794,0,781,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(794,0,784,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(794,0,787,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(794,0,790,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(794,0,793,0,0,"IF", 0, 2, 0);
	trans[0][757]	= settr(756,0,758,367,0,"((input==20))", 1, 2, 0);
	trans[0][758]	= settr(757,0,759,368,368,"fsm_state = 40", 1, 2, 0);
	trans[0][759]	= settr(758,0,3095,369,369,"output = 4", 1, 2, 0);
	trans[0][796]	= settr(795,0,3095,1,0,".(goto)", 0, 2, 0);
	trans[0][760]	= settr(759,0,761,370,0,"((input==23))", 1, 2, 0);
	trans[0][761]	= settr(760,0,762,371,371,"fsm_state = 40", 1, 2, 0);
	trans[0][762]	= settr(761,0,3095,372,372,"output = 4", 1, 2, 0);
	trans[0][763]	= settr(762,0,764,373,0,"((input==26))", 1, 2, 0);
	trans[0][764]	= settr(763,0,765,374,374,"fsm_state = 40", 1, 2, 0);
	trans[0][765]	= settr(764,0,3095,375,375,"output = 4", 1, 2, 0);
	trans[0][766]	= settr(765,0,767,376,0,"((input==27))", 1, 2, 0);
	trans[0][767]	= settr(766,0,768,377,377,"fsm_state = 34", 1, 2, 0);
	trans[0][768]	= settr(767,0,3095,378,378,"output = 1", 1, 2, 0);
	trans[0][769]	= settr(768,0,770,379,0,"((input==19))", 1, 2, 0);
	trans[0][770]	= settr(769,0,771,380,380,"fsm_state = 34", 1, 2, 0);
	trans[0][771]	= settr(770,0,3095,381,381,"output = 5", 1, 2, 0);
	trans[0][772]	= settr(771,0,773,382,0,"((input==25))", 1, 2, 0);
	trans[0][773]	= settr(772,0,774,383,383,"fsm_state = 34", 1, 2, 0);
	trans[0][774]	= settr(773,0,3095,384,384,"output = 5", 1, 2, 0);
	trans[0][775]	= settr(774,0,776,385,0,"((input==16))", 1, 2, 0);
	trans[0][776]	= settr(775,0,777,386,386,"fsm_state = 34", 1, 2, 0);
	trans[0][777]	= settr(776,0,3095,387,387,"output = 5", 1, 2, 0);
	trans[0][778]	= settr(777,0,779,388,0,"((input==24))", 1, 2, 0);
	trans[0][779]	= settr(778,0,780,389,389,"fsm_state = 34", 1, 2, 0);
	trans[0][780]	= settr(779,0,3095,390,390,"output = 5", 1, 2, 0);
	trans[0][781]	= settr(780,0,782,391,0,"((input==22))", 1, 2, 0);
	trans[0][782]	= settr(781,0,783,392,392,"fsm_state = 34", 1, 2, 0);
	trans[0][783]	= settr(782,0,3095,393,393,"output = 14", 1, 2, 0);
	trans[0][784]	= settr(783,0,785,394,0,"((input==18))", 1, 2, 0);
	trans[0][785]	= settr(784,0,786,395,395,"fsm_state = 32", 1, 2, 0);
	trans[0][786]	= settr(785,0,3095,396,396,"output = 11", 1, 2, 0);
	trans[0][787]	= settr(786,0,788,397,0,"((input==21))", 1, 2, 0);
	trans[0][788]	= settr(787,0,789,398,398,"fsm_state = 30", 1, 2, 0);
	trans[0][789]	= settr(788,0,3095,399,399,"output = 3", 1, 2, 0);
	trans[0][790]	= settr(789,0,791,400,0,"((input==17))", 1, 2, 0);
	trans[0][791]	= settr(790,0,792,401,401,"fsm_state = 29", 1, 2, 0);
	trans[0][792]	= settr(791,0,3095,402,402,"output = 13", 1, 2, 0);
	trans[0][793]	= settr(792,0,17,2,0,"else", 0, 2, 0);
	trans[0][794]	= settr(793,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][797]	= settr(796,0,877,403,0,"((fsm_state==33))", 1, 2, 0);
	T = trans[0][877] = settr(876,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(876,0,798,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(876,0,801,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(876,0,804,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(876,0,807,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(876,0,810,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(876,0,813,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(876,0,816,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(876,0,819,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(876,0,822,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(876,0,825,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(876,0,828,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(876,0,831,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(876,0,875,0,0,"IF", 0, 2, 0);
	trans[0][798]	= settr(797,0,799,404,0,"((input==26))", 1, 2, 0);
	trans[0][799]	= settr(798,0,800,405,405,"fsm_state = 40", 1, 2, 0);
	trans[0][800]	= settr(799,0,3095,406,406,"output = 4", 1, 2, 0);
	trans[0][878]	= settr(877,0,3095,1,0,".(goto)", 0, 2, 0);
	trans[0][801]	= settr(800,0,802,407,0,"((input==17))", 1, 2, 0);
	trans[0][802]	= settr(801,0,803,408,408,"fsm_state = 40", 1, 2, 0);
	trans[0][803]	= settr(802,0,3095,409,409,"output = 4", 1, 2, 0);
	trans[0][804]	= settr(803,0,805,410,0,"((input==22))", 1, 2, 0);
	trans[0][805]	= settr(804,0,806,411,411,"fsm_state = 40", 1, 2, 0);
	trans[0][806]	= settr(805,0,3095,412,412,"output = 4", 1, 2, 0);
	trans[0][807]	= settr(806,0,808,413,0,"((input==23))", 1, 2, 0);
	trans[0][808]	= settr(807,0,17,414,414,"fsm_state = 38", 1, 2, 0);
	trans[0][809]	= settr(808,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][810]	= settr(809,0,811,415,0,"((input==27))", 1, 2, 0);
	trans[0][811]	= settr(810,0,17,416,416,"fsm_state = 33", 1, 2, 0);
	trans[0][812]	= settr(811,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][813]	= settr(812,0,814,417,0,"((input==19))", 1, 2, 0);
	trans[0][814]	= settr(813,0,815,418,418,"fsm_state = 33", 1, 2, 0);
	trans[0][815]	= settr(814,0,3095,419,419,"output = 5", 1, 2, 0);
	trans[0][816]	= settr(815,0,817,420,0,"((input==25))", 1, 2, 0);
	trans[0][817]	= settr(816,0,818,421,421,"fsm_state = 33", 1, 2, 0);
	trans[0][818]	= settr(817,0,3095,422,422,"output = 5", 1, 2, 0);
	trans[0][819]	= settr(818,0,820,423,0,"((input==21))", 1, 2, 0);
	trans[0][820]	= settr(819,0,17,424,424,"fsm_state = 33", 1, 2, 0);
	trans[0][821]	= settr(820,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][822]	= settr(821,0,823,425,0,"((input==16))", 1, 2, 0);
	trans[0][823]	= settr(822,0,824,426,426,"fsm_state = 33", 1, 2, 0);
	trans[0][824]	= settr(823,0,3095,427,427,"output = 5", 1, 2, 0);
	trans[0][825]	= settr(824,0,826,428,0,"((input==24))", 1, 2, 0);
	trans[0][826]	= settr(825,0,827,429,429,"fsm_state = 33", 1, 2, 0);
	trans[0][827]	= settr(826,0,3095,430,430,"output = 5", 1, 2, 0);
	trans[0][828]	= settr(827,0,829,431,0,"((input==18))", 1, 2, 0);
	trans[0][829]	= settr(828,0,17,432,432,"fsm_state = 31", 1, 2, 0);
	trans[0][830]	= settr(829,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][831]	= settr(830,0,832,433,0,"((input==20))", 1, 2, 0);
	trans[0][832]	= settr(831,0,833,434,434,"fsm_state = 28", 1, 2, 0);
	trans[0][833]	= settr(832,0,834,435,435,"output = 12", 1, 2, 0);
	trans[0][834]	= settr(833,0,872,436,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][872] = settr(871,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(871,0,865,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][865]	= settr(864,32,870,437,437,"D_STEP13", 1, 2, 0);
	T = trans[0][870] = settr(869,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(869,0,866,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(869,0,868,0,0,"IF", 0, 2, 0);
	trans[0][866]	= settr(865,0,1,438,0,"((dealt==0))", 1, 2, 0);
	trans[0][867]	= settr(866,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][871]	= settr(870,0,873,1,0,".(goto)", 0, 2, 0);
	trans[0][868]	= settr(867,0,869,2,0,"else", 0, 2, 0);
	trans[0][869]	= settr(868,0,873,1,0,"(1)", 0, 2, 0);
	trans[0][873]	= settr(872,0,874,439,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][874]	= settr(873,0,3095,440,440,"output = 2", 1, 2, 0);
	trans[0][875]	= settr(874,0,17,2,0,"else", 0, 2, 0);
	trans[0][876]	= settr(875,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][879]	= settr(878,0,918,441,0,"((fsm_state==32))", 1, 2, 0);
	T = trans[0][918] = settr(917,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(917,0,880,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(917,0,883,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(917,0,886,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(917,0,889,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(917,0,892,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(917,0,895,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(917,0,898,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(917,0,901,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(917,0,904,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(917,0,907,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(917,0,910,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(917,0,913,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(917,0,916,0,0,"IF", 0, 2, 0);
	trans[0][880]	= settr(879,0,881,442,0,"((input==20))", 1, 2, 0);
	trans[0][881]	= settr(880,0,882,443,443,"fsm_state = 42", 1, 2, 0);
	trans[0][882]	= settr(881,0,3095,444,444,"output = 4", 1, 2, 0);
	trans[0][919]	= settr(918,0,3095,1,0,".(goto)", 0, 2, 0);
	trans[0][883]	= settr(882,0,884,445,0,"((input==23))", 1, 2, 0);
	trans[0][884]	= settr(883,0,885,446,446,"fsm_state = 42", 1, 2, 0);
	trans[0][885]	= settr(884,0,3095,447,447,"output = 4", 1, 2, 0);
	trans[0][886]	= settr(885,0,887,448,0,"((input==26))", 1, 2, 0);
	trans[0][887]	= settr(886,0,888,449,449,"fsm_state = 42", 1, 2, 0);
	trans[0][888]	= settr(887,0,3095,450,450,"output = 4", 1, 2, 0);
	trans[0][889]	= settr(888,0,890,451,0,"((input==16))", 1, 2, 0);
	trans[0][890]	= settr(889,0,891,452,452,"fsm_state = 34", 1, 2, 0);
	trans[0][891]	= settr(890,0,3095,453,453,"output = 11", 1, 2, 0);
	trans[0][892]	= settr(891,0,893,454,0,"((input==27))", 1, 2, 0);
	trans[0][893]	= settr(892,0,894,455,455,"fsm_state = 32", 1, 2, 0);
	trans[0][894]	= settr(893,0,3095,456,456,"output = 1", 1, 2, 0);
	trans[0][895]	= settr(894,0,896,457,0,"((input==19))", 1, 2, 0);
	trans[0][896]	= settr(895,0,897,458,458,"fsm_state = 32", 1, 2, 0);
	trans[0][897]	= settr(896,0,3095,459,459,"output = 11", 1, 2, 0);
	trans[0][898]	= settr(897,0,899,460,0,"((input==18))", 1, 2, 0);
	trans[0][899]	= settr(898,0,900,461,461,"fsm_state = 32", 1, 2, 0);
	trans[0][900]	= settr(899,0,3095,462,462,"output = 8", 1, 2, 0);
	trans[0][901]	= settr(900,0,902,463,0,"((input==25))", 1, 2, 0);
	trans[0][902]	= settr(901,0,903,464,464,"fsm_state = 32", 1, 2, 0);
	trans[0][903]	= settr(902,0,3095,465,465,"output = 11", 1, 2, 0);
	trans[0][904]	= settr(903,0,905,466,0,"((input==24))", 1, 2, 0);
	trans[0][905]	= settr(904,0,906,467,467,"fsm_state = 32", 1, 2, 0);
	trans[0][906]	= settr(905,0,3095,468,468,"output = 11", 1, 2, 0);
	trans[0][907]	= settr(906,0,908,469,0,"((input==22))", 1, 2, 0);
	trans[0][908]	= settr(907,0,909,470,470,"fsm_state = 32", 1, 2, 0);
	trans[0][909]	= settr(908,0,3095,471,471,"output = 14", 1, 2, 0);
	trans[0][910]	= settr(909,0,911,472,0,"((input==17))", 1, 2, 0);
	trans[0][911]	= settr(910,0,912,473,473,"fsm_state = 27", 1, 2, 0);
	trans[0][912]	= settr(911,0,3095,474,474,"output = 13", 1, 2, 0);
	trans[0][913]	= settr(912,0,914,475,0,"((input==21))", 1, 2, 0);
	trans[0][914]	= settr(913,0,915,476,476,"fsm_state = 26", 1, 2, 0);
	trans[0][915]	= settr(914,0,3095,477,477,"output = 3", 1, 2, 0);
	trans[0][916]	= settr(915,0,17,2,0,"else", 0, 2, 0);
	trans[0][917]	= settr(916,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][920]	= settr(919,0,1000,478,0,"((fsm_state==31))", 1, 2, 0);
	T = trans[0][1000] = settr(999,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(999,0,921,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(999,0,924,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(999,0,927,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(999,0,930,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(999,0,933,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(999,0,936,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(999,0,939,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(999,0,942,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(999,0,945,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(999,0,948,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(999,0,951,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(999,0,954,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(999,0,998,0,0,"IF", 0, 2, 0);
	trans[0][921]	= settr(920,0,922,479,0,"((input==26))", 1, 2, 0);
	trans[0][922]	= settr(921,0,923,480,480,"fsm_state = 42", 1, 2, 0);
	trans[0][923]	= settr(922,0,3095,481,481,"output = 4", 1, 2, 0);
	trans[0][1001]	= settr(1000,0,3095,1,0,".(goto)", 0, 2, 0);
	trans[0][924]	= settr(923,0,925,482,0,"((input==17))", 1, 2, 0);
	trans[0][925]	= settr(924,0,926,483,483,"fsm_state = 42", 1, 2, 0);
	trans[0][926]	= settr(925,0,3095,484,484,"output = 4", 1, 2, 0);
	trans[0][927]	= settr(926,0,928,485,0,"((input==22))", 1, 2, 0);
	trans[0][928]	= settr(927,0,929,486,486,"fsm_state = 42", 1, 2, 0);
	trans[0][929]	= settr(928,0,3095,487,487,"output = 4", 1, 2, 0);
	trans[0][930]	= settr(929,0,931,488,0,"((input==23))", 1, 2, 0);
	trans[0][931]	= settr(930,0,17,489,489,"fsm_state = 36", 1, 2, 0);
	trans[0][932]	= settr(931,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][933]	= settr(932,0,934,490,0,"((input==16))", 1, 2, 0);
	trans[0][934]	= settr(933,0,17,491,491,"fsm_state = 33", 1, 2, 0);
	trans[0][935]	= settr(934,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][936]	= settr(935,0,937,492,0,"((input==27))", 1, 2, 0);
	trans[0][937]	= settr(936,0,17,493,493,"fsm_state = 31", 1, 2, 0);
	trans[0][938]	= settr(937,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][939]	= settr(938,0,940,494,0,"((input==19))", 1, 2, 0);
	trans[0][940]	= settr(939,0,17,495,495,"fsm_state = 31", 1, 2, 0);
	trans[0][941]	= settr(940,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][942]	= settr(941,0,943,496,0,"((input==18))", 1, 2, 0);
	trans[0][943]	= settr(942,0,944,497,497,"fsm_state = 31", 1, 2, 0);
	trans[0][944]	= settr(943,0,3095,498,498,"output = 8", 1, 2, 0);
	trans[0][945]	= settr(944,0,946,499,0,"((input==25))", 1, 2, 0);
	trans[0][946]	= settr(945,0,17,500,500,"fsm_state = 31", 1, 2, 0);
	trans[0][947]	= settr(946,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][948]	= settr(947,0,949,501,0,"((input==21))", 1, 2, 0);
	trans[0][949]	= settr(948,0,17,502,502,"fsm_state = 31", 1, 2, 0);
	trans[0][950]	= settr(949,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][951]	= settr(950,0,952,503,0,"((input==24))", 1, 2, 0);
	trans[0][952]	= settr(951,0,17,504,504,"fsm_state = 31", 1, 2, 0);
	trans[0][953]	= settr(952,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][954]	= settr(953,0,955,505,0,"((input==20))", 1, 2, 0);
	trans[0][955]	= settr(954,0,956,506,506,"fsm_state = 25", 1, 2, 0);
	trans[0][956]	= settr(955,0,957,507,507,"output = 12", 1, 2, 0);
	trans[0][957]	= settr(956,0,995,508,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][995] = settr(994,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(994,0,988,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][988]	= settr(987,32,993,509,509,"D_STEP13", 1, 2, 0);
	T = trans[0][993] = settr(992,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(992,0,989,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(992,0,991,0,0,"IF", 0, 2, 0);
	trans[0][989]	= settr(988,0,1,510,0,"((dealt==0))", 1, 2, 0);
	trans[0][990]	= settr(989,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][994]	= settr(993,0,996,1,0,".(goto)", 0, 2, 0);
	trans[0][991]	= settr(990,0,992,2,0,"else", 0, 2, 0);
	trans[0][992]	= settr(991,0,996,1,0,"(1)", 0, 2, 0);
	trans[0][996]	= settr(995,0,997,511,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][997]	= settr(996,0,3095,512,512,"output = 2", 1, 2, 0);
	trans[0][998]	= settr(997,0,17,2,0,"else", 0, 2, 0);
	trans[0][999]	= settr(998,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1002]	= settr(1001,0,1041,513,0,"((fsm_state==30))", 1, 2, 0);
	T = trans[0][1041] = settr(1040,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1040,0,1003,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1040,0,1006,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1040,0,1009,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1040,0,1012,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1040,0,1015,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1040,0,1018,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1040,0,1021,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1040,0,1024,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1040,0,1027,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1040,0,1030,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1040,0,1033,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1040,0,1036,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1040,0,1039,0,0,"IF", 0, 2, 0);
	trans[0][1003]	= settr(1002,0,1004,514,0,"((input==20))", 1, 2, 0);
	trans[0][1004]	= settr(1003,0,1005,515,515,"fsm_state = 40", 1, 2, 0);
	trans[0][1005]	= settr(1004,0,3095,516,516,"output = 4", 1, 2, 0);
	trans[0][1042]	= settr(1041,0,3095,1,0,".(goto)", 0, 2, 0);
	trans[0][1006]	= settr(1005,0,1007,517,0,"((input==23))", 1, 2, 0);
	trans[0][1007]	= settr(1006,0,1008,518,518,"fsm_state = 40", 1, 2, 0);
	trans[0][1008]	= settr(1007,0,3095,519,519,"output = 4", 1, 2, 0);
	trans[0][1009]	= settr(1008,0,1010,520,0,"((input==26))", 1, 2, 0);
	trans[0][1010]	= settr(1009,0,1011,521,521,"fsm_state = 40", 1, 2, 0);
	trans[0][1011]	= settr(1010,0,3095,522,522,"output = 4", 1, 2, 0);
	trans[0][1012]	= settr(1011,0,1013,523,0,"((input==27))", 1, 2, 0);
	trans[0][1013]	= settr(1012,0,1014,524,524,"fsm_state = 30", 1, 2, 0);
	trans[0][1014]	= settr(1013,0,3095,525,525,"output = 11", 1, 2, 0);
	trans[0][1015]	= settr(1014,0,1016,526,0,"((input==19))", 1, 2, 0);
	trans[0][1016]	= settr(1015,0,1017,527,527,"fsm_state = 30", 1, 2, 0);
	trans[0][1017]	= settr(1016,0,3095,528,528,"output = 5", 1, 2, 0);
	trans[0][1018]	= settr(1017,0,1019,529,0,"((input==25))", 1, 2, 0);
	trans[0][1019]	= settr(1018,0,1020,530,530,"fsm_state = 30", 1, 2, 0);
	trans[0][1020]	= settr(1019,0,3095,531,531,"output = 5", 1, 2, 0);
	trans[0][1021]	= settr(1020,0,1022,532,0,"((input==21))", 1, 2, 0);
	trans[0][1022]	= settr(1021,0,1023,533,533,"fsm_state = 30", 1, 2, 0);
	trans[0][1023]	= settr(1022,0,3095,534,534,"output = 11", 1, 2, 0);
	trans[0][1024]	= settr(1023,0,1025,535,0,"((input==16))", 1, 2, 0);
	trans[0][1025]	= settr(1024,0,1026,536,536,"fsm_state = 30", 1, 2, 0);
	trans[0][1026]	= settr(1025,0,3095,537,537,"output = 5", 1, 2, 0);
	trans[0][1027]	= settr(1026,0,1028,538,0,"((input==24))", 1, 2, 0);
	trans[0][1028]	= settr(1027,0,1029,539,539,"fsm_state = 30", 1, 2, 0);
	trans[0][1029]	= settr(1028,0,3095,540,540,"output = 5", 1, 2, 0);
	trans[0][1030]	= settr(1029,0,1031,541,0,"((input==22))", 1, 2, 0);
	trans[0][1031]	= settr(1030,0,1032,542,542,"fsm_state = 30", 1, 2, 0);
	trans[0][1032]	= settr(1031,0,3095,543,543,"output = 14", 1, 2, 0);
	trans[0][1033]	= settr(1032,0,1034,544,0,"((input==18))", 1, 2, 0);
	trans[0][1034]	= settr(1033,0,1035,545,545,"fsm_state = 24", 1, 2, 0);
	trans[0][1035]	= settr(1034,0,3095,546,546,"output = 15", 1, 2, 0);
	trans[0][1036]	= settr(1035,0,1037,547,0,"((input==17))", 1, 2, 0);
	trans[0][1037]	= settr(1036,0,1038,548,548,"fsm_state = 23", 1, 2, 0);
	trans[0][1038]	= settr(1037,0,3095,549,549,"output = 13", 1, 2, 0);
	trans[0][1039]	= settr(1038,0,17,2,0,"else", 0, 2, 0);
	trans[0][1040]	= settr(1039,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1043]	= settr(1042,0,1123,550,0,"((fsm_state==29))", 1, 2, 0);
	T = trans[0][1123] = settr(1122,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1122,0,1044,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1122,0,1047,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1122,0,1050,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1122,0,1053,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1122,0,1056,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1122,0,1059,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1122,0,1062,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1122,0,1065,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1122,0,1068,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1122,0,1071,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1122,0,1115,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1122,0,1118,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1122,0,1121,0,0,"IF", 0, 2, 0);
	trans[0][1044]	= settr(1043,0,1045,551,0,"((input==26))", 1, 2, 0);
	trans[0][1045]	= settr(1044,0,1046,552,552,"fsm_state = 40", 1, 2, 0);
	trans[0][1046]	= settr(1045,0,3095,553,553,"output = 4", 1, 2, 0);
	trans[0][1124]	= settr(1123,0,3095,1,0,".(goto)", 0, 2, 0);
	trans[0][1047]	= settr(1046,0,1048,554,0,"((input==17))", 1, 2, 0);
	trans[0][1048]	= settr(1047,0,1049,555,555,"fsm_state = 40", 1, 2, 0);
	trans[0][1049]	= settr(1048,0,3095,556,556,"output = 4", 1, 2, 0);
	trans[0][1050]	= settr(1049,0,1051,557,0,"((input==22))", 1, 2, 0);
	trans[0][1051]	= settr(1050,0,1052,558,558,"fsm_state = 40", 1, 2, 0);
	trans[0][1052]	= settr(1051,0,3095,559,559,"output = 4", 1, 2, 0);
	trans[0][1053]	= settr(1052,0,1054,560,0,"((input==23))", 1, 2, 0);
	trans[0][1054]	= settr(1053,0,17,561,561,"fsm_state = 38", 1, 2, 0);
	trans[0][1055]	= settr(1054,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1056]	= settr(1055,0,1057,562,0,"((input==19))", 1, 2, 0);
	trans[0][1057]	= settr(1056,0,1058,563,563,"fsm_state = 29", 1, 2, 0);
	trans[0][1058]	= settr(1057,0,3095,564,564,"output = 5", 1, 2, 0);
	trans[0][1059]	= settr(1058,0,1060,565,0,"((input==25))", 1, 2, 0);
	trans[0][1060]	= settr(1059,0,1061,566,566,"fsm_state = 29", 1, 2, 0);
	trans[0][1061]	= settr(1060,0,3095,567,567,"output = 5", 1, 2, 0);
	trans[0][1062]	= settr(1061,0,1063,568,0,"((input==16))", 1, 2, 0);
	trans[0][1063]	= settr(1062,0,1064,569,569,"fsm_state = 29", 1, 2, 0);
	trans[0][1064]	= settr(1063,0,3095,570,570,"output = 5", 1, 2, 0);
	trans[0][1065]	= settr(1064,0,1066,571,0,"((input==24))", 1, 2, 0);
	trans[0][1066]	= settr(1065,0,1067,572,572,"fsm_state = 29", 1, 2, 0);
	trans[0][1067]	= settr(1066,0,3095,573,573,"output = 5", 1, 2, 0);
	trans[0][1068]	= settr(1067,0,1069,574,0,"((input==18))", 1, 2, 0);
	trans[0][1069]	= settr(1068,0,1070,575,575,"fsm_state = 27", 1, 2, 0);
	trans[0][1070]	= settr(1069,0,3095,576,576,"output = 11", 1, 2, 0);
	trans[0][1071]	= settr(1070,0,1072,577,0,"((input==20))", 1, 2, 0);
	trans[0][1072]	= settr(1071,0,1073,578,578,"fsm_state = 22", 1, 2, 0);
	trans[0][1073]	= settr(1072,0,1074,579,579,"output = 12", 1, 2, 0);
	trans[0][1074]	= settr(1073,0,1112,580,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][1112] = settr(1111,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1111,0,1105,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][1105]	= settr(1104,32,1110,581,581,"D_STEP13", 1, 2, 0);
	T = trans[0][1110] = settr(1109,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1109,0,1106,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1109,0,1108,0,0,"IF", 0, 2, 0);
	trans[0][1106]	= settr(1105,0,1,582,0,"((dealt==0))", 1, 2, 0);
	trans[0][1107]	= settr(1106,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][1111]	= settr(1110,0,1113,1,0,".(goto)", 0, 2, 0);
	trans[0][1108]	= settr(1107,0,1109,2,0,"else", 0, 2, 0);
	trans[0][1109]	= settr(1108,0,1113,1,0,"(1)", 0, 2, 0);
	trans[0][1113]	= settr(1112,0,1114,583,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][1114]	= settr(1113,0,3095,584,584,"output = 2", 1, 2, 0);
	trans[0][1115]	= settr(1114,0,1116,585,0,"((input==27))", 1, 2, 0);
	trans[0][1116]	= settr(1115,0,17,586,586,"fsm_state = 21", 1, 2, 0);
	trans[0][1117]	= settr(1116,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1118]	= settr(1117,0,1119,587,0,"((input==21))", 1, 2, 0);
	trans[0][1119]	= settr(1118,0,17,588,588,"fsm_state = 20", 1, 2, 0);
	trans[0][1120]	= settr(1119,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1121]	= settr(1120,0,17,2,0,"else", 0, 2, 0);
	trans[0][1122]	= settr(1121,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1125]	= settr(1124,0,1164,589,0,"((fsm_state==28))", 1, 2, 0);
	T = trans[0][1164] = settr(1163,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1163,0,1126,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1163,0,1129,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1163,0,1132,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1163,0,1135,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1163,0,1138,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1163,0,1141,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1163,0,1144,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1163,0,1147,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1163,0,1150,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1163,0,1153,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1163,0,1156,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1163,0,1159,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1163,0,1162,0,0,"IF", 0, 2, 0);
	trans[0][1126]	= settr(1125,0,1127,590,0,"((input==26))", 1, 2, 0);
	trans[0][1127]	= settr(1126,0,1128,591,591,"fsm_state = 40", 1, 2, 0);
	trans[0][1128]	= settr(1127,0,3095,592,592,"output = 4", 1, 2, 0);
	trans[0][1165]	= settr(1164,0,3095,1,0,".(goto)", 0, 2, 0);
	trans[0][1129]	= settr(1128,0,1130,593,0,"((input==17))", 1, 2, 0);
	trans[0][1130]	= settr(1129,0,1131,594,594,"fsm_state = 40", 1, 2, 0);
	trans[0][1131]	= settr(1130,0,3095,595,595,"output = 4", 1, 2, 0);
	trans[0][1132]	= settr(1131,0,1133,596,0,"((input==22))", 1, 2, 0);
	trans[0][1133]	= settr(1132,0,1134,597,597,"fsm_state = 40", 1, 2, 0);
	trans[0][1134]	= settr(1133,0,3095,598,598,"output = 4", 1, 2, 0);
	trans[0][1135]	= settr(1134,0,1136,599,0,"((input==23))", 1, 2, 0);
	trans[0][1136]	= settr(1135,0,17,600,600,"fsm_state = 37", 1, 2, 0);
	trans[0][1137]	= settr(1136,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1138]	= settr(1137,0,1139,601,0,"((input==27))", 1, 2, 0);
	trans[0][1139]	= settr(1138,0,17,602,602,"fsm_state = 28", 1, 2, 0);
	trans[0][1140]	= settr(1139,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1141]	= settr(1140,0,1142,603,0,"((input==20))", 1, 2, 0);
	trans[0][1142]	= settr(1141,0,17,604,604,"fsm_state = 28", 1, 2, 0);
	trans[0][1143]	= settr(1142,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1144]	= settr(1143,0,1145,605,0,"((input==19))", 1, 2, 0);
	trans[0][1145]	= settr(1144,0,1146,606,606,"fsm_state = 28", 1, 2, 0);
	trans[0][1146]	= settr(1145,0,3095,607,607,"output = 5", 1, 2, 0);
	trans[0][1147]	= settr(1146,0,1148,608,0,"((input==25))", 1, 2, 0);
	trans[0][1148]	= settr(1147,0,1149,609,609,"fsm_state = 28", 1, 2, 0);
	trans[0][1149]	= settr(1148,0,3095,610,610,"output = 5", 1, 2, 0);
	trans[0][1150]	= settr(1149,0,1151,611,0,"((input==21))", 1, 2, 0);
	trans[0][1151]	= settr(1150,0,17,612,612,"fsm_state = 28", 1, 2, 0);
	trans[0][1152]	= settr(1151,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1153]	= settr(1152,0,1154,613,0,"((input==16))", 1, 2, 0);
	trans[0][1154]	= settr(1153,0,1155,614,614,"fsm_state = 28", 1, 2, 0);
	trans[0][1155]	= settr(1154,0,3095,615,615,"output = 5", 1, 2, 0);
	trans[0][1156]	= settr(1155,0,1157,616,0,"((input==24))", 1, 2, 0);
	trans[0][1157]	= settr(1156,0,1158,617,617,"fsm_state = 28", 1, 2, 0);
	trans[0][1158]	= settr(1157,0,3095,618,618,"output = 5", 1, 2, 0);
	trans[0][1159]	= settr(1158,0,1160,619,0,"((input==18))", 1, 2, 0);
	trans[0][1160]	= settr(1159,0,17,620,620,"fsm_state = 25", 1, 2, 0);
	trans[0][1161]	= settr(1160,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1162]	= settr(1161,0,17,2,0,"else", 0, 2, 0);
	trans[0][1163]	= settr(1162,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1166]	= settr(1165,0,1246,621,0,"((fsm_state==27))", 1, 2, 0);
	T = trans[0][1246] = settr(1245,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1245,0,1167,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1245,0,1170,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1245,0,1173,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1245,0,1176,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1245,0,1179,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1245,0,1182,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1245,0,1185,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1245,0,1188,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1245,0,1191,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1245,0,1194,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1245,0,1197,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1245,0,1241,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1245,0,1244,0,0,"IF", 0, 2, 0);
	trans[0][1167]	= settr(1166,0,1168,622,0,"((input==26))", 1, 2, 0);
	trans[0][1168]	= settr(1167,0,1169,623,623,"fsm_state = 42", 1, 2, 0);
	trans[0][1169]	= settr(1168,0,3095,624,624,"output = 4", 1, 2, 0);
	trans[0][1247]	= settr(1246,0,3095,1,0,".(goto)", 0, 2, 0);
	trans[0][1170]	= settr(1169,0,1171,625,0,"((input==17))", 1, 2, 0);
	trans[0][1171]	= settr(1170,0,1172,626,626,"fsm_state = 42", 1, 2, 0);
	trans[0][1172]	= settr(1171,0,3095,627,627,"output = 4", 1, 2, 0);
	trans[0][1173]	= settr(1172,0,1174,628,0,"((input==22))", 1, 2, 0);
	trans[0][1174]	= settr(1173,0,1175,629,629,"fsm_state = 42", 1, 2, 0);
	trans[0][1175]	= settr(1174,0,3095,630,630,"output = 4", 1, 2, 0);
	trans[0][1176]	= settr(1175,0,1177,631,0,"((input==23))", 1, 2, 0);
	trans[0][1177]	= settr(1176,0,17,632,632,"fsm_state = 36", 1, 2, 0);
	trans[0][1178]	= settr(1177,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1179]	= settr(1178,0,1180,633,0,"((input==16))", 1, 2, 0);
	trans[0][1180]	= settr(1179,0,1181,634,634,"fsm_state = 29", 1, 2, 0);
	trans[0][1181]	= settr(1180,0,3095,635,635,"output = 11", 1, 2, 0);
	trans[0][1182]	= settr(1181,0,1183,636,0,"((input==19))", 1, 2, 0);
	trans[0][1183]	= settr(1182,0,1184,637,637,"fsm_state = 27", 1, 2, 0);
	trans[0][1184]	= settr(1183,0,3095,638,638,"output = 11", 1, 2, 0);
	trans[0][1185]	= settr(1184,0,1186,639,0,"((input==18))", 1, 2, 0);
	trans[0][1186]	= settr(1185,0,1187,640,640,"fsm_state = 27", 1, 2, 0);
	trans[0][1187]	= settr(1186,0,3095,641,641,"output = 8", 1, 2, 0);
	trans[0][1188]	= settr(1187,0,1189,642,0,"((input==25))", 1, 2, 0);
	trans[0][1189]	= settr(1188,0,1190,643,643,"fsm_state = 27", 1, 2, 0);
	trans[0][1190]	= settr(1189,0,3095,644,644,"output = 11", 1, 2, 0);
	trans[0][1191]	= settr(1190,0,1192,645,0,"((input==24))", 1, 2, 0);
	trans[0][1192]	= settr(1191,0,1193,646,646,"fsm_state = 27", 1, 2, 0);
	trans[0][1193]	= settr(1192,0,3095,647,647,"output = 11", 1, 2, 0);
	trans[0][1194]	= settr(1193,0,1195,648,0,"((input==27))", 1, 2, 0);
	trans[0][1195]	= settr(1194,0,17,649,649,"fsm_state = 19", 1, 2, 0);
	trans[0][1196]	= settr(1195,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1197]	= settr(1196,0,1198,650,0,"((input==20))", 1, 2, 0);
	trans[0][1198]	= settr(1197,0,1199,651,651,"fsm_state = 18", 1, 2, 0);
	trans[0][1199]	= settr(1198,0,1200,652,652,"output = 12", 1, 2, 0);
	trans[0][1200]	= settr(1199,0,1238,653,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][1238] = settr(1237,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1237,0,1231,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][1231]	= settr(1230,32,1236,654,654,"D_STEP13", 1, 2, 0);
	T = trans[0][1236] = settr(1235,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1235,0,1232,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1235,0,1234,0,0,"IF", 0, 2, 0);
	trans[0][1232]	= settr(1231,0,1,655,0,"((dealt==0))", 1, 2, 0);
	trans[0][1233]	= settr(1232,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][1237]	= settr(1236,0,1239,1,0,".(goto)", 0, 2, 0);
	trans[0][1234]	= settr(1233,0,1235,2,0,"else", 0, 2, 0);
	trans[0][1235]	= settr(1234,0,1239,1,0,"(1)", 0, 2, 0);
	trans[0][1239]	= settr(1238,0,1240,656,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][1240]	= settr(1239,0,3095,657,657,"output = 2", 1, 2, 0);
	trans[0][1241]	= settr(1240,0,1242,658,0,"((input==21))", 1, 2, 0);
	trans[0][1242]	= settr(1241,0,17,659,659,"fsm_state = 17", 1, 2, 0);
	trans[0][1243]	= settr(1242,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1244]	= settr(1243,0,17,2,0,"else", 0, 2, 0);
	trans[0][1245]	= settr(1244,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1248]	= settr(1247,0,1287,660,0,"((fsm_state==26))", 1, 2, 0);
	T = trans[0][1287] = settr(1286,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1286,0,1249,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1286,0,1252,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1286,0,1255,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1286,0,1258,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1286,0,1261,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1286,0,1264,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1286,0,1267,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1286,0,1270,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1286,0,1273,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1286,0,1276,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1286,0,1279,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1286,0,1282,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1286,0,1285,0,0,"IF", 0, 2, 0);
	trans[0][1249]	= settr(1248,0,1250,661,0,"((input==20))", 1, 2, 0);
	trans[0][1250]	= settr(1249,0,1251,662,662,"fsm_state = 42", 1, 2, 0);
	trans[0][1251]	= settr(1250,0,3095,663,663,"output = 4", 1, 2, 0);
	trans[0][1288]	= settr(1287,0,3095,1,0,".(goto)", 0, 2, 0);
	trans[0][1252]	= settr(1251,0,1253,664,0,"((input==23))", 1, 2, 0);
	trans[0][1253]	= settr(1252,0,1254,665,665,"fsm_state = 42", 1, 2, 0);
	trans[0][1254]	= settr(1253,0,3095,666,666,"output = 4", 1, 2, 0);
	trans[0][1255]	= settr(1254,0,1256,667,0,"((input==26))", 1, 2, 0);
	trans[0][1256]	= settr(1255,0,1257,668,668,"fsm_state = 42", 1, 2, 0);
	trans[0][1257]	= settr(1256,0,3095,669,669,"output = 4", 1, 2, 0);
	trans[0][1258]	= settr(1257,0,1259,670,0,"((input==16))", 1, 2, 0);
	trans[0][1259]	= settr(1258,0,17,671,671,"fsm_state = 30", 1, 2, 0);
	trans[0][1260]	= settr(1259,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1261]	= settr(1260,0,1262,672,0,"((input==27))", 1, 2, 0);
	trans[0][1262]	= settr(1261,0,1263,673,673,"fsm_state = 26", 1, 2, 0);
	trans[0][1263]	= settr(1262,0,3095,674,674,"output = 11", 1, 2, 0);
	trans[0][1264]	= settr(1263,0,1265,675,0,"((input==19))", 1, 2, 0);
	trans[0][1265]	= settr(1264,0,17,676,676,"fsm_state = 26", 1, 2, 0);
	trans[0][1266]	= settr(1265,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1267]	= settr(1266,0,1268,677,0,"((input==18))", 1, 2, 0);
	trans[0][1268]	= settr(1267,0,1269,678,678,"fsm_state = 26", 1, 2, 0);
	trans[0][1269]	= settr(1268,0,3095,679,679,"output = 8", 1, 2, 0);
	trans[0][1270]	= settr(1269,0,1271,680,0,"((input==25))", 1, 2, 0);
	trans[0][1271]	= settr(1270,0,17,681,681,"fsm_state = 26", 1, 2, 0);
	trans[0][1272]	= settr(1271,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1273]	= settr(1272,0,1274,682,0,"((input==21))", 1, 2, 0);
	trans[0][1274]	= settr(1273,0,1275,683,683,"fsm_state = 26", 1, 2, 0);
	trans[0][1275]	= settr(1274,0,3095,684,684,"output = 11", 1, 2, 0);
	trans[0][1276]	= settr(1275,0,1277,685,0,"((input==24))", 1, 2, 0);
	trans[0][1277]	= settr(1276,0,17,686,686,"fsm_state = 26", 1, 2, 0);
	trans[0][1278]	= settr(1277,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1279]	= settr(1278,0,1280,687,0,"((input==22))", 1, 2, 0);
	trans[0][1280]	= settr(1279,0,1281,688,688,"fsm_state = 26", 1, 2, 0);
	trans[0][1281]	= settr(1280,0,3095,689,689,"output = 14", 1, 2, 0);
	trans[0][1282]	= settr(1281,0,1283,690,0,"((input==17))", 1, 2, 0);
	trans[0][1283]	= settr(1282,0,1284,691,691,"fsm_state = 16", 1, 2, 0);
	trans[0][1284]	= settr(1283,0,3095,692,692,"output = 13", 1, 2, 0);
	trans[0][1285]	= settr(1284,0,17,2,0,"else", 0, 2, 0);
	trans[0][1286]	= settr(1285,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1289]	= settr(1288,0,1328,693,0,"((fsm_state==25))", 1, 2, 0);
	T = trans[0][1328] = settr(1327,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1327,0,1290,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1327,0,1293,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1327,0,1296,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1327,0,1299,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1327,0,1302,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1327,0,1305,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1327,0,1308,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1327,0,1311,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1327,0,1314,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1327,0,1317,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1327,0,1320,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1327,0,1323,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1327,0,1326,0,0,"IF", 0, 2, 0);
	trans[0][1290]	= settr(1289,0,1291,694,0,"((input==26))", 1, 2, 0);
	trans[0][1291]	= settr(1290,0,1292,695,695,"fsm_state = 42", 1, 2, 0);
	trans[0][1292]	= settr(1291,0,3095,696,696,"output = 4", 1, 2, 0);
	trans[0][1329]	= settr(1328,0,3095,1,0,".(goto)", 0, 2, 0);
	trans[0][1293]	= settr(1292,0,1294,697,0,"((input==17))", 1, 2, 0);
	trans[0][1294]	= settr(1293,0,1295,698,698,"fsm_state = 42", 1, 2, 0);
	trans[0][1295]	= settr(1294,0,3095,699,699,"output = 4", 1, 2, 0);
	trans[0][1296]	= settr(1295,0,1297,700,0,"((input==22))", 1, 2, 0);
	trans[0][1297]	= settr(1296,0,1298,701,701,"fsm_state = 42", 1, 2, 0);
	trans[0][1298]	= settr(1297,0,3095,702,702,"output = 4", 1, 2, 0);
	trans[0][1299]	= settr(1298,0,1300,703,0,"((input==23))", 1, 2, 0);
	trans[0][1300]	= settr(1299,0,17,704,704,"fsm_state = 35", 1, 2, 0);
	trans[0][1301]	= settr(1300,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1302]	= settr(1301,0,1303,705,0,"((input==16))", 1, 2, 0);
	trans[0][1303]	= settr(1302,0,17,706,706,"fsm_state = 28", 1, 2, 0);
	trans[0][1304]	= settr(1303,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1305]	= settr(1304,0,1306,707,0,"((input==27))", 1, 2, 0);
	trans[0][1306]	= settr(1305,0,17,708,708,"fsm_state = 25", 1, 2, 0);
	trans[0][1307]	= settr(1306,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1308]	= settr(1307,0,1309,709,0,"((input==20))", 1, 2, 0);
	trans[0][1309]	= settr(1308,0,17,710,710,"fsm_state = 25", 1, 2, 0);
	trans[0][1310]	= settr(1309,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1311]	= settr(1310,0,1312,711,0,"((input==19))", 1, 2, 0);
	trans[0][1312]	= settr(1311,0,17,712,712,"fsm_state = 25", 1, 2, 0);
	trans[0][1313]	= settr(1312,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1314]	= settr(1313,0,1315,713,0,"((input==18))", 1, 2, 0);
	trans[0][1315]	= settr(1314,0,1316,714,714,"fsm_state = 25", 1, 2, 0);
	trans[0][1316]	= settr(1315,0,3095,715,715,"output = 8", 1, 2, 0);
	trans[0][1317]	= settr(1316,0,1318,716,0,"((input==25))", 1, 2, 0);
	trans[0][1318]	= settr(1317,0,17,717,717,"fsm_state = 25", 1, 2, 0);
	trans[0][1319]	= settr(1318,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1320]	= settr(1319,0,1321,718,0,"((input==21))", 1, 2, 0);
	trans[0][1321]	= settr(1320,0,17,719,719,"fsm_state = 25", 1, 2, 0);
	trans[0][1322]	= settr(1321,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1323]	= settr(1322,0,1324,720,0,"((input==24))", 1, 2, 0);
	trans[0][1324]	= settr(1323,0,17,721,721,"fsm_state = 25", 1, 2, 0);
	trans[0][1325]	= settr(1324,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1326]	= settr(1325,0,17,2,0,"else", 0, 2, 0);
	trans[0][1327]	= settr(1326,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1330]	= settr(1329,0,1369,722,0,"((fsm_state==24))", 1, 2, 0);
	T = trans[0][1369] = settr(1368,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1368,0,1331,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1368,0,1334,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1368,0,1337,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1368,0,1340,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1368,0,1343,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1368,0,1346,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1368,0,1349,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1368,0,1352,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1368,0,1355,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1368,0,1358,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1368,0,1361,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1368,0,1364,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1368,0,1367,0,0,"IF", 0, 2, 0);
	trans[0][1331]	= settr(1330,0,1332,723,0,"((input==20))", 1, 2, 0);
	trans[0][1332]	= settr(1331,0,1333,724,724,"fsm_state = 42", 1, 2, 0);
	trans[0][1333]	= settr(1332,0,3095,725,725,"output = 4", 1, 2, 0);
	trans[0][1370]	= settr(1369,0,3095,1,0,".(goto)", 0, 2, 0);
	trans[0][1334]	= settr(1333,0,1335,726,0,"((input==23))", 1, 2, 0);
	trans[0][1335]	= settr(1334,0,1336,727,727,"fsm_state = 42", 1, 2, 0);
	trans[0][1336]	= settr(1335,0,3095,728,728,"output = 4", 1, 2, 0);
	trans[0][1337]	= settr(1336,0,1338,729,0,"((input==26))", 1, 2, 0);
	trans[0][1338]	= settr(1337,0,1339,730,730,"fsm_state = 42", 1, 2, 0);
	trans[0][1339]	= settr(1338,0,3095,731,731,"output = 4", 1, 2, 0);
	trans[0][1340]	= settr(1339,0,1341,732,0,"((input==27))", 1, 2, 0);
	trans[0][1341]	= settr(1340,0,1342,733,733,"fsm_state = 24", 1, 2, 0);
	trans[0][1342]	= settr(1341,0,3095,734,734,"output = 11", 1, 2, 0);
	trans[0][1343]	= settr(1342,0,1344,735,0,"((input==19))", 1, 2, 0);
	trans[0][1344]	= settr(1343,0,1345,736,736,"fsm_state = 24", 1, 2, 0);
	trans[0][1345]	= settr(1344,0,3095,737,737,"output = 10", 1, 2, 0);
	trans[0][1346]	= settr(1345,0,1347,738,0,"((input==18))", 1, 2, 0);
	trans[0][1347]	= settr(1346,0,1348,739,739,"fsm_state = 24", 1, 2, 0);
	trans[0][1348]	= settr(1347,0,3095,740,740,"output = 8", 1, 2, 0);
	trans[0][1349]	= settr(1348,0,1350,741,0,"((input==21))", 1, 2, 0);
	trans[0][1350]	= settr(1349,0,1351,742,742,"fsm_state = 24", 1, 2, 0);
	trans[0][1351]	= settr(1350,0,3095,743,743,"output = 11", 1, 2, 0);
	trans[0][1352]	= settr(1351,0,1353,744,0,"((input==22))", 1, 2, 0);
	trans[0][1353]	= settr(1352,0,1354,745,745,"fsm_state = 24", 1, 2, 0);
	trans[0][1354]	= settr(1353,0,3095,746,746,"output = 14", 1, 2, 0);
	trans[0][1355]	= settr(1354,0,1356,747,0,"((input==24))", 1, 2, 0);
	trans[0][1356]	= settr(1355,0,1357,748,748,"fsm_state = 15", 1, 2, 0);
	trans[0][1357]	= settr(1356,0,3095,749,749,"output = 7", 1, 2, 0);
	trans[0][1358]	= settr(1357,0,1359,750,0,"((input==17))", 1, 2, 0);
	trans[0][1359]	= settr(1358,0,1360,751,751,"fsm_state = 14", 1, 2, 0);
	trans[0][1360]	= settr(1359,0,3095,752,752,"output = 13", 1, 2, 0);
	trans[0][1361]	= settr(1360,0,1362,753,0,"((input==16))", 1, 2, 0);
	trans[0][1362]	= settr(1361,0,1363,754,754,"fsm_state = 13", 1, 2, 0);
	trans[0][1363]	= settr(1362,0,3095,755,755,"output = 7", 1, 2, 0);
	trans[0][1364]	= settr(1363,0,1365,756,0,"((input==25))", 1, 2, 0);
	trans[0][1365]	= settr(1364,0,17,757,757,"fsm_state = 12", 1, 2, 0);
	trans[0][1366]	= settr(1365,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1367]	= settr(1366,0,17,2,0,"else", 0, 2, 0);
	trans[0][1368]	= settr(1367,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1371]	= settr(1370,0,1451,758,0,"((fsm_state==23))", 1, 2, 0);
	T = trans[0][1451] = settr(1450,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1450,0,1372,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1450,0,1375,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1450,0,1378,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1450,0,1381,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1450,0,1384,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1450,0,1387,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1450,0,1390,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1450,0,1393,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1450,0,1396,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1450,0,1399,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1450,0,1402,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1450,0,1405,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1450,0,1449,0,0,"IF", 0, 2, 0);
	trans[0][1372]	= settr(1371,0,1373,759,0,"((input==26))", 1, 2, 0);
	trans[0][1373]	= settr(1372,0,1374,760,760,"fsm_state = 40", 1, 2, 0);
	trans[0][1374]	= settr(1373,0,3095,761,761,"output = 4", 1, 2, 0);
	trans[0][1452]	= settr(1451,0,3095,1,0,".(goto)", 0, 2, 0);
	trans[0][1375]	= settr(1374,0,1376,762,0,"((input==17))", 1, 2, 0);
	trans[0][1376]	= settr(1375,0,1377,763,763,"fsm_state = 40", 1, 2, 0);
	trans[0][1377]	= settr(1376,0,3095,764,764,"output = 4", 1, 2, 0);
	trans[0][1378]	= settr(1377,0,1379,765,0,"((input==22))", 1, 2, 0);
	trans[0][1379]	= settr(1378,0,1380,766,766,"fsm_state = 40", 1, 2, 0);
	trans[0][1380]	= settr(1379,0,3095,767,767,"output = 4", 1, 2, 0);
	trans[0][1381]	= settr(1380,0,1382,768,0,"((input==23))", 1, 2, 0);
	trans[0][1382]	= settr(1381,0,17,769,769,"fsm_state = 38", 1, 2, 0);
	trans[0][1383]	= settr(1382,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1384]	= settr(1383,0,1385,770,0,"((input==27))", 1, 2, 0);
	trans[0][1385]	= settr(1384,0,1386,771,771,"fsm_state = 23", 1, 2, 0);
	trans[0][1386]	= settr(1385,0,3095,772,772,"output = 11", 1, 2, 0);
	trans[0][1387]	= settr(1386,0,1388,773,0,"((input==19))", 1, 2, 0);
	trans[0][1388]	= settr(1387,0,1389,774,774,"fsm_state = 23", 1, 2, 0);
	trans[0][1389]	= settr(1388,0,3095,775,775,"output = 5", 1, 2, 0);
	trans[0][1390]	= settr(1389,0,1391,776,0,"((input==25))", 1, 2, 0);
	trans[0][1391]	= settr(1390,0,1392,777,777,"fsm_state = 23", 1, 2, 0);
	trans[0][1392]	= settr(1391,0,3095,778,778,"output = 5", 1, 2, 0);
	trans[0][1393]	= settr(1392,0,1394,779,0,"((input==21))", 1, 2, 0);
	trans[0][1394]	= settr(1393,0,1395,780,780,"fsm_state = 23", 1, 2, 0);
	trans[0][1395]	= settr(1394,0,3095,781,781,"output = 11", 1, 2, 0);
	trans[0][1396]	= settr(1395,0,1397,782,0,"((input==16))", 1, 2, 0);
	trans[0][1397]	= settr(1396,0,1398,783,783,"fsm_state = 23", 1, 2, 0);
	trans[0][1398]	= settr(1397,0,3095,784,784,"output = 5", 1, 2, 0);
	trans[0][1399]	= settr(1398,0,1400,785,0,"((input==24))", 1, 2, 0);
	trans[0][1400]	= settr(1399,0,1401,786,786,"fsm_state = 23", 1, 2, 0);
	trans[0][1401]	= settr(1400,0,3095,787,787,"output = 5", 1, 2, 0);
	trans[0][1402]	= settr(1401,0,1403,788,0,"((input==18))", 1, 2, 0);
	trans[0][1403]	= settr(1402,0,17,789,789,"fsm_state = 11", 1, 2, 0);
	trans[0][1404]	= settr(1403,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1405]	= settr(1404,0,1406,790,0,"((input==20))", 1, 2, 0);
	trans[0][1406]	= settr(1405,0,1407,791,791,"fsm_state = 10", 1, 2, 0);
	trans[0][1407]	= settr(1406,0,1408,792,792,"output = 12", 1, 2, 0);
	trans[0][1408]	= settr(1407,0,1446,793,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][1446] = settr(1445,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1445,0,1439,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][1439]	= settr(1438,32,1444,794,794,"D_STEP13", 1, 2, 0);
	T = trans[0][1444] = settr(1443,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1443,0,1440,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1443,0,1442,0,0,"IF", 0, 2, 0);
	trans[0][1440]	= settr(1439,0,1,795,0,"((dealt==0))", 1, 2, 0);
	trans[0][1441]	= settr(1440,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][1445]	= settr(1444,0,1447,1,0,".(goto)", 0, 2, 0);
	trans[0][1442]	= settr(1441,0,1443,2,0,"else", 0, 2, 0);
	trans[0][1443]	= settr(1442,0,1447,1,0,"(1)", 0, 2, 0);
	trans[0][1447]	= settr(1446,0,1448,796,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][1448]	= settr(1447,0,3095,797,797,"output = 2", 1, 2, 0);
	trans[0][1449]	= settr(1448,0,17,2,0,"else", 0, 2, 0);
	trans[0][1450]	= settr(1449,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1453]	= settr(1452,0,1492,798,0,"((fsm_state==22))", 1, 2, 0);
	T = trans[0][1492] = settr(1491,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1491,0,1454,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1491,0,1457,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1491,0,1460,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1491,0,1463,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1491,0,1466,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1491,0,1469,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1491,0,1472,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1491,0,1475,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1491,0,1478,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1491,0,1481,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1491,0,1484,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1491,0,1487,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1491,0,1490,0,0,"IF", 0, 2, 0);
	trans[0][1454]	= settr(1453,0,1455,799,0,"((input==26))", 1, 2, 0);
	trans[0][1455]	= settr(1454,0,1456,800,800,"fsm_state = 40", 1, 2, 0);
	trans[0][1456]	= settr(1455,0,3095,801,801,"output = 4", 1, 2, 0);
	trans[0][1493]	= settr(1492,0,3095,1,0,".(goto)", 0, 2, 0);
	trans[0][1457]	= settr(1456,0,1458,802,0,"((input==17))", 1, 2, 0);
	trans[0][1458]	= settr(1457,0,1459,803,803,"fsm_state = 40", 1, 2, 0);
	trans[0][1459]	= settr(1458,0,3095,804,804,"output = 4", 1, 2, 0);
	trans[0][1460]	= settr(1459,0,1461,805,0,"((input==22))", 1, 2, 0);
	trans[0][1461]	= settr(1460,0,1462,806,806,"fsm_state = 40", 1, 2, 0);
	trans[0][1462]	= settr(1461,0,3095,807,807,"output = 4", 1, 2, 0);
	trans[0][1463]	= settr(1462,0,1464,808,0,"((input==23))", 1, 2, 0);
	trans[0][1464]	= settr(1463,0,17,809,809,"fsm_state = 34", 1, 2, 0);
	trans[0][1465]	= settr(1464,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1466]	= settr(1465,0,1467,810,0,"((input==27))", 1, 2, 0);
	trans[0][1467]	= settr(1466,0,1468,811,811,"fsm_state = 22", 1, 2, 0);
	trans[0][1468]	= settr(1467,0,3095,812,812,"output = 1", 1, 2, 0);
	trans[0][1469]	= settr(1468,0,1470,813,0,"((input==20))", 1, 2, 0);
	trans[0][1470]	= settr(1469,0,17,814,814,"fsm_state = 22", 1, 2, 0);
	trans[0][1471]	= settr(1470,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1472]	= settr(1471,0,1473,815,0,"((input==19))", 1, 2, 0);
	trans[0][1473]	= settr(1472,0,1474,816,816,"fsm_state = 22", 1, 2, 0);
	trans[0][1474]	= settr(1473,0,3095,817,817,"output = 5", 1, 2, 0);
	trans[0][1475]	= settr(1474,0,1476,818,0,"((input==25))", 1, 2, 0);
	trans[0][1476]	= settr(1475,0,1477,819,819,"fsm_state = 22", 1, 2, 0);
	trans[0][1477]	= settr(1476,0,3095,820,820,"output = 5", 1, 2, 0);
	trans[0][1478]	= settr(1477,0,1479,821,0,"((input==16))", 1, 2, 0);
	trans[0][1479]	= settr(1478,0,1480,822,822,"fsm_state = 22", 1, 2, 0);
	trans[0][1480]	= settr(1479,0,3095,823,823,"output = 5", 1, 2, 0);
	trans[0][1481]	= settr(1480,0,1482,824,0,"((input==24))", 1, 2, 0);
	trans[0][1482]	= settr(1481,0,1483,825,825,"fsm_state = 22", 1, 2, 0);
	trans[0][1483]	= settr(1482,0,3095,826,826,"output = 5", 1, 2, 0);
	trans[0][1484]	= settr(1483,0,1485,827,0,"((input==18))", 1, 2, 0);
	trans[0][1485]	= settr(1484,0,1486,828,828,"fsm_state = 18", 1, 2, 0);
	trans[0][1486]	= settr(1485,0,3095,829,829,"output = 11", 1, 2, 0);
	trans[0][1487]	= settr(1486,0,1488,830,0,"((input==21))", 1, 2, 0);
	trans[0][1488]	= settr(1487,0,1489,831,831,"fsm_state = 10", 1, 2, 0);
	trans[0][1489]	= settr(1488,0,3095,832,832,"output = 3", 1, 2, 0);
	trans[0][1490]	= settr(1489,0,17,2,0,"else", 0, 2, 0);
	trans[0][1491]	= settr(1490,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1494]	= settr(1493,0,1615,833,0,"((fsm_state==21))", 1, 2, 0);
	T = trans[0][1615] = settr(1614,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1614,0,1495,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1614,0,1498,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1614,0,1501,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1614,0,1504,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1614,0,1507,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1614,0,1592,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1614,0,1595,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1614,0,1598,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1614,0,1601,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1614,0,1604,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1614,0,1607,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1614,0,1610,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1614,0,1613,0,0,"IF", 0, 2, 0);
	trans[0][1495]	= settr(1494,0,1496,834,0,"((input==26))", 1, 2, 0);
	trans[0][1496]	= settr(1495,0,1497,835,835,"fsm_state = 40", 1, 2, 0);
	trans[0][1497]	= settr(1496,0,3095,836,836,"output = 4", 1, 2, 0);
	trans[0][1616]	= settr(1615,0,3095,1,0,".(goto)", 0, 2, 0);
	trans[0][1498]	= settr(1497,0,1499,837,0,"((input==17))", 1, 2, 0);
	trans[0][1499]	= settr(1498,0,1500,838,838,"fsm_state = 40", 1, 2, 0);
	trans[0][1500]	= settr(1499,0,3095,839,839,"output = 4", 1, 2, 0);
	trans[0][1501]	= settr(1500,0,1502,840,0,"((input==22))", 1, 2, 0);
	trans[0][1502]	= settr(1501,0,1503,841,841,"fsm_state = 40", 1, 2, 0);
	trans[0][1503]	= settr(1502,0,3095,842,842,"output = 4", 1, 2, 0);
	trans[0][1504]	= settr(1503,0,1505,843,0,"((input==23))", 1, 2, 0);
	trans[0][1505]	= settr(1504,0,17,844,844,"fsm_state = 38", 1, 2, 0);
	trans[0][1506]	= settr(1505,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1507]	= settr(1506,0,1508,845,0,"((input==20))", 1, 2, 0);
	trans[0][1508]	= settr(1507,0,1509,846,846,"fsm_state = 22", 1, 2, 0);
	trans[0][1509]	= settr(1508,0,1510,847,847,"output = 12", 1, 2, 0);
	trans[0][1510]	= settr(1509,0,1548,848,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][1548] = settr(1547,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1547,0,1541,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][1541]	= settr(1540,32,1546,849,849,"D_STEP13", 1, 2, 0);
	T = trans[0][1546] = settr(1545,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1545,0,1542,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1545,0,1544,0,0,"IF", 0, 2, 0);
	trans[0][1542]	= settr(1541,0,1,850,0,"((dealt==0))", 1, 2, 0);
	trans[0][1543]	= settr(1542,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][1547]	= settr(1546,0,1549,1,0,".(goto)", 0, 2, 0);
	trans[0][1544]	= settr(1543,0,1545,2,0,"else", 0, 2, 0);
	trans[0][1545]	= settr(1544,0,1549,1,0,"(1)", 0, 2, 0);
	trans[0][1549]	= settr(1548,0,1550,851,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][1550]	= settr(1549,0,1551,852,852,"output = 2", 1, 2, 0);
	trans[0][1551]	= settr(1550,0,1589,853,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][1589] = settr(1588,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1588,0,1582,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][1582]	= settr(1581,32,1587,854,854,"D_STEP13", 1, 2, 0);
	T = trans[0][1587] = settr(1586,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1586,0,1583,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1586,0,1585,0,0,"IF", 0, 2, 0);
	trans[0][1583]	= settr(1582,0,1,855,0,"((dealt==0))", 1, 2, 0);
	trans[0][1584]	= settr(1583,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][1588]	= settr(1587,0,1590,1,0,".(goto)", 0, 2, 0);
	trans[0][1585]	= settr(1584,0,1586,2,0,"else", 0, 2, 0);
	trans[0][1586]	= settr(1585,0,1590,1,0,"(1)", 0, 2, 0);
	trans[0][1590]	= settr(1589,0,1591,856,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][1591]	= settr(1590,0,3095,857,857,"output = 6", 1, 2, 0);
	trans[0][1592]	= settr(1591,0,1593,858,0,"((input==27))", 1, 2, 0);
	trans[0][1593]	= settr(1592,0,17,859,859,"fsm_state = 21", 1, 2, 0);
	trans[0][1594]	= settr(1593,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1595]	= settr(1594,0,1596,860,0,"((input==19))", 1, 2, 0);
	trans[0][1596]	= settr(1595,0,1597,861,861,"fsm_state = 21", 1, 2, 0);
	trans[0][1597]	= settr(1596,0,3095,862,862,"output = 5", 1, 2, 0);
	trans[0][1598]	= settr(1597,0,1599,863,0,"((input==25))", 1, 2, 0);
	trans[0][1599]	= settr(1598,0,1600,864,864,"fsm_state = 21", 1, 2, 0);
	trans[0][1600]	= settr(1599,0,3095,865,865,"output = 5", 1, 2, 0);
	trans[0][1601]	= settr(1600,0,1602,866,0,"((input==16))", 1, 2, 0);
	trans[0][1602]	= settr(1601,0,1603,867,867,"fsm_state = 21", 1, 2, 0);
	trans[0][1603]	= settr(1602,0,3095,868,868,"output = 5", 1, 2, 0);
	trans[0][1604]	= settr(1603,0,1605,869,0,"((input==24))", 1, 2, 0);
	trans[0][1605]	= settr(1604,0,1606,870,870,"fsm_state = 21", 1, 2, 0);
	trans[0][1606]	= settr(1605,0,3095,871,871,"output = 5", 1, 2, 0);
	trans[0][1607]	= settr(1606,0,1608,872,0,"((input==21))", 1, 2, 0);
	trans[0][1608]	= settr(1607,0,17,873,873,"fsm_state = 20", 1, 2, 0);
	trans[0][1609]	= settr(1608,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1610]	= settr(1609,0,1611,874,0,"((input==18))", 1, 2, 0);
	trans[0][1611]	= settr(1610,0,1612,875,875,"fsm_state = 19", 1, 2, 0);
	trans[0][1612]	= settr(1611,0,3095,876,876,"output = 11", 1, 2, 0);
	trans[0][1613]	= settr(1612,0,17,2,0,"else", 0, 2, 0);
	trans[0][1614]	= settr(1613,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1617]	= settr(1616,0,1738,877,0,"((fsm_state==20))", 1, 2, 0);
	T = trans[0][1738] = settr(1737,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1737,0,1618,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1737,0,1621,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1737,0,1624,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1737,0,1627,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1737,0,1630,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1737,0,1633,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1737,0,1636,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1737,0,1639,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1737,0,1642,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1737,0,1645,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1737,0,1648,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1737,0,1651,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1737,0,1736,0,0,"IF", 0, 2, 0);
	trans[0][1618]	= settr(1617,0,1619,878,0,"((input==26))", 1, 2, 0);
	trans[0][1619]	= settr(1618,0,1620,879,879,"fsm_state = 40", 1, 2, 0);
	trans[0][1620]	= settr(1619,0,3095,880,880,"output = 4", 1, 2, 0);
	trans[0][1739]	= settr(1738,0,3095,1,0,".(goto)", 0, 2, 0);
	trans[0][1621]	= settr(1620,0,1622,881,0,"((input==17))", 1, 2, 0);
	trans[0][1622]	= settr(1621,0,1623,882,882,"fsm_state = 40", 1, 2, 0);
	trans[0][1623]	= settr(1622,0,3095,883,883,"output = 4", 1, 2, 0);
	trans[0][1624]	= settr(1623,0,1625,884,0,"((input==22))", 1, 2, 0);
	trans[0][1625]	= settr(1624,0,1626,885,885,"fsm_state = 40", 1, 2, 0);
	trans[0][1626]	= settr(1625,0,3095,886,886,"output = 4", 1, 2, 0);
	trans[0][1627]	= settr(1626,0,1628,887,0,"((input==23))", 1, 2, 0);
	trans[0][1628]	= settr(1627,0,17,888,888,"fsm_state = 38", 1, 2, 0);
	trans[0][1629]	= settr(1628,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1630]	= settr(1629,0,1631,889,0,"((input==27))", 1, 2, 0);
	trans[0][1631]	= settr(1630,0,1632,890,890,"fsm_state = 20", 1, 2, 0);
	trans[0][1632]	= settr(1631,0,3095,891,891,"output = 11", 1, 2, 0);
	trans[0][1633]	= settr(1632,0,1634,892,0,"((input==19))", 1, 2, 0);
	trans[0][1634]	= settr(1633,0,1635,893,893,"fsm_state = 20", 1, 2, 0);
	trans[0][1635]	= settr(1634,0,3095,894,894,"output = 5", 1, 2, 0);
	trans[0][1636]	= settr(1635,0,1637,895,0,"((input==25))", 1, 2, 0);
	trans[0][1637]	= settr(1636,0,1638,896,896,"fsm_state = 20", 1, 2, 0);
	trans[0][1638]	= settr(1637,0,3095,897,897,"output = 5", 1, 2, 0);
	trans[0][1639]	= settr(1638,0,1640,898,0,"((input==21))", 1, 2, 0);
	trans[0][1640]	= settr(1639,0,1641,899,899,"fsm_state = 20", 1, 2, 0);
	trans[0][1641]	= settr(1640,0,3095,900,900,"output = 11", 1, 2, 0);
	trans[0][1642]	= settr(1641,0,1643,901,0,"((input==16))", 1, 2, 0);
	trans[0][1643]	= settr(1642,0,1644,902,902,"fsm_state = 20", 1, 2, 0);
	trans[0][1644]	= settr(1643,0,3095,903,903,"output = 5", 1, 2, 0);
	trans[0][1645]	= settr(1644,0,1646,904,0,"((input==24))", 1, 2, 0);
	trans[0][1646]	= settr(1645,0,1647,905,905,"fsm_state = 20", 1, 2, 0);
	trans[0][1647]	= settr(1646,0,3095,906,906,"output = 5", 1, 2, 0);
	trans[0][1648]	= settr(1647,0,1649,907,0,"((input==18))", 1, 2, 0);
	trans[0][1649]	= settr(1648,0,17,908,908,"fsm_state = 11", 1, 2, 0);
	trans[0][1650]	= settr(1649,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1651]	= settr(1650,0,1652,909,0,"((input==20))", 1, 2, 0);
	trans[0][1652]	= settr(1651,0,1653,910,910,"fsm_state = 10", 1, 2, 0);
	trans[0][1653]	= settr(1652,0,1654,911,911,"output = 12", 1, 2, 0);
	trans[0][1654]	= settr(1653,0,1692,912,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][1692] = settr(1691,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1691,0,1685,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][1685]	= settr(1684,32,1690,913,913,"D_STEP13", 1, 2, 0);
	T = trans[0][1690] = settr(1689,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1689,0,1686,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1689,0,1688,0,0,"IF", 0, 2, 0);
	trans[0][1686]	= settr(1685,0,1,914,0,"((dealt==0))", 1, 2, 0);
	trans[0][1687]	= settr(1686,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][1691]	= settr(1690,0,1693,1,0,".(goto)", 0, 2, 0);
	trans[0][1688]	= settr(1687,0,1689,2,0,"else", 0, 2, 0);
	trans[0][1689]	= settr(1688,0,1693,1,0,"(1)", 0, 2, 0);
	trans[0][1693]	= settr(1692,0,1694,915,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][1694]	= settr(1693,0,1695,916,916,"output = 2", 1, 2, 0);
	trans[0][1695]	= settr(1694,0,1733,917,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][1733] = settr(1732,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1732,0,1726,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][1726]	= settr(1725,32,1731,918,918,"D_STEP13", 1, 2, 0);
	T = trans[0][1731] = settr(1730,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1730,0,1727,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1730,0,1729,0,0,"IF", 0, 2, 0);
	trans[0][1727]	= settr(1726,0,1,919,0,"((dealt==0))", 1, 2, 0);
	trans[0][1728]	= settr(1727,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][1732]	= settr(1731,0,1734,1,0,".(goto)", 0, 2, 0);
	trans[0][1729]	= settr(1728,0,1730,2,0,"else", 0, 2, 0);
	trans[0][1730]	= settr(1729,0,1734,1,0,"(1)", 0, 2, 0);
	trans[0][1734]	= settr(1733,0,1735,920,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][1735]	= settr(1734,0,3095,921,921,"output = 6", 1, 2, 0);
	trans[0][1736]	= settr(1735,0,17,2,0,"else", 0, 2, 0);
	trans[0][1737]	= settr(1736,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1740]	= settr(1739,0,1861,922,0,"((fsm_state==19))", 1, 2, 0);
	T = trans[0][1861] = settr(1860,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1860,0,1741,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1860,0,1744,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1860,0,1747,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1860,0,1750,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1860,0,1753,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1860,0,1756,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1860,0,1759,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1860,0,1762,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1860,0,1765,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1860,0,1768,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1860,0,1771,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1860,0,1856,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1860,0,1859,0,0,"IF", 0, 2, 0);
	trans[0][1741]	= settr(1740,0,1742,923,0,"((input==26))", 1, 2, 0);
	trans[0][1742]	= settr(1741,0,1743,924,924,"fsm_state = 42", 1, 2, 0);
	trans[0][1743]	= settr(1742,0,3095,925,925,"output = 4", 1, 2, 0);
	trans[0][1862]	= settr(1861,0,3095,1,0,".(goto)", 0, 2, 0);
	trans[0][1744]	= settr(1743,0,1745,926,0,"((input==17))", 1, 2, 0);
	trans[0][1745]	= settr(1744,0,1746,927,927,"fsm_state = 42", 1, 2, 0);
	trans[0][1746]	= settr(1745,0,3095,928,928,"output = 4", 1, 2, 0);
	trans[0][1747]	= settr(1746,0,1748,929,0,"((input==22))", 1, 2, 0);
	trans[0][1748]	= settr(1747,0,1749,930,930,"fsm_state = 42", 1, 2, 0);
	trans[0][1749]	= settr(1748,0,3095,931,931,"output = 4", 1, 2, 0);
	trans[0][1750]	= settr(1749,0,1751,932,0,"((input==23))", 1, 2, 0);
	trans[0][1751]	= settr(1750,0,17,933,933,"fsm_state = 36", 1, 2, 0);
	trans[0][1752]	= settr(1751,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1753]	= settr(1752,0,1754,934,0,"((input==16))", 1, 2, 0);
	trans[0][1754]	= settr(1753,0,1755,935,935,"fsm_state = 21", 1, 2, 0);
	trans[0][1755]	= settr(1754,0,3095,936,936,"output = 11", 1, 2, 0);
	trans[0][1756]	= settr(1755,0,1757,937,0,"((input==27))", 1, 2, 0);
	trans[0][1757]	= settr(1756,0,17,938,938,"fsm_state = 19", 1, 2, 0);
	trans[0][1758]	= settr(1757,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1759]	= settr(1758,0,1760,939,0,"((input==19))", 1, 2, 0);
	trans[0][1760]	= settr(1759,0,1761,940,940,"fsm_state = 19", 1, 2, 0);
	trans[0][1761]	= settr(1760,0,3095,941,941,"output = 11", 1, 2, 0);
	trans[0][1762]	= settr(1761,0,1763,942,0,"((input==18))", 1, 2, 0);
	trans[0][1763]	= settr(1762,0,1764,943,943,"fsm_state = 19", 1, 2, 0);
	trans[0][1764]	= settr(1763,0,3095,944,944,"output = 8", 1, 2, 0);
	trans[0][1765]	= settr(1764,0,1766,945,0,"((input==25))", 1, 2, 0);
	trans[0][1766]	= settr(1765,0,1767,946,946,"fsm_state = 19", 1, 2, 0);
	trans[0][1767]	= settr(1766,0,3095,947,947,"output = 11", 1, 2, 0);
	trans[0][1768]	= settr(1767,0,1769,948,0,"((input==24))", 1, 2, 0);
	trans[0][1769]	= settr(1768,0,1770,949,949,"fsm_state = 19", 1, 2, 0);
	trans[0][1770]	= settr(1769,0,3095,950,950,"output = 11", 1, 2, 0);
	trans[0][1771]	= settr(1770,0,1772,951,0,"((input==20))", 1, 2, 0);
	trans[0][1772]	= settr(1771,0,1773,952,952,"fsm_state = 18", 1, 2, 0);
	trans[0][1773]	= settr(1772,0,1774,953,953,"output = 12", 1, 2, 0);
	trans[0][1774]	= settr(1773,0,1812,954,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][1812] = settr(1811,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1811,0,1805,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][1805]	= settr(1804,32,1810,955,955,"D_STEP13", 1, 2, 0);
	T = trans[0][1810] = settr(1809,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1809,0,1806,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1809,0,1808,0,0,"IF", 0, 2, 0);
	trans[0][1806]	= settr(1805,0,1,956,0,"((dealt==0))", 1, 2, 0);
	trans[0][1807]	= settr(1806,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][1811]	= settr(1810,0,1813,1,0,".(goto)", 0, 2, 0);
	trans[0][1808]	= settr(1807,0,1809,2,0,"else", 0, 2, 0);
	trans[0][1809]	= settr(1808,0,1813,1,0,"(1)", 0, 2, 0);
	trans[0][1813]	= settr(1812,0,1814,957,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][1814]	= settr(1813,0,1815,958,958,"output = 2", 1, 2, 0);
	trans[0][1815]	= settr(1814,0,1853,959,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][1853] = settr(1852,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1852,0,1846,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][1846]	= settr(1845,32,1851,960,960,"D_STEP13", 1, 2, 0);
	T = trans[0][1851] = settr(1850,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1850,0,1847,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1850,0,1849,0,0,"IF", 0, 2, 0);
	trans[0][1847]	= settr(1846,0,1,961,0,"((dealt==0))", 1, 2, 0);
	trans[0][1848]	= settr(1847,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][1852]	= settr(1851,0,1854,1,0,".(goto)", 0, 2, 0);
	trans[0][1849]	= settr(1848,0,1850,2,0,"else", 0, 2, 0);
	trans[0][1850]	= settr(1849,0,1854,1,0,"(1)", 0, 2, 0);
	trans[0][1854]	= settr(1853,0,1855,962,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][1855]	= settr(1854,0,3095,963,963,"output = 6", 1, 2, 0);
	trans[0][1856]	= settr(1855,0,1857,964,0,"((input==21))", 1, 2, 0);
	trans[0][1857]	= settr(1856,0,17,965,965,"fsm_state = 17", 1, 2, 0);
	trans[0][1858]	= settr(1857,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1859]	= settr(1858,0,17,2,0,"else", 0, 2, 0);
	trans[0][1860]	= settr(1859,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1863]	= settr(1862,0,1902,966,0,"((fsm_state==18))", 1, 2, 0);
	T = trans[0][1902] = settr(1901,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1901,0,1864,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1901,0,1867,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1901,0,1870,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1901,0,1873,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1901,0,1876,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1901,0,1879,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1901,0,1882,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1901,0,1885,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1901,0,1888,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1901,0,1891,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1901,0,1894,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1901,0,1897,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1901,0,1900,0,0,"IF", 0, 2, 0);
	trans[0][1864]	= settr(1863,0,1865,967,0,"((input==26))", 1, 2, 0);
	trans[0][1865]	= settr(1864,0,1866,968,968,"fsm_state = 42", 1, 2, 0);
	trans[0][1866]	= settr(1865,0,3095,969,969,"output = 4", 1, 2, 0);
	trans[0][1903]	= settr(1902,0,3095,1,0,".(goto)", 0, 2, 0);
	trans[0][1867]	= settr(1866,0,1868,970,0,"((input==17))", 1, 2, 0);
	trans[0][1868]	= settr(1867,0,1869,971,971,"fsm_state = 42", 1, 2, 0);
	trans[0][1869]	= settr(1868,0,3095,972,972,"output = 4", 1, 2, 0);
	trans[0][1870]	= settr(1869,0,1871,973,0,"((input==22))", 1, 2, 0);
	trans[0][1871]	= settr(1870,0,1872,974,974,"fsm_state = 42", 1, 2, 0);
	trans[0][1872]	= settr(1871,0,3095,975,975,"output = 4", 1, 2, 0);
	trans[0][1873]	= settr(1872,0,1874,976,0,"((input==23))", 1, 2, 0);
	trans[0][1874]	= settr(1873,0,17,977,977,"fsm_state = 32", 1, 2, 0);
	trans[0][1875]	= settr(1874,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1876]	= settr(1875,0,1877,978,0,"((input==16))", 1, 2, 0);
	trans[0][1877]	= settr(1876,0,1878,979,979,"fsm_state = 22", 1, 2, 0);
	trans[0][1878]	= settr(1877,0,3095,980,980,"output = 11", 1, 2, 0);
	trans[0][1879]	= settr(1878,0,1880,981,0,"((input==27))", 1, 2, 0);
	trans[0][1880]	= settr(1879,0,1881,982,982,"fsm_state = 18", 1, 2, 0);
	trans[0][1881]	= settr(1880,0,3095,983,983,"output = 1", 1, 2, 0);
	trans[0][1882]	= settr(1881,0,1883,984,0,"((input==20))", 1, 2, 0);
	trans[0][1883]	= settr(1882,0,17,985,985,"fsm_state = 18", 1, 2, 0);
	trans[0][1884]	= settr(1883,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1885]	= settr(1884,0,1886,986,0,"((input==19))", 1, 2, 0);
	trans[0][1886]	= settr(1885,0,1887,987,987,"fsm_state = 18", 1, 2, 0);
	trans[0][1887]	= settr(1886,0,3095,988,988,"output = 11", 1, 2, 0);
	trans[0][1888]	= settr(1887,0,1889,989,0,"((input==18))", 1, 2, 0);
	trans[0][1889]	= settr(1888,0,1890,990,990,"fsm_state = 18", 1, 2, 0);
	trans[0][1890]	= settr(1889,0,3095,991,991,"output = 8", 1, 2, 0);
	trans[0][1891]	= settr(1890,0,1892,992,0,"((input==25))", 1, 2, 0);
	trans[0][1892]	= settr(1891,0,1893,993,993,"fsm_state = 18", 1, 2, 0);
	trans[0][1893]	= settr(1892,0,3095,994,994,"output = 11", 1, 2, 0);
	trans[0][1894]	= settr(1893,0,1895,995,0,"((input==24))", 1, 2, 0);
	trans[0][1895]	= settr(1894,0,1896,996,996,"fsm_state = 18", 1, 2, 0);
	trans[0][1896]	= settr(1895,0,3095,997,997,"output = 11", 1, 2, 0);
	trans[0][1897]	= settr(1896,0,1898,998,0,"((input==21))", 1, 2, 0);
	trans[0][1898]	= settr(1897,0,1899,999,999,"fsm_state = 9", 1, 2, 0);
	trans[0][1899]	= settr(1898,0,3095,1000,1000,"output = 3", 1, 2, 0);
	trans[0][1900]	= settr(1899,0,17,2,0,"else", 0, 2, 0);
	trans[0][1901]	= settr(1900,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1904]	= settr(1903,0,2025,1001,0,"((fsm_state==17))", 1, 2, 0);
	T = trans[0][2025] = settr(2024,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2024,0,1905,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2024,0,1908,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2024,0,1911,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2024,0,1914,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2024,0,1917,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2024,0,1920,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2024,0,1923,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2024,0,1926,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2024,0,1929,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2024,0,1932,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2024,0,1935,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2024,0,1938,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2024,0,2023,0,0,"IF", 0, 2, 0);
	trans[0][1905]	= settr(1904,0,1906,1002,0,"((input==26))", 1, 2, 0);
	trans[0][1906]	= settr(1905,0,1907,1003,1003,"fsm_state = 42", 1, 2, 0);
	trans[0][1907]	= settr(1906,0,3095,1004,1004,"output = 4", 1, 2, 0);
	trans[0][2026]	= settr(2025,0,3095,1,0,".(goto)", 0, 2, 0);
	trans[0][1908]	= settr(1907,0,1909,1005,0,"((input==17))", 1, 2, 0);
	trans[0][1909]	= settr(1908,0,1910,1006,1006,"fsm_state = 42", 1, 2, 0);
	trans[0][1910]	= settr(1909,0,3095,1007,1007,"output = 4", 1, 2, 0);
	trans[0][1911]	= settr(1910,0,1912,1008,0,"((input==22))", 1, 2, 0);
	trans[0][1912]	= settr(1911,0,1913,1009,1009,"fsm_state = 42", 1, 2, 0);
	trans[0][1913]	= settr(1912,0,3095,1010,1010,"output = 4", 1, 2, 0);
	trans[0][1914]	= settr(1913,0,1915,1011,0,"((input==23))", 1, 2, 0);
	trans[0][1915]	= settr(1914,0,17,1012,1012,"fsm_state = 36", 1, 2, 0);
	trans[0][1916]	= settr(1915,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1917]	= settr(1916,0,1918,1013,0,"((input==16))", 1, 2, 0);
	trans[0][1918]	= settr(1917,0,17,1014,1014,"fsm_state = 20", 1, 2, 0);
	trans[0][1919]	= settr(1918,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1920]	= settr(1919,0,1921,1015,0,"((input==27))", 1, 2, 0);
	trans[0][1921]	= settr(1920,0,1922,1016,1016,"fsm_state = 17", 1, 2, 0);
	trans[0][1922]	= settr(1921,0,3095,1017,1017,"output = 11", 1, 2, 0);
	trans[0][1923]	= settr(1922,0,1924,1018,0,"((input==19))", 1, 2, 0);
	trans[0][1924]	= settr(1923,0,17,1019,1019,"fsm_state = 17", 1, 2, 0);
	trans[0][1925]	= settr(1924,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1926]	= settr(1925,0,1927,1020,0,"((input==18))", 1, 2, 0);
	trans[0][1927]	= settr(1926,0,1928,1021,1021,"fsm_state = 17", 1, 2, 0);
	trans[0][1928]	= settr(1927,0,3095,1022,1022,"output = 8", 1, 2, 0);
	trans[0][1929]	= settr(1928,0,1930,1023,0,"((input==25))", 1, 2, 0);
	trans[0][1930]	= settr(1929,0,17,1024,1024,"fsm_state = 17", 1, 2, 0);
	trans[0][1931]	= settr(1930,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1932]	= settr(1931,0,1933,1025,0,"((input==21))", 1, 2, 0);
	trans[0][1933]	= settr(1932,0,1934,1026,1026,"fsm_state = 17", 1, 2, 0);
	trans[0][1934]	= settr(1933,0,3095,1027,1027,"output = 11", 1, 2, 0);
	trans[0][1935]	= settr(1934,0,1936,1028,0,"((input==24))", 1, 2, 0);
	trans[0][1936]	= settr(1935,0,17,1029,1029,"fsm_state = 17", 1, 2, 0);
	trans[0][1937]	= settr(1936,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1938]	= settr(1937,0,1939,1030,0,"((input==20))", 1, 2, 0);
	trans[0][1939]	= settr(1938,0,1940,1031,1031,"fsm_state = 9", 1, 2, 0);
	trans[0][1940]	= settr(1939,0,1941,1032,1032,"output = 12", 1, 2, 0);
	trans[0][1941]	= settr(1940,0,1979,1033,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][1979] = settr(1978,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1978,0,1972,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][1972]	= settr(1971,32,1977,1034,1034,"D_STEP13", 1, 2, 0);
	T = trans[0][1977] = settr(1976,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1976,0,1973,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1976,0,1975,0,0,"IF", 0, 2, 0);
	trans[0][1973]	= settr(1972,0,1,1035,0,"((dealt==0))", 1, 2, 0);
	trans[0][1974]	= settr(1973,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][1978]	= settr(1977,0,1980,1,0,".(goto)", 0, 2, 0);
	trans[0][1975]	= settr(1974,0,1976,2,0,"else", 0, 2, 0);
	trans[0][1976]	= settr(1975,0,1980,1,0,"(1)", 0, 2, 0);
	trans[0][1980]	= settr(1979,0,1981,1036,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][1981]	= settr(1980,0,1982,1037,1037,"output = 2", 1, 2, 0);
	trans[0][1982]	= settr(1981,0,2020,1038,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2020] = settr(2019,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2019,0,2013,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2013]	= settr(2012,32,2018,1039,1039,"D_STEP13", 1, 2, 0);
	T = trans[0][2018] = settr(2017,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2017,0,2014,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2017,0,2016,0,0,"IF", 0, 2, 0);
	trans[0][2014]	= settr(2013,0,1,1040,0,"((dealt==0))", 1, 2, 0);
	trans[0][2015]	= settr(2014,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2019]	= settr(2018,0,2021,1,0,".(goto)", 0, 2, 0);
	trans[0][2016]	= settr(2015,0,2017,2,0,"else", 0, 2, 0);
	trans[0][2017]	= settr(2016,0,2021,1,0,"(1)", 0, 2, 0);
	trans[0][2021]	= settr(2020,0,2022,1041,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2022]	= settr(2021,0,3095,1042,1042,"output = 6", 1, 2, 0);
	trans[0][2023]	= settr(2022,0,17,2,0,"else", 0, 2, 0);
	trans[0][2024]	= settr(2023,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2027]	= settr(2026,0,2107,1043,0,"((fsm_state==16))", 1, 2, 0);
	T = trans[0][2107] = settr(2106,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2106,0,2028,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2106,0,2031,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2106,0,2034,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2106,0,2037,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2106,0,2040,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2106,0,2043,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2106,0,2046,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2106,0,2049,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2106,0,2052,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2106,0,2055,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2106,0,2058,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2106,0,2061,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2106,0,2105,0,0,"IF", 0, 2, 0);
	trans[0][2028]	= settr(2027,0,2029,1044,0,"((input==26))", 1, 2, 0);
	trans[0][2029]	= settr(2028,0,2030,1045,1045,"fsm_state = 42", 1, 2, 0);
	trans[0][2030]	= settr(2029,0,3095,1046,1046,"output = 4", 1, 2, 0);
	trans[0][2108]	= settr(2107,0,3095,1,0,".(goto)", 0, 2, 0);
	trans[0][2031]	= settr(2030,0,2032,1047,0,"((input==17))", 1, 2, 0);
	trans[0][2032]	= settr(2031,0,2033,1048,1048,"fsm_state = 42", 1, 2, 0);
	trans[0][2033]	= settr(2032,0,3095,1049,1049,"output = 4", 1, 2, 0);
	trans[0][2034]	= settr(2033,0,2035,1050,0,"((input==22))", 1, 2, 0);
	trans[0][2035]	= settr(2034,0,2036,1051,1051,"fsm_state = 42", 1, 2, 0);
	trans[0][2036]	= settr(2035,0,3095,1052,1052,"output = 4", 1, 2, 0);
	trans[0][2037]	= settr(2036,0,2038,1053,0,"((input==23))", 1, 2, 0);
	trans[0][2038]	= settr(2037,0,17,1054,1054,"fsm_state = 36", 1, 2, 0);
	trans[0][2039]	= settr(2038,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2040]	= settr(2039,0,2041,1055,0,"((input==16))", 1, 2, 0);
	trans[0][2041]	= settr(2040,0,17,1056,1056,"fsm_state = 23", 1, 2, 0);
	trans[0][2042]	= settr(2041,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2043]	= settr(2042,0,2044,1057,0,"((input==27))", 1, 2, 0);
	trans[0][2044]	= settr(2043,0,2045,1058,1058,"fsm_state = 16", 1, 2, 0);
	trans[0][2045]	= settr(2044,0,3095,1059,1059,"output = 11", 1, 2, 0);
	trans[0][2046]	= settr(2045,0,2047,1060,0,"((input==19))", 1, 2, 0);
	trans[0][2047]	= settr(2046,0,17,1061,1061,"fsm_state = 16", 1, 2, 0);
	trans[0][2048]	= settr(2047,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2049]	= settr(2048,0,2050,1062,0,"((input==18))", 1, 2, 0);
	trans[0][2050]	= settr(2049,0,2051,1063,1063,"fsm_state = 16", 1, 2, 0);
	trans[0][2051]	= settr(2050,0,3095,1064,1064,"output = 8", 1, 2, 0);
	trans[0][2052]	= settr(2051,0,2053,1065,0,"((input==25))", 1, 2, 0);
	trans[0][2053]	= settr(2052,0,17,1066,1066,"fsm_state = 16", 1, 2, 0);
	trans[0][2054]	= settr(2053,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2055]	= settr(2054,0,2056,1067,0,"((input==21))", 1, 2, 0);
	trans[0][2056]	= settr(2055,0,2057,1068,1068,"fsm_state = 16", 1, 2, 0);
	trans[0][2057]	= settr(2056,0,3095,1069,1069,"output = 11", 1, 2, 0);
	trans[0][2058]	= settr(2057,0,2059,1070,0,"((input==24))", 1, 2, 0);
	trans[0][2059]	= settr(2058,0,17,1071,1071,"fsm_state = 16", 1, 2, 0);
	trans[0][2060]	= settr(2059,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2061]	= settr(2060,0,2062,1072,0,"((input==20))", 1, 2, 0);
	trans[0][2062]	= settr(2061,0,2063,1073,1073,"fsm_state = 9", 1, 2, 0);
	trans[0][2063]	= settr(2062,0,2064,1074,1074,"output = 12", 1, 2, 0);
	trans[0][2064]	= settr(2063,0,2102,1075,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2102] = settr(2101,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2101,0,2095,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2095]	= settr(2094,32,2100,1076,1076,"D_STEP13", 1, 2, 0);
	T = trans[0][2100] = settr(2099,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2099,0,2096,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2099,0,2098,0,0,"IF", 0, 2, 0);
	trans[0][2096]	= settr(2095,0,1,1077,0,"((dealt==0))", 1, 2, 0);
	trans[0][2097]	= settr(2096,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2101]	= settr(2100,0,2103,1,0,".(goto)", 0, 2, 0);
	trans[0][2098]	= settr(2097,0,2099,2,0,"else", 0, 2, 0);
	trans[0][2099]	= settr(2098,0,2103,1,0,"(1)", 0, 2, 0);
	trans[0][2103]	= settr(2102,0,2104,1078,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2104]	= settr(2103,0,3095,1079,1079,"output = 2", 1, 2, 0);
	trans[0][2105]	= settr(2104,0,17,2,0,"else", 0, 2, 0);
	trans[0][2106]	= settr(2105,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2109]	= settr(2108,0,2148,1080,0,"((fsm_state==15))", 1, 2, 0);
	T = trans[0][2148] = settr(2147,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2147,0,2110,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2147,0,2113,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2147,0,2116,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2147,0,2119,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2147,0,2122,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2147,0,2125,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2147,0,2128,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2147,0,2131,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2147,0,2134,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2147,0,2137,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2147,0,2140,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2147,0,2143,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2147,0,2146,0,0,"IF", 0, 2, 0);
	trans[0][2110]	= settr(2109,0,2111,1081,0,"((input==20))", 1, 2, 0);
	trans[0][2111]	= settr(2110,0,2112,1082,1082,"fsm_state = 42", 1, 2, 0);
	trans[0][2112]	= settr(2111,0,3095,1083,1083,"output = 4", 1, 2, 0);
	trans[0][2149]	= settr(2148,0,3095,1,0,".(goto)", 0, 2, 0);
	trans[0][2113]	= settr(2112,0,2114,1084,0,"((input==23))", 1, 2, 0);
	trans[0][2114]	= settr(2113,0,2115,1085,1085,"fsm_state = 42", 1, 2, 0);
	trans[0][2115]	= settr(2114,0,3095,1086,1086,"output = 4", 1, 2, 0);
	trans[0][2116]	= settr(2115,0,2117,1087,0,"((input==26))", 1, 2, 0);
	trans[0][2117]	= settr(2116,0,2118,1088,1088,"fsm_state = 42", 1, 2, 0);
	trans[0][2118]	= settr(2117,0,3095,1089,1089,"output = 4", 1, 2, 0);
	trans[0][2119]	= settr(2118,0,2120,1090,0,"((input==17))", 1, 2, 0);
	trans[0][2120]	= settr(2119,0,2121,1091,1091,"fsm_state = 16", 1, 2, 0);
	trans[0][2121]	= settr(2120,0,3095,1092,1092,"output = 13", 1, 2, 0);
	trans[0][2122]	= settr(2121,0,2123,1093,0,"((input==27))", 1, 2, 0);
	trans[0][2123]	= settr(2122,0,2124,1094,1094,"fsm_state = 15", 1, 2, 0);
	trans[0][2124]	= settr(2123,0,3095,1095,1095,"output = 11", 1, 2, 0);
	trans[0][2125]	= settr(2124,0,2126,1096,0,"((input==19))", 1, 2, 0);
	trans[0][2126]	= settr(2125,0,17,1097,1097,"fsm_state = 15", 1, 2, 0);
	trans[0][2127]	= settr(2126,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2128]	= settr(2127,0,2129,1098,0,"((input==18))", 1, 2, 0);
	trans[0][2129]	= settr(2128,0,2130,1099,1099,"fsm_state = 15", 1, 2, 0);
	trans[0][2130]	= settr(2129,0,3095,1100,1100,"output = 8", 1, 2, 0);
	trans[0][2131]	= settr(2130,0,2132,1101,0,"((input==25))", 1, 2, 0);
	trans[0][2132]	= settr(2131,0,17,1102,1102,"fsm_state = 15", 1, 2, 0);
	trans[0][2133]	= settr(2132,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2134]	= settr(2133,0,2135,1103,0,"((input==21))", 1, 2, 0);
	trans[0][2135]	= settr(2134,0,2136,1104,1104,"fsm_state = 15", 1, 2, 0);
	trans[0][2136]	= settr(2135,0,3095,1105,1105,"output = 11", 1, 2, 0);
	trans[0][2137]	= settr(2136,0,2138,1106,0,"((input==24))", 1, 2, 0);
	trans[0][2138]	= settr(2137,0,17,1107,1107,"fsm_state = 15", 1, 2, 0);
	trans[0][2139]	= settr(2138,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2140]	= settr(2139,0,2141,1108,0,"((input==22))", 1, 2, 0);
	trans[0][2141]	= settr(2140,0,2142,1109,1109,"fsm_state = 15", 1, 2, 0);
	trans[0][2142]	= settr(2141,0,3095,1110,1110,"output = 14", 1, 2, 0);
	trans[0][2143]	= settr(2142,0,2144,1111,0,"((input==16))", 1, 2, 0);
	trans[0][2144]	= settr(2143,0,17,1112,1112,"fsm_state = 13", 1, 2, 0);
	trans[0][2145]	= settr(2144,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2146]	= settr(2145,0,17,2,0,"else", 0, 2, 0);
	trans[0][2147]	= settr(2146,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2150]	= settr(2149,0,2230,1113,0,"((fsm_state==14))", 1, 2, 0);
	T = trans[0][2230] = settr(2229,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2229,0,2151,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2229,0,2154,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2229,0,2157,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2229,0,2160,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2229,0,2163,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2229,0,2166,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2229,0,2169,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2229,0,2172,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2229,0,2175,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2229,0,2178,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2229,0,2181,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2229,0,2184,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2229,0,2228,0,0,"IF", 0, 2, 0);
	trans[0][2151]	= settr(2150,0,2152,1114,0,"((input==26))", 1, 2, 0);
	trans[0][2152]	= settr(2151,0,2153,1115,1115,"fsm_state = 42", 1, 2, 0);
	trans[0][2153]	= settr(2152,0,3095,1116,1116,"output = 4", 1, 2, 0);
	trans[0][2231]	= settr(2230,0,3095,1,0,".(goto)", 0, 2, 0);
	trans[0][2154]	= settr(2153,0,2155,1117,0,"((input==17))", 1, 2, 0);
	trans[0][2155]	= settr(2154,0,2156,1118,1118,"fsm_state = 42", 1, 2, 0);
	trans[0][2156]	= settr(2155,0,3095,1119,1119,"output = 4", 1, 2, 0);
	trans[0][2157]	= settr(2156,0,2158,1120,0,"((input==22))", 1, 2, 0);
	trans[0][2158]	= settr(2157,0,2159,1121,1121,"fsm_state = 42", 1, 2, 0);
	trans[0][2159]	= settr(2158,0,3095,1122,1122,"output = 4", 1, 2, 0);
	trans[0][2160]	= settr(2159,0,2161,1123,0,"((input==23))", 1, 2, 0);
	trans[0][2161]	= settr(2160,0,17,1124,1124,"fsm_state = 36", 1, 2, 0);
	trans[0][2162]	= settr(2161,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2163]	= settr(2162,0,2164,1125,0,"((input==24))", 1, 2, 0);
	trans[0][2164]	= settr(2163,0,17,1126,1126,"fsm_state = 17", 1, 2, 0);
	trans[0][2165]	= settr(2164,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2166]	= settr(2165,0,2167,1127,0,"((input==27))", 1, 2, 0);
	trans[0][2167]	= settr(2166,0,2168,1128,1128,"fsm_state = 14", 1, 2, 0);
	trans[0][2168]	= settr(2167,0,3095,1129,1129,"output = 11", 1, 2, 0);
	trans[0][2169]	= settr(2168,0,2170,1130,0,"((input==18))", 1, 2, 0);
	trans[0][2170]	= settr(2169,0,2171,1131,1131,"fsm_state = 14", 1, 2, 0);
	trans[0][2171]	= settr(2170,0,3095,1132,1132,"output = 8", 1, 2, 0);
	trans[0][2172]	= settr(2171,0,2173,1133,0,"((input==21))", 1, 2, 0);
	trans[0][2173]	= settr(2172,0,2174,1134,1134,"fsm_state = 14", 1, 2, 0);
	trans[0][2174]	= settr(2173,0,3095,1135,1135,"output = 11", 1, 2, 0);
	trans[0][2175]	= settr(2174,0,2176,1136,0,"((input==19))", 1, 2, 0);
	trans[0][2176]	= settr(2175,0,17,1137,1137,"fsm_state = 11", 1, 2, 0);
	trans[0][2177]	= settr(2176,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2178]	= settr(2177,0,2179,1138,0,"((input==16))", 1, 2, 0);
	trans[0][2179]	= settr(2178,0,17,1139,1139,"fsm_state = 8", 1, 2, 0);
	trans[0][2180]	= settr(2179,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2181]	= settr(2180,0,2182,1140,0,"((input==25))", 1, 2, 0);
	trans[0][2182]	= settr(2181,0,17,1141,1141,"fsm_state = 7", 1, 2, 0);
	trans[0][2183]	= settr(2182,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2184]	= settr(2183,0,2185,1142,0,"((input==20))", 1, 2, 0);
	trans[0][2185]	= settr(2184,0,2186,1143,1143,"fsm_state = 6", 1, 2, 0);
	trans[0][2186]	= settr(2185,0,2187,1144,1144,"output = 12", 1, 2, 0);
	trans[0][2187]	= settr(2186,0,2225,1145,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2225] = settr(2224,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2224,0,2218,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2218]	= settr(2217,32,2223,1146,1146,"D_STEP13", 1, 2, 0);
	T = trans[0][2223] = settr(2222,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2222,0,2219,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2222,0,2221,0,0,"IF", 0, 2, 0);
	trans[0][2219]	= settr(2218,0,1,1147,0,"((dealt==0))", 1, 2, 0);
	trans[0][2220]	= settr(2219,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2224]	= settr(2223,0,2226,1,0,".(goto)", 0, 2, 0);
	trans[0][2221]	= settr(2220,0,2222,2,0,"else", 0, 2, 0);
	trans[0][2222]	= settr(2221,0,2226,1,0,"(1)", 0, 2, 0);
	trans[0][2226]	= settr(2225,0,2227,1148,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2227]	= settr(2226,0,3095,1149,1149,"output = 2", 1, 2, 0);
	trans[0][2228]	= settr(2227,0,17,2,0,"else", 0, 2, 0);
	trans[0][2229]	= settr(2228,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2232]	= settr(2231,0,2271,1150,0,"((fsm_state==13))", 1, 2, 0);
	T = trans[0][2271] = settr(2270,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2270,0,2233,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2270,0,2236,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2270,0,2239,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2270,0,2242,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2270,0,2245,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2270,0,2248,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2270,0,2251,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2270,0,2254,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2270,0,2257,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2270,0,2260,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2270,0,2263,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2270,0,2266,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2270,0,2269,0,0,"IF", 0, 2, 0);
	trans[0][2233]	= settr(2232,0,2234,1151,0,"((input==20))", 1, 2, 0);
	trans[0][2234]	= settr(2233,0,2235,1152,1152,"fsm_state = 40", 1, 2, 0);
	trans[0][2235]	= settr(2234,0,3095,1153,1153,"output = 4", 1, 2, 0);
	trans[0][2272]	= settr(2271,0,3095,1,0,".(goto)", 0, 2, 0);
	trans[0][2236]	= settr(2235,0,2237,1154,0,"((input==23))", 1, 2, 0);
	trans[0][2237]	= settr(2236,0,2238,1155,1155,"fsm_state = 40", 1, 2, 0);
	trans[0][2238]	= settr(2237,0,3095,1156,1156,"output = 4", 1, 2, 0);
	trans[0][2239]	= settr(2238,0,2240,1157,0,"((input==26))", 1, 2, 0);
	trans[0][2240]	= settr(2239,0,2241,1158,1158,"fsm_state = 40", 1, 2, 0);
	trans[0][2241]	= settr(2240,0,3095,1159,1159,"output = 4", 1, 2, 0);
	trans[0][2242]	= settr(2241,0,2243,1160,0,"((input==18))", 1, 2, 0);
	trans[0][2243]	= settr(2242,0,2244,1161,1161,"fsm_state = 24", 1, 2, 0);
	trans[0][2244]	= settr(2243,0,3095,1162,1162,"output = 15", 1, 2, 0);
	trans[0][2245]	= settr(2244,0,2246,1163,0,"((input==27))", 1, 2, 0);
	trans[0][2246]	= settr(2245,0,2247,1164,1164,"fsm_state = 13", 1, 2, 0);
	trans[0][2247]	= settr(2246,0,3095,1165,1165,"output = 11", 1, 2, 0);
	trans[0][2248]	= settr(2247,0,2249,1166,0,"((input==19))", 1, 2, 0);
	trans[0][2249]	= settr(2248,0,2250,1167,1167,"fsm_state = 13", 1, 2, 0);
	trans[0][2250]	= settr(2249,0,3095,1168,1168,"output = 5", 1, 2, 0);
	trans[0][2251]	= settr(2250,0,2252,1169,0,"((input==25))", 1, 2, 0);
	trans[0][2252]	= settr(2251,0,2253,1170,1170,"fsm_state = 13", 1, 2, 0);
	trans[0][2253]	= settr(2252,0,3095,1171,1171,"output = 5", 1, 2, 0);
	trans[0][2254]	= settr(2253,0,2255,1172,0,"((input==21))", 1, 2, 0);
	trans[0][2255]	= settr(2254,0,2256,1173,1173,"fsm_state = 13", 1, 2, 0);
	trans[0][2256]	= settr(2255,0,3095,1174,1174,"output = 11", 1, 2, 0);
	trans[0][2257]	= settr(2256,0,2258,1175,0,"((input==16))", 1, 2, 0);
	trans[0][2258]	= settr(2257,0,2259,1176,1176,"fsm_state = 13", 1, 2, 0);
	trans[0][2259]	= settr(2258,0,3095,1177,1177,"output = 5", 1, 2, 0);
	trans[0][2260]	= settr(2259,0,2261,1178,0,"((input==24))", 1, 2, 0);
	trans[0][2261]	= settr(2260,0,2262,1179,1179,"fsm_state = 13", 1, 2, 0);
	trans[0][2262]	= settr(2261,0,3095,1180,1180,"output = 5", 1, 2, 0);
	trans[0][2263]	= settr(2262,0,2264,1181,0,"((input==22))", 1, 2, 0);
	trans[0][2264]	= settr(2263,0,2265,1182,1182,"fsm_state = 13", 1, 2, 0);
	trans[0][2265]	= settr(2264,0,3095,1183,1183,"output = 14", 1, 2, 0);
	trans[0][2266]	= settr(2265,0,2267,1184,0,"((input==17))", 1, 2, 0);
	trans[0][2267]	= settr(2266,0,2268,1185,1185,"fsm_state = 5", 1, 2, 0);
	trans[0][2268]	= settr(2267,0,3095,1186,1186,"output = 13", 1, 2, 0);
	trans[0][2269]	= settr(2268,0,17,2,0,"else", 0, 2, 0);
	trans[0][2270]	= settr(2269,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2273]	= settr(2272,0,2312,1187,0,"((fsm_state==12))", 1, 2, 0);
	T = trans[0][2312] = settr(2311,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2311,0,2274,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2311,0,2277,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2311,0,2280,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2311,0,2283,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2311,0,2286,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2311,0,2289,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2311,0,2292,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2311,0,2295,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2311,0,2298,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2311,0,2301,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2311,0,2304,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2311,0,2307,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2311,0,2310,0,0,"IF", 0, 2, 0);
	trans[0][2274]	= settr(2273,0,2275,1188,0,"((input==20))", 1, 2, 0);
	trans[0][2275]	= settr(2274,0,2276,1189,1189,"fsm_state = 42", 1, 2, 0);
	trans[0][2276]	= settr(2275,0,3095,1190,1190,"output = 4", 1, 2, 0);
	trans[0][2313]	= settr(2312,0,3095,1,0,".(goto)", 0, 2, 0);
	trans[0][2277]	= settr(2276,0,2278,1191,0,"((input==23))", 1, 2, 0);
	trans[0][2278]	= settr(2277,0,2279,1192,1192,"fsm_state = 42", 1, 2, 0);
	trans[0][2279]	= settr(2278,0,3095,1193,1193,"output = 4", 1, 2, 0);
	trans[0][2280]	= settr(2279,0,2281,1194,0,"((input==26))", 1, 2, 0);
	trans[0][2281]	= settr(2280,0,2282,1195,1195,"fsm_state = 42", 1, 2, 0);
	trans[0][2282]	= settr(2281,0,3095,1196,1196,"output = 4", 1, 2, 0);
	trans[0][2283]	= settr(2282,0,2284,1197,0,"((input==16))", 1, 2, 0);
	trans[0][2284]	= settr(2283,0,2285,1198,1198,"fsm_state = 13", 1, 2, 0);
	trans[0][2285]	= settr(2284,0,3095,1199,1199,"output = 7", 1, 2, 0);
	trans[0][2286]	= settr(2285,0,2287,1200,0,"((input==27))", 1, 2, 0);
	trans[0][2287]	= settr(2286,0,2288,1201,1201,"fsm_state = 12", 1, 2, 0);
	trans[0][2288]	= settr(2287,0,3095,1202,1202,"output = 11", 1, 2, 0);
	trans[0][2289]	= settr(2288,0,2290,1203,0,"((input==19))", 1, 2, 0);
	trans[0][2290]	= settr(2289,0,2291,1204,1204,"fsm_state = 12", 1, 2, 0);
	trans[0][2291]	= settr(2290,0,3095,1205,1205,"output = 10", 1, 2, 0);
	trans[0][2292]	= settr(2291,0,2293,1206,0,"((input==18))", 1, 2, 0);
	trans[0][2293]	= settr(2292,0,2294,1207,1207,"fsm_state = 12", 1, 2, 0);
	trans[0][2294]	= settr(2293,0,3095,1208,1208,"output = 8", 1, 2, 0);
	trans[0][2295]	= settr(2294,0,2296,1209,0,"((input==25))", 1, 2, 0);
	trans[0][2296]	= settr(2295,0,17,1210,1210,"fsm_state = 12", 1, 2, 0);
	trans[0][2297]	= settr(2296,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2298]	= settr(2297,0,2299,1211,0,"((input==21))", 1, 2, 0);
	trans[0][2299]	= settr(2298,0,2300,1212,1212,"fsm_state = 12", 1, 2, 0);
	trans[0][2300]	= settr(2299,0,3095,1213,1213,"output = 11", 1, 2, 0);
	trans[0][2301]	= settr(2300,0,2302,1214,0,"((input==24))", 1, 2, 0);
	trans[0][2302]	= settr(2301,0,17,1215,1215,"fsm_state = 12", 1, 2, 0);
	trans[0][2303]	= settr(2302,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2304]	= settr(2303,0,2305,1216,0,"((input==22))", 1, 2, 0);
	trans[0][2305]	= settr(2304,0,2306,1217,1217,"fsm_state = 12", 1, 2, 0);
	trans[0][2306]	= settr(2305,0,3095,1218,1218,"output = 14", 1, 2, 0);
	trans[0][2307]	= settr(2306,0,2308,1219,0,"((input==17))", 1, 2, 0);
	trans[0][2308]	= settr(2307,0,2309,1220,1220,"fsm_state = 7", 1, 2, 0);
	trans[0][2309]	= settr(2308,0,3095,1221,1221,"output = 13", 1, 2, 0);
	trans[0][2310]	= settr(2309,0,17,2,0,"else", 0, 2, 0);
	trans[0][2311]	= settr(2310,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2314]	= settr(2313,0,2435,1222,0,"((fsm_state==11))", 1, 2, 0);
	T = trans[0][2435] = settr(2434,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2434,0,2315,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2434,0,2318,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2434,0,2321,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2434,0,2324,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2434,0,2327,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2434,0,2330,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2434,0,2333,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2434,0,2336,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2434,0,2339,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2434,0,2342,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2434,0,2345,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2434,0,2430,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2434,0,2433,0,0,"IF", 0, 2, 0);
	trans[0][2315]	= settr(2314,0,2316,1223,0,"((input==26))", 1, 2, 0);
	trans[0][2316]	= settr(2315,0,2317,1224,1224,"fsm_state = 42", 1, 2, 0);
	trans[0][2317]	= settr(2316,0,3095,1225,1225,"output = 4", 1, 2, 0);
	trans[0][2436]	= settr(2435,0,3095,1,0,".(goto)", 0, 2, 0);
	trans[0][2318]	= settr(2317,0,2319,1226,0,"((input==17))", 1, 2, 0);
	trans[0][2319]	= settr(2318,0,2320,1227,1227,"fsm_state = 42", 1, 2, 0);
	trans[0][2320]	= settr(2319,0,3095,1228,1228,"output = 4", 1, 2, 0);
	trans[0][2321]	= settr(2320,0,2322,1229,0,"((input==22))", 1, 2, 0);
	trans[0][2322]	= settr(2321,0,2323,1230,1230,"fsm_state = 42", 1, 2, 0);
	trans[0][2323]	= settr(2322,0,3095,1231,1231,"output = 4", 1, 2, 0);
	trans[0][2324]	= settr(2323,0,2325,1232,0,"((input==23))", 1, 2, 0);
	trans[0][2325]	= settr(2324,0,17,1233,1233,"fsm_state = 36", 1, 2, 0);
	trans[0][2326]	= settr(2325,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2327]	= settr(2326,0,2328,1234,0,"((input==24))", 1, 2, 0);
	trans[0][2328]	= settr(2327,0,17,1235,1235,"fsm_state = 17", 1, 2, 0);
	trans[0][2329]	= settr(2328,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2330]	= settr(2329,0,2331,1236,0,"((input==27))", 1, 2, 0);
	trans[0][2331]	= settr(2330,0,2332,1237,1237,"fsm_state = 11", 1, 2, 0);
	trans[0][2332]	= settr(2331,0,3095,1238,1238,"output = 11", 1, 2, 0);
	trans[0][2333]	= settr(2332,0,2334,1239,0,"((input==19))", 1, 2, 0);
	trans[0][2334]	= settr(2333,0,17,1240,1240,"fsm_state = 11", 1, 2, 0);
	trans[0][2335]	= settr(2334,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2336]	= settr(2335,0,2337,1241,0,"((input==18))", 1, 2, 0);
	trans[0][2337]	= settr(2336,0,2338,1242,1242,"fsm_state = 11", 1, 2, 0);
	trans[0][2338]	= settr(2337,0,3095,1243,1243,"output = 8", 1, 2, 0);
	trans[0][2339]	= settr(2338,0,2340,1244,0,"((input==21))", 1, 2, 0);
	trans[0][2340]	= settr(2339,0,2341,1245,1245,"fsm_state = 11", 1, 2, 0);
	trans[0][2341]	= settr(2340,0,3095,1246,1246,"output = 11", 1, 2, 0);
	trans[0][2342]	= settr(2341,0,2343,1247,0,"((input==16))", 1, 2, 0);
	trans[0][2343]	= settr(2342,0,17,1248,1248,"fsm_state = 8", 1, 2, 0);
	trans[0][2344]	= settr(2343,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2345]	= settr(2344,0,2346,1249,0,"((input==20))", 1, 2, 0);
	trans[0][2346]	= settr(2345,0,2347,1250,1250,"fsm_state = 6", 1, 2, 0);
	trans[0][2347]	= settr(2346,0,2348,1251,1251,"output = 12", 1, 2, 0);
	trans[0][2348]	= settr(2347,0,2386,1252,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2386] = settr(2385,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2385,0,2379,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2379]	= settr(2378,32,2384,1253,1253,"D_STEP13", 1, 2, 0);
	T = trans[0][2384] = settr(2383,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2383,0,2380,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2383,0,2382,0,0,"IF", 0, 2, 0);
	trans[0][2380]	= settr(2379,0,1,1254,0,"((dealt==0))", 1, 2, 0);
	trans[0][2381]	= settr(2380,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2385]	= settr(2384,0,2387,1,0,".(goto)", 0, 2, 0);
	trans[0][2382]	= settr(2381,0,2383,2,0,"else", 0, 2, 0);
	trans[0][2383]	= settr(2382,0,2387,1,0,"(1)", 0, 2, 0);
	trans[0][2387]	= settr(2386,0,2388,1255,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2388]	= settr(2387,0,2389,1256,1256,"output = 2", 1, 2, 0);
	trans[0][2389]	= settr(2388,0,2427,1257,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2427] = settr(2426,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2426,0,2420,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2420]	= settr(2419,32,2425,1258,1258,"D_STEP13", 1, 2, 0);
	T = trans[0][2425] = settr(2424,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2424,0,2421,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2424,0,2423,0,0,"IF", 0, 2, 0);
	trans[0][2421]	= settr(2420,0,1,1259,0,"((dealt==0))", 1, 2, 0);
	trans[0][2422]	= settr(2421,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2426]	= settr(2425,0,2428,1,0,".(goto)", 0, 2, 0);
	trans[0][2423]	= settr(2422,0,2424,2,0,"else", 0, 2, 0);
	trans[0][2424]	= settr(2423,0,2428,1,0,"(1)", 0, 2, 0);
	trans[0][2428]	= settr(2427,0,2429,1260,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2429]	= settr(2428,0,3095,1261,1261,"output = 6", 1, 2, 0);
	trans[0][2430]	= settr(2429,0,2431,1262,0,"((input==25))", 1, 2, 0);
	trans[0][2431]	= settr(2430,0,17,1263,1263,"fsm_state = 4", 1, 2, 0);
	trans[0][2432]	= settr(2431,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2433]	= settr(2432,0,17,2,0,"else", 0, 2, 0);
	trans[0][2434]	= settr(2433,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2437]	= settr(2436,0,2476,1264,0,"((fsm_state==10))", 1, 2, 0);
	T = trans[0][2476] = settr(2475,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2475,0,2438,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2475,0,2441,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2475,0,2444,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2475,0,2447,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2475,0,2450,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2475,0,2453,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2475,0,2456,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2475,0,2459,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2475,0,2462,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2475,0,2465,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2475,0,2468,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2475,0,2471,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2475,0,2474,0,0,"IF", 0, 2, 0);
	trans[0][2438]	= settr(2437,0,2439,1265,0,"((input==26))", 1, 2, 0);
	trans[0][2439]	= settr(2438,0,2440,1266,1266,"fsm_state = 40", 1, 2, 0);
	trans[0][2440]	= settr(2439,0,3095,1267,1267,"output = 4", 1, 2, 0);
	trans[0][2477]	= settr(2476,0,3095,1,0,".(goto)", 0, 2, 0);
	trans[0][2441]	= settr(2440,0,2442,1268,0,"((input==17))", 1, 2, 0);
	trans[0][2442]	= settr(2441,0,2443,1269,1269,"fsm_state = 40", 1, 2, 0);
	trans[0][2443]	= settr(2442,0,3095,1270,1270,"output = 4", 1, 2, 0);
	trans[0][2444]	= settr(2443,0,2445,1271,0,"((input==22))", 1, 2, 0);
	trans[0][2445]	= settr(2444,0,2446,1272,1272,"fsm_state = 40", 1, 2, 0);
	trans[0][2446]	= settr(2445,0,3095,1273,1273,"output = 4", 1, 2, 0);
	trans[0][2447]	= settr(2446,0,2448,1274,0,"((input==23))", 1, 2, 0);
	trans[0][2448]	= settr(2447,0,17,1275,1275,"fsm_state = 30", 1, 2, 0);
	trans[0][2449]	= settr(2448,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2450]	= settr(2449,0,2451,1276,0,"((input==27))", 1, 2, 0);
	trans[0][2451]	= settr(2450,0,2452,1277,1277,"fsm_state = 10", 1, 2, 0);
	trans[0][2452]	= settr(2451,0,3095,1278,1278,"output = 11", 1, 2, 0);
	trans[0][2453]	= settr(2452,0,2454,1279,0,"((input==20))", 1, 2, 0);
	trans[0][2454]	= settr(2453,0,17,1280,1280,"fsm_state = 10", 1, 2, 0);
	trans[0][2455]	= settr(2454,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2456]	= settr(2455,0,2457,1281,0,"((input==19))", 1, 2, 0);
	trans[0][2457]	= settr(2456,0,2458,1282,1282,"fsm_state = 10", 1, 2, 0);
	trans[0][2458]	= settr(2457,0,3095,1283,1283,"output = 5", 1, 2, 0);
	trans[0][2459]	= settr(2458,0,2460,1284,0,"((input==25))", 1, 2, 0);
	trans[0][2460]	= settr(2459,0,2461,1285,1285,"fsm_state = 10", 1, 2, 0);
	trans[0][2461]	= settr(2460,0,3095,1286,1286,"output = 5", 1, 2, 0);
	trans[0][2462]	= settr(2461,0,2463,1287,0,"((input==21))", 1, 2, 0);
	trans[0][2463]	= settr(2462,0,2464,1288,1288,"fsm_state = 10", 1, 2, 0);
	trans[0][2464]	= settr(2463,0,3095,1289,1289,"output = 11", 1, 2, 0);
	trans[0][2465]	= settr(2464,0,2466,1290,0,"((input==16))", 1, 2, 0);
	trans[0][2466]	= settr(2465,0,2467,1291,1291,"fsm_state = 10", 1, 2, 0);
	trans[0][2467]	= settr(2466,0,3095,1292,1292,"output = 5", 1, 2, 0);
	trans[0][2468]	= settr(2467,0,2469,1293,0,"((input==24))", 1, 2, 0);
	trans[0][2469]	= settr(2468,0,2470,1294,1294,"fsm_state = 10", 1, 2, 0);
	trans[0][2470]	= settr(2469,0,3095,1295,1295,"output = 5", 1, 2, 0);
	trans[0][2471]	= settr(2470,0,2472,1296,0,"((input==18))", 1, 2, 0);
	trans[0][2472]	= settr(2471,0,2473,1297,1297,"fsm_state = 6", 1, 2, 0);
	trans[0][2473]	= settr(2472,0,3095,1298,1298,"output = 15", 1, 2, 0);
	trans[0][2474]	= settr(2473,0,17,2,0,"else", 0, 2, 0);
	trans[0][2475]	= settr(2474,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2478]	= settr(2477,0,2517,1299,0,"((fsm_state==9))", 1, 2, 0);
	T = trans[0][2517] = settr(2516,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2516,0,2479,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2516,0,2482,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2516,0,2485,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2516,0,2488,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2516,0,2491,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2516,0,2494,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2516,0,2497,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2516,0,2500,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2516,0,2503,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2516,0,2506,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2516,0,2509,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2516,0,2512,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2516,0,2515,0,0,"IF", 0, 2, 0);
	trans[0][2479]	= settr(2478,0,2480,1300,0,"((input==26))", 1, 2, 0);
	trans[0][2480]	= settr(2479,0,2481,1301,1301,"fsm_state = 42", 1, 2, 0);
	trans[0][2481]	= settr(2480,0,3095,1302,1302,"output = 4", 1, 2, 0);
	trans[0][2518]	= settr(2517,0,3095,1,0,".(goto)", 0, 2, 0);
	trans[0][2482]	= settr(2481,0,2483,1303,0,"((input==17))", 1, 2, 0);
	trans[0][2483]	= settr(2482,0,2484,1304,1304,"fsm_state = 42", 1, 2, 0);
	trans[0][2484]	= settr(2483,0,3095,1305,1305,"output = 4", 1, 2, 0);
	trans[0][2485]	= settr(2484,0,2486,1306,0,"((input==22))", 1, 2, 0);
	trans[0][2486]	= settr(2485,0,2487,1307,1307,"fsm_state = 42", 1, 2, 0);
	trans[0][2487]	= settr(2486,0,3095,1308,1308,"output = 4", 1, 2, 0);
	trans[0][2488]	= settr(2487,0,2489,1309,0,"((input==23))", 1, 2, 0);
	trans[0][2489]	= settr(2488,0,17,1310,1310,"fsm_state = 26", 1, 2, 0);
	trans[0][2490]	= settr(2489,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2491]	= settr(2490,0,2492,1311,0,"((input==16))", 1, 2, 0);
	trans[0][2492]	= settr(2491,0,17,1312,1312,"fsm_state = 10", 1, 2, 0);
	trans[0][2493]	= settr(2492,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2494]	= settr(2493,0,2495,1313,0,"((input==27))", 1, 2, 0);
	trans[0][2495]	= settr(2494,0,2496,1314,1314,"fsm_state = 9", 1, 2, 0);
	trans[0][2496]	= settr(2495,0,3095,1315,1315,"output = 11", 1, 2, 0);
	trans[0][2497]	= settr(2496,0,2498,1316,0,"((input==20))", 1, 2, 0);
	trans[0][2498]	= settr(2497,0,17,1317,1317,"fsm_state = 9", 1, 2, 0);
	trans[0][2499]	= settr(2498,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2500]	= settr(2499,0,2501,1318,0,"((input==19))", 1, 2, 0);
	trans[0][2501]	= settr(2500,0,17,1319,1319,"fsm_state = 9", 1, 2, 0);
	trans[0][2502]	= settr(2501,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2503]	= settr(2502,0,2504,1320,0,"((input==18))", 1, 2, 0);
	trans[0][2504]	= settr(2503,0,2505,1321,1321,"fsm_state = 9", 1, 2, 0);
	trans[0][2505]	= settr(2504,0,3095,1322,1322,"output = 8", 1, 2, 0);
	trans[0][2506]	= settr(2505,0,2507,1323,0,"((input==25))", 1, 2, 0);
	trans[0][2507]	= settr(2506,0,17,1324,1324,"fsm_state = 9", 1, 2, 0);
	trans[0][2508]	= settr(2507,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2509]	= settr(2508,0,2510,1325,0,"((input==21))", 1, 2, 0);
	trans[0][2510]	= settr(2509,0,2511,1326,1326,"fsm_state = 9", 1, 2, 0);
	trans[0][2511]	= settr(2510,0,3095,1327,1327,"output = 11", 1, 2, 0);
	trans[0][2512]	= settr(2511,0,2513,1328,0,"((input==24))", 1, 2, 0);
	trans[0][2513]	= settr(2512,0,17,1329,1329,"fsm_state = 9", 1, 2, 0);
	trans[0][2514]	= settr(2513,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2515]	= settr(2514,0,17,2,0,"else", 0, 2, 0);
	trans[0][2516]	= settr(2515,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2519]	= settr(2518,0,2640,1330,0,"((fsm_state==8))", 1, 2, 0);
	T = trans[0][2640] = settr(2639,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2639,0,2520,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2639,0,2523,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2639,0,2526,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2639,0,2529,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2639,0,2532,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2639,0,2535,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2639,0,2538,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2639,0,2541,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2639,0,2544,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2639,0,2547,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2639,0,2550,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2639,0,2553,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2639,0,2638,0,0,"IF", 0, 2, 0);
	trans[0][2520]	= settr(2519,0,2521,1331,0,"((input==26))", 1, 2, 0);
	trans[0][2521]	= settr(2520,0,2522,1332,1332,"fsm_state = 40", 1, 2, 0);
	trans[0][2522]	= settr(2521,0,3095,1333,1333,"output = 4", 1, 2, 0);
	trans[0][2641]	= settr(2640,0,3095,1,0,".(goto)", 0, 2, 0);
	trans[0][2523]	= settr(2522,0,2524,1334,0,"((input==17))", 1, 2, 0);
	trans[0][2524]	= settr(2523,0,2525,1335,1335,"fsm_state = 40", 1, 2, 0);
	trans[0][2525]	= settr(2524,0,3095,1336,1336,"output = 4", 1, 2, 0);
	trans[0][2526]	= settr(2525,0,2527,1337,0,"((input==22))", 1, 2, 0);
	trans[0][2527]	= settr(2526,0,2528,1338,1338,"fsm_state = 40", 1, 2, 0);
	trans[0][2528]	= settr(2527,0,3095,1339,1339,"output = 4", 1, 2, 0);
	trans[0][2529]	= settr(2528,0,2530,1340,0,"((input==23))", 1, 2, 0);
	trans[0][2530]	= settr(2529,0,17,1341,1341,"fsm_state = 38", 1, 2, 0);
	trans[0][2531]	= settr(2530,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2532]	= settr(2531,0,2533,1342,0,"((input==27))", 1, 2, 0);
	trans[0][2533]	= settr(2532,0,2534,1343,1343,"fsm_state = 8", 1, 2, 0);
	trans[0][2534]	= settr(2533,0,3095,1344,1344,"output = 11", 1, 2, 0);
	trans[0][2535]	= settr(2534,0,2536,1345,0,"((input==19))", 1, 2, 0);
	trans[0][2536]	= settr(2535,0,2537,1346,1346,"fsm_state = 8", 1, 2, 0);
	trans[0][2537]	= settr(2536,0,3095,1347,1347,"output = 5", 1, 2, 0);
	trans[0][2538]	= settr(2537,0,2539,1348,0,"((input==25))", 1, 2, 0);
	trans[0][2539]	= settr(2538,0,2540,1349,1349,"fsm_state = 8", 1, 2, 0);
	trans[0][2540]	= settr(2539,0,3095,1350,1350,"output = 5", 1, 2, 0);
	trans[0][2541]	= settr(2540,0,2542,1351,0,"((input==21))", 1, 2, 0);
	trans[0][2542]	= settr(2541,0,2543,1352,1352,"fsm_state = 8", 1, 2, 0);
	trans[0][2543]	= settr(2542,0,3095,1353,1353,"output = 11", 1, 2, 0);
	trans[0][2544]	= settr(2543,0,2545,1354,0,"((input==16))", 1, 2, 0);
	trans[0][2545]	= settr(2544,0,2546,1355,1355,"fsm_state = 8", 1, 2, 0);
	trans[0][2546]	= settr(2545,0,3095,1356,1356,"output = 5", 1, 2, 0);
	trans[0][2547]	= settr(2546,0,2548,1357,0,"((input==24))", 1, 2, 0);
	trans[0][2548]	= settr(2547,0,2549,1358,1358,"fsm_state = 8", 1, 2, 0);
	trans[0][2549]	= settr(2548,0,3095,1359,1359,"output = 5", 1, 2, 0);
	trans[0][2550]	= settr(2549,0,2551,1360,0,"((input==18))", 1, 2, 0);
	trans[0][2551]	= settr(2550,0,17,1361,1361,"fsm_state = 4", 1, 2, 0);
	trans[0][2552]	= settr(2551,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2553]	= settr(2552,0,2554,1362,0,"((input==20))", 1, 2, 0);
	trans[0][2554]	= settr(2553,0,2555,1363,1363,"fsm_state = 3", 1, 2, 0);
	trans[0][2555]	= settr(2554,0,2556,1364,1364,"output = 12", 1, 2, 0);
	trans[0][2556]	= settr(2555,0,2594,1365,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2594] = settr(2593,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2593,0,2587,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2587]	= settr(2586,32,2592,1366,1366,"D_STEP13", 1, 2, 0);
	T = trans[0][2592] = settr(2591,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2591,0,2588,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2591,0,2590,0,0,"IF", 0, 2, 0);
	trans[0][2588]	= settr(2587,0,1,1367,0,"((dealt==0))", 1, 2, 0);
	trans[0][2589]	= settr(2588,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2593]	= settr(2592,0,2595,1,0,".(goto)", 0, 2, 0);
	trans[0][2590]	= settr(2589,0,2591,2,0,"else", 0, 2, 0);
	trans[0][2591]	= settr(2590,0,2595,1,0,"(1)", 0, 2, 0);
	trans[0][2595]	= settr(2594,0,2596,1368,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2596]	= settr(2595,0,2597,1369,1369,"output = 2", 1, 2, 0);
	trans[0][2597]	= settr(2596,0,2635,1370,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2635] = settr(2634,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2634,0,2628,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2628]	= settr(2627,32,2633,1371,1371,"D_STEP13", 1, 2, 0);
	T = trans[0][2633] = settr(2632,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2632,0,2629,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2632,0,2631,0,0,"IF", 0, 2, 0);
	trans[0][2629]	= settr(2628,0,1,1372,0,"((dealt==0))", 1, 2, 0);
	trans[0][2630]	= settr(2629,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2634]	= settr(2633,0,2636,1,0,".(goto)", 0, 2, 0);
	trans[0][2631]	= settr(2630,0,2632,2,0,"else", 0, 2, 0);
	trans[0][2632]	= settr(2631,0,2636,1,0,"(1)", 0, 2, 0);
	trans[0][2636]	= settr(2635,0,2637,1373,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2637]	= settr(2636,0,3095,1374,1374,"output = 6", 1, 2, 0);
	trans[0][2638]	= settr(2637,0,17,2,0,"else", 0, 2, 0);
	trans[0][2639]	= settr(2638,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2642]	= settr(2641,0,2722,1375,0,"((fsm_state==7))", 1, 2, 0);
	T = trans[0][2722] = settr(2721,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2721,0,2643,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2721,0,2646,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2721,0,2649,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2721,0,2652,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2721,0,2655,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2721,0,2658,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2721,0,2661,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2721,0,2664,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2721,0,2667,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2721,0,2670,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2721,0,2673,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2721,0,2676,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2721,0,2720,0,0,"IF", 0, 2, 0);
	trans[0][2643]	= settr(2642,0,2644,1376,0,"((input==26))", 1, 2, 0);
	trans[0][2644]	= settr(2643,0,2645,1377,1377,"fsm_state = 42", 1, 2, 0);
	trans[0][2645]	= settr(2644,0,3095,1378,1378,"output = 4", 1, 2, 0);
	trans[0][2723]	= settr(2722,0,3095,1,0,".(goto)", 0, 2, 0);
	trans[0][2646]	= settr(2645,0,2647,1379,0,"((input==17))", 1, 2, 0);
	trans[0][2647]	= settr(2646,0,2648,1380,1380,"fsm_state = 42", 1, 2, 0);
	trans[0][2648]	= settr(2647,0,3095,1381,1381,"output = 4", 1, 2, 0);
	trans[0][2649]	= settr(2648,0,2650,1382,0,"((input==22))", 1, 2, 0);
	trans[0][2650]	= settr(2649,0,2651,1383,1383,"fsm_state = 42", 1, 2, 0);
	trans[0][2651]	= settr(2650,0,3095,1384,1384,"output = 4", 1, 2, 0);
	trans[0][2652]	= settr(2651,0,2653,1385,0,"((input==23))", 1, 2, 0);
	trans[0][2653]	= settr(2652,0,17,1386,1386,"fsm_state = 36", 1, 2, 0);
	trans[0][2654]	= settr(2653,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2655]	= settr(2654,0,2656,1387,0,"((input==16))", 1, 2, 0);
	trans[0][2656]	= settr(2655,0,17,1388,1388,"fsm_state = 8", 1, 2, 0);
	trans[0][2657]	= settr(2656,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2658]	= settr(2657,0,2659,1389,0,"((input==27))", 1, 2, 0);
	trans[0][2659]	= settr(2658,0,2660,1390,1390,"fsm_state = 7", 1, 2, 0);
	trans[0][2660]	= settr(2659,0,3095,1391,1391,"output = 11", 1, 2, 0);
	trans[0][2661]	= settr(2660,0,2662,1392,0,"((input==18))", 1, 2, 0);
	trans[0][2662]	= settr(2661,0,2663,1393,1393,"fsm_state = 7", 1, 2, 0);
	trans[0][2663]	= settr(2662,0,3095,1394,1394,"output = 8", 1, 2, 0);
	trans[0][2664]	= settr(2663,0,2665,1395,0,"((input==25))", 1, 2, 0);
	trans[0][2665]	= settr(2664,0,17,1396,1396,"fsm_state = 7", 1, 2, 0);
	trans[0][2666]	= settr(2665,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2667]	= settr(2666,0,2668,1397,0,"((input==21))", 1, 2, 0);
	trans[0][2668]	= settr(2667,0,2669,1398,1398,"fsm_state = 7", 1, 2, 0);
	trans[0][2669]	= settr(2668,0,3095,1399,1399,"output = 11", 1, 2, 0);
	trans[0][2670]	= settr(2669,0,2671,1400,0,"((input==24))", 1, 2, 0);
	trans[0][2671]	= settr(2670,0,17,1401,1401,"fsm_state = 7", 1, 2, 0);
	trans[0][2672]	= settr(2671,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2673]	= settr(2672,0,2674,1402,0,"((input==19))", 1, 2, 0);
	trans[0][2674]	= settr(2673,0,17,1403,1403,"fsm_state = 4", 1, 2, 0);
	trans[0][2675]	= settr(2674,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2676]	= settr(2675,0,2677,1404,0,"((input==20))", 1, 2, 0);
	trans[0][2677]	= settr(2676,0,2678,1405,1405,"fsm_state = 2", 1, 2, 0);
	trans[0][2678]	= settr(2677,0,2679,1406,1406,"output = 12", 1, 2, 0);
	trans[0][2679]	= settr(2678,0,2717,1407,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2717] = settr(2716,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2716,0,2710,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2710]	= settr(2709,32,2715,1408,1408,"D_STEP13", 1, 2, 0);
	T = trans[0][2715] = settr(2714,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2714,0,2711,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2714,0,2713,0,0,"IF", 0, 2, 0);
	trans[0][2711]	= settr(2710,0,1,1409,0,"((dealt==0))", 1, 2, 0);
	trans[0][2712]	= settr(2711,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2716]	= settr(2715,0,2718,1,0,".(goto)", 0, 2, 0);
	trans[0][2713]	= settr(2712,0,2714,2,0,"else", 0, 2, 0);
	trans[0][2714]	= settr(2713,0,2718,1,0,"(1)", 0, 2, 0);
	trans[0][2718]	= settr(2717,0,2719,1410,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2719]	= settr(2718,0,3095,1411,1411,"output = 2", 1, 2, 0);
	trans[0][2720]	= settr(2719,0,17,2,0,"else", 0, 2, 0);
	trans[0][2721]	= settr(2720,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2724]	= settr(2723,0,2763,1412,0,"((fsm_state==6))", 1, 2, 0);
	T = trans[0][2763] = settr(2762,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2762,0,2725,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2762,0,2728,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2762,0,2731,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2762,0,2734,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2762,0,2737,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2762,0,2740,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2762,0,2743,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2762,0,2746,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2762,0,2749,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2762,0,2752,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2762,0,2755,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2762,0,2758,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2762,0,2761,0,0,"IF", 0, 2, 0);
	trans[0][2725]	= settr(2724,0,2726,1413,0,"((input==26))", 1, 2, 0);
	trans[0][2726]	= settr(2725,0,2727,1414,1414,"fsm_state = 42", 1, 2, 0);
	trans[0][2727]	= settr(2726,0,3095,1415,1415,"output = 4", 1, 2, 0);
	trans[0][2764]	= settr(2763,0,3095,1,0,".(goto)", 0, 2, 0);
	trans[0][2728]	= settr(2727,0,2729,1416,0,"((input==17))", 1, 2, 0);
	trans[0][2729]	= settr(2728,0,2730,1417,1417,"fsm_state = 42", 1, 2, 0);
	trans[0][2730]	= settr(2729,0,3095,1418,1418,"output = 4", 1, 2, 0);
	trans[0][2731]	= settr(2730,0,2732,1419,0,"((input==22))", 1, 2, 0);
	trans[0][2732]	= settr(2731,0,2733,1420,1420,"fsm_state = 42", 1, 2, 0);
	trans[0][2733]	= settr(2732,0,3095,1421,1421,"output = 4", 1, 2, 0);
	trans[0][2734]	= settr(2733,0,2735,1422,0,"((input==23))", 1, 2, 0);
	trans[0][2735]	= settr(2734,0,17,1423,1423,"fsm_state = 24", 1, 2, 0);
	trans[0][2736]	= settr(2735,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2737]	= settr(2736,0,2738,1424,0,"((input==27))", 1, 2, 0);
	trans[0][2738]	= settr(2737,0,2739,1425,1425,"fsm_state = 6", 1, 2, 0);
	trans[0][2739]	= settr(2738,0,3095,1426,1426,"output = 11", 1, 2, 0);
	trans[0][2740]	= settr(2739,0,2741,1427,0,"((input==20))", 1, 2, 0);
	trans[0][2741]	= settr(2740,0,17,1428,1428,"fsm_state = 6", 1, 2, 0);
	trans[0][2742]	= settr(2741,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2743]	= settr(2742,0,2744,1429,0,"((input==19))", 1, 2, 0);
	trans[0][2744]	= settr(2743,0,2745,1430,1430,"fsm_state = 6", 1, 2, 0);
	trans[0][2745]	= settr(2744,0,3095,1431,1431,"output = 10", 1, 2, 0);
	trans[0][2746]	= settr(2745,0,2747,1432,0,"((input==18))", 1, 2, 0);
	trans[0][2747]	= settr(2746,0,2748,1433,1433,"fsm_state = 6", 1, 2, 0);
	trans[0][2748]	= settr(2747,0,3095,1434,1434,"output = 8", 1, 2, 0);
	trans[0][2749]	= settr(2748,0,2750,1435,0,"((input==21))", 1, 2, 0);
	trans[0][2750]	= settr(2749,0,2751,1436,1436,"fsm_state = 6", 1, 2, 0);
	trans[0][2751]	= settr(2750,0,3095,1437,1437,"output = 11", 1, 2, 0);
	trans[0][2752]	= settr(2751,0,2753,1438,0,"((input==16))", 1, 2, 0);
	trans[0][2753]	= settr(2752,0,2754,1439,1439,"fsm_state = 3", 1, 2, 0);
	trans[0][2754]	= settr(2753,0,3095,1440,1440,"output = 7", 1, 2, 0);
	trans[0][2755]	= settr(2754,0,2756,1441,0,"((input==25))", 1, 2, 0);
	trans[0][2756]	= settr(2755,0,17,1442,1442,"fsm_state = 2", 1, 2, 0);
	trans[0][2757]	= settr(2756,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2758]	= settr(2757,0,2759,1443,0,"((input==24))", 1, 2, 0);
	trans[0][2759]	= settr(2758,0,2760,1444,1444,"fsm_state = 1", 1, 2, 0);
	trans[0][2760]	= settr(2759,0,3095,1445,1445,"output = 7", 1, 2, 0);
	trans[0][2761]	= settr(2760,0,17,2,0,"else", 0, 2, 0);
	trans[0][2762]	= settr(2761,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2765]	= settr(2764,0,2845,1446,0,"((fsm_state==5))", 1, 2, 0);
	T = trans[0][2845] = settr(2844,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2844,0,2766,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2844,0,2769,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2844,0,2772,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2844,0,2775,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2844,0,2778,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2844,0,2781,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2844,0,2784,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2844,0,2787,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2844,0,2790,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2844,0,2793,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2844,0,2796,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2844,0,2799,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2844,0,2843,0,0,"IF", 0, 2, 0);
	trans[0][2766]	= settr(2765,0,2767,1447,0,"((input==26))", 1, 2, 0);
	trans[0][2767]	= settr(2766,0,2768,1448,1448,"fsm_state = 40", 1, 2, 0);
	trans[0][2768]	= settr(2767,0,3095,1449,1449,"output = 4", 1, 2, 0);
	trans[0][2846]	= settr(2845,0,3095,1,0,".(goto)", 0, 2, 0);
	trans[0][2769]	= settr(2768,0,2770,1450,0,"((input==17))", 1, 2, 0);
	trans[0][2770]	= settr(2769,0,2771,1451,1451,"fsm_state = 40", 1, 2, 0);
	trans[0][2771]	= settr(2770,0,3095,1452,1452,"output = 4", 1, 2, 0);
	trans[0][2772]	= settr(2771,0,2773,1453,0,"((input==22))", 1, 2, 0);
	trans[0][2773]	= settr(2772,0,2774,1454,1454,"fsm_state = 40", 1, 2, 0);
	trans[0][2774]	= settr(2773,0,3095,1455,1455,"output = 4", 1, 2, 0);
	trans[0][2775]	= settr(2774,0,2776,1456,0,"((input==23))", 1, 2, 0);
	trans[0][2776]	= settr(2775,0,17,1457,1457,"fsm_state = 38", 1, 2, 0);
	trans[0][2777]	= settr(2776,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2778]	= settr(2777,0,2779,1458,0,"((input==27))", 1, 2, 0);
	trans[0][2779]	= settr(2778,0,2780,1459,1459,"fsm_state = 5", 1, 2, 0);
	trans[0][2780]	= settr(2779,0,3095,1460,1460,"output = 11", 1, 2, 0);
	trans[0][2781]	= settr(2780,0,2782,1461,0,"((input==19))", 1, 2, 0);
	trans[0][2782]	= settr(2781,0,2783,1462,1462,"fsm_state = 5", 1, 2, 0);
	trans[0][2783]	= settr(2782,0,3095,1463,1463,"output = 5", 1, 2, 0);
	trans[0][2784]	= settr(2783,0,2785,1464,0,"((input==25))", 1, 2, 0);
	trans[0][2785]	= settr(2784,0,2786,1465,1465,"fsm_state = 5", 1, 2, 0);
	trans[0][2786]	= settr(2785,0,3095,1466,1466,"output = 5", 1, 2, 0);
	trans[0][2787]	= settr(2786,0,2788,1467,0,"((input==21))", 1, 2, 0);
	trans[0][2788]	= settr(2787,0,2789,1468,1468,"fsm_state = 5", 1, 2, 0);
	trans[0][2789]	= settr(2788,0,3095,1469,1469,"output = 11", 1, 2, 0);
	trans[0][2790]	= settr(2789,0,2791,1470,0,"((input==16))", 1, 2, 0);
	trans[0][2791]	= settr(2790,0,2792,1471,1471,"fsm_state = 5", 1, 2, 0);
	trans[0][2792]	= settr(2791,0,3095,1472,1472,"output = 5", 1, 2, 0);
	trans[0][2793]	= settr(2792,0,2794,1473,0,"((input==24))", 1, 2, 0);
	trans[0][2794]	= settr(2793,0,2795,1474,1474,"fsm_state = 5", 1, 2, 0);
	trans[0][2795]	= settr(2794,0,3095,1475,1475,"output = 5", 1, 2, 0);
	trans[0][2796]	= settr(2795,0,2797,1476,0,"((input==18))", 1, 2, 0);
	trans[0][2797]	= settr(2796,0,17,1477,1477,"fsm_state = 4", 1, 2, 0);
	trans[0][2798]	= settr(2797,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2799]	= settr(2798,0,2800,1478,0,"((input==20))", 1, 2, 0);
	trans[0][2800]	= settr(2799,0,2801,1479,1479,"fsm_state = 3", 1, 2, 0);
	trans[0][2801]	= settr(2800,0,2802,1480,1480,"output = 12", 1, 2, 0);
	trans[0][2802]	= settr(2801,0,2840,1481,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2840] = settr(2839,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2839,0,2833,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2833]	= settr(2832,32,2838,1482,1482,"D_STEP13", 1, 2, 0);
	T = trans[0][2838] = settr(2837,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2837,0,2834,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2837,0,2836,0,0,"IF", 0, 2, 0);
	trans[0][2834]	= settr(2833,0,1,1483,0,"((dealt==0))", 1, 2, 0);
	trans[0][2835]	= settr(2834,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2839]	= settr(2838,0,2841,1,0,".(goto)", 0, 2, 0);
	trans[0][2836]	= settr(2835,0,2837,2,0,"else", 0, 2, 0);
	trans[0][2837]	= settr(2836,0,2841,1,0,"(1)", 0, 2, 0);
	trans[0][2841]	= settr(2840,0,2842,1484,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2842]	= settr(2841,0,3095,1485,1485,"output = 2", 1, 2, 0);
	trans[0][2843]	= settr(2842,0,17,2,0,"else", 0, 2, 0);
	trans[0][2844]	= settr(2843,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2847]	= settr(2846,0,2968,1486,0,"((fsm_state==4))", 1, 2, 0);
	T = trans[0][2968] = settr(2967,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2967,0,2848,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2967,0,2851,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2967,0,2854,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2967,0,2857,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2967,0,2860,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2967,0,2863,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2967,0,2866,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2967,0,2869,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2967,0,2872,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2967,0,2875,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2967,0,2878,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2967,0,2881,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2967,0,2966,0,0,"IF", 0, 2, 0);
	trans[0][2848]	= settr(2847,0,2849,1487,0,"((input==26))", 1, 2, 0);
	trans[0][2849]	= settr(2848,0,2850,1488,1488,"fsm_state = 42", 1, 2, 0);
	trans[0][2850]	= settr(2849,0,3095,1489,1489,"output = 4", 1, 2, 0);
	trans[0][2969]	= settr(2968,0,3095,1,0,".(goto)", 0, 2, 0);
	trans[0][2851]	= settr(2850,0,2852,1490,0,"((input==17))", 1, 2, 0);
	trans[0][2852]	= settr(2851,0,2853,1491,1491,"fsm_state = 42", 1, 2, 0);
	trans[0][2853]	= settr(2852,0,3095,1492,1492,"output = 4", 1, 2, 0);
	trans[0][2854]	= settr(2853,0,2855,1493,0,"((input==22))", 1, 2, 0);
	trans[0][2855]	= settr(2854,0,2856,1494,1494,"fsm_state = 42", 1, 2, 0);
	trans[0][2856]	= settr(2855,0,3095,1495,1495,"output = 4", 1, 2, 0);
	trans[0][2857]	= settr(2856,0,2858,1496,0,"((input==23))", 1, 2, 0);
	trans[0][2858]	= settr(2857,0,17,1497,1497,"fsm_state = 36", 1, 2, 0);
	trans[0][2859]	= settr(2858,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2860]	= settr(2859,0,2861,1498,0,"((input==16))", 1, 2, 0);
	trans[0][2861]	= settr(2860,0,17,1499,1499,"fsm_state = 8", 1, 2, 0);
	trans[0][2862]	= settr(2861,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2863]	= settr(2862,0,2864,1500,0,"((input==27))", 1, 2, 0);
	trans[0][2864]	= settr(2863,0,2865,1501,1501,"fsm_state = 4", 1, 2, 0);
	trans[0][2865]	= settr(2864,0,3095,1502,1502,"output = 11", 1, 2, 0);
	trans[0][2866]	= settr(2865,0,2867,1503,0,"((input==19))", 1, 2, 0);
	trans[0][2867]	= settr(2866,0,17,1504,1504,"fsm_state = 4", 1, 2, 0);
	trans[0][2868]	= settr(2867,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2869]	= settr(2868,0,2870,1505,0,"((input==18))", 1, 2, 0);
	trans[0][2870]	= settr(2869,0,2871,1506,1506,"fsm_state = 4", 1, 2, 0);
	trans[0][2871]	= settr(2870,0,3095,1507,1507,"output = 8", 1, 2, 0);
	trans[0][2872]	= settr(2871,0,2873,1508,0,"((input==25))", 1, 2, 0);
	trans[0][2873]	= settr(2872,0,17,1509,1509,"fsm_state = 4", 1, 2, 0);
	trans[0][2874]	= settr(2873,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2875]	= settr(2874,0,2876,1510,0,"((input==21))", 1, 2, 0);
	trans[0][2876]	= settr(2875,0,2877,1511,1511,"fsm_state = 4", 1, 2, 0);
	trans[0][2877]	= settr(2876,0,3095,1512,1512,"output = 11", 1, 2, 0);
	trans[0][2878]	= settr(2877,0,2879,1513,0,"((input==24))", 1, 2, 0);
	trans[0][2879]	= settr(2878,0,17,1514,1514,"fsm_state = 4", 1, 2, 0);
	trans[0][2880]	= settr(2879,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2881]	= settr(2880,0,2882,1515,0,"((input==20))", 1, 2, 0);
	trans[0][2882]	= settr(2881,0,2883,1516,1516,"fsm_state = 2", 1, 2, 0);
	trans[0][2883]	= settr(2882,0,2884,1517,1517,"output = 12", 1, 2, 0);
	trans[0][2884]	= settr(2883,0,2922,1518,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2922] = settr(2921,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2921,0,2915,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2915]	= settr(2914,32,2920,1519,1519,"D_STEP13", 1, 2, 0);
	T = trans[0][2920] = settr(2919,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2919,0,2916,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2919,0,2918,0,0,"IF", 0, 2, 0);
	trans[0][2916]	= settr(2915,0,1,1520,0,"((dealt==0))", 1, 2, 0);
	trans[0][2917]	= settr(2916,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2921]	= settr(2920,0,2923,1,0,".(goto)", 0, 2, 0);
	trans[0][2918]	= settr(2917,0,2919,2,0,"else", 0, 2, 0);
	trans[0][2919]	= settr(2918,0,2923,1,0,"(1)", 0, 2, 0);
	trans[0][2923]	= settr(2922,0,2924,1521,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2924]	= settr(2923,0,2925,1522,1522,"output = 2", 1, 2, 0);
	trans[0][2925]	= settr(2924,0,2963,1523,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2963] = settr(2962,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2962,0,2956,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2956]	= settr(2955,32,2961,1524,1524,"D_STEP13", 1, 2, 0);
	T = trans[0][2961] = settr(2960,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2960,0,2957,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2960,0,2959,0,0,"IF", 0, 2, 0);
	trans[0][2957]	= settr(2956,0,1,1525,0,"((dealt==0))", 1, 2, 0);
	trans[0][2958]	= settr(2957,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2962]	= settr(2961,0,2964,1,0,".(goto)", 0, 2, 0);
	trans[0][2959]	= settr(2958,0,2960,2,0,"else", 0, 2, 0);
	trans[0][2960]	= settr(2959,0,2964,1,0,"(1)", 0, 2, 0);
	trans[0][2964]	= settr(2963,0,2965,1526,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2965]	= settr(2964,0,3095,1527,1527,"output = 6", 1, 2, 0);
	trans[0][2966]	= settr(2965,0,17,2,0,"else", 0, 2, 0);
	trans[0][2967]	= settr(2966,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2970]	= settr(2969,0,3009,1528,0,"((fsm_state==3))", 1, 2, 0);
	T = trans[0][3009] = settr(3008,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3008,0,2971,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3008,0,2974,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3008,0,2977,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3008,0,2980,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3008,0,2983,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3008,0,2986,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3008,0,2989,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3008,0,2992,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3008,0,2995,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3008,0,2998,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3008,0,3001,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3008,0,3004,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3008,0,3007,0,0,"IF", 0, 2, 0);
	trans[0][2971]	= settr(2970,0,2972,1529,0,"((input==26))", 1, 2, 0);
	trans[0][2972]	= settr(2971,0,2973,1530,1530,"fsm_state = 40", 1, 2, 0);
	trans[0][2973]	= settr(2972,0,3095,1531,1531,"output = 4", 1, 2, 0);
	trans[0][3010]	= settr(3009,0,3095,1,0,".(goto)", 0, 2, 0);
	trans[0][2974]	= settr(2973,0,2975,1532,0,"((input==17))", 1, 2, 0);
	trans[0][2975]	= settr(2974,0,2976,1533,1533,"fsm_state = 40", 1, 2, 0);
	trans[0][2976]	= settr(2975,0,3095,1534,1534,"output = 4", 1, 2, 0);
	trans[0][2977]	= settr(2976,0,2978,1535,0,"((input==22))", 1, 2, 0);
	trans[0][2978]	= settr(2977,0,2979,1536,1536,"fsm_state = 40", 1, 2, 0);
	trans[0][2979]	= settr(2978,0,3095,1537,1537,"output = 4", 1, 2, 0);
	trans[0][2980]	= settr(2979,0,2981,1538,0,"((input==23))", 1, 2, 0);
	trans[0][2981]	= settr(2980,0,17,1539,1539,"fsm_state = 13", 1, 2, 0);
	trans[0][2982]	= settr(2981,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2983]	= settr(2982,0,2984,1540,0,"((input==18))", 1, 2, 0);
	trans[0][2984]	= settr(2983,0,2985,1541,1541,"fsm_state = 6", 1, 2, 0);
	trans[0][2985]	= settr(2984,0,3095,1542,1542,"output = 15", 1, 2, 0);
	trans[0][2986]	= settr(2985,0,2987,1543,0,"((input==27))", 1, 2, 0);
	trans[0][2987]	= settr(2986,0,2988,1544,1544,"fsm_state = 3", 1, 2, 0);
	trans[0][2988]	= settr(2987,0,3095,1545,1545,"output = 11", 1, 2, 0);
	trans[0][2989]	= settr(2988,0,2990,1546,0,"((input==20))", 1, 2, 0);
	trans[0][2990]	= settr(2989,0,17,1547,1547,"fsm_state = 3", 1, 2, 0);
	trans[0][2991]	= settr(2990,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2992]	= settr(2991,0,2993,1548,0,"((input==19))", 1, 2, 0);
	trans[0][2993]	= settr(2992,0,2994,1549,1549,"fsm_state = 3", 1, 2, 0);
	trans[0][2994]	= settr(2993,0,3095,1550,1550,"output = 5", 1, 2, 0);
	trans[0][2995]	= settr(2994,0,2996,1551,0,"((input==25))", 1, 2, 0);
	trans[0][2996]	= settr(2995,0,2997,1552,1552,"fsm_state = 3", 1, 2, 0);
	trans[0][2997]	= settr(2996,0,3095,1553,1553,"output = 5", 1, 2, 0);
	trans[0][2998]	= settr(2997,0,2999,1554,0,"((input==21))", 1, 2, 0);
	trans[0][2999]	= settr(2998,0,3000,1555,1555,"fsm_state = 3", 1, 2, 0);
	trans[0][3000]	= settr(2999,0,3095,1556,1556,"output = 11", 1, 2, 0);
	trans[0][3001]	= settr(3000,0,3002,1557,0,"((input==16))", 1, 2, 0);
	trans[0][3002]	= settr(3001,0,3003,1558,1558,"fsm_state = 3", 1, 2, 0);
	trans[0][3003]	= settr(3002,0,3095,1559,1559,"output = 5", 1, 2, 0);
	trans[0][3004]	= settr(3003,0,3005,1560,0,"((input==24))", 1, 2, 0);
	trans[0][3005]	= settr(3004,0,3006,1561,1561,"fsm_state = 3", 1, 2, 0);
	trans[0][3006]	= settr(3005,0,3095,1562,1562,"output = 5", 1, 2, 0);
	trans[0][3007]	= settr(3006,0,17,2,0,"else", 0, 2, 0);
	trans[0][3008]	= settr(3007,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3011]	= settr(3010,0,3050,1563,0,"((fsm_state==2))", 1, 2, 0);
	T = trans[0][3050] = settr(3049,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3049,0,3012,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3049,0,3015,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3049,0,3018,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3049,0,3021,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3049,0,3024,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3049,0,3027,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3049,0,3030,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3049,0,3033,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3049,0,3036,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3049,0,3039,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3049,0,3042,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3049,0,3045,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3049,0,3048,0,0,"IF", 0, 2, 0);
	trans[0][3012]	= settr(3011,0,3013,1564,0,"((input==26))", 1, 2, 0);
	trans[0][3013]	= settr(3012,0,3014,1565,1565,"fsm_state = 42", 1, 2, 0);
	trans[0][3014]	= settr(3013,0,3095,1566,1566,"output = 4", 1, 2, 0);
	trans[0][3051]	= settr(3050,0,3095,1,0,".(goto)", 0, 2, 0);
	trans[0][3015]	= settr(3014,0,3016,1567,0,"((input==17))", 1, 2, 0);
	trans[0][3016]	= settr(3015,0,3017,1568,1568,"fsm_state = 42", 1, 2, 0);
	trans[0][3017]	= settr(3016,0,3095,1569,1569,"output = 4", 1, 2, 0);
	trans[0][3018]	= settr(3017,0,3019,1570,0,"((input==22))", 1, 2, 0);
	trans[0][3019]	= settr(3018,0,3020,1571,1571,"fsm_state = 42", 1, 2, 0);
	trans[0][3020]	= settr(3019,0,3095,1572,1572,"output = 4", 1, 2, 0);
	trans[0][3021]	= settr(3020,0,3022,1573,0,"((input==23))", 1, 2, 0);
	trans[0][3022]	= settr(3021,0,17,1574,1574,"fsm_state = 12", 1, 2, 0);
	trans[0][3023]	= settr(3022,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3024]	= settr(3023,0,3025,1575,0,"((input==16))", 1, 2, 0);
	trans[0][3025]	= settr(3024,0,3026,1576,1576,"fsm_state = 3", 1, 2, 0);
	trans[0][3026]	= settr(3025,0,3095,1577,1577,"output = 7", 1, 2, 0);
	trans[0][3027]	= settr(3026,0,3028,1578,0,"((input==27))", 1, 2, 0);
	trans[0][3028]	= settr(3027,0,3029,1579,1579,"fsm_state = 2", 1, 2, 0);
	trans[0][3029]	= settr(3028,0,3095,1580,1580,"output = 11", 1, 2, 0);
	trans[0][3030]	= settr(3029,0,3031,1581,0,"((input==20))", 1, 2, 0);
	trans[0][3031]	= settr(3030,0,17,1582,1582,"fsm_state = 2", 1, 2, 0);
	trans[0][3032]	= settr(3031,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3033]	= settr(3032,0,3034,1583,0,"((input==19))", 1, 2, 0);
	trans[0][3034]	= settr(3033,0,3035,1584,1584,"fsm_state = 2", 1, 2, 0);
	trans[0][3035]	= settr(3034,0,3095,1585,1585,"output = 10", 1, 2, 0);
	trans[0][3036]	= settr(3035,0,3037,1586,0,"((input==18))", 1, 2, 0);
	trans[0][3037]	= settr(3036,0,3038,1587,1587,"fsm_state = 2", 1, 2, 0);
	trans[0][3038]	= settr(3037,0,3095,1588,1588,"output = 8", 1, 2, 0);
	trans[0][3039]	= settr(3038,0,3040,1589,0,"((input==25))", 1, 2, 0);
	trans[0][3040]	= settr(3039,0,17,1590,1590,"fsm_state = 2", 1, 2, 0);
	trans[0][3041]	= settr(3040,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3042]	= settr(3041,0,3043,1591,0,"((input==21))", 1, 2, 0);
	trans[0][3043]	= settr(3042,0,3044,1592,1592,"fsm_state = 2", 1, 2, 0);
	trans[0][3044]	= settr(3043,0,3095,1593,1593,"output = 11", 1, 2, 0);
	trans[0][3045]	= settr(3044,0,3046,1594,0,"((input==24))", 1, 2, 0);
	trans[0][3046]	= settr(3045,0,17,1595,1595,"fsm_state = 2", 1, 2, 0);
	trans[0][3047]	= settr(3046,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3048]	= settr(3047,0,17,2,0,"else", 0, 2, 0);
	trans[0][3049]	= settr(3048,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3052]	= settr(3051,0,3091,1596,0,"((fsm_state==1))", 1, 2, 0);
	T = trans[0][3091] = settr(3090,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3090,0,3053,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3090,0,3056,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3090,0,3059,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3090,0,3062,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3090,0,3065,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3090,0,3068,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3090,0,3071,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3090,0,3074,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3090,0,3077,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3090,0,3080,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3090,0,3083,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3090,0,3086,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3090,0,3089,0,0,"IF", 0, 2, 0);
	trans[0][3053]	= settr(3052,0,3054,1597,0,"((input==26))", 1, 2, 0);
	trans[0][3054]	= settr(3053,0,3055,1598,1598,"fsm_state = 42", 1, 2, 0);
	trans[0][3055]	= settr(3054,0,3095,1599,1599,"output = 4", 1, 2, 0);
	trans[0][3092]	= settr(3091,0,3095,1,0,".(goto)", 0, 2, 0);
	trans[0][3056]	= settr(3055,0,3057,1600,0,"((input==17))", 1, 2, 0);
	trans[0][3057]	= settr(3056,0,3058,1601,1601,"fsm_state = 42", 1, 2, 0);
	trans[0][3058]	= settr(3057,0,3095,1602,1602,"output = 4", 1, 2, 0);
	trans[0][3059]	= settr(3058,0,3060,1603,0,"((input==22))", 1, 2, 0);
	trans[0][3060]	= settr(3059,0,3061,1604,1604,"fsm_state = 42", 1, 2, 0);
	trans[0][3061]	= settr(3060,0,3095,1605,1605,"output = 4", 1, 2, 0);
	trans[0][3062]	= settr(3061,0,3063,1606,0,"((input==23))", 1, 2, 0);
	trans[0][3063]	= settr(3062,0,17,1607,1607,"fsm_state = 15", 1, 2, 0);
	trans[0][3064]	= settr(3063,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3065]	= settr(3064,0,3066,1608,0,"((input==16))", 1, 2, 0);
	trans[0][3066]	= settr(3065,0,17,1609,1609,"fsm_state = 3", 1, 2, 0);
	trans[0][3067]	= settr(3066,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3068]	= settr(3067,0,3069,1610,0,"((input==27))", 1, 2, 0);
	trans[0][3069]	= settr(3068,0,3070,1611,1611,"fsm_state = 1", 1, 2, 0);
	trans[0][3070]	= settr(3069,0,3095,1612,1612,"output = 11", 1, 2, 0);
	trans[0][3071]	= settr(3070,0,3072,1613,0,"((input==20))", 1, 2, 0);
	trans[0][3072]	= settr(3071,0,17,1614,1614,"fsm_state = 1", 1, 2, 0);
	trans[0][3073]	= settr(3072,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3074]	= settr(3073,0,3075,1615,0,"((input==19))", 1, 2, 0);
	trans[0][3075]	= settr(3074,0,17,1616,1616,"fsm_state = 1", 1, 2, 0);
	trans[0][3076]	= settr(3075,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3077]	= settr(3076,0,3078,1617,0,"((input==18))", 1, 2, 0);
	trans[0][3078]	= settr(3077,0,3079,1618,1618,"fsm_state = 1", 1, 2, 0);
	trans[0][3079]	= settr(3078,0,3095,1619,1619,"output = 8", 1, 2, 0);
	trans[0][3080]	= settr(3079,0,3081,1620,0,"((input==25))", 1, 2, 0);
	trans[0][3081]	= settr(3080,0,17,1621,1621,"fsm_state = 1", 1, 2, 0);
	trans[0][3082]	= settr(3081,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3083]	= settr(3082,0,3084,1622,0,"((input==21))", 1, 2, 0);
	trans[0][3084]	= settr(3083,0,3085,1623,1623,"fsm_state = 1", 1, 2, 0);
	trans[0][3085]	= settr(3084,0,3095,1624,1624,"output = 11", 1, 2, 0);
	trans[0][3086]	= settr(3085,0,3087,1625,0,"((input==24))", 1, 2, 0);
	trans[0][3087]	= settr(3086,0,17,1626,1626,"fsm_state = 1", 1, 2, 0);
	trans[0][3088]	= settr(3087,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3089]	= settr(3088,0,17,2,0,"else", 0, 2, 0);
	trans[0][3090]	= settr(3089,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3095]	= settr(3094,0,3096,1627,0,"printf('FSM State: %e\\n',fsm_state)", 1, 2, 0);
	trans[0][3096]	= settr(3095,0,3134,1628,0,"printf('Output: %e\\n\\n',output)", 1, 2, 0);
	T = trans[ 0][3134] = settr(3133,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(3133,0,3127,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][3127]	= settr(3126,32,3132,1629,1629,"D_STEP13", 1, 2, 0);
	T = trans[0][3132] = settr(3131,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3131,0,3128,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3131,0,3130,0,0,"IF", 0, 2, 0);
	trans[0][3128]	= settr(3127,0,1,1630,0,"((dealt==0))", 1, 2, 0);
	trans[0][3129]	= settr(3128,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][3133]	= settr(3132,0,3135,1,0,".(goto)", 0, 2, 0);
	trans[0][3130]	= settr(3129,0,3131,2,0,"else", 0, 2, 0);
	trans[0][3131]	= settr(3130,0,3135,1,0,"(1)", 0, 2, 0);
	trans[0][3135]	= settr(3134,0,3136,1631,0,"printf('DFA State: %e\\n\\n',dfa_state)", 1, 2, 0);
	trans[0][3138]	= settr(3137,0,3139,1,0,"break", 0, 2, 0);
	trans[0][3139]	= settr(3138,0,0,1632,1632,"-end-", 0, 3500, 0);
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
