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

	trans[1][7]	= settr(3460,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[1][6] = settr(3459,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(3459,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(3459,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 1][3] = settr(3456,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(3456,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[1][1]	= settr(3454,0,6,3,3,"(!((dfa_state!=2)))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached1[2] = 1;
	trans[1][2]	= settr(0,0,0,0,0,"assert(!(!((dfa_state!=2))))",0,0,0);
	trans[1][4]	= settr(3457,0,6,1,0,"(1)", 0, 2, 0);
	trans[1][5]	= settr(3458,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[1][8]	= settr(3461,0,9,1,0,"break", 0, 2, 0);
	trans[1][9]	= settr(3462,0,10,1,0,"(1)", 0, 2, 0);
	trans[1][10]	= settr(3463,0,0,4,4,"-end-", 0, 3500, 0);

	/* proctype 0: :init: */

	trans[0] = (Trans **) emalloc(3455*sizeof(Trans *));

	trans[0][1]	= settr(0,0,2,5,5,"fsm_state = 50", 1, 2, 0);
	trans[0][2]	= settr(1,0,3,6,6,"dfa_state = 3", 1, 2, 0);
	trans[0][3]	= settr(2,0,3451,7,7,"dealt = 0", 1, 2, 0);
	trans[0][3452]	= settr(3451,0,3451,1,0,".(goto)", 0, 2, 0);
	T = trans[0][3451] = settr(3450,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(3450,0,4,0,0,"DO", 0, 2, 0);
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
	trans[0][20]	= settr(19,0,58,21,0,"printf('Input: %e\\n',input)", 1, 2, 0);
	T = trans[ 0][58] = settr(57,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(57,0,51,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][51]	= settr(50,32,56,22,22,"D_STEP13", 1, 2, 0);
	T = trans[0][56] = settr(55,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(55,0,52,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(55,0,54,0,0,"IF", 0, 2, 0);
	trans[0][52]	= settr(51,0,1,23,0,"((dealt==0))", 1, 2, 0);
	trans[0][53]	= settr(52,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][57]	= settr(56,0,59,1,0,".(goto)", 0, 2, 0);
	trans[0][54]	= settr(53,0,55,2,0,"else", 0, 2, 0);
	trans[0][55]	= settr(54,0,59,1,0,"(1)", 0, 2, 0);
	trans[0][59]	= settr(58,0,3408,24,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	T = trans[0][3408] = settr(3407,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3407,0,60,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3407,0,391,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3407,0,435,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3407,0,479,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3407,0,523,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3407,0,608,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3407,0,652,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3407,0,696,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3407,0,740,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3407,0,784,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3407,0,828,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3407,0,872,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3407,0,957,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3407,0,1001,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3407,0,1045,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3407,0,1089,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3407,0,1174,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3407,0,1218,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3407,0,1262,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3407,0,1306,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3407,0,1391,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3407,0,1435,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3407,0,1520,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3407,0,1564,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3407,0,1608,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3407,0,1652,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3407,0,1696,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3407,0,1781,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3407,0,1825,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3407,0,1869,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3407,0,1995,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3407,0,2121,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3407,0,2165,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3407,0,2209,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3407,0,2253,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3407,0,2379,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3407,0,2423,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3407,0,2549,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3407,0,2634,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3407,0,2678,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3407,0,2722,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3407,0,2848,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3407,0,2892,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3407,0,2936,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3407,0,3021,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3407,0,3065,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3407,0,3109,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3407,0,3235,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3407,0,3279,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3407,0,3364,0,0,"IF", 0, 2, 0);
	trans[0][60]	= settr(59,0,389,25,0,"((fsm_state==50))", 1, 2, 0);
	T = trans[0][389] = settr(388,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(388,0,61,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(388,0,64,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(388,0,67,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(388,0,70,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(388,0,73,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(388,0,76,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(388,0,120,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(388,0,164,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(388,0,208,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(388,0,252,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(388,0,296,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(388,0,340,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(388,0,384,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(388,0,387,0,0,"IF", 0, 2, 0);
	trans[0][61]	= settr(60,0,62,26,0,"((input==26))", 1, 2, 0);
	trans[0][62]	= settr(61,0,63,27,27,"fsm_state = 50", 1, 2, 0);
	trans[0][63]	= settr(62,0,3410,28,28,"output = 7", 1, 2, 0);
	trans[0][390]	= settr(389,0,3410,1,0,".(goto)", 0, 2, 0);
	trans[0][64]	= settr(63,0,65,29,0,"((input==23))", 1, 2, 0);
	trans[0][65]	= settr(64,0,66,30,30,"fsm_state = 50", 1, 2, 0);
	trans[0][66]	= settr(65,0,3410,31,31,"output = 7", 1, 2, 0);
	trans[0][67]	= settr(66,0,68,32,0,"((input==21))", 1, 2, 0);
	trans[0][68]	= settr(67,0,69,33,33,"fsm_state = 50", 1, 2, 0);
	trans[0][69]	= settr(68,0,3410,34,34,"output = 7", 1, 2, 0);
	trans[0][70]	= settr(69,0,71,35,0,"((input==28))", 1, 2, 0);
	trans[0][71]	= settr(70,0,72,36,36,"fsm_state = 50", 1, 2, 0);
	trans[0][72]	= settr(71,0,3410,37,37,"output = 7", 1, 2, 0);
	trans[0][73]	= settr(72,0,74,38,0,"((input==27))", 1, 2, 0);
	trans[0][74]	= settr(73,0,75,39,39,"fsm_state = 49", 1, 2, 0);
	trans[0][75]	= settr(74,0,3410,40,40,"output = 4", 1, 2, 0);
	trans[0][76]	= settr(75,0,77,41,0,"((input==16))", 1, 2, 0);
	trans[0][77]	= settr(76,0,78,42,42,"fsm_state = 48", 1, 2, 0);
	trans[0][78]	= settr(77,0,79,43,43,"output = 4", 1, 2, 0);
	trans[0][79]	= settr(78,0,117,44,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][117] = settr(116,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(116,0,110,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][110]	= settr(109,32,115,45,45,"D_STEP13", 1, 2, 0);
	T = trans[0][115] = settr(114,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(114,0,111,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(114,0,113,0,0,"IF", 0, 2, 0);
	trans[0][111]	= settr(110,0,1,46,0,"((dealt==0))", 1, 2, 0);
	trans[0][112]	= settr(111,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][116]	= settr(115,0,118,1,0,".(goto)", 0, 2, 0);
	trans[0][113]	= settr(112,0,114,2,0,"else", 0, 2, 0);
	trans[0][114]	= settr(113,0,118,1,0,"(1)", 0, 2, 0);
	trans[0][118]	= settr(117,0,119,47,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][119]	= settr(118,0,3410,48,48,"output = 1", 1, 2, 0);
	trans[0][120]	= settr(119,0,121,49,0,"((input==17))", 1, 2, 0);
	trans[0][121]	= settr(120,0,122,50,50,"fsm_state = 47", 1, 2, 0);
	trans[0][122]	= settr(121,0,123,51,51,"output = 4", 1, 2, 0);
	trans[0][123]	= settr(122,0,161,52,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][161] = settr(160,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(160,0,154,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][154]	= settr(153,32,159,53,53,"D_STEP13", 1, 2, 0);
	T = trans[0][159] = settr(158,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(158,0,155,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(158,0,157,0,0,"IF", 0, 2, 0);
	trans[0][155]	= settr(154,0,1,54,0,"((dealt==0))", 1, 2, 0);
	trans[0][156]	= settr(155,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][160]	= settr(159,0,162,1,0,".(goto)", 0, 2, 0);
	trans[0][157]	= settr(156,0,158,2,0,"else", 0, 2, 0);
	trans[0][158]	= settr(157,0,162,1,0,"(1)", 0, 2, 0);
	trans[0][162]	= settr(161,0,163,55,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][163]	= settr(162,0,3410,56,56,"output = 1", 1, 2, 0);
	trans[0][164]	= settr(163,0,165,57,0,"((input==25))", 1, 2, 0);
	trans[0][165]	= settr(164,0,166,58,58,"fsm_state = 47", 1, 2, 0);
	trans[0][166]	= settr(165,0,167,59,59,"output = 4", 1, 2, 0);
	trans[0][167]	= settr(166,0,205,60,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][205] = settr(204,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(204,0,198,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][198]	= settr(197,32,203,61,61,"D_STEP13", 1, 2, 0);
	T = trans[0][203] = settr(202,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(202,0,199,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(202,0,201,0,0,"IF", 0, 2, 0);
	trans[0][199]	= settr(198,0,1,62,0,"((dealt==0))", 1, 2, 0);
	trans[0][200]	= settr(199,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][204]	= settr(203,0,206,1,0,".(goto)", 0, 2, 0);
	trans[0][201]	= settr(200,0,202,2,0,"else", 0, 2, 0);
	trans[0][202]	= settr(201,0,206,1,0,"(1)", 0, 2, 0);
	trans[0][206]	= settr(205,0,207,63,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][207]	= settr(206,0,3410,64,64,"output = 1", 1, 2, 0);
	trans[0][208]	= settr(207,0,209,65,0,"((input==24))", 1, 2, 0);
	trans[0][209]	= settr(208,0,210,66,66,"fsm_state = 47", 1, 2, 0);
	trans[0][210]	= settr(209,0,211,67,67,"output = 4", 1, 2, 0);
	trans[0][211]	= settr(210,0,249,68,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][249] = settr(248,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(248,0,242,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][242]	= settr(241,32,247,69,69,"D_STEP13", 1, 2, 0);
	T = trans[0][247] = settr(246,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(246,0,243,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(246,0,245,0,0,"IF", 0, 2, 0);
	trans[0][243]	= settr(242,0,1,70,0,"((dealt==0))", 1, 2, 0);
	trans[0][244]	= settr(243,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][248]	= settr(247,0,250,1,0,".(goto)", 0, 2, 0);
	trans[0][245]	= settr(244,0,246,2,0,"else", 0, 2, 0);
	trans[0][246]	= settr(245,0,250,1,0,"(1)", 0, 2, 0);
	trans[0][250]	= settr(249,0,251,71,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][251]	= settr(250,0,3410,72,72,"output = 1", 1, 2, 0);
	trans[0][252]	= settr(251,0,253,73,0,"((input==20))", 1, 2, 0);
	trans[0][253]	= settr(252,0,254,74,74,"fsm_state = 47", 1, 2, 0);
	trans[0][254]	= settr(253,0,255,75,75,"output = 4", 1, 2, 0);
	trans[0][255]	= settr(254,0,293,76,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][293] = settr(292,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(292,0,286,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][286]	= settr(285,32,291,77,77,"D_STEP13", 1, 2, 0);
	T = trans[0][291] = settr(290,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(290,0,287,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(290,0,289,0,0,"IF", 0, 2, 0);
	trans[0][287]	= settr(286,0,1,78,0,"((dealt==0))", 1, 2, 0);
	trans[0][288]	= settr(287,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][292]	= settr(291,0,294,1,0,".(goto)", 0, 2, 0);
	trans[0][289]	= settr(288,0,290,2,0,"else", 0, 2, 0);
	trans[0][290]	= settr(289,0,294,1,0,"(1)", 0, 2, 0);
	trans[0][294]	= settr(293,0,295,79,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][295]	= settr(294,0,3410,80,80,"output = 1", 1, 2, 0);
	trans[0][296]	= settr(295,0,297,81,0,"((input==22))", 1, 2, 0);
	trans[0][297]	= settr(296,0,298,82,82,"fsm_state = 47", 1, 2, 0);
	trans[0][298]	= settr(297,0,299,83,83,"output = 4", 1, 2, 0);
	trans[0][299]	= settr(298,0,337,84,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][337] = settr(336,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(336,0,330,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][330]	= settr(329,32,335,85,85,"D_STEP13", 1, 2, 0);
	T = trans[0][335] = settr(334,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(334,0,331,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(334,0,333,0,0,"IF", 0, 2, 0);
	trans[0][331]	= settr(330,0,1,86,0,"((dealt==0))", 1, 2, 0);
	trans[0][332]	= settr(331,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][336]	= settr(335,0,338,1,0,".(goto)", 0, 2, 0);
	trans[0][333]	= settr(332,0,334,2,0,"else", 0, 2, 0);
	trans[0][334]	= settr(333,0,338,1,0,"(1)", 0, 2, 0);
	trans[0][338]	= settr(337,0,339,87,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][339]	= settr(338,0,3410,88,88,"output = 1", 1, 2, 0);
	trans[0][340]	= settr(339,0,341,89,0,"((input==19))", 1, 2, 0);
	trans[0][341]	= settr(340,0,342,90,90,"fsm_state = 47", 1, 2, 0);
	trans[0][342]	= settr(341,0,343,91,91,"output = 4", 1, 2, 0);
	trans[0][343]	= settr(342,0,381,92,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][381] = settr(380,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(380,0,374,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][374]	= settr(373,32,379,93,93,"D_STEP13", 1, 2, 0);
	T = trans[0][379] = settr(378,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(378,0,375,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(378,0,377,0,0,"IF", 0, 2, 0);
	trans[0][375]	= settr(374,0,1,94,0,"((dealt==0))", 1, 2, 0);
	trans[0][376]	= settr(375,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][380]	= settr(379,0,382,1,0,".(goto)", 0, 2, 0);
	trans[0][377]	= settr(376,0,378,2,0,"else", 0, 2, 0);
	trans[0][378]	= settr(377,0,382,1,0,"(1)", 0, 2, 0);
	trans[0][382]	= settr(381,0,383,95,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][383]	= settr(382,0,3410,96,96,"output = 1", 1, 2, 0);
	trans[0][384]	= settr(383,0,385,97,0,"((input==18))", 1, 2, 0);
	trans[0][385]	= settr(384,0,386,98,98,"fsm_state = 46", 1, 2, 0);
	trans[0][386]	= settr(385,0,3410,99,99,"output = 4", 1, 2, 0);
	trans[0][387]	= settr(386,0,18,2,0,"else", 0, 2, 0);
	trans[0][388]	= settr(387,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3409]	= settr(3408,0,3410,1,0,".(goto)", 0, 2, 0);
	trans[0][391]	= settr(390,0,433,100,0,"((fsm_state==49))", 1, 2, 0);
	T = trans[0][433] = settr(432,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(432,0,392,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(432,0,395,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(432,0,398,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(432,0,401,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(432,0,404,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(432,0,407,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(432,0,410,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(432,0,413,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(432,0,416,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(432,0,419,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(432,0,422,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(432,0,425,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(432,0,428,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(432,0,431,0,0,"IF", 0, 2, 0);
	trans[0][392]	= settr(391,0,393,101,0,"((input==26))", 1, 2, 0);
	trans[0][393]	= settr(392,0,394,102,102,"fsm_state = 49", 1, 2, 0);
	trans[0][394]	= settr(393,0,3410,103,103,"output = 7", 1, 2, 0);
	trans[0][434]	= settr(433,0,3410,1,0,".(goto)", 0, 2, 0);
	trans[0][395]	= settr(394,0,396,104,0,"((input==23))", 1, 2, 0);
	trans[0][396]	= settr(395,0,397,105,105,"fsm_state = 49", 1, 2, 0);
	trans[0][397]	= settr(396,0,3410,106,106,"output = 7", 1, 2, 0);
	trans[0][398]	= settr(397,0,399,107,0,"((input==21))", 1, 2, 0);
	trans[0][399]	= settr(398,0,400,108,108,"fsm_state = 49", 1, 2, 0);
	trans[0][400]	= settr(399,0,3410,109,109,"output = 7", 1, 2, 0);
	trans[0][401]	= settr(400,0,402,110,0,"((input==28))", 1, 2, 0);
	trans[0][402]	= settr(401,0,403,111,111,"fsm_state = 49", 1, 2, 0);
	trans[0][403]	= settr(402,0,3410,112,112,"output = 7", 1, 2, 0);
	trans[0][404]	= settr(403,0,405,113,0,"((input==16))", 1, 2, 0);
	trans[0][405]	= settr(404,0,406,114,114,"fsm_state = 48", 1, 2, 0);
	trans[0][406]	= settr(405,0,3410,115,115,"output = 1", 1, 2, 0);
	trans[0][407]	= settr(406,0,408,116,0,"((input==17))", 1, 2, 0);
	trans[0][408]	= settr(407,0,409,117,117,"fsm_state = 47", 1, 2, 0);
	trans[0][409]	= settr(408,0,3410,118,118,"output = 1", 1, 2, 0);
	trans[0][410]	= settr(409,0,411,119,0,"((input==20))", 1, 2, 0);
	trans[0][411]	= settr(410,0,412,120,120,"fsm_state = 47", 1, 2, 0);
	trans[0][412]	= settr(411,0,3410,121,121,"output = 1", 1, 2, 0);
	trans[0][413]	= settr(412,0,414,122,0,"((input==27))", 1, 2, 0);
	trans[0][414]	= settr(413,0,415,123,123,"fsm_state = 47", 1, 2, 0);
	trans[0][415]	= settr(414,0,3410,124,124,"output = 1", 1, 2, 0);
	trans[0][416]	= settr(415,0,417,125,0,"((input==22))", 1, 2, 0);
	trans[0][417]	= settr(416,0,418,126,126,"fsm_state = 47", 1, 2, 0);
	trans[0][418]	= settr(417,0,3410,127,127,"output = 1", 1, 2, 0);
	trans[0][419]	= settr(418,0,420,128,0,"((input==18))", 1, 2, 0);
	trans[0][420]	= settr(419,0,421,129,129,"fsm_state = 47", 1, 2, 0);
	trans[0][421]	= settr(420,0,3410,130,130,"output = 1", 1, 2, 0);
	trans[0][422]	= settr(421,0,423,131,0,"((input==19))", 1, 2, 0);
	trans[0][423]	= settr(422,0,424,132,132,"fsm_state = 47", 1, 2, 0);
	trans[0][424]	= settr(423,0,3410,133,133,"output = 1", 1, 2, 0);
	trans[0][425]	= settr(424,0,426,134,0,"((input==25))", 1, 2, 0);
	trans[0][426]	= settr(425,0,18,135,135,"fsm_state = 46", 1, 2, 0);
	trans[0][427]	= settr(426,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][428]	= settr(427,0,429,136,0,"((input==24))", 1, 2, 0);
	trans[0][429]	= settr(428,0,18,137,137,"fsm_state = 45", 1, 2, 0);
	trans[0][430]	= settr(429,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][431]	= settr(430,0,18,2,0,"else", 0, 2, 0);
	trans[0][432]	= settr(431,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][435]	= settr(434,0,477,138,0,"((fsm_state==48))", 1, 2, 0);
	T = trans[0][477] = settr(476,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(476,0,436,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(476,0,439,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(476,0,442,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(476,0,445,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(476,0,448,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(476,0,451,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(476,0,454,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(476,0,457,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(476,0,460,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(476,0,463,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(476,0,466,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(476,0,469,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(476,0,472,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(476,0,475,0,0,"IF", 0, 2, 0);
	trans[0][436]	= settr(435,0,437,139,0,"((input==17))", 1, 2, 0);
	trans[0][437]	= settr(436,0,438,140,140,"fsm_state = 48", 1, 2, 0);
	trans[0][438]	= settr(437,0,3410,141,141,"output = 14", 1, 2, 0);
	trans[0][478]	= settr(477,0,3410,1,0,".(goto)", 0, 2, 0);
	trans[0][439]	= settr(438,0,440,142,0,"((input==25))", 1, 2, 0);
	trans[0][440]	= settr(439,0,441,143,143,"fsm_state = 48", 1, 2, 0);
	trans[0][441]	= settr(440,0,3410,144,144,"output = 14", 1, 2, 0);
	trans[0][442]	= settr(441,0,443,145,0,"((input==24))", 1, 2, 0);
	trans[0][443]	= settr(442,0,444,146,146,"fsm_state = 48", 1, 2, 0);
	trans[0][444]	= settr(443,0,3410,147,147,"output = 14", 1, 2, 0);
	trans[0][445]	= settr(444,0,446,148,0,"((input==26))", 1, 2, 0);
	trans[0][446]	= settr(445,0,447,149,149,"fsm_state = 48", 1, 2, 0);
	trans[0][447]	= settr(446,0,3410,150,150,"output = 14", 1, 2, 0);
	trans[0][448]	= settr(447,0,449,151,0,"((input==16))", 1, 2, 0);
	trans[0][449]	= settr(448,0,450,152,152,"fsm_state = 48", 1, 2, 0);
	trans[0][450]	= settr(449,0,3410,153,153,"output = 6", 1, 2, 0);
	trans[0][451]	= settr(450,0,452,154,0,"((input==23))", 1, 2, 0);
	trans[0][452]	= settr(451,0,453,155,155,"fsm_state = 48", 1, 2, 0);
	trans[0][453]	= settr(452,0,3410,156,156,"output = 14", 1, 2, 0);
	trans[0][454]	= settr(453,0,455,157,0,"((input==20))", 1, 2, 0);
	trans[0][455]	= settr(454,0,456,158,158,"fsm_state = 48", 1, 2, 0);
	trans[0][456]	= settr(455,0,3410,159,159,"output = 14", 1, 2, 0);
	trans[0][457]	= settr(456,0,458,160,0,"((input==27))", 1, 2, 0);
	trans[0][458]	= settr(457,0,459,161,161,"fsm_state = 48", 1, 2, 0);
	trans[0][459]	= settr(458,0,3410,162,162,"output = 14", 1, 2, 0);
	trans[0][460]	= settr(459,0,461,163,0,"((input==22))", 1, 2, 0);
	trans[0][461]	= settr(460,0,462,164,164,"fsm_state = 48", 1, 2, 0);
	trans[0][462]	= settr(461,0,3410,165,165,"output = 14", 1, 2, 0);
	trans[0][463]	= settr(462,0,464,166,0,"((input==18))", 1, 2, 0);
	trans[0][464]	= settr(463,0,465,167,167,"fsm_state = 48", 1, 2, 0);
	trans[0][465]	= settr(464,0,3410,168,168,"output = 14", 1, 2, 0);
	trans[0][466]	= settr(465,0,467,169,0,"((input==28))", 1, 2, 0);
	trans[0][467]	= settr(466,0,468,170,170,"fsm_state = 48", 1, 2, 0);
	trans[0][468]	= settr(467,0,3410,171,171,"output = 14", 1, 2, 0);
	trans[0][469]	= settr(468,0,470,172,0,"((input==19))", 1, 2, 0);
	trans[0][470]	= settr(469,0,471,173,173,"fsm_state = 48", 1, 2, 0);
	trans[0][471]	= settr(470,0,3410,174,174,"output = 14", 1, 2, 0);
	trans[0][472]	= settr(471,0,473,175,0,"((input==21))", 1, 2, 0);
	trans[0][473]	= settr(472,0,474,176,176,"fsm_state = 47", 1, 2, 0);
	trans[0][474]	= settr(473,0,3410,177,177,"output = 14", 1, 2, 0);
	trans[0][475]	= settr(474,0,18,2,0,"else", 0, 2, 0);
	trans[0][476]	= settr(475,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][479]	= settr(478,0,521,178,0,"((fsm_state==47))", 1, 2, 0);
	T = trans[0][521] = settr(520,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(520,0,480,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(520,0,483,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(520,0,486,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(520,0,489,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(520,0,492,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(520,0,495,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(520,0,498,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(520,0,501,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(520,0,504,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(520,0,507,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(520,0,510,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(520,0,513,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(520,0,516,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(520,0,519,0,0,"IF", 0, 2, 0);
	trans[0][480]	= settr(479,0,481,179,0,"((input==16))", 1, 2, 0);
	trans[0][481]	= settr(480,0,482,180,180,"fsm_state = 48", 1, 2, 0);
	trans[0][482]	= settr(481,0,3410,181,181,"output = 14", 1, 2, 0);
	trans[0][522]	= settr(521,0,3410,1,0,".(goto)", 0, 2, 0);
	trans[0][483]	= settr(482,0,484,182,0,"((input==17))", 1, 2, 0);
	trans[0][484]	= settr(483,0,485,183,183,"fsm_state = 47", 1, 2, 0);
	trans[0][485]	= settr(484,0,3410,184,184,"output = 14", 1, 2, 0);
	trans[0][486]	= settr(485,0,487,185,0,"((input==25))", 1, 2, 0);
	trans[0][487]	= settr(486,0,488,186,186,"fsm_state = 47", 1, 2, 0);
	trans[0][488]	= settr(487,0,3410,187,187,"output = 14", 1, 2, 0);
	trans[0][489]	= settr(488,0,490,188,0,"((input==24))", 1, 2, 0);
	trans[0][490]	= settr(489,0,491,189,189,"fsm_state = 47", 1, 2, 0);
	trans[0][491]	= settr(490,0,3410,190,190,"output = 14", 1, 2, 0);
	trans[0][492]	= settr(491,0,493,191,0,"((input==26))", 1, 2, 0);
	trans[0][493]	= settr(492,0,494,192,192,"fsm_state = 47", 1, 2, 0);
	trans[0][494]	= settr(493,0,3410,193,193,"output = 7", 1, 2, 0);
	trans[0][495]	= settr(494,0,496,194,0,"((input==23))", 1, 2, 0);
	trans[0][496]	= settr(495,0,497,195,195,"fsm_state = 47", 1, 2, 0);
	trans[0][497]	= settr(496,0,3410,196,196,"output = 7", 1, 2, 0);
	trans[0][498]	= settr(497,0,499,197,0,"((input==20))", 1, 2, 0);
	trans[0][499]	= settr(498,0,500,198,198,"fsm_state = 47", 1, 2, 0);
	trans[0][500]	= settr(499,0,3410,199,199,"output = 14", 1, 2, 0);
	trans[0][501]	= settr(500,0,502,200,0,"((input==27))", 1, 2, 0);
	trans[0][502]	= settr(501,0,503,201,201,"fsm_state = 47", 1, 2, 0);
	trans[0][503]	= settr(502,0,3410,202,202,"output = 14", 1, 2, 0);
	trans[0][504]	= settr(503,0,505,203,0,"((input==21))", 1, 2, 0);
	trans[0][505]	= settr(504,0,506,204,204,"fsm_state = 47", 1, 2, 0);
	trans[0][506]	= settr(505,0,3410,205,205,"output = 7", 1, 2, 0);
	trans[0][507]	= settr(506,0,508,206,0,"((input==22))", 1, 2, 0);
	trans[0][508]	= settr(507,0,509,207,207,"fsm_state = 47", 1, 2, 0);
	trans[0][509]	= settr(508,0,3410,208,208,"output = 14", 1, 2, 0);
	trans[0][510]	= settr(509,0,511,209,0,"((input==18))", 1, 2, 0);
	trans[0][511]	= settr(510,0,512,210,210,"fsm_state = 47", 1, 2, 0);
	trans[0][512]	= settr(511,0,3410,211,211,"output = 14", 1, 2, 0);
	trans[0][513]	= settr(512,0,514,212,0,"((input==28))", 1, 2, 0);
	trans[0][514]	= settr(513,0,515,213,213,"fsm_state = 47", 1, 2, 0);
	trans[0][515]	= settr(514,0,3410,214,214,"output = 7", 1, 2, 0);
	trans[0][516]	= settr(515,0,517,215,0,"((input==19))", 1, 2, 0);
	trans[0][517]	= settr(516,0,518,216,216,"fsm_state = 47", 1, 2, 0);
	trans[0][518]	= settr(517,0,3410,217,217,"output = 14", 1, 2, 0);
	trans[0][519]	= settr(518,0,18,2,0,"else", 0, 2, 0);
	trans[0][520]	= settr(519,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][523]	= settr(522,0,606,218,0,"((fsm_state==46))", 1, 2, 0);
	T = trans[0][606] = settr(605,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(605,0,524,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(605,0,527,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(605,0,530,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(605,0,533,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(605,0,536,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(605,0,539,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(605,0,542,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(605,0,545,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(605,0,548,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(605,0,551,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(605,0,554,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(605,0,557,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(605,0,560,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(605,0,604,0,0,"IF", 0, 2, 0);
	trans[0][524]	= settr(523,0,525,219,0,"((input==16))", 1, 2, 0);
	trans[0][525]	= settr(524,0,526,220,220,"fsm_state = 48", 1, 2, 0);
	trans[0][526]	= settr(525,0,3410,221,221,"output = 1", 1, 2, 0);
	trans[0][607]	= settr(606,0,3410,1,0,".(goto)", 0, 2, 0);
	trans[0][527]	= settr(526,0,528,222,0,"((input==17))", 1, 2, 0);
	trans[0][528]	= settr(527,0,529,223,223,"fsm_state = 47", 1, 2, 0);
	trans[0][529]	= settr(528,0,3410,224,224,"output = 1", 1, 2, 0);
	trans[0][530]	= settr(529,0,531,225,0,"((input==20))", 1, 2, 0);
	trans[0][531]	= settr(530,0,532,226,226,"fsm_state = 47", 1, 2, 0);
	trans[0][532]	= settr(531,0,3410,227,227,"output = 1", 1, 2, 0);
	trans[0][533]	= settr(532,0,534,228,0,"((input==27))", 1, 2, 0);
	trans[0][534]	= settr(533,0,535,229,229,"fsm_state = 47", 1, 2, 0);
	trans[0][535]	= settr(534,0,3410,230,230,"output = 1", 1, 2, 0);
	trans[0][536]	= settr(535,0,537,231,0,"((input==22))", 1, 2, 0);
	trans[0][537]	= settr(536,0,538,232,232,"fsm_state = 47", 1, 2, 0);
	trans[0][538]	= settr(537,0,3410,233,233,"output = 1", 1, 2, 0);
	trans[0][539]	= settr(538,0,540,234,0,"((input==18))", 1, 2, 0);
	trans[0][540]	= settr(539,0,541,235,235,"fsm_state = 47", 1, 2, 0);
	trans[0][541]	= settr(540,0,3410,236,236,"output = 1", 1, 2, 0);
	trans[0][542]	= settr(541,0,543,237,0,"((input==19))", 1, 2, 0);
	trans[0][543]	= settr(542,0,544,238,238,"fsm_state = 47", 1, 2, 0);
	trans[0][544]	= settr(543,0,3410,239,239,"output = 1", 1, 2, 0);
	trans[0][545]	= settr(544,0,546,240,0,"((input==26))", 1, 2, 0);
	trans[0][546]	= settr(545,0,547,241,241,"fsm_state = 46", 1, 2, 0);
	trans[0][547]	= settr(546,0,3410,242,242,"output = 7", 1, 2, 0);
	trans[0][548]	= settr(547,0,549,243,0,"((input==23))", 1, 2, 0);
	trans[0][549]	= settr(548,0,550,244,244,"fsm_state = 46", 1, 2, 0);
	trans[0][550]	= settr(549,0,3410,245,245,"output = 7", 1, 2, 0);
	trans[0][551]	= settr(550,0,552,246,0,"((input==21))", 1, 2, 0);
	trans[0][552]	= settr(551,0,553,247,247,"fsm_state = 46", 1, 2, 0);
	trans[0][553]	= settr(552,0,3410,248,248,"output = 7", 1, 2, 0);
	trans[0][554]	= settr(553,0,555,249,0,"((input==28))", 1, 2, 0);
	trans[0][555]	= settr(554,0,556,250,250,"fsm_state = 46", 1, 2, 0);
	trans[0][556]	= settr(555,0,3410,251,251,"output = 7", 1, 2, 0);
	trans[0][557]	= settr(556,0,558,252,0,"((input==24))", 1, 2, 0);
	trans[0][558]	= settr(557,0,18,253,253,"fsm_state = 45", 1, 2, 0);
	trans[0][559]	= settr(558,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][560]	= settr(559,0,561,254,0,"((input==25))", 1, 2, 0);
	trans[0][561]	= settr(560,0,562,255,255,"fsm_state = 44", 1, 2, 0);
	trans[0][562]	= settr(561,0,563,256,256,"output = 9", 1, 2, 0);
	trans[0][563]	= settr(562,0,601,257,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][601] = settr(600,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(600,0,594,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][594]	= settr(593,32,599,258,258,"D_STEP13", 1, 2, 0);
	T = trans[0][599] = settr(598,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(598,0,595,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(598,0,597,0,0,"IF", 0, 2, 0);
	trans[0][595]	= settr(594,0,1,259,0,"((dealt==0))", 1, 2, 0);
	trans[0][596]	= settr(595,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][600]	= settr(599,0,602,1,0,".(goto)", 0, 2, 0);
	trans[0][597]	= settr(596,0,598,2,0,"else", 0, 2, 0);
	trans[0][598]	= settr(597,0,602,1,0,"(1)", 0, 2, 0);
	trans[0][602]	= settr(601,0,603,260,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][603]	= settr(602,0,3410,261,261,"output = 5", 1, 2, 0);
	trans[0][604]	= settr(603,0,18,2,0,"else", 0, 2, 0);
	trans[0][605]	= settr(604,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][608]	= settr(607,0,650,262,0,"((fsm_state==45))", 1, 2, 0);
	T = trans[0][650] = settr(649,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(649,0,609,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(649,0,612,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(649,0,615,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(649,0,618,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(649,0,621,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(649,0,624,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(649,0,627,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(649,0,630,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(649,0,633,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(649,0,636,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(649,0,639,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(649,0,642,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(649,0,645,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(649,0,648,0,0,"IF", 0, 2, 0);
	trans[0][609]	= settr(608,0,610,263,0,"((input==17))", 1, 2, 0);
	trans[0][610]	= settr(609,0,18,264,264,"fsm_state = 45", 1, 2, 0);
	trans[0][611]	= settr(610,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][651]	= settr(650,0,3410,1,0,".(goto)", 0, 2, 0);
	trans[0][612]	= settr(611,0,613,265,0,"((input==25))", 1, 2, 0);
	trans[0][613]	= settr(612,0,18,266,266,"fsm_state = 45", 1, 2, 0);
	trans[0][614]	= settr(613,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][615]	= settr(614,0,616,267,0,"((input==24))", 1, 2, 0);
	trans[0][616]	= settr(615,0,18,268,268,"fsm_state = 45", 1, 2, 0);
	trans[0][617]	= settr(616,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][618]	= settr(617,0,619,269,0,"((input==26))", 1, 2, 0);
	trans[0][619]	= settr(618,0,620,270,270,"fsm_state = 45", 1, 2, 0);
	trans[0][620]	= settr(619,0,3410,271,271,"output = 7", 1, 2, 0);
	trans[0][621]	= settr(620,0,622,272,0,"((input==23))", 1, 2, 0);
	trans[0][622]	= settr(621,0,623,273,273,"fsm_state = 45", 1, 2, 0);
	trans[0][623]	= settr(622,0,3410,274,274,"output = 7", 1, 2, 0);
	trans[0][624]	= settr(623,0,625,275,0,"((input==20))", 1, 2, 0);
	trans[0][625]	= settr(624,0,18,276,276,"fsm_state = 45", 1, 2, 0);
	trans[0][626]	= settr(625,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][627]	= settr(626,0,628,277,0,"((input==27))", 1, 2, 0);
	trans[0][628]	= settr(627,0,18,278,278,"fsm_state = 45", 1, 2, 0);
	trans[0][629]	= settr(628,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][630]	= settr(629,0,631,279,0,"((input==21))", 1, 2, 0);
	trans[0][631]	= settr(630,0,632,280,280,"fsm_state = 45", 1, 2, 0);
	trans[0][632]	= settr(631,0,3410,281,281,"output = 7", 1, 2, 0);
	trans[0][633]	= settr(632,0,634,282,0,"((input==22))", 1, 2, 0);
	trans[0][634]	= settr(633,0,18,283,283,"fsm_state = 45", 1, 2, 0);
	trans[0][635]	= settr(634,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][636]	= settr(635,0,637,284,0,"((input==18))", 1, 2, 0);
	trans[0][637]	= settr(636,0,18,285,285,"fsm_state = 45", 1, 2, 0);
	trans[0][638]	= settr(637,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][639]	= settr(638,0,640,286,0,"((input==28))", 1, 2, 0);
	trans[0][640]	= settr(639,0,641,287,287,"fsm_state = 45", 1, 2, 0);
	trans[0][641]	= settr(640,0,3410,288,288,"output = 7", 1, 2, 0);
	trans[0][642]	= settr(641,0,643,289,0,"((input==19))", 1, 2, 0);
	trans[0][643]	= settr(642,0,18,290,290,"fsm_state = 45", 1, 2, 0);
	trans[0][644]	= settr(643,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][645]	= settr(644,0,646,291,0,"((input==16))", 1, 2, 0);
	trans[0][646]	= settr(645,0,18,292,292,"fsm_state = 43", 1, 2, 0);
	trans[0][647]	= settr(646,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][648]	= settr(647,0,18,2,0,"else", 0, 2, 0);
	trans[0][649]	= settr(648,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][652]	= settr(651,0,694,293,0,"((fsm_state==44))", 1, 2, 0);
	T = trans[0][694] = settr(693,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(693,0,653,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(693,0,656,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(693,0,659,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(693,0,662,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(693,0,665,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(693,0,668,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(693,0,671,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(693,0,674,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(693,0,677,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(693,0,680,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(693,0,683,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(693,0,686,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(693,0,689,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(693,0,692,0,0,"IF", 0, 2, 0);
	trans[0][653]	= settr(652,0,654,294,0,"((input==16))", 1, 2, 0);
	trans[0][654]	= settr(653,0,655,295,295,"fsm_state = 48", 1, 2, 0);
	trans[0][655]	= settr(654,0,3410,296,296,"output = 1", 1, 2, 0);
	trans[0][695]	= settr(694,0,3410,1,0,".(goto)", 0, 2, 0);
	trans[0][656]	= settr(655,0,657,297,0,"((input==17))", 1, 2, 0);
	trans[0][657]	= settr(656,0,658,298,298,"fsm_state = 47", 1, 2, 0);
	trans[0][658]	= settr(657,0,3410,299,299,"output = 1", 1, 2, 0);
	trans[0][659]	= settr(658,0,660,300,0,"((input==25))", 1, 2, 0);
	trans[0][660]	= settr(659,0,661,301,301,"fsm_state = 47", 1, 2, 0);
	trans[0][661]	= settr(660,0,3410,302,302,"output = 1", 1, 2, 0);
	trans[0][662]	= settr(661,0,663,303,0,"((input==20))", 1, 2, 0);
	trans[0][663]	= settr(662,0,664,304,304,"fsm_state = 47", 1, 2, 0);
	trans[0][664]	= settr(663,0,3410,305,305,"output = 1", 1, 2, 0);
	trans[0][665]	= settr(664,0,666,306,0,"((input==27))", 1, 2, 0);
	trans[0][666]	= settr(665,0,667,307,307,"fsm_state = 47", 1, 2, 0);
	trans[0][667]	= settr(666,0,3410,308,308,"output = 1", 1, 2, 0);
	trans[0][668]	= settr(667,0,669,309,0,"((input==22))", 1, 2, 0);
	trans[0][669]	= settr(668,0,670,310,310,"fsm_state = 47", 1, 2, 0);
	trans[0][670]	= settr(669,0,3410,311,311,"output = 1", 1, 2, 0);
	trans[0][671]	= settr(670,0,672,312,0,"((input==18))", 1, 2, 0);
	trans[0][672]	= settr(671,0,673,313,313,"fsm_state = 47", 1, 2, 0);
	trans[0][673]	= settr(672,0,3410,314,314,"output = 1", 1, 2, 0);
	trans[0][674]	= settr(673,0,675,315,0,"((input==19))", 1, 2, 0);
	trans[0][675]	= settr(674,0,676,316,316,"fsm_state = 47", 1, 2, 0);
	trans[0][676]	= settr(675,0,3410,317,317,"output = 1", 1, 2, 0);
	trans[0][677]	= settr(676,0,678,318,0,"((input==26))", 1, 2, 0);
	trans[0][678]	= settr(677,0,679,319,319,"fsm_state = 44", 1, 2, 0);
	trans[0][679]	= settr(678,0,3410,320,320,"output = 7", 1, 2, 0);
	trans[0][680]	= settr(679,0,681,321,0,"((input==23))", 1, 2, 0);
	trans[0][681]	= settr(680,0,682,322,322,"fsm_state = 44", 1, 2, 0);
	trans[0][682]	= settr(681,0,3410,323,323,"output = 7", 1, 2, 0);
	trans[0][683]	= settr(682,0,684,324,0,"((input==21))", 1, 2, 0);
	trans[0][684]	= settr(683,0,685,325,325,"fsm_state = 44", 1, 2, 0);
	trans[0][685]	= settr(684,0,3410,326,326,"output = 7", 1, 2, 0);
	trans[0][686]	= settr(685,0,687,327,0,"((input==28))", 1, 2, 0);
	trans[0][687]	= settr(686,0,688,328,328,"fsm_state = 44", 1, 2, 0);
	trans[0][688]	= settr(687,0,3410,329,329,"output = 7", 1, 2, 0);
	trans[0][689]	= settr(688,0,690,330,0,"((input==24))", 1, 2, 0);
	trans[0][690]	= settr(689,0,18,331,331,"fsm_state = 42", 1, 2, 0);
	trans[0][691]	= settr(690,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][692]	= settr(691,0,18,2,0,"else", 0, 2, 0);
	trans[0][693]	= settr(692,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][696]	= settr(695,0,738,332,0,"((fsm_state==43))", 1, 2, 0);
	T = trans[0][738] = settr(737,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(737,0,697,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(737,0,700,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(737,0,703,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(737,0,706,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(737,0,709,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(737,0,712,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(737,0,715,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(737,0,718,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(737,0,721,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(737,0,724,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(737,0,727,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(737,0,730,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(737,0,733,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(737,0,736,0,0,"IF", 0, 2, 0);
	trans[0][697]	= settr(696,0,698,333,0,"((input==21))", 1, 2, 0);
	trans[0][698]	= settr(697,0,18,334,334,"fsm_state = 45", 1, 2, 0);
	trans[0][699]	= settr(698,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][739]	= settr(738,0,3410,1,0,".(goto)", 0, 2, 0);
	trans[0][700]	= settr(699,0,701,335,0,"((input==17))", 1, 2, 0);
	trans[0][701]	= settr(700,0,18,336,336,"fsm_state = 43", 1, 2, 0);
	trans[0][702]	= settr(701,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][703]	= settr(702,0,704,337,0,"((input==25))", 1, 2, 0);
	trans[0][704]	= settr(703,0,18,338,338,"fsm_state = 43", 1, 2, 0);
	trans[0][705]	= settr(704,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][706]	= settr(705,0,707,339,0,"((input==24))", 1, 2, 0);
	trans[0][707]	= settr(706,0,18,340,340,"fsm_state = 43", 1, 2, 0);
	trans[0][708]	= settr(707,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][709]	= settr(708,0,710,341,0,"((input==26))", 1, 2, 0);
	trans[0][710]	= settr(709,0,18,342,342,"fsm_state = 43", 1, 2, 0);
	trans[0][711]	= settr(710,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][712]	= settr(711,0,713,343,0,"((input==16))", 1, 2, 0);
	trans[0][713]	= settr(712,0,714,344,344,"fsm_state = 43", 1, 2, 0);
	trans[0][714]	= settr(713,0,3410,345,345,"output = 6", 1, 2, 0);
	trans[0][715]	= settr(714,0,716,346,0,"((input==23))", 1, 2, 0);
	trans[0][716]	= settr(715,0,18,347,347,"fsm_state = 43", 1, 2, 0);
	trans[0][717]	= settr(716,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][718]	= settr(717,0,719,348,0,"((input==20))", 1, 2, 0);
	trans[0][719]	= settr(718,0,18,349,349,"fsm_state = 43", 1, 2, 0);
	trans[0][720]	= settr(719,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][721]	= settr(720,0,722,350,0,"((input==27))", 1, 2, 0);
	trans[0][722]	= settr(721,0,18,351,351,"fsm_state = 43", 1, 2, 0);
	trans[0][723]	= settr(722,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][724]	= settr(723,0,725,352,0,"((input==22))", 1, 2, 0);
	trans[0][725]	= settr(724,0,18,353,353,"fsm_state = 43", 1, 2, 0);
	trans[0][726]	= settr(725,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][727]	= settr(726,0,728,354,0,"((input==18))", 1, 2, 0);
	trans[0][728]	= settr(727,0,18,355,355,"fsm_state = 43", 1, 2, 0);
	trans[0][729]	= settr(728,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][730]	= settr(729,0,731,356,0,"((input==28))", 1, 2, 0);
	trans[0][731]	= settr(730,0,18,357,357,"fsm_state = 43", 1, 2, 0);
	trans[0][732]	= settr(731,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][733]	= settr(732,0,734,358,0,"((input==19))", 1, 2, 0);
	trans[0][734]	= settr(733,0,18,359,359,"fsm_state = 43", 1, 2, 0);
	trans[0][735]	= settr(734,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][736]	= settr(735,0,18,2,0,"else", 0, 2, 0);
	trans[0][737]	= settr(736,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][740]	= settr(739,0,782,360,0,"((fsm_state==42))", 1, 2, 0);
	T = trans[0][782] = settr(781,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(781,0,741,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(781,0,744,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(781,0,747,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(781,0,750,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(781,0,753,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(781,0,756,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(781,0,759,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(781,0,762,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(781,0,765,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(781,0,768,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(781,0,771,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(781,0,774,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(781,0,777,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(781,0,780,0,0,"IF", 0, 2, 0);
	trans[0][741]	= settr(740,0,742,361,0,"((input==25))", 1, 2, 0);
	trans[0][742]	= settr(741,0,743,362,362,"fsm_state = 47", 1, 2, 0);
	trans[0][743]	= settr(742,0,3410,363,363,"output = 1", 1, 2, 0);
	trans[0][783]	= settr(782,0,3410,1,0,".(goto)", 0, 2, 0);
	trans[0][744]	= settr(743,0,745,364,0,"((input==24))", 1, 2, 0);
	trans[0][745]	= settr(744,0,746,365,365,"fsm_state = 47", 1, 2, 0);
	trans[0][746]	= settr(745,0,3410,366,366,"output = 1", 1, 2, 0);
	trans[0][747]	= settr(746,0,748,367,0,"((input==22))", 1, 2, 0);
	trans[0][748]	= settr(747,0,749,368,368,"fsm_state = 47", 1, 2, 0);
	trans[0][749]	= settr(748,0,3410,369,369,"output = 1", 1, 2, 0);
	trans[0][750]	= settr(749,0,751,370,0,"((input==17))", 1, 2, 0);
	trans[0][751]	= settr(750,0,18,371,371,"fsm_state = 42", 1, 2, 0);
	trans[0][752]	= settr(751,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][753]	= settr(752,0,754,372,0,"((input==26))", 1, 2, 0);
	trans[0][754]	= settr(753,0,755,373,373,"fsm_state = 42", 1, 2, 0);
	trans[0][755]	= settr(754,0,3410,374,374,"output = 7", 1, 2, 0);
	trans[0][756]	= settr(755,0,757,375,0,"((input==23))", 1, 2, 0);
	trans[0][757]	= settr(756,0,758,376,376,"fsm_state = 42", 1, 2, 0);
	trans[0][758]	= settr(757,0,3410,377,377,"output = 7", 1, 2, 0);
	trans[0][759]	= settr(758,0,760,378,0,"((input==20))", 1, 2, 0);
	trans[0][760]	= settr(759,0,18,379,379,"fsm_state = 42", 1, 2, 0);
	trans[0][761]	= settr(760,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][762]	= settr(761,0,763,380,0,"((input==21))", 1, 2, 0);
	trans[0][763]	= settr(762,0,764,381,381,"fsm_state = 42", 1, 2, 0);
	trans[0][764]	= settr(763,0,3410,382,382,"output = 7", 1, 2, 0);
	trans[0][765]	= settr(764,0,766,383,0,"((input==28))", 1, 2, 0);
	trans[0][766]	= settr(765,0,767,384,384,"fsm_state = 42", 1, 2, 0);
	trans[0][767]	= settr(766,0,3410,385,385,"output = 7", 1, 2, 0);
	trans[0][768]	= settr(767,0,769,386,0,"((input==27))", 1, 2, 0);
	trans[0][769]	= settr(768,0,770,387,387,"fsm_state = 41", 1, 2, 0);
	trans[0][770]	= settr(769,0,3410,388,388,"output = 4", 1, 2, 0);
	trans[0][771]	= settr(770,0,772,389,0,"((input==16))", 1, 2, 0);
	trans[0][772]	= settr(771,0,18,390,390,"fsm_state = 40", 1, 2, 0);
	trans[0][773]	= settr(772,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][774]	= settr(773,0,775,391,0,"((input==18))", 1, 2, 0);
	trans[0][775]	= settr(774,0,776,392,392,"fsm_state = 39", 1, 2, 0);
	trans[0][776]	= settr(775,0,3410,393,393,"output = 4", 1, 2, 0);
	trans[0][777]	= settr(776,0,778,394,0,"((input==19))", 1, 2, 0);
	trans[0][778]	= settr(777,0,779,395,395,"fsm_state = 38", 1, 2, 0);
	trans[0][779]	= settr(778,0,3410,396,396,"output = 8", 1, 2, 0);
	trans[0][780]	= settr(779,0,18,2,0,"else", 0, 2, 0);
	trans[0][781]	= settr(780,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][784]	= settr(783,0,826,397,0,"((fsm_state==41))", 1, 2, 0);
	T = trans[0][826] = settr(825,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(825,0,785,0,0,"IF", 0, 2, 0);
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
	trans[0][785]	= settr(784,0,786,398,0,"((input==27))", 1, 2, 0);
	trans[0][786]	= settr(785,0,787,399,399,"fsm_state = 47", 1, 2, 0);
	trans[0][787]	= settr(786,0,3410,400,400,"output = 1", 1, 2, 0);
	trans[0][827]	= settr(826,0,3410,1,0,".(goto)", 0, 2, 0);
	trans[0][788]	= settr(787,0,789,401,0,"((input==22))", 1, 2, 0);
	trans[0][789]	= settr(788,0,790,402,402,"fsm_state = 47", 1, 2, 0);
	trans[0][790]	= settr(789,0,3410,403,403,"output = 1", 1, 2, 0);
	trans[0][791]	= settr(790,0,792,404,0,"((input==18))", 1, 2, 0);
	trans[0][792]	= settr(791,0,793,405,405,"fsm_state = 47", 1, 2, 0);
	trans[0][793]	= settr(792,0,3410,406,406,"output = 1", 1, 2, 0);
	trans[0][794]	= settr(793,0,795,407,0,"((input==19))", 1, 2, 0);
	trans[0][795]	= settr(794,0,796,408,408,"fsm_state = 47", 1, 2, 0);
	trans[0][796]	= settr(795,0,3410,409,409,"output = 1", 1, 2, 0);
	trans[0][797]	= settr(796,0,798,410,0,"((input==24))", 1, 2, 0);
	trans[0][798]	= settr(797,0,18,411,411,"fsm_state = 45", 1, 2, 0);
	trans[0][799]	= settr(798,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][800]	= settr(799,0,801,412,0,"((input==17))", 1, 2, 0);
	trans[0][801]	= settr(800,0,18,413,413,"fsm_state = 41", 1, 2, 0);
	trans[0][802]	= settr(801,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][803]	= settr(802,0,804,414,0,"((input==26))", 1, 2, 0);
	trans[0][804]	= settr(803,0,805,415,415,"fsm_state = 41", 1, 2, 0);
	trans[0][805]	= settr(804,0,3410,416,416,"output = 7", 1, 2, 0);
	trans[0][806]	= settr(805,0,807,417,0,"((input==23))", 1, 2, 0);
	trans[0][807]	= settr(806,0,808,418,418,"fsm_state = 41", 1, 2, 0);
	trans[0][808]	= settr(807,0,3410,419,419,"output = 7", 1, 2, 0);
	trans[0][809]	= settr(808,0,810,420,0,"((input==20))", 1, 2, 0);
	trans[0][810]	= settr(809,0,18,421,421,"fsm_state = 41", 1, 2, 0);
	trans[0][811]	= settr(810,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][812]	= settr(811,0,813,422,0,"((input==21))", 1, 2, 0);
	trans[0][813]	= settr(812,0,814,423,423,"fsm_state = 41", 1, 2, 0);
	trans[0][814]	= settr(813,0,3410,424,424,"output = 7", 1, 2, 0);
	trans[0][815]	= settr(814,0,816,425,0,"((input==28))", 1, 2, 0);
	trans[0][816]	= settr(815,0,817,426,426,"fsm_state = 41", 1, 2, 0);
	trans[0][817]	= settr(816,0,3410,427,427,"output = 7", 1, 2, 0);
	trans[0][818]	= settr(817,0,819,428,0,"((input==25))", 1, 2, 0);
	trans[0][819]	= settr(818,0,18,429,429,"fsm_state = 39", 1, 2, 0);
	trans[0][820]	= settr(819,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][821]	= settr(820,0,822,430,0,"((input==16))", 1, 2, 0);
	trans[0][822]	= settr(821,0,18,431,431,"fsm_state = 37", 1, 2, 0);
	trans[0][823]	= settr(822,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][824]	= settr(823,0,18,2,0,"else", 0, 2, 0);
	trans[0][825]	= settr(824,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][828]	= settr(827,0,870,432,0,"((fsm_state==40))", 1, 2, 0);
	T = trans[0][870] = settr(869,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(869,0,829,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(869,0,832,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(869,0,835,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(869,0,838,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(869,0,841,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(869,0,844,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(869,0,847,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(869,0,850,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(869,0,853,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(869,0,856,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(869,0,859,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(869,0,862,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(869,0,865,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(869,0,868,0,0,"IF", 0, 2, 0);
	trans[0][829]	= settr(828,0,830,433,0,"((input==25))", 1, 2, 0);
	trans[0][830]	= settr(829,0,831,434,434,"fsm_state = 48", 1, 2, 0);
	trans[0][831]	= settr(830,0,3410,435,435,"output = 1", 1, 2, 0);
	trans[0][871]	= settr(870,0,3410,1,0,".(goto)", 0, 2, 0);
	trans[0][832]	= settr(831,0,833,436,0,"((input==24))", 1, 2, 0);
	trans[0][833]	= settr(832,0,834,437,437,"fsm_state = 48", 1, 2, 0);
	trans[0][834]	= settr(833,0,3410,438,438,"output = 1", 1, 2, 0);
	trans[0][835]	= settr(834,0,836,439,0,"((input==22))", 1, 2, 0);
	trans[0][836]	= settr(835,0,837,440,440,"fsm_state = 48", 1, 2, 0);
	trans[0][837]	= settr(836,0,3410,441,441,"output = 1", 1, 2, 0);
	trans[0][838]	= settr(837,0,839,442,0,"((input==21))", 1, 2, 0);
	trans[0][839]	= settr(838,0,18,443,443,"fsm_state = 42", 1, 2, 0);
	trans[0][840]	= settr(839,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][841]	= settr(840,0,842,444,0,"((input==17))", 1, 2, 0);
	trans[0][842]	= settr(841,0,18,445,445,"fsm_state = 40", 1, 2, 0);
	trans[0][843]	= settr(842,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][844]	= settr(843,0,845,446,0,"((input==26))", 1, 2, 0);
	trans[0][845]	= settr(844,0,18,447,447,"fsm_state = 40", 1, 2, 0);
	trans[0][846]	= settr(845,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][847]	= settr(846,0,848,448,0,"((input==16))", 1, 2, 0);
	trans[0][848]	= settr(847,0,849,449,449,"fsm_state = 40", 1, 2, 0);
	trans[0][849]	= settr(848,0,3410,450,450,"output = 6", 1, 2, 0);
	trans[0][850]	= settr(849,0,851,451,0,"((input==23))", 1, 2, 0);
	trans[0][851]	= settr(850,0,18,452,452,"fsm_state = 40", 1, 2, 0);
	trans[0][852]	= settr(851,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][853]	= settr(852,0,854,453,0,"((input==20))", 1, 2, 0);
	trans[0][854]	= settr(853,0,18,454,454,"fsm_state = 40", 1, 2, 0);
	trans[0][855]	= settr(854,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][856]	= settr(855,0,857,455,0,"((input==28))", 1, 2, 0);
	trans[0][857]	= settr(856,0,18,456,456,"fsm_state = 40", 1, 2, 0);
	trans[0][858]	= settr(857,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][859]	= settr(858,0,860,457,0,"((input==27))", 1, 2, 0);
	trans[0][860]	= settr(859,0,861,458,458,"fsm_state = 37", 1, 2, 0);
	trans[0][861]	= settr(860,0,3410,459,459,"output = 4", 1, 2, 0);
	trans[0][862]	= settr(861,0,863,460,0,"((input==19))", 1, 2, 0);
	trans[0][863]	= settr(862,0,864,461,461,"fsm_state = 36", 1, 2, 0);
	trans[0][864]	= settr(863,0,3410,462,462,"output = 8", 1, 2, 0);
	trans[0][865]	= settr(864,0,866,463,0,"((input==18))", 1, 2, 0);
	trans[0][866]	= settr(865,0,867,464,464,"fsm_state = 35", 1, 2, 0);
	trans[0][867]	= settr(866,0,3410,465,465,"output = 4", 1, 2, 0);
	trans[0][868]	= settr(867,0,18,2,0,"else", 0, 2, 0);
	trans[0][869]	= settr(868,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][872]	= settr(871,0,955,466,0,"((fsm_state==39))", 1, 2, 0);
	T = trans[0][955] = settr(954,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(954,0,873,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(954,0,876,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(954,0,879,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(954,0,882,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(954,0,885,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(954,0,888,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(954,0,891,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(954,0,894,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(954,0,897,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(954,0,900,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(954,0,903,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(954,0,906,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(954,0,909,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(954,0,953,0,0,"IF", 0, 2, 0);
	trans[0][873]	= settr(872,0,874,467,0,"((input==27))", 1, 2, 0);
	trans[0][874]	= settr(873,0,875,468,468,"fsm_state = 47", 1, 2, 0);
	trans[0][875]	= settr(874,0,3410,469,469,"output = 1", 1, 2, 0);
	trans[0][956]	= settr(955,0,3410,1,0,".(goto)", 0, 2, 0);
	trans[0][876]	= settr(875,0,877,470,0,"((input==22))", 1, 2, 0);
	trans[0][877]	= settr(876,0,878,471,471,"fsm_state = 47", 1, 2, 0);
	trans[0][878]	= settr(877,0,3410,472,472,"output = 1", 1, 2, 0);
	trans[0][879]	= settr(878,0,880,473,0,"((input==18))", 1, 2, 0);
	trans[0][880]	= settr(879,0,881,474,474,"fsm_state = 47", 1, 2, 0);
	trans[0][881]	= settr(880,0,3410,475,475,"output = 1", 1, 2, 0);
	trans[0][882]	= settr(881,0,883,476,0,"((input==19))", 1, 2, 0);
	trans[0][883]	= settr(882,0,884,477,477,"fsm_state = 47", 1, 2, 0);
	trans[0][884]	= settr(883,0,3410,478,478,"output = 1", 1, 2, 0);
	trans[0][885]	= settr(884,0,886,479,0,"((input==24))", 1, 2, 0);
	trans[0][886]	= settr(885,0,18,480,480,"fsm_state = 45", 1, 2, 0);
	trans[0][887]	= settr(886,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][888]	= settr(887,0,889,481,0,"((input==17))", 1, 2, 0);
	trans[0][889]	= settr(888,0,18,482,482,"fsm_state = 39", 1, 2, 0);
	trans[0][890]	= settr(889,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][891]	= settr(890,0,892,483,0,"((input==26))", 1, 2, 0);
	trans[0][892]	= settr(891,0,893,484,484,"fsm_state = 39", 1, 2, 0);
	trans[0][893]	= settr(892,0,3410,485,485,"output = 7", 1, 2, 0);
	trans[0][894]	= settr(893,0,895,486,0,"((input==23))", 1, 2, 0);
	trans[0][895]	= settr(894,0,896,487,487,"fsm_state = 39", 1, 2, 0);
	trans[0][896]	= settr(895,0,3410,488,488,"output = 7", 1, 2, 0);
	trans[0][897]	= settr(896,0,898,489,0,"((input==20))", 1, 2, 0);
	trans[0][898]	= settr(897,0,18,490,490,"fsm_state = 39", 1, 2, 0);
	trans[0][899]	= settr(898,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][900]	= settr(899,0,901,491,0,"((input==21))", 1, 2, 0);
	trans[0][901]	= settr(900,0,902,492,492,"fsm_state = 39", 1, 2, 0);
	trans[0][902]	= settr(901,0,3410,493,493,"output = 7", 1, 2, 0);
	trans[0][903]	= settr(902,0,904,494,0,"((input==28))", 1, 2, 0);
	trans[0][904]	= settr(903,0,905,495,495,"fsm_state = 39", 1, 2, 0);
	trans[0][905]	= settr(904,0,3410,496,496,"output = 7", 1, 2, 0);
	trans[0][906]	= settr(905,0,907,497,0,"((input==16))", 1, 2, 0);
	trans[0][907]	= settr(906,0,18,498,498,"fsm_state = 35", 1, 2, 0);
	trans[0][908]	= settr(907,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][909]	= settr(908,0,910,499,0,"((input==25))", 1, 2, 0);
	trans[0][910]	= settr(909,0,911,500,500,"fsm_state = 34", 1, 2, 0);
	trans[0][911]	= settr(910,0,912,501,501,"output = 9", 1, 2, 0);
	trans[0][912]	= settr(911,0,950,502,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][950] = settr(949,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(949,0,943,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][943]	= settr(942,32,948,503,503,"D_STEP13", 1, 2, 0);
	T = trans[0][948] = settr(947,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(947,0,944,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(947,0,946,0,0,"IF", 0, 2, 0);
	trans[0][944]	= settr(943,0,1,504,0,"((dealt==0))", 1, 2, 0);
	trans[0][945]	= settr(944,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][949]	= settr(948,0,951,1,0,".(goto)", 0, 2, 0);
	trans[0][946]	= settr(945,0,947,2,0,"else", 0, 2, 0);
	trans[0][947]	= settr(946,0,951,1,0,"(1)", 0, 2, 0);
	trans[0][951]	= settr(950,0,952,505,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][952]	= settr(951,0,3410,506,506,"output = 5", 1, 2, 0);
	trans[0][953]	= settr(952,0,18,2,0,"else", 0, 2, 0);
	trans[0][954]	= settr(953,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][957]	= settr(956,0,999,507,0,"((fsm_state==38))", 1, 2, 0);
	T = trans[0][999] = settr(998,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(998,0,958,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(998,0,961,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(998,0,964,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(998,0,967,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(998,0,970,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(998,0,973,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(998,0,976,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(998,0,979,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(998,0,982,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(998,0,985,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(998,0,988,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(998,0,991,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(998,0,994,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(998,0,997,0,0,"IF", 0, 2, 0);
	trans[0][958]	= settr(957,0,959,508,0,"((input==25))", 1, 2, 0);
	trans[0][959]	= settr(958,0,960,509,509,"fsm_state = 47", 1, 2, 0);
	trans[0][960]	= settr(959,0,3410,510,510,"output = 1", 1, 2, 0);
	trans[0][1000]	= settr(999,0,3410,1,0,".(goto)", 0, 2, 0);
	trans[0][961]	= settr(960,0,962,511,0,"((input==24))", 1, 2, 0);
	trans[0][962]	= settr(961,0,963,512,512,"fsm_state = 47", 1, 2, 0);
	trans[0][963]	= settr(962,0,3410,513,513,"output = 1", 1, 2, 0);
	trans[0][964]	= settr(963,0,965,514,0,"((input==22))", 1, 2, 0);
	trans[0][965]	= settr(964,0,966,515,515,"fsm_state = 47", 1, 2, 0);
	trans[0][966]	= settr(965,0,3410,516,516,"output = 1", 1, 2, 0);
	trans[0][967]	= settr(966,0,968,517,0,"((input==17))", 1, 2, 0);
	trans[0][968]	= settr(967,0,969,518,518,"fsm_state = 38", 1, 2, 0);
	trans[0][969]	= settr(968,0,3410,519,519,"output = 13", 1, 2, 0);
	trans[0][970]	= settr(969,0,971,520,0,"((input==26))", 1, 2, 0);
	trans[0][971]	= settr(970,0,972,521,521,"fsm_state = 38", 1, 2, 0);
	trans[0][972]	= settr(971,0,3410,522,522,"output = 7", 1, 2, 0);
	trans[0][973]	= settr(972,0,974,523,0,"((input==23))", 1, 2, 0);
	trans[0][974]	= settr(973,0,975,524,524,"fsm_state = 38", 1, 2, 0);
	trans[0][975]	= settr(974,0,3410,525,525,"output = 7", 1, 2, 0);
	trans[0][976]	= settr(975,0,977,526,0,"((input==21))", 1, 2, 0);
	trans[0][977]	= settr(976,0,978,527,527,"fsm_state = 38", 1, 2, 0);
	trans[0][978]	= settr(977,0,3410,528,528,"output = 7", 1, 2, 0);
	trans[0][979]	= settr(978,0,980,529,0,"((input==28))", 1, 2, 0);
	trans[0][980]	= settr(979,0,981,530,530,"fsm_state = 38", 1, 2, 0);
	trans[0][981]	= settr(980,0,3410,531,531,"output = 7", 1, 2, 0);
	trans[0][982]	= settr(981,0,983,532,0,"((input==19))", 1, 2, 0);
	trans[0][983]	= settr(982,0,984,533,533,"fsm_state = 38", 1, 2, 0);
	trans[0][984]	= settr(983,0,3410,534,534,"output = 8", 1, 2, 0);
	trans[0][985]	= settr(984,0,986,535,0,"((input==16))", 1, 2, 0);
	trans[0][986]	= settr(985,0,987,536,536,"fsm_state = 36", 1, 2, 0);
	trans[0][987]	= settr(986,0,3410,537,537,"output = 12", 1, 2, 0);
	trans[0][988]	= settr(987,0,989,538,0,"((input==27))", 1, 2, 0);
	trans[0][989]	= settr(988,0,990,539,539,"fsm_state = 33", 1, 2, 0);
	trans[0][990]	= settr(989,0,3410,540,540,"output = 4", 1, 2, 0);
	trans[0][991]	= settr(990,0,992,541,0,"((input==20))", 1, 2, 0);
	trans[0][992]	= settr(991,0,993,542,542,"fsm_state = 32", 1, 2, 0);
	trans[0][993]	= settr(992,0,3410,543,543,"output = 3", 1, 2, 0);
	trans[0][994]	= settr(993,0,995,544,0,"((input==18))", 1, 2, 0);
	trans[0][995]	= settr(994,0,996,545,545,"fsm_state = 31", 1, 2, 0);
	trans[0][996]	= settr(995,0,3410,546,546,"output = 4", 1, 2, 0);
	trans[0][997]	= settr(996,0,18,2,0,"else", 0, 2, 0);
	trans[0][998]	= settr(997,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1001]	= settr(1000,0,1043,547,0,"((fsm_state==37))", 1, 2, 0);
	T = trans[0][1043] = settr(1042,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1042,0,1002,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1042,0,1005,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1042,0,1008,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1042,0,1011,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1042,0,1014,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1042,0,1017,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1042,0,1020,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1042,0,1023,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1042,0,1026,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1042,0,1029,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1042,0,1032,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1042,0,1035,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1042,0,1038,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1042,0,1041,0,0,"IF", 0, 2, 0);
	trans[0][1002]	= settr(1001,0,1003,548,0,"((input==27))", 1, 2, 0);
	trans[0][1003]	= settr(1002,0,1004,549,549,"fsm_state = 48", 1, 2, 0);
	trans[0][1004]	= settr(1003,0,3410,550,550,"output = 1", 1, 2, 0);
	trans[0][1044]	= settr(1043,0,3410,1,0,".(goto)", 0, 2, 0);
	trans[0][1005]	= settr(1004,0,1006,551,0,"((input==22))", 1, 2, 0);
	trans[0][1006]	= settr(1005,0,1007,552,552,"fsm_state = 48", 1, 2, 0);
	trans[0][1007]	= settr(1006,0,3410,553,553,"output = 1", 1, 2, 0);
	trans[0][1008]	= settr(1007,0,1009,554,0,"((input==18))", 1, 2, 0);
	trans[0][1009]	= settr(1008,0,1010,555,555,"fsm_state = 48", 1, 2, 0);
	trans[0][1010]	= settr(1009,0,3410,556,556,"output = 1", 1, 2, 0);
	trans[0][1011]	= settr(1010,0,1012,557,0,"((input==19))", 1, 2, 0);
	trans[0][1012]	= settr(1011,0,1013,558,558,"fsm_state = 48", 1, 2, 0);
	trans[0][1013]	= settr(1012,0,3410,559,559,"output = 1", 1, 2, 0);
	trans[0][1014]	= settr(1013,0,1015,560,0,"((input==24))", 1, 2, 0);
	trans[0][1015]	= settr(1014,0,18,561,561,"fsm_state = 43", 1, 2, 0);
	trans[0][1016]	= settr(1015,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1017]	= settr(1016,0,1018,562,0,"((input==21))", 1, 2, 0);
	trans[0][1018]	= settr(1017,0,18,563,563,"fsm_state = 41", 1, 2, 0);
	trans[0][1019]	= settr(1018,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1020]	= settr(1019,0,1021,564,0,"((input==17))", 1, 2, 0);
	trans[0][1021]	= settr(1020,0,18,565,565,"fsm_state = 37", 1, 2, 0);
	trans[0][1022]	= settr(1021,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1023]	= settr(1022,0,1024,566,0,"((input==26))", 1, 2, 0);
	trans[0][1024]	= settr(1023,0,18,567,567,"fsm_state = 37", 1, 2, 0);
	trans[0][1025]	= settr(1024,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1026]	= settr(1025,0,1027,568,0,"((input==16))", 1, 2, 0);
	trans[0][1027]	= settr(1026,0,1028,569,569,"fsm_state = 37", 1, 2, 0);
	trans[0][1028]	= settr(1027,0,3410,570,570,"output = 6", 1, 2, 0);
	trans[0][1029]	= settr(1028,0,1030,571,0,"((input==23))", 1, 2, 0);
	trans[0][1030]	= settr(1029,0,18,572,572,"fsm_state = 37", 1, 2, 0);
	trans[0][1031]	= settr(1030,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1032]	= settr(1031,0,1033,573,0,"((input==20))", 1, 2, 0);
	trans[0][1033]	= settr(1032,0,18,574,574,"fsm_state = 37", 1, 2, 0);
	trans[0][1034]	= settr(1033,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1035]	= settr(1034,0,1036,575,0,"((input==28))", 1, 2, 0);
	trans[0][1036]	= settr(1035,0,18,576,576,"fsm_state = 37", 1, 2, 0);
	trans[0][1037]	= settr(1036,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1038]	= settr(1037,0,1039,577,0,"((input==25))", 1, 2, 0);
	trans[0][1039]	= settr(1038,0,18,578,578,"fsm_state = 35", 1, 2, 0);
	trans[0][1040]	= settr(1039,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1041]	= settr(1040,0,18,2,0,"else", 0, 2, 0);
	trans[0][1042]	= settr(1041,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1045]	= settr(1044,0,1087,579,0,"((fsm_state==36))", 1, 2, 0);
	T = trans[0][1087] = settr(1086,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1086,0,1046,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1086,0,1049,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1086,0,1052,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1086,0,1055,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1086,0,1058,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1086,0,1061,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1086,0,1064,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1086,0,1067,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1086,0,1070,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1086,0,1073,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1086,0,1076,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1086,0,1079,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1086,0,1082,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1086,0,1085,0,0,"IF", 0, 2, 0);
	trans[0][1046]	= settr(1045,0,1047,580,0,"((input==25))", 1, 2, 0);
	trans[0][1047]	= settr(1046,0,1048,581,581,"fsm_state = 48", 1, 2, 0);
	trans[0][1048]	= settr(1047,0,3410,582,582,"output = 1", 1, 2, 0);
	trans[0][1088]	= settr(1087,0,3410,1,0,".(goto)", 0, 2, 0);
	trans[0][1049]	= settr(1048,0,1050,583,0,"((input==24))", 1, 2, 0);
	trans[0][1050]	= settr(1049,0,1051,584,584,"fsm_state = 48", 1, 2, 0);
	trans[0][1051]	= settr(1050,0,3410,585,585,"output = 1", 1, 2, 0);
	trans[0][1052]	= settr(1051,0,1053,586,0,"((input==22))", 1, 2, 0);
	trans[0][1053]	= settr(1052,0,1054,587,587,"fsm_state = 48", 1, 2, 0);
	trans[0][1054]	= settr(1053,0,3410,588,588,"output = 1", 1, 2, 0);
	trans[0][1055]	= settr(1054,0,1056,589,0,"((input==21))", 1, 2, 0);
	trans[0][1056]	= settr(1055,0,1057,590,590,"fsm_state = 38", 1, 2, 0);
	trans[0][1057]	= settr(1056,0,3410,591,591,"output = 12", 1, 2, 0);
	trans[0][1058]	= settr(1057,0,1059,592,0,"((input==17))", 1, 2, 0);
	trans[0][1059]	= settr(1058,0,1060,593,593,"fsm_state = 36", 1, 2, 0);
	trans[0][1060]	= settr(1059,0,3410,594,594,"output = 13", 1, 2, 0);
	trans[0][1061]	= settr(1060,0,1062,595,0,"((input==26))", 1, 2, 0);
	trans[0][1062]	= settr(1061,0,1063,596,596,"fsm_state = 36", 1, 2, 0);
	trans[0][1063]	= settr(1062,0,3410,597,597,"output = 12", 1, 2, 0);
	trans[0][1064]	= settr(1063,0,1065,598,0,"((input==16))", 1, 2, 0);
	trans[0][1065]	= settr(1064,0,1066,599,599,"fsm_state = 36", 1, 2, 0);
	trans[0][1066]	= settr(1065,0,3410,600,600,"output = 6", 1, 2, 0);
	trans[0][1067]	= settr(1066,0,1068,601,0,"((input==23))", 1, 2, 0);
	trans[0][1068]	= settr(1067,0,1069,602,602,"fsm_state = 36", 1, 2, 0);
	trans[0][1069]	= settr(1068,0,3410,603,603,"output = 12", 1, 2, 0);
	trans[0][1070]	= settr(1069,0,1071,604,0,"((input==28))", 1, 2, 0);
	trans[0][1071]	= settr(1070,0,1072,605,605,"fsm_state = 36", 1, 2, 0);
	trans[0][1072]	= settr(1071,0,3410,606,606,"output = 12", 1, 2, 0);
	trans[0][1073]	= settr(1072,0,1074,607,0,"((input==19))", 1, 2, 0);
	trans[0][1074]	= settr(1073,0,1075,608,608,"fsm_state = 36", 1, 2, 0);
	trans[0][1075]	= settr(1074,0,3410,609,609,"output = 8", 1, 2, 0);
	trans[0][1076]	= settr(1075,0,1077,610,0,"((input==27))", 1, 2, 0);
	trans[0][1077]	= settr(1076,0,1078,611,611,"fsm_state = 30", 1, 2, 0);
	trans[0][1078]	= settr(1077,0,3410,612,612,"output = 4", 1, 2, 0);
	trans[0][1079]	= settr(1078,0,1080,613,0,"((input==18))", 1, 2, 0);
	trans[0][1080]	= settr(1079,0,1081,614,614,"fsm_state = 29", 1, 2, 0);
	trans[0][1081]	= settr(1080,0,3410,615,615,"output = 4", 1, 2, 0);
	trans[0][1082]	= settr(1081,0,1083,616,0,"((input==20))", 1, 2, 0);
	trans[0][1083]	= settr(1082,0,1084,617,617,"fsm_state = 28", 1, 2, 0);
	trans[0][1084]	= settr(1083,0,3410,618,618,"output = 3", 1, 2, 0);
	trans[0][1085]	= settr(1084,0,18,2,0,"else", 0, 2, 0);
	trans[0][1086]	= settr(1085,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1089]	= settr(1088,0,1172,619,0,"((fsm_state==35))", 1, 2, 0);
	T = trans[0][1172] = settr(1171,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1171,0,1090,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1171,0,1093,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1171,0,1096,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1171,0,1099,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1171,0,1102,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1171,0,1105,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1171,0,1108,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1171,0,1111,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1171,0,1114,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1171,0,1117,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1171,0,1120,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1171,0,1123,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1171,0,1126,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1171,0,1170,0,0,"IF", 0, 2, 0);
	trans[0][1090]	= settr(1089,0,1091,620,0,"((input==27))", 1, 2, 0);
	trans[0][1091]	= settr(1090,0,1092,621,621,"fsm_state = 48", 1, 2, 0);
	trans[0][1092]	= settr(1091,0,3410,622,622,"output = 1", 1, 2, 0);
	trans[0][1173]	= settr(1172,0,3410,1,0,".(goto)", 0, 2, 0);
	trans[0][1093]	= settr(1092,0,1094,623,0,"((input==22))", 1, 2, 0);
	trans[0][1094]	= settr(1093,0,1095,624,624,"fsm_state = 48", 1, 2, 0);
	trans[0][1095]	= settr(1094,0,3410,625,625,"output = 1", 1, 2, 0);
	trans[0][1096]	= settr(1095,0,1097,626,0,"((input==18))", 1, 2, 0);
	trans[0][1097]	= settr(1096,0,1098,627,627,"fsm_state = 48", 1, 2, 0);
	trans[0][1098]	= settr(1097,0,3410,628,628,"output = 1", 1, 2, 0);
	trans[0][1099]	= settr(1098,0,1100,629,0,"((input==19))", 1, 2, 0);
	trans[0][1100]	= settr(1099,0,1101,630,630,"fsm_state = 48", 1, 2, 0);
	trans[0][1101]	= settr(1100,0,3410,631,631,"output = 1", 1, 2, 0);
	trans[0][1102]	= settr(1101,0,1103,632,0,"((input==24))", 1, 2, 0);
	trans[0][1103]	= settr(1102,0,18,633,633,"fsm_state = 43", 1, 2, 0);
	trans[0][1104]	= settr(1103,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1105]	= settr(1104,0,1106,634,0,"((input==21))", 1, 2, 0);
	trans[0][1106]	= settr(1105,0,18,635,635,"fsm_state = 39", 1, 2, 0);
	trans[0][1107]	= settr(1106,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1108]	= settr(1107,0,1109,636,0,"((input==17))", 1, 2, 0);
	trans[0][1109]	= settr(1108,0,18,637,637,"fsm_state = 35", 1, 2, 0);
	trans[0][1110]	= settr(1109,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1111]	= settr(1110,0,1112,638,0,"((input==26))", 1, 2, 0);
	trans[0][1112]	= settr(1111,0,18,639,639,"fsm_state = 35", 1, 2, 0);
	trans[0][1113]	= settr(1112,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1114]	= settr(1113,0,1115,640,0,"((input==16))", 1, 2, 0);
	trans[0][1115]	= settr(1114,0,1116,641,641,"fsm_state = 35", 1, 2, 0);
	trans[0][1116]	= settr(1115,0,3410,642,642,"output = 6", 1, 2, 0);
	trans[0][1117]	= settr(1116,0,1118,643,0,"((input==23))", 1, 2, 0);
	trans[0][1118]	= settr(1117,0,18,644,644,"fsm_state = 35", 1, 2, 0);
	trans[0][1119]	= settr(1118,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1120]	= settr(1119,0,1121,645,0,"((input==20))", 1, 2, 0);
	trans[0][1121]	= settr(1120,0,18,646,646,"fsm_state = 35", 1, 2, 0);
	trans[0][1122]	= settr(1121,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1123]	= settr(1122,0,1124,647,0,"((input==28))", 1, 2, 0);
	trans[0][1124]	= settr(1123,0,18,648,648,"fsm_state = 35", 1, 2, 0);
	trans[0][1125]	= settr(1124,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1126]	= settr(1125,0,1127,649,0,"((input==25))", 1, 2, 0);
	trans[0][1127]	= settr(1126,0,1128,650,650,"fsm_state = 27", 1, 2, 0);
	trans[0][1128]	= settr(1127,0,1129,651,651,"output = 9", 1, 2, 0);
	trans[0][1129]	= settr(1128,0,1167,652,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][1167] = settr(1166,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1166,0,1160,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][1160]	= settr(1159,32,1165,653,653,"D_STEP13", 1, 2, 0);
	T = trans[0][1165] = settr(1164,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1164,0,1161,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1164,0,1163,0,0,"IF", 0, 2, 0);
	trans[0][1161]	= settr(1160,0,1,654,0,"((dealt==0))", 1, 2, 0);
	trans[0][1162]	= settr(1161,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][1166]	= settr(1165,0,1168,1,0,".(goto)", 0, 2, 0);
	trans[0][1163]	= settr(1162,0,1164,2,0,"else", 0, 2, 0);
	trans[0][1164]	= settr(1163,0,1168,1,0,"(1)", 0, 2, 0);
	trans[0][1168]	= settr(1167,0,1169,655,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][1169]	= settr(1168,0,3410,656,656,"output = 5", 1, 2, 0);
	trans[0][1170]	= settr(1169,0,18,2,0,"else", 0, 2, 0);
	trans[0][1171]	= settr(1170,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1174]	= settr(1173,0,1216,657,0,"((fsm_state==34))", 1, 2, 0);
	T = trans[0][1216] = settr(1215,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1215,0,1175,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1215,0,1178,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1215,0,1181,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1215,0,1184,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1215,0,1187,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1215,0,1190,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1215,0,1193,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1215,0,1196,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1215,0,1199,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1215,0,1202,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1215,0,1205,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1215,0,1208,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1215,0,1211,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1215,0,1214,0,0,"IF", 0, 2, 0);
	trans[0][1175]	= settr(1174,0,1176,658,0,"((input==25))", 1, 2, 0);
	trans[0][1176]	= settr(1175,0,1177,659,659,"fsm_state = 47", 1, 2, 0);
	trans[0][1177]	= settr(1176,0,3410,660,660,"output = 1", 1, 2, 0);
	trans[0][1217]	= settr(1216,0,3410,1,0,".(goto)", 0, 2, 0);
	trans[0][1178]	= settr(1177,0,1179,661,0,"((input==27))", 1, 2, 0);
	trans[0][1179]	= settr(1178,0,1180,662,662,"fsm_state = 47", 1, 2, 0);
	trans[0][1180]	= settr(1179,0,3410,663,663,"output = 1", 1, 2, 0);
	trans[0][1181]	= settr(1180,0,1182,664,0,"((input==22))", 1, 2, 0);
	trans[0][1182]	= settr(1181,0,1183,665,665,"fsm_state = 47", 1, 2, 0);
	trans[0][1183]	= settr(1182,0,3410,666,666,"output = 1", 1, 2, 0);
	trans[0][1184]	= settr(1183,0,1185,667,0,"((input==18))", 1, 2, 0);
	trans[0][1185]	= settr(1184,0,1186,668,668,"fsm_state = 47", 1, 2, 0);
	trans[0][1186]	= settr(1185,0,3410,669,669,"output = 1", 1, 2, 0);
	trans[0][1187]	= settr(1186,0,1188,670,0,"((input==19))", 1, 2, 0);
	trans[0][1188]	= settr(1187,0,1189,671,671,"fsm_state = 47", 1, 2, 0);
	trans[0][1189]	= settr(1188,0,3410,672,672,"output = 1", 1, 2, 0);
	trans[0][1190]	= settr(1189,0,1191,673,0,"((input==24))", 1, 2, 0);
	trans[0][1191]	= settr(1190,0,18,674,674,"fsm_state = 42", 1, 2, 0);
	trans[0][1192]	= settr(1191,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1193]	= settr(1192,0,1194,675,0,"((input==17))", 1, 2, 0);
	trans[0][1194]	= settr(1193,0,18,676,676,"fsm_state = 34", 1, 2, 0);
	trans[0][1195]	= settr(1194,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1196]	= settr(1195,0,1197,677,0,"((input==26))", 1, 2, 0);
	trans[0][1197]	= settr(1196,0,1198,678,678,"fsm_state = 34", 1, 2, 0);
	trans[0][1198]	= settr(1197,0,3410,679,679,"output = 7", 1, 2, 0);
	trans[0][1199]	= settr(1198,0,1200,680,0,"((input==23))", 1, 2, 0);
	trans[0][1200]	= settr(1199,0,1201,681,681,"fsm_state = 34", 1, 2, 0);
	trans[0][1201]	= settr(1200,0,3410,682,682,"output = 7", 1, 2, 0);
	trans[0][1202]	= settr(1201,0,1203,683,0,"((input==20))", 1, 2, 0);
	trans[0][1203]	= settr(1202,0,18,684,684,"fsm_state = 34", 1, 2, 0);
	trans[0][1204]	= settr(1203,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1205]	= settr(1204,0,1206,685,0,"((input==21))", 1, 2, 0);
	trans[0][1206]	= settr(1205,0,1207,686,686,"fsm_state = 34", 1, 2, 0);
	trans[0][1207]	= settr(1206,0,3410,687,687,"output = 7", 1, 2, 0);
	trans[0][1208]	= settr(1207,0,1209,688,0,"((input==28))", 1, 2, 0);
	trans[0][1209]	= settr(1208,0,1210,689,689,"fsm_state = 34", 1, 2, 0);
	trans[0][1210]	= settr(1209,0,3410,690,690,"output = 7", 1, 2, 0);
	trans[0][1211]	= settr(1210,0,1212,691,0,"((input==16))", 1, 2, 0);
	trans[0][1212]	= settr(1211,0,18,692,692,"fsm_state = 27", 1, 2, 0);
	trans[0][1213]	= settr(1212,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1214]	= settr(1213,0,18,2,0,"else", 0, 2, 0);
	trans[0][1215]	= settr(1214,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1218]	= settr(1217,0,1260,693,0,"((fsm_state==33))", 1, 2, 0);
	T = trans[0][1260] = settr(1259,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1259,0,1219,0,0,"IF", 0, 2, 0);
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
	trans[0][1219]	= settr(1218,0,1220,694,0,"((input==27))", 1, 2, 0);
	trans[0][1220]	= settr(1219,0,1221,695,695,"fsm_state = 47", 1, 2, 0);
	trans[0][1221]	= settr(1220,0,3410,696,696,"output = 1", 1, 2, 0);
	trans[0][1261]	= settr(1260,0,3410,1,0,".(goto)", 0, 2, 0);
	trans[0][1222]	= settr(1221,0,1223,697,0,"((input==22))", 1, 2, 0);
	trans[0][1223]	= settr(1222,0,1224,698,698,"fsm_state = 47", 1, 2, 0);
	trans[0][1224]	= settr(1223,0,3410,699,699,"output = 1", 1, 2, 0);
	trans[0][1225]	= settr(1224,0,1226,700,0,"((input==18))", 1, 2, 0);
	trans[0][1226]	= settr(1225,0,1227,701,701,"fsm_state = 47", 1, 2, 0);
	trans[0][1227]	= settr(1226,0,3410,702,702,"output = 1", 1, 2, 0);
	trans[0][1228]	= settr(1227,0,1229,703,0,"((input==19))", 1, 2, 0);
	trans[0][1229]	= settr(1228,0,1230,704,704,"fsm_state = 47", 1, 2, 0);
	trans[0][1230]	= settr(1229,0,3410,705,705,"output = 1", 1, 2, 0);
	trans[0][1231]	= settr(1230,0,1232,706,0,"((input==24))", 1, 2, 0);
	trans[0][1232]	= settr(1231,0,18,707,707,"fsm_state = 45", 1, 2, 0);
	trans[0][1233]	= settr(1232,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1234]	= settr(1233,0,1235,708,0,"((input==26))", 1, 2, 0);
	trans[0][1235]	= settr(1234,0,1236,709,709,"fsm_state = 33", 1, 2, 0);
	trans[0][1236]	= settr(1235,0,3410,710,710,"output = 7", 1, 2, 0);
	trans[0][1237]	= settr(1236,0,1238,711,0,"((input==23))", 1, 2, 0);
	trans[0][1238]	= settr(1237,0,1239,712,712,"fsm_state = 33", 1, 2, 0);
	trans[0][1239]	= settr(1238,0,3410,713,713,"output = 7", 1, 2, 0);
	trans[0][1240]	= settr(1239,0,1241,714,0,"((input==21))", 1, 2, 0);
	trans[0][1241]	= settr(1240,0,1242,715,715,"fsm_state = 33", 1, 2, 0);
	trans[0][1242]	= settr(1241,0,3410,716,716,"output = 7", 1, 2, 0);
	trans[0][1243]	= settr(1242,0,1244,717,0,"((input==28))", 1, 2, 0);
	trans[0][1244]	= settr(1243,0,1245,718,718,"fsm_state = 33", 1, 2, 0);
	trans[0][1245]	= settr(1244,0,3410,719,719,"output = 7", 1, 2, 0);
	trans[0][1246]	= settr(1245,0,1247,720,0,"((input==25))", 1, 2, 0);
	trans[0][1247]	= settr(1246,0,18,721,721,"fsm_state = 31", 1, 2, 0);
	trans[0][1248]	= settr(1247,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1249]	= settr(1248,0,1250,722,0,"((input==16))", 1, 2, 0);
	trans[0][1250]	= settr(1249,0,1251,723,723,"fsm_state = 30", 1, 2, 0);
	trans[0][1251]	= settr(1250,0,3410,724,724,"output = 12", 1, 2, 0);
	trans[0][1252]	= settr(1251,0,1253,725,0,"((input==17))", 1, 2, 0);
	trans[0][1253]	= settr(1252,0,18,726,726,"fsm_state = 26", 1, 2, 0);
	trans[0][1254]	= settr(1253,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1255]	= settr(1254,0,1256,727,0,"((input==20))", 1, 2, 0);
	trans[0][1256]	= settr(1255,0,18,728,728,"fsm_state = 25", 1, 2, 0);
	trans[0][1257]	= settr(1256,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1258]	= settr(1257,0,18,2,0,"else", 0, 2, 0);
	trans[0][1259]	= settr(1258,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1262]	= settr(1261,0,1304,729,0,"((fsm_state==32))", 1, 2, 0);
	T = trans[0][1304] = settr(1303,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1303,0,1263,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1303,0,1266,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1303,0,1269,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1303,0,1272,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1303,0,1275,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1303,0,1278,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1303,0,1281,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1303,0,1284,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1303,0,1287,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1303,0,1290,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1303,0,1293,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1303,0,1296,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1303,0,1299,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1303,0,1302,0,0,"IF", 0, 2, 0);
	trans[0][1263]	= settr(1262,0,1264,730,0,"((input==25))", 1, 2, 0);
	trans[0][1264]	= settr(1263,0,1265,731,731,"fsm_state = 47", 1, 2, 0);
	trans[0][1265]	= settr(1264,0,3410,732,732,"output = 1", 1, 2, 0);
	trans[0][1305]	= settr(1304,0,3410,1,0,".(goto)", 0, 2, 0);
	trans[0][1266]	= settr(1265,0,1267,733,0,"((input==24))", 1, 2, 0);
	trans[0][1267]	= settr(1266,0,1268,734,734,"fsm_state = 47", 1, 2, 0);
	trans[0][1268]	= settr(1267,0,3410,735,735,"output = 1", 1, 2, 0);
	trans[0][1269]	= settr(1268,0,1270,736,0,"((input==22))", 1, 2, 0);
	trans[0][1270]	= settr(1269,0,1271,737,737,"fsm_state = 47", 1, 2, 0);
	trans[0][1271]	= settr(1270,0,3410,738,738,"output = 1", 1, 2, 0);
	trans[0][1272]	= settr(1271,0,1273,739,0,"((input==17))", 1, 2, 0);
	trans[0][1273]	= settr(1272,0,1274,740,740,"fsm_state = 32", 1, 2, 0);
	trans[0][1274]	= settr(1273,0,3410,741,741,"output = 12", 1, 2, 0);
	trans[0][1275]	= settr(1274,0,1276,742,0,"((input==26))", 1, 2, 0);
	trans[0][1276]	= settr(1275,0,1277,743,743,"fsm_state = 32", 1, 2, 0);
	trans[0][1277]	= settr(1276,0,3410,744,744,"output = 7", 1, 2, 0);
	trans[0][1278]	= settr(1277,0,1279,745,0,"((input==23))", 1, 2, 0);
	trans[0][1279]	= settr(1278,0,1280,746,746,"fsm_state = 32", 1, 2, 0);
	trans[0][1280]	= settr(1279,0,3410,747,747,"output = 7", 1, 2, 0);
	trans[0][1281]	= settr(1280,0,1282,748,0,"((input==20))", 1, 2, 0);
	trans[0][1282]	= settr(1281,0,1283,749,749,"fsm_state = 32", 1, 2, 0);
	trans[0][1283]	= settr(1282,0,3410,750,750,"output = 12", 1, 2, 0);
	trans[0][1284]	= settr(1283,0,1285,751,0,"((input==21))", 1, 2, 0);
	trans[0][1285]	= settr(1284,0,1286,752,752,"fsm_state = 32", 1, 2, 0);
	trans[0][1286]	= settr(1285,0,3410,753,753,"output = 7", 1, 2, 0);
	trans[0][1287]	= settr(1286,0,1288,754,0,"((input==28))", 1, 2, 0);
	trans[0][1288]	= settr(1287,0,1289,755,755,"fsm_state = 32", 1, 2, 0);
	trans[0][1289]	= settr(1288,0,3410,756,756,"output = 7", 1, 2, 0);
	trans[0][1290]	= settr(1289,0,1291,757,0,"((input==19))", 1, 2, 0);
	trans[0][1291]	= settr(1290,0,1292,758,758,"fsm_state = 32", 1, 2, 0);
	trans[0][1292]	= settr(1291,0,3410,759,759,"output = 8", 1, 2, 0);
	trans[0][1293]	= settr(1292,0,1294,760,0,"((input==18))", 1, 2, 0);
	trans[0][1294]	= settr(1293,0,1295,761,761,"fsm_state = 24", 1, 2, 0);
	trans[0][1295]	= settr(1294,0,3410,762,762,"output = 4", 1, 2, 0);
	trans[0][1296]	= settr(1295,0,1297,763,0,"((input==16))", 1, 2, 0);
	trans[0][1297]	= settr(1296,0,1298,764,764,"fsm_state = 23", 1, 2, 0);
	trans[0][1298]	= settr(1297,0,3410,765,765,"output = 10", 1, 2, 0);
	trans[0][1299]	= settr(1298,0,1300,766,0,"((input==27))", 1, 2, 0);
	trans[0][1300]	= settr(1299,0,1301,767,767,"fsm_state = 22", 1, 2, 0);
	trans[0][1301]	= settr(1300,0,3410,768,768,"output = 4", 1, 2, 0);
	trans[0][1302]	= settr(1301,0,18,2,0,"else", 0, 2, 0);
	trans[0][1303]	= settr(1302,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1306]	= settr(1305,0,1389,769,0,"((fsm_state==31))", 1, 2, 0);
	T = trans[0][1389] = settr(1388,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1388,0,1307,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1388,0,1310,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1388,0,1313,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1388,0,1316,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1388,0,1319,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1388,0,1322,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1388,0,1325,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1388,0,1328,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1388,0,1331,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1388,0,1334,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1388,0,1337,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1388,0,1340,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1388,0,1343,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1388,0,1387,0,0,"IF", 0, 2, 0);
	trans[0][1307]	= settr(1306,0,1308,770,0,"((input==27))", 1, 2, 0);
	trans[0][1308]	= settr(1307,0,1309,771,771,"fsm_state = 47", 1, 2, 0);
	trans[0][1309]	= settr(1308,0,3410,772,772,"output = 1", 1, 2, 0);
	trans[0][1390]	= settr(1389,0,3410,1,0,".(goto)", 0, 2, 0);
	trans[0][1310]	= settr(1309,0,1311,773,0,"((input==22))", 1, 2, 0);
	trans[0][1311]	= settr(1310,0,1312,774,774,"fsm_state = 47", 1, 2, 0);
	trans[0][1312]	= settr(1311,0,3410,775,775,"output = 1", 1, 2, 0);
	trans[0][1313]	= settr(1312,0,1314,776,0,"((input==18))", 1, 2, 0);
	trans[0][1314]	= settr(1313,0,1315,777,777,"fsm_state = 47", 1, 2, 0);
	trans[0][1315]	= settr(1314,0,3410,778,778,"output = 1", 1, 2, 0);
	trans[0][1316]	= settr(1315,0,1317,779,0,"((input==19))", 1, 2, 0);
	trans[0][1317]	= settr(1316,0,1318,780,780,"fsm_state = 47", 1, 2, 0);
	trans[0][1318]	= settr(1317,0,3410,781,781,"output = 1", 1, 2, 0);
	trans[0][1319]	= settr(1318,0,1320,782,0,"((input==24))", 1, 2, 0);
	trans[0][1320]	= settr(1319,0,18,783,783,"fsm_state = 45", 1, 2, 0);
	trans[0][1321]	= settr(1320,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1322]	= settr(1321,0,1323,784,0,"((input==26))", 1, 2, 0);
	trans[0][1323]	= settr(1322,0,1324,785,785,"fsm_state = 31", 1, 2, 0);
	trans[0][1324]	= settr(1323,0,3410,786,786,"output = 7", 1, 2, 0);
	trans[0][1325]	= settr(1324,0,1326,787,0,"((input==23))", 1, 2, 0);
	trans[0][1326]	= settr(1325,0,1327,788,788,"fsm_state = 31", 1, 2, 0);
	trans[0][1327]	= settr(1326,0,3410,789,789,"output = 7", 1, 2, 0);
	trans[0][1328]	= settr(1327,0,1329,790,0,"((input==21))", 1, 2, 0);
	trans[0][1329]	= settr(1328,0,1330,791,791,"fsm_state = 31", 1, 2, 0);
	trans[0][1330]	= settr(1329,0,3410,792,792,"output = 7", 1, 2, 0);
	trans[0][1331]	= settr(1330,0,1332,793,0,"((input==28))", 1, 2, 0);
	trans[0][1332]	= settr(1331,0,1333,794,794,"fsm_state = 31", 1, 2, 0);
	trans[0][1333]	= settr(1332,0,3410,795,795,"output = 7", 1, 2, 0);
	trans[0][1334]	= settr(1333,0,1335,796,0,"((input==16))", 1, 2, 0);
	trans[0][1335]	= settr(1334,0,1336,797,797,"fsm_state = 29", 1, 2, 0);
	trans[0][1336]	= settr(1335,0,3410,798,798,"output = 12", 1, 2, 0);
	trans[0][1337]	= settr(1336,0,1338,799,0,"((input==17))", 1, 2, 0);
	trans[0][1338]	= settr(1337,0,18,800,800,"fsm_state = 21", 1, 2, 0);
	trans[0][1339]	= settr(1338,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1340]	= settr(1339,0,1341,801,0,"((input==20))", 1, 2, 0);
	trans[0][1341]	= settr(1340,0,18,802,802,"fsm_state = 20", 1, 2, 0);
	trans[0][1342]	= settr(1341,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1343]	= settr(1342,0,1344,803,0,"((input==25))", 1, 2, 0);
	trans[0][1344]	= settr(1343,0,1345,804,804,"fsm_state = 19", 1, 2, 0);
	trans[0][1345]	= settr(1344,0,1346,805,805,"output = 9", 1, 2, 0);
	trans[0][1346]	= settr(1345,0,1384,806,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][1384] = settr(1383,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1383,0,1377,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][1377]	= settr(1376,32,1382,807,807,"D_STEP13", 1, 2, 0);
	T = trans[0][1382] = settr(1381,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1381,0,1378,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1381,0,1380,0,0,"IF", 0, 2, 0);
	trans[0][1378]	= settr(1377,0,1,808,0,"((dealt==0))", 1, 2, 0);
	trans[0][1379]	= settr(1378,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][1383]	= settr(1382,0,1385,1,0,".(goto)", 0, 2, 0);
	trans[0][1380]	= settr(1379,0,1381,2,0,"else", 0, 2, 0);
	trans[0][1381]	= settr(1380,0,1385,1,0,"(1)", 0, 2, 0);
	trans[0][1385]	= settr(1384,0,1386,809,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][1386]	= settr(1385,0,3410,810,810,"output = 5", 1, 2, 0);
	trans[0][1387]	= settr(1386,0,18,2,0,"else", 0, 2, 0);
	trans[0][1388]	= settr(1387,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1391]	= settr(1390,0,1433,811,0,"((fsm_state==30))", 1, 2, 0);
	T = trans[0][1433] = settr(1432,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1432,0,1392,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1432,0,1395,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1432,0,1398,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1432,0,1401,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1432,0,1404,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1432,0,1407,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1432,0,1410,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1432,0,1413,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1432,0,1416,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1432,0,1419,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1432,0,1422,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1432,0,1425,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1432,0,1428,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1432,0,1431,0,0,"IF", 0, 2, 0);
	trans[0][1392]	= settr(1391,0,1393,812,0,"((input==27))", 1, 2, 0);
	trans[0][1393]	= settr(1392,0,1394,813,813,"fsm_state = 48", 1, 2, 0);
	trans[0][1394]	= settr(1393,0,3410,814,814,"output = 1", 1, 2, 0);
	trans[0][1434]	= settr(1433,0,3410,1,0,".(goto)", 0, 2, 0);
	trans[0][1395]	= settr(1394,0,1396,815,0,"((input==22))", 1, 2, 0);
	trans[0][1396]	= settr(1395,0,1397,816,816,"fsm_state = 48", 1, 2, 0);
	trans[0][1397]	= settr(1396,0,3410,817,817,"output = 1", 1, 2, 0);
	trans[0][1398]	= settr(1397,0,1399,818,0,"((input==18))", 1, 2, 0);
	trans[0][1399]	= settr(1398,0,1400,819,819,"fsm_state = 48", 1, 2, 0);
	trans[0][1400]	= settr(1399,0,3410,820,820,"output = 1", 1, 2, 0);
	trans[0][1401]	= settr(1400,0,1402,821,0,"((input==19))", 1, 2, 0);
	trans[0][1402]	= settr(1401,0,1403,822,822,"fsm_state = 48", 1, 2, 0);
	trans[0][1403]	= settr(1402,0,3410,823,823,"output = 1", 1, 2, 0);
	trans[0][1404]	= settr(1403,0,1405,824,0,"((input==24))", 1, 2, 0);
	trans[0][1405]	= settr(1404,0,18,825,825,"fsm_state = 43", 1, 2, 0);
	trans[0][1406]	= settr(1405,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1407]	= settr(1406,0,1408,826,0,"((input==21))", 1, 2, 0);
	trans[0][1408]	= settr(1407,0,1409,827,827,"fsm_state = 33", 1, 2, 0);
	trans[0][1409]	= settr(1408,0,3410,828,828,"output = 12", 1, 2, 0);
	trans[0][1410]	= settr(1409,0,1411,829,0,"((input==26))", 1, 2, 0);
	trans[0][1411]	= settr(1410,0,1412,830,830,"fsm_state = 30", 1, 2, 0);
	trans[0][1412]	= settr(1411,0,3410,831,831,"output = 12", 1, 2, 0);
	trans[0][1413]	= settr(1412,0,1414,832,0,"((input==16))", 1, 2, 0);
	trans[0][1414]	= settr(1413,0,1415,833,833,"fsm_state = 30", 1, 2, 0);
	trans[0][1415]	= settr(1414,0,3410,834,834,"output = 6", 1, 2, 0);
	trans[0][1416]	= settr(1415,0,1417,835,0,"((input==23))", 1, 2, 0);
	trans[0][1417]	= settr(1416,0,1418,836,836,"fsm_state = 30", 1, 2, 0);
	trans[0][1418]	= settr(1417,0,3410,837,837,"output = 12", 1, 2, 0);
	trans[0][1419]	= settr(1418,0,1420,838,0,"((input==28))", 1, 2, 0);
	trans[0][1420]	= settr(1419,0,1421,839,839,"fsm_state = 30", 1, 2, 0);
	trans[0][1421]	= settr(1420,0,3410,840,840,"output = 12", 1, 2, 0);
	trans[0][1422]	= settr(1421,0,1423,841,0,"((input==25))", 1, 2, 0);
	trans[0][1423]	= settr(1422,0,18,842,842,"fsm_state = 29", 1, 2, 0);
	trans[0][1424]	= settr(1423,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1425]	= settr(1424,0,1426,843,0,"((input==17))", 1, 2, 0);
	trans[0][1426]	= settr(1425,0,18,844,844,"fsm_state = 18", 1, 2, 0);
	trans[0][1427]	= settr(1426,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1428]	= settr(1427,0,1429,845,0,"((input==20))", 1, 2, 0);
	trans[0][1429]	= settr(1428,0,18,846,846,"fsm_state = 17", 1, 2, 0);
	trans[0][1430]	= settr(1429,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1431]	= settr(1430,0,18,2,0,"else", 0, 2, 0);
	trans[0][1432]	= settr(1431,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1435]	= settr(1434,0,1518,847,0,"((fsm_state==29))", 1, 2, 0);
	T = trans[0][1518] = settr(1517,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1517,0,1436,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1517,0,1439,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1517,0,1442,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1517,0,1445,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1517,0,1448,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1517,0,1451,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1517,0,1454,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1517,0,1457,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1517,0,1460,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1517,0,1463,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1517,0,1466,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1517,0,1469,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1517,0,1513,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1517,0,1516,0,0,"IF", 0, 2, 0);
	trans[0][1436]	= settr(1435,0,1437,848,0,"((input==27))", 1, 2, 0);
	trans[0][1437]	= settr(1436,0,1438,849,849,"fsm_state = 48", 1, 2, 0);
	trans[0][1438]	= settr(1437,0,3410,850,850,"output = 1", 1, 2, 0);
	trans[0][1519]	= settr(1518,0,3410,1,0,".(goto)", 0, 2, 0);
	trans[0][1439]	= settr(1438,0,1440,851,0,"((input==22))", 1, 2, 0);
	trans[0][1440]	= settr(1439,0,1441,852,852,"fsm_state = 48", 1, 2, 0);
	trans[0][1441]	= settr(1440,0,3410,853,853,"output = 1", 1, 2, 0);
	trans[0][1442]	= settr(1441,0,1443,854,0,"((input==18))", 1, 2, 0);
	trans[0][1443]	= settr(1442,0,1444,855,855,"fsm_state = 48", 1, 2, 0);
	trans[0][1444]	= settr(1443,0,3410,856,856,"output = 1", 1, 2, 0);
	trans[0][1445]	= settr(1444,0,1446,857,0,"((input==19))", 1, 2, 0);
	trans[0][1446]	= settr(1445,0,1447,858,858,"fsm_state = 48", 1, 2, 0);
	trans[0][1447]	= settr(1446,0,3410,859,859,"output = 1", 1, 2, 0);
	trans[0][1448]	= settr(1447,0,1449,860,0,"((input==24))", 1, 2, 0);
	trans[0][1449]	= settr(1448,0,18,861,861,"fsm_state = 43", 1, 2, 0);
	trans[0][1450]	= settr(1449,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1451]	= settr(1450,0,1452,862,0,"((input==21))", 1, 2, 0);
	trans[0][1452]	= settr(1451,0,1453,863,863,"fsm_state = 31", 1, 2, 0);
	trans[0][1453]	= settr(1452,0,3410,864,864,"output = 12", 1, 2, 0);
	trans[0][1454]	= settr(1453,0,1455,865,0,"((input==26))", 1, 2, 0);
	trans[0][1455]	= settr(1454,0,1456,866,866,"fsm_state = 29", 1, 2, 0);
	trans[0][1456]	= settr(1455,0,3410,867,867,"output = 12", 1, 2, 0);
	trans[0][1457]	= settr(1456,0,1458,868,0,"((input==16))", 1, 2, 0);
	trans[0][1458]	= settr(1457,0,1459,869,869,"fsm_state = 29", 1, 2, 0);
	trans[0][1459]	= settr(1458,0,3410,870,870,"output = 6", 1, 2, 0);
	trans[0][1460]	= settr(1459,0,1461,871,0,"((input==23))", 1, 2, 0);
	trans[0][1461]	= settr(1460,0,1462,872,872,"fsm_state = 29", 1, 2, 0);
	trans[0][1462]	= settr(1461,0,3410,873,873,"output = 12", 1, 2, 0);
	trans[0][1463]	= settr(1462,0,1464,874,0,"((input==28))", 1, 2, 0);
	trans[0][1464]	= settr(1463,0,1465,875,875,"fsm_state = 29", 1, 2, 0);
	trans[0][1465]	= settr(1464,0,3410,876,876,"output = 12", 1, 2, 0);
	trans[0][1466]	= settr(1465,0,1467,877,0,"((input==17))", 1, 2, 0);
	trans[0][1467]	= settr(1466,0,18,878,878,"fsm_state = 16", 1, 2, 0);
	trans[0][1468]	= settr(1467,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1469]	= settr(1468,0,1470,879,0,"((input==25))", 1, 2, 0);
	trans[0][1470]	= settr(1469,0,1471,880,880,"fsm_state = 15", 1, 2, 0);
	trans[0][1471]	= settr(1470,0,1472,881,881,"output = 9", 1, 2, 0);
	trans[0][1472]	= settr(1471,0,1510,882,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][1510] = settr(1509,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1509,0,1503,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][1503]	= settr(1502,32,1508,883,883,"D_STEP13", 1, 2, 0);
	T = trans[0][1508] = settr(1507,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1507,0,1504,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1507,0,1506,0,0,"IF", 0, 2, 0);
	trans[0][1504]	= settr(1503,0,1,884,0,"((dealt==0))", 1, 2, 0);
	trans[0][1505]	= settr(1504,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][1509]	= settr(1508,0,1511,1,0,".(goto)", 0, 2, 0);
	trans[0][1506]	= settr(1505,0,1507,2,0,"else", 0, 2, 0);
	trans[0][1507]	= settr(1506,0,1511,1,0,"(1)", 0, 2, 0);
	trans[0][1511]	= settr(1510,0,1512,885,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][1512]	= settr(1511,0,3410,886,886,"output = 5", 1, 2, 0);
	trans[0][1513]	= settr(1512,0,1514,887,0,"((input==20))", 1, 2, 0);
	trans[0][1514]	= settr(1513,0,18,888,888,"fsm_state = 14", 1, 2, 0);
	trans[0][1515]	= settr(1514,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1516]	= settr(1515,0,18,2,0,"else", 0, 2, 0);
	trans[0][1517]	= settr(1516,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1520]	= settr(1519,0,1562,889,0,"((fsm_state==28))", 1, 2, 0);
	T = trans[0][1562] = settr(1561,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1561,0,1521,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1561,0,1524,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1561,0,1527,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1561,0,1530,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1561,0,1533,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1561,0,1536,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1561,0,1539,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1561,0,1542,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1561,0,1545,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1561,0,1548,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1561,0,1551,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1561,0,1554,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1561,0,1557,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1561,0,1560,0,0,"IF", 0, 2, 0);
	trans[0][1521]	= settr(1520,0,1522,890,0,"((input==25))", 1, 2, 0);
	trans[0][1522]	= settr(1521,0,1523,891,891,"fsm_state = 48", 1, 2, 0);
	trans[0][1523]	= settr(1522,0,3410,892,892,"output = 1", 1, 2, 0);
	trans[0][1563]	= settr(1562,0,3410,1,0,".(goto)", 0, 2, 0);
	trans[0][1524]	= settr(1523,0,1525,893,0,"((input==24))", 1, 2, 0);
	trans[0][1525]	= settr(1524,0,1526,894,894,"fsm_state = 48", 1, 2, 0);
	trans[0][1526]	= settr(1525,0,3410,895,895,"output = 1", 1, 2, 0);
	trans[0][1527]	= settr(1526,0,1528,896,0,"((input==22))", 1, 2, 0);
	trans[0][1528]	= settr(1527,0,1529,897,897,"fsm_state = 48", 1, 2, 0);
	trans[0][1529]	= settr(1528,0,3410,898,898,"output = 1", 1, 2, 0);
	trans[0][1530]	= settr(1529,0,1531,899,0,"((input==21))", 1, 2, 0);
	trans[0][1531]	= settr(1530,0,18,900,900,"fsm_state = 32", 1, 2, 0);
	trans[0][1532]	= settr(1531,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1533]	= settr(1532,0,1534,901,0,"((input==17))", 1, 2, 0);
	trans[0][1534]	= settr(1533,0,1535,902,902,"fsm_state = 28", 1, 2, 0);
	trans[0][1535]	= settr(1534,0,3410,903,903,"output = 12", 1, 2, 0);
	trans[0][1536]	= settr(1535,0,1537,904,0,"((input==26))", 1, 2, 0);
	trans[0][1537]	= settr(1536,0,18,905,905,"fsm_state = 28", 1, 2, 0);
	trans[0][1538]	= settr(1537,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1539]	= settr(1538,0,1540,906,0,"((input==16))", 1, 2, 0);
	trans[0][1540]	= settr(1539,0,1541,907,907,"fsm_state = 28", 1, 2, 0);
	trans[0][1541]	= settr(1540,0,3410,908,908,"output = 6", 1, 2, 0);
	trans[0][1542]	= settr(1541,0,1543,909,0,"((input==23))", 1, 2, 0);
	trans[0][1543]	= settr(1542,0,18,910,910,"fsm_state = 28", 1, 2, 0);
	trans[0][1544]	= settr(1543,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1545]	= settr(1544,0,1546,911,0,"((input==20))", 1, 2, 0);
	trans[0][1546]	= settr(1545,0,1547,912,912,"fsm_state = 28", 1, 2, 0);
	trans[0][1547]	= settr(1546,0,3410,913,913,"output = 12", 1, 2, 0);
	trans[0][1548]	= settr(1547,0,1549,914,0,"((input==28))", 1, 2, 0);
	trans[0][1549]	= settr(1548,0,18,915,915,"fsm_state = 28", 1, 2, 0);
	trans[0][1550]	= settr(1549,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1551]	= settr(1550,0,1552,916,0,"((input==19))", 1, 2, 0);
	trans[0][1552]	= settr(1551,0,1553,917,917,"fsm_state = 28", 1, 2, 0);
	trans[0][1553]	= settr(1552,0,3410,918,918,"output = 8", 1, 2, 0);
	trans[0][1554]	= settr(1553,0,1555,919,0,"((input==18))", 1, 2, 0);
	trans[0][1555]	= settr(1554,0,1556,920,920,"fsm_state = 13", 1, 2, 0);
	trans[0][1556]	= settr(1555,0,3410,921,921,"output = 4", 1, 2, 0);
	trans[0][1557]	= settr(1556,0,1558,922,0,"((input==27))", 1, 2, 0);
	trans[0][1558]	= settr(1557,0,1559,923,923,"fsm_state = 12", 1, 2, 0);
	trans[0][1559]	= settr(1558,0,3410,924,924,"output = 4", 1, 2, 0);
	trans[0][1560]	= settr(1559,0,18,2,0,"else", 0, 2, 0);
	trans[0][1561]	= settr(1560,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1564]	= settr(1563,0,1606,925,0,"((fsm_state==27))", 1, 2, 0);
	T = trans[0][1606] = settr(1605,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1605,0,1565,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1605,0,1568,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1605,0,1571,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1605,0,1574,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1605,0,1577,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1605,0,1580,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1605,0,1583,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1605,0,1586,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1605,0,1589,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1605,0,1592,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1605,0,1595,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1605,0,1598,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1605,0,1601,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1605,0,1604,0,0,"IF", 0, 2, 0);
	trans[0][1565]	= settr(1564,0,1566,926,0,"((input==25))", 1, 2, 0);
	trans[0][1566]	= settr(1565,0,1567,927,927,"fsm_state = 48", 1, 2, 0);
	trans[0][1567]	= settr(1566,0,3410,928,928,"output = 1", 1, 2, 0);
	trans[0][1607]	= settr(1606,0,3410,1,0,".(goto)", 0, 2, 0);
	trans[0][1568]	= settr(1567,0,1569,929,0,"((input==27))", 1, 2, 0);
	trans[0][1569]	= settr(1568,0,1570,930,930,"fsm_state = 48", 1, 2, 0);
	trans[0][1570]	= settr(1569,0,3410,931,931,"output = 1", 1, 2, 0);
	trans[0][1571]	= settr(1570,0,1572,932,0,"((input==22))", 1, 2, 0);
	trans[0][1572]	= settr(1571,0,1573,933,933,"fsm_state = 48", 1, 2, 0);
	trans[0][1573]	= settr(1572,0,3410,934,934,"output = 1", 1, 2, 0);
	trans[0][1574]	= settr(1573,0,1575,935,0,"((input==18))", 1, 2, 0);
	trans[0][1575]	= settr(1574,0,1576,936,936,"fsm_state = 48", 1, 2, 0);
	trans[0][1576]	= settr(1575,0,3410,937,937,"output = 1", 1, 2, 0);
	trans[0][1577]	= settr(1576,0,1578,938,0,"((input==19))", 1, 2, 0);
	trans[0][1578]	= settr(1577,0,1579,939,939,"fsm_state = 48", 1, 2, 0);
	trans[0][1579]	= settr(1578,0,3410,940,940,"output = 1", 1, 2, 0);
	trans[0][1580]	= settr(1579,0,1581,941,0,"((input==24))", 1, 2, 0);
	trans[0][1581]	= settr(1580,0,18,942,942,"fsm_state = 40", 1, 2, 0);
	trans[0][1582]	= settr(1581,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1583]	= settr(1582,0,1584,943,0,"((input==21))", 1, 2, 0);
	trans[0][1584]	= settr(1583,0,18,944,944,"fsm_state = 34", 1, 2, 0);
	trans[0][1585]	= settr(1584,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1586]	= settr(1585,0,1587,945,0,"((input==17))", 1, 2, 0);
	trans[0][1587]	= settr(1586,0,18,946,946,"fsm_state = 27", 1, 2, 0);
	trans[0][1588]	= settr(1587,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1589]	= settr(1588,0,1590,947,0,"((input==26))", 1, 2, 0);
	trans[0][1590]	= settr(1589,0,18,948,948,"fsm_state = 27", 1, 2, 0);
	trans[0][1591]	= settr(1590,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1592]	= settr(1591,0,1593,949,0,"((input==16))", 1, 2, 0);
	trans[0][1593]	= settr(1592,0,1594,950,950,"fsm_state = 27", 1, 2, 0);
	trans[0][1594]	= settr(1593,0,3410,951,951,"output = 6", 1, 2, 0);
	trans[0][1595]	= settr(1594,0,1596,952,0,"((input==23))", 1, 2, 0);
	trans[0][1596]	= settr(1595,0,18,953,953,"fsm_state = 27", 1, 2, 0);
	trans[0][1597]	= settr(1596,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1598]	= settr(1597,0,1599,954,0,"((input==20))", 1, 2, 0);
	trans[0][1599]	= settr(1598,0,18,955,955,"fsm_state = 27", 1, 2, 0);
	trans[0][1600]	= settr(1599,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1601]	= settr(1600,0,1602,956,0,"((input==28))", 1, 2, 0);
	trans[0][1602]	= settr(1601,0,18,957,957,"fsm_state = 27", 1, 2, 0);
	trans[0][1603]	= settr(1602,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1604]	= settr(1603,0,18,2,0,"else", 0, 2, 0);
	trans[0][1605]	= settr(1604,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1608]	= settr(1607,0,1650,958,0,"((fsm_state==26))", 1, 2, 0);
	T = trans[0][1650] = settr(1649,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1649,0,1609,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1649,0,1612,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1649,0,1615,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1649,0,1618,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1649,0,1621,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1649,0,1624,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1649,0,1627,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1649,0,1630,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1649,0,1633,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1649,0,1636,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1649,0,1639,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1649,0,1642,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1649,0,1645,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1649,0,1648,0,0,"IF", 0, 2, 0);
	trans[0][1609]	= settr(1608,0,1610,959,0,"((input==27))", 1, 2, 0);
	trans[0][1610]	= settr(1609,0,1611,960,960,"fsm_state = 47", 1, 2, 0);
	trans[0][1611]	= settr(1610,0,3410,961,961,"output = 1", 1, 2, 0);
	trans[0][1651]	= settr(1650,0,3410,1,0,".(goto)", 0, 2, 0);
	trans[0][1612]	= settr(1611,0,1613,962,0,"((input==22))", 1, 2, 0);
	trans[0][1613]	= settr(1612,0,1614,963,963,"fsm_state = 47", 1, 2, 0);
	trans[0][1614]	= settr(1613,0,3410,964,964,"output = 1", 1, 2, 0);
	trans[0][1615]	= settr(1614,0,1616,965,0,"((input==18))", 1, 2, 0);
	trans[0][1616]	= settr(1615,0,1617,966,966,"fsm_state = 47", 1, 2, 0);
	trans[0][1617]	= settr(1616,0,3410,967,967,"output = 1", 1, 2, 0);
	trans[0][1618]	= settr(1617,0,1619,968,0,"((input==19))", 1, 2, 0);
	trans[0][1619]	= settr(1618,0,1620,969,969,"fsm_state = 47", 1, 2, 0);
	trans[0][1620]	= settr(1619,0,3410,970,970,"output = 1", 1, 2, 0);
	trans[0][1621]	= settr(1620,0,1622,971,0,"((input==24))", 1, 2, 0);
	trans[0][1622]	= settr(1621,0,18,972,972,"fsm_state = 45", 1, 2, 0);
	trans[0][1623]	= settr(1622,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1624]	= settr(1623,0,1625,973,0,"((input==17))", 1, 2, 0);
	trans[0][1625]	= settr(1624,0,18,974,974,"fsm_state = 26", 1, 2, 0);
	trans[0][1626]	= settr(1625,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1627]	= settr(1626,0,1628,975,0,"((input==26))", 1, 2, 0);
	trans[0][1628]	= settr(1627,0,1629,976,976,"fsm_state = 26", 1, 2, 0);
	trans[0][1629]	= settr(1628,0,3410,977,977,"output = 7", 1, 2, 0);
	trans[0][1630]	= settr(1629,0,1631,978,0,"((input==23))", 1, 2, 0);
	trans[0][1631]	= settr(1630,0,1632,979,979,"fsm_state = 26", 1, 2, 0);
	trans[0][1632]	= settr(1631,0,3410,980,980,"output = 7", 1, 2, 0);
	trans[0][1633]	= settr(1632,0,1634,981,0,"((input==21))", 1, 2, 0);
	trans[0][1634]	= settr(1633,0,1635,982,982,"fsm_state = 26", 1, 2, 0);
	trans[0][1635]	= settr(1634,0,3410,983,983,"output = 7", 1, 2, 0);
	trans[0][1636]	= settr(1635,0,1637,984,0,"((input==28))", 1, 2, 0);
	trans[0][1637]	= settr(1636,0,1638,985,985,"fsm_state = 26", 1, 2, 0);
	trans[0][1638]	= settr(1637,0,3410,986,986,"output = 7", 1, 2, 0);
	trans[0][1639]	= settr(1638,0,1640,987,0,"((input==20))", 1, 2, 0);
	trans[0][1640]	= settr(1639,0,18,988,988,"fsm_state = 25", 1, 2, 0);
	trans[0][1641]	= settr(1640,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1642]	= settr(1641,0,1643,989,0,"((input==25))", 1, 2, 0);
	trans[0][1643]	= settr(1642,0,18,990,990,"fsm_state = 21", 1, 2, 0);
	trans[0][1644]	= settr(1643,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1645]	= settr(1644,0,1646,991,0,"((input==16))", 1, 2, 0);
	trans[0][1646]	= settr(1645,0,1647,992,992,"fsm_state = 18", 1, 2, 0);
	trans[0][1647]	= settr(1646,0,3410,993,993,"output = 12", 1, 2, 0);
	trans[0][1648]	= settr(1647,0,18,2,0,"else", 0, 2, 0);
	trans[0][1649]	= settr(1648,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1652]	= settr(1651,0,1694,994,0,"((fsm_state==25))", 1, 2, 0);
	T = trans[0][1694] = settr(1693,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1693,0,1653,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1693,0,1656,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1693,0,1659,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1693,0,1662,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1693,0,1665,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1693,0,1668,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1693,0,1671,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1693,0,1674,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1693,0,1677,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1693,0,1680,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1693,0,1683,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1693,0,1686,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1693,0,1689,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1693,0,1692,0,0,"IF", 0, 2, 0);
	trans[0][1653]	= settr(1652,0,1654,995,0,"((input==27))", 1, 2, 0);
	trans[0][1654]	= settr(1653,0,1655,996,996,"fsm_state = 47", 1, 2, 0);
	trans[0][1655]	= settr(1654,0,3410,997,997,"output = 1", 1, 2, 0);
	trans[0][1695]	= settr(1694,0,3410,1,0,".(goto)", 0, 2, 0);
	trans[0][1656]	= settr(1655,0,1657,998,0,"((input==22))", 1, 2, 0);
	trans[0][1657]	= settr(1656,0,1658,999,999,"fsm_state = 47", 1, 2, 0);
	trans[0][1658]	= settr(1657,0,3410,1000,1000,"output = 1", 1, 2, 0);
	trans[0][1659]	= settr(1658,0,1660,1001,0,"((input==18))", 1, 2, 0);
	trans[0][1660]	= settr(1659,0,1661,1002,1002,"fsm_state = 47", 1, 2, 0);
	trans[0][1661]	= settr(1660,0,3410,1003,1003,"output = 1", 1, 2, 0);
	trans[0][1662]	= settr(1661,0,1663,1004,0,"((input==19))", 1, 2, 0);
	trans[0][1663]	= settr(1662,0,1664,1005,1005,"fsm_state = 47", 1, 2, 0);
	trans[0][1664]	= settr(1663,0,3410,1006,1006,"output = 1", 1, 2, 0);
	trans[0][1665]	= settr(1664,0,1666,1007,0,"((input==24))", 1, 2, 0);
	trans[0][1666]	= settr(1665,0,18,1008,1008,"fsm_state = 45", 1, 2, 0);
	trans[0][1667]	= settr(1666,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1668]	= settr(1667,0,1669,1009,0,"((input==17))", 1, 2, 0);
	trans[0][1669]	= settr(1668,0,1670,1010,1010,"fsm_state = 25", 1, 2, 0);
	trans[0][1670]	= settr(1669,0,3410,1011,1011,"output = 12", 1, 2, 0);
	trans[0][1671]	= settr(1670,0,1672,1012,0,"((input==26))", 1, 2, 0);
	trans[0][1672]	= settr(1671,0,1673,1013,1013,"fsm_state = 25", 1, 2, 0);
	trans[0][1673]	= settr(1672,0,3410,1014,1014,"output = 7", 1, 2, 0);
	trans[0][1674]	= settr(1673,0,1675,1015,0,"((input==23))", 1, 2, 0);
	trans[0][1675]	= settr(1674,0,1676,1016,1016,"fsm_state = 25", 1, 2, 0);
	trans[0][1676]	= settr(1675,0,3410,1017,1017,"output = 7", 1, 2, 0);
	trans[0][1677]	= settr(1676,0,1678,1018,0,"((input==20))", 1, 2, 0);
	trans[0][1678]	= settr(1677,0,1679,1019,1019,"fsm_state = 25", 1, 2, 0);
	trans[0][1679]	= settr(1678,0,3410,1020,1020,"output = 12", 1, 2, 0);
	trans[0][1680]	= settr(1679,0,1681,1021,0,"((input==21))", 1, 2, 0);
	trans[0][1681]	= settr(1680,0,1682,1022,1022,"fsm_state = 25", 1, 2, 0);
	trans[0][1682]	= settr(1681,0,3410,1023,1023,"output = 7", 1, 2, 0);
	trans[0][1683]	= settr(1682,0,1684,1024,0,"((input==28))", 1, 2, 0);
	trans[0][1684]	= settr(1683,0,1685,1025,1025,"fsm_state = 25", 1, 2, 0);
	trans[0][1685]	= settr(1684,0,3410,1026,1026,"output = 7", 1, 2, 0);
	trans[0][1686]	= settr(1685,0,1687,1027,0,"((input==25))", 1, 2, 0);
	trans[0][1687]	= settr(1686,0,18,1028,1028,"fsm_state = 20", 1, 2, 0);
	trans[0][1688]	= settr(1687,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1689]	= settr(1688,0,1690,1029,0,"((input==16))", 1, 2, 0);
	trans[0][1690]	= settr(1689,0,18,1030,1030,"fsm_state = 11", 1, 2, 0);
	trans[0][1691]	= settr(1690,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1692]	= settr(1691,0,18,2,0,"else", 0, 2, 0);
	trans[0][1693]	= settr(1692,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1696]	= settr(1695,0,1779,1031,0,"((fsm_state==24))", 1, 2, 0);
	T = trans[0][1779] = settr(1778,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1778,0,1697,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1778,0,1700,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1778,0,1703,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1778,0,1706,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1778,0,1709,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1778,0,1712,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1778,0,1715,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1778,0,1718,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1778,0,1721,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1778,0,1724,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1778,0,1727,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1778,0,1730,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1778,0,1733,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1778,0,1777,0,0,"IF", 0, 2, 0);
	trans[0][1697]	= settr(1696,0,1698,1032,0,"((input==27))", 1, 2, 0);
	trans[0][1698]	= settr(1697,0,1699,1033,1033,"fsm_state = 47", 1, 2, 0);
	trans[0][1699]	= settr(1698,0,3410,1034,1034,"output = 1", 1, 2, 0);
	trans[0][1780]	= settr(1779,0,3410,1,0,".(goto)", 0, 2, 0);
	trans[0][1700]	= settr(1699,0,1701,1035,0,"((input==22))", 1, 2, 0);
	trans[0][1701]	= settr(1700,0,1702,1036,1036,"fsm_state = 47", 1, 2, 0);
	trans[0][1702]	= settr(1701,0,3410,1037,1037,"output = 1", 1, 2, 0);
	trans[0][1703]	= settr(1702,0,1704,1038,0,"((input==18))", 1, 2, 0);
	trans[0][1704]	= settr(1703,0,1705,1039,1039,"fsm_state = 47", 1, 2, 0);
	trans[0][1705]	= settr(1704,0,3410,1040,1040,"output = 1", 1, 2, 0);
	trans[0][1706]	= settr(1705,0,1707,1041,0,"((input==19))", 1, 2, 0);
	trans[0][1707]	= settr(1706,0,1708,1042,1042,"fsm_state = 47", 1, 2, 0);
	trans[0][1708]	= settr(1707,0,3410,1043,1043,"output = 1", 1, 2, 0);
	trans[0][1709]	= settr(1708,0,1710,1044,0,"((input==24))", 1, 2, 0);
	trans[0][1710]	= settr(1709,0,18,1045,1045,"fsm_state = 45", 1, 2, 0);
	trans[0][1711]	= settr(1710,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1712]	= settr(1711,0,1713,1046,0,"((input==17))", 1, 2, 0);
	trans[0][1713]	= settr(1712,0,1714,1047,1047,"fsm_state = 24", 1, 2, 0);
	trans[0][1714]	= settr(1713,0,3410,1048,1048,"output = 12", 1, 2, 0);
	trans[0][1715]	= settr(1714,0,1716,1049,0,"((input==26))", 1, 2, 0);
	trans[0][1716]	= settr(1715,0,1717,1050,1050,"fsm_state = 24", 1, 2, 0);
	trans[0][1717]	= settr(1716,0,3410,1051,1051,"output = 7", 1, 2, 0);
	trans[0][1718]	= settr(1717,0,1719,1052,0,"((input==23))", 1, 2, 0);
	trans[0][1719]	= settr(1718,0,1720,1053,1053,"fsm_state = 24", 1, 2, 0);
	trans[0][1720]	= settr(1719,0,3410,1054,1054,"output = 7", 1, 2, 0);
	trans[0][1721]	= settr(1720,0,1722,1055,0,"((input==20))", 1, 2, 0);
	trans[0][1722]	= settr(1721,0,1723,1056,1056,"fsm_state = 24", 1, 2, 0);
	trans[0][1723]	= settr(1722,0,3410,1057,1057,"output = 12", 1, 2, 0);
	trans[0][1724]	= settr(1723,0,1725,1058,0,"((input==21))", 1, 2, 0);
	trans[0][1725]	= settr(1724,0,1726,1059,1059,"fsm_state = 24", 1, 2, 0);
	trans[0][1726]	= settr(1725,0,3410,1060,1060,"output = 7", 1, 2, 0);
	trans[0][1727]	= settr(1726,0,1728,1061,0,"((input==28))", 1, 2, 0);
	trans[0][1728]	= settr(1727,0,1729,1062,1062,"fsm_state = 24", 1, 2, 0);
	trans[0][1729]	= settr(1728,0,3410,1063,1063,"output = 7", 1, 2, 0);
	trans[0][1730]	= settr(1729,0,1731,1064,0,"((input==16))", 1, 2, 0);
	trans[0][1731]	= settr(1730,0,18,1065,1065,"fsm_state = 10", 1, 2, 0);
	trans[0][1732]	= settr(1731,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1733]	= settr(1732,0,1734,1066,0,"((input==25))", 1, 2, 0);
	trans[0][1734]	= settr(1733,0,1735,1067,1067,"fsm_state = 9", 1, 2, 0);
	trans[0][1735]	= settr(1734,0,1736,1068,1068,"output = 9", 1, 2, 0);
	trans[0][1736]	= settr(1735,0,1774,1069,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][1774] = settr(1773,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1773,0,1767,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][1767]	= settr(1766,32,1772,1070,1070,"D_STEP13", 1, 2, 0);
	T = trans[0][1772] = settr(1771,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1771,0,1768,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1771,0,1770,0,0,"IF", 0, 2, 0);
	trans[0][1768]	= settr(1767,0,1,1071,0,"((dealt==0))", 1, 2, 0);
	trans[0][1769]	= settr(1768,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][1773]	= settr(1772,0,1775,1,0,".(goto)", 0, 2, 0);
	trans[0][1770]	= settr(1769,0,1771,2,0,"else", 0, 2, 0);
	trans[0][1771]	= settr(1770,0,1775,1,0,"(1)", 0, 2, 0);
	trans[0][1775]	= settr(1774,0,1776,1072,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][1776]	= settr(1775,0,3410,1073,1073,"output = 5", 1, 2, 0);
	trans[0][1777]	= settr(1776,0,18,2,0,"else", 0, 2, 0);
	trans[0][1778]	= settr(1777,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1781]	= settr(1780,0,1823,1074,0,"((fsm_state==23))", 1, 2, 0);
	T = trans[0][1823] = settr(1822,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1822,0,1782,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1822,0,1785,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1822,0,1788,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1822,0,1791,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1822,0,1794,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1822,0,1797,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1822,0,1800,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1822,0,1803,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1822,0,1806,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1822,0,1809,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1822,0,1812,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1822,0,1815,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1822,0,1818,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1822,0,1821,0,0,"IF", 0, 2, 0);
	trans[0][1782]	= settr(1781,0,1783,1075,0,"((input==25))", 1, 2, 0);
	trans[0][1783]	= settr(1782,0,1784,1076,1076,"fsm_state = 48", 1, 2, 0);
	trans[0][1784]	= settr(1783,0,3410,1077,1077,"output = 1", 1, 2, 0);
	trans[0][1824]	= settr(1823,0,3410,1,0,".(goto)", 0, 2, 0);
	trans[0][1785]	= settr(1784,0,1786,1078,0,"((input==24))", 1, 2, 0);
	trans[0][1786]	= settr(1785,0,1787,1079,1079,"fsm_state = 48", 1, 2, 0);
	trans[0][1787]	= settr(1786,0,3410,1080,1080,"output = 1", 1, 2, 0);
	trans[0][1788]	= settr(1787,0,1789,1081,0,"((input==22))", 1, 2, 0);
	trans[0][1789]	= settr(1788,0,1790,1082,1082,"fsm_state = 48", 1, 2, 0);
	trans[0][1790]	= settr(1789,0,3410,1083,1083,"output = 1", 1, 2, 0);
	trans[0][1791]	= settr(1790,0,1792,1084,0,"((input==21))", 1, 2, 0);
	trans[0][1792]	= settr(1791,0,1793,1085,1085,"fsm_state = 32", 1, 2, 0);
	trans[0][1793]	= settr(1792,0,3410,1086,1086,"output = 2", 1, 2, 0);
	trans[0][1794]	= settr(1793,0,1795,1087,0,"((input==28))", 1, 2, 0);
	trans[0][1795]	= settr(1794,0,1796,1088,1088,"fsm_state = 28", 1, 2, 0);
	trans[0][1796]	= settr(1795,0,3410,1089,1089,"output = 2", 1, 2, 0);
	trans[0][1797]	= settr(1796,0,1798,1090,0,"((input==17))", 1, 2, 0);
	trans[0][1798]	= settr(1797,0,1799,1091,1091,"fsm_state = 23", 1, 2, 0);
	trans[0][1799]	= settr(1798,0,3410,1092,1092,"output = 12", 1, 2, 0);
	trans[0][1800]	= settr(1799,0,1801,1093,0,"((input==26))", 1, 2, 0);
	trans[0][1801]	= settr(1800,0,1802,1094,1094,"fsm_state = 23", 1, 2, 0);
	trans[0][1802]	= settr(1801,0,3410,1095,1095,"output = 15", 1, 2, 0);
	trans[0][1803]	= settr(1802,0,1804,1096,0,"((input==16))", 1, 2, 0);
	trans[0][1804]	= settr(1803,0,1805,1097,1097,"fsm_state = 23", 1, 2, 0);
	trans[0][1805]	= settr(1804,0,3410,1098,1098,"output = 6", 1, 2, 0);
	trans[0][1806]	= settr(1805,0,1807,1099,0,"((input==20))", 1, 2, 0);
	trans[0][1807]	= settr(1806,0,1808,1100,1100,"fsm_state = 23", 1, 2, 0);
	trans[0][1808]	= settr(1807,0,3410,1101,1101,"output = 12", 1, 2, 0);
	trans[0][1809]	= settr(1808,0,1810,1102,0,"((input==19))", 1, 2, 0);
	trans[0][1810]	= settr(1809,0,1811,1103,1103,"fsm_state = 23", 1, 2, 0);
	trans[0][1811]	= settr(1810,0,3410,1104,1104,"output = 8", 1, 2, 0);
	trans[0][1812]	= settr(1811,0,1813,1105,0,"((input==23))", 1, 2, 0);
	trans[0][1813]	= settr(1812,0,18,1106,1106,"fsm_state = 8", 1, 2, 0);
	trans[0][1814]	= settr(1813,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1815]	= settr(1814,0,1816,1107,0,"((input==18))", 1, 2, 0);
	trans[0][1816]	= settr(1815,0,1817,1108,1108,"fsm_state = 7", 1, 2, 0);
	trans[0][1817]	= settr(1816,0,3410,1109,1109,"output = 4", 1, 2, 0);
	trans[0][1818]	= settr(1817,0,1819,1110,0,"((input==27))", 1, 2, 0);
	trans[0][1819]	= settr(1818,0,1820,1111,1111,"fsm_state = 6", 1, 2, 0);
	trans[0][1820]	= settr(1819,0,3410,1112,1112,"output = 4", 1, 2, 0);
	trans[0][1821]	= settr(1820,0,18,2,0,"else", 0, 2, 0);
	trans[0][1822]	= settr(1821,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1825]	= settr(1824,0,1867,1113,0,"((fsm_state==22))", 1, 2, 0);
	T = trans[0][1867] = settr(1866,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1866,0,1826,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1866,0,1829,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1866,0,1832,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1866,0,1835,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1866,0,1838,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1866,0,1841,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1866,0,1844,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1866,0,1847,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1866,0,1850,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1866,0,1853,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1866,0,1856,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1866,0,1859,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1866,0,1862,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1866,0,1865,0,0,"IF", 0, 2, 0);
	trans[0][1826]	= settr(1825,0,1827,1114,0,"((input==27))", 1, 2, 0);
	trans[0][1827]	= settr(1826,0,1828,1115,1115,"fsm_state = 47", 1, 2, 0);
	trans[0][1828]	= settr(1827,0,3410,1116,1116,"output = 1", 1, 2, 0);
	trans[0][1868]	= settr(1867,0,3410,1,0,".(goto)", 0, 2, 0);
	trans[0][1829]	= settr(1828,0,1830,1117,0,"((input==22))", 1, 2, 0);
	trans[0][1830]	= settr(1829,0,1831,1118,1118,"fsm_state = 47", 1, 2, 0);
	trans[0][1831]	= settr(1830,0,3410,1119,1119,"output = 1", 1, 2, 0);
	trans[0][1832]	= settr(1831,0,1833,1120,0,"((input==18))", 1, 2, 0);
	trans[0][1833]	= settr(1832,0,1834,1121,1121,"fsm_state = 47", 1, 2, 0);
	trans[0][1834]	= settr(1833,0,3410,1122,1122,"output = 1", 1, 2, 0);
	trans[0][1835]	= settr(1834,0,1836,1123,0,"((input==19))", 1, 2, 0);
	trans[0][1836]	= settr(1835,0,1837,1124,1124,"fsm_state = 47", 1, 2, 0);
	trans[0][1837]	= settr(1836,0,3410,1125,1125,"output = 1", 1, 2, 0);
	trans[0][1838]	= settr(1837,0,1839,1126,0,"((input==24))", 1, 2, 0);
	trans[0][1839]	= settr(1838,0,18,1127,1127,"fsm_state = 45", 1, 2, 0);
	trans[0][1840]	= settr(1839,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1841]	= settr(1840,0,1842,1128,0,"((input==25))", 1, 2, 0);
	trans[0][1842]	= settr(1841,0,18,1129,1129,"fsm_state = 24", 1, 2, 0);
	trans[0][1843]	= settr(1842,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1844]	= settr(1843,0,1845,1130,0,"((input==17))", 1, 2, 0);
	trans[0][1845]	= settr(1844,0,1846,1131,1131,"fsm_state = 22", 1, 2, 0);
	trans[0][1846]	= settr(1845,0,3410,1132,1132,"output = 12", 1, 2, 0);
	trans[0][1847]	= settr(1846,0,1848,1133,0,"((input==26))", 1, 2, 0);
	trans[0][1848]	= settr(1847,0,1849,1134,1134,"fsm_state = 22", 1, 2, 0);
	trans[0][1849]	= settr(1848,0,3410,1135,1135,"output = 7", 1, 2, 0);
	trans[0][1850]	= settr(1849,0,1851,1136,0,"((input==23))", 1, 2, 0);
	trans[0][1851]	= settr(1850,0,1852,1137,1137,"fsm_state = 22", 1, 2, 0);
	trans[0][1852]	= settr(1851,0,3410,1138,1138,"output = 7", 1, 2, 0);
	trans[0][1853]	= settr(1852,0,1854,1139,0,"((input==20))", 1, 2, 0);
	trans[0][1854]	= settr(1853,0,1855,1140,1140,"fsm_state = 22", 1, 2, 0);
	trans[0][1855]	= settr(1854,0,3410,1141,1141,"output = 12", 1, 2, 0);
	trans[0][1856]	= settr(1855,0,1857,1142,0,"((input==21))", 1, 2, 0);
	trans[0][1857]	= settr(1856,0,1858,1143,1143,"fsm_state = 22", 1, 2, 0);
	trans[0][1858]	= settr(1857,0,3410,1144,1144,"output = 7", 1, 2, 0);
	trans[0][1859]	= settr(1858,0,1860,1145,0,"((input==28))", 1, 2, 0);
	trans[0][1860]	= settr(1859,0,1861,1146,1146,"fsm_state = 22", 1, 2, 0);
	trans[0][1861]	= settr(1860,0,3410,1147,1147,"output = 7", 1, 2, 0);
	trans[0][1862]	= settr(1861,0,1863,1148,0,"((input==16))", 1, 2, 0);
	trans[0][1863]	= settr(1862,0,18,1149,1149,"fsm_state = 11", 1, 2, 0);
	trans[0][1864]	= settr(1863,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1865]	= settr(1864,0,18,2,0,"else", 0, 2, 0);
	trans[0][1866]	= settr(1865,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1869]	= settr(1868,0,1993,1150,0,"((fsm_state==21))", 1, 2, 0);
	T = trans[0][1993] = settr(1992,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1992,0,1870,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1992,0,1873,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1992,0,1876,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1992,0,1879,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1992,0,1882,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1992,0,1885,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1992,0,1888,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1992,0,1891,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1992,0,1894,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1992,0,1897,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1992,0,1900,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1992,0,1903,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1992,0,1988,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1992,0,1991,0,0,"IF", 0, 2, 0);
	trans[0][1870]	= settr(1869,0,1871,1151,0,"((input==27))", 1, 2, 0);
	trans[0][1871]	= settr(1870,0,1872,1152,1152,"fsm_state = 47", 1, 2, 0);
	trans[0][1872]	= settr(1871,0,3410,1153,1153,"output = 1", 1, 2, 0);
	trans[0][1994]	= settr(1993,0,3410,1,0,".(goto)", 0, 2, 0);
	trans[0][1873]	= settr(1872,0,1874,1154,0,"((input==22))", 1, 2, 0);
	trans[0][1874]	= settr(1873,0,1875,1155,1155,"fsm_state = 47", 1, 2, 0);
	trans[0][1875]	= settr(1874,0,3410,1156,1156,"output = 1", 1, 2, 0);
	trans[0][1876]	= settr(1875,0,1877,1157,0,"((input==18))", 1, 2, 0);
	trans[0][1877]	= settr(1876,0,1878,1158,1158,"fsm_state = 47", 1, 2, 0);
	trans[0][1878]	= settr(1877,0,3410,1159,1159,"output = 1", 1, 2, 0);
	trans[0][1879]	= settr(1878,0,1880,1160,0,"((input==19))", 1, 2, 0);
	trans[0][1880]	= settr(1879,0,1881,1161,1161,"fsm_state = 47", 1, 2, 0);
	trans[0][1881]	= settr(1880,0,3410,1162,1162,"output = 1", 1, 2, 0);
	trans[0][1882]	= settr(1881,0,1883,1163,0,"((input==24))", 1, 2, 0);
	trans[0][1883]	= settr(1882,0,18,1164,1164,"fsm_state = 45", 1, 2, 0);
	trans[0][1884]	= settr(1883,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1885]	= settr(1884,0,1886,1165,0,"((input==17))", 1, 2, 0);
	trans[0][1886]	= settr(1885,0,18,1166,1166,"fsm_state = 21", 1, 2, 0);
	trans[0][1887]	= settr(1886,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1888]	= settr(1887,0,1889,1167,0,"((input==26))", 1, 2, 0);
	trans[0][1889]	= settr(1888,0,1890,1168,1168,"fsm_state = 21", 1, 2, 0);
	trans[0][1890]	= settr(1889,0,3410,1169,1169,"output = 7", 1, 2, 0);
	trans[0][1891]	= settr(1890,0,1892,1170,0,"((input==23))", 1, 2, 0);
	trans[0][1892]	= settr(1891,0,1893,1171,1171,"fsm_state = 21", 1, 2, 0);
	trans[0][1893]	= settr(1892,0,3410,1172,1172,"output = 7", 1, 2, 0);
	trans[0][1894]	= settr(1893,0,1895,1173,0,"((input==21))", 1, 2, 0);
	trans[0][1895]	= settr(1894,0,1896,1174,1174,"fsm_state = 21", 1, 2, 0);
	trans[0][1896]	= settr(1895,0,3410,1175,1175,"output = 7", 1, 2, 0);
	trans[0][1897]	= settr(1896,0,1898,1176,0,"((input==28))", 1, 2, 0);
	trans[0][1898]	= settr(1897,0,1899,1177,1177,"fsm_state = 21", 1, 2, 0);
	trans[0][1899]	= settr(1898,0,3410,1178,1178,"output = 7", 1, 2, 0);
	trans[0][1900]	= settr(1899,0,1901,1179,0,"((input==20))", 1, 2, 0);
	trans[0][1901]	= settr(1900,0,18,1180,1180,"fsm_state = 20", 1, 2, 0);
	trans[0][1902]	= settr(1901,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1903]	= settr(1902,0,1904,1181,0,"((input==25))", 1, 2, 0);
	trans[0][1904]	= settr(1903,0,1905,1182,1182,"fsm_state = 19", 1, 2, 0);
	trans[0][1905]	= settr(1904,0,1906,1183,1183,"output = 9", 1, 2, 0);
	trans[0][1906]	= settr(1905,0,1944,1184,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][1944] = settr(1943,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1943,0,1937,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][1937]	= settr(1936,32,1942,1185,1185,"D_STEP13", 1, 2, 0);
	T = trans[0][1942] = settr(1941,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1941,0,1938,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1941,0,1940,0,0,"IF", 0, 2, 0);
	trans[0][1938]	= settr(1937,0,1,1186,0,"((dealt==0))", 1, 2, 0);
	trans[0][1939]	= settr(1938,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][1943]	= settr(1942,0,1945,1,0,".(goto)", 0, 2, 0);
	trans[0][1940]	= settr(1939,0,1941,2,0,"else", 0, 2, 0);
	trans[0][1941]	= settr(1940,0,1945,1,0,"(1)", 0, 2, 0);
	trans[0][1945]	= settr(1944,0,1946,1187,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][1946]	= settr(1945,0,1947,1188,1188,"output = 5", 1, 2, 0);
	trans[0][1947]	= settr(1946,0,1985,1189,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][1985] = settr(1984,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1984,0,1978,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][1978]	= settr(1977,32,1983,1190,1190,"D_STEP13", 1, 2, 0);
	T = trans[0][1983] = settr(1982,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1982,0,1979,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1982,0,1981,0,0,"IF", 0, 2, 0);
	trans[0][1979]	= settr(1978,0,1,1191,0,"((dealt==0))", 1, 2, 0);
	trans[0][1980]	= settr(1979,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][1984]	= settr(1983,0,1986,1,0,".(goto)", 0, 2, 0);
	trans[0][1981]	= settr(1980,0,1982,2,0,"else", 0, 2, 0);
	trans[0][1982]	= settr(1981,0,1986,1,0,"(1)", 0, 2, 0);
	trans[0][1986]	= settr(1985,0,1987,1192,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][1987]	= settr(1986,0,3410,1193,1193,"output = 11", 1, 2, 0);
	trans[0][1988]	= settr(1987,0,1989,1194,0,"((input==16))", 1, 2, 0);
	trans[0][1989]	= settr(1988,0,1990,1195,1195,"fsm_state = 16", 1, 2, 0);
	trans[0][1990]	= settr(1989,0,3410,1196,1196,"output = 12", 1, 2, 0);
	trans[0][1991]	= settr(1990,0,18,2,0,"else", 0, 2, 0);
	trans[0][1992]	= settr(1991,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1995]	= settr(1994,0,2119,1197,0,"((fsm_state==20))", 1, 2, 0);
	T = trans[0][2119] = settr(2118,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2118,0,1996,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2118,0,1999,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2118,0,2002,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2118,0,2005,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2118,0,2008,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2118,0,2011,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2118,0,2014,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2118,0,2017,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2118,0,2020,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2118,0,2023,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2118,0,2026,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2118,0,2029,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2118,0,2032,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2118,0,2117,0,0,"IF", 0, 2, 0);
	trans[0][1996]	= settr(1995,0,1997,1198,0,"((input==27))", 1, 2, 0);
	trans[0][1997]	= settr(1996,0,1998,1199,1199,"fsm_state = 47", 1, 2, 0);
	trans[0][1998]	= settr(1997,0,3410,1200,1200,"output = 1", 1, 2, 0);
	trans[0][2120]	= settr(2119,0,3410,1,0,".(goto)", 0, 2, 0);
	trans[0][1999]	= settr(1998,0,2000,1201,0,"((input==22))", 1, 2, 0);
	trans[0][2000]	= settr(1999,0,2001,1202,1202,"fsm_state = 47", 1, 2, 0);
	trans[0][2001]	= settr(2000,0,3410,1203,1203,"output = 1", 1, 2, 0);
	trans[0][2002]	= settr(2001,0,2003,1204,0,"((input==18))", 1, 2, 0);
	trans[0][2003]	= settr(2002,0,2004,1205,1205,"fsm_state = 47", 1, 2, 0);
	trans[0][2004]	= settr(2003,0,3410,1206,1206,"output = 1", 1, 2, 0);
	trans[0][2005]	= settr(2004,0,2006,1207,0,"((input==19))", 1, 2, 0);
	trans[0][2006]	= settr(2005,0,2007,1208,1208,"fsm_state = 47", 1, 2, 0);
	trans[0][2007]	= settr(2006,0,3410,1209,1209,"output = 1", 1, 2, 0);
	trans[0][2008]	= settr(2007,0,2009,1210,0,"((input==24))", 1, 2, 0);
	trans[0][2009]	= settr(2008,0,18,1211,1211,"fsm_state = 45", 1, 2, 0);
	trans[0][2010]	= settr(2009,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2011]	= settr(2010,0,2012,1212,0,"((input==17))", 1, 2, 0);
	trans[0][2012]	= settr(2011,0,2013,1213,1213,"fsm_state = 20", 1, 2, 0);
	trans[0][2013]	= settr(2012,0,3410,1214,1214,"output = 12", 1, 2, 0);
	trans[0][2014]	= settr(2013,0,2015,1215,0,"((input==26))", 1, 2, 0);
	trans[0][2015]	= settr(2014,0,2016,1216,1216,"fsm_state = 20", 1, 2, 0);
	trans[0][2016]	= settr(2015,0,3410,1217,1217,"output = 7", 1, 2, 0);
	trans[0][2017]	= settr(2016,0,2018,1218,0,"((input==23))", 1, 2, 0);
	trans[0][2018]	= settr(2017,0,2019,1219,1219,"fsm_state = 20", 1, 2, 0);
	trans[0][2019]	= settr(2018,0,3410,1220,1220,"output = 7", 1, 2, 0);
	trans[0][2020]	= settr(2019,0,2021,1221,0,"((input==20))", 1, 2, 0);
	trans[0][2021]	= settr(2020,0,2022,1222,1222,"fsm_state = 20", 1, 2, 0);
	trans[0][2022]	= settr(2021,0,3410,1223,1223,"output = 12", 1, 2, 0);
	trans[0][2023]	= settr(2022,0,2024,1224,0,"((input==21))", 1, 2, 0);
	trans[0][2024]	= settr(2023,0,2025,1225,1225,"fsm_state = 20", 1, 2, 0);
	trans[0][2025]	= settr(2024,0,3410,1226,1226,"output = 7", 1, 2, 0);
	trans[0][2026]	= settr(2025,0,2027,1227,0,"((input==28))", 1, 2, 0);
	trans[0][2027]	= settr(2026,0,2028,1228,1228,"fsm_state = 20", 1, 2, 0);
	trans[0][2028]	= settr(2027,0,3410,1229,1229,"output = 7", 1, 2, 0);
	trans[0][2029]	= settr(2028,0,2030,1230,0,"((input==16))", 1, 2, 0);
	trans[0][2030]	= settr(2029,0,18,1231,1231,"fsm_state = 10", 1, 2, 0);
	trans[0][2031]	= settr(2030,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2032]	= settr(2031,0,2033,1232,0,"((input==25))", 1, 2, 0);
	trans[0][2033]	= settr(2032,0,2034,1233,1233,"fsm_state = 9", 1, 2, 0);
	trans[0][2034]	= settr(2033,0,2035,1234,1234,"output = 9", 1, 2, 0);
	trans[0][2035]	= settr(2034,0,2073,1235,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2073] = settr(2072,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2072,0,2066,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2066]	= settr(2065,32,2071,1236,1236,"D_STEP13", 1, 2, 0);
	T = trans[0][2071] = settr(2070,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2070,0,2067,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2070,0,2069,0,0,"IF", 0, 2, 0);
	trans[0][2067]	= settr(2066,0,1,1237,0,"((dealt==0))", 1, 2, 0);
	trans[0][2068]	= settr(2067,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2072]	= settr(2071,0,2074,1,0,".(goto)", 0, 2, 0);
	trans[0][2069]	= settr(2068,0,2070,2,0,"else", 0, 2, 0);
	trans[0][2070]	= settr(2069,0,2074,1,0,"(1)", 0, 2, 0);
	trans[0][2074]	= settr(2073,0,2075,1238,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2075]	= settr(2074,0,2076,1239,1239,"output = 5", 1, 2, 0);
	trans[0][2076]	= settr(2075,0,2114,1240,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2114] = settr(2113,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2113,0,2107,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2107]	= settr(2106,32,2112,1241,1241,"D_STEP13", 1, 2, 0);
	T = trans[0][2112] = settr(2111,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2111,0,2108,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2111,0,2110,0,0,"IF", 0, 2, 0);
	trans[0][2108]	= settr(2107,0,1,1242,0,"((dealt==0))", 1, 2, 0);
	trans[0][2109]	= settr(2108,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2113]	= settr(2112,0,2115,1,0,".(goto)", 0, 2, 0);
	trans[0][2110]	= settr(2109,0,2111,2,0,"else", 0, 2, 0);
	trans[0][2111]	= settr(2110,0,2115,1,0,"(1)", 0, 2, 0);
	trans[0][2115]	= settr(2114,0,2116,1243,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2116]	= settr(2115,0,3410,1244,1244,"output = 11", 1, 2, 0);
	trans[0][2117]	= settr(2116,0,18,2,0,"else", 0, 2, 0);
	trans[0][2118]	= settr(2117,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2121]	= settr(2120,0,2163,1245,0,"((fsm_state==19))", 1, 2, 0);
	T = trans[0][2163] = settr(2162,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2162,0,2122,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2162,0,2125,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2162,0,2128,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2162,0,2131,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2162,0,2134,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2162,0,2137,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2162,0,2140,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2162,0,2143,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2162,0,2146,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2162,0,2149,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2162,0,2152,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2162,0,2155,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2162,0,2158,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2162,0,2161,0,0,"IF", 0, 2, 0);
	trans[0][2122]	= settr(2121,0,2123,1246,0,"((input==25))", 1, 2, 0);
	trans[0][2123]	= settr(2122,0,2124,1247,1247,"fsm_state = 47", 1, 2, 0);
	trans[0][2124]	= settr(2123,0,3410,1248,1248,"output = 1", 1, 2, 0);
	trans[0][2164]	= settr(2163,0,3410,1,0,".(goto)", 0, 2, 0);
	trans[0][2125]	= settr(2124,0,2126,1249,0,"((input==27))", 1, 2, 0);
	trans[0][2126]	= settr(2125,0,2127,1250,1250,"fsm_state = 47", 1, 2, 0);
	trans[0][2127]	= settr(2126,0,3410,1251,1251,"output = 1", 1, 2, 0);
	trans[0][2128]	= settr(2127,0,2129,1252,0,"((input==22))", 1, 2, 0);
	trans[0][2129]	= settr(2128,0,2130,1253,1253,"fsm_state = 47", 1, 2, 0);
	trans[0][2130]	= settr(2129,0,3410,1254,1254,"output = 1", 1, 2, 0);
	trans[0][2131]	= settr(2130,0,2132,1255,0,"((input==18))", 1, 2, 0);
	trans[0][2132]	= settr(2131,0,2133,1256,1256,"fsm_state = 47", 1, 2, 0);
	trans[0][2133]	= settr(2132,0,3410,1257,1257,"output = 1", 1, 2, 0);
	trans[0][2134]	= settr(2133,0,2135,1258,0,"((input==19))", 1, 2, 0);
	trans[0][2135]	= settr(2134,0,2136,1259,1259,"fsm_state = 47", 1, 2, 0);
	trans[0][2136]	= settr(2135,0,3410,1260,1260,"output = 1", 1, 2, 0);
	trans[0][2137]	= settr(2136,0,2138,1261,0,"((input==24))", 1, 2, 0);
	trans[0][2138]	= settr(2137,0,18,1262,1262,"fsm_state = 38", 1, 2, 0);
	trans[0][2139]	= settr(2138,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2140]	= settr(2139,0,2141,1263,0,"((input==17))", 1, 2, 0);
	trans[0][2141]	= settr(2140,0,2142,1264,1264,"fsm_state = 19", 1, 2, 0);
	trans[0][2142]	= settr(2141,0,3410,1265,1265,"output = 13", 1, 2, 0);
	trans[0][2143]	= settr(2142,0,2144,1266,0,"((input==26))", 1, 2, 0);
	trans[0][2144]	= settr(2143,0,2145,1267,1267,"fsm_state = 19", 1, 2, 0);
	trans[0][2145]	= settr(2144,0,3410,1268,1268,"output = 7", 1, 2, 0);
	trans[0][2146]	= settr(2145,0,2147,1269,0,"((input==23))", 1, 2, 0);
	trans[0][2147]	= settr(2146,0,2148,1270,1270,"fsm_state = 19", 1, 2, 0);
	trans[0][2148]	= settr(2147,0,3410,1271,1271,"output = 7", 1, 2, 0);
	trans[0][2149]	= settr(2148,0,2150,1272,0,"((input==21))", 1, 2, 0);
	trans[0][2150]	= settr(2149,0,2151,1273,1273,"fsm_state = 19", 1, 2, 0);
	trans[0][2151]	= settr(2150,0,3410,1274,1274,"output = 7", 1, 2, 0);
	trans[0][2152]	= settr(2151,0,2153,1275,0,"((input==28))", 1, 2, 0);
	trans[0][2153]	= settr(2152,0,2154,1276,1276,"fsm_state = 19", 1, 2, 0);
	trans[0][2154]	= settr(2153,0,3410,1277,1277,"output = 7", 1, 2, 0);
	trans[0][2155]	= settr(2154,0,2156,1278,0,"((input==16))", 1, 2, 0);
	trans[0][2156]	= settr(2155,0,2157,1279,1279,"fsm_state = 15", 1, 2, 0);
	trans[0][2157]	= settr(2156,0,3410,1280,1280,"output = 12", 1, 2, 0);
	trans[0][2158]	= settr(2157,0,2159,1281,0,"((input==20))", 1, 2, 0);
	trans[0][2159]	= settr(2158,0,2160,1282,1282,"fsm_state = 9", 1, 2, 0);
	trans[0][2160]	= settr(2159,0,3410,1283,1283,"output = 3", 1, 2, 0);
	trans[0][2161]	= settr(2160,0,18,2,0,"else", 0, 2, 0);
	trans[0][2162]	= settr(2161,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2165]	= settr(2164,0,2207,1284,0,"((fsm_state==18))", 1, 2, 0);
	T = trans[0][2207] = settr(2206,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2206,0,2166,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2206,0,2169,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2206,0,2172,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2206,0,2175,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2206,0,2178,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2206,0,2181,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2206,0,2184,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2206,0,2187,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2206,0,2190,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2206,0,2193,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2206,0,2196,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2206,0,2199,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2206,0,2202,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2206,0,2205,0,0,"IF", 0, 2, 0);
	trans[0][2166]	= settr(2165,0,2167,1285,0,"((input==27))", 1, 2, 0);
	trans[0][2167]	= settr(2166,0,2168,1286,1286,"fsm_state = 48", 1, 2, 0);
	trans[0][2168]	= settr(2167,0,3410,1287,1287,"output = 1", 1, 2, 0);
	trans[0][2208]	= settr(2207,0,3410,1,0,".(goto)", 0, 2, 0);
	trans[0][2169]	= settr(2168,0,2170,1288,0,"((input==22))", 1, 2, 0);
	trans[0][2170]	= settr(2169,0,2171,1289,1289,"fsm_state = 48", 1, 2, 0);
	trans[0][2171]	= settr(2170,0,3410,1290,1290,"output = 1", 1, 2, 0);
	trans[0][2172]	= settr(2171,0,2173,1291,0,"((input==18))", 1, 2, 0);
	trans[0][2173]	= settr(2172,0,2174,1292,1292,"fsm_state = 48", 1, 2, 0);
	trans[0][2174]	= settr(2173,0,3410,1293,1293,"output = 1", 1, 2, 0);
	trans[0][2175]	= settr(2174,0,2176,1294,0,"((input==19))", 1, 2, 0);
	trans[0][2176]	= settr(2175,0,2177,1295,1295,"fsm_state = 48", 1, 2, 0);
	trans[0][2177]	= settr(2176,0,3410,1296,1296,"output = 1", 1, 2, 0);
	trans[0][2178]	= settr(2177,0,2179,1297,0,"((input==24))", 1, 2, 0);
	trans[0][2179]	= settr(2178,0,18,1298,1298,"fsm_state = 43", 1, 2, 0);
	trans[0][2180]	= settr(2179,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2181]	= settr(2180,0,2182,1299,0,"((input==21))", 1, 2, 0);
	trans[0][2182]	= settr(2181,0,2183,1300,1300,"fsm_state = 26", 1, 2, 0);
	trans[0][2183]	= settr(2182,0,3410,1301,1301,"output = 12", 1, 2, 0);
	trans[0][2184]	= settr(2183,0,2185,1302,0,"((input==17))", 1, 2, 0);
	trans[0][2185]	= settr(2184,0,18,1303,1303,"fsm_state = 18", 1, 2, 0);
	trans[0][2186]	= settr(2185,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2187]	= settr(2186,0,2188,1304,0,"((input==26))", 1, 2, 0);
	trans[0][2188]	= settr(2187,0,2189,1305,1305,"fsm_state = 18", 1, 2, 0);
	trans[0][2189]	= settr(2188,0,3410,1306,1306,"output = 12", 1, 2, 0);
	trans[0][2190]	= settr(2189,0,2191,1307,0,"((input==16))", 1, 2, 0);
	trans[0][2191]	= settr(2190,0,2192,1308,1308,"fsm_state = 18", 1, 2, 0);
	trans[0][2192]	= settr(2191,0,3410,1309,1309,"output = 6", 1, 2, 0);
	trans[0][2193]	= settr(2192,0,2194,1310,0,"((input==23))", 1, 2, 0);
	trans[0][2194]	= settr(2193,0,2195,1311,1311,"fsm_state = 18", 1, 2, 0);
	trans[0][2195]	= settr(2194,0,3410,1312,1312,"output = 12", 1, 2, 0);
	trans[0][2196]	= settr(2195,0,2197,1313,0,"((input==28))", 1, 2, 0);
	trans[0][2197]	= settr(2196,0,2198,1314,1314,"fsm_state = 18", 1, 2, 0);
	trans[0][2198]	= settr(2197,0,3410,1315,1315,"output = 12", 1, 2, 0);
	trans[0][2199]	= settr(2198,0,2200,1316,0,"((input==20))", 1, 2, 0);
	trans[0][2200]	= settr(2199,0,18,1317,1317,"fsm_state = 17", 1, 2, 0);
	trans[0][2201]	= settr(2200,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2202]	= settr(2201,0,2203,1318,0,"((input==25))", 1, 2, 0);
	trans[0][2203]	= settr(2202,0,18,1319,1319,"fsm_state = 16", 1, 2, 0);
	trans[0][2204]	= settr(2203,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2205]	= settr(2204,0,18,2,0,"else", 0, 2, 0);
	trans[0][2206]	= settr(2205,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2209]	= settr(2208,0,2251,1320,0,"((fsm_state==17))", 1, 2, 0);
	T = trans[0][2251] = settr(2250,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2250,0,2210,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2250,0,2213,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2250,0,2216,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2250,0,2219,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2250,0,2222,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2250,0,2225,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2250,0,2228,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2250,0,2231,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2250,0,2234,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2250,0,2237,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2250,0,2240,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2250,0,2243,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2250,0,2246,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2250,0,2249,0,0,"IF", 0, 2, 0);
	trans[0][2210]	= settr(2209,0,2211,1321,0,"((input==27))", 1, 2, 0);
	trans[0][2211]	= settr(2210,0,2212,1322,1322,"fsm_state = 48", 1, 2, 0);
	trans[0][2212]	= settr(2211,0,3410,1323,1323,"output = 1", 1, 2, 0);
	trans[0][2252]	= settr(2251,0,3410,1,0,".(goto)", 0, 2, 0);
	trans[0][2213]	= settr(2212,0,2214,1324,0,"((input==22))", 1, 2, 0);
	trans[0][2214]	= settr(2213,0,2215,1325,1325,"fsm_state = 48", 1, 2, 0);
	trans[0][2215]	= settr(2214,0,3410,1326,1326,"output = 1", 1, 2, 0);
	trans[0][2216]	= settr(2215,0,2217,1327,0,"((input==18))", 1, 2, 0);
	trans[0][2217]	= settr(2216,0,2218,1328,1328,"fsm_state = 48", 1, 2, 0);
	trans[0][2218]	= settr(2217,0,3410,1329,1329,"output = 1", 1, 2, 0);
	trans[0][2219]	= settr(2218,0,2220,1330,0,"((input==19))", 1, 2, 0);
	trans[0][2220]	= settr(2219,0,2221,1331,1331,"fsm_state = 48", 1, 2, 0);
	trans[0][2221]	= settr(2220,0,3410,1332,1332,"output = 1", 1, 2, 0);
	trans[0][2222]	= settr(2221,0,2223,1333,0,"((input==24))", 1, 2, 0);
	trans[0][2223]	= settr(2222,0,18,1334,1334,"fsm_state = 43", 1, 2, 0);
	trans[0][2224]	= settr(2223,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2225]	= settr(2224,0,2226,1335,0,"((input==21))", 1, 2, 0);
	trans[0][2226]	= settr(2225,0,18,1336,1336,"fsm_state = 25", 1, 2, 0);
	trans[0][2227]	= settr(2226,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2228]	= settr(2227,0,2229,1337,0,"((input==17))", 1, 2, 0);
	trans[0][2229]	= settr(2228,0,2230,1338,1338,"fsm_state = 17", 1, 2, 0);
	trans[0][2230]	= settr(2229,0,3410,1339,1339,"output = 12", 1, 2, 0);
	trans[0][2231]	= settr(2230,0,2232,1340,0,"((input==26))", 1, 2, 0);
	trans[0][2232]	= settr(2231,0,18,1341,1341,"fsm_state = 17", 1, 2, 0);
	trans[0][2233]	= settr(2232,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2234]	= settr(2233,0,2235,1342,0,"((input==16))", 1, 2, 0);
	trans[0][2235]	= settr(2234,0,2236,1343,1343,"fsm_state = 17", 1, 2, 0);
	trans[0][2236]	= settr(2235,0,3410,1344,1344,"output = 6", 1, 2, 0);
	trans[0][2237]	= settr(2236,0,2238,1345,0,"((input==23))", 1, 2, 0);
	trans[0][2238]	= settr(2237,0,18,1346,1346,"fsm_state = 17", 1, 2, 0);
	trans[0][2239]	= settr(2238,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2240]	= settr(2239,0,2241,1347,0,"((input==20))", 1, 2, 0);
	trans[0][2241]	= settr(2240,0,2242,1348,1348,"fsm_state = 17", 1, 2, 0);
	trans[0][2242]	= settr(2241,0,3410,1349,1349,"output = 12", 1, 2, 0);
	trans[0][2243]	= settr(2242,0,2244,1350,0,"((input==28))", 1, 2, 0);
	trans[0][2244]	= settr(2243,0,18,1351,1351,"fsm_state = 17", 1, 2, 0);
	trans[0][2245]	= settr(2244,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2246]	= settr(2245,0,2247,1352,0,"((input==25))", 1, 2, 0);
	trans[0][2247]	= settr(2246,0,18,1353,1353,"fsm_state = 14", 1, 2, 0);
	trans[0][2248]	= settr(2247,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2249]	= settr(2248,0,18,2,0,"else", 0, 2, 0);
	trans[0][2250]	= settr(2249,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2253]	= settr(2252,0,2377,1354,0,"((fsm_state==16))", 1, 2, 0);
	T = trans[0][2377] = settr(2376,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2376,0,2254,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2376,0,2257,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2376,0,2260,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2376,0,2263,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2376,0,2266,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2376,0,2269,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2376,0,2272,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2376,0,2275,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2376,0,2278,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2376,0,2281,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2376,0,2284,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2376,0,2287,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2376,0,2372,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2376,0,2375,0,0,"IF", 0, 2, 0);
	trans[0][2254]	= settr(2253,0,2255,1355,0,"((input==27))", 1, 2, 0);
	trans[0][2255]	= settr(2254,0,2256,1356,1356,"fsm_state = 48", 1, 2, 0);
	trans[0][2256]	= settr(2255,0,3410,1357,1357,"output = 1", 1, 2, 0);
	trans[0][2378]	= settr(2377,0,3410,1,0,".(goto)", 0, 2, 0);
	trans[0][2257]	= settr(2256,0,2258,1358,0,"((input==22))", 1, 2, 0);
	trans[0][2258]	= settr(2257,0,2259,1359,1359,"fsm_state = 48", 1, 2, 0);
	trans[0][2259]	= settr(2258,0,3410,1360,1360,"output = 1", 1, 2, 0);
	trans[0][2260]	= settr(2259,0,2261,1361,0,"((input==18))", 1, 2, 0);
	trans[0][2261]	= settr(2260,0,2262,1362,1362,"fsm_state = 48", 1, 2, 0);
	trans[0][2262]	= settr(2261,0,3410,1363,1363,"output = 1", 1, 2, 0);
	trans[0][2263]	= settr(2262,0,2264,1364,0,"((input==19))", 1, 2, 0);
	trans[0][2264]	= settr(2263,0,2265,1365,1365,"fsm_state = 48", 1, 2, 0);
	trans[0][2265]	= settr(2264,0,3410,1366,1366,"output = 1", 1, 2, 0);
	trans[0][2266]	= settr(2265,0,2267,1367,0,"((input==24))", 1, 2, 0);
	trans[0][2267]	= settr(2266,0,18,1368,1368,"fsm_state = 43", 1, 2, 0);
	trans[0][2268]	= settr(2267,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2269]	= settr(2268,0,2270,1369,0,"((input==21))", 1, 2, 0);
	trans[0][2270]	= settr(2269,0,2271,1370,1370,"fsm_state = 21", 1, 2, 0);
	trans[0][2271]	= settr(2270,0,3410,1371,1371,"output = 12", 1, 2, 0);
	trans[0][2272]	= settr(2271,0,2273,1372,0,"((input==17))", 1, 2, 0);
	trans[0][2273]	= settr(2272,0,18,1373,1373,"fsm_state = 16", 1, 2, 0);
	trans[0][2274]	= settr(2273,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2275]	= settr(2274,0,2276,1374,0,"((input==26))", 1, 2, 0);
	trans[0][2276]	= settr(2275,0,2277,1375,1375,"fsm_state = 16", 1, 2, 0);
	trans[0][2277]	= settr(2276,0,3410,1376,1376,"output = 12", 1, 2, 0);
	trans[0][2278]	= settr(2277,0,2279,1377,0,"((input==16))", 1, 2, 0);
	trans[0][2279]	= settr(2278,0,2280,1378,1378,"fsm_state = 16", 1, 2, 0);
	trans[0][2280]	= settr(2279,0,3410,1379,1379,"output = 6", 1, 2, 0);
	trans[0][2281]	= settr(2280,0,2282,1380,0,"((input==23))", 1, 2, 0);
	trans[0][2282]	= settr(2281,0,2283,1381,1381,"fsm_state = 16", 1, 2, 0);
	trans[0][2283]	= settr(2282,0,3410,1382,1382,"output = 12", 1, 2, 0);
	trans[0][2284]	= settr(2283,0,2285,1383,0,"((input==28))", 1, 2, 0);
	trans[0][2285]	= settr(2284,0,2286,1384,1384,"fsm_state = 16", 1, 2, 0);
	trans[0][2286]	= settr(2285,0,3410,1385,1385,"output = 12", 1, 2, 0);
	trans[0][2287]	= settr(2286,0,2288,1386,0,"((input==25))", 1, 2, 0);
	trans[0][2288]	= settr(2287,0,2289,1387,1387,"fsm_state = 15", 1, 2, 0);
	trans[0][2289]	= settr(2288,0,2290,1388,1388,"output = 9", 1, 2, 0);
	trans[0][2290]	= settr(2289,0,2328,1389,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2328] = settr(2327,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2327,0,2321,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2321]	= settr(2320,32,2326,1390,1390,"D_STEP13", 1, 2, 0);
	T = trans[0][2326] = settr(2325,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2325,0,2322,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2325,0,2324,0,0,"IF", 0, 2, 0);
	trans[0][2322]	= settr(2321,0,1,1391,0,"((dealt==0))", 1, 2, 0);
	trans[0][2323]	= settr(2322,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2327]	= settr(2326,0,2329,1,0,".(goto)", 0, 2, 0);
	trans[0][2324]	= settr(2323,0,2325,2,0,"else", 0, 2, 0);
	trans[0][2325]	= settr(2324,0,2329,1,0,"(1)", 0, 2, 0);
	trans[0][2329]	= settr(2328,0,2330,1392,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2330]	= settr(2329,0,2331,1393,1393,"output = 5", 1, 2, 0);
	trans[0][2331]	= settr(2330,0,2369,1394,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2369] = settr(2368,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2368,0,2362,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2362]	= settr(2361,32,2367,1395,1395,"D_STEP13", 1, 2, 0);
	T = trans[0][2367] = settr(2366,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2366,0,2363,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2366,0,2365,0,0,"IF", 0, 2, 0);
	trans[0][2363]	= settr(2362,0,1,1396,0,"((dealt==0))", 1, 2, 0);
	trans[0][2364]	= settr(2363,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2368]	= settr(2367,0,2370,1,0,".(goto)", 0, 2, 0);
	trans[0][2365]	= settr(2364,0,2366,2,0,"else", 0, 2, 0);
	trans[0][2366]	= settr(2365,0,2370,1,0,"(1)", 0, 2, 0);
	trans[0][2370]	= settr(2369,0,2371,1397,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2371]	= settr(2370,0,3410,1398,1398,"output = 11", 1, 2, 0);
	trans[0][2372]	= settr(2371,0,2373,1399,0,"((input==20))", 1, 2, 0);
	trans[0][2373]	= settr(2372,0,18,1400,1400,"fsm_state = 14", 1, 2, 0);
	trans[0][2374]	= settr(2373,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2375]	= settr(2374,0,18,2,0,"else", 0, 2, 0);
	trans[0][2376]	= settr(2375,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2379]	= settr(2378,0,2421,1401,0,"((fsm_state==15))", 1, 2, 0);
	T = trans[0][2421] = settr(2420,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2420,0,2380,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2420,0,2383,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2420,0,2386,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2420,0,2389,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2420,0,2392,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2420,0,2395,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2420,0,2398,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2420,0,2401,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2420,0,2404,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2420,0,2407,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2420,0,2410,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2420,0,2413,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2420,0,2416,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2420,0,2419,0,0,"IF", 0, 2, 0);
	trans[0][2380]	= settr(2379,0,2381,1402,0,"((input==25))", 1, 2, 0);
	trans[0][2381]	= settr(2380,0,2382,1403,1403,"fsm_state = 48", 1, 2, 0);
	trans[0][2382]	= settr(2381,0,3410,1404,1404,"output = 1", 1, 2, 0);
	trans[0][2422]	= settr(2421,0,3410,1,0,".(goto)", 0, 2, 0);
	trans[0][2383]	= settr(2382,0,2384,1405,0,"((input==27))", 1, 2, 0);
	trans[0][2384]	= settr(2383,0,2385,1406,1406,"fsm_state = 48", 1, 2, 0);
	trans[0][2385]	= settr(2384,0,3410,1407,1407,"output = 1", 1, 2, 0);
	trans[0][2386]	= settr(2385,0,2387,1408,0,"((input==22))", 1, 2, 0);
	trans[0][2387]	= settr(2386,0,2388,1409,1409,"fsm_state = 48", 1, 2, 0);
	trans[0][2388]	= settr(2387,0,3410,1410,1410,"output = 1", 1, 2, 0);
	trans[0][2389]	= settr(2388,0,2390,1411,0,"((input==18))", 1, 2, 0);
	trans[0][2390]	= settr(2389,0,2391,1412,1412,"fsm_state = 48", 1, 2, 0);
	trans[0][2391]	= settr(2390,0,3410,1413,1413,"output = 1", 1, 2, 0);
	trans[0][2392]	= settr(2391,0,2393,1414,0,"((input==19))", 1, 2, 0);
	trans[0][2393]	= settr(2392,0,2394,1415,1415,"fsm_state = 48", 1, 2, 0);
	trans[0][2394]	= settr(2393,0,3410,1416,1416,"output = 1", 1, 2, 0);
	trans[0][2395]	= settr(2394,0,2396,1417,0,"((input==24))", 1, 2, 0);
	trans[0][2396]	= settr(2395,0,18,1418,1418,"fsm_state = 36", 1, 2, 0);
	trans[0][2397]	= settr(2396,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2398]	= settr(2397,0,2399,1419,0,"((input==21))", 1, 2, 0);
	trans[0][2399]	= settr(2398,0,2400,1420,1420,"fsm_state = 19", 1, 2, 0);
	trans[0][2400]	= settr(2399,0,3410,1421,1421,"output = 12", 1, 2, 0);
	trans[0][2401]	= settr(2400,0,2402,1422,0,"((input==17))", 1, 2, 0);
	trans[0][2402]	= settr(2401,0,2403,1423,1423,"fsm_state = 15", 1, 2, 0);
	trans[0][2403]	= settr(2402,0,3410,1424,1424,"output = 13", 1, 2, 0);
	trans[0][2404]	= settr(2403,0,2405,1425,0,"((input==26))", 1, 2, 0);
	trans[0][2405]	= settr(2404,0,2406,1426,1426,"fsm_state = 15", 1, 2, 0);
	trans[0][2406]	= settr(2405,0,3410,1427,1427,"output = 12", 1, 2, 0);
	trans[0][2407]	= settr(2406,0,2408,1428,0,"((input==16))", 1, 2, 0);
	trans[0][2408]	= settr(2407,0,2409,1429,1429,"fsm_state = 15", 1, 2, 0);
	trans[0][2409]	= settr(2408,0,3410,1430,1430,"output = 6", 1, 2, 0);
	trans[0][2410]	= settr(2409,0,2411,1431,0,"((input==23))", 1, 2, 0);
	trans[0][2411]	= settr(2410,0,2412,1432,1432,"fsm_state = 15", 1, 2, 0);
	trans[0][2412]	= settr(2411,0,3410,1433,1433,"output = 12", 1, 2, 0);
	trans[0][2413]	= settr(2412,0,2414,1434,0,"((input==28))", 1, 2, 0);
	trans[0][2414]	= settr(2413,0,2415,1435,1435,"fsm_state = 15", 1, 2, 0);
	trans[0][2415]	= settr(2414,0,3410,1436,1436,"output = 12", 1, 2, 0);
	trans[0][2416]	= settr(2415,0,2417,1437,0,"((input==20))", 1, 2, 0);
	trans[0][2417]	= settr(2416,0,2418,1438,1438,"fsm_state = 5", 1, 2, 0);
	trans[0][2418]	= settr(2417,0,3410,1439,1439,"output = 3", 1, 2, 0);
	trans[0][2419]	= settr(2418,0,18,2,0,"else", 0, 2, 0);
	trans[0][2420]	= settr(2419,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2423]	= settr(2422,0,2547,1440,0,"((fsm_state==14))", 1, 2, 0);
	T = trans[0][2547] = settr(2546,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2546,0,2424,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2546,0,2427,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2546,0,2430,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2546,0,2433,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2546,0,2436,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2546,0,2439,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2546,0,2442,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2546,0,2445,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2546,0,2448,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2546,0,2451,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2546,0,2454,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2546,0,2457,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2546,0,2460,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2546,0,2545,0,0,"IF", 0, 2, 0);
	trans[0][2424]	= settr(2423,0,2425,1441,0,"((input==27))", 1, 2, 0);
	trans[0][2425]	= settr(2424,0,2426,1442,1442,"fsm_state = 48", 1, 2, 0);
	trans[0][2426]	= settr(2425,0,3410,1443,1443,"output = 1", 1, 2, 0);
	trans[0][2548]	= settr(2547,0,3410,1,0,".(goto)", 0, 2, 0);
	trans[0][2427]	= settr(2426,0,2428,1444,0,"((input==22))", 1, 2, 0);
	trans[0][2428]	= settr(2427,0,2429,1445,1445,"fsm_state = 48", 1, 2, 0);
	trans[0][2429]	= settr(2428,0,3410,1446,1446,"output = 1", 1, 2, 0);
	trans[0][2430]	= settr(2429,0,2431,1447,0,"((input==18))", 1, 2, 0);
	trans[0][2431]	= settr(2430,0,2432,1448,1448,"fsm_state = 48", 1, 2, 0);
	trans[0][2432]	= settr(2431,0,3410,1449,1449,"output = 1", 1, 2, 0);
	trans[0][2433]	= settr(2432,0,2434,1450,0,"((input==19))", 1, 2, 0);
	trans[0][2434]	= settr(2433,0,2435,1451,1451,"fsm_state = 48", 1, 2, 0);
	trans[0][2435]	= settr(2434,0,3410,1452,1452,"output = 1", 1, 2, 0);
	trans[0][2436]	= settr(2435,0,2437,1453,0,"((input==24))", 1, 2, 0);
	trans[0][2437]	= settr(2436,0,18,1454,1454,"fsm_state = 43", 1, 2, 0);
	trans[0][2438]	= settr(2437,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2439]	= settr(2438,0,2440,1455,0,"((input==21))", 1, 2, 0);
	trans[0][2440]	= settr(2439,0,18,1456,1456,"fsm_state = 20", 1, 2, 0);
	trans[0][2441]	= settr(2440,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2442]	= settr(2441,0,2443,1457,0,"((input==17))", 1, 2, 0);
	trans[0][2443]	= settr(2442,0,2444,1458,1458,"fsm_state = 14", 1, 2, 0);
	trans[0][2444]	= settr(2443,0,3410,1459,1459,"output = 12", 1, 2, 0);
	trans[0][2445]	= settr(2444,0,2446,1460,0,"((input==26))", 1, 2, 0);
	trans[0][2446]	= settr(2445,0,18,1461,1461,"fsm_state = 14", 1, 2, 0);
	trans[0][2447]	= settr(2446,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2448]	= settr(2447,0,2449,1462,0,"((input==16))", 1, 2, 0);
	trans[0][2449]	= settr(2448,0,2450,1463,1463,"fsm_state = 14", 1, 2, 0);
	trans[0][2450]	= settr(2449,0,3410,1464,1464,"output = 6", 1, 2, 0);
	trans[0][2451]	= settr(2450,0,2452,1465,0,"((input==23))", 1, 2, 0);
	trans[0][2452]	= settr(2451,0,18,1466,1466,"fsm_state = 14", 1, 2, 0);
	trans[0][2453]	= settr(2452,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2454]	= settr(2453,0,2455,1467,0,"((input==20))", 1, 2, 0);
	trans[0][2455]	= settr(2454,0,2456,1468,1468,"fsm_state = 14", 1, 2, 0);
	trans[0][2456]	= settr(2455,0,3410,1469,1469,"output = 12", 1, 2, 0);
	trans[0][2457]	= settr(2456,0,2458,1470,0,"((input==28))", 1, 2, 0);
	trans[0][2458]	= settr(2457,0,18,1471,1471,"fsm_state = 14", 1, 2, 0);
	trans[0][2459]	= settr(2458,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2460]	= settr(2459,0,2461,1472,0,"((input==25))", 1, 2, 0);
	trans[0][2461]	= settr(2460,0,2462,1473,1473,"fsm_state = 5", 1, 2, 0);
	trans[0][2462]	= settr(2461,0,2463,1474,1474,"output = 9", 1, 2, 0);
	trans[0][2463]	= settr(2462,0,2501,1475,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2501] = settr(2500,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2500,0,2494,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2494]	= settr(2493,32,2499,1476,1476,"D_STEP13", 1, 2, 0);
	T = trans[0][2499] = settr(2498,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2498,0,2495,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2498,0,2497,0,0,"IF", 0, 2, 0);
	trans[0][2495]	= settr(2494,0,1,1477,0,"((dealt==0))", 1, 2, 0);
	trans[0][2496]	= settr(2495,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2500]	= settr(2499,0,2502,1,0,".(goto)", 0, 2, 0);
	trans[0][2497]	= settr(2496,0,2498,2,0,"else", 0, 2, 0);
	trans[0][2498]	= settr(2497,0,2502,1,0,"(1)", 0, 2, 0);
	trans[0][2502]	= settr(2501,0,2503,1478,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2503]	= settr(2502,0,2504,1479,1479,"output = 5", 1, 2, 0);
	trans[0][2504]	= settr(2503,0,2542,1480,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2542] = settr(2541,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2541,0,2535,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2535]	= settr(2534,32,2540,1481,1481,"D_STEP13", 1, 2, 0);
	T = trans[0][2540] = settr(2539,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2539,0,2536,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2539,0,2538,0,0,"IF", 0, 2, 0);
	trans[0][2536]	= settr(2535,0,1,1482,0,"((dealt==0))", 1, 2, 0);
	trans[0][2537]	= settr(2536,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2541]	= settr(2540,0,2543,1,0,".(goto)", 0, 2, 0);
	trans[0][2538]	= settr(2537,0,2539,2,0,"else", 0, 2, 0);
	trans[0][2539]	= settr(2538,0,2543,1,0,"(1)", 0, 2, 0);
	trans[0][2543]	= settr(2542,0,2544,1483,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2544]	= settr(2543,0,3410,1484,1484,"output = 11", 1, 2, 0);
	trans[0][2545]	= settr(2544,0,18,2,0,"else", 0, 2, 0);
	trans[0][2546]	= settr(2545,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2549]	= settr(2548,0,2632,1485,0,"((fsm_state==13))", 1, 2, 0);
	T = trans[0][2632] = settr(2631,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2631,0,2550,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2631,0,2553,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2631,0,2556,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2631,0,2559,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2631,0,2562,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2631,0,2565,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2631,0,2568,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2631,0,2571,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2631,0,2574,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2631,0,2577,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2631,0,2580,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2631,0,2583,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2631,0,2586,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2631,0,2630,0,0,"IF", 0, 2, 0);
	trans[0][2550]	= settr(2549,0,2551,1486,0,"((input==27))", 1, 2, 0);
	trans[0][2551]	= settr(2550,0,2552,1487,1487,"fsm_state = 48", 1, 2, 0);
	trans[0][2552]	= settr(2551,0,3410,1488,1488,"output = 1", 1, 2, 0);
	trans[0][2633]	= settr(2632,0,3410,1,0,".(goto)", 0, 2, 0);
	trans[0][2553]	= settr(2552,0,2554,1489,0,"((input==22))", 1, 2, 0);
	trans[0][2554]	= settr(2553,0,2555,1490,1490,"fsm_state = 48", 1, 2, 0);
	trans[0][2555]	= settr(2554,0,3410,1491,1491,"output = 1", 1, 2, 0);
	trans[0][2556]	= settr(2555,0,2557,1492,0,"((input==18))", 1, 2, 0);
	trans[0][2557]	= settr(2556,0,2558,1493,1493,"fsm_state = 48", 1, 2, 0);
	trans[0][2558]	= settr(2557,0,3410,1494,1494,"output = 1", 1, 2, 0);
	trans[0][2559]	= settr(2558,0,2560,1495,0,"((input==19))", 1, 2, 0);
	trans[0][2560]	= settr(2559,0,2561,1496,1496,"fsm_state = 48", 1, 2, 0);
	trans[0][2561]	= settr(2560,0,3410,1497,1497,"output = 1", 1, 2, 0);
	trans[0][2562]	= settr(2561,0,2563,1498,0,"((input==24))", 1, 2, 0);
	trans[0][2563]	= settr(2562,0,18,1499,1499,"fsm_state = 43", 1, 2, 0);
	trans[0][2564]	= settr(2563,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2565]	= settr(2564,0,2566,1500,0,"((input==21))", 1, 2, 0);
	trans[0][2566]	= settr(2565,0,18,1501,1501,"fsm_state = 24", 1, 2, 0);
	trans[0][2567]	= settr(2566,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2568]	= settr(2567,0,2569,1502,0,"((input==17))", 1, 2, 0);
	trans[0][2569]	= settr(2568,0,2570,1503,1503,"fsm_state = 13", 1, 2, 0);
	trans[0][2570]	= settr(2569,0,3410,1504,1504,"output = 12", 1, 2, 0);
	trans[0][2571]	= settr(2570,0,2572,1505,0,"((input==26))", 1, 2, 0);
	trans[0][2572]	= settr(2571,0,18,1506,1506,"fsm_state = 13", 1, 2, 0);
	trans[0][2573]	= settr(2572,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2574]	= settr(2573,0,2575,1507,0,"((input==16))", 1, 2, 0);
	trans[0][2575]	= settr(2574,0,2576,1508,1508,"fsm_state = 13", 1, 2, 0);
	trans[0][2576]	= settr(2575,0,3410,1509,1509,"output = 6", 1, 2, 0);
	trans[0][2577]	= settr(2576,0,2578,1510,0,"((input==23))", 1, 2, 0);
	trans[0][2578]	= settr(2577,0,18,1511,1511,"fsm_state = 13", 1, 2, 0);
	trans[0][2579]	= settr(2578,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2580]	= settr(2579,0,2581,1512,0,"((input==20))", 1, 2, 0);
	trans[0][2581]	= settr(2580,0,2582,1513,1513,"fsm_state = 13", 1, 2, 0);
	trans[0][2582]	= settr(2581,0,3410,1514,1514,"output = 12", 1, 2, 0);
	trans[0][2583]	= settr(2582,0,2584,1515,0,"((input==28))", 1, 2, 0);
	trans[0][2584]	= settr(2583,0,18,1516,1516,"fsm_state = 13", 1, 2, 0);
	trans[0][2585]	= settr(2584,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2586]	= settr(2585,0,2587,1517,0,"((input==25))", 1, 2, 0);
	trans[0][2587]	= settr(2586,0,2588,1518,1518,"fsm_state = 5", 1, 2, 0);
	trans[0][2588]	= settr(2587,0,2589,1519,1519,"output = 9", 1, 2, 0);
	trans[0][2589]	= settr(2588,0,2627,1520,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2627] = settr(2626,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2626,0,2620,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2620]	= settr(2619,32,2625,1521,1521,"D_STEP13", 1, 2, 0);
	T = trans[0][2625] = settr(2624,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2624,0,2621,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2624,0,2623,0,0,"IF", 0, 2, 0);
	trans[0][2621]	= settr(2620,0,1,1522,0,"((dealt==0))", 1, 2, 0);
	trans[0][2622]	= settr(2621,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2626]	= settr(2625,0,2628,1,0,".(goto)", 0, 2, 0);
	trans[0][2623]	= settr(2622,0,2624,2,0,"else", 0, 2, 0);
	trans[0][2624]	= settr(2623,0,2628,1,0,"(1)", 0, 2, 0);
	trans[0][2628]	= settr(2627,0,2629,1523,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2629]	= settr(2628,0,3410,1524,1524,"output = 5", 1, 2, 0);
	trans[0][2630]	= settr(2629,0,18,2,0,"else", 0, 2, 0);
	trans[0][2631]	= settr(2630,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2634]	= settr(2633,0,2676,1525,0,"((fsm_state==12))", 1, 2, 0);
	T = trans[0][2676] = settr(2675,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2675,0,2635,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2675,0,2638,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2675,0,2641,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2675,0,2644,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2675,0,2647,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2675,0,2650,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2675,0,2653,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2675,0,2656,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2675,0,2659,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2675,0,2662,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2675,0,2665,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2675,0,2668,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2675,0,2671,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2675,0,2674,0,0,"IF", 0, 2, 0);
	trans[0][2635]	= settr(2634,0,2636,1526,0,"((input==27))", 1, 2, 0);
	trans[0][2636]	= settr(2635,0,2637,1527,1527,"fsm_state = 48", 1, 2, 0);
	trans[0][2637]	= settr(2636,0,3410,1528,1528,"output = 1", 1, 2, 0);
	trans[0][2677]	= settr(2676,0,3410,1,0,".(goto)", 0, 2, 0);
	trans[0][2638]	= settr(2637,0,2639,1529,0,"((input==22))", 1, 2, 0);
	trans[0][2639]	= settr(2638,0,2640,1530,1530,"fsm_state = 48", 1, 2, 0);
	trans[0][2640]	= settr(2639,0,3410,1531,1531,"output = 1", 1, 2, 0);
	trans[0][2641]	= settr(2640,0,2642,1532,0,"((input==18))", 1, 2, 0);
	trans[0][2642]	= settr(2641,0,2643,1533,1533,"fsm_state = 48", 1, 2, 0);
	trans[0][2643]	= settr(2642,0,3410,1534,1534,"output = 1", 1, 2, 0);
	trans[0][2644]	= settr(2643,0,2645,1535,0,"((input==19))", 1, 2, 0);
	trans[0][2645]	= settr(2644,0,2646,1536,1536,"fsm_state = 48", 1, 2, 0);
	trans[0][2646]	= settr(2645,0,3410,1537,1537,"output = 1", 1, 2, 0);
	trans[0][2647]	= settr(2646,0,2648,1538,0,"((input==24))", 1, 2, 0);
	trans[0][2648]	= settr(2647,0,18,1539,1539,"fsm_state = 43", 1, 2, 0);
	trans[0][2649]	= settr(2648,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2650]	= settr(2649,0,2651,1540,0,"((input==21))", 1, 2, 0);
	trans[0][2651]	= settr(2650,0,18,1541,1541,"fsm_state = 22", 1, 2, 0);
	trans[0][2652]	= settr(2651,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2653]	= settr(2652,0,2654,1542,0,"((input==25))", 1, 2, 0);
	trans[0][2654]	= settr(2653,0,18,1543,1543,"fsm_state = 13", 1, 2, 0);
	trans[0][2655]	= settr(2654,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2656]	= settr(2655,0,2657,1544,0,"((input==17))", 1, 2, 0);
	trans[0][2657]	= settr(2656,0,2658,1545,1545,"fsm_state = 12", 1, 2, 0);
	trans[0][2658]	= settr(2657,0,3410,1546,1546,"output = 12", 1, 2, 0);
	trans[0][2659]	= settr(2658,0,2660,1547,0,"((input==26))", 1, 2, 0);
	trans[0][2660]	= settr(2659,0,18,1548,1548,"fsm_state = 12", 1, 2, 0);
	trans[0][2661]	= settr(2660,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2662]	= settr(2661,0,2663,1549,0,"((input==16))", 1, 2, 0);
	trans[0][2663]	= settr(2662,0,2664,1550,1550,"fsm_state = 12", 1, 2, 0);
	trans[0][2664]	= settr(2663,0,3410,1551,1551,"output = 6", 1, 2, 0);
	trans[0][2665]	= settr(2664,0,2666,1552,0,"((input==23))", 1, 2, 0);
	trans[0][2666]	= settr(2665,0,18,1553,1553,"fsm_state = 12", 1, 2, 0);
	trans[0][2667]	= settr(2666,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2668]	= settr(2667,0,2669,1554,0,"((input==20))", 1, 2, 0);
	trans[0][2669]	= settr(2668,0,2670,1555,1555,"fsm_state = 12", 1, 2, 0);
	trans[0][2670]	= settr(2669,0,3410,1556,1556,"output = 12", 1, 2, 0);
	trans[0][2671]	= settr(2670,0,2672,1557,0,"((input==28))", 1, 2, 0);
	trans[0][2672]	= settr(2671,0,18,1558,1558,"fsm_state = 12", 1, 2, 0);
	trans[0][2673]	= settr(2672,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2674]	= settr(2673,0,18,2,0,"else", 0, 2, 0);
	trans[0][2675]	= settr(2674,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2678]	= settr(2677,0,2720,1559,0,"((fsm_state==11))", 1, 2, 0);
	T = trans[0][2720] = settr(2719,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2719,0,2679,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2719,0,2682,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2719,0,2685,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2719,0,2688,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2719,0,2691,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2719,0,2694,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2719,0,2697,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2719,0,2700,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2719,0,2703,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2719,0,2706,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2719,0,2709,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2719,0,2712,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2719,0,2715,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2719,0,2718,0,0,"IF", 0, 2, 0);
	trans[0][2679]	= settr(2678,0,2680,1560,0,"((input==27))", 1, 2, 0);
	trans[0][2680]	= settr(2679,0,2681,1561,1561,"fsm_state = 48", 1, 2, 0);
	trans[0][2681]	= settr(2680,0,3410,1562,1562,"output = 1", 1, 2, 0);
	trans[0][2721]	= settr(2720,0,3410,1,0,".(goto)", 0, 2, 0);
	trans[0][2682]	= settr(2681,0,2683,1563,0,"((input==22))", 1, 2, 0);
	trans[0][2683]	= settr(2682,0,2684,1564,1564,"fsm_state = 48", 1, 2, 0);
	trans[0][2684]	= settr(2683,0,3410,1565,1565,"output = 1", 1, 2, 0);
	trans[0][2685]	= settr(2684,0,2686,1566,0,"((input==18))", 1, 2, 0);
	trans[0][2686]	= settr(2685,0,2687,1567,1567,"fsm_state = 48", 1, 2, 0);
	trans[0][2687]	= settr(2686,0,3410,1568,1568,"output = 1", 1, 2, 0);
	trans[0][2688]	= settr(2687,0,2689,1569,0,"((input==19))", 1, 2, 0);
	trans[0][2689]	= settr(2688,0,2690,1570,1570,"fsm_state = 48", 1, 2, 0);
	trans[0][2690]	= settr(2689,0,3410,1571,1571,"output = 1", 1, 2, 0);
	trans[0][2691]	= settr(2690,0,2692,1572,0,"((input==24))", 1, 2, 0);
	trans[0][2692]	= settr(2691,0,18,1573,1573,"fsm_state = 43", 1, 2, 0);
	trans[0][2693]	= settr(2692,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2694]	= settr(2693,0,2695,1574,0,"((input==21))", 1, 2, 0);
	trans[0][2695]	= settr(2694,0,18,1575,1575,"fsm_state = 25", 1, 2, 0);
	trans[0][2696]	= settr(2695,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2697]	= settr(2696,0,2698,1576,0,"((input==28))", 1, 2, 0);
	trans[0][2698]	= settr(2697,0,18,1577,1577,"fsm_state = 17", 1, 2, 0);
	trans[0][2699]	= settr(2698,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2700]	= settr(2699,0,2701,1578,0,"((input==17))", 1, 2, 0);
	trans[0][2701]	= settr(2700,0,2702,1579,1579,"fsm_state = 11", 1, 2, 0);
	trans[0][2702]	= settr(2701,0,3410,1580,1580,"output = 12", 1, 2, 0);
	trans[0][2703]	= settr(2702,0,2704,1581,0,"((input==26))", 1, 2, 0);
	trans[0][2704]	= settr(2703,0,18,1582,1582,"fsm_state = 11", 1, 2, 0);
	trans[0][2705]	= settr(2704,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2706]	= settr(2705,0,2707,1583,0,"((input==16))", 1, 2, 0);
	trans[0][2707]	= settr(2706,0,2708,1584,1584,"fsm_state = 11", 1, 2, 0);
	trans[0][2708]	= settr(2707,0,3410,1585,1585,"output = 6", 1, 2, 0);
	trans[0][2709]	= settr(2708,0,2710,1586,0,"((input==23))", 1, 2, 0);
	trans[0][2710]	= settr(2709,0,18,1587,1587,"fsm_state = 11", 1, 2, 0);
	trans[0][2711]	= settr(2710,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2712]	= settr(2711,0,2713,1588,0,"((input==20))", 1, 2, 0);
	trans[0][2713]	= settr(2712,0,2714,1589,1589,"fsm_state = 11", 1, 2, 0);
	trans[0][2714]	= settr(2713,0,3410,1590,1590,"output = 12", 1, 2, 0);
	trans[0][2715]	= settr(2714,0,2716,1591,0,"((input==25))", 1, 2, 0);
	trans[0][2716]	= settr(2715,0,18,1592,1592,"fsm_state = 10", 1, 2, 0);
	trans[0][2717]	= settr(2716,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2718]	= settr(2717,0,18,2,0,"else", 0, 2, 0);
	trans[0][2719]	= settr(2718,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2722]	= settr(2721,0,2846,1593,0,"((fsm_state==10))", 1, 2, 0);
	T = trans[0][2846] = settr(2845,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2845,0,2723,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2845,0,2726,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2845,0,2729,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2845,0,2732,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2845,0,2735,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2845,0,2738,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2845,0,2741,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2845,0,2744,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2845,0,2747,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2845,0,2750,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2845,0,2753,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2845,0,2756,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2845,0,2759,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2845,0,2844,0,0,"IF", 0, 2, 0);
	trans[0][2723]	= settr(2722,0,2724,1594,0,"((input==27))", 1, 2, 0);
	trans[0][2724]	= settr(2723,0,2725,1595,1595,"fsm_state = 48", 1, 2, 0);
	trans[0][2725]	= settr(2724,0,3410,1596,1596,"output = 1", 1, 2, 0);
	trans[0][2847]	= settr(2846,0,3410,1,0,".(goto)", 0, 2, 0);
	trans[0][2726]	= settr(2725,0,2727,1597,0,"((input==22))", 1, 2, 0);
	trans[0][2727]	= settr(2726,0,2728,1598,1598,"fsm_state = 48", 1, 2, 0);
	trans[0][2728]	= settr(2727,0,3410,1599,1599,"output = 1", 1, 2, 0);
	trans[0][2729]	= settr(2728,0,2730,1600,0,"((input==18))", 1, 2, 0);
	trans[0][2730]	= settr(2729,0,2731,1601,1601,"fsm_state = 48", 1, 2, 0);
	trans[0][2731]	= settr(2730,0,3410,1602,1602,"output = 1", 1, 2, 0);
	trans[0][2732]	= settr(2731,0,2733,1603,0,"((input==19))", 1, 2, 0);
	trans[0][2733]	= settr(2732,0,2734,1604,1604,"fsm_state = 48", 1, 2, 0);
	trans[0][2734]	= settr(2733,0,3410,1605,1605,"output = 1", 1, 2, 0);
	trans[0][2735]	= settr(2734,0,2736,1606,0,"((input==24))", 1, 2, 0);
	trans[0][2736]	= settr(2735,0,18,1607,1607,"fsm_state = 43", 1, 2, 0);
	trans[0][2737]	= settr(2736,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2738]	= settr(2737,0,2739,1608,0,"((input==21))", 1, 2, 0);
	trans[0][2739]	= settr(2738,0,18,1609,1609,"fsm_state = 20", 1, 2, 0);
	trans[0][2740]	= settr(2739,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2741]	= settr(2740,0,2742,1610,0,"((input==28))", 1, 2, 0);
	trans[0][2742]	= settr(2741,0,18,1611,1611,"fsm_state = 14", 1, 2, 0);
	trans[0][2743]	= settr(2742,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2744]	= settr(2743,0,2745,1612,0,"((input==17))", 1, 2, 0);
	trans[0][2745]	= settr(2744,0,2746,1613,1613,"fsm_state = 10", 1, 2, 0);
	trans[0][2746]	= settr(2745,0,3410,1614,1614,"output = 12", 1, 2, 0);
	trans[0][2747]	= settr(2746,0,2748,1615,0,"((input==26))", 1, 2, 0);
	trans[0][2748]	= settr(2747,0,18,1616,1616,"fsm_state = 10", 1, 2, 0);
	trans[0][2749]	= settr(2748,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2750]	= settr(2749,0,2751,1617,0,"((input==16))", 1, 2, 0);
	trans[0][2751]	= settr(2750,0,2752,1618,1618,"fsm_state = 10", 1, 2, 0);
	trans[0][2752]	= settr(2751,0,3410,1619,1619,"output = 6", 1, 2, 0);
	trans[0][2753]	= settr(2752,0,2754,1620,0,"((input==20))", 1, 2, 0);
	trans[0][2754]	= settr(2753,0,2755,1621,1621,"fsm_state = 10", 1, 2, 0);
	trans[0][2755]	= settr(2754,0,3410,1622,1622,"output = 12", 1, 2, 0);
	trans[0][2756]	= settr(2755,0,2757,1623,0,"((input==23))", 1, 2, 0);
	trans[0][2757]	= settr(2756,0,18,1624,1624,"fsm_state = 4", 1, 2, 0);
	trans[0][2758]	= settr(2757,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2759]	= settr(2758,0,2760,1625,0,"((input==25))", 1, 2, 0);
	trans[0][2760]	= settr(2759,0,2761,1626,1626,"fsm_state = 3", 1, 2, 0);
	trans[0][2761]	= settr(2760,0,2762,1627,1627,"output = 9", 1, 2, 0);
	trans[0][2762]	= settr(2761,0,2800,1628,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2800] = settr(2799,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2799,0,2793,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2793]	= settr(2792,32,2798,1629,1629,"D_STEP13", 1, 2, 0);
	T = trans[0][2798] = settr(2797,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2797,0,2794,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2797,0,2796,0,0,"IF", 0, 2, 0);
	trans[0][2794]	= settr(2793,0,1,1630,0,"((dealt==0))", 1, 2, 0);
	trans[0][2795]	= settr(2794,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2799]	= settr(2798,0,2801,1,0,".(goto)", 0, 2, 0);
	trans[0][2796]	= settr(2795,0,2797,2,0,"else", 0, 2, 0);
	trans[0][2797]	= settr(2796,0,2801,1,0,"(1)", 0, 2, 0);
	trans[0][2801]	= settr(2800,0,2802,1631,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2802]	= settr(2801,0,2803,1632,1632,"output = 5", 1, 2, 0);
	trans[0][2803]	= settr(2802,0,2841,1633,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2841] = settr(2840,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2840,0,2834,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2834]	= settr(2833,32,2839,1634,1634,"D_STEP13", 1, 2, 0);
	T = trans[0][2839] = settr(2838,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2838,0,2835,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2838,0,2837,0,0,"IF", 0, 2, 0);
	trans[0][2835]	= settr(2834,0,1,1635,0,"((dealt==0))", 1, 2, 0);
	trans[0][2836]	= settr(2835,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2840]	= settr(2839,0,2842,1,0,".(goto)", 0, 2, 0);
	trans[0][2837]	= settr(2836,0,2838,2,0,"else", 0, 2, 0);
	trans[0][2838]	= settr(2837,0,2842,1,0,"(1)", 0, 2, 0);
	trans[0][2842]	= settr(2841,0,2843,1636,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2843]	= settr(2842,0,3410,1637,1637,"output = 11", 1, 2, 0);
	trans[0][2844]	= settr(2843,0,18,2,0,"else", 0, 2, 0);
	trans[0][2845]	= settr(2844,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2848]	= settr(2847,0,2890,1638,0,"((fsm_state==9))", 1, 2, 0);
	T = trans[0][2890] = settr(2889,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2889,0,2849,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2889,0,2852,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2889,0,2855,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2889,0,2858,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2889,0,2861,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2889,0,2864,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2889,0,2867,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2889,0,2870,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2889,0,2873,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2889,0,2876,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2889,0,2879,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2889,0,2882,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2889,0,2885,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2889,0,2888,0,0,"IF", 0, 2, 0);
	trans[0][2849]	= settr(2848,0,2850,1639,0,"((input==25))", 1, 2, 0);
	trans[0][2850]	= settr(2849,0,2851,1640,1640,"fsm_state = 47", 1, 2, 0);
	trans[0][2851]	= settr(2850,0,3410,1641,1641,"output = 1", 1, 2, 0);
	trans[0][2891]	= settr(2890,0,3410,1,0,".(goto)", 0, 2, 0);
	trans[0][2852]	= settr(2851,0,2853,1642,0,"((input==27))", 1, 2, 0);
	trans[0][2853]	= settr(2852,0,2854,1643,1643,"fsm_state = 47", 1, 2, 0);
	trans[0][2854]	= settr(2853,0,3410,1644,1644,"output = 1", 1, 2, 0);
	trans[0][2855]	= settr(2854,0,2856,1645,0,"((input==22))", 1, 2, 0);
	trans[0][2856]	= settr(2855,0,2857,1646,1646,"fsm_state = 47", 1, 2, 0);
	trans[0][2857]	= settr(2856,0,3410,1647,1647,"output = 1", 1, 2, 0);
	trans[0][2858]	= settr(2857,0,2859,1648,0,"((input==18))", 1, 2, 0);
	trans[0][2859]	= settr(2858,0,2860,1649,1649,"fsm_state = 47", 1, 2, 0);
	trans[0][2860]	= settr(2859,0,3410,1650,1650,"output = 1", 1, 2, 0);
	trans[0][2861]	= settr(2860,0,2862,1651,0,"((input==19))", 1, 2, 0);
	trans[0][2862]	= settr(2861,0,2863,1652,1652,"fsm_state = 47", 1, 2, 0);
	trans[0][2863]	= settr(2862,0,3410,1653,1653,"output = 1", 1, 2, 0);
	trans[0][2864]	= settr(2863,0,2865,1654,0,"((input==24))", 1, 2, 0);
	trans[0][2865]	= settr(2864,0,18,1655,1655,"fsm_state = 32", 1, 2, 0);
	trans[0][2866]	= settr(2865,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2867]	= settr(2866,0,2868,1656,0,"((input==17))", 1, 2, 0);
	trans[0][2868]	= settr(2867,0,2869,1657,1657,"fsm_state = 9", 1, 2, 0);
	trans[0][2869]	= settr(2868,0,3410,1658,1658,"output = 12", 1, 2, 0);
	trans[0][2870]	= settr(2869,0,2871,1659,0,"((input==26))", 1, 2, 0);
	trans[0][2871]	= settr(2870,0,2872,1660,1660,"fsm_state = 9", 1, 2, 0);
	trans[0][2872]	= settr(2871,0,3410,1661,1661,"output = 7", 1, 2, 0);
	trans[0][2873]	= settr(2872,0,2874,1662,0,"((input==23))", 1, 2, 0);
	trans[0][2874]	= settr(2873,0,2875,1663,1663,"fsm_state = 9", 1, 2, 0);
	trans[0][2875]	= settr(2874,0,3410,1664,1664,"output = 7", 1, 2, 0);
	trans[0][2876]	= settr(2875,0,2877,1665,0,"((input==20))", 1, 2, 0);
	trans[0][2877]	= settr(2876,0,2878,1666,1666,"fsm_state = 9", 1, 2, 0);
	trans[0][2878]	= settr(2877,0,3410,1667,1667,"output = 12", 1, 2, 0);
	trans[0][2879]	= settr(2878,0,2880,1668,0,"((input==21))", 1, 2, 0);
	trans[0][2880]	= settr(2879,0,2881,1669,1669,"fsm_state = 9", 1, 2, 0);
	trans[0][2881]	= settr(2880,0,3410,1670,1670,"output = 7", 1, 2, 0);
	trans[0][2882]	= settr(2881,0,2883,1671,0,"((input==28))", 1, 2, 0);
	trans[0][2883]	= settr(2882,0,2884,1672,1672,"fsm_state = 9", 1, 2, 0);
	trans[0][2884]	= settr(2883,0,3410,1673,1673,"output = 7", 1, 2, 0);
	trans[0][2885]	= settr(2884,0,2886,1674,0,"((input==16))", 1, 2, 0);
	trans[0][2886]	= settr(2885,0,2887,1675,1675,"fsm_state = 3", 1, 2, 0);
	trans[0][2887]	= settr(2886,0,3410,1676,1676,"output = 10", 1, 2, 0);
	trans[0][2888]	= settr(2887,0,18,2,0,"else", 0, 2, 0);
	trans[0][2889]	= settr(2888,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2892]	= settr(2891,0,2934,1677,0,"((fsm_state==8))", 1, 2, 0);
	T = trans[0][2934] = settr(2933,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2933,0,2893,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2933,0,2896,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2933,0,2899,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2933,0,2902,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2933,0,2905,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2933,0,2908,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2933,0,2911,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2933,0,2914,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2933,0,2917,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2933,0,2920,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2933,0,2923,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2933,0,2926,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2933,0,2929,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2933,0,2932,0,0,"IF", 0, 2, 0);
	trans[0][2893]	= settr(2892,0,2894,1678,0,"((input==25))", 1, 2, 0);
	trans[0][2894]	= settr(2893,0,2895,1679,1679,"fsm_state = 48", 1, 2, 0);
	trans[0][2895]	= settr(2894,0,3410,1680,1680,"output = 1", 1, 2, 0);
	trans[0][2935]	= settr(2934,0,3410,1,0,".(goto)", 0, 2, 0);
	trans[0][2896]	= settr(2895,0,2897,1681,0,"((input==24))", 1, 2, 0);
	trans[0][2897]	= settr(2896,0,2898,1682,1682,"fsm_state = 48", 1, 2, 0);
	trans[0][2898]	= settr(2897,0,3410,1683,1683,"output = 1", 1, 2, 0);
	trans[0][2899]	= settr(2898,0,2900,1684,0,"((input==22))", 1, 2, 0);
	trans[0][2900]	= settr(2899,0,2901,1685,1685,"fsm_state = 48", 1, 2, 0);
	trans[0][2901]	= settr(2900,0,3410,1686,1686,"output = 1", 1, 2, 0);
	trans[0][2902]	= settr(2901,0,2903,1687,0,"((input==21))", 1, 2, 0);
	trans[0][2903]	= settr(2902,0,2904,1688,1688,"fsm_state = 32", 1, 2, 0);
	trans[0][2904]	= settr(2903,0,3410,1689,1689,"output = 2", 1, 2, 0);
	trans[0][2905]	= settr(2904,0,2906,1690,0,"((input==17))", 1, 2, 0);
	trans[0][2906]	= settr(2905,0,2907,1691,1691,"fsm_state = 8", 1, 2, 0);
	trans[0][2907]	= settr(2906,0,3410,1692,1692,"output = 12", 1, 2, 0);
	trans[0][2908]	= settr(2907,0,2909,1693,0,"((input==26))", 1, 2, 0);
	trans[0][2909]	= settr(2908,0,2910,1694,1694,"fsm_state = 8", 1, 2, 0);
	trans[0][2910]	= settr(2909,0,3410,1695,1695,"output = 15", 1, 2, 0);
	trans[0][2911]	= settr(2910,0,2912,1696,0,"((input==16))", 1, 2, 0);
	trans[0][2912]	= settr(2911,0,2913,1697,1697,"fsm_state = 8", 1, 2, 0);
	trans[0][2913]	= settr(2912,0,3410,1698,1698,"output = 6", 1, 2, 0);
	trans[0][2914]	= settr(2913,0,2915,1699,0,"((input==23))", 1, 2, 0);
	trans[0][2915]	= settr(2914,0,18,1700,1700,"fsm_state = 8", 1, 2, 0);
	trans[0][2916]	= settr(2915,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2917]	= settr(2916,0,2918,1701,0,"((input==20))", 1, 2, 0);
	trans[0][2918]	= settr(2917,0,2919,1702,1702,"fsm_state = 8", 1, 2, 0);
	trans[0][2919]	= settr(2918,0,3410,1703,1703,"output = 12", 1, 2, 0);
	trans[0][2920]	= settr(2919,0,2921,1704,0,"((input==28))", 1, 2, 0);
	trans[0][2921]	= settr(2920,0,18,1705,1705,"fsm_state = 8", 1, 2, 0);
	trans[0][2922]	= settr(2921,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2923]	= settr(2922,0,2924,1706,0,"((input==19))", 1, 2, 0);
	trans[0][2924]	= settr(2923,0,2925,1707,1707,"fsm_state = 8", 1, 2, 0);
	trans[0][2925]	= settr(2924,0,3410,1708,1708,"output = 8", 1, 2, 0);
	trans[0][2926]	= settr(2925,0,2927,1709,0,"((input==27))", 1, 2, 0);
	trans[0][2927]	= settr(2926,0,2928,1710,1710,"fsm_state = 6", 1, 2, 0);
	trans[0][2928]	= settr(2927,0,3410,1711,1711,"output = 4", 1, 2, 0);
	trans[0][2929]	= settr(2928,0,2930,1712,0,"((input==18))", 1, 2, 0);
	trans[0][2930]	= settr(2929,0,2931,1713,1713,"fsm_state = 2", 1, 2, 0);
	trans[0][2931]	= settr(2930,0,3410,1714,1714,"output = 4", 1, 2, 0);
	trans[0][2932]	= settr(2931,0,18,2,0,"else", 0, 2, 0);
	trans[0][2933]	= settr(2932,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2936]	= settr(2935,0,3019,1715,0,"((fsm_state==7))", 1, 2, 0);
	T = trans[0][3019] = settr(3018,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3018,0,2937,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3018,0,2940,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3018,0,2943,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3018,0,2946,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3018,0,2949,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3018,0,2952,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3018,0,2955,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3018,0,2958,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3018,0,2961,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3018,0,2964,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3018,0,2967,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3018,0,2970,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3018,0,3014,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3018,0,3017,0,0,"IF", 0, 2, 0);
	trans[0][2937]	= settr(2936,0,2938,1716,0,"((input==27))", 1, 2, 0);
	trans[0][2938]	= settr(2937,0,2939,1717,1717,"fsm_state = 48", 1, 2, 0);
	trans[0][2939]	= settr(2938,0,3410,1718,1718,"output = 1", 1, 2, 0);
	trans[0][3020]	= settr(3019,0,3410,1,0,".(goto)", 0, 2, 0);
	trans[0][2940]	= settr(2939,0,2941,1719,0,"((input==22))", 1, 2, 0);
	trans[0][2941]	= settr(2940,0,2942,1720,1720,"fsm_state = 48", 1, 2, 0);
	trans[0][2942]	= settr(2941,0,3410,1721,1721,"output = 1", 1, 2, 0);
	trans[0][2943]	= settr(2942,0,2944,1722,0,"((input==18))", 1, 2, 0);
	trans[0][2944]	= settr(2943,0,2945,1723,1723,"fsm_state = 48", 1, 2, 0);
	trans[0][2945]	= settr(2944,0,3410,1724,1724,"output = 1", 1, 2, 0);
	trans[0][2946]	= settr(2945,0,2947,1725,0,"((input==19))", 1, 2, 0);
	trans[0][2947]	= settr(2946,0,2948,1726,1726,"fsm_state = 48", 1, 2, 0);
	trans[0][2948]	= settr(2947,0,3410,1727,1727,"output = 1", 1, 2, 0);
	trans[0][2949]	= settr(2948,0,2950,1728,0,"((input==24))", 1, 2, 0);
	trans[0][2950]	= settr(2949,0,18,1729,1729,"fsm_state = 43", 1, 2, 0);
	trans[0][2951]	= settr(2950,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2952]	= settr(2951,0,2953,1730,0,"((input==21))", 1, 2, 0);
	trans[0][2953]	= settr(2952,0,18,1731,1731,"fsm_state = 20", 1, 2, 0);
	trans[0][2954]	= settr(2953,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2955]	= settr(2954,0,2956,1732,0,"((input==28))", 1, 2, 0);
	trans[0][2956]	= settr(2955,0,18,1733,1733,"fsm_state = 14", 1, 2, 0);
	trans[0][2957]	= settr(2956,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2958]	= settr(2957,0,2959,1734,0,"((input==26))", 1, 2, 0);
	trans[0][2959]	= settr(2958,0,18,1735,1735,"fsm_state = 10", 1, 2, 0);
	trans[0][2960]	= settr(2959,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2961]	= settr(2960,0,2962,1736,0,"((input==17))", 1, 2, 0);
	trans[0][2962]	= settr(2961,0,2963,1737,1737,"fsm_state = 7", 1, 2, 0);
	trans[0][2963]	= settr(2962,0,3410,1738,1738,"output = 12", 1, 2, 0);
	trans[0][2964]	= settr(2963,0,2965,1739,0,"((input==16))", 1, 2, 0);
	trans[0][2965]	= settr(2964,0,2966,1740,1740,"fsm_state = 7", 1, 2, 0);
	trans[0][2966]	= settr(2965,0,3410,1741,1741,"output = 6", 1, 2, 0);
	trans[0][2967]	= settr(2966,0,2968,1742,0,"((input==20))", 1, 2, 0);
	trans[0][2968]	= settr(2967,0,2969,1743,1743,"fsm_state = 7", 1, 2, 0);
	trans[0][2969]	= settr(2968,0,3410,1744,1744,"output = 12", 1, 2, 0);
	trans[0][2970]	= settr(2969,0,2971,1745,0,"((input==25))", 1, 2, 0);
	trans[0][2971]	= settr(2970,0,2972,1746,1746,"fsm_state = 3", 1, 2, 0);
	trans[0][2972]	= settr(2971,0,2973,1747,1747,"output = 9", 1, 2, 0);
	trans[0][2973]	= settr(2972,0,3011,1748,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][3011] = settr(3010,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(3010,0,3004,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][3004]	= settr(3003,32,3009,1749,1749,"D_STEP13", 1, 2, 0);
	T = trans[0][3009] = settr(3008,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3008,0,3005,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3008,0,3007,0,0,"IF", 0, 2, 0);
	trans[0][3005]	= settr(3004,0,1,1750,0,"((dealt==0))", 1, 2, 0);
	trans[0][3006]	= settr(3005,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][3010]	= settr(3009,0,3012,1,0,".(goto)", 0, 2, 0);
	trans[0][3007]	= settr(3006,0,3008,2,0,"else", 0, 2, 0);
	trans[0][3008]	= settr(3007,0,3012,1,0,"(1)", 0, 2, 0);
	trans[0][3012]	= settr(3011,0,3013,1751,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][3013]	= settr(3012,0,3410,1752,1752,"output = 5", 1, 2, 0);
	trans[0][3014]	= settr(3013,0,3015,1753,0,"((input==23))", 1, 2, 0);
	trans[0][3015]	= settr(3014,0,18,1754,1754,"fsm_state = 2", 1, 2, 0);
	trans[0][3016]	= settr(3015,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3017]	= settr(3016,0,18,2,0,"else", 0, 2, 0);
	trans[0][3018]	= settr(3017,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3021]	= settr(3020,0,3063,1755,0,"((fsm_state==6))", 1, 2, 0);
	T = trans[0][3063] = settr(3062,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3062,0,3022,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3062,0,3025,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3062,0,3028,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3062,0,3031,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3062,0,3034,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3062,0,3037,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3062,0,3040,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3062,0,3043,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3062,0,3046,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3062,0,3049,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3062,0,3052,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3062,0,3055,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3062,0,3058,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3062,0,3061,0,0,"IF", 0, 2, 0);
	trans[0][3022]	= settr(3021,0,3023,1756,0,"((input==27))", 1, 2, 0);
	trans[0][3023]	= settr(3022,0,3024,1757,1757,"fsm_state = 48", 1, 2, 0);
	trans[0][3024]	= settr(3023,0,3410,1758,1758,"output = 1", 1, 2, 0);
	trans[0][3064]	= settr(3063,0,3410,1,0,".(goto)", 0, 2, 0);
	trans[0][3025]	= settr(3024,0,3026,1759,0,"((input==22))", 1, 2, 0);
	trans[0][3026]	= settr(3025,0,3027,1760,1760,"fsm_state = 48", 1, 2, 0);
	trans[0][3027]	= settr(3026,0,3410,1761,1761,"output = 1", 1, 2, 0);
	trans[0][3028]	= settr(3027,0,3029,1762,0,"((input==18))", 1, 2, 0);
	trans[0][3029]	= settr(3028,0,3030,1763,1763,"fsm_state = 48", 1, 2, 0);
	trans[0][3030]	= settr(3029,0,3410,1764,1764,"output = 1", 1, 2, 0);
	trans[0][3031]	= settr(3030,0,3032,1765,0,"((input==19))", 1, 2, 0);
	trans[0][3032]	= settr(3031,0,3033,1766,1766,"fsm_state = 48", 1, 2, 0);
	trans[0][3033]	= settr(3032,0,3410,1767,1767,"output = 1", 1, 2, 0);
	trans[0][3034]	= settr(3033,0,3035,1768,0,"((input==24))", 1, 2, 0);
	trans[0][3035]	= settr(3034,0,18,1769,1769,"fsm_state = 43", 1, 2, 0);
	trans[0][3036]	= settr(3035,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3037]	= settr(3036,0,3038,1770,0,"((input==21))", 1, 2, 0);
	trans[0][3038]	= settr(3037,0,18,1771,1771,"fsm_state = 25", 1, 2, 0);
	trans[0][3039]	= settr(3038,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3040]	= settr(3039,0,3041,1772,0,"((input==28))", 1, 2, 0);
	trans[0][3041]	= settr(3040,0,18,1773,1773,"fsm_state = 17", 1, 2, 0);
	trans[0][3042]	= settr(3041,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3043]	= settr(3042,0,3044,1774,0,"((input==26))", 1, 2, 0);
	trans[0][3044]	= settr(3043,0,18,1775,1775,"fsm_state = 11", 1, 2, 0);
	trans[0][3045]	= settr(3044,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3046]	= settr(3045,0,3047,1776,0,"((input==25))", 1, 2, 0);
	trans[0][3047]	= settr(3046,0,18,1777,1777,"fsm_state = 7", 1, 2, 0);
	trans[0][3048]	= settr(3047,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3049]	= settr(3048,0,3050,1778,0,"((input==17))", 1, 2, 0);
	trans[0][3050]	= settr(3049,0,3051,1779,1779,"fsm_state = 6", 1, 2, 0);
	trans[0][3051]	= settr(3050,0,3410,1780,1780,"output = 12", 1, 2, 0);
	trans[0][3052]	= settr(3051,0,3053,1781,0,"((input==16))", 1, 2, 0);
	trans[0][3053]	= settr(3052,0,3054,1782,1782,"fsm_state = 6", 1, 2, 0);
	trans[0][3054]	= settr(3053,0,3410,1783,1783,"output = 6", 1, 2, 0);
	trans[0][3055]	= settr(3054,0,3056,1784,0,"((input==23))", 1, 2, 0);
	trans[0][3056]	= settr(3055,0,18,1785,1785,"fsm_state = 6", 1, 2, 0);
	trans[0][3057]	= settr(3056,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3058]	= settr(3057,0,3059,1786,0,"((input==20))", 1, 2, 0);
	trans[0][3059]	= settr(3058,0,3060,1787,1787,"fsm_state = 6", 1, 2, 0);
	trans[0][3060]	= settr(3059,0,3410,1788,1788,"output = 12", 1, 2, 0);
	trans[0][3061]	= settr(3060,0,18,2,0,"else", 0, 2, 0);
	trans[0][3062]	= settr(3061,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3065]	= settr(3064,0,3107,1789,0,"((fsm_state==5))", 1, 2, 0);
	T = trans[0][3107] = settr(3106,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3106,0,3066,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3106,0,3069,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3106,0,3072,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3106,0,3075,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3106,0,3078,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3106,0,3081,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3106,0,3084,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3106,0,3087,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3106,0,3090,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3106,0,3093,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3106,0,3096,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3106,0,3099,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3106,0,3102,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3106,0,3105,0,0,"IF", 0, 2, 0);
	trans[0][3066]	= settr(3065,0,3067,1790,0,"((input==25))", 1, 2, 0);
	trans[0][3067]	= settr(3066,0,3068,1791,1791,"fsm_state = 48", 1, 2, 0);
	trans[0][3068]	= settr(3067,0,3410,1792,1792,"output = 1", 1, 2, 0);
	trans[0][3108]	= settr(3107,0,3410,1,0,".(goto)", 0, 2, 0);
	trans[0][3069]	= settr(3068,0,3070,1793,0,"((input==27))", 1, 2, 0);
	trans[0][3070]	= settr(3069,0,3071,1794,1794,"fsm_state = 48", 1, 2, 0);
	trans[0][3071]	= settr(3070,0,3410,1795,1795,"output = 1", 1, 2, 0);
	trans[0][3072]	= settr(3071,0,3073,1796,0,"((input==22))", 1, 2, 0);
	trans[0][3073]	= settr(3072,0,3074,1797,1797,"fsm_state = 48", 1, 2, 0);
	trans[0][3074]	= settr(3073,0,3410,1798,1798,"output = 1", 1, 2, 0);
	trans[0][3075]	= settr(3074,0,3076,1799,0,"((input==18))", 1, 2, 0);
	trans[0][3076]	= settr(3075,0,3077,1800,1800,"fsm_state = 48", 1, 2, 0);
	trans[0][3077]	= settr(3076,0,3410,1801,1801,"output = 1", 1, 2, 0);
	trans[0][3078]	= settr(3077,0,3079,1802,0,"((input==19))", 1, 2, 0);
	trans[0][3079]	= settr(3078,0,3080,1803,1803,"fsm_state = 48", 1, 2, 0);
	trans[0][3080]	= settr(3079,0,3410,1804,1804,"output = 1", 1, 2, 0);
	trans[0][3081]	= settr(3080,0,3082,1805,0,"((input==24))", 1, 2, 0);
	trans[0][3082]	= settr(3081,0,18,1806,1806,"fsm_state = 28", 1, 2, 0);
	trans[0][3083]	= settr(3082,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3084]	= settr(3083,0,3085,1807,0,"((input==21))", 1, 2, 0);
	trans[0][3085]	= settr(3084,0,18,1808,1808,"fsm_state = 9", 1, 2, 0);
	trans[0][3086]	= settr(3085,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3087]	= settr(3086,0,3088,1809,0,"((input==17))", 1, 2, 0);
	trans[0][3088]	= settr(3087,0,3089,1810,1810,"fsm_state = 5", 1, 2, 0);
	trans[0][3089]	= settr(3088,0,3410,1811,1811,"output = 12", 1, 2, 0);
	trans[0][3090]	= settr(3089,0,3091,1812,0,"((input==26))", 1, 2, 0);
	trans[0][3091]	= settr(3090,0,18,1813,1813,"fsm_state = 5", 1, 2, 0);
	trans[0][3092]	= settr(3091,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3093]	= settr(3092,0,3094,1814,0,"((input==16))", 1, 2, 0);
	trans[0][3094]	= settr(3093,0,3095,1815,1815,"fsm_state = 5", 1, 2, 0);
	trans[0][3095]	= settr(3094,0,3410,1816,1816,"output = 6", 1, 2, 0);
	trans[0][3096]	= settr(3095,0,3097,1817,0,"((input==23))", 1, 2, 0);
	trans[0][3097]	= settr(3096,0,18,1818,1818,"fsm_state = 5", 1, 2, 0);
	trans[0][3098]	= settr(3097,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3099]	= settr(3098,0,3100,1819,0,"((input==20))", 1, 2, 0);
	trans[0][3100]	= settr(3099,0,3101,1820,1820,"fsm_state = 5", 1, 2, 0);
	trans[0][3101]	= settr(3100,0,3410,1821,1821,"output = 12", 1, 2, 0);
	trans[0][3102]	= settr(3101,0,3103,1822,0,"((input==28))", 1, 2, 0);
	trans[0][3103]	= settr(3102,0,18,1823,1823,"fsm_state = 5", 1, 2, 0);
	trans[0][3104]	= settr(3103,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3105]	= settr(3104,0,18,2,0,"else", 0, 2, 0);
	trans[0][3106]	= settr(3105,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3109]	= settr(3108,0,3233,1824,0,"((fsm_state==4))", 1, 2, 0);
	T = trans[0][3233] = settr(3232,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3232,0,3110,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3232,0,3113,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3232,0,3116,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3232,0,3119,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3232,0,3122,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3232,0,3125,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3232,0,3128,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3232,0,3131,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3232,0,3134,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3232,0,3137,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3232,0,3140,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3232,0,3143,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3232,0,3146,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3232,0,3231,0,0,"IF", 0, 2, 0);
	trans[0][3110]	= settr(3109,0,3111,1825,0,"((input==27))", 1, 2, 0);
	trans[0][3111]	= settr(3110,0,3112,1826,1826,"fsm_state = 48", 1, 2, 0);
	trans[0][3112]	= settr(3111,0,3410,1827,1827,"output = 1", 1, 2, 0);
	trans[0][3234]	= settr(3233,0,3410,1,0,".(goto)", 0, 2, 0);
	trans[0][3113]	= settr(3112,0,3114,1828,0,"((input==22))", 1, 2, 0);
	trans[0][3114]	= settr(3113,0,3115,1829,1829,"fsm_state = 48", 1, 2, 0);
	trans[0][3115]	= settr(3114,0,3410,1830,1830,"output = 1", 1, 2, 0);
	trans[0][3116]	= settr(3115,0,3117,1831,0,"((input==18))", 1, 2, 0);
	trans[0][3117]	= settr(3116,0,3118,1832,1832,"fsm_state = 48", 1, 2, 0);
	trans[0][3118]	= settr(3117,0,3410,1833,1833,"output = 1", 1, 2, 0);
	trans[0][3119]	= settr(3118,0,3120,1834,0,"((input==19))", 1, 2, 0);
	trans[0][3120]	= settr(3119,0,3121,1835,1835,"fsm_state = 48", 1, 2, 0);
	trans[0][3121]	= settr(3120,0,3410,1836,1836,"output = 1", 1, 2, 0);
	trans[0][3122]	= settr(3121,0,3123,1837,0,"((input==24))", 1, 2, 0);
	trans[0][3123]	= settr(3122,0,18,1838,1838,"fsm_state = 43", 1, 2, 0);
	trans[0][3124]	= settr(3123,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3125]	= settr(3124,0,3126,1839,0,"((input==21))", 1, 2, 0);
	trans[0][3126]	= settr(3125,0,18,1840,1840,"fsm_state = 20", 1, 2, 0);
	trans[0][3127]	= settr(3126,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3128]	= settr(3127,0,3129,1841,0,"((input==17))", 1, 2, 0);
	trans[0][3129]	= settr(3128,0,3130,1842,1842,"fsm_state = 4", 1, 2, 0);
	trans[0][3130]	= settr(3129,0,3410,1843,1843,"output = 12", 1, 2, 0);
	trans[0][3131]	= settr(3130,0,3132,1844,0,"((input==26))", 1, 2, 0);
	trans[0][3132]	= settr(3131,0,18,1845,1845,"fsm_state = 4", 1, 2, 0);
	trans[0][3133]	= settr(3132,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3134]	= settr(3133,0,3135,1846,0,"((input==16))", 1, 2, 0);
	trans[0][3135]	= settr(3134,0,3136,1847,1847,"fsm_state = 4", 1, 2, 0);
	trans[0][3136]	= settr(3135,0,3410,1848,1848,"output = 6", 1, 2, 0);
	trans[0][3137]	= settr(3136,0,3138,1849,0,"((input==23))", 1, 2, 0);
	trans[0][3138]	= settr(3137,0,18,1850,1850,"fsm_state = 4", 1, 2, 0);
	trans[0][3139]	= settr(3138,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3140]	= settr(3139,0,3141,1851,0,"((input==20))", 1, 2, 0);
	trans[0][3141]	= settr(3140,0,3142,1852,1852,"fsm_state = 4", 1, 2, 0);
	trans[0][3142]	= settr(3141,0,3410,1853,1853,"output = 12", 1, 2, 0);
	trans[0][3143]	= settr(3142,0,3144,1854,0,"((input==28))", 1, 2, 0);
	trans[0][3144]	= settr(3143,0,18,1855,1855,"fsm_state = 4", 1, 2, 0);
	trans[0][3145]	= settr(3144,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3146]	= settr(3145,0,3147,1856,0,"((input==25))", 1, 2, 0);
	trans[0][3147]	= settr(3146,0,3148,1857,1857,"fsm_state = 1", 1, 2, 0);
	trans[0][3148]	= settr(3147,0,3149,1858,1858,"output = 9", 1, 2, 0);
	trans[0][3149]	= settr(3148,0,3187,1859,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][3187] = settr(3186,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(3186,0,3180,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][3180]	= settr(3179,32,3185,1860,1860,"D_STEP13", 1, 2, 0);
	T = trans[0][3185] = settr(3184,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3184,0,3181,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3184,0,3183,0,0,"IF", 0, 2, 0);
	trans[0][3181]	= settr(3180,0,1,1861,0,"((dealt==0))", 1, 2, 0);
	trans[0][3182]	= settr(3181,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][3186]	= settr(3185,0,3188,1,0,".(goto)", 0, 2, 0);
	trans[0][3183]	= settr(3182,0,3184,2,0,"else", 0, 2, 0);
	trans[0][3184]	= settr(3183,0,3188,1,0,"(1)", 0, 2, 0);
	trans[0][3188]	= settr(3187,0,3189,1862,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][3189]	= settr(3188,0,3190,1863,1863,"output = 5", 1, 2, 0);
	trans[0][3190]	= settr(3189,0,3228,1864,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][3228] = settr(3227,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(3227,0,3221,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][3221]	= settr(3220,32,3226,1865,1865,"D_STEP13", 1, 2, 0);
	T = trans[0][3226] = settr(3225,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3225,0,3222,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3225,0,3224,0,0,"IF", 0, 2, 0);
	trans[0][3222]	= settr(3221,0,1,1866,0,"((dealt==0))", 1, 2, 0);
	trans[0][3223]	= settr(3222,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][3227]	= settr(3226,0,3229,1,0,".(goto)", 0, 2, 0);
	trans[0][3224]	= settr(3223,0,3225,2,0,"else", 0, 2, 0);
	trans[0][3225]	= settr(3224,0,3229,1,0,"(1)", 0, 2, 0);
	trans[0][3229]	= settr(3228,0,3230,1867,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][3230]	= settr(3229,0,3410,1868,1868,"output = 11", 1, 2, 0);
	trans[0][3231]	= settr(3230,0,18,2,0,"else", 0, 2, 0);
	trans[0][3232]	= settr(3231,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3235]	= settr(3234,0,3277,1869,0,"((fsm_state==3))", 1, 2, 0);
	T = trans[0][3277] = settr(3276,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3276,0,3236,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3276,0,3239,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3276,0,3242,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3276,0,3245,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3276,0,3248,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3276,0,3251,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3276,0,3254,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3276,0,3257,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3276,0,3260,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3276,0,3263,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3276,0,3266,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3276,0,3269,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3276,0,3272,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3276,0,3275,0,0,"IF", 0, 2, 0);
	trans[0][3236]	= settr(3235,0,3237,1870,0,"((input==25))", 1, 2, 0);
	trans[0][3237]	= settr(3236,0,3238,1871,1871,"fsm_state = 48", 1, 2, 0);
	trans[0][3238]	= settr(3237,0,3410,1872,1872,"output = 1", 1, 2, 0);
	trans[0][3278]	= settr(3277,0,3410,1,0,".(goto)", 0, 2, 0);
	trans[0][3239]	= settr(3238,0,3240,1873,0,"((input==27))", 1, 2, 0);
	trans[0][3240]	= settr(3239,0,3241,1874,1874,"fsm_state = 48", 1, 2, 0);
	trans[0][3241]	= settr(3240,0,3410,1875,1875,"output = 1", 1, 2, 0);
	trans[0][3242]	= settr(3241,0,3243,1876,0,"((input==22))", 1, 2, 0);
	trans[0][3243]	= settr(3242,0,3244,1877,1877,"fsm_state = 48", 1, 2, 0);
	trans[0][3244]	= settr(3243,0,3410,1878,1878,"output = 1", 1, 2, 0);
	trans[0][3245]	= settr(3244,0,3246,1879,0,"((input==18))", 1, 2, 0);
	trans[0][3246]	= settr(3245,0,3247,1880,1880,"fsm_state = 48", 1, 2, 0);
	trans[0][3247]	= settr(3246,0,3410,1881,1881,"output = 1", 1, 2, 0);
	trans[0][3248]	= settr(3247,0,3249,1882,0,"((input==19))", 1, 2, 0);
	trans[0][3249]	= settr(3248,0,3250,1883,1883,"fsm_state = 48", 1, 2, 0);
	trans[0][3250]	= settr(3249,0,3410,1884,1884,"output = 1", 1, 2, 0);
	trans[0][3251]	= settr(3250,0,3252,1885,0,"((input==24))", 1, 2, 0);
	trans[0][3252]	= settr(3251,0,18,1886,1886,"fsm_state = 23", 1, 2, 0);
	trans[0][3253]	= settr(3252,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3254]	= settr(3253,0,3255,1887,0,"((input==21))", 1, 2, 0);
	trans[0][3255]	= settr(3254,0,3256,1888,1888,"fsm_state = 9", 1, 2, 0);
	trans[0][3256]	= settr(3255,0,3410,1889,1889,"output = 2", 1, 2, 0);
	trans[0][3257]	= settr(3256,0,3258,1890,0,"((input==28))", 1, 2, 0);
	trans[0][3258]	= settr(3257,0,3259,1891,1891,"fsm_state = 5", 1, 2, 0);
	trans[0][3259]	= settr(3258,0,3410,1892,1892,"output = 2", 1, 2, 0);
	trans[0][3260]	= settr(3259,0,3261,1893,0,"((input==17))", 1, 2, 0);
	trans[0][3261]	= settr(3260,0,3262,1894,1894,"fsm_state = 3", 1, 2, 0);
	trans[0][3262]	= settr(3261,0,3410,1895,1895,"output = 12", 1, 2, 0);
	trans[0][3263]	= settr(3262,0,3264,1896,0,"((input==26))", 1, 2, 0);
	trans[0][3264]	= settr(3263,0,3265,1897,1897,"fsm_state = 3", 1, 2, 0);
	trans[0][3265]	= settr(3264,0,3410,1898,1898,"output = 15", 1, 2, 0);
	trans[0][3266]	= settr(3265,0,3267,1899,0,"((input==16))", 1, 2, 0);
	trans[0][3267]	= settr(3266,0,3268,1900,1900,"fsm_state = 3", 1, 2, 0);
	trans[0][3268]	= settr(3267,0,3410,1901,1901,"output = 6", 1, 2, 0);
	trans[0][3269]	= settr(3268,0,3270,1902,0,"((input==20))", 1, 2, 0);
	trans[0][3270]	= settr(3269,0,3271,1903,1903,"fsm_state = 3", 1, 2, 0);
	trans[0][3271]	= settr(3270,0,3410,1904,1904,"output = 12", 1, 2, 0);
	trans[0][3272]	= settr(3271,0,3273,1905,0,"((input==23))", 1, 2, 0);
	trans[0][3273]	= settr(3272,0,18,1906,1906,"fsm_state = 1", 1, 2, 0);
	trans[0][3274]	= settr(3273,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3275]	= settr(3274,0,18,2,0,"else", 0, 2, 0);
	trans[0][3276]	= settr(3275,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3279]	= settr(3278,0,3362,1907,0,"((fsm_state==2))", 1, 2, 0);
	T = trans[0][3362] = settr(3361,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3361,0,3280,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3361,0,3283,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3361,0,3286,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3361,0,3289,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3361,0,3292,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3361,0,3295,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3361,0,3298,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3361,0,3301,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3361,0,3304,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3361,0,3307,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3361,0,3310,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3361,0,3313,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3361,0,3316,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3361,0,3360,0,0,"IF", 0, 2, 0);
	trans[0][3280]	= settr(3279,0,3281,1908,0,"((input==27))", 1, 2, 0);
	trans[0][3281]	= settr(3280,0,3282,1909,1909,"fsm_state = 48", 1, 2, 0);
	trans[0][3282]	= settr(3281,0,3410,1910,1910,"output = 1", 1, 2, 0);
	trans[0][3363]	= settr(3362,0,3410,1,0,".(goto)", 0, 2, 0);
	trans[0][3283]	= settr(3282,0,3284,1911,0,"((input==22))", 1, 2, 0);
	trans[0][3284]	= settr(3283,0,3285,1912,1912,"fsm_state = 48", 1, 2, 0);
	trans[0][3285]	= settr(3284,0,3410,1913,1913,"output = 1", 1, 2, 0);
	trans[0][3286]	= settr(3285,0,3287,1914,0,"((input==18))", 1, 2, 0);
	trans[0][3287]	= settr(3286,0,3288,1915,1915,"fsm_state = 48", 1, 2, 0);
	trans[0][3288]	= settr(3287,0,3410,1916,1916,"output = 1", 1, 2, 0);
	trans[0][3289]	= settr(3288,0,3290,1917,0,"((input==19))", 1, 2, 0);
	trans[0][3290]	= settr(3289,0,3291,1918,1918,"fsm_state = 48", 1, 2, 0);
	trans[0][3291]	= settr(3290,0,3410,1919,1919,"output = 1", 1, 2, 0);
	trans[0][3292]	= settr(3291,0,3293,1920,0,"((input==24))", 1, 2, 0);
	trans[0][3293]	= settr(3292,0,18,1921,1921,"fsm_state = 43", 1, 2, 0);
	trans[0][3294]	= settr(3293,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3295]	= settr(3294,0,3296,1922,0,"((input==21))", 1, 2, 0);
	trans[0][3296]	= settr(3295,0,18,1923,1923,"fsm_state = 20", 1, 2, 0);
	trans[0][3297]	= settr(3296,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3298]	= settr(3297,0,3299,1924,0,"((input==26))", 1, 2, 0);
	trans[0][3299]	= settr(3298,0,18,1925,1925,"fsm_state = 4", 1, 2, 0);
	trans[0][3300]	= settr(3299,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3301]	= settr(3300,0,3302,1926,0,"((input==17))", 1, 2, 0);
	trans[0][3302]	= settr(3301,0,3303,1927,1927,"fsm_state = 2", 1, 2, 0);
	trans[0][3303]	= settr(3302,0,3410,1928,1928,"output = 12", 1, 2, 0);
	trans[0][3304]	= settr(3303,0,3305,1929,0,"((input==16))", 1, 2, 0);
	trans[0][3305]	= settr(3304,0,3306,1930,1930,"fsm_state = 2", 1, 2, 0);
	trans[0][3306]	= settr(3305,0,3410,1931,1931,"output = 6", 1, 2, 0);
	trans[0][3307]	= settr(3306,0,3308,1932,0,"((input==23))", 1, 2, 0);
	trans[0][3308]	= settr(3307,0,18,1933,1933,"fsm_state = 2", 1, 2, 0);
	trans[0][3309]	= settr(3308,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3310]	= settr(3309,0,3311,1934,0,"((input==20))", 1, 2, 0);
	trans[0][3311]	= settr(3310,0,3312,1935,1935,"fsm_state = 2", 1, 2, 0);
	trans[0][3312]	= settr(3311,0,3410,1936,1936,"output = 12", 1, 2, 0);
	trans[0][3313]	= settr(3312,0,3314,1937,0,"((input==28))", 1, 2, 0);
	trans[0][3314]	= settr(3313,0,18,1938,1938,"fsm_state = 2", 1, 2, 0);
	trans[0][3315]	= settr(3314,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3316]	= settr(3315,0,3317,1939,0,"((input==25))", 1, 2, 0);
	trans[0][3317]	= settr(3316,0,3318,1940,1940,"fsm_state = 1", 1, 2, 0);
	trans[0][3318]	= settr(3317,0,3319,1941,1941,"output = 9", 1, 2, 0);
	trans[0][3319]	= settr(3318,0,3357,1942,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][3357] = settr(3356,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(3356,0,3350,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][3350]	= settr(3349,32,3355,1943,1943,"D_STEP13", 1, 2, 0);
	T = trans[0][3355] = settr(3354,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3354,0,3351,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3354,0,3353,0,0,"IF", 0, 2, 0);
	trans[0][3351]	= settr(3350,0,1,1944,0,"((dealt==0))", 1, 2, 0);
	trans[0][3352]	= settr(3351,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][3356]	= settr(3355,0,3358,1,0,".(goto)", 0, 2, 0);
	trans[0][3353]	= settr(3352,0,3354,2,0,"else", 0, 2, 0);
	trans[0][3354]	= settr(3353,0,3358,1,0,"(1)", 0, 2, 0);
	trans[0][3358]	= settr(3357,0,3359,1945,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][3359]	= settr(3358,0,3410,1946,1946,"output = 5", 1, 2, 0);
	trans[0][3360]	= settr(3359,0,18,2,0,"else", 0, 2, 0);
	trans[0][3361]	= settr(3360,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3364]	= settr(3363,0,3406,1947,0,"((fsm_state==1))", 1, 2, 0);
	T = trans[0][3406] = settr(3405,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3405,0,3365,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3405,0,3368,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3405,0,3371,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3405,0,3374,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3405,0,3377,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3405,0,3380,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3405,0,3383,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3405,0,3386,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3405,0,3389,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3405,0,3392,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3405,0,3395,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3405,0,3398,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3405,0,3401,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3405,0,3404,0,0,"IF", 0, 2, 0);
	trans[0][3365]	= settr(3364,0,3366,1948,0,"((input==25))", 1, 2, 0);
	trans[0][3366]	= settr(3365,0,3367,1949,1949,"fsm_state = 48", 1, 2, 0);
	trans[0][3367]	= settr(3366,0,3410,1950,1950,"output = 1", 1, 2, 0);
	trans[0][3407]	= settr(3406,0,3410,1,0,".(goto)", 0, 2, 0);
	trans[0][3368]	= settr(3367,0,3369,1951,0,"((input==27))", 1, 2, 0);
	trans[0][3369]	= settr(3368,0,3370,1952,1952,"fsm_state = 48", 1, 2, 0);
	trans[0][3370]	= settr(3369,0,3410,1953,1953,"output = 1", 1, 2, 0);
	trans[0][3371]	= settr(3370,0,3372,1954,0,"((input==22))", 1, 2, 0);
	trans[0][3372]	= settr(3371,0,3373,1955,1955,"fsm_state = 48", 1, 2, 0);
	trans[0][3373]	= settr(3372,0,3410,1956,1956,"output = 1", 1, 2, 0);
	trans[0][3374]	= settr(3373,0,3375,1957,0,"((input==18))", 1, 2, 0);
	trans[0][3375]	= settr(3374,0,3376,1958,1958,"fsm_state = 48", 1, 2, 0);
	trans[0][3376]	= settr(3375,0,3410,1959,1959,"output = 1", 1, 2, 0);
	trans[0][3377]	= settr(3376,0,3378,1960,0,"((input==19))", 1, 2, 0);
	trans[0][3378]	= settr(3377,0,3379,1961,1961,"fsm_state = 48", 1, 2, 0);
	trans[0][3379]	= settr(3378,0,3410,1962,1962,"output = 1", 1, 2, 0);
	trans[0][3380]	= settr(3379,0,3381,1963,0,"((input==21))", 1, 2, 0);
	trans[0][3381]	= settr(3380,0,3382,1964,1964,"fsm_state = 9", 1, 2, 0);
	trans[0][3382]	= settr(3381,0,3410,1965,1965,"output = 2", 1, 2, 0);
	trans[0][3383]	= settr(3382,0,3384,1966,0,"((input==24))", 1, 2, 0);
	trans[0][3384]	= settr(3383,0,18,1967,1967,"fsm_state = 8", 1, 2, 0);
	trans[0][3385]	= settr(3384,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3386]	= settr(3385,0,3387,1968,0,"((input==17))", 1, 2, 0);
	trans[0][3387]	= settr(3386,0,3388,1969,1969,"fsm_state = 1", 1, 2, 0);
	trans[0][3388]	= settr(3387,0,3410,1970,1970,"output = 12", 1, 2, 0);
	trans[0][3389]	= settr(3388,0,3390,1971,0,"((input==26))", 1, 2, 0);
	trans[0][3390]	= settr(3389,0,3391,1972,1972,"fsm_state = 1", 1, 2, 0);
	trans[0][3391]	= settr(3390,0,3410,1973,1973,"output = 15", 1, 2, 0);
	trans[0][3392]	= settr(3391,0,3393,1974,0,"((input==16))", 1, 2, 0);
	trans[0][3393]	= settr(3392,0,3394,1975,1975,"fsm_state = 1", 1, 2, 0);
	trans[0][3394]	= settr(3393,0,3410,1976,1976,"output = 6", 1, 2, 0);
	trans[0][3395]	= settr(3394,0,3396,1977,0,"((input==23))", 1, 2, 0);
	trans[0][3396]	= settr(3395,0,18,1978,1978,"fsm_state = 1", 1, 2, 0);
	trans[0][3397]	= settr(3396,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3398]	= settr(3397,0,3399,1979,0,"((input==20))", 1, 2, 0);
	trans[0][3399]	= settr(3398,0,3400,1980,1980,"fsm_state = 1", 1, 2, 0);
	trans[0][3400]	= settr(3399,0,3410,1981,1981,"output = 12", 1, 2, 0);
	trans[0][3401]	= settr(3400,0,3402,1982,0,"((input==28))", 1, 2, 0);
	trans[0][3402]	= settr(3401,0,18,1983,1983,"fsm_state = 1", 1, 2, 0);
	trans[0][3403]	= settr(3402,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3404]	= settr(3403,0,18,2,0,"else", 0, 2, 0);
	trans[0][3405]	= settr(3404,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3410]	= settr(3409,0,3411,1984,0,"printf('FSM State: %e\\n',fsm_state)", 1, 2, 0);
	trans[0][3411]	= settr(3410,0,3449,1985,0,"printf('Output: %e\\n\\n',output)", 1, 2, 0);
	T = trans[ 0][3449] = settr(3448,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(3448,0,3442,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][3442]	= settr(3441,32,3447,1986,1986,"D_STEP13", 1, 2, 0);
	T = trans[0][3447] = settr(3446,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3446,0,3443,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3446,0,3445,0,0,"IF", 0, 2, 0);
	trans[0][3443]	= settr(3442,0,1,1987,0,"((dealt==0))", 1, 2, 0);
	trans[0][3444]	= settr(3443,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][3448]	= settr(3447,0,3450,1,0,".(goto)", 0, 2, 0);
	trans[0][3445]	= settr(3444,0,3446,2,0,"else", 0, 2, 0);
	trans[0][3446]	= settr(3445,0,3450,1,0,"(1)", 0, 2, 0);
	trans[0][3450]	= settr(3449,0,3451,1988,0,"printf('DFA State: %e\\n\\n',dfa_state)", 1, 2, 0);
	trans[0][3453]	= settr(3452,0,3454,1,0,"break", 0, 2, 0);
	trans[0][3454]	= settr(3453,0,0,1989,1989,"-end-", 0, 3500, 0);
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
