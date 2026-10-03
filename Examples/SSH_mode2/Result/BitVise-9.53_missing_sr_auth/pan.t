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

	trans[1][7]	= settr(3040,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[1][6] = settr(3039,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(3039,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(3039,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 1][3] = settr(3036,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(3036,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[1][1]	= settr(3034,0,6,3,3,"(!((dfa_state!=1)))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached1[2] = 1;
	trans[1][2]	= settr(0,0,0,0,0,"assert(!(!((dfa_state!=1))))",0,0,0);
	trans[1][4]	= settr(3037,0,6,1,0,"(1)", 0, 2, 0);
	trans[1][5]	= settr(3038,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[1][8]	= settr(3041,0,9,1,0,"break", 0, 2, 0);
	trans[1][9]	= settr(3042,0,10,1,0,"(1)", 0, 2, 0);
	trans[1][10]	= settr(3043,0,0,4,4,"-end-", 0, 3500, 0);

	/* proctype 0: :init: */

	trans[0] = (Trans **) emalloc(3035*sizeof(Trans *));

	trans[0][1]	= settr(0,0,2,5,5,"fsm_state = 50", 1, 2, 0);
	trans[0][2]	= settr(1,0,3,6,6,"dfa_state = 2", 1, 2, 0);
	trans[0][3]	= settr(2,0,3031,7,7,"dealt = 0", 1, 2, 0);
	trans[0][3032]	= settr(3031,0,3031,1,0,".(goto)", 0, 2, 0);
	T = trans[0][3031] = settr(3030,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(3030,0,4,0,0,"DO", 0, 2, 0);
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
	trans[0][20]	= settr(19,0,44,21,0,"printf('Input: %e\\n',input)", 1, 2, 0);
	T = trans[ 0][44] = settr(43,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(43,0,37,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][37]	= settr(36,32,42,22,22,"D_STEP13", 1, 2, 0);
	T = trans[0][42] = settr(41,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(41,0,38,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(41,0,40,0,0,"IF", 0, 2, 0);
	trans[0][38]	= settr(37,0,1,23,0,"((dealt==0))", 1, 2, 0);
	trans[0][39]	= settr(38,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][43]	= settr(42,0,45,1,0,".(goto)", 0, 2, 0);
	trans[0][40]	= settr(39,0,41,2,0,"else", 0, 2, 0);
	trans[0][41]	= settr(40,0,45,1,0,"(1)", 0, 2, 0);
	trans[0][45]	= settr(44,0,3002,24,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	T = trans[0][3002] = settr(3001,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3001,0,46,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3001,0,279,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3001,0,323,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3001,0,367,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3001,0,411,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3001,0,482,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3001,0,526,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3001,0,570,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3001,0,614,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3001,0,658,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3001,0,702,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3001,0,746,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3001,0,817,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3001,0,861,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3001,0,905,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3001,0,949,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3001,0,1020,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3001,0,1064,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3001,0,1108,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3001,0,1152,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3001,0,1223,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3001,0,1267,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3001,0,1338,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3001,0,1382,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3001,0,1426,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3001,0,1470,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3001,0,1514,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3001,0,1585,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3001,0,1629,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3001,0,1673,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3001,0,1771,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3001,0,1869,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3001,0,1913,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3001,0,1957,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3001,0,2001,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3001,0,2099,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3001,0,2143,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3001,0,2241,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3001,0,2312,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3001,0,2356,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3001,0,2400,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3001,0,2498,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3001,0,2542,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3001,0,2586,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3001,0,2657,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3001,0,2701,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3001,0,2745,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3001,0,2843,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3001,0,2887,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3001,0,2958,0,0,"IF", 0, 2, 0);
	trans[0][46]	= settr(45,0,277,25,0,"((fsm_state==50))", 1, 2, 0);
	T = trans[0][277] = settr(276,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(276,0,47,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(276,0,50,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(276,0,53,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(276,0,56,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(276,0,59,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(276,0,62,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(276,0,92,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(276,0,122,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(276,0,152,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(276,0,182,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(276,0,212,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(276,0,242,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(276,0,272,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(276,0,275,0,0,"IF", 0, 2, 0);
	trans[0][47]	= settr(46,0,48,26,0,"((input==26))", 1, 2, 0);
	trans[0][48]	= settr(47,0,49,27,27,"fsm_state = 50", 1, 2, 0);
	trans[0][49]	= settr(48,0,3004,28,28,"output = 9", 1, 2, 0);
	trans[0][278]	= settr(277,0,3004,1,0,".(goto)", 0, 2, 0);
	trans[0][50]	= settr(49,0,51,29,0,"((input==17))", 1, 2, 0);
	trans[0][51]	= settr(50,0,52,30,30,"fsm_state = 50", 1, 2, 0);
	trans[0][52]	= settr(51,0,3004,31,31,"output = 9", 1, 2, 0);
	trans[0][53]	= settr(52,0,54,32,0,"((input==27))", 1, 2, 0);
	trans[0][54]	= settr(53,0,55,33,33,"fsm_state = 50", 1, 2, 0);
	trans[0][55]	= settr(54,0,3004,34,34,"output = 9", 1, 2, 0);
	trans[0][56]	= settr(55,0,57,35,0,"((input==20))", 1, 2, 0);
	trans[0][57]	= settr(56,0,58,36,36,"fsm_state = 50", 1, 2, 0);
	trans[0][58]	= settr(57,0,3004,37,37,"output = 9", 1, 2, 0);
	trans[0][59]	= settr(58,0,60,38,0,"((input==25))", 1, 2, 0);
	trans[0][60]	= settr(59,0,61,39,39,"fsm_state = 49", 1, 2, 0);
	trans[0][61]	= settr(60,0,3004,40,40,"output = 15", 1, 2, 0);
	trans[0][62]	= settr(61,0,63,41,0,"((input==21))", 1, 2, 0);
	trans[0][63]	= settr(62,0,64,42,42,"fsm_state = 48", 1, 2, 0);
	trans[0][64]	= settr(63,0,65,43,43,"output = 15", 1, 2, 0);
	trans[0][65]	= settr(64,0,89,44,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][89] = settr(88,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(88,0,82,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][82]	= settr(81,32,87,45,45,"D_STEP13", 1, 2, 0);
	T = trans[0][87] = settr(86,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(86,0,83,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(86,0,85,0,0,"IF", 0, 2, 0);
	trans[0][83]	= settr(82,0,1,46,0,"((dealt==0))", 1, 2, 0);
	trans[0][84]	= settr(83,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][88]	= settr(87,0,90,1,0,".(goto)", 0, 2, 0);
	trans[0][85]	= settr(84,0,86,2,0,"else", 0, 2, 0);
	trans[0][86]	= settr(85,0,90,1,0,"(1)", 0, 2, 0);
	trans[0][90]	= settr(89,0,91,47,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][91]	= settr(90,0,3004,48,48,"output = 3", 1, 2, 0);
	trans[0][92]	= settr(91,0,93,49,0,"((input==22))", 1, 2, 0);
	trans[0][93]	= settr(92,0,94,50,50,"fsm_state = 47", 1, 2, 0);
	trans[0][94]	= settr(93,0,95,51,51,"output = 15", 1, 2, 0);
	trans[0][95]	= settr(94,0,119,52,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][119] = settr(118,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(118,0,112,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][112]	= settr(111,32,117,53,53,"D_STEP13", 1, 2, 0);
	T = trans[0][117] = settr(116,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(116,0,113,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(116,0,115,0,0,"IF", 0, 2, 0);
	trans[0][113]	= settr(112,0,1,54,0,"((dealt==0))", 1, 2, 0);
	trans[0][114]	= settr(113,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][118]	= settr(117,0,120,1,0,".(goto)", 0, 2, 0);
	trans[0][115]	= settr(114,0,116,2,0,"else", 0, 2, 0);
	trans[0][116]	= settr(115,0,120,1,0,"(1)", 0, 2, 0);
	trans[0][120]	= settr(119,0,121,55,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][121]	= settr(120,0,3004,56,56,"output = 3", 1, 2, 0);
	trans[0][122]	= settr(121,0,123,57,0,"((input==28))", 1, 2, 0);
	trans[0][123]	= settr(122,0,124,58,58,"fsm_state = 47", 1, 2, 0);
	trans[0][124]	= settr(123,0,125,59,59,"output = 15", 1, 2, 0);
	trans[0][125]	= settr(124,0,149,60,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][149] = settr(148,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(148,0,142,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][142]	= settr(141,32,147,61,61,"D_STEP13", 1, 2, 0);
	T = trans[0][147] = settr(146,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(146,0,143,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(146,0,145,0,0,"IF", 0, 2, 0);
	trans[0][143]	= settr(142,0,1,62,0,"((dealt==0))", 1, 2, 0);
	trans[0][144]	= settr(143,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][148]	= settr(147,0,150,1,0,".(goto)", 0, 2, 0);
	trans[0][145]	= settr(144,0,146,2,0,"else", 0, 2, 0);
	trans[0][146]	= settr(145,0,150,1,0,"(1)", 0, 2, 0);
	trans[0][150]	= settr(149,0,151,63,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][151]	= settr(150,0,3004,64,64,"output = 3", 1, 2, 0);
	trans[0][152]	= settr(151,0,153,65,0,"((input==24))", 1, 2, 0);
	trans[0][153]	= settr(152,0,154,66,66,"fsm_state = 47", 1, 2, 0);
	trans[0][154]	= settr(153,0,155,67,67,"output = 15", 1, 2, 0);
	trans[0][155]	= settr(154,0,179,68,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][179] = settr(178,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(178,0,172,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][172]	= settr(171,32,177,69,69,"D_STEP13", 1, 2, 0);
	T = trans[0][177] = settr(176,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(176,0,173,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(176,0,175,0,0,"IF", 0, 2, 0);
	trans[0][173]	= settr(172,0,1,70,0,"((dealt==0))", 1, 2, 0);
	trans[0][174]	= settr(173,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][178]	= settr(177,0,180,1,0,".(goto)", 0, 2, 0);
	trans[0][175]	= settr(174,0,176,2,0,"else", 0, 2, 0);
	trans[0][176]	= settr(175,0,180,1,0,"(1)", 0, 2, 0);
	trans[0][180]	= settr(179,0,181,71,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][181]	= settr(180,0,3004,72,72,"output = 3", 1, 2, 0);
	trans[0][182]	= settr(181,0,183,73,0,"((input==18))", 1, 2, 0);
	trans[0][183]	= settr(182,0,184,74,74,"fsm_state = 47", 1, 2, 0);
	trans[0][184]	= settr(183,0,185,75,75,"output = 15", 1, 2, 0);
	trans[0][185]	= settr(184,0,209,76,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][209] = settr(208,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(208,0,202,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][202]	= settr(201,32,207,77,77,"D_STEP13", 1, 2, 0);
	T = trans[0][207] = settr(206,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(206,0,203,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(206,0,205,0,0,"IF", 0, 2, 0);
	trans[0][203]	= settr(202,0,1,78,0,"((dealt==0))", 1, 2, 0);
	trans[0][204]	= settr(203,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][208]	= settr(207,0,210,1,0,".(goto)", 0, 2, 0);
	trans[0][205]	= settr(204,0,206,2,0,"else", 0, 2, 0);
	trans[0][206]	= settr(205,0,210,1,0,"(1)", 0, 2, 0);
	trans[0][210]	= settr(209,0,211,79,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][211]	= settr(210,0,3004,80,80,"output = 3", 1, 2, 0);
	trans[0][212]	= settr(211,0,213,81,0,"((input==16))", 1, 2, 0);
	trans[0][213]	= settr(212,0,214,82,82,"fsm_state = 47", 1, 2, 0);
	trans[0][214]	= settr(213,0,215,83,83,"output = 15", 1, 2, 0);
	trans[0][215]	= settr(214,0,239,84,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][239] = settr(238,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(238,0,232,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][232]	= settr(231,32,237,85,85,"D_STEP13", 1, 2, 0);
	T = trans[0][237] = settr(236,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(236,0,233,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(236,0,235,0,0,"IF", 0, 2, 0);
	trans[0][233]	= settr(232,0,1,86,0,"((dealt==0))", 1, 2, 0);
	trans[0][234]	= settr(233,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][238]	= settr(237,0,240,1,0,".(goto)", 0, 2, 0);
	trans[0][235]	= settr(234,0,236,2,0,"else", 0, 2, 0);
	trans[0][236]	= settr(235,0,240,1,0,"(1)", 0, 2, 0);
	trans[0][240]	= settr(239,0,241,87,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][241]	= settr(240,0,3004,88,88,"output = 3", 1, 2, 0);
	trans[0][242]	= settr(241,0,243,89,0,"((input==23))", 1, 2, 0);
	trans[0][243]	= settr(242,0,244,90,90,"fsm_state = 47", 1, 2, 0);
	trans[0][244]	= settr(243,0,245,91,91,"output = 15", 1, 2, 0);
	trans[0][245]	= settr(244,0,269,92,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][269] = settr(268,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(268,0,262,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][262]	= settr(261,32,267,93,93,"D_STEP13", 1, 2, 0);
	T = trans[0][267] = settr(266,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(266,0,263,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(266,0,265,0,0,"IF", 0, 2, 0);
	trans[0][263]	= settr(262,0,1,94,0,"((dealt==0))", 1, 2, 0);
	trans[0][264]	= settr(263,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][268]	= settr(267,0,270,1,0,".(goto)", 0, 2, 0);
	trans[0][265]	= settr(264,0,266,2,0,"else", 0, 2, 0);
	trans[0][266]	= settr(265,0,270,1,0,"(1)", 0, 2, 0);
	trans[0][270]	= settr(269,0,271,95,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][271]	= settr(270,0,3004,96,96,"output = 3", 1, 2, 0);
	trans[0][272]	= settr(271,0,273,97,0,"((input==19))", 1, 2, 0);
	trans[0][273]	= settr(272,0,274,98,98,"fsm_state = 46", 1, 2, 0);
	trans[0][274]	= settr(273,0,3004,99,99,"output = 15", 1, 2, 0);
	trans[0][275]	= settr(274,0,18,2,0,"else", 0, 2, 0);
	trans[0][276]	= settr(275,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3003]	= settr(3002,0,3004,1,0,".(goto)", 0, 2, 0);
	trans[0][279]	= settr(278,0,321,100,0,"((fsm_state==49))", 1, 2, 0);
	T = trans[0][321] = settr(320,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(320,0,280,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(320,0,283,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(320,0,286,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(320,0,289,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(320,0,292,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(320,0,295,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(320,0,298,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(320,0,301,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(320,0,304,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(320,0,307,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(320,0,310,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(320,0,313,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(320,0,316,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(320,0,319,0,0,"IF", 0, 2, 0);
	trans[0][280]	= settr(279,0,281,101,0,"((input==26))", 1, 2, 0);
	trans[0][281]	= settr(280,0,282,102,102,"fsm_state = 49", 1, 2, 0);
	trans[0][282]	= settr(281,0,3004,103,103,"output = 9", 1, 2, 0);
	trans[0][322]	= settr(321,0,3004,1,0,".(goto)", 0, 2, 0);
	trans[0][283]	= settr(282,0,284,104,0,"((input==17))", 1, 2, 0);
	trans[0][284]	= settr(283,0,285,105,105,"fsm_state = 49", 1, 2, 0);
	trans[0][285]	= settr(284,0,3004,106,106,"output = 9", 1, 2, 0);
	trans[0][286]	= settr(285,0,287,107,0,"((input==27))", 1, 2, 0);
	trans[0][287]	= settr(286,0,288,108,108,"fsm_state = 49", 1, 2, 0);
	trans[0][288]	= settr(287,0,3004,109,109,"output = 9", 1, 2, 0);
	trans[0][289]	= settr(288,0,290,110,0,"((input==20))", 1, 2, 0);
	trans[0][290]	= settr(289,0,291,111,111,"fsm_state = 49", 1, 2, 0);
	trans[0][291]	= settr(290,0,3004,112,112,"output = 9", 1, 2, 0);
	trans[0][292]	= settr(291,0,293,113,0,"((input==21))", 1, 2, 0);
	trans[0][293]	= settr(292,0,294,114,114,"fsm_state = 48", 1, 2, 0);
	trans[0][294]	= settr(293,0,3004,115,115,"output = 3", 1, 2, 0);
	trans[0][295]	= settr(294,0,296,116,0,"((input==22))", 1, 2, 0);
	trans[0][296]	= settr(295,0,297,117,117,"fsm_state = 47", 1, 2, 0);
	trans[0][297]	= settr(296,0,3004,118,118,"output = 3", 1, 2, 0);
	trans[0][298]	= settr(297,0,299,119,0,"((input==18))", 1, 2, 0);
	trans[0][299]	= settr(298,0,300,120,120,"fsm_state = 47", 1, 2, 0);
	trans[0][300]	= settr(299,0,3004,121,121,"output = 3", 1, 2, 0);
	trans[0][301]	= settr(300,0,302,122,0,"((input==25))", 1, 2, 0);
	trans[0][302]	= settr(301,0,303,123,123,"fsm_state = 47", 1, 2, 0);
	trans[0][303]	= settr(302,0,3004,124,124,"output = 3", 1, 2, 0);
	trans[0][304]	= settr(303,0,305,125,0,"((input==16))", 1, 2, 0);
	trans[0][305]	= settr(304,0,306,126,126,"fsm_state = 47", 1, 2, 0);
	trans[0][306]	= settr(305,0,3004,127,127,"output = 3", 1, 2, 0);
	trans[0][307]	= settr(306,0,308,128,0,"((input==19))", 1, 2, 0);
	trans[0][308]	= settr(307,0,309,129,129,"fsm_state = 47", 1, 2, 0);
	trans[0][309]	= settr(308,0,3004,130,130,"output = 3", 1, 2, 0);
	trans[0][310]	= settr(309,0,311,131,0,"((input==23))", 1, 2, 0);
	trans[0][311]	= settr(310,0,312,132,132,"fsm_state = 47", 1, 2, 0);
	trans[0][312]	= settr(311,0,3004,133,133,"output = 3", 1, 2, 0);
	trans[0][313]	= settr(312,0,314,134,0,"((input==28))", 1, 2, 0);
	trans[0][314]	= settr(313,0,18,135,135,"fsm_state = 46", 1, 2, 0);
	trans[0][315]	= settr(314,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][316]	= settr(315,0,317,136,0,"((input==24))", 1, 2, 0);
	trans[0][317]	= settr(316,0,18,137,137,"fsm_state = 45", 1, 2, 0);
	trans[0][318]	= settr(317,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][319]	= settr(318,0,18,2,0,"else", 0, 2, 0);
	trans[0][320]	= settr(319,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][323]	= settr(322,0,365,138,0,"((fsm_state==48))", 1, 2, 0);
	T = trans[0][365] = settr(364,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(364,0,324,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(364,0,327,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(364,0,330,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(364,0,333,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(364,0,336,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(364,0,339,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(364,0,342,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(364,0,345,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(364,0,348,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(364,0,351,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(364,0,354,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(364,0,357,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(364,0,360,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(364,0,363,0,0,"IF", 0, 2, 0);
	trans[0][324]	= settr(323,0,325,139,0,"((input==22))", 1, 2, 0);
	trans[0][325]	= settr(324,0,326,140,140,"fsm_state = 48", 1, 2, 0);
	trans[0][326]	= settr(325,0,3004,141,141,"output = 6", 1, 2, 0);
	trans[0][366]	= settr(365,0,3004,1,0,".(goto)", 0, 2, 0);
	trans[0][327]	= settr(326,0,328,142,0,"((input==28))", 1, 2, 0);
	trans[0][328]	= settr(327,0,329,143,143,"fsm_state = 48", 1, 2, 0);
	trans[0][329]	= settr(328,0,3004,144,144,"output = 6", 1, 2, 0);
	trans[0][330]	= settr(329,0,331,145,0,"((input==24))", 1, 2, 0);
	trans[0][331]	= settr(330,0,332,146,146,"fsm_state = 48", 1, 2, 0);
	trans[0][332]	= settr(331,0,3004,147,147,"output = 6", 1, 2, 0);
	trans[0][333]	= settr(332,0,334,148,0,"((input==26))", 1, 2, 0);
	trans[0][334]	= settr(333,0,335,149,149,"fsm_state = 48", 1, 2, 0);
	trans[0][335]	= settr(334,0,3004,150,150,"output = 6", 1, 2, 0);
	trans[0][336]	= settr(335,0,337,151,0,"((input==21))", 1, 2, 0);
	trans[0][337]	= settr(336,0,338,152,152,"fsm_state = 48", 1, 2, 0);
	trans[0][338]	= settr(337,0,3004,153,153,"output = 1", 1, 2, 0);
	trans[0][339]	= settr(338,0,340,154,0,"((input==17))", 1, 2, 0);
	trans[0][340]	= settr(339,0,341,155,155,"fsm_state = 48", 1, 2, 0);
	trans[0][341]	= settr(340,0,3004,156,156,"output = 6", 1, 2, 0);
	trans[0][342]	= settr(341,0,343,157,0,"((input==18))", 1, 2, 0);
	trans[0][343]	= settr(342,0,344,158,158,"fsm_state = 48", 1, 2, 0);
	trans[0][344]	= settr(343,0,3004,159,159,"output = 6", 1, 2, 0);
	trans[0][345]	= settr(344,0,346,160,0,"((input==25))", 1, 2, 0);
	trans[0][346]	= settr(345,0,347,161,161,"fsm_state = 48", 1, 2, 0);
	trans[0][347]	= settr(346,0,3004,162,162,"output = 6", 1, 2, 0);
	trans[0][348]	= settr(347,0,349,163,0,"((input==16))", 1, 2, 0);
	trans[0][349]	= settr(348,0,350,164,164,"fsm_state = 48", 1, 2, 0);
	trans[0][350]	= settr(349,0,3004,165,165,"output = 6", 1, 2, 0);
	trans[0][351]	= settr(350,0,352,166,0,"((input==19))", 1, 2, 0);
	trans[0][352]	= settr(351,0,353,167,167,"fsm_state = 48", 1, 2, 0);
	trans[0][353]	= settr(352,0,3004,168,168,"output = 6", 1, 2, 0);
	trans[0][354]	= settr(353,0,355,169,0,"((input==20))", 1, 2, 0);
	trans[0][355]	= settr(354,0,356,170,170,"fsm_state = 48", 1, 2, 0);
	trans[0][356]	= settr(355,0,3004,171,171,"output = 6", 1, 2, 0);
	trans[0][357]	= settr(356,0,358,172,0,"((input==23))", 1, 2, 0);
	trans[0][358]	= settr(357,0,359,173,173,"fsm_state = 48", 1, 2, 0);
	trans[0][359]	= settr(358,0,3004,174,174,"output = 6", 1, 2, 0);
	trans[0][360]	= settr(359,0,361,175,0,"((input==27))", 1, 2, 0);
	trans[0][361]	= settr(360,0,362,176,176,"fsm_state = 47", 1, 2, 0);
	trans[0][362]	= settr(361,0,3004,177,177,"output = 6", 1, 2, 0);
	trans[0][363]	= settr(362,0,18,2,0,"else", 0, 2, 0);
	trans[0][364]	= settr(363,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][367]	= settr(366,0,409,178,0,"((fsm_state==47))", 1, 2, 0);
	T = trans[0][409] = settr(408,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(408,0,368,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(408,0,371,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(408,0,374,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(408,0,377,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(408,0,380,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(408,0,383,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(408,0,386,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(408,0,389,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(408,0,392,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(408,0,395,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(408,0,398,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(408,0,401,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(408,0,404,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(408,0,407,0,0,"IF", 0, 2, 0);
	trans[0][368]	= settr(367,0,369,179,0,"((input==21))", 1, 2, 0);
	trans[0][369]	= settr(368,0,370,180,180,"fsm_state = 48", 1, 2, 0);
	trans[0][370]	= settr(369,0,3004,181,181,"output = 6", 1, 2, 0);
	trans[0][410]	= settr(409,0,3004,1,0,".(goto)", 0, 2, 0);
	trans[0][371]	= settr(370,0,372,182,0,"((input==22))", 1, 2, 0);
	trans[0][372]	= settr(371,0,373,183,183,"fsm_state = 47", 1, 2, 0);
	trans[0][373]	= settr(372,0,3004,184,184,"output = 6", 1, 2, 0);
	trans[0][374]	= settr(373,0,375,185,0,"((input==28))", 1, 2, 0);
	trans[0][375]	= settr(374,0,376,186,186,"fsm_state = 47", 1, 2, 0);
	trans[0][376]	= settr(375,0,3004,187,187,"output = 6", 1, 2, 0);
	trans[0][377]	= settr(376,0,378,188,0,"((input==24))", 1, 2, 0);
	trans[0][378]	= settr(377,0,379,189,189,"fsm_state = 47", 1, 2, 0);
	trans[0][379]	= settr(378,0,3004,190,190,"output = 6", 1, 2, 0);
	trans[0][380]	= settr(379,0,381,191,0,"((input==26))", 1, 2, 0);
	trans[0][381]	= settr(380,0,382,192,192,"fsm_state = 47", 1, 2, 0);
	trans[0][382]	= settr(381,0,3004,193,193,"output = 9", 1, 2, 0);
	trans[0][383]	= settr(382,0,384,194,0,"((input==17))", 1, 2, 0);
	trans[0][384]	= settr(383,0,385,195,195,"fsm_state = 47", 1, 2, 0);
	trans[0][385]	= settr(384,0,3004,196,196,"output = 9", 1, 2, 0);
	trans[0][386]	= settr(385,0,387,197,0,"((input==18))", 1, 2, 0);
	trans[0][387]	= settr(386,0,388,198,198,"fsm_state = 47", 1, 2, 0);
	trans[0][388]	= settr(387,0,3004,199,199,"output = 6", 1, 2, 0);
	trans[0][389]	= settr(388,0,390,200,0,"((input==25))", 1, 2, 0);
	trans[0][390]	= settr(389,0,391,201,201,"fsm_state = 47", 1, 2, 0);
	trans[0][391]	= settr(390,0,3004,202,202,"output = 6", 1, 2, 0);
	trans[0][392]	= settr(391,0,393,203,0,"((input==27))", 1, 2, 0);
	trans[0][393]	= settr(392,0,394,204,204,"fsm_state = 47", 1, 2, 0);
	trans[0][394]	= settr(393,0,3004,205,205,"output = 9", 1, 2, 0);
	trans[0][395]	= settr(394,0,396,206,0,"((input==16))", 1, 2, 0);
	trans[0][396]	= settr(395,0,397,207,207,"fsm_state = 47", 1, 2, 0);
	trans[0][397]	= settr(396,0,3004,208,208,"output = 6", 1, 2, 0);
	trans[0][398]	= settr(397,0,399,209,0,"((input==19))", 1, 2, 0);
	trans[0][399]	= settr(398,0,400,210,210,"fsm_state = 47", 1, 2, 0);
	trans[0][400]	= settr(399,0,3004,211,211,"output = 6", 1, 2, 0);
	trans[0][401]	= settr(400,0,402,212,0,"((input==20))", 1, 2, 0);
	trans[0][402]	= settr(401,0,403,213,213,"fsm_state = 47", 1, 2, 0);
	trans[0][403]	= settr(402,0,3004,214,214,"output = 9", 1, 2, 0);
	trans[0][404]	= settr(403,0,405,215,0,"((input==23))", 1, 2, 0);
	trans[0][405]	= settr(404,0,406,216,216,"fsm_state = 47", 1, 2, 0);
	trans[0][406]	= settr(405,0,3004,217,217,"output = 6", 1, 2, 0);
	trans[0][407]	= settr(406,0,18,2,0,"else", 0, 2, 0);
	trans[0][408]	= settr(407,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][411]	= settr(410,0,480,218,0,"((fsm_state==46))", 1, 2, 0);
	T = trans[0][480] = settr(479,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(479,0,412,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(479,0,415,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(479,0,418,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(479,0,421,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(479,0,424,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(479,0,427,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(479,0,430,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(479,0,433,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(479,0,436,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(479,0,439,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(479,0,442,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(479,0,445,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(479,0,448,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(479,0,478,0,0,"IF", 0, 2, 0);
	trans[0][412]	= settr(411,0,413,219,0,"((input==21))", 1, 2, 0);
	trans[0][413]	= settr(412,0,414,220,220,"fsm_state = 48", 1, 2, 0);
	trans[0][414]	= settr(413,0,3004,221,221,"output = 3", 1, 2, 0);
	trans[0][481]	= settr(480,0,3004,1,0,".(goto)", 0, 2, 0);
	trans[0][415]	= settr(414,0,416,222,0,"((input==22))", 1, 2, 0);
	trans[0][416]	= settr(415,0,417,223,223,"fsm_state = 47", 1, 2, 0);
	trans[0][417]	= settr(416,0,3004,224,224,"output = 3", 1, 2, 0);
	trans[0][418]	= settr(417,0,419,225,0,"((input==18))", 1, 2, 0);
	trans[0][419]	= settr(418,0,420,226,226,"fsm_state = 47", 1, 2, 0);
	trans[0][420]	= settr(419,0,3004,227,227,"output = 3", 1, 2, 0);
	trans[0][421]	= settr(420,0,422,228,0,"((input==25))", 1, 2, 0);
	trans[0][422]	= settr(421,0,423,229,229,"fsm_state = 47", 1, 2, 0);
	trans[0][423]	= settr(422,0,3004,230,230,"output = 3", 1, 2, 0);
	trans[0][424]	= settr(423,0,425,231,0,"((input==16))", 1, 2, 0);
	trans[0][425]	= settr(424,0,426,232,232,"fsm_state = 47", 1, 2, 0);
	trans[0][426]	= settr(425,0,3004,233,233,"output = 3", 1, 2, 0);
	trans[0][427]	= settr(426,0,428,234,0,"((input==19))", 1, 2, 0);
	trans[0][428]	= settr(427,0,429,235,235,"fsm_state = 47", 1, 2, 0);
	trans[0][429]	= settr(428,0,3004,236,236,"output = 3", 1, 2, 0);
	trans[0][430]	= settr(429,0,431,237,0,"((input==23))", 1, 2, 0);
	trans[0][431]	= settr(430,0,432,238,238,"fsm_state = 47", 1, 2, 0);
	trans[0][432]	= settr(431,0,3004,239,239,"output = 3", 1, 2, 0);
	trans[0][433]	= settr(432,0,434,240,0,"((input==26))", 1, 2, 0);
	trans[0][434]	= settr(433,0,435,241,241,"fsm_state = 46", 1, 2, 0);
	trans[0][435]	= settr(434,0,3004,242,242,"output = 9", 1, 2, 0);
	trans[0][436]	= settr(435,0,437,243,0,"((input==17))", 1, 2, 0);
	trans[0][437]	= settr(436,0,438,244,244,"fsm_state = 46", 1, 2, 0);
	trans[0][438]	= settr(437,0,3004,245,245,"output = 9", 1, 2, 0);
	trans[0][439]	= settr(438,0,440,246,0,"((input==27))", 1, 2, 0);
	trans[0][440]	= settr(439,0,441,247,247,"fsm_state = 46", 1, 2, 0);
	trans[0][441]	= settr(440,0,3004,248,248,"output = 9", 1, 2, 0);
	trans[0][442]	= settr(441,0,443,249,0,"((input==20))", 1, 2, 0);
	trans[0][443]	= settr(442,0,444,250,250,"fsm_state = 46", 1, 2, 0);
	trans[0][444]	= settr(443,0,3004,251,251,"output = 9", 1, 2, 0);
	trans[0][445]	= settr(444,0,446,252,0,"((input==24))", 1, 2, 0);
	trans[0][446]	= settr(445,0,18,253,253,"fsm_state = 45", 1, 2, 0);
	trans[0][447]	= settr(446,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][448]	= settr(447,0,449,254,0,"((input==28))", 1, 2, 0);
	trans[0][449]	= settr(448,0,450,255,255,"fsm_state = 44", 1, 2, 0);
	trans[0][450]	= settr(449,0,451,256,256,"output = 13", 1, 2, 0);
	trans[0][451]	= settr(450,0,475,257,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][475] = settr(474,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(474,0,468,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][468]	= settr(467,32,473,258,258,"D_STEP13", 1, 2, 0);
	T = trans[0][473] = settr(472,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(472,0,469,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(472,0,471,0,0,"IF", 0, 2, 0);
	trans[0][469]	= settr(468,0,1,259,0,"((dealt==0))", 1, 2, 0);
	trans[0][470]	= settr(469,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][474]	= settr(473,0,476,1,0,".(goto)", 0, 2, 0);
	trans[0][471]	= settr(470,0,472,2,0,"else", 0, 2, 0);
	trans[0][472]	= settr(471,0,476,1,0,"(1)", 0, 2, 0);
	trans[0][476]	= settr(475,0,477,260,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][477]	= settr(476,0,3004,261,261,"output = 5", 1, 2, 0);
	trans[0][478]	= settr(477,0,18,2,0,"else", 0, 2, 0);
	trans[0][479]	= settr(478,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][482]	= settr(481,0,524,262,0,"((fsm_state==45))", 1, 2, 0);
	T = trans[0][524] = settr(523,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(523,0,483,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(523,0,486,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(523,0,489,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(523,0,492,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(523,0,495,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(523,0,498,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(523,0,501,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(523,0,504,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(523,0,507,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(523,0,510,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(523,0,513,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(523,0,516,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(523,0,519,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(523,0,522,0,0,"IF", 0, 2, 0);
	trans[0][483]	= settr(482,0,484,263,0,"((input==22))", 1, 2, 0);
	trans[0][484]	= settr(483,0,18,264,264,"fsm_state = 45", 1, 2, 0);
	trans[0][485]	= settr(484,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][525]	= settr(524,0,3004,1,0,".(goto)", 0, 2, 0);
	trans[0][486]	= settr(485,0,487,265,0,"((input==28))", 1, 2, 0);
	trans[0][487]	= settr(486,0,18,266,266,"fsm_state = 45", 1, 2, 0);
	trans[0][488]	= settr(487,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][489]	= settr(488,0,490,267,0,"((input==24))", 1, 2, 0);
	trans[0][490]	= settr(489,0,18,268,268,"fsm_state = 45", 1, 2, 0);
	trans[0][491]	= settr(490,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][492]	= settr(491,0,493,269,0,"((input==26))", 1, 2, 0);
	trans[0][493]	= settr(492,0,494,270,270,"fsm_state = 45", 1, 2, 0);
	trans[0][494]	= settr(493,0,3004,271,271,"output = 9", 1, 2, 0);
	trans[0][495]	= settr(494,0,496,272,0,"((input==17))", 1, 2, 0);
	trans[0][496]	= settr(495,0,497,273,273,"fsm_state = 45", 1, 2, 0);
	trans[0][497]	= settr(496,0,3004,274,274,"output = 9", 1, 2, 0);
	trans[0][498]	= settr(497,0,499,275,0,"((input==18))", 1, 2, 0);
	trans[0][499]	= settr(498,0,18,276,276,"fsm_state = 45", 1, 2, 0);
	trans[0][500]	= settr(499,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][501]	= settr(500,0,502,277,0,"((input==25))", 1, 2, 0);
	trans[0][502]	= settr(501,0,18,278,278,"fsm_state = 45", 1, 2, 0);
	trans[0][503]	= settr(502,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][504]	= settr(503,0,505,279,0,"((input==27))", 1, 2, 0);
	trans[0][505]	= settr(504,0,506,280,280,"fsm_state = 45", 1, 2, 0);
	trans[0][506]	= settr(505,0,3004,281,281,"output = 9", 1, 2, 0);
	trans[0][507]	= settr(506,0,508,282,0,"((input==16))", 1, 2, 0);
	trans[0][508]	= settr(507,0,18,283,283,"fsm_state = 45", 1, 2, 0);
	trans[0][509]	= settr(508,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][510]	= settr(509,0,511,284,0,"((input==19))", 1, 2, 0);
	trans[0][511]	= settr(510,0,18,285,285,"fsm_state = 45", 1, 2, 0);
	trans[0][512]	= settr(511,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][513]	= settr(512,0,514,286,0,"((input==20))", 1, 2, 0);
	trans[0][514]	= settr(513,0,515,287,287,"fsm_state = 45", 1, 2, 0);
	trans[0][515]	= settr(514,0,3004,288,288,"output = 9", 1, 2, 0);
	trans[0][516]	= settr(515,0,517,289,0,"((input==23))", 1, 2, 0);
	trans[0][517]	= settr(516,0,18,290,290,"fsm_state = 45", 1, 2, 0);
	trans[0][518]	= settr(517,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][519]	= settr(518,0,520,291,0,"((input==21))", 1, 2, 0);
	trans[0][520]	= settr(519,0,18,292,292,"fsm_state = 43", 1, 2, 0);
	trans[0][521]	= settr(520,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][522]	= settr(521,0,18,2,0,"else", 0, 2, 0);
	trans[0][523]	= settr(522,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][526]	= settr(525,0,568,293,0,"((fsm_state==44))", 1, 2, 0);
	T = trans[0][568] = settr(567,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(567,0,527,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(567,0,530,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(567,0,533,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(567,0,536,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(567,0,539,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(567,0,542,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(567,0,545,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(567,0,548,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(567,0,551,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(567,0,554,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(567,0,557,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(567,0,560,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(567,0,563,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(567,0,566,0,0,"IF", 0, 2, 0);
	trans[0][527]	= settr(526,0,528,294,0,"((input==21))", 1, 2, 0);
	trans[0][528]	= settr(527,0,529,295,295,"fsm_state = 48", 1, 2, 0);
	trans[0][529]	= settr(528,0,3004,296,296,"output = 3", 1, 2, 0);
	trans[0][569]	= settr(568,0,3004,1,0,".(goto)", 0, 2, 0);
	trans[0][530]	= settr(529,0,531,297,0,"((input==22))", 1, 2, 0);
	trans[0][531]	= settr(530,0,532,298,298,"fsm_state = 47", 1, 2, 0);
	trans[0][532]	= settr(531,0,3004,299,299,"output = 3", 1, 2, 0);
	trans[0][533]	= settr(532,0,534,300,0,"((input==28))", 1, 2, 0);
	trans[0][534]	= settr(533,0,535,301,301,"fsm_state = 47", 1, 2, 0);
	trans[0][535]	= settr(534,0,3004,302,302,"output = 3", 1, 2, 0);
	trans[0][536]	= settr(535,0,537,303,0,"((input==18))", 1, 2, 0);
	trans[0][537]	= settr(536,0,538,304,304,"fsm_state = 47", 1, 2, 0);
	trans[0][538]	= settr(537,0,3004,305,305,"output = 3", 1, 2, 0);
	trans[0][539]	= settr(538,0,540,306,0,"((input==25))", 1, 2, 0);
	trans[0][540]	= settr(539,0,541,307,307,"fsm_state = 47", 1, 2, 0);
	trans[0][541]	= settr(540,0,3004,308,308,"output = 3", 1, 2, 0);
	trans[0][542]	= settr(541,0,543,309,0,"((input==16))", 1, 2, 0);
	trans[0][543]	= settr(542,0,544,310,310,"fsm_state = 47", 1, 2, 0);
	trans[0][544]	= settr(543,0,3004,311,311,"output = 3", 1, 2, 0);
	trans[0][545]	= settr(544,0,546,312,0,"((input==19))", 1, 2, 0);
	trans[0][546]	= settr(545,0,547,313,313,"fsm_state = 47", 1, 2, 0);
	trans[0][547]	= settr(546,0,3004,314,314,"output = 3", 1, 2, 0);
	trans[0][548]	= settr(547,0,549,315,0,"((input==23))", 1, 2, 0);
	trans[0][549]	= settr(548,0,550,316,316,"fsm_state = 47", 1, 2, 0);
	trans[0][550]	= settr(549,0,3004,317,317,"output = 3", 1, 2, 0);
	trans[0][551]	= settr(550,0,552,318,0,"((input==26))", 1, 2, 0);
	trans[0][552]	= settr(551,0,553,319,319,"fsm_state = 44", 1, 2, 0);
	trans[0][553]	= settr(552,0,3004,320,320,"output = 9", 1, 2, 0);
	trans[0][554]	= settr(553,0,555,321,0,"((input==17))", 1, 2, 0);
	trans[0][555]	= settr(554,0,556,322,322,"fsm_state = 44", 1, 2, 0);
	trans[0][556]	= settr(555,0,3004,323,323,"output = 9", 1, 2, 0);
	trans[0][557]	= settr(556,0,558,324,0,"((input==27))", 1, 2, 0);
	trans[0][558]	= settr(557,0,559,325,325,"fsm_state = 44", 1, 2, 0);
	trans[0][559]	= settr(558,0,3004,326,326,"output = 9", 1, 2, 0);
	trans[0][560]	= settr(559,0,561,327,0,"((input==20))", 1, 2, 0);
	trans[0][561]	= settr(560,0,562,328,328,"fsm_state = 44", 1, 2, 0);
	trans[0][562]	= settr(561,0,3004,329,329,"output = 9", 1, 2, 0);
	trans[0][563]	= settr(562,0,564,330,0,"((input==24))", 1, 2, 0);
	trans[0][564]	= settr(563,0,18,331,331,"fsm_state = 42", 1, 2, 0);
	trans[0][565]	= settr(564,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][566]	= settr(565,0,18,2,0,"else", 0, 2, 0);
	trans[0][567]	= settr(566,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][570]	= settr(569,0,612,332,0,"((fsm_state==43))", 1, 2, 0);
	T = trans[0][612] = settr(611,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(611,0,571,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(611,0,574,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(611,0,577,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(611,0,580,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(611,0,583,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(611,0,586,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(611,0,589,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(611,0,592,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(611,0,595,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(611,0,598,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(611,0,601,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(611,0,604,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(611,0,607,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(611,0,610,0,0,"IF", 0, 2, 0);
	trans[0][571]	= settr(570,0,572,333,0,"((input==27))", 1, 2, 0);
	trans[0][572]	= settr(571,0,18,334,334,"fsm_state = 45", 1, 2, 0);
	trans[0][573]	= settr(572,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][613]	= settr(612,0,3004,1,0,".(goto)", 0, 2, 0);
	trans[0][574]	= settr(573,0,575,335,0,"((input==22))", 1, 2, 0);
	trans[0][575]	= settr(574,0,18,336,336,"fsm_state = 43", 1, 2, 0);
	trans[0][576]	= settr(575,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][577]	= settr(576,0,578,337,0,"((input==28))", 1, 2, 0);
	trans[0][578]	= settr(577,0,18,338,338,"fsm_state = 43", 1, 2, 0);
	trans[0][579]	= settr(578,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][580]	= settr(579,0,581,339,0,"((input==24))", 1, 2, 0);
	trans[0][581]	= settr(580,0,18,340,340,"fsm_state = 43", 1, 2, 0);
	trans[0][582]	= settr(581,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][583]	= settr(582,0,584,341,0,"((input==26))", 1, 2, 0);
	trans[0][584]	= settr(583,0,18,342,342,"fsm_state = 43", 1, 2, 0);
	trans[0][585]	= settr(584,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][586]	= settr(585,0,587,343,0,"((input==21))", 1, 2, 0);
	trans[0][587]	= settr(586,0,588,344,344,"fsm_state = 43", 1, 2, 0);
	trans[0][588]	= settr(587,0,3004,345,345,"output = 1", 1, 2, 0);
	trans[0][589]	= settr(588,0,590,346,0,"((input==17))", 1, 2, 0);
	trans[0][590]	= settr(589,0,18,347,347,"fsm_state = 43", 1, 2, 0);
	trans[0][591]	= settr(590,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][592]	= settr(591,0,593,348,0,"((input==18))", 1, 2, 0);
	trans[0][593]	= settr(592,0,18,349,349,"fsm_state = 43", 1, 2, 0);
	trans[0][594]	= settr(593,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][595]	= settr(594,0,596,350,0,"((input==25))", 1, 2, 0);
	trans[0][596]	= settr(595,0,18,351,351,"fsm_state = 43", 1, 2, 0);
	trans[0][597]	= settr(596,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][598]	= settr(597,0,599,352,0,"((input==16))", 1, 2, 0);
	trans[0][599]	= settr(598,0,18,353,353,"fsm_state = 43", 1, 2, 0);
	trans[0][600]	= settr(599,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][601]	= settr(600,0,602,354,0,"((input==19))", 1, 2, 0);
	trans[0][602]	= settr(601,0,18,355,355,"fsm_state = 43", 1, 2, 0);
	trans[0][603]	= settr(602,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][604]	= settr(603,0,605,356,0,"((input==20))", 1, 2, 0);
	trans[0][605]	= settr(604,0,18,357,357,"fsm_state = 43", 1, 2, 0);
	trans[0][606]	= settr(605,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][607]	= settr(606,0,608,358,0,"((input==23))", 1, 2, 0);
	trans[0][608]	= settr(607,0,18,359,359,"fsm_state = 43", 1, 2, 0);
	trans[0][609]	= settr(608,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][610]	= settr(609,0,18,2,0,"else", 0, 2, 0);
	trans[0][611]	= settr(610,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][614]	= settr(613,0,656,360,0,"((fsm_state==42))", 1, 2, 0);
	T = trans[0][656] = settr(655,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(655,0,615,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(655,0,618,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(655,0,621,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(655,0,624,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(655,0,627,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(655,0,630,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(655,0,633,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(655,0,636,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(655,0,639,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(655,0,642,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(655,0,645,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(655,0,648,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(655,0,651,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(655,0,654,0,0,"IF", 0, 2, 0);
	trans[0][615]	= settr(614,0,616,361,0,"((input==28))", 1, 2, 0);
	trans[0][616]	= settr(615,0,617,362,362,"fsm_state = 47", 1, 2, 0);
	trans[0][617]	= settr(616,0,3004,363,363,"output = 3", 1, 2, 0);
	trans[0][657]	= settr(656,0,3004,1,0,".(goto)", 0, 2, 0);
	trans[0][618]	= settr(617,0,619,364,0,"((input==24))", 1, 2, 0);
	trans[0][619]	= settr(618,0,620,365,365,"fsm_state = 47", 1, 2, 0);
	trans[0][620]	= settr(619,0,3004,366,366,"output = 3", 1, 2, 0);
	trans[0][621]	= settr(620,0,622,367,0,"((input==16))", 1, 2, 0);
	trans[0][622]	= settr(621,0,623,368,368,"fsm_state = 47", 1, 2, 0);
	trans[0][623]	= settr(622,0,3004,369,369,"output = 3", 1, 2, 0);
	trans[0][624]	= settr(623,0,625,370,0,"((input==22))", 1, 2, 0);
	trans[0][625]	= settr(624,0,18,371,371,"fsm_state = 42", 1, 2, 0);
	trans[0][626]	= settr(625,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][627]	= settr(626,0,628,372,0,"((input==26))", 1, 2, 0);
	trans[0][628]	= settr(627,0,629,373,373,"fsm_state = 42", 1, 2, 0);
	trans[0][629]	= settr(628,0,3004,374,374,"output = 9", 1, 2, 0);
	trans[0][630]	= settr(629,0,631,375,0,"((input==17))", 1, 2, 0);
	trans[0][631]	= settr(630,0,632,376,376,"fsm_state = 42", 1, 2, 0);
	trans[0][632]	= settr(631,0,3004,377,377,"output = 9", 1, 2, 0);
	trans[0][633]	= settr(632,0,634,378,0,"((input==18))", 1, 2, 0);
	trans[0][634]	= settr(633,0,18,379,379,"fsm_state = 42", 1, 2, 0);
	trans[0][635]	= settr(634,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][636]	= settr(635,0,637,380,0,"((input==27))", 1, 2, 0);
	trans[0][637]	= settr(636,0,638,381,381,"fsm_state = 42", 1, 2, 0);
	trans[0][638]	= settr(637,0,3004,382,382,"output = 9", 1, 2, 0);
	trans[0][639]	= settr(638,0,640,383,0,"((input==20))", 1, 2, 0);
	trans[0][640]	= settr(639,0,641,384,384,"fsm_state = 42", 1, 2, 0);
	trans[0][641]	= settr(640,0,3004,385,385,"output = 9", 1, 2, 0);
	trans[0][642]	= settr(641,0,643,386,0,"((input==25))", 1, 2, 0);
	trans[0][643]	= settr(642,0,644,387,387,"fsm_state = 41", 1, 2, 0);
	trans[0][644]	= settr(643,0,3004,388,388,"output = 15", 1, 2, 0);
	trans[0][645]	= settr(644,0,646,389,0,"((input==21))", 1, 2, 0);
	trans[0][646]	= settr(645,0,18,390,390,"fsm_state = 40", 1, 2, 0);
	trans[0][647]	= settr(646,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][648]	= settr(647,0,649,391,0,"((input==19))", 1, 2, 0);
	trans[0][649]	= settr(648,0,650,392,392,"fsm_state = 39", 1, 2, 0);
	trans[0][650]	= settr(649,0,3004,393,393,"output = 15", 1, 2, 0);
	trans[0][651]	= settr(650,0,652,394,0,"((input==23))", 1, 2, 0);
	trans[0][652]	= settr(651,0,653,395,395,"fsm_state = 38", 1, 2, 0);
	trans[0][653]	= settr(652,0,3004,396,396,"output = 4", 1, 2, 0);
	trans[0][654]	= settr(653,0,18,2,0,"else", 0, 2, 0);
	trans[0][655]	= settr(654,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][658]	= settr(657,0,700,397,0,"((fsm_state==41))", 1, 2, 0);
	T = trans[0][700] = settr(699,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(699,0,659,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(699,0,662,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(699,0,665,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(699,0,668,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(699,0,671,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(699,0,674,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(699,0,677,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(699,0,680,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(699,0,683,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(699,0,686,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(699,0,689,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(699,0,692,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(699,0,695,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(699,0,698,0,0,"IF", 0, 2, 0);
	trans[0][659]	= settr(658,0,660,398,0,"((input==25))", 1, 2, 0);
	trans[0][660]	= settr(659,0,661,399,399,"fsm_state = 47", 1, 2, 0);
	trans[0][661]	= settr(660,0,3004,400,400,"output = 3", 1, 2, 0);
	trans[0][701]	= settr(700,0,3004,1,0,".(goto)", 0, 2, 0);
	trans[0][662]	= settr(661,0,663,401,0,"((input==16))", 1, 2, 0);
	trans[0][663]	= settr(662,0,664,402,402,"fsm_state = 47", 1, 2, 0);
	trans[0][664]	= settr(663,0,3004,403,403,"output = 3", 1, 2, 0);
	trans[0][665]	= settr(664,0,666,404,0,"((input==19))", 1, 2, 0);
	trans[0][666]	= settr(665,0,667,405,405,"fsm_state = 47", 1, 2, 0);
	trans[0][667]	= settr(666,0,3004,406,406,"output = 3", 1, 2, 0);
	trans[0][668]	= settr(667,0,669,407,0,"((input==23))", 1, 2, 0);
	trans[0][669]	= settr(668,0,670,408,408,"fsm_state = 47", 1, 2, 0);
	trans[0][670]	= settr(669,0,3004,409,409,"output = 3", 1, 2, 0);
	trans[0][671]	= settr(670,0,672,410,0,"((input==24))", 1, 2, 0);
	trans[0][672]	= settr(671,0,18,411,411,"fsm_state = 45", 1, 2, 0);
	trans[0][673]	= settr(672,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][674]	= settr(673,0,675,412,0,"((input==22))", 1, 2, 0);
	trans[0][675]	= settr(674,0,18,413,413,"fsm_state = 41", 1, 2, 0);
	trans[0][676]	= settr(675,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][677]	= settr(676,0,678,414,0,"((input==26))", 1, 2, 0);
	trans[0][678]	= settr(677,0,679,415,415,"fsm_state = 41", 1, 2, 0);
	trans[0][679]	= settr(678,0,3004,416,416,"output = 9", 1, 2, 0);
	trans[0][680]	= settr(679,0,681,417,0,"((input==17))", 1, 2, 0);
	trans[0][681]	= settr(680,0,682,418,418,"fsm_state = 41", 1, 2, 0);
	trans[0][682]	= settr(681,0,3004,419,419,"output = 9", 1, 2, 0);
	trans[0][683]	= settr(682,0,684,420,0,"((input==18))", 1, 2, 0);
	trans[0][684]	= settr(683,0,18,421,421,"fsm_state = 41", 1, 2, 0);
	trans[0][685]	= settr(684,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][686]	= settr(685,0,687,422,0,"((input==27))", 1, 2, 0);
	trans[0][687]	= settr(686,0,688,423,423,"fsm_state = 41", 1, 2, 0);
	trans[0][688]	= settr(687,0,3004,424,424,"output = 9", 1, 2, 0);
	trans[0][689]	= settr(688,0,690,425,0,"((input==20))", 1, 2, 0);
	trans[0][690]	= settr(689,0,691,426,426,"fsm_state = 41", 1, 2, 0);
	trans[0][691]	= settr(690,0,3004,427,427,"output = 9", 1, 2, 0);
	trans[0][692]	= settr(691,0,693,428,0,"((input==28))", 1, 2, 0);
	trans[0][693]	= settr(692,0,18,429,429,"fsm_state = 39", 1, 2, 0);
	trans[0][694]	= settr(693,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][695]	= settr(694,0,696,430,0,"((input==21))", 1, 2, 0);
	trans[0][696]	= settr(695,0,18,431,431,"fsm_state = 37", 1, 2, 0);
	trans[0][697]	= settr(696,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][698]	= settr(697,0,18,2,0,"else", 0, 2, 0);
	trans[0][699]	= settr(698,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][702]	= settr(701,0,744,432,0,"((fsm_state==40))", 1, 2, 0);
	T = trans[0][744] = settr(743,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(743,0,703,0,0,"IF", 0, 2, 0);
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
	trans[0][703]	= settr(702,0,704,433,0,"((input==28))", 1, 2, 0);
	trans[0][704]	= settr(703,0,705,434,434,"fsm_state = 48", 1, 2, 0);
	trans[0][705]	= settr(704,0,3004,435,435,"output = 3", 1, 2, 0);
	trans[0][745]	= settr(744,0,3004,1,0,".(goto)", 0, 2, 0);
	trans[0][706]	= settr(705,0,707,436,0,"((input==24))", 1, 2, 0);
	trans[0][707]	= settr(706,0,708,437,437,"fsm_state = 48", 1, 2, 0);
	trans[0][708]	= settr(707,0,3004,438,438,"output = 3", 1, 2, 0);
	trans[0][709]	= settr(708,0,710,439,0,"((input==16))", 1, 2, 0);
	trans[0][710]	= settr(709,0,711,440,440,"fsm_state = 48", 1, 2, 0);
	trans[0][711]	= settr(710,0,3004,441,441,"output = 3", 1, 2, 0);
	trans[0][712]	= settr(711,0,713,442,0,"((input==27))", 1, 2, 0);
	trans[0][713]	= settr(712,0,18,443,443,"fsm_state = 42", 1, 2, 0);
	trans[0][714]	= settr(713,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][715]	= settr(714,0,716,444,0,"((input==22))", 1, 2, 0);
	trans[0][716]	= settr(715,0,18,445,445,"fsm_state = 40", 1, 2, 0);
	trans[0][717]	= settr(716,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][718]	= settr(717,0,719,446,0,"((input==26))", 1, 2, 0);
	trans[0][719]	= settr(718,0,18,447,447,"fsm_state = 40", 1, 2, 0);
	trans[0][720]	= settr(719,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][721]	= settr(720,0,722,448,0,"((input==21))", 1, 2, 0);
	trans[0][722]	= settr(721,0,723,449,449,"fsm_state = 40", 1, 2, 0);
	trans[0][723]	= settr(722,0,3004,450,450,"output = 1", 1, 2, 0);
	trans[0][724]	= settr(723,0,725,451,0,"((input==17))", 1, 2, 0);
	trans[0][725]	= settr(724,0,18,452,452,"fsm_state = 40", 1, 2, 0);
	trans[0][726]	= settr(725,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][727]	= settr(726,0,728,453,0,"((input==18))", 1, 2, 0);
	trans[0][728]	= settr(727,0,18,454,454,"fsm_state = 40", 1, 2, 0);
	trans[0][729]	= settr(728,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][730]	= settr(729,0,731,455,0,"((input==20))", 1, 2, 0);
	trans[0][731]	= settr(730,0,18,456,456,"fsm_state = 40", 1, 2, 0);
	trans[0][732]	= settr(731,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][733]	= settr(732,0,734,457,0,"((input==25))", 1, 2, 0);
	trans[0][734]	= settr(733,0,735,458,458,"fsm_state = 37", 1, 2, 0);
	trans[0][735]	= settr(734,0,3004,459,459,"output = 15", 1, 2, 0);
	trans[0][736]	= settr(735,0,737,460,0,"((input==23))", 1, 2, 0);
	trans[0][737]	= settr(736,0,738,461,461,"fsm_state = 36", 1, 2, 0);
	trans[0][738]	= settr(737,0,3004,462,462,"output = 4", 1, 2, 0);
	trans[0][739]	= settr(738,0,740,463,0,"((input==19))", 1, 2, 0);
	trans[0][740]	= settr(739,0,741,464,464,"fsm_state = 35", 1, 2, 0);
	trans[0][741]	= settr(740,0,3004,465,465,"output = 15", 1, 2, 0);
	trans[0][742]	= settr(741,0,18,2,0,"else", 0, 2, 0);
	trans[0][743]	= settr(742,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][746]	= settr(745,0,815,466,0,"((fsm_state==39))", 1, 2, 0);
	T = trans[0][815] = settr(814,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(814,0,747,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(814,0,750,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(814,0,753,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(814,0,756,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(814,0,759,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(814,0,762,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(814,0,765,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(814,0,768,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(814,0,771,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(814,0,774,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(814,0,777,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(814,0,780,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(814,0,783,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(814,0,813,0,0,"IF", 0, 2, 0);
	trans[0][747]	= settr(746,0,748,467,0,"((input==25))", 1, 2, 0);
	trans[0][748]	= settr(747,0,749,468,468,"fsm_state = 47", 1, 2, 0);
	trans[0][749]	= settr(748,0,3004,469,469,"output = 3", 1, 2, 0);
	trans[0][816]	= settr(815,0,3004,1,0,".(goto)", 0, 2, 0);
	trans[0][750]	= settr(749,0,751,470,0,"((input==16))", 1, 2, 0);
	trans[0][751]	= settr(750,0,752,471,471,"fsm_state = 47", 1, 2, 0);
	trans[0][752]	= settr(751,0,3004,472,472,"output = 3", 1, 2, 0);
	trans[0][753]	= settr(752,0,754,473,0,"((input==19))", 1, 2, 0);
	trans[0][754]	= settr(753,0,755,474,474,"fsm_state = 47", 1, 2, 0);
	trans[0][755]	= settr(754,0,3004,475,475,"output = 3", 1, 2, 0);
	trans[0][756]	= settr(755,0,757,476,0,"((input==23))", 1, 2, 0);
	trans[0][757]	= settr(756,0,758,477,477,"fsm_state = 47", 1, 2, 0);
	trans[0][758]	= settr(757,0,3004,478,478,"output = 3", 1, 2, 0);
	trans[0][759]	= settr(758,0,760,479,0,"((input==24))", 1, 2, 0);
	trans[0][760]	= settr(759,0,18,480,480,"fsm_state = 45", 1, 2, 0);
	trans[0][761]	= settr(760,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][762]	= settr(761,0,763,481,0,"((input==22))", 1, 2, 0);
	trans[0][763]	= settr(762,0,18,482,482,"fsm_state = 39", 1, 2, 0);
	trans[0][764]	= settr(763,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][765]	= settr(764,0,766,483,0,"((input==26))", 1, 2, 0);
	trans[0][766]	= settr(765,0,767,484,484,"fsm_state = 39", 1, 2, 0);
	trans[0][767]	= settr(766,0,3004,485,485,"output = 9", 1, 2, 0);
	trans[0][768]	= settr(767,0,769,486,0,"((input==17))", 1, 2, 0);
	trans[0][769]	= settr(768,0,770,487,487,"fsm_state = 39", 1, 2, 0);
	trans[0][770]	= settr(769,0,3004,488,488,"output = 9", 1, 2, 0);
	trans[0][771]	= settr(770,0,772,489,0,"((input==18))", 1, 2, 0);
	trans[0][772]	= settr(771,0,18,490,490,"fsm_state = 39", 1, 2, 0);
	trans[0][773]	= settr(772,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][774]	= settr(773,0,775,491,0,"((input==27))", 1, 2, 0);
	trans[0][775]	= settr(774,0,776,492,492,"fsm_state = 39", 1, 2, 0);
	trans[0][776]	= settr(775,0,3004,493,493,"output = 9", 1, 2, 0);
	trans[0][777]	= settr(776,0,778,494,0,"((input==20))", 1, 2, 0);
	trans[0][778]	= settr(777,0,779,495,495,"fsm_state = 39", 1, 2, 0);
	trans[0][779]	= settr(778,0,3004,496,496,"output = 9", 1, 2, 0);
	trans[0][780]	= settr(779,0,781,497,0,"((input==21))", 1, 2, 0);
	trans[0][781]	= settr(780,0,18,498,498,"fsm_state = 35", 1, 2, 0);
	trans[0][782]	= settr(781,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][783]	= settr(782,0,784,499,0,"((input==28))", 1, 2, 0);
	trans[0][784]	= settr(783,0,785,500,500,"fsm_state = 34", 1, 2, 0);
	trans[0][785]	= settr(784,0,786,501,501,"output = 13", 1, 2, 0);
	trans[0][786]	= settr(785,0,810,502,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][810] = settr(809,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(809,0,803,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][803]	= settr(802,32,808,503,503,"D_STEP13", 1, 2, 0);
	T = trans[0][808] = settr(807,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(807,0,804,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(807,0,806,0,0,"IF", 0, 2, 0);
	trans[0][804]	= settr(803,0,1,504,0,"((dealt==0))", 1, 2, 0);
	trans[0][805]	= settr(804,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][809]	= settr(808,0,811,1,0,".(goto)", 0, 2, 0);
	trans[0][806]	= settr(805,0,807,2,0,"else", 0, 2, 0);
	trans[0][807]	= settr(806,0,811,1,0,"(1)", 0, 2, 0);
	trans[0][811]	= settr(810,0,812,505,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][812]	= settr(811,0,3004,506,506,"output = 5", 1, 2, 0);
	trans[0][813]	= settr(812,0,18,2,0,"else", 0, 2, 0);
	trans[0][814]	= settr(813,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][817]	= settr(816,0,859,507,0,"((fsm_state==38))", 1, 2, 0);
	T = trans[0][859] = settr(858,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(858,0,818,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(858,0,821,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(858,0,824,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(858,0,827,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(858,0,830,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(858,0,833,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(858,0,836,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(858,0,839,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(858,0,842,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(858,0,845,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(858,0,848,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(858,0,851,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(858,0,854,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(858,0,857,0,0,"IF", 0, 2, 0);
	trans[0][818]	= settr(817,0,819,508,0,"((input==28))", 1, 2, 0);
	trans[0][819]	= settr(818,0,820,509,509,"fsm_state = 47", 1, 2, 0);
	trans[0][820]	= settr(819,0,3004,510,510,"output = 3", 1, 2, 0);
	trans[0][860]	= settr(859,0,3004,1,0,".(goto)", 0, 2, 0);
	trans[0][821]	= settr(820,0,822,511,0,"((input==24))", 1, 2, 0);
	trans[0][822]	= settr(821,0,823,512,512,"fsm_state = 47", 1, 2, 0);
	trans[0][823]	= settr(822,0,3004,513,513,"output = 3", 1, 2, 0);
	trans[0][824]	= settr(823,0,825,514,0,"((input==16))", 1, 2, 0);
	trans[0][825]	= settr(824,0,826,515,515,"fsm_state = 47", 1, 2, 0);
	trans[0][826]	= settr(825,0,3004,516,516,"output = 3", 1, 2, 0);
	trans[0][827]	= settr(826,0,828,517,0,"((input==22))", 1, 2, 0);
	trans[0][828]	= settr(827,0,829,518,518,"fsm_state = 38", 1, 2, 0);
	trans[0][829]	= settr(828,0,3004,519,519,"output = 11", 1, 2, 0);
	trans[0][830]	= settr(829,0,831,520,0,"((input==26))", 1, 2, 0);
	trans[0][831]	= settr(830,0,832,521,521,"fsm_state = 38", 1, 2, 0);
	trans[0][832]	= settr(831,0,3004,522,522,"output = 9", 1, 2, 0);
	trans[0][833]	= settr(832,0,834,523,0,"((input==17))", 1, 2, 0);
	trans[0][834]	= settr(833,0,835,524,524,"fsm_state = 38", 1, 2, 0);
	trans[0][835]	= settr(834,0,3004,525,525,"output = 9", 1, 2, 0);
	trans[0][836]	= settr(835,0,837,526,0,"((input==27))", 1, 2, 0);
	trans[0][837]	= settr(836,0,838,527,527,"fsm_state = 38", 1, 2, 0);
	trans[0][838]	= settr(837,0,3004,528,528,"output = 9", 1, 2, 0);
	trans[0][839]	= settr(838,0,840,529,0,"((input==20))", 1, 2, 0);
	trans[0][840]	= settr(839,0,841,530,530,"fsm_state = 38", 1, 2, 0);
	trans[0][841]	= settr(840,0,3004,531,531,"output = 9", 1, 2, 0);
	trans[0][842]	= settr(841,0,843,532,0,"((input==23))", 1, 2, 0);
	trans[0][843]	= settr(842,0,844,533,533,"fsm_state = 38", 1, 2, 0);
	trans[0][844]	= settr(843,0,3004,534,534,"output = 4", 1, 2, 0);
	trans[0][845]	= settr(844,0,846,535,0,"((input==21))", 1, 2, 0);
	trans[0][846]	= settr(845,0,847,536,536,"fsm_state = 36", 1, 2, 0);
	trans[0][847]	= settr(846,0,3004,537,537,"output = 10", 1, 2, 0);
	trans[0][848]	= settr(847,0,849,538,0,"((input==25))", 1, 2, 0);
	trans[0][849]	= settr(848,0,850,539,539,"fsm_state = 33", 1, 2, 0);
	trans[0][850]	= settr(849,0,3004,540,540,"output = 15", 1, 2, 0);
	trans[0][851]	= settr(850,0,852,541,0,"((input==18))", 1, 2, 0);
	trans[0][852]	= settr(851,0,853,542,542,"fsm_state = 32", 1, 2, 0);
	trans[0][853]	= settr(852,0,3004,543,543,"output = 2", 1, 2, 0);
	trans[0][854]	= settr(853,0,855,544,0,"((input==19))", 1, 2, 0);
	trans[0][855]	= settr(854,0,856,545,545,"fsm_state = 31", 1, 2, 0);
	trans[0][856]	= settr(855,0,3004,546,546,"output = 15", 1, 2, 0);
	trans[0][857]	= settr(856,0,18,2,0,"else", 0, 2, 0);
	trans[0][858]	= settr(857,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][861]	= settr(860,0,903,547,0,"((fsm_state==37))", 1, 2, 0);
	T = trans[0][903] = settr(902,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(902,0,862,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(902,0,865,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(902,0,868,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(902,0,871,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(902,0,874,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(902,0,877,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(902,0,880,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(902,0,883,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(902,0,886,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(902,0,889,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(902,0,892,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(902,0,895,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(902,0,898,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(902,0,901,0,0,"IF", 0, 2, 0);
	trans[0][862]	= settr(861,0,863,548,0,"((input==25))", 1, 2, 0);
	trans[0][863]	= settr(862,0,864,549,549,"fsm_state = 48", 1, 2, 0);
	trans[0][864]	= settr(863,0,3004,550,550,"output = 3", 1, 2, 0);
	trans[0][904]	= settr(903,0,3004,1,0,".(goto)", 0, 2, 0);
	trans[0][865]	= settr(864,0,866,551,0,"((input==16))", 1, 2, 0);
	trans[0][866]	= settr(865,0,867,552,552,"fsm_state = 48", 1, 2, 0);
	trans[0][867]	= settr(866,0,3004,553,553,"output = 3", 1, 2, 0);
	trans[0][868]	= settr(867,0,869,554,0,"((input==19))", 1, 2, 0);
	trans[0][869]	= settr(868,0,870,555,555,"fsm_state = 48", 1, 2, 0);
	trans[0][870]	= settr(869,0,3004,556,556,"output = 3", 1, 2, 0);
	trans[0][871]	= settr(870,0,872,557,0,"((input==23))", 1, 2, 0);
	trans[0][872]	= settr(871,0,873,558,558,"fsm_state = 48", 1, 2, 0);
	trans[0][873]	= settr(872,0,3004,559,559,"output = 3", 1, 2, 0);
	trans[0][874]	= settr(873,0,875,560,0,"((input==24))", 1, 2, 0);
	trans[0][875]	= settr(874,0,18,561,561,"fsm_state = 43", 1, 2, 0);
	trans[0][876]	= settr(875,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][877]	= settr(876,0,878,562,0,"((input==27))", 1, 2, 0);
	trans[0][878]	= settr(877,0,18,563,563,"fsm_state = 41", 1, 2, 0);
	trans[0][879]	= settr(878,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][880]	= settr(879,0,881,564,0,"((input==22))", 1, 2, 0);
	trans[0][881]	= settr(880,0,18,565,565,"fsm_state = 37", 1, 2, 0);
	trans[0][882]	= settr(881,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][883]	= settr(882,0,884,566,0,"((input==26))", 1, 2, 0);
	trans[0][884]	= settr(883,0,18,567,567,"fsm_state = 37", 1, 2, 0);
	trans[0][885]	= settr(884,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][886]	= settr(885,0,887,568,0,"((input==21))", 1, 2, 0);
	trans[0][887]	= settr(886,0,888,569,569,"fsm_state = 37", 1, 2, 0);
	trans[0][888]	= settr(887,0,3004,570,570,"output = 1", 1, 2, 0);
	trans[0][889]	= settr(888,0,890,571,0,"((input==17))", 1, 2, 0);
	trans[0][890]	= settr(889,0,18,572,572,"fsm_state = 37", 1, 2, 0);
	trans[0][891]	= settr(890,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][892]	= settr(891,0,893,573,0,"((input==18))", 1, 2, 0);
	trans[0][893]	= settr(892,0,18,574,574,"fsm_state = 37", 1, 2, 0);
	trans[0][894]	= settr(893,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][895]	= settr(894,0,896,575,0,"((input==20))", 1, 2, 0);
	trans[0][896]	= settr(895,0,18,576,576,"fsm_state = 37", 1, 2, 0);
	trans[0][897]	= settr(896,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][898]	= settr(897,0,899,577,0,"((input==28))", 1, 2, 0);
	trans[0][899]	= settr(898,0,18,578,578,"fsm_state = 35", 1, 2, 0);
	trans[0][900]	= settr(899,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][901]	= settr(900,0,18,2,0,"else", 0, 2, 0);
	trans[0][902]	= settr(901,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][905]	= settr(904,0,947,579,0,"((fsm_state==36))", 1, 2, 0);
	T = trans[0][947] = settr(946,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(946,0,906,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(946,0,909,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(946,0,912,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(946,0,915,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(946,0,918,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(946,0,921,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(946,0,924,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(946,0,927,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(946,0,930,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(946,0,933,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(946,0,936,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(946,0,939,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(946,0,942,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(946,0,945,0,0,"IF", 0, 2, 0);
	trans[0][906]	= settr(905,0,907,580,0,"((input==28))", 1, 2, 0);
	trans[0][907]	= settr(906,0,908,581,581,"fsm_state = 48", 1, 2, 0);
	trans[0][908]	= settr(907,0,3004,582,582,"output = 3", 1, 2, 0);
	trans[0][948]	= settr(947,0,3004,1,0,".(goto)", 0, 2, 0);
	trans[0][909]	= settr(908,0,910,583,0,"((input==24))", 1, 2, 0);
	trans[0][910]	= settr(909,0,911,584,584,"fsm_state = 48", 1, 2, 0);
	trans[0][911]	= settr(910,0,3004,585,585,"output = 3", 1, 2, 0);
	trans[0][912]	= settr(911,0,913,586,0,"((input==16))", 1, 2, 0);
	trans[0][913]	= settr(912,0,914,587,587,"fsm_state = 48", 1, 2, 0);
	trans[0][914]	= settr(913,0,3004,588,588,"output = 3", 1, 2, 0);
	trans[0][915]	= settr(914,0,916,589,0,"((input==27))", 1, 2, 0);
	trans[0][916]	= settr(915,0,917,590,590,"fsm_state = 38", 1, 2, 0);
	trans[0][917]	= settr(916,0,3004,591,591,"output = 10", 1, 2, 0);
	trans[0][918]	= settr(917,0,919,592,0,"((input==22))", 1, 2, 0);
	trans[0][919]	= settr(918,0,920,593,593,"fsm_state = 36", 1, 2, 0);
	trans[0][920]	= settr(919,0,3004,594,594,"output = 11", 1, 2, 0);
	trans[0][921]	= settr(920,0,922,595,0,"((input==26))", 1, 2, 0);
	trans[0][922]	= settr(921,0,923,596,596,"fsm_state = 36", 1, 2, 0);
	trans[0][923]	= settr(922,0,3004,597,597,"output = 10", 1, 2, 0);
	trans[0][924]	= settr(923,0,925,598,0,"((input==21))", 1, 2, 0);
	trans[0][925]	= settr(924,0,926,599,599,"fsm_state = 36", 1, 2, 0);
	trans[0][926]	= settr(925,0,3004,600,600,"output = 1", 1, 2, 0);
	trans[0][927]	= settr(926,0,928,601,0,"((input==17))", 1, 2, 0);
	trans[0][928]	= settr(927,0,929,602,602,"fsm_state = 36", 1, 2, 0);
	trans[0][929]	= settr(928,0,3004,603,603,"output = 10", 1, 2, 0);
	trans[0][930]	= settr(929,0,931,604,0,"((input==20))", 1, 2, 0);
	trans[0][931]	= settr(930,0,932,605,605,"fsm_state = 36", 1, 2, 0);
	trans[0][932]	= settr(931,0,3004,606,606,"output = 10", 1, 2, 0);
	trans[0][933]	= settr(932,0,934,607,0,"((input==23))", 1, 2, 0);
	trans[0][934]	= settr(933,0,935,608,608,"fsm_state = 36", 1, 2, 0);
	trans[0][935]	= settr(934,0,3004,609,609,"output = 4", 1, 2, 0);
	trans[0][936]	= settr(935,0,937,610,0,"((input==25))", 1, 2, 0);
	trans[0][937]	= settr(936,0,938,611,611,"fsm_state = 30", 1, 2, 0);
	trans[0][938]	= settr(937,0,3004,612,612,"output = 15", 1, 2, 0);
	trans[0][939]	= settr(938,0,940,613,0,"((input==19))", 1, 2, 0);
	trans[0][940]	= settr(939,0,941,614,614,"fsm_state = 29", 1, 2, 0);
	trans[0][941]	= settr(940,0,3004,615,615,"output = 15", 1, 2, 0);
	trans[0][942]	= settr(941,0,943,616,0,"((input==18))", 1, 2, 0);
	trans[0][943]	= settr(942,0,944,617,617,"fsm_state = 28", 1, 2, 0);
	trans[0][944]	= settr(943,0,3004,618,618,"output = 2", 1, 2, 0);
	trans[0][945]	= settr(944,0,18,2,0,"else", 0, 2, 0);
	trans[0][946]	= settr(945,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][949]	= settr(948,0,1018,619,0,"((fsm_state==35))", 1, 2, 0);
	T = trans[0][1018] = settr(1017,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1017,0,950,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1017,0,953,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1017,0,956,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1017,0,959,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1017,0,962,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1017,0,965,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1017,0,968,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1017,0,971,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1017,0,974,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1017,0,977,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1017,0,980,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1017,0,983,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1017,0,986,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1017,0,1016,0,0,"IF", 0, 2, 0);
	trans[0][950]	= settr(949,0,951,620,0,"((input==25))", 1, 2, 0);
	trans[0][951]	= settr(950,0,952,621,621,"fsm_state = 48", 1, 2, 0);
	trans[0][952]	= settr(951,0,3004,622,622,"output = 3", 1, 2, 0);
	trans[0][1019]	= settr(1018,0,3004,1,0,".(goto)", 0, 2, 0);
	trans[0][953]	= settr(952,0,954,623,0,"((input==16))", 1, 2, 0);
	trans[0][954]	= settr(953,0,955,624,624,"fsm_state = 48", 1, 2, 0);
	trans[0][955]	= settr(954,0,3004,625,625,"output = 3", 1, 2, 0);
	trans[0][956]	= settr(955,0,957,626,0,"((input==19))", 1, 2, 0);
	trans[0][957]	= settr(956,0,958,627,627,"fsm_state = 48", 1, 2, 0);
	trans[0][958]	= settr(957,0,3004,628,628,"output = 3", 1, 2, 0);
	trans[0][959]	= settr(958,0,960,629,0,"((input==23))", 1, 2, 0);
	trans[0][960]	= settr(959,0,961,630,630,"fsm_state = 48", 1, 2, 0);
	trans[0][961]	= settr(960,0,3004,631,631,"output = 3", 1, 2, 0);
	trans[0][962]	= settr(961,0,963,632,0,"((input==24))", 1, 2, 0);
	trans[0][963]	= settr(962,0,18,633,633,"fsm_state = 43", 1, 2, 0);
	trans[0][964]	= settr(963,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][965]	= settr(964,0,966,634,0,"((input==27))", 1, 2, 0);
	trans[0][966]	= settr(965,0,18,635,635,"fsm_state = 39", 1, 2, 0);
	trans[0][967]	= settr(966,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][968]	= settr(967,0,969,636,0,"((input==22))", 1, 2, 0);
	trans[0][969]	= settr(968,0,18,637,637,"fsm_state = 35", 1, 2, 0);
	trans[0][970]	= settr(969,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][971]	= settr(970,0,972,638,0,"((input==26))", 1, 2, 0);
	trans[0][972]	= settr(971,0,18,639,639,"fsm_state = 35", 1, 2, 0);
	trans[0][973]	= settr(972,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][974]	= settr(973,0,975,640,0,"((input==21))", 1, 2, 0);
	trans[0][975]	= settr(974,0,976,641,641,"fsm_state = 35", 1, 2, 0);
	trans[0][976]	= settr(975,0,3004,642,642,"output = 1", 1, 2, 0);
	trans[0][977]	= settr(976,0,978,643,0,"((input==17))", 1, 2, 0);
	trans[0][978]	= settr(977,0,18,644,644,"fsm_state = 35", 1, 2, 0);
	trans[0][979]	= settr(978,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][980]	= settr(979,0,981,645,0,"((input==18))", 1, 2, 0);
	trans[0][981]	= settr(980,0,18,646,646,"fsm_state = 35", 1, 2, 0);
	trans[0][982]	= settr(981,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][983]	= settr(982,0,984,647,0,"((input==20))", 1, 2, 0);
	trans[0][984]	= settr(983,0,18,648,648,"fsm_state = 35", 1, 2, 0);
	trans[0][985]	= settr(984,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][986]	= settr(985,0,987,649,0,"((input==28))", 1, 2, 0);
	trans[0][987]	= settr(986,0,988,650,650,"fsm_state = 27", 1, 2, 0);
	trans[0][988]	= settr(987,0,989,651,651,"output = 13", 1, 2, 0);
	trans[0][989]	= settr(988,0,1013,652,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][1013] = settr(1012,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1012,0,1006,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][1006]	= settr(1005,32,1011,653,653,"D_STEP13", 1, 2, 0);
	T = trans[0][1011] = settr(1010,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1010,0,1007,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1010,0,1009,0,0,"IF", 0, 2, 0);
	trans[0][1007]	= settr(1006,0,1,654,0,"((dealt==0))", 1, 2, 0);
	trans[0][1008]	= settr(1007,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][1012]	= settr(1011,0,1014,1,0,".(goto)", 0, 2, 0);
	trans[0][1009]	= settr(1008,0,1010,2,0,"else", 0, 2, 0);
	trans[0][1010]	= settr(1009,0,1014,1,0,"(1)", 0, 2, 0);
	trans[0][1014]	= settr(1013,0,1015,655,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][1015]	= settr(1014,0,3004,656,656,"output = 5", 1, 2, 0);
	trans[0][1016]	= settr(1015,0,18,2,0,"else", 0, 2, 0);
	trans[0][1017]	= settr(1016,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1020]	= settr(1019,0,1062,657,0,"((fsm_state==34))", 1, 2, 0);
	T = trans[0][1062] = settr(1061,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1061,0,1021,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1061,0,1024,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1061,0,1027,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1061,0,1030,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1061,0,1033,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1061,0,1036,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1061,0,1039,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1061,0,1042,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1061,0,1045,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1061,0,1048,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1061,0,1051,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1061,0,1054,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1061,0,1057,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1061,0,1060,0,0,"IF", 0, 2, 0);
	trans[0][1021]	= settr(1020,0,1022,658,0,"((input==28))", 1, 2, 0);
	trans[0][1022]	= settr(1021,0,1023,659,659,"fsm_state = 47", 1, 2, 0);
	trans[0][1023]	= settr(1022,0,3004,660,660,"output = 3", 1, 2, 0);
	trans[0][1063]	= settr(1062,0,3004,1,0,".(goto)", 0, 2, 0);
	trans[0][1024]	= settr(1023,0,1025,661,0,"((input==25))", 1, 2, 0);
	trans[0][1025]	= settr(1024,0,1026,662,662,"fsm_state = 47", 1, 2, 0);
	trans[0][1026]	= settr(1025,0,3004,663,663,"output = 3", 1, 2, 0);
	trans[0][1027]	= settr(1026,0,1028,664,0,"((input==16))", 1, 2, 0);
	trans[0][1028]	= settr(1027,0,1029,665,665,"fsm_state = 47", 1, 2, 0);
	trans[0][1029]	= settr(1028,0,3004,666,666,"output = 3", 1, 2, 0);
	trans[0][1030]	= settr(1029,0,1031,667,0,"((input==19))", 1, 2, 0);
	trans[0][1031]	= settr(1030,0,1032,668,668,"fsm_state = 47", 1, 2, 0);
	trans[0][1032]	= settr(1031,0,3004,669,669,"output = 3", 1, 2, 0);
	trans[0][1033]	= settr(1032,0,1034,670,0,"((input==23))", 1, 2, 0);
	trans[0][1034]	= settr(1033,0,1035,671,671,"fsm_state = 47", 1, 2, 0);
	trans[0][1035]	= settr(1034,0,3004,672,672,"output = 3", 1, 2, 0);
	trans[0][1036]	= settr(1035,0,1037,673,0,"((input==24))", 1, 2, 0);
	trans[0][1037]	= settr(1036,0,18,674,674,"fsm_state = 42", 1, 2, 0);
	trans[0][1038]	= settr(1037,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1039]	= settr(1038,0,1040,675,0,"((input==22))", 1, 2, 0);
	trans[0][1040]	= settr(1039,0,18,676,676,"fsm_state = 34", 1, 2, 0);
	trans[0][1041]	= settr(1040,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1042]	= settr(1041,0,1043,677,0,"((input==26))", 1, 2, 0);
	trans[0][1043]	= settr(1042,0,1044,678,678,"fsm_state = 34", 1, 2, 0);
	trans[0][1044]	= settr(1043,0,3004,679,679,"output = 9", 1, 2, 0);
	trans[0][1045]	= settr(1044,0,1046,680,0,"((input==17))", 1, 2, 0);
	trans[0][1046]	= settr(1045,0,1047,681,681,"fsm_state = 34", 1, 2, 0);
	trans[0][1047]	= settr(1046,0,3004,682,682,"output = 9", 1, 2, 0);
	trans[0][1048]	= settr(1047,0,1049,683,0,"((input==18))", 1, 2, 0);
	trans[0][1049]	= settr(1048,0,18,684,684,"fsm_state = 34", 1, 2, 0);
	trans[0][1050]	= settr(1049,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1051]	= settr(1050,0,1052,685,0,"((input==27))", 1, 2, 0);
	trans[0][1052]	= settr(1051,0,1053,686,686,"fsm_state = 34", 1, 2, 0);
	trans[0][1053]	= settr(1052,0,3004,687,687,"output = 9", 1, 2, 0);
	trans[0][1054]	= settr(1053,0,1055,688,0,"((input==20))", 1, 2, 0);
	trans[0][1055]	= settr(1054,0,1056,689,689,"fsm_state = 34", 1, 2, 0);
	trans[0][1056]	= settr(1055,0,3004,690,690,"output = 9", 1, 2, 0);
	trans[0][1057]	= settr(1056,0,1058,691,0,"((input==21))", 1, 2, 0);
	trans[0][1058]	= settr(1057,0,18,692,692,"fsm_state = 27", 1, 2, 0);
	trans[0][1059]	= settr(1058,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1060]	= settr(1059,0,18,2,0,"else", 0, 2, 0);
	trans[0][1061]	= settr(1060,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1064]	= settr(1063,0,1106,693,0,"((fsm_state==33))", 1, 2, 0);
	T = trans[0][1106] = settr(1105,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1105,0,1065,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1105,0,1068,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1105,0,1071,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1105,0,1074,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1105,0,1077,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1105,0,1080,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1105,0,1083,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1105,0,1086,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1105,0,1089,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1105,0,1092,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1105,0,1095,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1105,0,1098,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1105,0,1101,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1105,0,1104,0,0,"IF", 0, 2, 0);
	trans[0][1065]	= settr(1064,0,1066,694,0,"((input==25))", 1, 2, 0);
	trans[0][1066]	= settr(1065,0,1067,695,695,"fsm_state = 47", 1, 2, 0);
	trans[0][1067]	= settr(1066,0,3004,696,696,"output = 3", 1, 2, 0);
	trans[0][1107]	= settr(1106,0,3004,1,0,".(goto)", 0, 2, 0);
	trans[0][1068]	= settr(1067,0,1069,697,0,"((input==16))", 1, 2, 0);
	trans[0][1069]	= settr(1068,0,1070,698,698,"fsm_state = 47", 1, 2, 0);
	trans[0][1070]	= settr(1069,0,3004,699,699,"output = 3", 1, 2, 0);
	trans[0][1071]	= settr(1070,0,1072,700,0,"((input==19))", 1, 2, 0);
	trans[0][1072]	= settr(1071,0,1073,701,701,"fsm_state = 47", 1, 2, 0);
	trans[0][1073]	= settr(1072,0,3004,702,702,"output = 3", 1, 2, 0);
	trans[0][1074]	= settr(1073,0,1075,703,0,"((input==23))", 1, 2, 0);
	trans[0][1075]	= settr(1074,0,1076,704,704,"fsm_state = 47", 1, 2, 0);
	trans[0][1076]	= settr(1075,0,3004,705,705,"output = 3", 1, 2, 0);
	trans[0][1077]	= settr(1076,0,1078,706,0,"((input==24))", 1, 2, 0);
	trans[0][1078]	= settr(1077,0,18,707,707,"fsm_state = 45", 1, 2, 0);
	trans[0][1079]	= settr(1078,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1080]	= settr(1079,0,1081,708,0,"((input==26))", 1, 2, 0);
	trans[0][1081]	= settr(1080,0,1082,709,709,"fsm_state = 33", 1, 2, 0);
	trans[0][1082]	= settr(1081,0,3004,710,710,"output = 9", 1, 2, 0);
	trans[0][1083]	= settr(1082,0,1084,711,0,"((input==17))", 1, 2, 0);
	trans[0][1084]	= settr(1083,0,1085,712,712,"fsm_state = 33", 1, 2, 0);
	trans[0][1085]	= settr(1084,0,3004,713,713,"output = 9", 1, 2, 0);
	trans[0][1086]	= settr(1085,0,1087,714,0,"((input==27))", 1, 2, 0);
	trans[0][1087]	= settr(1086,0,1088,715,715,"fsm_state = 33", 1, 2, 0);
	trans[0][1088]	= settr(1087,0,3004,716,716,"output = 9", 1, 2, 0);
	trans[0][1089]	= settr(1088,0,1090,717,0,"((input==20))", 1, 2, 0);
	trans[0][1090]	= settr(1089,0,1091,718,718,"fsm_state = 33", 1, 2, 0);
	trans[0][1091]	= settr(1090,0,3004,719,719,"output = 9", 1, 2, 0);
	trans[0][1092]	= settr(1091,0,1093,720,0,"((input==28))", 1, 2, 0);
	trans[0][1093]	= settr(1092,0,18,721,721,"fsm_state = 31", 1, 2, 0);
	trans[0][1094]	= settr(1093,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1095]	= settr(1094,0,1096,722,0,"((input==21))", 1, 2, 0);
	trans[0][1096]	= settr(1095,0,1097,723,723,"fsm_state = 30", 1, 2, 0);
	trans[0][1097]	= settr(1096,0,3004,724,724,"output = 10", 1, 2, 0);
	trans[0][1098]	= settr(1097,0,1099,725,0,"((input==22))", 1, 2, 0);
	trans[0][1099]	= settr(1098,0,18,726,726,"fsm_state = 26", 1, 2, 0);
	trans[0][1100]	= settr(1099,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1101]	= settr(1100,0,1102,727,0,"((input==18))", 1, 2, 0);
	trans[0][1102]	= settr(1101,0,18,728,728,"fsm_state = 25", 1, 2, 0);
	trans[0][1103]	= settr(1102,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1104]	= settr(1103,0,18,2,0,"else", 0, 2, 0);
	trans[0][1105]	= settr(1104,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1108]	= settr(1107,0,1150,729,0,"((fsm_state==32))", 1, 2, 0);
	T = trans[0][1150] = settr(1149,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1149,0,1109,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1149,0,1112,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1149,0,1115,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1149,0,1118,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1149,0,1121,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1149,0,1124,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1149,0,1127,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1149,0,1130,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1149,0,1133,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1149,0,1136,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1149,0,1139,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1149,0,1142,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1149,0,1145,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1149,0,1148,0,0,"IF", 0, 2, 0);
	trans[0][1109]	= settr(1108,0,1110,730,0,"((input==28))", 1, 2, 0);
	trans[0][1110]	= settr(1109,0,1111,731,731,"fsm_state = 47", 1, 2, 0);
	trans[0][1111]	= settr(1110,0,3004,732,732,"output = 3", 1, 2, 0);
	trans[0][1151]	= settr(1150,0,3004,1,0,".(goto)", 0, 2, 0);
	trans[0][1112]	= settr(1111,0,1113,733,0,"((input==24))", 1, 2, 0);
	trans[0][1113]	= settr(1112,0,1114,734,734,"fsm_state = 47", 1, 2, 0);
	trans[0][1114]	= settr(1113,0,3004,735,735,"output = 3", 1, 2, 0);
	trans[0][1115]	= settr(1114,0,1116,736,0,"((input==16))", 1, 2, 0);
	trans[0][1116]	= settr(1115,0,1117,737,737,"fsm_state = 47", 1, 2, 0);
	trans[0][1117]	= settr(1116,0,3004,738,738,"output = 3", 1, 2, 0);
	trans[0][1118]	= settr(1117,0,1119,739,0,"((input==22))", 1, 2, 0);
	trans[0][1119]	= settr(1118,0,1120,740,740,"fsm_state = 32", 1, 2, 0);
	trans[0][1120]	= settr(1119,0,3004,741,741,"output = 10", 1, 2, 0);
	trans[0][1121]	= settr(1120,0,1122,742,0,"((input==26))", 1, 2, 0);
	trans[0][1122]	= settr(1121,0,1123,743,743,"fsm_state = 32", 1, 2, 0);
	trans[0][1123]	= settr(1122,0,3004,744,744,"output = 9", 1, 2, 0);
	trans[0][1124]	= settr(1123,0,1125,745,0,"((input==17))", 1, 2, 0);
	trans[0][1125]	= settr(1124,0,1126,746,746,"fsm_state = 32", 1, 2, 0);
	trans[0][1126]	= settr(1125,0,3004,747,747,"output = 9", 1, 2, 0);
	trans[0][1127]	= settr(1126,0,1128,748,0,"((input==18))", 1, 2, 0);
	trans[0][1128]	= settr(1127,0,1129,749,749,"fsm_state = 32", 1, 2, 0);
	trans[0][1129]	= settr(1128,0,3004,750,750,"output = 10", 1, 2, 0);
	trans[0][1130]	= settr(1129,0,1131,751,0,"((input==27))", 1, 2, 0);
	trans[0][1131]	= settr(1130,0,1132,752,752,"fsm_state = 32", 1, 2, 0);
	trans[0][1132]	= settr(1131,0,3004,753,753,"output = 9", 1, 2, 0);
	trans[0][1133]	= settr(1132,0,1134,754,0,"((input==20))", 1, 2, 0);
	trans[0][1134]	= settr(1133,0,1135,755,755,"fsm_state = 32", 1, 2, 0);
	trans[0][1135]	= settr(1134,0,3004,756,756,"output = 9", 1, 2, 0);
	trans[0][1136]	= settr(1135,0,1137,757,0,"((input==23))", 1, 2, 0);
	trans[0][1137]	= settr(1136,0,1138,758,758,"fsm_state = 32", 1, 2, 0);
	trans[0][1138]	= settr(1137,0,3004,759,759,"output = 4", 1, 2, 0);
	trans[0][1139]	= settr(1138,0,1140,760,0,"((input==19))", 1, 2, 0);
	trans[0][1140]	= settr(1139,0,1141,761,761,"fsm_state = 24", 1, 2, 0);
	trans[0][1141]	= settr(1140,0,3004,762,762,"output = 15", 1, 2, 0);
	trans[0][1142]	= settr(1141,0,1143,763,0,"((input==21))", 1, 2, 0);
	trans[0][1143]	= settr(1142,0,1144,764,764,"fsm_state = 23", 1, 2, 0);
	trans[0][1144]	= settr(1143,0,3004,765,765,"output = 8", 1, 2, 0);
	trans[0][1145]	= settr(1144,0,1146,766,0,"((input==25))", 1, 2, 0);
	trans[0][1146]	= settr(1145,0,1147,767,767,"fsm_state = 22", 1, 2, 0);
	trans[0][1147]	= settr(1146,0,3004,768,768,"output = 15", 1, 2, 0);
	trans[0][1148]	= settr(1147,0,18,2,0,"else", 0, 2, 0);
	trans[0][1149]	= settr(1148,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1152]	= settr(1151,0,1221,769,0,"((fsm_state==31))", 1, 2, 0);
	T = trans[0][1221] = settr(1220,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1220,0,1153,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1220,0,1156,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1220,0,1159,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1220,0,1162,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1220,0,1165,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1220,0,1168,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1220,0,1171,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1220,0,1174,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1220,0,1177,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1220,0,1180,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1220,0,1183,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1220,0,1186,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1220,0,1189,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1220,0,1219,0,0,"IF", 0, 2, 0);
	trans[0][1153]	= settr(1152,0,1154,770,0,"((input==25))", 1, 2, 0);
	trans[0][1154]	= settr(1153,0,1155,771,771,"fsm_state = 47", 1, 2, 0);
	trans[0][1155]	= settr(1154,0,3004,772,772,"output = 3", 1, 2, 0);
	trans[0][1222]	= settr(1221,0,3004,1,0,".(goto)", 0, 2, 0);
	trans[0][1156]	= settr(1155,0,1157,773,0,"((input==16))", 1, 2, 0);
	trans[0][1157]	= settr(1156,0,1158,774,774,"fsm_state = 47", 1, 2, 0);
	trans[0][1158]	= settr(1157,0,3004,775,775,"output = 3", 1, 2, 0);
	trans[0][1159]	= settr(1158,0,1160,776,0,"((input==19))", 1, 2, 0);
	trans[0][1160]	= settr(1159,0,1161,777,777,"fsm_state = 47", 1, 2, 0);
	trans[0][1161]	= settr(1160,0,3004,778,778,"output = 3", 1, 2, 0);
	trans[0][1162]	= settr(1161,0,1163,779,0,"((input==23))", 1, 2, 0);
	trans[0][1163]	= settr(1162,0,1164,780,780,"fsm_state = 47", 1, 2, 0);
	trans[0][1164]	= settr(1163,0,3004,781,781,"output = 3", 1, 2, 0);
	trans[0][1165]	= settr(1164,0,1166,782,0,"((input==24))", 1, 2, 0);
	trans[0][1166]	= settr(1165,0,18,783,783,"fsm_state = 45", 1, 2, 0);
	trans[0][1167]	= settr(1166,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1168]	= settr(1167,0,1169,784,0,"((input==26))", 1, 2, 0);
	trans[0][1169]	= settr(1168,0,1170,785,785,"fsm_state = 31", 1, 2, 0);
	trans[0][1170]	= settr(1169,0,3004,786,786,"output = 9", 1, 2, 0);
	trans[0][1171]	= settr(1170,0,1172,787,0,"((input==17))", 1, 2, 0);
	trans[0][1172]	= settr(1171,0,1173,788,788,"fsm_state = 31", 1, 2, 0);
	trans[0][1173]	= settr(1172,0,3004,789,789,"output = 9", 1, 2, 0);
	trans[0][1174]	= settr(1173,0,1175,790,0,"((input==27))", 1, 2, 0);
	trans[0][1175]	= settr(1174,0,1176,791,791,"fsm_state = 31", 1, 2, 0);
	trans[0][1176]	= settr(1175,0,3004,792,792,"output = 9", 1, 2, 0);
	trans[0][1177]	= settr(1176,0,1178,793,0,"((input==20))", 1, 2, 0);
	trans[0][1178]	= settr(1177,0,1179,794,794,"fsm_state = 31", 1, 2, 0);
	trans[0][1179]	= settr(1178,0,3004,795,795,"output = 9", 1, 2, 0);
	trans[0][1180]	= settr(1179,0,1181,796,0,"((input==21))", 1, 2, 0);
	trans[0][1181]	= settr(1180,0,1182,797,797,"fsm_state = 29", 1, 2, 0);
	trans[0][1182]	= settr(1181,0,3004,798,798,"output = 10", 1, 2, 0);
	trans[0][1183]	= settr(1182,0,1184,799,0,"((input==22))", 1, 2, 0);
	trans[0][1184]	= settr(1183,0,18,800,800,"fsm_state = 21", 1, 2, 0);
	trans[0][1185]	= settr(1184,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1186]	= settr(1185,0,1187,801,0,"((input==18))", 1, 2, 0);
	trans[0][1187]	= settr(1186,0,18,802,802,"fsm_state = 20", 1, 2, 0);
	trans[0][1188]	= settr(1187,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1189]	= settr(1188,0,1190,803,0,"((input==28))", 1, 2, 0);
	trans[0][1190]	= settr(1189,0,1191,804,804,"fsm_state = 19", 1, 2, 0);
	trans[0][1191]	= settr(1190,0,1192,805,805,"output = 13", 1, 2, 0);
	trans[0][1192]	= settr(1191,0,1216,806,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][1216] = settr(1215,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1215,0,1209,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][1209]	= settr(1208,32,1214,807,807,"D_STEP13", 1, 2, 0);
	T = trans[0][1214] = settr(1213,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1213,0,1210,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1213,0,1212,0,0,"IF", 0, 2, 0);
	trans[0][1210]	= settr(1209,0,1,808,0,"((dealt==0))", 1, 2, 0);
	trans[0][1211]	= settr(1210,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][1215]	= settr(1214,0,1217,1,0,".(goto)", 0, 2, 0);
	trans[0][1212]	= settr(1211,0,1213,2,0,"else", 0, 2, 0);
	trans[0][1213]	= settr(1212,0,1217,1,0,"(1)", 0, 2, 0);
	trans[0][1217]	= settr(1216,0,1218,809,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][1218]	= settr(1217,0,3004,810,810,"output = 5", 1, 2, 0);
	trans[0][1219]	= settr(1218,0,18,2,0,"else", 0, 2, 0);
	trans[0][1220]	= settr(1219,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1223]	= settr(1222,0,1265,811,0,"((fsm_state==30))", 1, 2, 0);
	T = trans[0][1265] = settr(1264,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1264,0,1224,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1264,0,1227,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1264,0,1230,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1264,0,1233,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1264,0,1236,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1264,0,1239,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1264,0,1242,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1264,0,1245,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1264,0,1248,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1264,0,1251,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1264,0,1254,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1264,0,1257,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1264,0,1260,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1264,0,1263,0,0,"IF", 0, 2, 0);
	trans[0][1224]	= settr(1223,0,1225,812,0,"((input==25))", 1, 2, 0);
	trans[0][1225]	= settr(1224,0,1226,813,813,"fsm_state = 48", 1, 2, 0);
	trans[0][1226]	= settr(1225,0,3004,814,814,"output = 3", 1, 2, 0);
	trans[0][1266]	= settr(1265,0,3004,1,0,".(goto)", 0, 2, 0);
	trans[0][1227]	= settr(1226,0,1228,815,0,"((input==16))", 1, 2, 0);
	trans[0][1228]	= settr(1227,0,1229,816,816,"fsm_state = 48", 1, 2, 0);
	trans[0][1229]	= settr(1228,0,3004,817,817,"output = 3", 1, 2, 0);
	trans[0][1230]	= settr(1229,0,1231,818,0,"((input==19))", 1, 2, 0);
	trans[0][1231]	= settr(1230,0,1232,819,819,"fsm_state = 48", 1, 2, 0);
	trans[0][1232]	= settr(1231,0,3004,820,820,"output = 3", 1, 2, 0);
	trans[0][1233]	= settr(1232,0,1234,821,0,"((input==23))", 1, 2, 0);
	trans[0][1234]	= settr(1233,0,1235,822,822,"fsm_state = 48", 1, 2, 0);
	trans[0][1235]	= settr(1234,0,3004,823,823,"output = 3", 1, 2, 0);
	trans[0][1236]	= settr(1235,0,1237,824,0,"((input==24))", 1, 2, 0);
	trans[0][1237]	= settr(1236,0,18,825,825,"fsm_state = 43", 1, 2, 0);
	trans[0][1238]	= settr(1237,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1239]	= settr(1238,0,1240,826,0,"((input==27))", 1, 2, 0);
	trans[0][1240]	= settr(1239,0,1241,827,827,"fsm_state = 33", 1, 2, 0);
	trans[0][1241]	= settr(1240,0,3004,828,828,"output = 10", 1, 2, 0);
	trans[0][1242]	= settr(1241,0,1243,829,0,"((input==26))", 1, 2, 0);
	trans[0][1243]	= settr(1242,0,1244,830,830,"fsm_state = 30", 1, 2, 0);
	trans[0][1244]	= settr(1243,0,3004,831,831,"output = 10", 1, 2, 0);
	trans[0][1245]	= settr(1244,0,1246,832,0,"((input==21))", 1, 2, 0);
	trans[0][1246]	= settr(1245,0,1247,833,833,"fsm_state = 30", 1, 2, 0);
	trans[0][1247]	= settr(1246,0,3004,834,834,"output = 1", 1, 2, 0);
	trans[0][1248]	= settr(1247,0,1249,835,0,"((input==17))", 1, 2, 0);
	trans[0][1249]	= settr(1248,0,1250,836,836,"fsm_state = 30", 1, 2, 0);
	trans[0][1250]	= settr(1249,0,3004,837,837,"output = 10", 1, 2, 0);
	trans[0][1251]	= settr(1250,0,1252,838,0,"((input==20))", 1, 2, 0);
	trans[0][1252]	= settr(1251,0,1253,839,839,"fsm_state = 30", 1, 2, 0);
	trans[0][1253]	= settr(1252,0,3004,840,840,"output = 10", 1, 2, 0);
	trans[0][1254]	= settr(1253,0,1255,841,0,"((input==28))", 1, 2, 0);
	trans[0][1255]	= settr(1254,0,18,842,842,"fsm_state = 29", 1, 2, 0);
	trans[0][1256]	= settr(1255,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1257]	= settr(1256,0,1258,843,0,"((input==22))", 1, 2, 0);
	trans[0][1258]	= settr(1257,0,18,844,844,"fsm_state = 18", 1, 2, 0);
	trans[0][1259]	= settr(1258,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1260]	= settr(1259,0,1261,845,0,"((input==18))", 1, 2, 0);
	trans[0][1261]	= settr(1260,0,18,846,846,"fsm_state = 17", 1, 2, 0);
	trans[0][1262]	= settr(1261,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1263]	= settr(1262,0,18,2,0,"else", 0, 2, 0);
	trans[0][1264]	= settr(1263,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1267]	= settr(1266,0,1336,847,0,"((fsm_state==29))", 1, 2, 0);
	T = trans[0][1336] = settr(1335,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1335,0,1268,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1335,0,1271,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1335,0,1274,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1335,0,1277,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1335,0,1280,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1335,0,1283,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1335,0,1286,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1335,0,1289,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1335,0,1292,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1335,0,1295,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1335,0,1298,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1335,0,1301,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1335,0,1331,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1335,0,1334,0,0,"IF", 0, 2, 0);
	trans[0][1268]	= settr(1267,0,1269,848,0,"((input==25))", 1, 2, 0);
	trans[0][1269]	= settr(1268,0,1270,849,849,"fsm_state = 48", 1, 2, 0);
	trans[0][1270]	= settr(1269,0,3004,850,850,"output = 3", 1, 2, 0);
	trans[0][1337]	= settr(1336,0,3004,1,0,".(goto)", 0, 2, 0);
	trans[0][1271]	= settr(1270,0,1272,851,0,"((input==16))", 1, 2, 0);
	trans[0][1272]	= settr(1271,0,1273,852,852,"fsm_state = 48", 1, 2, 0);
	trans[0][1273]	= settr(1272,0,3004,853,853,"output = 3", 1, 2, 0);
	trans[0][1274]	= settr(1273,0,1275,854,0,"((input==19))", 1, 2, 0);
	trans[0][1275]	= settr(1274,0,1276,855,855,"fsm_state = 48", 1, 2, 0);
	trans[0][1276]	= settr(1275,0,3004,856,856,"output = 3", 1, 2, 0);
	trans[0][1277]	= settr(1276,0,1278,857,0,"((input==23))", 1, 2, 0);
	trans[0][1278]	= settr(1277,0,1279,858,858,"fsm_state = 48", 1, 2, 0);
	trans[0][1279]	= settr(1278,0,3004,859,859,"output = 3", 1, 2, 0);
	trans[0][1280]	= settr(1279,0,1281,860,0,"((input==24))", 1, 2, 0);
	trans[0][1281]	= settr(1280,0,18,861,861,"fsm_state = 43", 1, 2, 0);
	trans[0][1282]	= settr(1281,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1283]	= settr(1282,0,1284,862,0,"((input==27))", 1, 2, 0);
	trans[0][1284]	= settr(1283,0,1285,863,863,"fsm_state = 31", 1, 2, 0);
	trans[0][1285]	= settr(1284,0,3004,864,864,"output = 10", 1, 2, 0);
	trans[0][1286]	= settr(1285,0,1287,865,0,"((input==26))", 1, 2, 0);
	trans[0][1287]	= settr(1286,0,1288,866,866,"fsm_state = 29", 1, 2, 0);
	trans[0][1288]	= settr(1287,0,3004,867,867,"output = 10", 1, 2, 0);
	trans[0][1289]	= settr(1288,0,1290,868,0,"((input==21))", 1, 2, 0);
	trans[0][1290]	= settr(1289,0,1291,869,869,"fsm_state = 29", 1, 2, 0);
	trans[0][1291]	= settr(1290,0,3004,870,870,"output = 1", 1, 2, 0);
	trans[0][1292]	= settr(1291,0,1293,871,0,"((input==17))", 1, 2, 0);
	trans[0][1293]	= settr(1292,0,1294,872,872,"fsm_state = 29", 1, 2, 0);
	trans[0][1294]	= settr(1293,0,3004,873,873,"output = 10", 1, 2, 0);
	trans[0][1295]	= settr(1294,0,1296,874,0,"((input==20))", 1, 2, 0);
	trans[0][1296]	= settr(1295,0,1297,875,875,"fsm_state = 29", 1, 2, 0);
	trans[0][1297]	= settr(1296,0,3004,876,876,"output = 10", 1, 2, 0);
	trans[0][1298]	= settr(1297,0,1299,877,0,"((input==22))", 1, 2, 0);
	trans[0][1299]	= settr(1298,0,18,878,878,"fsm_state = 16", 1, 2, 0);
	trans[0][1300]	= settr(1299,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1301]	= settr(1300,0,1302,879,0,"((input==28))", 1, 2, 0);
	trans[0][1302]	= settr(1301,0,1303,880,880,"fsm_state = 15", 1, 2, 0);
	trans[0][1303]	= settr(1302,0,1304,881,881,"output = 13", 1, 2, 0);
	trans[0][1304]	= settr(1303,0,1328,882,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][1328] = settr(1327,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1327,0,1321,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][1321]	= settr(1320,32,1326,883,883,"D_STEP13", 1, 2, 0);
	T = trans[0][1326] = settr(1325,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1325,0,1322,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1325,0,1324,0,0,"IF", 0, 2, 0);
	trans[0][1322]	= settr(1321,0,1,884,0,"((dealt==0))", 1, 2, 0);
	trans[0][1323]	= settr(1322,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][1327]	= settr(1326,0,1329,1,0,".(goto)", 0, 2, 0);
	trans[0][1324]	= settr(1323,0,1325,2,0,"else", 0, 2, 0);
	trans[0][1325]	= settr(1324,0,1329,1,0,"(1)", 0, 2, 0);
	trans[0][1329]	= settr(1328,0,1330,885,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][1330]	= settr(1329,0,3004,886,886,"output = 5", 1, 2, 0);
	trans[0][1331]	= settr(1330,0,1332,887,0,"((input==18))", 1, 2, 0);
	trans[0][1332]	= settr(1331,0,18,888,888,"fsm_state = 14", 1, 2, 0);
	trans[0][1333]	= settr(1332,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1334]	= settr(1333,0,18,2,0,"else", 0, 2, 0);
	trans[0][1335]	= settr(1334,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1338]	= settr(1337,0,1380,889,0,"((fsm_state==28))", 1, 2, 0);
	T = trans[0][1380] = settr(1379,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1379,0,1339,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1379,0,1342,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1379,0,1345,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1379,0,1348,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1379,0,1351,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1379,0,1354,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1379,0,1357,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1379,0,1360,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1379,0,1363,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1379,0,1366,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1379,0,1369,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1379,0,1372,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1379,0,1375,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1379,0,1378,0,0,"IF", 0, 2, 0);
	trans[0][1339]	= settr(1338,0,1340,890,0,"((input==28))", 1, 2, 0);
	trans[0][1340]	= settr(1339,0,1341,891,891,"fsm_state = 48", 1, 2, 0);
	trans[0][1341]	= settr(1340,0,3004,892,892,"output = 3", 1, 2, 0);
	trans[0][1381]	= settr(1380,0,3004,1,0,".(goto)", 0, 2, 0);
	trans[0][1342]	= settr(1341,0,1343,893,0,"((input==24))", 1, 2, 0);
	trans[0][1343]	= settr(1342,0,1344,894,894,"fsm_state = 48", 1, 2, 0);
	trans[0][1344]	= settr(1343,0,3004,895,895,"output = 3", 1, 2, 0);
	trans[0][1345]	= settr(1344,0,1346,896,0,"((input==16))", 1, 2, 0);
	trans[0][1346]	= settr(1345,0,1347,897,897,"fsm_state = 48", 1, 2, 0);
	trans[0][1347]	= settr(1346,0,3004,898,898,"output = 3", 1, 2, 0);
	trans[0][1348]	= settr(1347,0,1349,899,0,"((input==27))", 1, 2, 0);
	trans[0][1349]	= settr(1348,0,18,900,900,"fsm_state = 32", 1, 2, 0);
	trans[0][1350]	= settr(1349,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1351]	= settr(1350,0,1352,901,0,"((input==22))", 1, 2, 0);
	trans[0][1352]	= settr(1351,0,1353,902,902,"fsm_state = 28", 1, 2, 0);
	trans[0][1353]	= settr(1352,0,3004,903,903,"output = 10", 1, 2, 0);
	trans[0][1354]	= settr(1353,0,1355,904,0,"((input==26))", 1, 2, 0);
	trans[0][1355]	= settr(1354,0,18,905,905,"fsm_state = 28", 1, 2, 0);
	trans[0][1356]	= settr(1355,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1357]	= settr(1356,0,1358,906,0,"((input==21))", 1, 2, 0);
	trans[0][1358]	= settr(1357,0,1359,907,907,"fsm_state = 28", 1, 2, 0);
	trans[0][1359]	= settr(1358,0,3004,908,908,"output = 1", 1, 2, 0);
	trans[0][1360]	= settr(1359,0,1361,909,0,"((input==17))", 1, 2, 0);
	trans[0][1361]	= settr(1360,0,18,910,910,"fsm_state = 28", 1, 2, 0);
	trans[0][1362]	= settr(1361,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1363]	= settr(1362,0,1364,911,0,"((input==18))", 1, 2, 0);
	trans[0][1364]	= settr(1363,0,1365,912,912,"fsm_state = 28", 1, 2, 0);
	trans[0][1365]	= settr(1364,0,3004,913,913,"output = 10", 1, 2, 0);
	trans[0][1366]	= settr(1365,0,1367,914,0,"((input==20))", 1, 2, 0);
	trans[0][1367]	= settr(1366,0,18,915,915,"fsm_state = 28", 1, 2, 0);
	trans[0][1368]	= settr(1367,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1369]	= settr(1368,0,1370,916,0,"((input==23))", 1, 2, 0);
	trans[0][1370]	= settr(1369,0,1371,917,917,"fsm_state = 28", 1, 2, 0);
	trans[0][1371]	= settr(1370,0,3004,918,918,"output = 4", 1, 2, 0);
	trans[0][1372]	= settr(1371,0,1373,919,0,"((input==19))", 1, 2, 0);
	trans[0][1373]	= settr(1372,0,1374,920,920,"fsm_state = 13", 1, 2, 0);
	trans[0][1374]	= settr(1373,0,3004,921,921,"output = 15", 1, 2, 0);
	trans[0][1375]	= settr(1374,0,1376,922,0,"((input==25))", 1, 2, 0);
	trans[0][1376]	= settr(1375,0,1377,923,923,"fsm_state = 12", 1, 2, 0);
	trans[0][1377]	= settr(1376,0,3004,924,924,"output = 15", 1, 2, 0);
	trans[0][1378]	= settr(1377,0,18,2,0,"else", 0, 2, 0);
	trans[0][1379]	= settr(1378,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1382]	= settr(1381,0,1424,925,0,"((fsm_state==27))", 1, 2, 0);
	T = trans[0][1424] = settr(1423,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1423,0,1383,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1423,0,1386,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1423,0,1389,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1423,0,1392,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1423,0,1395,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1423,0,1398,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1423,0,1401,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1423,0,1404,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1423,0,1407,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1423,0,1410,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1423,0,1413,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1423,0,1416,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1423,0,1419,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1423,0,1422,0,0,"IF", 0, 2, 0);
	trans[0][1383]	= settr(1382,0,1384,926,0,"((input==28))", 1, 2, 0);
	trans[0][1384]	= settr(1383,0,1385,927,927,"fsm_state = 48", 1, 2, 0);
	trans[0][1385]	= settr(1384,0,3004,928,928,"output = 3", 1, 2, 0);
	trans[0][1425]	= settr(1424,0,3004,1,0,".(goto)", 0, 2, 0);
	trans[0][1386]	= settr(1385,0,1387,929,0,"((input==25))", 1, 2, 0);
	trans[0][1387]	= settr(1386,0,1388,930,930,"fsm_state = 48", 1, 2, 0);
	trans[0][1388]	= settr(1387,0,3004,931,931,"output = 3", 1, 2, 0);
	trans[0][1389]	= settr(1388,0,1390,932,0,"((input==16))", 1, 2, 0);
	trans[0][1390]	= settr(1389,0,1391,933,933,"fsm_state = 48", 1, 2, 0);
	trans[0][1391]	= settr(1390,0,3004,934,934,"output = 3", 1, 2, 0);
	trans[0][1392]	= settr(1391,0,1393,935,0,"((input==19))", 1, 2, 0);
	trans[0][1393]	= settr(1392,0,1394,936,936,"fsm_state = 48", 1, 2, 0);
	trans[0][1394]	= settr(1393,0,3004,937,937,"output = 3", 1, 2, 0);
	trans[0][1395]	= settr(1394,0,1396,938,0,"((input==23))", 1, 2, 0);
	trans[0][1396]	= settr(1395,0,1397,939,939,"fsm_state = 48", 1, 2, 0);
	trans[0][1397]	= settr(1396,0,3004,940,940,"output = 3", 1, 2, 0);
	trans[0][1398]	= settr(1397,0,1399,941,0,"((input==24))", 1, 2, 0);
	trans[0][1399]	= settr(1398,0,18,942,942,"fsm_state = 40", 1, 2, 0);
	trans[0][1400]	= settr(1399,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1401]	= settr(1400,0,1402,943,0,"((input==27))", 1, 2, 0);
	trans[0][1402]	= settr(1401,0,18,944,944,"fsm_state = 34", 1, 2, 0);
	trans[0][1403]	= settr(1402,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1404]	= settr(1403,0,1405,945,0,"((input==22))", 1, 2, 0);
	trans[0][1405]	= settr(1404,0,18,946,946,"fsm_state = 27", 1, 2, 0);
	trans[0][1406]	= settr(1405,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1407]	= settr(1406,0,1408,947,0,"((input==26))", 1, 2, 0);
	trans[0][1408]	= settr(1407,0,18,948,948,"fsm_state = 27", 1, 2, 0);
	trans[0][1409]	= settr(1408,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1410]	= settr(1409,0,1411,949,0,"((input==21))", 1, 2, 0);
	trans[0][1411]	= settr(1410,0,1412,950,950,"fsm_state = 27", 1, 2, 0);
	trans[0][1412]	= settr(1411,0,3004,951,951,"output = 1", 1, 2, 0);
	trans[0][1413]	= settr(1412,0,1414,952,0,"((input==17))", 1, 2, 0);
	trans[0][1414]	= settr(1413,0,18,953,953,"fsm_state = 27", 1, 2, 0);
	trans[0][1415]	= settr(1414,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1416]	= settr(1415,0,1417,954,0,"((input==18))", 1, 2, 0);
	trans[0][1417]	= settr(1416,0,18,955,955,"fsm_state = 27", 1, 2, 0);
	trans[0][1418]	= settr(1417,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1419]	= settr(1418,0,1420,956,0,"((input==20))", 1, 2, 0);
	trans[0][1420]	= settr(1419,0,18,957,957,"fsm_state = 27", 1, 2, 0);
	trans[0][1421]	= settr(1420,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1422]	= settr(1421,0,18,2,0,"else", 0, 2, 0);
	trans[0][1423]	= settr(1422,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1426]	= settr(1425,0,1468,958,0,"((fsm_state==26))", 1, 2, 0);
	T = trans[0][1468] = settr(1467,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1467,0,1427,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1467,0,1430,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1467,0,1433,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1467,0,1436,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1467,0,1439,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1467,0,1442,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1467,0,1445,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1467,0,1448,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1467,0,1451,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1467,0,1454,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1467,0,1457,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1467,0,1460,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1467,0,1463,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1467,0,1466,0,0,"IF", 0, 2, 0);
	trans[0][1427]	= settr(1426,0,1428,959,0,"((input==25))", 1, 2, 0);
	trans[0][1428]	= settr(1427,0,1429,960,960,"fsm_state = 47", 1, 2, 0);
	trans[0][1429]	= settr(1428,0,3004,961,961,"output = 3", 1, 2, 0);
	trans[0][1469]	= settr(1468,0,3004,1,0,".(goto)", 0, 2, 0);
	trans[0][1430]	= settr(1429,0,1431,962,0,"((input==16))", 1, 2, 0);
	trans[0][1431]	= settr(1430,0,1432,963,963,"fsm_state = 47", 1, 2, 0);
	trans[0][1432]	= settr(1431,0,3004,964,964,"output = 3", 1, 2, 0);
	trans[0][1433]	= settr(1432,0,1434,965,0,"((input==19))", 1, 2, 0);
	trans[0][1434]	= settr(1433,0,1435,966,966,"fsm_state = 47", 1, 2, 0);
	trans[0][1435]	= settr(1434,0,3004,967,967,"output = 3", 1, 2, 0);
	trans[0][1436]	= settr(1435,0,1437,968,0,"((input==23))", 1, 2, 0);
	trans[0][1437]	= settr(1436,0,1438,969,969,"fsm_state = 47", 1, 2, 0);
	trans[0][1438]	= settr(1437,0,3004,970,970,"output = 3", 1, 2, 0);
	trans[0][1439]	= settr(1438,0,1440,971,0,"((input==24))", 1, 2, 0);
	trans[0][1440]	= settr(1439,0,18,972,972,"fsm_state = 45", 1, 2, 0);
	trans[0][1441]	= settr(1440,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1442]	= settr(1441,0,1443,973,0,"((input==22))", 1, 2, 0);
	trans[0][1443]	= settr(1442,0,18,974,974,"fsm_state = 26", 1, 2, 0);
	trans[0][1444]	= settr(1443,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1445]	= settr(1444,0,1446,975,0,"((input==26))", 1, 2, 0);
	trans[0][1446]	= settr(1445,0,1447,976,976,"fsm_state = 26", 1, 2, 0);
	trans[0][1447]	= settr(1446,0,3004,977,977,"output = 9", 1, 2, 0);
	trans[0][1448]	= settr(1447,0,1449,978,0,"((input==17))", 1, 2, 0);
	trans[0][1449]	= settr(1448,0,1450,979,979,"fsm_state = 26", 1, 2, 0);
	trans[0][1450]	= settr(1449,0,3004,980,980,"output = 9", 1, 2, 0);
	trans[0][1451]	= settr(1450,0,1452,981,0,"((input==27))", 1, 2, 0);
	trans[0][1452]	= settr(1451,0,1453,982,982,"fsm_state = 26", 1, 2, 0);
	trans[0][1453]	= settr(1452,0,3004,983,983,"output = 9", 1, 2, 0);
	trans[0][1454]	= settr(1453,0,1455,984,0,"((input==20))", 1, 2, 0);
	trans[0][1455]	= settr(1454,0,1456,985,985,"fsm_state = 26", 1, 2, 0);
	trans[0][1456]	= settr(1455,0,3004,986,986,"output = 9", 1, 2, 0);
	trans[0][1457]	= settr(1456,0,1458,987,0,"((input==18))", 1, 2, 0);
	trans[0][1458]	= settr(1457,0,18,988,988,"fsm_state = 25", 1, 2, 0);
	trans[0][1459]	= settr(1458,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1460]	= settr(1459,0,1461,989,0,"((input==28))", 1, 2, 0);
	trans[0][1461]	= settr(1460,0,18,990,990,"fsm_state = 21", 1, 2, 0);
	trans[0][1462]	= settr(1461,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1463]	= settr(1462,0,1464,991,0,"((input==21))", 1, 2, 0);
	trans[0][1464]	= settr(1463,0,1465,992,992,"fsm_state = 18", 1, 2, 0);
	trans[0][1465]	= settr(1464,0,3004,993,993,"output = 10", 1, 2, 0);
	trans[0][1466]	= settr(1465,0,18,2,0,"else", 0, 2, 0);
	trans[0][1467]	= settr(1466,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1470]	= settr(1469,0,1512,994,0,"((fsm_state==25))", 1, 2, 0);
	T = trans[0][1512] = settr(1511,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1511,0,1471,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1511,0,1474,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1511,0,1477,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1511,0,1480,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1511,0,1483,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1511,0,1486,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1511,0,1489,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1511,0,1492,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1511,0,1495,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1511,0,1498,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1511,0,1501,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1511,0,1504,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1511,0,1507,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1511,0,1510,0,0,"IF", 0, 2, 0);
	trans[0][1471]	= settr(1470,0,1472,995,0,"((input==25))", 1, 2, 0);
	trans[0][1472]	= settr(1471,0,1473,996,996,"fsm_state = 47", 1, 2, 0);
	trans[0][1473]	= settr(1472,0,3004,997,997,"output = 3", 1, 2, 0);
	trans[0][1513]	= settr(1512,0,3004,1,0,".(goto)", 0, 2, 0);
	trans[0][1474]	= settr(1473,0,1475,998,0,"((input==16))", 1, 2, 0);
	trans[0][1475]	= settr(1474,0,1476,999,999,"fsm_state = 47", 1, 2, 0);
	trans[0][1476]	= settr(1475,0,3004,1000,1000,"output = 3", 1, 2, 0);
	trans[0][1477]	= settr(1476,0,1478,1001,0,"((input==19))", 1, 2, 0);
	trans[0][1478]	= settr(1477,0,1479,1002,1002,"fsm_state = 47", 1, 2, 0);
	trans[0][1479]	= settr(1478,0,3004,1003,1003,"output = 3", 1, 2, 0);
	trans[0][1480]	= settr(1479,0,1481,1004,0,"((input==23))", 1, 2, 0);
	trans[0][1481]	= settr(1480,0,1482,1005,1005,"fsm_state = 47", 1, 2, 0);
	trans[0][1482]	= settr(1481,0,3004,1006,1006,"output = 3", 1, 2, 0);
	trans[0][1483]	= settr(1482,0,1484,1007,0,"((input==24))", 1, 2, 0);
	trans[0][1484]	= settr(1483,0,18,1008,1008,"fsm_state = 45", 1, 2, 0);
	trans[0][1485]	= settr(1484,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1486]	= settr(1485,0,1487,1009,0,"((input==22))", 1, 2, 0);
	trans[0][1487]	= settr(1486,0,1488,1010,1010,"fsm_state = 25", 1, 2, 0);
	trans[0][1488]	= settr(1487,0,3004,1011,1011,"output = 10", 1, 2, 0);
	trans[0][1489]	= settr(1488,0,1490,1012,0,"((input==26))", 1, 2, 0);
	trans[0][1490]	= settr(1489,0,1491,1013,1013,"fsm_state = 25", 1, 2, 0);
	trans[0][1491]	= settr(1490,0,3004,1014,1014,"output = 9", 1, 2, 0);
	trans[0][1492]	= settr(1491,0,1493,1015,0,"((input==17))", 1, 2, 0);
	trans[0][1493]	= settr(1492,0,1494,1016,1016,"fsm_state = 25", 1, 2, 0);
	trans[0][1494]	= settr(1493,0,3004,1017,1017,"output = 9", 1, 2, 0);
	trans[0][1495]	= settr(1494,0,1496,1018,0,"((input==18))", 1, 2, 0);
	trans[0][1496]	= settr(1495,0,1497,1019,1019,"fsm_state = 25", 1, 2, 0);
	trans[0][1497]	= settr(1496,0,3004,1020,1020,"output = 10", 1, 2, 0);
	trans[0][1498]	= settr(1497,0,1499,1021,0,"((input==27))", 1, 2, 0);
	trans[0][1499]	= settr(1498,0,1500,1022,1022,"fsm_state = 25", 1, 2, 0);
	trans[0][1500]	= settr(1499,0,3004,1023,1023,"output = 9", 1, 2, 0);
	trans[0][1501]	= settr(1500,0,1502,1024,0,"((input==20))", 1, 2, 0);
	trans[0][1502]	= settr(1501,0,1503,1025,1025,"fsm_state = 25", 1, 2, 0);
	trans[0][1503]	= settr(1502,0,3004,1026,1026,"output = 9", 1, 2, 0);
	trans[0][1504]	= settr(1503,0,1505,1027,0,"((input==28))", 1, 2, 0);
	trans[0][1505]	= settr(1504,0,18,1028,1028,"fsm_state = 20", 1, 2, 0);
	trans[0][1506]	= settr(1505,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1507]	= settr(1506,0,1508,1029,0,"((input==21))", 1, 2, 0);
	trans[0][1508]	= settr(1507,0,18,1030,1030,"fsm_state = 11", 1, 2, 0);
	trans[0][1509]	= settr(1508,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1510]	= settr(1509,0,18,2,0,"else", 0, 2, 0);
	trans[0][1511]	= settr(1510,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1514]	= settr(1513,0,1583,1031,0,"((fsm_state==24))", 1, 2, 0);
	T = trans[0][1583] = settr(1582,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1582,0,1515,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1582,0,1518,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1582,0,1521,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1582,0,1524,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1582,0,1527,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1582,0,1530,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1582,0,1533,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1582,0,1536,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1582,0,1539,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1582,0,1542,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1582,0,1545,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1582,0,1548,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1582,0,1551,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1582,0,1581,0,0,"IF", 0, 2, 0);
	trans[0][1515]	= settr(1514,0,1516,1032,0,"((input==25))", 1, 2, 0);
	trans[0][1516]	= settr(1515,0,1517,1033,1033,"fsm_state = 47", 1, 2, 0);
	trans[0][1517]	= settr(1516,0,3004,1034,1034,"output = 3", 1, 2, 0);
	trans[0][1584]	= settr(1583,0,3004,1,0,".(goto)", 0, 2, 0);
	trans[0][1518]	= settr(1517,0,1519,1035,0,"((input==16))", 1, 2, 0);
	trans[0][1519]	= settr(1518,0,1520,1036,1036,"fsm_state = 47", 1, 2, 0);
	trans[0][1520]	= settr(1519,0,3004,1037,1037,"output = 3", 1, 2, 0);
	trans[0][1521]	= settr(1520,0,1522,1038,0,"((input==19))", 1, 2, 0);
	trans[0][1522]	= settr(1521,0,1523,1039,1039,"fsm_state = 47", 1, 2, 0);
	trans[0][1523]	= settr(1522,0,3004,1040,1040,"output = 3", 1, 2, 0);
	trans[0][1524]	= settr(1523,0,1525,1041,0,"((input==23))", 1, 2, 0);
	trans[0][1525]	= settr(1524,0,1526,1042,1042,"fsm_state = 47", 1, 2, 0);
	trans[0][1526]	= settr(1525,0,3004,1043,1043,"output = 3", 1, 2, 0);
	trans[0][1527]	= settr(1526,0,1528,1044,0,"((input==24))", 1, 2, 0);
	trans[0][1528]	= settr(1527,0,18,1045,1045,"fsm_state = 45", 1, 2, 0);
	trans[0][1529]	= settr(1528,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1530]	= settr(1529,0,1531,1046,0,"((input==22))", 1, 2, 0);
	trans[0][1531]	= settr(1530,0,1532,1047,1047,"fsm_state = 24", 1, 2, 0);
	trans[0][1532]	= settr(1531,0,3004,1048,1048,"output = 10", 1, 2, 0);
	trans[0][1533]	= settr(1532,0,1534,1049,0,"((input==26))", 1, 2, 0);
	trans[0][1534]	= settr(1533,0,1535,1050,1050,"fsm_state = 24", 1, 2, 0);
	trans[0][1535]	= settr(1534,0,3004,1051,1051,"output = 9", 1, 2, 0);
	trans[0][1536]	= settr(1535,0,1537,1052,0,"((input==17))", 1, 2, 0);
	trans[0][1537]	= settr(1536,0,1538,1053,1053,"fsm_state = 24", 1, 2, 0);
	trans[0][1538]	= settr(1537,0,3004,1054,1054,"output = 9", 1, 2, 0);
	trans[0][1539]	= settr(1538,0,1540,1055,0,"((input==18))", 1, 2, 0);
	trans[0][1540]	= settr(1539,0,1541,1056,1056,"fsm_state = 24", 1, 2, 0);
	trans[0][1541]	= settr(1540,0,3004,1057,1057,"output = 10", 1, 2, 0);
	trans[0][1542]	= settr(1541,0,1543,1058,0,"((input==27))", 1, 2, 0);
	trans[0][1543]	= settr(1542,0,1544,1059,1059,"fsm_state = 24", 1, 2, 0);
	trans[0][1544]	= settr(1543,0,3004,1060,1060,"output = 9", 1, 2, 0);
	trans[0][1545]	= settr(1544,0,1546,1061,0,"((input==20))", 1, 2, 0);
	trans[0][1546]	= settr(1545,0,1547,1062,1062,"fsm_state = 24", 1, 2, 0);
	trans[0][1547]	= settr(1546,0,3004,1063,1063,"output = 9", 1, 2, 0);
	trans[0][1548]	= settr(1547,0,1549,1064,0,"((input==21))", 1, 2, 0);
	trans[0][1549]	= settr(1548,0,18,1065,1065,"fsm_state = 10", 1, 2, 0);
	trans[0][1550]	= settr(1549,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1551]	= settr(1550,0,1552,1066,0,"((input==28))", 1, 2, 0);
	trans[0][1552]	= settr(1551,0,1553,1067,1067,"fsm_state = 9", 1, 2, 0);
	trans[0][1553]	= settr(1552,0,1554,1068,1068,"output = 13", 1, 2, 0);
	trans[0][1554]	= settr(1553,0,1578,1069,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][1578] = settr(1577,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1577,0,1571,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][1571]	= settr(1570,32,1576,1070,1070,"D_STEP13", 1, 2, 0);
	T = trans[0][1576] = settr(1575,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1575,0,1572,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1575,0,1574,0,0,"IF", 0, 2, 0);
	trans[0][1572]	= settr(1571,0,1,1071,0,"((dealt==0))", 1, 2, 0);
	trans[0][1573]	= settr(1572,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][1577]	= settr(1576,0,1579,1,0,".(goto)", 0, 2, 0);
	trans[0][1574]	= settr(1573,0,1575,2,0,"else", 0, 2, 0);
	trans[0][1575]	= settr(1574,0,1579,1,0,"(1)", 0, 2, 0);
	trans[0][1579]	= settr(1578,0,1580,1072,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][1580]	= settr(1579,0,3004,1073,1073,"output = 5", 1, 2, 0);
	trans[0][1581]	= settr(1580,0,18,2,0,"else", 0, 2, 0);
	trans[0][1582]	= settr(1581,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1585]	= settr(1584,0,1627,1074,0,"((fsm_state==23))", 1, 2, 0);
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
	trans[0][1586]	= settr(1585,0,1587,1075,0,"((input==28))", 1, 2, 0);
	trans[0][1587]	= settr(1586,0,1588,1076,1076,"fsm_state = 48", 1, 2, 0);
	trans[0][1588]	= settr(1587,0,3004,1077,1077,"output = 3", 1, 2, 0);
	trans[0][1628]	= settr(1627,0,3004,1,0,".(goto)", 0, 2, 0);
	trans[0][1589]	= settr(1588,0,1590,1078,0,"((input==24))", 1, 2, 0);
	trans[0][1590]	= settr(1589,0,1591,1079,1079,"fsm_state = 48", 1, 2, 0);
	trans[0][1591]	= settr(1590,0,3004,1080,1080,"output = 3", 1, 2, 0);
	trans[0][1592]	= settr(1591,0,1593,1081,0,"((input==16))", 1, 2, 0);
	trans[0][1593]	= settr(1592,0,1594,1082,1082,"fsm_state = 48", 1, 2, 0);
	trans[0][1594]	= settr(1593,0,3004,1083,1083,"output = 3", 1, 2, 0);
	trans[0][1595]	= settr(1594,0,1596,1084,0,"((input==27))", 1, 2, 0);
	trans[0][1596]	= settr(1595,0,1597,1085,1085,"fsm_state = 32", 1, 2, 0);
	trans[0][1597]	= settr(1596,0,3004,1086,1086,"output = 7", 1, 2, 0);
	trans[0][1598]	= settr(1597,0,1599,1087,0,"((input==20))", 1, 2, 0);
	trans[0][1599]	= settr(1598,0,1600,1088,1088,"fsm_state = 28", 1, 2, 0);
	trans[0][1600]	= settr(1599,0,3004,1089,1089,"output = 7", 1, 2, 0);
	trans[0][1601]	= settr(1600,0,1602,1090,0,"((input==22))", 1, 2, 0);
	trans[0][1602]	= settr(1601,0,1603,1091,1091,"fsm_state = 23", 1, 2, 0);
	trans[0][1603]	= settr(1602,0,3004,1092,1092,"output = 10", 1, 2, 0);
	trans[0][1604]	= settr(1603,0,1605,1093,0,"((input==26))", 1, 2, 0);
	trans[0][1605]	= settr(1604,0,1606,1094,1094,"fsm_state = 23", 1, 2, 0);
	trans[0][1606]	= settr(1605,0,3004,1095,1095,"output = 14", 1, 2, 0);
	trans[0][1607]	= settr(1606,0,1608,1096,0,"((input==21))", 1, 2, 0);
	trans[0][1608]	= settr(1607,0,1609,1097,1097,"fsm_state = 23", 1, 2, 0);
	trans[0][1609]	= settr(1608,0,3004,1098,1098,"output = 1", 1, 2, 0);
	trans[0][1610]	= settr(1609,0,1611,1099,0,"((input==18))", 1, 2, 0);
	trans[0][1611]	= settr(1610,0,1612,1100,1100,"fsm_state = 23", 1, 2, 0);
	trans[0][1612]	= settr(1611,0,3004,1101,1101,"output = 10", 1, 2, 0);
	trans[0][1613]	= settr(1612,0,1614,1102,0,"((input==23))", 1, 2, 0);
	trans[0][1614]	= settr(1613,0,1615,1103,1103,"fsm_state = 23", 1, 2, 0);
	trans[0][1615]	= settr(1614,0,3004,1104,1104,"output = 4", 1, 2, 0);
	trans[0][1616]	= settr(1615,0,1617,1105,0,"((input==17))", 1, 2, 0);
	trans[0][1617]	= settr(1616,0,18,1106,1106,"fsm_state = 8", 1, 2, 0);
	trans[0][1618]	= settr(1617,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1619]	= settr(1618,0,1620,1107,0,"((input==19))", 1, 2, 0);
	trans[0][1620]	= settr(1619,0,1621,1108,1108,"fsm_state = 7", 1, 2, 0);
	trans[0][1621]	= settr(1620,0,3004,1109,1109,"output = 15", 1, 2, 0);
	trans[0][1622]	= settr(1621,0,1623,1110,0,"((input==25))", 1, 2, 0);
	trans[0][1623]	= settr(1622,0,1624,1111,1111,"fsm_state = 6", 1, 2, 0);
	trans[0][1624]	= settr(1623,0,3004,1112,1112,"output = 15", 1, 2, 0);
	trans[0][1625]	= settr(1624,0,18,2,0,"else", 0, 2, 0);
	trans[0][1626]	= settr(1625,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1629]	= settr(1628,0,1671,1113,0,"((fsm_state==22))", 1, 2, 0);
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
	trans[0][1630]	= settr(1629,0,1631,1114,0,"((input==25))", 1, 2, 0);
	trans[0][1631]	= settr(1630,0,1632,1115,1115,"fsm_state = 47", 1, 2, 0);
	trans[0][1632]	= settr(1631,0,3004,1116,1116,"output = 3", 1, 2, 0);
	trans[0][1672]	= settr(1671,0,3004,1,0,".(goto)", 0, 2, 0);
	trans[0][1633]	= settr(1632,0,1634,1117,0,"((input==16))", 1, 2, 0);
	trans[0][1634]	= settr(1633,0,1635,1118,1118,"fsm_state = 47", 1, 2, 0);
	trans[0][1635]	= settr(1634,0,3004,1119,1119,"output = 3", 1, 2, 0);
	trans[0][1636]	= settr(1635,0,1637,1120,0,"((input==19))", 1, 2, 0);
	trans[0][1637]	= settr(1636,0,1638,1121,1121,"fsm_state = 47", 1, 2, 0);
	trans[0][1638]	= settr(1637,0,3004,1122,1122,"output = 3", 1, 2, 0);
	trans[0][1639]	= settr(1638,0,1640,1123,0,"((input==23))", 1, 2, 0);
	trans[0][1640]	= settr(1639,0,1641,1124,1124,"fsm_state = 47", 1, 2, 0);
	trans[0][1641]	= settr(1640,0,3004,1125,1125,"output = 3", 1, 2, 0);
	trans[0][1642]	= settr(1641,0,1643,1126,0,"((input==24))", 1, 2, 0);
	trans[0][1643]	= settr(1642,0,18,1127,1127,"fsm_state = 45", 1, 2, 0);
	trans[0][1644]	= settr(1643,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1645]	= settr(1644,0,1646,1128,0,"((input==28))", 1, 2, 0);
	trans[0][1646]	= settr(1645,0,18,1129,1129,"fsm_state = 24", 1, 2, 0);
	trans[0][1647]	= settr(1646,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1648]	= settr(1647,0,1649,1130,0,"((input==22))", 1, 2, 0);
	trans[0][1649]	= settr(1648,0,1650,1131,1131,"fsm_state = 22", 1, 2, 0);
	trans[0][1650]	= settr(1649,0,3004,1132,1132,"output = 10", 1, 2, 0);
	trans[0][1651]	= settr(1650,0,1652,1133,0,"((input==26))", 1, 2, 0);
	trans[0][1652]	= settr(1651,0,1653,1134,1134,"fsm_state = 22", 1, 2, 0);
	trans[0][1653]	= settr(1652,0,3004,1135,1135,"output = 9", 1, 2, 0);
	trans[0][1654]	= settr(1653,0,1655,1136,0,"((input==17))", 1, 2, 0);
	trans[0][1655]	= settr(1654,0,1656,1137,1137,"fsm_state = 22", 1, 2, 0);
	trans[0][1656]	= settr(1655,0,3004,1138,1138,"output = 9", 1, 2, 0);
	trans[0][1657]	= settr(1656,0,1658,1139,0,"((input==18))", 1, 2, 0);
	trans[0][1658]	= settr(1657,0,1659,1140,1140,"fsm_state = 22", 1, 2, 0);
	trans[0][1659]	= settr(1658,0,3004,1141,1141,"output = 10", 1, 2, 0);
	trans[0][1660]	= settr(1659,0,1661,1142,0,"((input==27))", 1, 2, 0);
	trans[0][1661]	= settr(1660,0,1662,1143,1143,"fsm_state = 22", 1, 2, 0);
	trans[0][1662]	= settr(1661,0,3004,1144,1144,"output = 9", 1, 2, 0);
	trans[0][1663]	= settr(1662,0,1664,1145,0,"((input==20))", 1, 2, 0);
	trans[0][1664]	= settr(1663,0,1665,1146,1146,"fsm_state = 22", 1, 2, 0);
	trans[0][1665]	= settr(1664,0,3004,1147,1147,"output = 9", 1, 2, 0);
	trans[0][1666]	= settr(1665,0,1667,1148,0,"((input==21))", 1, 2, 0);
	trans[0][1667]	= settr(1666,0,18,1149,1149,"fsm_state = 11", 1, 2, 0);
	trans[0][1668]	= settr(1667,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1669]	= settr(1668,0,18,2,0,"else", 0, 2, 0);
	trans[0][1670]	= settr(1669,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1673]	= settr(1672,0,1769,1150,0,"((fsm_state==21))", 1, 2, 0);
	T = trans[0][1769] = settr(1768,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1768,0,1674,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1768,0,1677,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1768,0,1680,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1768,0,1683,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1768,0,1686,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1768,0,1689,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1768,0,1692,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1768,0,1695,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1768,0,1698,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1768,0,1701,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1768,0,1704,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1768,0,1707,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1768,0,1764,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1768,0,1767,0,0,"IF", 0, 2, 0);
	trans[0][1674]	= settr(1673,0,1675,1151,0,"((input==25))", 1, 2, 0);
	trans[0][1675]	= settr(1674,0,1676,1152,1152,"fsm_state = 47", 1, 2, 0);
	trans[0][1676]	= settr(1675,0,3004,1153,1153,"output = 3", 1, 2, 0);
	trans[0][1770]	= settr(1769,0,3004,1,0,".(goto)", 0, 2, 0);
	trans[0][1677]	= settr(1676,0,1678,1154,0,"((input==16))", 1, 2, 0);
	trans[0][1678]	= settr(1677,0,1679,1155,1155,"fsm_state = 47", 1, 2, 0);
	trans[0][1679]	= settr(1678,0,3004,1156,1156,"output = 3", 1, 2, 0);
	trans[0][1680]	= settr(1679,0,1681,1157,0,"((input==19))", 1, 2, 0);
	trans[0][1681]	= settr(1680,0,1682,1158,1158,"fsm_state = 47", 1, 2, 0);
	trans[0][1682]	= settr(1681,0,3004,1159,1159,"output = 3", 1, 2, 0);
	trans[0][1683]	= settr(1682,0,1684,1160,0,"((input==23))", 1, 2, 0);
	trans[0][1684]	= settr(1683,0,1685,1161,1161,"fsm_state = 47", 1, 2, 0);
	trans[0][1685]	= settr(1684,0,3004,1162,1162,"output = 3", 1, 2, 0);
	trans[0][1686]	= settr(1685,0,1687,1163,0,"((input==24))", 1, 2, 0);
	trans[0][1687]	= settr(1686,0,18,1164,1164,"fsm_state = 45", 1, 2, 0);
	trans[0][1688]	= settr(1687,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1689]	= settr(1688,0,1690,1165,0,"((input==22))", 1, 2, 0);
	trans[0][1690]	= settr(1689,0,18,1166,1166,"fsm_state = 21", 1, 2, 0);
	trans[0][1691]	= settr(1690,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1692]	= settr(1691,0,1693,1167,0,"((input==26))", 1, 2, 0);
	trans[0][1693]	= settr(1692,0,1694,1168,1168,"fsm_state = 21", 1, 2, 0);
	trans[0][1694]	= settr(1693,0,3004,1169,1169,"output = 9", 1, 2, 0);
	trans[0][1695]	= settr(1694,0,1696,1170,0,"((input==17))", 1, 2, 0);
	trans[0][1696]	= settr(1695,0,1697,1171,1171,"fsm_state = 21", 1, 2, 0);
	trans[0][1697]	= settr(1696,0,3004,1172,1172,"output = 9", 1, 2, 0);
	trans[0][1698]	= settr(1697,0,1699,1173,0,"((input==27))", 1, 2, 0);
	trans[0][1699]	= settr(1698,0,1700,1174,1174,"fsm_state = 21", 1, 2, 0);
	trans[0][1700]	= settr(1699,0,3004,1175,1175,"output = 9", 1, 2, 0);
	trans[0][1701]	= settr(1700,0,1702,1176,0,"((input==20))", 1, 2, 0);
	trans[0][1702]	= settr(1701,0,1703,1177,1177,"fsm_state = 21", 1, 2, 0);
	trans[0][1703]	= settr(1702,0,3004,1178,1178,"output = 9", 1, 2, 0);
	trans[0][1704]	= settr(1703,0,1705,1179,0,"((input==18))", 1, 2, 0);
	trans[0][1705]	= settr(1704,0,18,1180,1180,"fsm_state = 20", 1, 2, 0);
	trans[0][1706]	= settr(1705,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1707]	= settr(1706,0,1708,1181,0,"((input==28))", 1, 2, 0);
	trans[0][1708]	= settr(1707,0,1709,1182,1182,"fsm_state = 19", 1, 2, 0);
	trans[0][1709]	= settr(1708,0,1710,1183,1183,"output = 13", 1, 2, 0);
	trans[0][1710]	= settr(1709,0,1734,1184,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][1734] = settr(1733,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1733,0,1727,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][1727]	= settr(1726,32,1732,1185,1185,"D_STEP13", 1, 2, 0);
	T = trans[0][1732] = settr(1731,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1731,0,1728,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1731,0,1730,0,0,"IF", 0, 2, 0);
	trans[0][1728]	= settr(1727,0,1,1186,0,"((dealt==0))", 1, 2, 0);
	trans[0][1729]	= settr(1728,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][1733]	= settr(1732,0,1735,1,0,".(goto)", 0, 2, 0);
	trans[0][1730]	= settr(1729,0,1731,2,0,"else", 0, 2, 0);
	trans[0][1731]	= settr(1730,0,1735,1,0,"(1)", 0, 2, 0);
	trans[0][1735]	= settr(1734,0,1736,1187,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][1736]	= settr(1735,0,1737,1188,1188,"output = 5", 1, 2, 0);
	trans[0][1737]	= settr(1736,0,1761,1189,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][1761] = settr(1760,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1760,0,1754,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][1754]	= settr(1753,32,1759,1190,1190,"D_STEP13", 1, 2, 0);
	T = trans[0][1759] = settr(1758,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1758,0,1755,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1758,0,1757,0,0,"IF", 0, 2, 0);
	trans[0][1755]	= settr(1754,0,1,1191,0,"((dealt==0))", 1, 2, 0);
	trans[0][1756]	= settr(1755,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][1760]	= settr(1759,0,1762,1,0,".(goto)", 0, 2, 0);
	trans[0][1757]	= settr(1756,0,1758,2,0,"else", 0, 2, 0);
	trans[0][1758]	= settr(1757,0,1762,1,0,"(1)", 0, 2, 0);
	trans[0][1762]	= settr(1761,0,1763,1192,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][1763]	= settr(1762,0,3004,1193,1193,"output = 12", 1, 2, 0);
	trans[0][1764]	= settr(1763,0,1765,1194,0,"((input==21))", 1, 2, 0);
	trans[0][1765]	= settr(1764,0,1766,1195,1195,"fsm_state = 16", 1, 2, 0);
	trans[0][1766]	= settr(1765,0,3004,1196,1196,"output = 10", 1, 2, 0);
	trans[0][1767]	= settr(1766,0,18,2,0,"else", 0, 2, 0);
	trans[0][1768]	= settr(1767,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1771]	= settr(1770,0,1867,1197,0,"((fsm_state==20))", 1, 2, 0);
	T = trans[0][1867] = settr(1866,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1866,0,1772,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1866,0,1775,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1866,0,1778,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1866,0,1781,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1866,0,1784,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1866,0,1787,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1866,0,1790,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1866,0,1793,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1866,0,1796,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1866,0,1799,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1866,0,1802,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1866,0,1805,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1866,0,1808,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1866,0,1865,0,0,"IF", 0, 2, 0);
	trans[0][1772]	= settr(1771,0,1773,1198,0,"((input==25))", 1, 2, 0);
	trans[0][1773]	= settr(1772,0,1774,1199,1199,"fsm_state = 47", 1, 2, 0);
	trans[0][1774]	= settr(1773,0,3004,1200,1200,"output = 3", 1, 2, 0);
	trans[0][1868]	= settr(1867,0,3004,1,0,".(goto)", 0, 2, 0);
	trans[0][1775]	= settr(1774,0,1776,1201,0,"((input==16))", 1, 2, 0);
	trans[0][1776]	= settr(1775,0,1777,1202,1202,"fsm_state = 47", 1, 2, 0);
	trans[0][1777]	= settr(1776,0,3004,1203,1203,"output = 3", 1, 2, 0);
	trans[0][1778]	= settr(1777,0,1779,1204,0,"((input==19))", 1, 2, 0);
	trans[0][1779]	= settr(1778,0,1780,1205,1205,"fsm_state = 47", 1, 2, 0);
	trans[0][1780]	= settr(1779,0,3004,1206,1206,"output = 3", 1, 2, 0);
	trans[0][1781]	= settr(1780,0,1782,1207,0,"((input==23))", 1, 2, 0);
	trans[0][1782]	= settr(1781,0,1783,1208,1208,"fsm_state = 47", 1, 2, 0);
	trans[0][1783]	= settr(1782,0,3004,1209,1209,"output = 3", 1, 2, 0);
	trans[0][1784]	= settr(1783,0,1785,1210,0,"((input==24))", 1, 2, 0);
	trans[0][1785]	= settr(1784,0,18,1211,1211,"fsm_state = 45", 1, 2, 0);
	trans[0][1786]	= settr(1785,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1787]	= settr(1786,0,1788,1212,0,"((input==22))", 1, 2, 0);
	trans[0][1788]	= settr(1787,0,1789,1213,1213,"fsm_state = 20", 1, 2, 0);
	trans[0][1789]	= settr(1788,0,3004,1214,1214,"output = 10", 1, 2, 0);
	trans[0][1790]	= settr(1789,0,1791,1215,0,"((input==26))", 1, 2, 0);
	trans[0][1791]	= settr(1790,0,1792,1216,1216,"fsm_state = 20", 1, 2, 0);
	trans[0][1792]	= settr(1791,0,3004,1217,1217,"output = 9", 1, 2, 0);
	trans[0][1793]	= settr(1792,0,1794,1218,0,"((input==17))", 1, 2, 0);
	trans[0][1794]	= settr(1793,0,1795,1219,1219,"fsm_state = 20", 1, 2, 0);
	trans[0][1795]	= settr(1794,0,3004,1220,1220,"output = 9", 1, 2, 0);
	trans[0][1796]	= settr(1795,0,1797,1221,0,"((input==18))", 1, 2, 0);
	trans[0][1797]	= settr(1796,0,1798,1222,1222,"fsm_state = 20", 1, 2, 0);
	trans[0][1798]	= settr(1797,0,3004,1223,1223,"output = 10", 1, 2, 0);
	trans[0][1799]	= settr(1798,0,1800,1224,0,"((input==27))", 1, 2, 0);
	trans[0][1800]	= settr(1799,0,1801,1225,1225,"fsm_state = 20", 1, 2, 0);
	trans[0][1801]	= settr(1800,0,3004,1226,1226,"output = 9", 1, 2, 0);
	trans[0][1802]	= settr(1801,0,1803,1227,0,"((input==20))", 1, 2, 0);
	trans[0][1803]	= settr(1802,0,1804,1228,1228,"fsm_state = 20", 1, 2, 0);
	trans[0][1804]	= settr(1803,0,3004,1229,1229,"output = 9", 1, 2, 0);
	trans[0][1805]	= settr(1804,0,1806,1230,0,"((input==21))", 1, 2, 0);
	trans[0][1806]	= settr(1805,0,18,1231,1231,"fsm_state = 10", 1, 2, 0);
	trans[0][1807]	= settr(1806,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1808]	= settr(1807,0,1809,1232,0,"((input==28))", 1, 2, 0);
	trans[0][1809]	= settr(1808,0,1810,1233,1233,"fsm_state = 9", 1, 2, 0);
	trans[0][1810]	= settr(1809,0,1811,1234,1234,"output = 13", 1, 2, 0);
	trans[0][1811]	= settr(1810,0,1835,1235,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][1835] = settr(1834,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1834,0,1828,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][1828]	= settr(1827,32,1833,1236,1236,"D_STEP13", 1, 2, 0);
	T = trans[0][1833] = settr(1832,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1832,0,1829,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1832,0,1831,0,0,"IF", 0, 2, 0);
	trans[0][1829]	= settr(1828,0,1,1237,0,"((dealt==0))", 1, 2, 0);
	trans[0][1830]	= settr(1829,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][1834]	= settr(1833,0,1836,1,0,".(goto)", 0, 2, 0);
	trans[0][1831]	= settr(1830,0,1832,2,0,"else", 0, 2, 0);
	trans[0][1832]	= settr(1831,0,1836,1,0,"(1)", 0, 2, 0);
	trans[0][1836]	= settr(1835,0,1837,1238,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][1837]	= settr(1836,0,1838,1239,1239,"output = 5", 1, 2, 0);
	trans[0][1838]	= settr(1837,0,1862,1240,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][1862] = settr(1861,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1861,0,1855,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][1855]	= settr(1854,32,1860,1241,1241,"D_STEP13", 1, 2, 0);
	T = trans[0][1860] = settr(1859,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1859,0,1856,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1859,0,1858,0,0,"IF", 0, 2, 0);
	trans[0][1856]	= settr(1855,0,1,1242,0,"((dealt==0))", 1, 2, 0);
	trans[0][1857]	= settr(1856,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][1861]	= settr(1860,0,1863,1,0,".(goto)", 0, 2, 0);
	trans[0][1858]	= settr(1857,0,1859,2,0,"else", 0, 2, 0);
	trans[0][1859]	= settr(1858,0,1863,1,0,"(1)", 0, 2, 0);
	trans[0][1863]	= settr(1862,0,1864,1243,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][1864]	= settr(1863,0,3004,1244,1244,"output = 12", 1, 2, 0);
	trans[0][1865]	= settr(1864,0,18,2,0,"else", 0, 2, 0);
	trans[0][1866]	= settr(1865,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1869]	= settr(1868,0,1911,1245,0,"((fsm_state==19))", 1, 2, 0);
	T = trans[0][1911] = settr(1910,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1910,0,1870,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1910,0,1873,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1910,0,1876,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1910,0,1879,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1910,0,1882,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1910,0,1885,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1910,0,1888,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1910,0,1891,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1910,0,1894,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1910,0,1897,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1910,0,1900,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1910,0,1903,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1910,0,1906,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1910,0,1909,0,0,"IF", 0, 2, 0);
	trans[0][1870]	= settr(1869,0,1871,1246,0,"((input==28))", 1, 2, 0);
	trans[0][1871]	= settr(1870,0,1872,1247,1247,"fsm_state = 47", 1, 2, 0);
	trans[0][1872]	= settr(1871,0,3004,1248,1248,"output = 3", 1, 2, 0);
	trans[0][1912]	= settr(1911,0,3004,1,0,".(goto)", 0, 2, 0);
	trans[0][1873]	= settr(1872,0,1874,1249,0,"((input==25))", 1, 2, 0);
	trans[0][1874]	= settr(1873,0,1875,1250,1250,"fsm_state = 47", 1, 2, 0);
	trans[0][1875]	= settr(1874,0,3004,1251,1251,"output = 3", 1, 2, 0);
	trans[0][1876]	= settr(1875,0,1877,1252,0,"((input==16))", 1, 2, 0);
	trans[0][1877]	= settr(1876,0,1878,1253,1253,"fsm_state = 47", 1, 2, 0);
	trans[0][1878]	= settr(1877,0,3004,1254,1254,"output = 3", 1, 2, 0);
	trans[0][1879]	= settr(1878,0,1880,1255,0,"((input==19))", 1, 2, 0);
	trans[0][1880]	= settr(1879,0,1881,1256,1256,"fsm_state = 47", 1, 2, 0);
	trans[0][1881]	= settr(1880,0,3004,1257,1257,"output = 3", 1, 2, 0);
	trans[0][1882]	= settr(1881,0,1883,1258,0,"((input==23))", 1, 2, 0);
	trans[0][1883]	= settr(1882,0,1884,1259,1259,"fsm_state = 47", 1, 2, 0);
	trans[0][1884]	= settr(1883,0,3004,1260,1260,"output = 3", 1, 2, 0);
	trans[0][1885]	= settr(1884,0,1886,1261,0,"((input==24))", 1, 2, 0);
	trans[0][1886]	= settr(1885,0,18,1262,1262,"fsm_state = 38", 1, 2, 0);
	trans[0][1887]	= settr(1886,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1888]	= settr(1887,0,1889,1263,0,"((input==22))", 1, 2, 0);
	trans[0][1889]	= settr(1888,0,1890,1264,1264,"fsm_state = 19", 1, 2, 0);
	trans[0][1890]	= settr(1889,0,3004,1265,1265,"output = 11", 1, 2, 0);
	trans[0][1891]	= settr(1890,0,1892,1266,0,"((input==26))", 1, 2, 0);
	trans[0][1892]	= settr(1891,0,1893,1267,1267,"fsm_state = 19", 1, 2, 0);
	trans[0][1893]	= settr(1892,0,3004,1268,1268,"output = 9", 1, 2, 0);
	trans[0][1894]	= settr(1893,0,1895,1269,0,"((input==17))", 1, 2, 0);
	trans[0][1895]	= settr(1894,0,1896,1270,1270,"fsm_state = 19", 1, 2, 0);
	trans[0][1896]	= settr(1895,0,3004,1271,1271,"output = 9", 1, 2, 0);
	trans[0][1897]	= settr(1896,0,1898,1272,0,"((input==27))", 1, 2, 0);
	trans[0][1898]	= settr(1897,0,1899,1273,1273,"fsm_state = 19", 1, 2, 0);
	trans[0][1899]	= settr(1898,0,3004,1274,1274,"output = 9", 1, 2, 0);
	trans[0][1900]	= settr(1899,0,1901,1275,0,"((input==20))", 1, 2, 0);
	trans[0][1901]	= settr(1900,0,1902,1276,1276,"fsm_state = 19", 1, 2, 0);
	trans[0][1902]	= settr(1901,0,3004,1277,1277,"output = 9", 1, 2, 0);
	trans[0][1903]	= settr(1902,0,1904,1278,0,"((input==21))", 1, 2, 0);
	trans[0][1904]	= settr(1903,0,1905,1279,1279,"fsm_state = 15", 1, 2, 0);
	trans[0][1905]	= settr(1904,0,3004,1280,1280,"output = 10", 1, 2, 0);
	trans[0][1906]	= settr(1905,0,1907,1281,0,"((input==18))", 1, 2, 0);
	trans[0][1907]	= settr(1906,0,1908,1282,1282,"fsm_state = 9", 1, 2, 0);
	trans[0][1908]	= settr(1907,0,3004,1283,1283,"output = 2", 1, 2, 0);
	trans[0][1909]	= settr(1908,0,18,2,0,"else", 0, 2, 0);
	trans[0][1910]	= settr(1909,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1913]	= settr(1912,0,1955,1284,0,"((fsm_state==18))", 1, 2, 0);
	T = trans[0][1955] = settr(1954,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1954,0,1914,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1954,0,1917,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1954,0,1920,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1954,0,1923,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1954,0,1926,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1954,0,1929,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1954,0,1932,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1954,0,1935,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1954,0,1938,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1954,0,1941,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1954,0,1944,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1954,0,1947,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1954,0,1950,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1954,0,1953,0,0,"IF", 0, 2, 0);
	trans[0][1914]	= settr(1913,0,1915,1285,0,"((input==25))", 1, 2, 0);
	trans[0][1915]	= settr(1914,0,1916,1286,1286,"fsm_state = 48", 1, 2, 0);
	trans[0][1916]	= settr(1915,0,3004,1287,1287,"output = 3", 1, 2, 0);
	trans[0][1956]	= settr(1955,0,3004,1,0,".(goto)", 0, 2, 0);
	trans[0][1917]	= settr(1916,0,1918,1288,0,"((input==16))", 1, 2, 0);
	trans[0][1918]	= settr(1917,0,1919,1289,1289,"fsm_state = 48", 1, 2, 0);
	trans[0][1919]	= settr(1918,0,3004,1290,1290,"output = 3", 1, 2, 0);
	trans[0][1920]	= settr(1919,0,1921,1291,0,"((input==19))", 1, 2, 0);
	trans[0][1921]	= settr(1920,0,1922,1292,1292,"fsm_state = 48", 1, 2, 0);
	trans[0][1922]	= settr(1921,0,3004,1293,1293,"output = 3", 1, 2, 0);
	trans[0][1923]	= settr(1922,0,1924,1294,0,"((input==23))", 1, 2, 0);
	trans[0][1924]	= settr(1923,0,1925,1295,1295,"fsm_state = 48", 1, 2, 0);
	trans[0][1925]	= settr(1924,0,3004,1296,1296,"output = 3", 1, 2, 0);
	trans[0][1926]	= settr(1925,0,1927,1297,0,"((input==24))", 1, 2, 0);
	trans[0][1927]	= settr(1926,0,18,1298,1298,"fsm_state = 43", 1, 2, 0);
	trans[0][1928]	= settr(1927,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1929]	= settr(1928,0,1930,1299,0,"((input==27))", 1, 2, 0);
	trans[0][1930]	= settr(1929,0,1931,1300,1300,"fsm_state = 26", 1, 2, 0);
	trans[0][1931]	= settr(1930,0,3004,1301,1301,"output = 10", 1, 2, 0);
	trans[0][1932]	= settr(1931,0,1933,1302,0,"((input==22))", 1, 2, 0);
	trans[0][1933]	= settr(1932,0,18,1303,1303,"fsm_state = 18", 1, 2, 0);
	trans[0][1934]	= settr(1933,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1935]	= settr(1934,0,1936,1304,0,"((input==26))", 1, 2, 0);
	trans[0][1936]	= settr(1935,0,1937,1305,1305,"fsm_state = 18", 1, 2, 0);
	trans[0][1937]	= settr(1936,0,3004,1306,1306,"output = 10", 1, 2, 0);
	trans[0][1938]	= settr(1937,0,1939,1307,0,"((input==21))", 1, 2, 0);
	trans[0][1939]	= settr(1938,0,1940,1308,1308,"fsm_state = 18", 1, 2, 0);
	trans[0][1940]	= settr(1939,0,3004,1309,1309,"output = 1", 1, 2, 0);
	trans[0][1941]	= settr(1940,0,1942,1310,0,"((input==17))", 1, 2, 0);
	trans[0][1942]	= settr(1941,0,1943,1311,1311,"fsm_state = 18", 1, 2, 0);
	trans[0][1943]	= settr(1942,0,3004,1312,1312,"output = 10", 1, 2, 0);
	trans[0][1944]	= settr(1943,0,1945,1313,0,"((input==20))", 1, 2, 0);
	trans[0][1945]	= settr(1944,0,1946,1314,1314,"fsm_state = 18", 1, 2, 0);
	trans[0][1946]	= settr(1945,0,3004,1315,1315,"output = 10", 1, 2, 0);
	trans[0][1947]	= settr(1946,0,1948,1316,0,"((input==18))", 1, 2, 0);
	trans[0][1948]	= settr(1947,0,18,1317,1317,"fsm_state = 17", 1, 2, 0);
	trans[0][1949]	= settr(1948,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1950]	= settr(1949,0,1951,1318,0,"((input==28))", 1, 2, 0);
	trans[0][1951]	= settr(1950,0,18,1319,1319,"fsm_state = 16", 1, 2, 0);
	trans[0][1952]	= settr(1951,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1953]	= settr(1952,0,18,2,0,"else", 0, 2, 0);
	trans[0][1954]	= settr(1953,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1957]	= settr(1956,0,1999,1320,0,"((fsm_state==17))", 1, 2, 0);
	T = trans[0][1999] = settr(1998,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1998,0,1958,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1998,0,1961,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1998,0,1964,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1998,0,1967,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1998,0,1970,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1998,0,1973,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1998,0,1976,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1998,0,1979,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1998,0,1982,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1998,0,1985,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1998,0,1988,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1998,0,1991,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1998,0,1994,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1998,0,1997,0,0,"IF", 0, 2, 0);
	trans[0][1958]	= settr(1957,0,1959,1321,0,"((input==25))", 1, 2, 0);
	trans[0][1959]	= settr(1958,0,1960,1322,1322,"fsm_state = 48", 1, 2, 0);
	trans[0][1960]	= settr(1959,0,3004,1323,1323,"output = 3", 1, 2, 0);
	trans[0][2000]	= settr(1999,0,3004,1,0,".(goto)", 0, 2, 0);
	trans[0][1961]	= settr(1960,0,1962,1324,0,"((input==16))", 1, 2, 0);
	trans[0][1962]	= settr(1961,0,1963,1325,1325,"fsm_state = 48", 1, 2, 0);
	trans[0][1963]	= settr(1962,0,3004,1326,1326,"output = 3", 1, 2, 0);
	trans[0][1964]	= settr(1963,0,1965,1327,0,"((input==19))", 1, 2, 0);
	trans[0][1965]	= settr(1964,0,1966,1328,1328,"fsm_state = 48", 1, 2, 0);
	trans[0][1966]	= settr(1965,0,3004,1329,1329,"output = 3", 1, 2, 0);
	trans[0][1967]	= settr(1966,0,1968,1330,0,"((input==23))", 1, 2, 0);
	trans[0][1968]	= settr(1967,0,1969,1331,1331,"fsm_state = 48", 1, 2, 0);
	trans[0][1969]	= settr(1968,0,3004,1332,1332,"output = 3", 1, 2, 0);
	trans[0][1970]	= settr(1969,0,1971,1333,0,"((input==24))", 1, 2, 0);
	trans[0][1971]	= settr(1970,0,18,1334,1334,"fsm_state = 43", 1, 2, 0);
	trans[0][1972]	= settr(1971,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1973]	= settr(1972,0,1974,1335,0,"((input==27))", 1, 2, 0);
	trans[0][1974]	= settr(1973,0,18,1336,1336,"fsm_state = 25", 1, 2, 0);
	trans[0][1975]	= settr(1974,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1976]	= settr(1975,0,1977,1337,0,"((input==22))", 1, 2, 0);
	trans[0][1977]	= settr(1976,0,1978,1338,1338,"fsm_state = 17", 1, 2, 0);
	trans[0][1978]	= settr(1977,0,3004,1339,1339,"output = 10", 1, 2, 0);
	trans[0][1979]	= settr(1978,0,1980,1340,0,"((input==26))", 1, 2, 0);
	trans[0][1980]	= settr(1979,0,18,1341,1341,"fsm_state = 17", 1, 2, 0);
	trans[0][1981]	= settr(1980,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1982]	= settr(1981,0,1983,1342,0,"((input==21))", 1, 2, 0);
	trans[0][1983]	= settr(1982,0,1984,1343,1343,"fsm_state = 17", 1, 2, 0);
	trans[0][1984]	= settr(1983,0,3004,1344,1344,"output = 1", 1, 2, 0);
	trans[0][1985]	= settr(1984,0,1986,1345,0,"((input==17))", 1, 2, 0);
	trans[0][1986]	= settr(1985,0,18,1346,1346,"fsm_state = 17", 1, 2, 0);
	trans[0][1987]	= settr(1986,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1988]	= settr(1987,0,1989,1347,0,"((input==18))", 1, 2, 0);
	trans[0][1989]	= settr(1988,0,1990,1348,1348,"fsm_state = 17", 1, 2, 0);
	trans[0][1990]	= settr(1989,0,3004,1349,1349,"output = 10", 1, 2, 0);
	trans[0][1991]	= settr(1990,0,1992,1350,0,"((input==20))", 1, 2, 0);
	trans[0][1992]	= settr(1991,0,18,1351,1351,"fsm_state = 17", 1, 2, 0);
	trans[0][1993]	= settr(1992,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1994]	= settr(1993,0,1995,1352,0,"((input==28))", 1, 2, 0);
	trans[0][1995]	= settr(1994,0,18,1353,1353,"fsm_state = 14", 1, 2, 0);
	trans[0][1996]	= settr(1995,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][1997]	= settr(1996,0,18,2,0,"else", 0, 2, 0);
	trans[0][1998]	= settr(1997,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2001]	= settr(2000,0,2097,1354,0,"((fsm_state==16))", 1, 2, 0);
	T = trans[0][2097] = settr(2096,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2096,0,2002,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2096,0,2005,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2096,0,2008,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2096,0,2011,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2096,0,2014,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2096,0,2017,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2096,0,2020,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2096,0,2023,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2096,0,2026,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2096,0,2029,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2096,0,2032,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2096,0,2035,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2096,0,2092,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2096,0,2095,0,0,"IF", 0, 2, 0);
	trans[0][2002]	= settr(2001,0,2003,1355,0,"((input==25))", 1, 2, 0);
	trans[0][2003]	= settr(2002,0,2004,1356,1356,"fsm_state = 48", 1, 2, 0);
	trans[0][2004]	= settr(2003,0,3004,1357,1357,"output = 3", 1, 2, 0);
	trans[0][2098]	= settr(2097,0,3004,1,0,".(goto)", 0, 2, 0);
	trans[0][2005]	= settr(2004,0,2006,1358,0,"((input==16))", 1, 2, 0);
	trans[0][2006]	= settr(2005,0,2007,1359,1359,"fsm_state = 48", 1, 2, 0);
	trans[0][2007]	= settr(2006,0,3004,1360,1360,"output = 3", 1, 2, 0);
	trans[0][2008]	= settr(2007,0,2009,1361,0,"((input==19))", 1, 2, 0);
	trans[0][2009]	= settr(2008,0,2010,1362,1362,"fsm_state = 48", 1, 2, 0);
	trans[0][2010]	= settr(2009,0,3004,1363,1363,"output = 3", 1, 2, 0);
	trans[0][2011]	= settr(2010,0,2012,1364,0,"((input==23))", 1, 2, 0);
	trans[0][2012]	= settr(2011,0,2013,1365,1365,"fsm_state = 48", 1, 2, 0);
	trans[0][2013]	= settr(2012,0,3004,1366,1366,"output = 3", 1, 2, 0);
	trans[0][2014]	= settr(2013,0,2015,1367,0,"((input==24))", 1, 2, 0);
	trans[0][2015]	= settr(2014,0,18,1368,1368,"fsm_state = 43", 1, 2, 0);
	trans[0][2016]	= settr(2015,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2017]	= settr(2016,0,2018,1369,0,"((input==27))", 1, 2, 0);
	trans[0][2018]	= settr(2017,0,2019,1370,1370,"fsm_state = 21", 1, 2, 0);
	trans[0][2019]	= settr(2018,0,3004,1371,1371,"output = 10", 1, 2, 0);
	trans[0][2020]	= settr(2019,0,2021,1372,0,"((input==22))", 1, 2, 0);
	trans[0][2021]	= settr(2020,0,18,1373,1373,"fsm_state = 16", 1, 2, 0);
	trans[0][2022]	= settr(2021,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2023]	= settr(2022,0,2024,1374,0,"((input==26))", 1, 2, 0);
	trans[0][2024]	= settr(2023,0,2025,1375,1375,"fsm_state = 16", 1, 2, 0);
	trans[0][2025]	= settr(2024,0,3004,1376,1376,"output = 10", 1, 2, 0);
	trans[0][2026]	= settr(2025,0,2027,1377,0,"((input==21))", 1, 2, 0);
	trans[0][2027]	= settr(2026,0,2028,1378,1378,"fsm_state = 16", 1, 2, 0);
	trans[0][2028]	= settr(2027,0,3004,1379,1379,"output = 1", 1, 2, 0);
	trans[0][2029]	= settr(2028,0,2030,1380,0,"((input==17))", 1, 2, 0);
	trans[0][2030]	= settr(2029,0,2031,1381,1381,"fsm_state = 16", 1, 2, 0);
	trans[0][2031]	= settr(2030,0,3004,1382,1382,"output = 10", 1, 2, 0);
	trans[0][2032]	= settr(2031,0,2033,1383,0,"((input==20))", 1, 2, 0);
	trans[0][2033]	= settr(2032,0,2034,1384,1384,"fsm_state = 16", 1, 2, 0);
	trans[0][2034]	= settr(2033,0,3004,1385,1385,"output = 10", 1, 2, 0);
	trans[0][2035]	= settr(2034,0,2036,1386,0,"((input==28))", 1, 2, 0);
	trans[0][2036]	= settr(2035,0,2037,1387,1387,"fsm_state = 15", 1, 2, 0);
	trans[0][2037]	= settr(2036,0,2038,1388,1388,"output = 13", 1, 2, 0);
	trans[0][2038]	= settr(2037,0,2062,1389,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2062] = settr(2061,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2061,0,2055,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2055]	= settr(2054,32,2060,1390,1390,"D_STEP13", 1, 2, 0);
	T = trans[0][2060] = settr(2059,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2059,0,2056,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2059,0,2058,0,0,"IF", 0, 2, 0);
	trans[0][2056]	= settr(2055,0,1,1391,0,"((dealt==0))", 1, 2, 0);
	trans[0][2057]	= settr(2056,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2061]	= settr(2060,0,2063,1,0,".(goto)", 0, 2, 0);
	trans[0][2058]	= settr(2057,0,2059,2,0,"else", 0, 2, 0);
	trans[0][2059]	= settr(2058,0,2063,1,0,"(1)", 0, 2, 0);
	trans[0][2063]	= settr(2062,0,2064,1392,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2064]	= settr(2063,0,2065,1393,1393,"output = 5", 1, 2, 0);
	trans[0][2065]	= settr(2064,0,2089,1394,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2089] = settr(2088,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2088,0,2082,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2082]	= settr(2081,32,2087,1395,1395,"D_STEP13", 1, 2, 0);
	T = trans[0][2087] = settr(2086,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2086,0,2083,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2086,0,2085,0,0,"IF", 0, 2, 0);
	trans[0][2083]	= settr(2082,0,1,1396,0,"((dealt==0))", 1, 2, 0);
	trans[0][2084]	= settr(2083,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2088]	= settr(2087,0,2090,1,0,".(goto)", 0, 2, 0);
	trans[0][2085]	= settr(2084,0,2086,2,0,"else", 0, 2, 0);
	trans[0][2086]	= settr(2085,0,2090,1,0,"(1)", 0, 2, 0);
	trans[0][2090]	= settr(2089,0,2091,1397,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2091]	= settr(2090,0,3004,1398,1398,"output = 12", 1, 2, 0);
	trans[0][2092]	= settr(2091,0,2093,1399,0,"((input==18))", 1, 2, 0);
	trans[0][2093]	= settr(2092,0,18,1400,1400,"fsm_state = 14", 1, 2, 0);
	trans[0][2094]	= settr(2093,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2095]	= settr(2094,0,18,2,0,"else", 0, 2, 0);
	trans[0][2096]	= settr(2095,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2099]	= settr(2098,0,2141,1401,0,"((fsm_state==15))", 1, 2, 0);
	T = trans[0][2141] = settr(2140,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2140,0,2100,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2140,0,2103,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2140,0,2106,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2140,0,2109,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2140,0,2112,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2140,0,2115,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2140,0,2118,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2140,0,2121,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2140,0,2124,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2140,0,2127,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2140,0,2130,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2140,0,2133,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2140,0,2136,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2140,0,2139,0,0,"IF", 0, 2, 0);
	trans[0][2100]	= settr(2099,0,2101,1402,0,"((input==28))", 1, 2, 0);
	trans[0][2101]	= settr(2100,0,2102,1403,1403,"fsm_state = 48", 1, 2, 0);
	trans[0][2102]	= settr(2101,0,3004,1404,1404,"output = 3", 1, 2, 0);
	trans[0][2142]	= settr(2141,0,3004,1,0,".(goto)", 0, 2, 0);
	trans[0][2103]	= settr(2102,0,2104,1405,0,"((input==25))", 1, 2, 0);
	trans[0][2104]	= settr(2103,0,2105,1406,1406,"fsm_state = 48", 1, 2, 0);
	trans[0][2105]	= settr(2104,0,3004,1407,1407,"output = 3", 1, 2, 0);
	trans[0][2106]	= settr(2105,0,2107,1408,0,"((input==16))", 1, 2, 0);
	trans[0][2107]	= settr(2106,0,2108,1409,1409,"fsm_state = 48", 1, 2, 0);
	trans[0][2108]	= settr(2107,0,3004,1410,1410,"output = 3", 1, 2, 0);
	trans[0][2109]	= settr(2108,0,2110,1411,0,"((input==19))", 1, 2, 0);
	trans[0][2110]	= settr(2109,0,2111,1412,1412,"fsm_state = 48", 1, 2, 0);
	trans[0][2111]	= settr(2110,0,3004,1413,1413,"output = 3", 1, 2, 0);
	trans[0][2112]	= settr(2111,0,2113,1414,0,"((input==23))", 1, 2, 0);
	trans[0][2113]	= settr(2112,0,2114,1415,1415,"fsm_state = 48", 1, 2, 0);
	trans[0][2114]	= settr(2113,0,3004,1416,1416,"output = 3", 1, 2, 0);
	trans[0][2115]	= settr(2114,0,2116,1417,0,"((input==24))", 1, 2, 0);
	trans[0][2116]	= settr(2115,0,18,1418,1418,"fsm_state = 36", 1, 2, 0);
	trans[0][2117]	= settr(2116,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2118]	= settr(2117,0,2119,1419,0,"((input==27))", 1, 2, 0);
	trans[0][2119]	= settr(2118,0,2120,1420,1420,"fsm_state = 19", 1, 2, 0);
	trans[0][2120]	= settr(2119,0,3004,1421,1421,"output = 10", 1, 2, 0);
	trans[0][2121]	= settr(2120,0,2122,1422,0,"((input==22))", 1, 2, 0);
	trans[0][2122]	= settr(2121,0,2123,1423,1423,"fsm_state = 15", 1, 2, 0);
	trans[0][2123]	= settr(2122,0,3004,1424,1424,"output = 11", 1, 2, 0);
	trans[0][2124]	= settr(2123,0,2125,1425,0,"((input==26))", 1, 2, 0);
	trans[0][2125]	= settr(2124,0,2126,1426,1426,"fsm_state = 15", 1, 2, 0);
	trans[0][2126]	= settr(2125,0,3004,1427,1427,"output = 10", 1, 2, 0);
	trans[0][2127]	= settr(2126,0,2128,1428,0,"((input==21))", 1, 2, 0);
	trans[0][2128]	= settr(2127,0,2129,1429,1429,"fsm_state = 15", 1, 2, 0);
	trans[0][2129]	= settr(2128,0,3004,1430,1430,"output = 1", 1, 2, 0);
	trans[0][2130]	= settr(2129,0,2131,1431,0,"((input==17))", 1, 2, 0);
	trans[0][2131]	= settr(2130,0,2132,1432,1432,"fsm_state = 15", 1, 2, 0);
	trans[0][2132]	= settr(2131,0,3004,1433,1433,"output = 10", 1, 2, 0);
	trans[0][2133]	= settr(2132,0,2134,1434,0,"((input==20))", 1, 2, 0);
	trans[0][2134]	= settr(2133,0,2135,1435,1435,"fsm_state = 15", 1, 2, 0);
	trans[0][2135]	= settr(2134,0,3004,1436,1436,"output = 10", 1, 2, 0);
	trans[0][2136]	= settr(2135,0,2137,1437,0,"((input==18))", 1, 2, 0);
	trans[0][2137]	= settr(2136,0,2138,1438,1438,"fsm_state = 5", 1, 2, 0);
	trans[0][2138]	= settr(2137,0,3004,1439,1439,"output = 2", 1, 2, 0);
	trans[0][2139]	= settr(2138,0,18,2,0,"else", 0, 2, 0);
	trans[0][2140]	= settr(2139,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2143]	= settr(2142,0,2239,1440,0,"((fsm_state==14))", 1, 2, 0);
	T = trans[0][2239] = settr(2238,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2238,0,2144,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2238,0,2147,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2238,0,2150,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2238,0,2153,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2238,0,2156,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2238,0,2159,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2238,0,2162,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2238,0,2165,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2238,0,2168,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2238,0,2171,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2238,0,2174,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2238,0,2177,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2238,0,2180,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2238,0,2237,0,0,"IF", 0, 2, 0);
	trans[0][2144]	= settr(2143,0,2145,1441,0,"((input==25))", 1, 2, 0);
	trans[0][2145]	= settr(2144,0,2146,1442,1442,"fsm_state = 48", 1, 2, 0);
	trans[0][2146]	= settr(2145,0,3004,1443,1443,"output = 3", 1, 2, 0);
	trans[0][2240]	= settr(2239,0,3004,1,0,".(goto)", 0, 2, 0);
	trans[0][2147]	= settr(2146,0,2148,1444,0,"((input==16))", 1, 2, 0);
	trans[0][2148]	= settr(2147,0,2149,1445,1445,"fsm_state = 48", 1, 2, 0);
	trans[0][2149]	= settr(2148,0,3004,1446,1446,"output = 3", 1, 2, 0);
	trans[0][2150]	= settr(2149,0,2151,1447,0,"((input==19))", 1, 2, 0);
	trans[0][2151]	= settr(2150,0,2152,1448,1448,"fsm_state = 48", 1, 2, 0);
	trans[0][2152]	= settr(2151,0,3004,1449,1449,"output = 3", 1, 2, 0);
	trans[0][2153]	= settr(2152,0,2154,1450,0,"((input==23))", 1, 2, 0);
	trans[0][2154]	= settr(2153,0,2155,1451,1451,"fsm_state = 48", 1, 2, 0);
	trans[0][2155]	= settr(2154,0,3004,1452,1452,"output = 3", 1, 2, 0);
	trans[0][2156]	= settr(2155,0,2157,1453,0,"((input==24))", 1, 2, 0);
	trans[0][2157]	= settr(2156,0,18,1454,1454,"fsm_state = 43", 1, 2, 0);
	trans[0][2158]	= settr(2157,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2159]	= settr(2158,0,2160,1455,0,"((input==27))", 1, 2, 0);
	trans[0][2160]	= settr(2159,0,18,1456,1456,"fsm_state = 20", 1, 2, 0);
	trans[0][2161]	= settr(2160,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2162]	= settr(2161,0,2163,1457,0,"((input==22))", 1, 2, 0);
	trans[0][2163]	= settr(2162,0,2164,1458,1458,"fsm_state = 14", 1, 2, 0);
	trans[0][2164]	= settr(2163,0,3004,1459,1459,"output = 10", 1, 2, 0);
	trans[0][2165]	= settr(2164,0,2166,1460,0,"((input==26))", 1, 2, 0);
	trans[0][2166]	= settr(2165,0,18,1461,1461,"fsm_state = 14", 1, 2, 0);
	trans[0][2167]	= settr(2166,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2168]	= settr(2167,0,2169,1462,0,"((input==21))", 1, 2, 0);
	trans[0][2169]	= settr(2168,0,2170,1463,1463,"fsm_state = 14", 1, 2, 0);
	trans[0][2170]	= settr(2169,0,3004,1464,1464,"output = 1", 1, 2, 0);
	trans[0][2171]	= settr(2170,0,2172,1465,0,"((input==17))", 1, 2, 0);
	trans[0][2172]	= settr(2171,0,18,1466,1466,"fsm_state = 14", 1, 2, 0);
	trans[0][2173]	= settr(2172,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2174]	= settr(2173,0,2175,1467,0,"((input==18))", 1, 2, 0);
	trans[0][2175]	= settr(2174,0,2176,1468,1468,"fsm_state = 14", 1, 2, 0);
	trans[0][2176]	= settr(2175,0,3004,1469,1469,"output = 10", 1, 2, 0);
	trans[0][2177]	= settr(2176,0,2178,1470,0,"((input==20))", 1, 2, 0);
	trans[0][2178]	= settr(2177,0,18,1471,1471,"fsm_state = 14", 1, 2, 0);
	trans[0][2179]	= settr(2178,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2180]	= settr(2179,0,2181,1472,0,"((input==28))", 1, 2, 0);
	trans[0][2181]	= settr(2180,0,2182,1473,1473,"fsm_state = 5", 1, 2, 0);
	trans[0][2182]	= settr(2181,0,2183,1474,1474,"output = 13", 1, 2, 0);
	trans[0][2183]	= settr(2182,0,2207,1475,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2207] = settr(2206,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2206,0,2200,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2200]	= settr(2199,32,2205,1476,1476,"D_STEP13", 1, 2, 0);
	T = trans[0][2205] = settr(2204,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2204,0,2201,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2204,0,2203,0,0,"IF", 0, 2, 0);
	trans[0][2201]	= settr(2200,0,1,1477,0,"((dealt==0))", 1, 2, 0);
	trans[0][2202]	= settr(2201,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2206]	= settr(2205,0,2208,1,0,".(goto)", 0, 2, 0);
	trans[0][2203]	= settr(2202,0,2204,2,0,"else", 0, 2, 0);
	trans[0][2204]	= settr(2203,0,2208,1,0,"(1)", 0, 2, 0);
	trans[0][2208]	= settr(2207,0,2209,1478,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2209]	= settr(2208,0,2210,1479,1479,"output = 5", 1, 2, 0);
	trans[0][2210]	= settr(2209,0,2234,1480,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2234] = settr(2233,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2233,0,2227,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2227]	= settr(2226,32,2232,1481,1481,"D_STEP13", 1, 2, 0);
	T = trans[0][2232] = settr(2231,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2231,0,2228,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2231,0,2230,0,0,"IF", 0, 2, 0);
	trans[0][2228]	= settr(2227,0,1,1482,0,"((dealt==0))", 1, 2, 0);
	trans[0][2229]	= settr(2228,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2233]	= settr(2232,0,2235,1,0,".(goto)", 0, 2, 0);
	trans[0][2230]	= settr(2229,0,2231,2,0,"else", 0, 2, 0);
	trans[0][2231]	= settr(2230,0,2235,1,0,"(1)", 0, 2, 0);
	trans[0][2235]	= settr(2234,0,2236,1483,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2236]	= settr(2235,0,3004,1484,1484,"output = 12", 1, 2, 0);
	trans[0][2237]	= settr(2236,0,18,2,0,"else", 0, 2, 0);
	trans[0][2238]	= settr(2237,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2241]	= settr(2240,0,2310,1485,0,"((fsm_state==13))", 1, 2, 0);
	T = trans[0][2310] = settr(2309,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2309,0,2242,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2309,0,2245,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2309,0,2248,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2309,0,2251,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2309,0,2254,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2309,0,2257,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2309,0,2260,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2309,0,2263,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2309,0,2266,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2309,0,2269,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2309,0,2272,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2309,0,2275,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2309,0,2278,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2309,0,2308,0,0,"IF", 0, 2, 0);
	trans[0][2242]	= settr(2241,0,2243,1486,0,"((input==25))", 1, 2, 0);
	trans[0][2243]	= settr(2242,0,2244,1487,1487,"fsm_state = 48", 1, 2, 0);
	trans[0][2244]	= settr(2243,0,3004,1488,1488,"output = 3", 1, 2, 0);
	trans[0][2311]	= settr(2310,0,3004,1,0,".(goto)", 0, 2, 0);
	trans[0][2245]	= settr(2244,0,2246,1489,0,"((input==16))", 1, 2, 0);
	trans[0][2246]	= settr(2245,0,2247,1490,1490,"fsm_state = 48", 1, 2, 0);
	trans[0][2247]	= settr(2246,0,3004,1491,1491,"output = 3", 1, 2, 0);
	trans[0][2248]	= settr(2247,0,2249,1492,0,"((input==19))", 1, 2, 0);
	trans[0][2249]	= settr(2248,0,2250,1493,1493,"fsm_state = 48", 1, 2, 0);
	trans[0][2250]	= settr(2249,0,3004,1494,1494,"output = 3", 1, 2, 0);
	trans[0][2251]	= settr(2250,0,2252,1495,0,"((input==23))", 1, 2, 0);
	trans[0][2252]	= settr(2251,0,2253,1496,1496,"fsm_state = 48", 1, 2, 0);
	trans[0][2253]	= settr(2252,0,3004,1497,1497,"output = 3", 1, 2, 0);
	trans[0][2254]	= settr(2253,0,2255,1498,0,"((input==24))", 1, 2, 0);
	trans[0][2255]	= settr(2254,0,18,1499,1499,"fsm_state = 43", 1, 2, 0);
	trans[0][2256]	= settr(2255,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2257]	= settr(2256,0,2258,1500,0,"((input==27))", 1, 2, 0);
	trans[0][2258]	= settr(2257,0,18,1501,1501,"fsm_state = 24", 1, 2, 0);
	trans[0][2259]	= settr(2258,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2260]	= settr(2259,0,2261,1502,0,"((input==22))", 1, 2, 0);
	trans[0][2261]	= settr(2260,0,2262,1503,1503,"fsm_state = 13", 1, 2, 0);
	trans[0][2262]	= settr(2261,0,3004,1504,1504,"output = 10", 1, 2, 0);
	trans[0][2263]	= settr(2262,0,2264,1505,0,"((input==26))", 1, 2, 0);
	trans[0][2264]	= settr(2263,0,18,1506,1506,"fsm_state = 13", 1, 2, 0);
	trans[0][2265]	= settr(2264,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2266]	= settr(2265,0,2267,1507,0,"((input==21))", 1, 2, 0);
	trans[0][2267]	= settr(2266,0,2268,1508,1508,"fsm_state = 13", 1, 2, 0);
	trans[0][2268]	= settr(2267,0,3004,1509,1509,"output = 1", 1, 2, 0);
	trans[0][2269]	= settr(2268,0,2270,1510,0,"((input==17))", 1, 2, 0);
	trans[0][2270]	= settr(2269,0,18,1511,1511,"fsm_state = 13", 1, 2, 0);
	trans[0][2271]	= settr(2270,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2272]	= settr(2271,0,2273,1512,0,"((input==18))", 1, 2, 0);
	trans[0][2273]	= settr(2272,0,2274,1513,1513,"fsm_state = 13", 1, 2, 0);
	trans[0][2274]	= settr(2273,0,3004,1514,1514,"output = 10", 1, 2, 0);
	trans[0][2275]	= settr(2274,0,2276,1515,0,"((input==20))", 1, 2, 0);
	trans[0][2276]	= settr(2275,0,18,1516,1516,"fsm_state = 13", 1, 2, 0);
	trans[0][2277]	= settr(2276,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2278]	= settr(2277,0,2279,1517,0,"((input==28))", 1, 2, 0);
	trans[0][2279]	= settr(2278,0,2280,1518,1518,"fsm_state = 5", 1, 2, 0);
	trans[0][2280]	= settr(2279,0,2281,1519,1519,"output = 13", 1, 2, 0);
	trans[0][2281]	= settr(2280,0,2305,1520,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2305] = settr(2304,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2304,0,2298,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2298]	= settr(2297,32,2303,1521,1521,"D_STEP13", 1, 2, 0);
	T = trans[0][2303] = settr(2302,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2302,0,2299,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2302,0,2301,0,0,"IF", 0, 2, 0);
	trans[0][2299]	= settr(2298,0,1,1522,0,"((dealt==0))", 1, 2, 0);
	trans[0][2300]	= settr(2299,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2304]	= settr(2303,0,2306,1,0,".(goto)", 0, 2, 0);
	trans[0][2301]	= settr(2300,0,2302,2,0,"else", 0, 2, 0);
	trans[0][2302]	= settr(2301,0,2306,1,0,"(1)", 0, 2, 0);
	trans[0][2306]	= settr(2305,0,2307,1523,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2307]	= settr(2306,0,3004,1524,1524,"output = 5", 1, 2, 0);
	trans[0][2308]	= settr(2307,0,18,2,0,"else", 0, 2, 0);
	trans[0][2309]	= settr(2308,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2312]	= settr(2311,0,2354,1525,0,"((fsm_state==12))", 1, 2, 0);
	T = trans[0][2354] = settr(2353,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2353,0,2313,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2353,0,2316,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2353,0,2319,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2353,0,2322,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2353,0,2325,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2353,0,2328,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2353,0,2331,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2353,0,2334,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2353,0,2337,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2353,0,2340,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2353,0,2343,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2353,0,2346,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2353,0,2349,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2353,0,2352,0,0,"IF", 0, 2, 0);
	trans[0][2313]	= settr(2312,0,2314,1526,0,"((input==25))", 1, 2, 0);
	trans[0][2314]	= settr(2313,0,2315,1527,1527,"fsm_state = 48", 1, 2, 0);
	trans[0][2315]	= settr(2314,0,3004,1528,1528,"output = 3", 1, 2, 0);
	trans[0][2355]	= settr(2354,0,3004,1,0,".(goto)", 0, 2, 0);
	trans[0][2316]	= settr(2315,0,2317,1529,0,"((input==16))", 1, 2, 0);
	trans[0][2317]	= settr(2316,0,2318,1530,1530,"fsm_state = 48", 1, 2, 0);
	trans[0][2318]	= settr(2317,0,3004,1531,1531,"output = 3", 1, 2, 0);
	trans[0][2319]	= settr(2318,0,2320,1532,0,"((input==19))", 1, 2, 0);
	trans[0][2320]	= settr(2319,0,2321,1533,1533,"fsm_state = 48", 1, 2, 0);
	trans[0][2321]	= settr(2320,0,3004,1534,1534,"output = 3", 1, 2, 0);
	trans[0][2322]	= settr(2321,0,2323,1535,0,"((input==23))", 1, 2, 0);
	trans[0][2323]	= settr(2322,0,2324,1536,1536,"fsm_state = 48", 1, 2, 0);
	trans[0][2324]	= settr(2323,0,3004,1537,1537,"output = 3", 1, 2, 0);
	trans[0][2325]	= settr(2324,0,2326,1538,0,"((input==24))", 1, 2, 0);
	trans[0][2326]	= settr(2325,0,18,1539,1539,"fsm_state = 43", 1, 2, 0);
	trans[0][2327]	= settr(2326,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2328]	= settr(2327,0,2329,1540,0,"((input==27))", 1, 2, 0);
	trans[0][2329]	= settr(2328,0,18,1541,1541,"fsm_state = 22", 1, 2, 0);
	trans[0][2330]	= settr(2329,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2331]	= settr(2330,0,2332,1542,0,"((input==28))", 1, 2, 0);
	trans[0][2332]	= settr(2331,0,18,1543,1543,"fsm_state = 13", 1, 2, 0);
	trans[0][2333]	= settr(2332,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2334]	= settr(2333,0,2335,1544,0,"((input==22))", 1, 2, 0);
	trans[0][2335]	= settr(2334,0,2336,1545,1545,"fsm_state = 12", 1, 2, 0);
	trans[0][2336]	= settr(2335,0,3004,1546,1546,"output = 10", 1, 2, 0);
	trans[0][2337]	= settr(2336,0,2338,1547,0,"((input==26))", 1, 2, 0);
	trans[0][2338]	= settr(2337,0,18,1548,1548,"fsm_state = 12", 1, 2, 0);
	trans[0][2339]	= settr(2338,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2340]	= settr(2339,0,2341,1549,0,"((input==21))", 1, 2, 0);
	trans[0][2341]	= settr(2340,0,2342,1550,1550,"fsm_state = 12", 1, 2, 0);
	trans[0][2342]	= settr(2341,0,3004,1551,1551,"output = 1", 1, 2, 0);
	trans[0][2343]	= settr(2342,0,2344,1552,0,"((input==17))", 1, 2, 0);
	trans[0][2344]	= settr(2343,0,18,1553,1553,"fsm_state = 12", 1, 2, 0);
	trans[0][2345]	= settr(2344,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2346]	= settr(2345,0,2347,1554,0,"((input==18))", 1, 2, 0);
	trans[0][2347]	= settr(2346,0,2348,1555,1555,"fsm_state = 12", 1, 2, 0);
	trans[0][2348]	= settr(2347,0,3004,1556,1556,"output = 10", 1, 2, 0);
	trans[0][2349]	= settr(2348,0,2350,1557,0,"((input==20))", 1, 2, 0);
	trans[0][2350]	= settr(2349,0,18,1558,1558,"fsm_state = 12", 1, 2, 0);
	trans[0][2351]	= settr(2350,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2352]	= settr(2351,0,18,2,0,"else", 0, 2, 0);
	trans[0][2353]	= settr(2352,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2356]	= settr(2355,0,2398,1559,0,"((fsm_state==11))", 1, 2, 0);
	T = trans[0][2398] = settr(2397,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2397,0,2357,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2397,0,2360,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2397,0,2363,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2397,0,2366,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2397,0,2369,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2397,0,2372,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2397,0,2375,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2397,0,2378,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2397,0,2381,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2397,0,2384,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2397,0,2387,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2397,0,2390,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2397,0,2393,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2397,0,2396,0,0,"IF", 0, 2, 0);
	trans[0][2357]	= settr(2356,0,2358,1560,0,"((input==25))", 1, 2, 0);
	trans[0][2358]	= settr(2357,0,2359,1561,1561,"fsm_state = 48", 1, 2, 0);
	trans[0][2359]	= settr(2358,0,3004,1562,1562,"output = 3", 1, 2, 0);
	trans[0][2399]	= settr(2398,0,3004,1,0,".(goto)", 0, 2, 0);
	trans[0][2360]	= settr(2359,0,2361,1563,0,"((input==16))", 1, 2, 0);
	trans[0][2361]	= settr(2360,0,2362,1564,1564,"fsm_state = 48", 1, 2, 0);
	trans[0][2362]	= settr(2361,0,3004,1565,1565,"output = 3", 1, 2, 0);
	trans[0][2363]	= settr(2362,0,2364,1566,0,"((input==19))", 1, 2, 0);
	trans[0][2364]	= settr(2363,0,2365,1567,1567,"fsm_state = 48", 1, 2, 0);
	trans[0][2365]	= settr(2364,0,3004,1568,1568,"output = 3", 1, 2, 0);
	trans[0][2366]	= settr(2365,0,2367,1569,0,"((input==23))", 1, 2, 0);
	trans[0][2367]	= settr(2366,0,2368,1570,1570,"fsm_state = 48", 1, 2, 0);
	trans[0][2368]	= settr(2367,0,3004,1571,1571,"output = 3", 1, 2, 0);
	trans[0][2369]	= settr(2368,0,2370,1572,0,"((input==24))", 1, 2, 0);
	trans[0][2370]	= settr(2369,0,18,1573,1573,"fsm_state = 43", 1, 2, 0);
	trans[0][2371]	= settr(2370,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2372]	= settr(2371,0,2373,1574,0,"((input==27))", 1, 2, 0);
	trans[0][2373]	= settr(2372,0,18,1575,1575,"fsm_state = 25", 1, 2, 0);
	trans[0][2374]	= settr(2373,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2375]	= settr(2374,0,2376,1576,0,"((input==20))", 1, 2, 0);
	trans[0][2376]	= settr(2375,0,18,1577,1577,"fsm_state = 17", 1, 2, 0);
	trans[0][2377]	= settr(2376,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2378]	= settr(2377,0,2379,1578,0,"((input==22))", 1, 2, 0);
	trans[0][2379]	= settr(2378,0,2380,1579,1579,"fsm_state = 11", 1, 2, 0);
	trans[0][2380]	= settr(2379,0,3004,1580,1580,"output = 10", 1, 2, 0);
	trans[0][2381]	= settr(2380,0,2382,1581,0,"((input==26))", 1, 2, 0);
	trans[0][2382]	= settr(2381,0,18,1582,1582,"fsm_state = 11", 1, 2, 0);
	trans[0][2383]	= settr(2382,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2384]	= settr(2383,0,2385,1583,0,"((input==21))", 1, 2, 0);
	trans[0][2385]	= settr(2384,0,2386,1584,1584,"fsm_state = 11", 1, 2, 0);
	trans[0][2386]	= settr(2385,0,3004,1585,1585,"output = 1", 1, 2, 0);
	trans[0][2387]	= settr(2386,0,2388,1586,0,"((input==17))", 1, 2, 0);
	trans[0][2388]	= settr(2387,0,18,1587,1587,"fsm_state = 11", 1, 2, 0);
	trans[0][2389]	= settr(2388,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2390]	= settr(2389,0,2391,1588,0,"((input==18))", 1, 2, 0);
	trans[0][2391]	= settr(2390,0,2392,1589,1589,"fsm_state = 11", 1, 2, 0);
	trans[0][2392]	= settr(2391,0,3004,1590,1590,"output = 10", 1, 2, 0);
	trans[0][2393]	= settr(2392,0,2394,1591,0,"((input==28))", 1, 2, 0);
	trans[0][2394]	= settr(2393,0,18,1592,1592,"fsm_state = 10", 1, 2, 0);
	trans[0][2395]	= settr(2394,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2396]	= settr(2395,0,18,2,0,"else", 0, 2, 0);
	trans[0][2397]	= settr(2396,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2400]	= settr(2399,0,2496,1593,0,"((fsm_state==10))", 1, 2, 0);
	T = trans[0][2496] = settr(2495,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2495,0,2401,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2495,0,2404,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2495,0,2407,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2495,0,2410,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2495,0,2413,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2495,0,2416,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2495,0,2419,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2495,0,2422,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2495,0,2425,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2495,0,2428,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2495,0,2431,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2495,0,2434,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2495,0,2437,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2495,0,2494,0,0,"IF", 0, 2, 0);
	trans[0][2401]	= settr(2400,0,2402,1594,0,"((input==25))", 1, 2, 0);
	trans[0][2402]	= settr(2401,0,2403,1595,1595,"fsm_state = 48", 1, 2, 0);
	trans[0][2403]	= settr(2402,0,3004,1596,1596,"output = 3", 1, 2, 0);
	trans[0][2497]	= settr(2496,0,3004,1,0,".(goto)", 0, 2, 0);
	trans[0][2404]	= settr(2403,0,2405,1597,0,"((input==16))", 1, 2, 0);
	trans[0][2405]	= settr(2404,0,2406,1598,1598,"fsm_state = 48", 1, 2, 0);
	trans[0][2406]	= settr(2405,0,3004,1599,1599,"output = 3", 1, 2, 0);
	trans[0][2407]	= settr(2406,0,2408,1600,0,"((input==19))", 1, 2, 0);
	trans[0][2408]	= settr(2407,0,2409,1601,1601,"fsm_state = 48", 1, 2, 0);
	trans[0][2409]	= settr(2408,0,3004,1602,1602,"output = 3", 1, 2, 0);
	trans[0][2410]	= settr(2409,0,2411,1603,0,"((input==23))", 1, 2, 0);
	trans[0][2411]	= settr(2410,0,2412,1604,1604,"fsm_state = 48", 1, 2, 0);
	trans[0][2412]	= settr(2411,0,3004,1605,1605,"output = 3", 1, 2, 0);
	trans[0][2413]	= settr(2412,0,2414,1606,0,"((input==24))", 1, 2, 0);
	trans[0][2414]	= settr(2413,0,18,1607,1607,"fsm_state = 43", 1, 2, 0);
	trans[0][2415]	= settr(2414,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2416]	= settr(2415,0,2417,1608,0,"((input==27))", 1, 2, 0);
	trans[0][2417]	= settr(2416,0,18,1609,1609,"fsm_state = 20", 1, 2, 0);
	trans[0][2418]	= settr(2417,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2419]	= settr(2418,0,2420,1610,0,"((input==20))", 1, 2, 0);
	trans[0][2420]	= settr(2419,0,18,1611,1611,"fsm_state = 14", 1, 2, 0);
	trans[0][2421]	= settr(2420,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2422]	= settr(2421,0,2423,1612,0,"((input==22))", 1, 2, 0);
	trans[0][2423]	= settr(2422,0,2424,1613,1613,"fsm_state = 10", 1, 2, 0);
	trans[0][2424]	= settr(2423,0,3004,1614,1614,"output = 10", 1, 2, 0);
	trans[0][2425]	= settr(2424,0,2426,1615,0,"((input==26))", 1, 2, 0);
	trans[0][2426]	= settr(2425,0,18,1616,1616,"fsm_state = 10", 1, 2, 0);
	trans[0][2427]	= settr(2426,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2428]	= settr(2427,0,2429,1617,0,"((input==21))", 1, 2, 0);
	trans[0][2429]	= settr(2428,0,2430,1618,1618,"fsm_state = 10", 1, 2, 0);
	trans[0][2430]	= settr(2429,0,3004,1619,1619,"output = 1", 1, 2, 0);
	trans[0][2431]	= settr(2430,0,2432,1620,0,"((input==18))", 1, 2, 0);
	trans[0][2432]	= settr(2431,0,2433,1621,1621,"fsm_state = 10", 1, 2, 0);
	trans[0][2433]	= settr(2432,0,3004,1622,1622,"output = 10", 1, 2, 0);
	trans[0][2434]	= settr(2433,0,2435,1623,0,"((input==17))", 1, 2, 0);
	trans[0][2435]	= settr(2434,0,18,1624,1624,"fsm_state = 4", 1, 2, 0);
	trans[0][2436]	= settr(2435,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2437]	= settr(2436,0,2438,1625,0,"((input==28))", 1, 2, 0);
	trans[0][2438]	= settr(2437,0,2439,1626,1626,"fsm_state = 3", 1, 2, 0);
	trans[0][2439]	= settr(2438,0,2440,1627,1627,"output = 13", 1, 2, 0);
	trans[0][2440]	= settr(2439,0,2464,1628,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2464] = settr(2463,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2463,0,2457,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2457]	= settr(2456,32,2462,1629,1629,"D_STEP13", 1, 2, 0);
	T = trans[0][2462] = settr(2461,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2461,0,2458,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2461,0,2460,0,0,"IF", 0, 2, 0);
	trans[0][2458]	= settr(2457,0,1,1630,0,"((dealt==0))", 1, 2, 0);
	trans[0][2459]	= settr(2458,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2463]	= settr(2462,0,2465,1,0,".(goto)", 0, 2, 0);
	trans[0][2460]	= settr(2459,0,2461,2,0,"else", 0, 2, 0);
	trans[0][2461]	= settr(2460,0,2465,1,0,"(1)", 0, 2, 0);
	trans[0][2465]	= settr(2464,0,2466,1631,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2466]	= settr(2465,0,2467,1632,1632,"output = 5", 1, 2, 0);
	trans[0][2467]	= settr(2466,0,2491,1633,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2491] = settr(2490,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2490,0,2484,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2484]	= settr(2483,32,2489,1634,1634,"D_STEP13", 1, 2, 0);
	T = trans[0][2489] = settr(2488,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2488,0,2485,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2488,0,2487,0,0,"IF", 0, 2, 0);
	trans[0][2485]	= settr(2484,0,1,1635,0,"((dealt==0))", 1, 2, 0);
	trans[0][2486]	= settr(2485,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2490]	= settr(2489,0,2492,1,0,".(goto)", 0, 2, 0);
	trans[0][2487]	= settr(2486,0,2488,2,0,"else", 0, 2, 0);
	trans[0][2488]	= settr(2487,0,2492,1,0,"(1)", 0, 2, 0);
	trans[0][2492]	= settr(2491,0,2493,1636,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2493]	= settr(2492,0,3004,1637,1637,"output = 12", 1, 2, 0);
	trans[0][2494]	= settr(2493,0,18,2,0,"else", 0, 2, 0);
	trans[0][2495]	= settr(2494,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2498]	= settr(2497,0,2540,1638,0,"((fsm_state==9))", 1, 2, 0);
	T = trans[0][2540] = settr(2539,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2539,0,2499,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2539,0,2502,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2539,0,2505,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2539,0,2508,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2539,0,2511,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2539,0,2514,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2539,0,2517,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2539,0,2520,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2539,0,2523,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2539,0,2526,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2539,0,2529,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2539,0,2532,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2539,0,2535,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2539,0,2538,0,0,"IF", 0, 2, 0);
	trans[0][2499]	= settr(2498,0,2500,1639,0,"((input==28))", 1, 2, 0);
	trans[0][2500]	= settr(2499,0,2501,1640,1640,"fsm_state = 47", 1, 2, 0);
	trans[0][2501]	= settr(2500,0,3004,1641,1641,"output = 3", 1, 2, 0);
	trans[0][2541]	= settr(2540,0,3004,1,0,".(goto)", 0, 2, 0);
	trans[0][2502]	= settr(2501,0,2503,1642,0,"((input==25))", 1, 2, 0);
	trans[0][2503]	= settr(2502,0,2504,1643,1643,"fsm_state = 47", 1, 2, 0);
	trans[0][2504]	= settr(2503,0,3004,1644,1644,"output = 3", 1, 2, 0);
	trans[0][2505]	= settr(2504,0,2506,1645,0,"((input==16))", 1, 2, 0);
	trans[0][2506]	= settr(2505,0,2507,1646,1646,"fsm_state = 47", 1, 2, 0);
	trans[0][2507]	= settr(2506,0,3004,1647,1647,"output = 3", 1, 2, 0);
	trans[0][2508]	= settr(2507,0,2509,1648,0,"((input==19))", 1, 2, 0);
	trans[0][2509]	= settr(2508,0,2510,1649,1649,"fsm_state = 47", 1, 2, 0);
	trans[0][2510]	= settr(2509,0,3004,1650,1650,"output = 3", 1, 2, 0);
	trans[0][2511]	= settr(2510,0,2512,1651,0,"((input==23))", 1, 2, 0);
	trans[0][2512]	= settr(2511,0,2513,1652,1652,"fsm_state = 47", 1, 2, 0);
	trans[0][2513]	= settr(2512,0,3004,1653,1653,"output = 3", 1, 2, 0);
	trans[0][2514]	= settr(2513,0,2515,1654,0,"((input==24))", 1, 2, 0);
	trans[0][2515]	= settr(2514,0,18,1655,1655,"fsm_state = 32", 1, 2, 0);
	trans[0][2516]	= settr(2515,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2517]	= settr(2516,0,2518,1656,0,"((input==22))", 1, 2, 0);
	trans[0][2518]	= settr(2517,0,2519,1657,1657,"fsm_state = 9", 1, 2, 0);
	trans[0][2519]	= settr(2518,0,3004,1658,1658,"output = 10", 1, 2, 0);
	trans[0][2520]	= settr(2519,0,2521,1659,0,"((input==26))", 1, 2, 0);
	trans[0][2521]	= settr(2520,0,2522,1660,1660,"fsm_state = 9", 1, 2, 0);
	trans[0][2522]	= settr(2521,0,3004,1661,1661,"output = 9", 1, 2, 0);
	trans[0][2523]	= settr(2522,0,2524,1662,0,"((input==17))", 1, 2, 0);
	trans[0][2524]	= settr(2523,0,2525,1663,1663,"fsm_state = 9", 1, 2, 0);
	trans[0][2525]	= settr(2524,0,3004,1664,1664,"output = 9", 1, 2, 0);
	trans[0][2526]	= settr(2525,0,2527,1665,0,"((input==18))", 1, 2, 0);
	trans[0][2527]	= settr(2526,0,2528,1666,1666,"fsm_state = 9", 1, 2, 0);
	trans[0][2528]	= settr(2527,0,3004,1667,1667,"output = 10", 1, 2, 0);
	trans[0][2529]	= settr(2528,0,2530,1668,0,"((input==27))", 1, 2, 0);
	trans[0][2530]	= settr(2529,0,2531,1669,1669,"fsm_state = 9", 1, 2, 0);
	trans[0][2531]	= settr(2530,0,3004,1670,1670,"output = 9", 1, 2, 0);
	trans[0][2532]	= settr(2531,0,2533,1671,0,"((input==20))", 1, 2, 0);
	trans[0][2533]	= settr(2532,0,2534,1672,1672,"fsm_state = 9", 1, 2, 0);
	trans[0][2534]	= settr(2533,0,3004,1673,1673,"output = 9", 1, 2, 0);
	trans[0][2535]	= settr(2534,0,2536,1674,0,"((input==21))", 1, 2, 0);
	trans[0][2536]	= settr(2535,0,2537,1675,1675,"fsm_state = 3", 1, 2, 0);
	trans[0][2537]	= settr(2536,0,3004,1676,1676,"output = 8", 1, 2, 0);
	trans[0][2538]	= settr(2537,0,18,2,0,"else", 0, 2, 0);
	trans[0][2539]	= settr(2538,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2542]	= settr(2541,0,2584,1677,0,"((fsm_state==8))", 1, 2, 0);
	T = trans[0][2584] = settr(2583,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2583,0,2543,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2583,0,2546,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2583,0,2549,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2583,0,2552,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2583,0,2555,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2583,0,2558,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2583,0,2561,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2583,0,2564,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2583,0,2567,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2583,0,2570,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2583,0,2573,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2583,0,2576,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2583,0,2579,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2583,0,2582,0,0,"IF", 0, 2, 0);
	trans[0][2543]	= settr(2542,0,2544,1678,0,"((input==28))", 1, 2, 0);
	trans[0][2544]	= settr(2543,0,2545,1679,1679,"fsm_state = 48", 1, 2, 0);
	trans[0][2545]	= settr(2544,0,3004,1680,1680,"output = 3", 1, 2, 0);
	trans[0][2585]	= settr(2584,0,3004,1,0,".(goto)", 0, 2, 0);
	trans[0][2546]	= settr(2545,0,2547,1681,0,"((input==24))", 1, 2, 0);
	trans[0][2547]	= settr(2546,0,2548,1682,1682,"fsm_state = 48", 1, 2, 0);
	trans[0][2548]	= settr(2547,0,3004,1683,1683,"output = 3", 1, 2, 0);
	trans[0][2549]	= settr(2548,0,2550,1684,0,"((input==16))", 1, 2, 0);
	trans[0][2550]	= settr(2549,0,2551,1685,1685,"fsm_state = 48", 1, 2, 0);
	trans[0][2551]	= settr(2550,0,3004,1686,1686,"output = 3", 1, 2, 0);
	trans[0][2552]	= settr(2551,0,2553,1687,0,"((input==27))", 1, 2, 0);
	trans[0][2553]	= settr(2552,0,2554,1688,1688,"fsm_state = 32", 1, 2, 0);
	trans[0][2554]	= settr(2553,0,3004,1689,1689,"output = 7", 1, 2, 0);
	trans[0][2555]	= settr(2554,0,2556,1690,0,"((input==22))", 1, 2, 0);
	trans[0][2556]	= settr(2555,0,2557,1691,1691,"fsm_state = 8", 1, 2, 0);
	trans[0][2557]	= settr(2556,0,3004,1692,1692,"output = 10", 1, 2, 0);
	trans[0][2558]	= settr(2557,0,2559,1693,0,"((input==26))", 1, 2, 0);
	trans[0][2559]	= settr(2558,0,2560,1694,1694,"fsm_state = 8", 1, 2, 0);
	trans[0][2560]	= settr(2559,0,3004,1695,1695,"output = 14", 1, 2, 0);
	trans[0][2561]	= settr(2560,0,2562,1696,0,"((input==21))", 1, 2, 0);
	trans[0][2562]	= settr(2561,0,2563,1697,1697,"fsm_state = 8", 1, 2, 0);
	trans[0][2563]	= settr(2562,0,3004,1698,1698,"output = 1", 1, 2, 0);
	trans[0][2564]	= settr(2563,0,2565,1699,0,"((input==17))", 1, 2, 0);
	trans[0][2565]	= settr(2564,0,18,1700,1700,"fsm_state = 8", 1, 2, 0);
	trans[0][2566]	= settr(2565,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2567]	= settr(2566,0,2568,1701,0,"((input==18))", 1, 2, 0);
	trans[0][2568]	= settr(2567,0,2569,1702,1702,"fsm_state = 8", 1, 2, 0);
	trans[0][2569]	= settr(2568,0,3004,1703,1703,"output = 10", 1, 2, 0);
	trans[0][2570]	= settr(2569,0,2571,1704,0,"((input==20))", 1, 2, 0);
	trans[0][2571]	= settr(2570,0,18,1705,1705,"fsm_state = 8", 1, 2, 0);
	trans[0][2572]	= settr(2571,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2573]	= settr(2572,0,2574,1706,0,"((input==23))", 1, 2, 0);
	trans[0][2574]	= settr(2573,0,2575,1707,1707,"fsm_state = 8", 1, 2, 0);
	trans[0][2575]	= settr(2574,0,3004,1708,1708,"output = 4", 1, 2, 0);
	trans[0][2576]	= settr(2575,0,2577,1709,0,"((input==25))", 1, 2, 0);
	trans[0][2577]	= settr(2576,0,2578,1710,1710,"fsm_state = 6", 1, 2, 0);
	trans[0][2578]	= settr(2577,0,3004,1711,1711,"output = 15", 1, 2, 0);
	trans[0][2579]	= settr(2578,0,2580,1712,0,"((input==19))", 1, 2, 0);
	trans[0][2580]	= settr(2579,0,2581,1713,1713,"fsm_state = 2", 1, 2, 0);
	trans[0][2581]	= settr(2580,0,3004,1714,1714,"output = 15", 1, 2, 0);
	trans[0][2582]	= settr(2581,0,18,2,0,"else", 0, 2, 0);
	trans[0][2583]	= settr(2582,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2586]	= settr(2585,0,2655,1715,0,"((fsm_state==7))", 1, 2, 0);
	T = trans[0][2655] = settr(2654,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2654,0,2587,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2654,0,2590,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2654,0,2593,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2654,0,2596,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2654,0,2599,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2654,0,2602,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2654,0,2605,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2654,0,2608,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2654,0,2611,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2654,0,2614,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2654,0,2617,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2654,0,2620,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2654,0,2650,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2654,0,2653,0,0,"IF", 0, 2, 0);
	trans[0][2587]	= settr(2586,0,2588,1716,0,"((input==25))", 1, 2, 0);
	trans[0][2588]	= settr(2587,0,2589,1717,1717,"fsm_state = 48", 1, 2, 0);
	trans[0][2589]	= settr(2588,0,3004,1718,1718,"output = 3", 1, 2, 0);
	trans[0][2656]	= settr(2655,0,3004,1,0,".(goto)", 0, 2, 0);
	trans[0][2590]	= settr(2589,0,2591,1719,0,"((input==16))", 1, 2, 0);
	trans[0][2591]	= settr(2590,0,2592,1720,1720,"fsm_state = 48", 1, 2, 0);
	trans[0][2592]	= settr(2591,0,3004,1721,1721,"output = 3", 1, 2, 0);
	trans[0][2593]	= settr(2592,0,2594,1722,0,"((input==19))", 1, 2, 0);
	trans[0][2594]	= settr(2593,0,2595,1723,1723,"fsm_state = 48", 1, 2, 0);
	trans[0][2595]	= settr(2594,0,3004,1724,1724,"output = 3", 1, 2, 0);
	trans[0][2596]	= settr(2595,0,2597,1725,0,"((input==23))", 1, 2, 0);
	trans[0][2597]	= settr(2596,0,2598,1726,1726,"fsm_state = 48", 1, 2, 0);
	trans[0][2598]	= settr(2597,0,3004,1727,1727,"output = 3", 1, 2, 0);
	trans[0][2599]	= settr(2598,0,2600,1728,0,"((input==24))", 1, 2, 0);
	trans[0][2600]	= settr(2599,0,18,1729,1729,"fsm_state = 43", 1, 2, 0);
	trans[0][2601]	= settr(2600,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2602]	= settr(2601,0,2603,1730,0,"((input==27))", 1, 2, 0);
	trans[0][2603]	= settr(2602,0,18,1731,1731,"fsm_state = 20", 1, 2, 0);
	trans[0][2604]	= settr(2603,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2605]	= settr(2604,0,2606,1732,0,"((input==20))", 1, 2, 0);
	trans[0][2606]	= settr(2605,0,18,1733,1733,"fsm_state = 14", 1, 2, 0);
	trans[0][2607]	= settr(2606,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2608]	= settr(2607,0,2609,1734,0,"((input==26))", 1, 2, 0);
	trans[0][2609]	= settr(2608,0,18,1735,1735,"fsm_state = 10", 1, 2, 0);
	trans[0][2610]	= settr(2609,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2611]	= settr(2610,0,2612,1736,0,"((input==22))", 1, 2, 0);
	trans[0][2612]	= settr(2611,0,2613,1737,1737,"fsm_state = 7", 1, 2, 0);
	trans[0][2613]	= settr(2612,0,3004,1738,1738,"output = 10", 1, 2, 0);
	trans[0][2614]	= settr(2613,0,2615,1739,0,"((input==21))", 1, 2, 0);
	trans[0][2615]	= settr(2614,0,2616,1740,1740,"fsm_state = 7", 1, 2, 0);
	trans[0][2616]	= settr(2615,0,3004,1741,1741,"output = 1", 1, 2, 0);
	trans[0][2617]	= settr(2616,0,2618,1742,0,"((input==18))", 1, 2, 0);
	trans[0][2618]	= settr(2617,0,2619,1743,1743,"fsm_state = 7", 1, 2, 0);
	trans[0][2619]	= settr(2618,0,3004,1744,1744,"output = 10", 1, 2, 0);
	trans[0][2620]	= settr(2619,0,2621,1745,0,"((input==28))", 1, 2, 0);
	trans[0][2621]	= settr(2620,0,2622,1746,1746,"fsm_state = 3", 1, 2, 0);
	trans[0][2622]	= settr(2621,0,2623,1747,1747,"output = 13", 1, 2, 0);
	trans[0][2623]	= settr(2622,0,2647,1748,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2647] = settr(2646,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2646,0,2640,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2640]	= settr(2639,32,2645,1749,1749,"D_STEP13", 1, 2, 0);
	T = trans[0][2645] = settr(2644,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2644,0,2641,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2644,0,2643,0,0,"IF", 0, 2, 0);
	trans[0][2641]	= settr(2640,0,1,1750,0,"((dealt==0))", 1, 2, 0);
	trans[0][2642]	= settr(2641,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2646]	= settr(2645,0,2648,1,0,".(goto)", 0, 2, 0);
	trans[0][2643]	= settr(2642,0,2644,2,0,"else", 0, 2, 0);
	trans[0][2644]	= settr(2643,0,2648,1,0,"(1)", 0, 2, 0);
	trans[0][2648]	= settr(2647,0,2649,1751,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2649]	= settr(2648,0,3004,1752,1752,"output = 5", 1, 2, 0);
	trans[0][2650]	= settr(2649,0,2651,1753,0,"((input==17))", 1, 2, 0);
	trans[0][2651]	= settr(2650,0,18,1754,1754,"fsm_state = 2", 1, 2, 0);
	trans[0][2652]	= settr(2651,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2653]	= settr(2652,0,18,2,0,"else", 0, 2, 0);
	trans[0][2654]	= settr(2653,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2657]	= settr(2656,0,2699,1755,0,"((fsm_state==6))", 1, 2, 0);
	T = trans[0][2699] = settr(2698,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2698,0,2658,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2698,0,2661,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2698,0,2664,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2698,0,2667,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2698,0,2670,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2698,0,2673,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2698,0,2676,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2698,0,2679,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2698,0,2682,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2698,0,2685,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2698,0,2688,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2698,0,2691,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2698,0,2694,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2698,0,2697,0,0,"IF", 0, 2, 0);
	trans[0][2658]	= settr(2657,0,2659,1756,0,"((input==25))", 1, 2, 0);
	trans[0][2659]	= settr(2658,0,2660,1757,1757,"fsm_state = 48", 1, 2, 0);
	trans[0][2660]	= settr(2659,0,3004,1758,1758,"output = 3", 1, 2, 0);
	trans[0][2700]	= settr(2699,0,3004,1,0,".(goto)", 0, 2, 0);
	trans[0][2661]	= settr(2660,0,2662,1759,0,"((input==16))", 1, 2, 0);
	trans[0][2662]	= settr(2661,0,2663,1760,1760,"fsm_state = 48", 1, 2, 0);
	trans[0][2663]	= settr(2662,0,3004,1761,1761,"output = 3", 1, 2, 0);
	trans[0][2664]	= settr(2663,0,2665,1762,0,"((input==19))", 1, 2, 0);
	trans[0][2665]	= settr(2664,0,2666,1763,1763,"fsm_state = 48", 1, 2, 0);
	trans[0][2666]	= settr(2665,0,3004,1764,1764,"output = 3", 1, 2, 0);
	trans[0][2667]	= settr(2666,0,2668,1765,0,"((input==23))", 1, 2, 0);
	trans[0][2668]	= settr(2667,0,2669,1766,1766,"fsm_state = 48", 1, 2, 0);
	trans[0][2669]	= settr(2668,0,3004,1767,1767,"output = 3", 1, 2, 0);
	trans[0][2670]	= settr(2669,0,2671,1768,0,"((input==24))", 1, 2, 0);
	trans[0][2671]	= settr(2670,0,18,1769,1769,"fsm_state = 43", 1, 2, 0);
	trans[0][2672]	= settr(2671,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2673]	= settr(2672,0,2674,1770,0,"((input==27))", 1, 2, 0);
	trans[0][2674]	= settr(2673,0,18,1771,1771,"fsm_state = 25", 1, 2, 0);
	trans[0][2675]	= settr(2674,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2676]	= settr(2675,0,2677,1772,0,"((input==20))", 1, 2, 0);
	trans[0][2677]	= settr(2676,0,18,1773,1773,"fsm_state = 17", 1, 2, 0);
	trans[0][2678]	= settr(2677,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2679]	= settr(2678,0,2680,1774,0,"((input==26))", 1, 2, 0);
	trans[0][2680]	= settr(2679,0,18,1775,1775,"fsm_state = 11", 1, 2, 0);
	trans[0][2681]	= settr(2680,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2682]	= settr(2681,0,2683,1776,0,"((input==28))", 1, 2, 0);
	trans[0][2683]	= settr(2682,0,18,1777,1777,"fsm_state = 7", 1, 2, 0);
	trans[0][2684]	= settr(2683,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2685]	= settr(2684,0,2686,1778,0,"((input==22))", 1, 2, 0);
	trans[0][2686]	= settr(2685,0,2687,1779,1779,"fsm_state = 6", 1, 2, 0);
	trans[0][2687]	= settr(2686,0,3004,1780,1780,"output = 10", 1, 2, 0);
	trans[0][2688]	= settr(2687,0,2689,1781,0,"((input==21))", 1, 2, 0);
	trans[0][2689]	= settr(2688,0,2690,1782,1782,"fsm_state = 6", 1, 2, 0);
	trans[0][2690]	= settr(2689,0,3004,1783,1783,"output = 1", 1, 2, 0);
	trans[0][2691]	= settr(2690,0,2692,1784,0,"((input==17))", 1, 2, 0);
	trans[0][2692]	= settr(2691,0,18,1785,1785,"fsm_state = 6", 1, 2, 0);
	trans[0][2693]	= settr(2692,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2694]	= settr(2693,0,2695,1786,0,"((input==18))", 1, 2, 0);
	trans[0][2695]	= settr(2694,0,2696,1787,1787,"fsm_state = 6", 1, 2, 0);
	trans[0][2696]	= settr(2695,0,3004,1788,1788,"output = 10", 1, 2, 0);
	trans[0][2697]	= settr(2696,0,18,2,0,"else", 0, 2, 0);
	trans[0][2698]	= settr(2697,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2701]	= settr(2700,0,2743,1789,0,"((fsm_state==5))", 1, 2, 0);
	T = trans[0][2743] = settr(2742,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2742,0,2702,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2742,0,2705,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2742,0,2708,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2742,0,2711,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2742,0,2714,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2742,0,2717,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2742,0,2720,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2742,0,2723,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2742,0,2726,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2742,0,2729,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2742,0,2732,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2742,0,2735,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2742,0,2738,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2742,0,2741,0,0,"IF", 0, 2, 0);
	trans[0][2702]	= settr(2701,0,2703,1790,0,"((input==28))", 1, 2, 0);
	trans[0][2703]	= settr(2702,0,2704,1791,1791,"fsm_state = 48", 1, 2, 0);
	trans[0][2704]	= settr(2703,0,3004,1792,1792,"output = 3", 1, 2, 0);
	trans[0][2744]	= settr(2743,0,3004,1,0,".(goto)", 0, 2, 0);
	trans[0][2705]	= settr(2704,0,2706,1793,0,"((input==25))", 1, 2, 0);
	trans[0][2706]	= settr(2705,0,2707,1794,1794,"fsm_state = 48", 1, 2, 0);
	trans[0][2707]	= settr(2706,0,3004,1795,1795,"output = 3", 1, 2, 0);
	trans[0][2708]	= settr(2707,0,2709,1796,0,"((input==16))", 1, 2, 0);
	trans[0][2709]	= settr(2708,0,2710,1797,1797,"fsm_state = 48", 1, 2, 0);
	trans[0][2710]	= settr(2709,0,3004,1798,1798,"output = 3", 1, 2, 0);
	trans[0][2711]	= settr(2710,0,2712,1799,0,"((input==19))", 1, 2, 0);
	trans[0][2712]	= settr(2711,0,2713,1800,1800,"fsm_state = 48", 1, 2, 0);
	trans[0][2713]	= settr(2712,0,3004,1801,1801,"output = 3", 1, 2, 0);
	trans[0][2714]	= settr(2713,0,2715,1802,0,"((input==23))", 1, 2, 0);
	trans[0][2715]	= settr(2714,0,2716,1803,1803,"fsm_state = 48", 1, 2, 0);
	trans[0][2716]	= settr(2715,0,3004,1804,1804,"output = 3", 1, 2, 0);
	trans[0][2717]	= settr(2716,0,2718,1805,0,"((input==24))", 1, 2, 0);
	trans[0][2718]	= settr(2717,0,18,1806,1806,"fsm_state = 28", 1, 2, 0);
	trans[0][2719]	= settr(2718,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2720]	= settr(2719,0,2721,1807,0,"((input==27))", 1, 2, 0);
	trans[0][2721]	= settr(2720,0,18,1808,1808,"fsm_state = 9", 1, 2, 0);
	trans[0][2722]	= settr(2721,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2723]	= settr(2722,0,2724,1809,0,"((input==22))", 1, 2, 0);
	trans[0][2724]	= settr(2723,0,2725,1810,1810,"fsm_state = 5", 1, 2, 0);
	trans[0][2725]	= settr(2724,0,3004,1811,1811,"output = 10", 1, 2, 0);
	trans[0][2726]	= settr(2725,0,2727,1812,0,"((input==26))", 1, 2, 0);
	trans[0][2727]	= settr(2726,0,18,1813,1813,"fsm_state = 5", 1, 2, 0);
	trans[0][2728]	= settr(2727,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2729]	= settr(2728,0,2730,1814,0,"((input==21))", 1, 2, 0);
	trans[0][2730]	= settr(2729,0,2731,1815,1815,"fsm_state = 5", 1, 2, 0);
	trans[0][2731]	= settr(2730,0,3004,1816,1816,"output = 1", 1, 2, 0);
	trans[0][2732]	= settr(2731,0,2733,1817,0,"((input==17))", 1, 2, 0);
	trans[0][2733]	= settr(2732,0,18,1818,1818,"fsm_state = 5", 1, 2, 0);
	trans[0][2734]	= settr(2733,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2735]	= settr(2734,0,2736,1819,0,"((input==18))", 1, 2, 0);
	trans[0][2736]	= settr(2735,0,2737,1820,1820,"fsm_state = 5", 1, 2, 0);
	trans[0][2737]	= settr(2736,0,3004,1821,1821,"output = 10", 1, 2, 0);
	trans[0][2738]	= settr(2737,0,2739,1822,0,"((input==20))", 1, 2, 0);
	trans[0][2739]	= settr(2738,0,18,1823,1823,"fsm_state = 5", 1, 2, 0);
	trans[0][2740]	= settr(2739,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2741]	= settr(2740,0,18,2,0,"else", 0, 2, 0);
	trans[0][2742]	= settr(2741,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2745]	= settr(2744,0,2841,1824,0,"((fsm_state==4))", 1, 2, 0);
	T = trans[0][2841] = settr(2840,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2840,0,2746,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2840,0,2749,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2840,0,2752,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2840,0,2755,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2840,0,2758,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2840,0,2761,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2840,0,2764,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2840,0,2767,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2840,0,2770,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2840,0,2773,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2840,0,2776,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2840,0,2779,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2840,0,2782,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2840,0,2839,0,0,"IF", 0, 2, 0);
	trans[0][2746]	= settr(2745,0,2747,1825,0,"((input==25))", 1, 2, 0);
	trans[0][2747]	= settr(2746,0,2748,1826,1826,"fsm_state = 48", 1, 2, 0);
	trans[0][2748]	= settr(2747,0,3004,1827,1827,"output = 3", 1, 2, 0);
	trans[0][2842]	= settr(2841,0,3004,1,0,".(goto)", 0, 2, 0);
	trans[0][2749]	= settr(2748,0,2750,1828,0,"((input==16))", 1, 2, 0);
	trans[0][2750]	= settr(2749,0,2751,1829,1829,"fsm_state = 48", 1, 2, 0);
	trans[0][2751]	= settr(2750,0,3004,1830,1830,"output = 3", 1, 2, 0);
	trans[0][2752]	= settr(2751,0,2753,1831,0,"((input==19))", 1, 2, 0);
	trans[0][2753]	= settr(2752,0,2754,1832,1832,"fsm_state = 48", 1, 2, 0);
	trans[0][2754]	= settr(2753,0,3004,1833,1833,"output = 3", 1, 2, 0);
	trans[0][2755]	= settr(2754,0,2756,1834,0,"((input==23))", 1, 2, 0);
	trans[0][2756]	= settr(2755,0,2757,1835,1835,"fsm_state = 48", 1, 2, 0);
	trans[0][2757]	= settr(2756,0,3004,1836,1836,"output = 3", 1, 2, 0);
	trans[0][2758]	= settr(2757,0,2759,1837,0,"((input==24))", 1, 2, 0);
	trans[0][2759]	= settr(2758,0,18,1838,1838,"fsm_state = 43", 1, 2, 0);
	trans[0][2760]	= settr(2759,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2761]	= settr(2760,0,2762,1839,0,"((input==27))", 1, 2, 0);
	trans[0][2762]	= settr(2761,0,18,1840,1840,"fsm_state = 20", 1, 2, 0);
	trans[0][2763]	= settr(2762,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2764]	= settr(2763,0,2765,1841,0,"((input==22))", 1, 2, 0);
	trans[0][2765]	= settr(2764,0,2766,1842,1842,"fsm_state = 4", 1, 2, 0);
	trans[0][2766]	= settr(2765,0,3004,1843,1843,"output = 10", 1, 2, 0);
	trans[0][2767]	= settr(2766,0,2768,1844,0,"((input==26))", 1, 2, 0);
	trans[0][2768]	= settr(2767,0,18,1845,1845,"fsm_state = 4", 1, 2, 0);
	trans[0][2769]	= settr(2768,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2770]	= settr(2769,0,2771,1846,0,"((input==21))", 1, 2, 0);
	trans[0][2771]	= settr(2770,0,2772,1847,1847,"fsm_state = 4", 1, 2, 0);
	trans[0][2772]	= settr(2771,0,3004,1848,1848,"output = 1", 1, 2, 0);
	trans[0][2773]	= settr(2772,0,2774,1849,0,"((input==17))", 1, 2, 0);
	trans[0][2774]	= settr(2773,0,18,1850,1850,"fsm_state = 4", 1, 2, 0);
	trans[0][2775]	= settr(2774,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2776]	= settr(2775,0,2777,1851,0,"((input==18))", 1, 2, 0);
	trans[0][2777]	= settr(2776,0,2778,1852,1852,"fsm_state = 4", 1, 2, 0);
	trans[0][2778]	= settr(2777,0,3004,1853,1853,"output = 10", 1, 2, 0);
	trans[0][2779]	= settr(2778,0,2780,1854,0,"((input==20))", 1, 2, 0);
	trans[0][2780]	= settr(2779,0,18,1855,1855,"fsm_state = 4", 1, 2, 0);
	trans[0][2781]	= settr(2780,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2782]	= settr(2781,0,2783,1856,0,"((input==28))", 1, 2, 0);
	trans[0][2783]	= settr(2782,0,2784,1857,1857,"fsm_state = 1", 1, 2, 0);
	trans[0][2784]	= settr(2783,0,2785,1858,1858,"output = 13", 1, 2, 0);
	trans[0][2785]	= settr(2784,0,2809,1859,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2809] = settr(2808,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2808,0,2802,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2802]	= settr(2801,32,2807,1860,1860,"D_STEP13", 1, 2, 0);
	T = trans[0][2807] = settr(2806,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2806,0,2803,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2806,0,2805,0,0,"IF", 0, 2, 0);
	trans[0][2803]	= settr(2802,0,1,1861,0,"((dealt==0))", 1, 2, 0);
	trans[0][2804]	= settr(2803,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2808]	= settr(2807,0,2810,1,0,".(goto)", 0, 2, 0);
	trans[0][2805]	= settr(2804,0,2806,2,0,"else", 0, 2, 0);
	trans[0][2806]	= settr(2805,0,2810,1,0,"(1)", 0, 2, 0);
	trans[0][2810]	= settr(2809,0,2811,1862,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2811]	= settr(2810,0,2812,1863,1863,"output = 5", 1, 2, 0);
	trans[0][2812]	= settr(2811,0,2836,1864,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2836] = settr(2835,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2835,0,2829,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2829]	= settr(2828,32,2834,1865,1865,"D_STEP13", 1, 2, 0);
	T = trans[0][2834] = settr(2833,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2833,0,2830,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2833,0,2832,0,0,"IF", 0, 2, 0);
	trans[0][2830]	= settr(2829,0,1,1866,0,"((dealt==0))", 1, 2, 0);
	trans[0][2831]	= settr(2830,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2835]	= settr(2834,0,2837,1,0,".(goto)", 0, 2, 0);
	trans[0][2832]	= settr(2831,0,2833,2,0,"else", 0, 2, 0);
	trans[0][2833]	= settr(2832,0,2837,1,0,"(1)", 0, 2, 0);
	trans[0][2837]	= settr(2836,0,2838,1867,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2838]	= settr(2837,0,3004,1868,1868,"output = 12", 1, 2, 0);
	trans[0][2839]	= settr(2838,0,18,2,0,"else", 0, 2, 0);
	trans[0][2840]	= settr(2839,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2843]	= settr(2842,0,2885,1869,0,"((fsm_state==3))", 1, 2, 0);
	T = trans[0][2885] = settr(2884,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2884,0,2844,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2884,0,2847,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2884,0,2850,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2884,0,2853,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2884,0,2856,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2884,0,2859,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2884,0,2862,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2884,0,2865,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2884,0,2868,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2884,0,2871,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2884,0,2874,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2884,0,2877,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2884,0,2880,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2884,0,2883,0,0,"IF", 0, 2, 0);
	trans[0][2844]	= settr(2843,0,2845,1870,0,"((input==28))", 1, 2, 0);
	trans[0][2845]	= settr(2844,0,2846,1871,1871,"fsm_state = 48", 1, 2, 0);
	trans[0][2846]	= settr(2845,0,3004,1872,1872,"output = 3", 1, 2, 0);
	trans[0][2886]	= settr(2885,0,3004,1,0,".(goto)", 0, 2, 0);
	trans[0][2847]	= settr(2846,0,2848,1873,0,"((input==25))", 1, 2, 0);
	trans[0][2848]	= settr(2847,0,2849,1874,1874,"fsm_state = 48", 1, 2, 0);
	trans[0][2849]	= settr(2848,0,3004,1875,1875,"output = 3", 1, 2, 0);
	trans[0][2850]	= settr(2849,0,2851,1876,0,"((input==16))", 1, 2, 0);
	trans[0][2851]	= settr(2850,0,2852,1877,1877,"fsm_state = 48", 1, 2, 0);
	trans[0][2852]	= settr(2851,0,3004,1878,1878,"output = 3", 1, 2, 0);
	trans[0][2853]	= settr(2852,0,2854,1879,0,"((input==19))", 1, 2, 0);
	trans[0][2854]	= settr(2853,0,2855,1880,1880,"fsm_state = 48", 1, 2, 0);
	trans[0][2855]	= settr(2854,0,3004,1881,1881,"output = 3", 1, 2, 0);
	trans[0][2856]	= settr(2855,0,2857,1882,0,"((input==23))", 1, 2, 0);
	trans[0][2857]	= settr(2856,0,2858,1883,1883,"fsm_state = 48", 1, 2, 0);
	trans[0][2858]	= settr(2857,0,3004,1884,1884,"output = 3", 1, 2, 0);
	trans[0][2859]	= settr(2858,0,2860,1885,0,"((input==24))", 1, 2, 0);
	trans[0][2860]	= settr(2859,0,18,1886,1886,"fsm_state = 23", 1, 2, 0);
	trans[0][2861]	= settr(2860,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2862]	= settr(2861,0,2863,1887,0,"((input==27))", 1, 2, 0);
	trans[0][2863]	= settr(2862,0,2864,1888,1888,"fsm_state = 9", 1, 2, 0);
	trans[0][2864]	= settr(2863,0,3004,1889,1889,"output = 7", 1, 2, 0);
	trans[0][2865]	= settr(2864,0,2866,1890,0,"((input==20))", 1, 2, 0);
	trans[0][2866]	= settr(2865,0,2867,1891,1891,"fsm_state = 5", 1, 2, 0);
	trans[0][2867]	= settr(2866,0,3004,1892,1892,"output = 7", 1, 2, 0);
	trans[0][2868]	= settr(2867,0,2869,1893,0,"((input==22))", 1, 2, 0);
	trans[0][2869]	= settr(2868,0,2870,1894,1894,"fsm_state = 3", 1, 2, 0);
	trans[0][2870]	= settr(2869,0,3004,1895,1895,"output = 10", 1, 2, 0);
	trans[0][2871]	= settr(2870,0,2872,1896,0,"((input==26))", 1, 2, 0);
	trans[0][2872]	= settr(2871,0,2873,1897,1897,"fsm_state = 3", 1, 2, 0);
	trans[0][2873]	= settr(2872,0,3004,1898,1898,"output = 14", 1, 2, 0);
	trans[0][2874]	= settr(2873,0,2875,1899,0,"((input==21))", 1, 2, 0);
	trans[0][2875]	= settr(2874,0,2876,1900,1900,"fsm_state = 3", 1, 2, 0);
	trans[0][2876]	= settr(2875,0,3004,1901,1901,"output = 1", 1, 2, 0);
	trans[0][2877]	= settr(2876,0,2878,1902,0,"((input==18))", 1, 2, 0);
	trans[0][2878]	= settr(2877,0,2879,1903,1903,"fsm_state = 3", 1, 2, 0);
	trans[0][2879]	= settr(2878,0,3004,1904,1904,"output = 10", 1, 2, 0);
	trans[0][2880]	= settr(2879,0,2881,1905,0,"((input==17))", 1, 2, 0);
	trans[0][2881]	= settr(2880,0,18,1906,1906,"fsm_state = 1", 1, 2, 0);
	trans[0][2882]	= settr(2881,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2883]	= settr(2882,0,18,2,0,"else", 0, 2, 0);
	trans[0][2884]	= settr(2883,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2887]	= settr(2886,0,2956,1907,0,"((fsm_state==2))", 1, 2, 0);
	T = trans[0][2956] = settr(2955,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2955,0,2888,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2955,0,2891,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2955,0,2894,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2955,0,2897,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2955,0,2900,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2955,0,2903,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2955,0,2906,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2955,0,2909,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2955,0,2912,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2955,0,2915,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2955,0,2918,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2955,0,2921,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2955,0,2924,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2955,0,2954,0,0,"IF", 0, 2, 0);
	trans[0][2888]	= settr(2887,0,2889,1908,0,"((input==25))", 1, 2, 0);
	trans[0][2889]	= settr(2888,0,2890,1909,1909,"fsm_state = 48", 1, 2, 0);
	trans[0][2890]	= settr(2889,0,3004,1910,1910,"output = 3", 1, 2, 0);
	trans[0][2957]	= settr(2956,0,3004,1,0,".(goto)", 0, 2, 0);
	trans[0][2891]	= settr(2890,0,2892,1911,0,"((input==16))", 1, 2, 0);
	trans[0][2892]	= settr(2891,0,2893,1912,1912,"fsm_state = 48", 1, 2, 0);
	trans[0][2893]	= settr(2892,0,3004,1913,1913,"output = 3", 1, 2, 0);
	trans[0][2894]	= settr(2893,0,2895,1914,0,"((input==19))", 1, 2, 0);
	trans[0][2895]	= settr(2894,0,2896,1915,1915,"fsm_state = 48", 1, 2, 0);
	trans[0][2896]	= settr(2895,0,3004,1916,1916,"output = 3", 1, 2, 0);
	trans[0][2897]	= settr(2896,0,2898,1917,0,"((input==23))", 1, 2, 0);
	trans[0][2898]	= settr(2897,0,2899,1918,1918,"fsm_state = 48", 1, 2, 0);
	trans[0][2899]	= settr(2898,0,3004,1919,1919,"output = 3", 1, 2, 0);
	trans[0][2900]	= settr(2899,0,2901,1920,0,"((input==24))", 1, 2, 0);
	trans[0][2901]	= settr(2900,0,18,1921,1921,"fsm_state = 43", 1, 2, 0);
	trans[0][2902]	= settr(2901,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2903]	= settr(2902,0,2904,1922,0,"((input==27))", 1, 2, 0);
	trans[0][2904]	= settr(2903,0,18,1923,1923,"fsm_state = 20", 1, 2, 0);
	trans[0][2905]	= settr(2904,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2906]	= settr(2905,0,2907,1924,0,"((input==26))", 1, 2, 0);
	trans[0][2907]	= settr(2906,0,18,1925,1925,"fsm_state = 4", 1, 2, 0);
	trans[0][2908]	= settr(2907,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2909]	= settr(2908,0,2910,1926,0,"((input==22))", 1, 2, 0);
	trans[0][2910]	= settr(2909,0,2911,1927,1927,"fsm_state = 2", 1, 2, 0);
	trans[0][2911]	= settr(2910,0,3004,1928,1928,"output = 10", 1, 2, 0);
	trans[0][2912]	= settr(2911,0,2913,1929,0,"((input==21))", 1, 2, 0);
	trans[0][2913]	= settr(2912,0,2914,1930,1930,"fsm_state = 2", 1, 2, 0);
	trans[0][2914]	= settr(2913,0,3004,1931,1931,"output = 1", 1, 2, 0);
	trans[0][2915]	= settr(2914,0,2916,1932,0,"((input==17))", 1, 2, 0);
	trans[0][2916]	= settr(2915,0,18,1933,1933,"fsm_state = 2", 1, 2, 0);
	trans[0][2917]	= settr(2916,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2918]	= settr(2917,0,2919,1934,0,"((input==18))", 1, 2, 0);
	trans[0][2919]	= settr(2918,0,2920,1935,1935,"fsm_state = 2", 1, 2, 0);
	trans[0][2920]	= settr(2919,0,3004,1936,1936,"output = 10", 1, 2, 0);
	trans[0][2921]	= settr(2920,0,2922,1937,0,"((input==20))", 1, 2, 0);
	trans[0][2922]	= settr(2921,0,18,1938,1938,"fsm_state = 2", 1, 2, 0);
	trans[0][2923]	= settr(2922,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2924]	= settr(2923,0,2925,1939,0,"((input==28))", 1, 2, 0);
	trans[0][2925]	= settr(2924,0,2926,1940,1940,"fsm_state = 1", 1, 2, 0);
	trans[0][2926]	= settr(2925,0,2927,1941,1941,"output = 13", 1, 2, 0);
	trans[0][2927]	= settr(2926,0,2951,1942,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2951] = settr(2950,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2950,0,2944,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2944]	= settr(2943,32,2949,1943,1943,"D_STEP13", 1, 2, 0);
	T = trans[0][2949] = settr(2948,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2948,0,2945,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2948,0,2947,0,0,"IF", 0, 2, 0);
	trans[0][2945]	= settr(2944,0,1,1944,0,"((dealt==0))", 1, 2, 0);
	trans[0][2946]	= settr(2945,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2950]	= settr(2949,0,2952,1,0,".(goto)", 0, 2, 0);
	trans[0][2947]	= settr(2946,0,2948,2,0,"else", 0, 2, 0);
	trans[0][2948]	= settr(2947,0,2952,1,0,"(1)", 0, 2, 0);
	trans[0][2952]	= settr(2951,0,2953,1945,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2953]	= settr(2952,0,3004,1946,1946,"output = 5", 1, 2, 0);
	trans[0][2954]	= settr(2953,0,18,2,0,"else", 0, 2, 0);
	trans[0][2955]	= settr(2954,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2958]	= settr(2957,0,3000,1947,0,"((fsm_state==1))", 1, 2, 0);
	T = trans[0][3000] = settr(2999,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2999,0,2959,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2999,0,2962,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2999,0,2965,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2999,0,2968,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2999,0,2971,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2999,0,2974,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2999,0,2977,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2999,0,2980,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2999,0,2983,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2999,0,2986,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2999,0,2989,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2999,0,2992,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2999,0,2995,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2999,0,2998,0,0,"IF", 0, 2, 0);
	trans[0][2959]	= settr(2958,0,2960,1948,0,"((input==28))", 1, 2, 0);
	trans[0][2960]	= settr(2959,0,2961,1949,1949,"fsm_state = 48", 1, 2, 0);
	trans[0][2961]	= settr(2960,0,3004,1950,1950,"output = 3", 1, 2, 0);
	trans[0][3001]	= settr(3000,0,3004,1,0,".(goto)", 0, 2, 0);
	trans[0][2962]	= settr(2961,0,2963,1951,0,"((input==25))", 1, 2, 0);
	trans[0][2963]	= settr(2962,0,2964,1952,1952,"fsm_state = 48", 1, 2, 0);
	trans[0][2964]	= settr(2963,0,3004,1953,1953,"output = 3", 1, 2, 0);
	trans[0][2965]	= settr(2964,0,2966,1954,0,"((input==16))", 1, 2, 0);
	trans[0][2966]	= settr(2965,0,2967,1955,1955,"fsm_state = 48", 1, 2, 0);
	trans[0][2967]	= settr(2966,0,3004,1956,1956,"output = 3", 1, 2, 0);
	trans[0][2968]	= settr(2967,0,2969,1957,0,"((input==19))", 1, 2, 0);
	trans[0][2969]	= settr(2968,0,2970,1958,1958,"fsm_state = 48", 1, 2, 0);
	trans[0][2970]	= settr(2969,0,3004,1959,1959,"output = 3", 1, 2, 0);
	trans[0][2971]	= settr(2970,0,2972,1960,0,"((input==23))", 1, 2, 0);
	trans[0][2972]	= settr(2971,0,2973,1961,1961,"fsm_state = 48", 1, 2, 0);
	trans[0][2973]	= settr(2972,0,3004,1962,1962,"output = 3", 1, 2, 0);
	trans[0][2974]	= settr(2973,0,2975,1963,0,"((input==27))", 1, 2, 0);
	trans[0][2975]	= settr(2974,0,2976,1964,1964,"fsm_state = 9", 1, 2, 0);
	trans[0][2976]	= settr(2975,0,3004,1965,1965,"output = 7", 1, 2, 0);
	trans[0][2977]	= settr(2976,0,2978,1966,0,"((input==24))", 1, 2, 0);
	trans[0][2978]	= settr(2977,0,18,1967,1967,"fsm_state = 8", 1, 2, 0);
	trans[0][2979]	= settr(2978,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2980]	= settr(2979,0,2981,1968,0,"((input==22))", 1, 2, 0);
	trans[0][2981]	= settr(2980,0,2982,1969,1969,"fsm_state = 1", 1, 2, 0);
	trans[0][2982]	= settr(2981,0,3004,1970,1970,"output = 10", 1, 2, 0);
	trans[0][2983]	= settr(2982,0,2984,1971,0,"((input==26))", 1, 2, 0);
	trans[0][2984]	= settr(2983,0,2985,1972,1972,"fsm_state = 1", 1, 2, 0);
	trans[0][2985]	= settr(2984,0,3004,1973,1973,"output = 14", 1, 2, 0);
	trans[0][2986]	= settr(2985,0,2987,1974,0,"((input==21))", 1, 2, 0);
	trans[0][2987]	= settr(2986,0,2988,1975,1975,"fsm_state = 1", 1, 2, 0);
	trans[0][2988]	= settr(2987,0,3004,1976,1976,"output = 1", 1, 2, 0);
	trans[0][2989]	= settr(2988,0,2990,1977,0,"((input==17))", 1, 2, 0);
	trans[0][2990]	= settr(2989,0,18,1978,1978,"fsm_state = 1", 1, 2, 0);
	trans[0][2991]	= settr(2990,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2992]	= settr(2991,0,2993,1979,0,"((input==18))", 1, 2, 0);
	trans[0][2993]	= settr(2992,0,2994,1980,1980,"fsm_state = 1", 1, 2, 0);
	trans[0][2994]	= settr(2993,0,3004,1981,1981,"output = 10", 1, 2, 0);
	trans[0][2995]	= settr(2994,0,2996,1982,0,"((input==20))", 1, 2, 0);
	trans[0][2996]	= settr(2995,0,18,1983,1983,"fsm_state = 1", 1, 2, 0);
	trans[0][2997]	= settr(2996,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][2998]	= settr(2997,0,18,2,0,"else", 0, 2, 0);
	trans[0][2999]	= settr(2998,0,18,1,0,"goto Continue", 0, 2, 0);
	trans[0][3004]	= settr(3003,0,3005,1984,0,"printf('FSM State: %e\\n',fsm_state)", 1, 2, 0);
	trans[0][3005]	= settr(3004,0,3029,1985,0,"printf('Output: %e\\n\\n',output)", 1, 2, 0);
	T = trans[ 0][3029] = settr(3028,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(3028,0,3022,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][3022]	= settr(3021,32,3027,1986,1986,"D_STEP13", 1, 2, 0);
	T = trans[0][3027] = settr(3026,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3026,0,3023,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3026,0,3025,0,0,"IF", 0, 2, 0);
	trans[0][3023]	= settr(3022,0,1,1987,0,"((dealt==0))", 1, 2, 0);
	trans[0][3024]	= settr(3023,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][3028]	= settr(3027,0,3030,1,0,".(goto)", 0, 2, 0);
	trans[0][3025]	= settr(3024,0,3026,2,0,"else", 0, 2, 0);
	trans[0][3026]	= settr(3025,0,3030,1,0,"(1)", 0, 2, 0);
	trans[0][3030]	= settr(3029,0,3031,1988,0,"printf('DFA State: %e\\n\\n',dfa_state)", 1, 2, 0);
	trans[0][3033]	= settr(3032,0,3034,1,0,"break", 0, 2, 0);
	trans[0][3034]	= settr(3033,0,0,1989,1989,"-end-", 0, 3500, 0);
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
