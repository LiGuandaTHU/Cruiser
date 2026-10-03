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

	trans[1][7]	= settr(2683,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[1][6] = settr(2682,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2682,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(2682,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 1][3] = settr(2679,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(2679,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[1][1]	= settr(2677,0,6,3,3,"(!((dfa_state!=1)))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached1[2] = 1;
	trans[1][2]	= settr(0,0,0,0,0,"assert(!(!((dfa_state!=1))))",0,0,0);
	trans[1][4]	= settr(2680,0,6,1,0,"(1)", 0, 2, 0);
	trans[1][5]	= settr(2681,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[1][8]	= settr(2684,0,9,1,0,"break", 0, 2, 0);
	trans[1][9]	= settr(2685,0,10,1,0,"(1)", 0, 2, 0);
	trans[1][10]	= settr(2686,0,0,4,4,"-end-", 0, 3500, 0);

	/* proctype 0: :init: */

	trans[0] = (Trans **) emalloc(2678*sizeof(Trans *));

	trans[0][1]	= settr(0,0,2,5,5,"fsm_state = 43", 1, 2, 0);
	trans[0][2]	= settr(1,0,3,6,6,"dfa_state = 2", 1, 2, 0);
	trans[0][3]	= settr(2,0,2674,7,7,"dealt = 0", 1, 2, 0);
	trans[0][2675]	= settr(2674,0,2674,1,0,".(goto)", 0, 2, 0);
	T = trans[0][2674] = settr(2673,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(2673,0,4,0,0,"DO", 0, 2, 0);
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
	trans[0][5]	= settr(4,0,19,8,8,"input = 28", 1, 2, 0);
	trans[0][18]	= settr(17,0,19,1,0,".(goto)", 0, 2, 0);
	trans[0][6]	= settr(5,0,19,9,9,"input = 27", 1, 2, 0);
	trans[0][7]	= settr(6,0,19,10,10,"input = 26", 1, 2, 0);
	trans[0][8]	= settr(7,0,19,11,11,"input = 25", 1, 2, 0);
	trans[0][9]	= settr(8,0,19,12,12,"input = 24", 1, 2, 0);
	trans[0][10]	= settr(9,0,19,13,13,"input = 23", 1, 2, 0);
	trans[0][11]	= settr(10,0,19,14,14,"input = 22", 1, 2, 0);
	trans[0][12]	= settr(11,0,19,15,15,"input = 21", 1, 2, 0);
	trans[0][13]	= settr(12,0,19,16,16,"input = 20", 1, 2, 0);
	trans[0][14]	= settr(13,0,19,17,17,"input = 19", 1, 2, 0);
	trans[0][15]	= settr(14,0,19,18,18,"input = 18", 1, 2, 0);
	trans[0][16]	= settr(15,0,19,19,19,"input = 17", 1, 2, 0);
	trans[0][19]	= settr(18,0,43,20,0,"printf('Input: %e\\n',input)", 1, 2, 0);
	T = trans[ 0][43] = settr(42,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(42,0,36,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][36]	= settr(35,32,41,21,21,"D_STEP14", 1, 2, 0);
	T = trans[0][41] = settr(40,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(40,0,37,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(40,0,39,0,0,"IF", 0, 2, 0);
	trans[0][37]	= settr(36,0,1,22,0,"((dealt==0))", 1, 2, 0);
	trans[0][38]	= settr(37,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][42]	= settr(41,0,44,1,0,".(goto)", 0, 2, 0);
	trans[0][39]	= settr(38,0,40,2,0,"else", 0, 2, 0);
	trans[0][40]	= settr(39,0,44,1,0,"(1)", 0, 2, 0);
	trans[0][44]	= settr(43,0,2645,23,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	T = trans[0][2645] = settr(2644,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2644,0,45,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2644,0,275,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2644,0,316,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2644,0,384,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2644,0,425,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2644,0,466,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2644,0,507,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2644,0,548,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2644,0,589,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2644,0,630,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2644,0,671,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2644,0,739,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2644,0,780,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2644,0,848,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2644,0,889,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2644,0,957,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2644,0,998,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2644,0,1066,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2644,0,1107,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2644,0,1148,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2644,0,1189,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2644,0,1257,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2644,0,1298,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2644,0,1393,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2644,0,1488,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2644,0,1583,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2644,0,1624,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2644,0,1719,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2644,0,1787,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2644,0,1828,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2644,0,1896,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2644,0,1937,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2644,0,1978,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2644,0,2073,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2644,0,2114,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2644,0,2155,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2644,0,2250,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2644,0,2318,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2644,0,2359,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2644,0,2427,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2644,0,2522,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2644,0,2563,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2644,0,2604,0,0,"IF", 0, 2, 0);
	trans[0][45]	= settr(44,0,273,24,0,"((fsm_state==43))", 1, 2, 0);
	T = trans[0][273] = settr(272,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(272,0,46,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(272,0,49,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(272,0,52,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(272,0,55,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(272,0,58,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(272,0,88,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(272,0,91,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(272,0,121,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(272,0,151,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(272,0,181,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(272,0,211,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(272,0,241,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(272,0,271,0,0,"IF", 0, 2, 0);
	trans[0][46]	= settr(45,0,47,25,0,"((input==28))", 1, 2, 0);
	trans[0][47]	= settr(46,0,48,26,26,"fsm_state = 43", 1, 2, 0);
	trans[0][48]	= settr(47,0,2647,27,27,"output = 2", 1, 2, 0);
	trans[0][274]	= settr(273,0,2647,1,0,".(goto)", 0, 2, 0);
	trans[0][49]	= settr(48,0,50,28,0,"((input==17))", 1, 2, 0);
	trans[0][50]	= settr(49,0,51,29,29,"fsm_state = 43", 1, 2, 0);
	trans[0][51]	= settr(50,0,2647,30,30,"output = 2", 1, 2, 0);
	trans[0][52]	= settr(51,0,53,31,0,"((input==18))", 1, 2, 0);
	trans[0][53]	= settr(52,0,54,32,32,"fsm_state = 43", 1, 2, 0);
	trans[0][54]	= settr(53,0,2647,33,33,"output = 2", 1, 2, 0);
	trans[0][55]	= settr(54,0,56,34,0,"((input==22))", 1, 2, 0);
	trans[0][56]	= settr(55,0,57,35,35,"fsm_state = 43", 1, 2, 0);
	trans[0][57]	= settr(56,0,2647,36,36,"output = 2", 1, 2, 0);
	trans[0][58]	= settr(57,0,59,37,0,"((input==25))", 1, 2, 0);
	trans[0][59]	= settr(58,0,60,38,38,"fsm_state = 42", 1, 2, 0);
	trans[0][60]	= settr(59,0,61,39,39,"output = 5", 1, 2, 0);
	trans[0][61]	= settr(60,0,85,40,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][85] = settr(84,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(84,0,78,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][78]	= settr(77,32,83,41,41,"D_STEP14", 1, 2, 0);
	T = trans[0][83] = settr(82,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(82,0,79,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(82,0,81,0,0,"IF", 0, 2, 0);
	trans[0][79]	= settr(78,0,1,42,0,"((dealt==0))", 1, 2, 0);
	trans[0][80]	= settr(79,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][84]	= settr(83,0,86,1,0,".(goto)", 0, 2, 0);
	trans[0][81]	= settr(80,0,82,2,0,"else", 0, 2, 0);
	trans[0][82]	= settr(81,0,86,1,0,"(1)", 0, 2, 0);
	trans[0][86]	= settr(85,0,87,43,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][87]	= settr(86,0,2647,44,44,"output = 10", 1, 2, 0);
	trans[0][88]	= settr(87,0,89,45,0,"((input==21))", 1, 2, 0);
	trans[0][89]	= settr(88,0,90,46,46,"fsm_state = 41", 1, 2, 0);
	trans[0][90]	= settr(89,0,2647,47,47,"output = 5", 1, 2, 0);
	trans[0][91]	= settr(90,0,92,48,0,"((input==24))", 1, 2, 0);
	trans[0][92]	= settr(91,0,93,49,49,"fsm_state = 40", 1, 2, 0);
	trans[0][93]	= settr(92,0,94,50,50,"output = 5", 1, 2, 0);
	trans[0][94]	= settr(93,0,118,51,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][118] = settr(117,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(117,0,111,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][111]	= settr(110,32,116,52,52,"D_STEP14", 1, 2, 0);
	T = trans[0][116] = settr(115,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(115,0,112,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(115,0,114,0,0,"IF", 0, 2, 0);
	trans[0][112]	= settr(111,0,1,53,0,"((dealt==0))", 1, 2, 0);
	trans[0][113]	= settr(112,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][117]	= settr(116,0,119,1,0,".(goto)", 0, 2, 0);
	trans[0][114]	= settr(113,0,115,2,0,"else", 0, 2, 0);
	trans[0][115]	= settr(114,0,119,1,0,"(1)", 0, 2, 0);
	trans[0][119]	= settr(118,0,120,54,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][120]	= settr(119,0,2647,55,55,"output = 10", 1, 2, 0);
	trans[0][121]	= settr(120,0,122,56,0,"((input==20))", 1, 2, 0);
	trans[0][122]	= settr(121,0,123,57,57,"fsm_state = 40", 1, 2, 0);
	trans[0][123]	= settr(122,0,124,58,58,"output = 5", 1, 2, 0);
	trans[0][124]	= settr(123,0,148,59,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][148] = settr(147,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(147,0,141,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][141]	= settr(140,32,146,60,60,"D_STEP14", 1, 2, 0);
	T = trans[0][146] = settr(145,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(145,0,142,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(145,0,144,0,0,"IF", 0, 2, 0);
	trans[0][142]	= settr(141,0,1,61,0,"((dealt==0))", 1, 2, 0);
	trans[0][143]	= settr(142,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][147]	= settr(146,0,149,1,0,".(goto)", 0, 2, 0);
	trans[0][144]	= settr(143,0,145,2,0,"else", 0, 2, 0);
	trans[0][145]	= settr(144,0,149,1,0,"(1)", 0, 2, 0);
	trans[0][149]	= settr(148,0,150,62,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][150]	= settr(149,0,2647,63,63,"output = 10", 1, 2, 0);
	trans[0][151]	= settr(150,0,152,64,0,"((input==19))", 1, 2, 0);
	trans[0][152]	= settr(151,0,153,65,65,"fsm_state = 40", 1, 2, 0);
	trans[0][153]	= settr(152,0,154,66,66,"output = 5", 1, 2, 0);
	trans[0][154]	= settr(153,0,178,67,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][178] = settr(177,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(177,0,171,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][171]	= settr(170,32,176,68,68,"D_STEP14", 1, 2, 0);
	T = trans[0][176] = settr(175,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(175,0,172,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(175,0,174,0,0,"IF", 0, 2, 0);
	trans[0][172]	= settr(171,0,1,69,0,"((dealt==0))", 1, 2, 0);
	trans[0][173]	= settr(172,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][177]	= settr(176,0,179,1,0,".(goto)", 0, 2, 0);
	trans[0][174]	= settr(173,0,175,2,0,"else", 0, 2, 0);
	trans[0][175]	= settr(174,0,179,1,0,"(1)", 0, 2, 0);
	trans[0][179]	= settr(178,0,180,70,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][180]	= settr(179,0,2647,71,71,"output = 10", 1, 2, 0);
	trans[0][181]	= settr(180,0,182,72,0,"((input==27))", 1, 2, 0);
	trans[0][182]	= settr(181,0,183,73,73,"fsm_state = 40", 1, 2, 0);
	trans[0][183]	= settr(182,0,184,74,74,"output = 5", 1, 2, 0);
	trans[0][184]	= settr(183,0,208,75,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][208] = settr(207,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(207,0,201,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][201]	= settr(200,32,206,76,76,"D_STEP14", 1, 2, 0);
	T = trans[0][206] = settr(205,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(205,0,202,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(205,0,204,0,0,"IF", 0, 2, 0);
	trans[0][202]	= settr(201,0,1,77,0,"((dealt==0))", 1, 2, 0);
	trans[0][203]	= settr(202,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][207]	= settr(206,0,209,1,0,".(goto)", 0, 2, 0);
	trans[0][204]	= settr(203,0,205,2,0,"else", 0, 2, 0);
	trans[0][205]	= settr(204,0,209,1,0,"(1)", 0, 2, 0);
	trans[0][209]	= settr(208,0,210,78,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][210]	= settr(209,0,2647,79,79,"output = 10", 1, 2, 0);
	trans[0][211]	= settr(210,0,212,80,0,"((input==26))", 1, 2, 0);
	trans[0][212]	= settr(211,0,213,81,81,"fsm_state = 40", 1, 2, 0);
	trans[0][213]	= settr(212,0,214,82,82,"output = 5", 1, 2, 0);
	trans[0][214]	= settr(213,0,238,83,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][238] = settr(237,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(237,0,231,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][231]	= settr(230,32,236,84,84,"D_STEP14", 1, 2, 0);
	T = trans[0][236] = settr(235,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(235,0,232,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(235,0,234,0,0,"IF", 0, 2, 0);
	trans[0][232]	= settr(231,0,1,85,0,"((dealt==0))", 1, 2, 0);
	trans[0][233]	= settr(232,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][237]	= settr(236,0,239,1,0,".(goto)", 0, 2, 0);
	trans[0][234]	= settr(233,0,235,2,0,"else", 0, 2, 0);
	trans[0][235]	= settr(234,0,239,1,0,"(1)", 0, 2, 0);
	trans[0][239]	= settr(238,0,240,86,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][240]	= settr(239,0,2647,87,87,"output = 10", 1, 2, 0);
	trans[0][241]	= settr(240,0,242,88,0,"((input==23))", 1, 2, 0);
	trans[0][242]	= settr(241,0,243,89,89,"fsm_state = 40", 1, 2, 0);
	trans[0][243]	= settr(242,0,244,90,90,"output = 5", 1, 2, 0);
	trans[0][244]	= settr(243,0,268,91,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][268] = settr(267,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(267,0,261,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][261]	= settr(260,32,266,92,92,"D_STEP14", 1, 2, 0);
	T = trans[0][266] = settr(265,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(265,0,262,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(265,0,264,0,0,"IF", 0, 2, 0);
	trans[0][262]	= settr(261,0,1,93,0,"((dealt==0))", 1, 2, 0);
	trans[0][263]	= settr(262,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][267]	= settr(266,0,269,1,0,".(goto)", 0, 2, 0);
	trans[0][264]	= settr(263,0,265,2,0,"else", 0, 2, 0);
	trans[0][265]	= settr(264,0,269,1,0,"(1)", 0, 2, 0);
	trans[0][269]	= settr(268,0,270,94,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][270]	= settr(269,0,2647,95,95,"output = 10", 1, 2, 0);
	trans[0][271]	= settr(270,0,17,2,0,"else", 0, 2, 0);
	trans[0][272]	= settr(271,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2646]	= settr(2645,0,2647,1,0,".(goto)", 0, 2, 0);
	trans[0][275]	= settr(274,0,314,96,0,"((fsm_state==42))", 1, 2, 0);
	T = trans[0][314] = settr(313,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(313,0,276,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(313,0,279,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(313,0,282,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(313,0,285,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(313,0,288,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(313,0,291,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(313,0,294,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(313,0,297,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(313,0,300,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(313,0,303,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(313,0,306,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(313,0,309,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(313,0,312,0,0,"IF", 0, 2, 0);
	trans[0][276]	= settr(275,0,277,97,0,"((input==24))", 1, 2, 0);
	trans[0][277]	= settr(276,0,278,98,98,"fsm_state = 42", 1, 2, 0);
	trans[0][278]	= settr(277,0,2647,99,99,"output = 7", 1, 2, 0);
	trans[0][315]	= settr(314,0,2647,1,0,".(goto)", 0, 2, 0);
	trans[0][279]	= settr(278,0,280,100,0,"((input==20))", 1, 2, 0);
	trans[0][280]	= settr(279,0,281,101,101,"fsm_state = 42", 1, 2, 0);
	trans[0][281]	= settr(280,0,2647,102,102,"output = 7", 1, 2, 0);
	trans[0][282]	= settr(281,0,283,103,0,"((input==19))", 1, 2, 0);
	trans[0][283]	= settr(282,0,284,104,104,"fsm_state = 42", 1, 2, 0);
	trans[0][284]	= settr(283,0,2647,105,105,"output = 7", 1, 2, 0);
	trans[0][285]	= settr(284,0,286,106,0,"((input==28))", 1, 2, 0);
	trans[0][286]	= settr(285,0,287,107,107,"fsm_state = 42", 1, 2, 0);
	trans[0][287]	= settr(286,0,2647,108,108,"output = 7", 1, 2, 0);
	trans[0][288]	= settr(287,0,289,109,0,"((input==25))", 1, 2, 0);
	trans[0][289]	= settr(288,0,290,110,110,"fsm_state = 42", 1, 2, 0);
	trans[0][290]	= settr(289,0,2647,111,111,"output = 15", 1, 2, 0);
	trans[0][291]	= settr(290,0,292,112,0,"((input==17))", 1, 2, 0);
	trans[0][292]	= settr(291,0,293,113,113,"fsm_state = 42", 1, 2, 0);
	trans[0][293]	= settr(292,0,2647,114,114,"output = 7", 1, 2, 0);
	trans[0][294]	= settr(293,0,295,115,0,"((input==27))", 1, 2, 0);
	trans[0][295]	= settr(294,0,296,116,116,"fsm_state = 42", 1, 2, 0);
	trans[0][296]	= settr(295,0,2647,117,117,"output = 7", 1, 2, 0);
	trans[0][297]	= settr(296,0,298,118,0,"((input==26))", 1, 2, 0);
	trans[0][298]	= settr(297,0,299,119,119,"fsm_state = 42", 1, 2, 0);
	trans[0][299]	= settr(298,0,2647,120,120,"output = 7", 1, 2, 0);
	trans[0][300]	= settr(299,0,301,121,0,"((input==21))", 1, 2, 0);
	trans[0][301]	= settr(300,0,302,122,122,"fsm_state = 42", 1, 2, 0);
	trans[0][302]	= settr(301,0,2647,123,123,"output = 7", 1, 2, 0);
	trans[0][303]	= settr(302,0,304,124,0,"((input==22))", 1, 2, 0);
	trans[0][304]	= settr(303,0,305,125,125,"fsm_state = 42", 1, 2, 0);
	trans[0][305]	= settr(304,0,2647,126,126,"output = 7", 1, 2, 0);
	trans[0][306]	= settr(305,0,307,127,0,"((input==23))", 1, 2, 0);
	trans[0][307]	= settr(306,0,308,128,128,"fsm_state = 42", 1, 2, 0);
	trans[0][308]	= settr(307,0,2647,129,129,"output = 7", 1, 2, 0);
	trans[0][309]	= settr(308,0,310,130,0,"((input==18))", 1, 2, 0);
	trans[0][310]	= settr(309,0,311,131,131,"fsm_state = 40", 1, 2, 0);
	trans[0][311]	= settr(310,0,2647,132,132,"output = 7", 1, 2, 0);
	trans[0][312]	= settr(311,0,17,2,0,"else", 0, 2, 0);
	trans[0][313]	= settr(312,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][316]	= settr(315,0,382,133,0,"((fsm_state==41))", 1, 2, 0);
	T = trans[0][382] = settr(381,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(381,0,317,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(381,0,320,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(381,0,323,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(381,0,326,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(381,0,329,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(381,0,332,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(381,0,335,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(381,0,338,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(381,0,341,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(381,0,344,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(381,0,347,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(381,0,377,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(381,0,380,0,0,"IF", 0, 2, 0);
	trans[0][317]	= settr(316,0,318,134,0,"((input==25))", 1, 2, 0);
	trans[0][318]	= settr(317,0,319,135,135,"fsm_state = 42", 1, 2, 0);
	trans[0][319]	= settr(318,0,2647,136,136,"output = 10", 1, 2, 0);
	trans[0][383]	= settr(382,0,2647,1,0,".(goto)", 0, 2, 0);
	trans[0][320]	= settr(319,0,321,137,0,"((input==28))", 1, 2, 0);
	trans[0][321]	= settr(320,0,322,138,138,"fsm_state = 41", 1, 2, 0);
	trans[0][322]	= settr(321,0,2647,139,139,"output = 2", 1, 2, 0);
	trans[0][323]	= settr(322,0,324,140,0,"((input==17))", 1, 2, 0);
	trans[0][324]	= settr(323,0,325,141,141,"fsm_state = 41", 1, 2, 0);
	trans[0][325]	= settr(324,0,2647,142,142,"output = 2", 1, 2, 0);
	trans[0][326]	= settr(325,0,327,143,0,"((input==18))", 1, 2, 0);
	trans[0][327]	= settr(326,0,328,144,144,"fsm_state = 41", 1, 2, 0);
	trans[0][328]	= settr(327,0,2647,145,145,"output = 2", 1, 2, 0);
	trans[0][329]	= settr(328,0,330,146,0,"((input==22))", 1, 2, 0);
	trans[0][330]	= settr(329,0,331,147,147,"fsm_state = 41", 1, 2, 0);
	trans[0][331]	= settr(330,0,2647,148,148,"output = 2", 1, 2, 0);
	trans[0][332]	= settr(331,0,333,149,0,"((input==24))", 1, 2, 0);
	trans[0][333]	= settr(332,0,334,150,150,"fsm_state = 40", 1, 2, 0);
	trans[0][334]	= settr(333,0,2647,151,151,"output = 10", 1, 2, 0);
	trans[0][335]	= settr(334,0,336,152,0,"((input==27))", 1, 2, 0);
	trans[0][336]	= settr(335,0,337,153,153,"fsm_state = 40", 1, 2, 0);
	trans[0][337]	= settr(336,0,2647,154,154,"output = 10", 1, 2, 0);
	trans[0][338]	= settr(337,0,339,155,0,"((input==26))", 1, 2, 0);
	trans[0][339]	= settr(338,0,340,156,156,"fsm_state = 40", 1, 2, 0);
	trans[0][340]	= settr(339,0,2647,157,157,"output = 10", 1, 2, 0);
	trans[0][341]	= settr(340,0,342,158,0,"((input==21))", 1, 2, 0);
	trans[0][342]	= settr(341,0,343,159,159,"fsm_state = 40", 1, 2, 0);
	trans[0][343]	= settr(342,0,2647,160,160,"output = 10", 1, 2, 0);
	trans[0][344]	= settr(343,0,345,161,0,"((input==23))", 1, 2, 0);
	trans[0][345]	= settr(344,0,346,162,162,"fsm_state = 40", 1, 2, 0);
	trans[0][346]	= settr(345,0,2647,163,163,"output = 10", 1, 2, 0);
	trans[0][347]	= settr(346,0,348,164,0,"((input==20))", 1, 2, 0);
	trans[0][348]	= settr(347,0,349,165,165,"fsm_state = 39", 1, 2, 0);
	trans[0][349]	= settr(348,0,350,166,166,"output = 3", 1, 2, 0);
	trans[0][350]	= settr(349,0,374,167,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][374] = settr(373,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(373,0,367,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][367]	= settr(366,32,372,168,168,"D_STEP14", 1, 2, 0);
	T = trans[0][372] = settr(371,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(371,0,368,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(371,0,370,0,0,"IF", 0, 2, 0);
	trans[0][368]	= settr(367,0,1,169,0,"((dealt==0))", 1, 2, 0);
	trans[0][369]	= settr(368,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][373]	= settr(372,0,375,1,0,".(goto)", 0, 2, 0);
	trans[0][370]	= settr(369,0,371,2,0,"else", 0, 2, 0);
	trans[0][371]	= settr(370,0,375,1,0,"(1)", 0, 2, 0);
	trans[0][375]	= settr(374,0,376,170,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][376]	= settr(375,0,2647,171,171,"output = 4", 1, 2, 0);
	trans[0][377]	= settr(376,0,378,172,0,"((input==19))", 1, 2, 0);
	trans[0][378]	= settr(377,0,17,173,173,"fsm_state = 38", 1, 2, 0);
	trans[0][379]	= settr(378,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][380]	= settr(379,0,17,2,0,"else", 0, 2, 0);
	trans[0][381]	= settr(380,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][384]	= settr(383,0,423,174,0,"((fsm_state==40))", 1, 2, 0);
	T = trans[0][423] = settr(422,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(422,0,385,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(422,0,388,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(422,0,391,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(422,0,394,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(422,0,397,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(422,0,400,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(422,0,403,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(422,0,406,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(422,0,409,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(422,0,412,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(422,0,415,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(422,0,418,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(422,0,421,0,0,"IF", 0, 2, 0);
	trans[0][385]	= settr(384,0,386,175,0,"((input==25))", 1, 2, 0);
	trans[0][386]	= settr(385,0,387,176,176,"fsm_state = 42", 1, 2, 0);
	trans[0][387]	= settr(386,0,2647,177,177,"output = 7", 1, 2, 0);
	trans[0][424]	= settr(423,0,2647,1,0,".(goto)", 0, 2, 0);
	trans[0][388]	= settr(387,0,389,178,0,"((input==24))", 1, 2, 0);
	trans[0][389]	= settr(388,0,390,179,179,"fsm_state = 40", 1, 2, 0);
	trans[0][390]	= settr(389,0,2647,180,180,"output = 7", 1, 2, 0);
	trans[0][391]	= settr(390,0,392,181,0,"((input==20))", 1, 2, 0);
	trans[0][392]	= settr(391,0,393,182,182,"fsm_state = 40", 1, 2, 0);
	trans[0][393]	= settr(392,0,2647,183,183,"output = 7", 1, 2, 0);
	trans[0][394]	= settr(393,0,395,184,0,"((input==19))", 1, 2, 0);
	trans[0][395]	= settr(394,0,396,185,185,"fsm_state = 40", 1, 2, 0);
	trans[0][396]	= settr(395,0,2647,186,186,"output = 7", 1, 2, 0);
	trans[0][397]	= settr(396,0,398,187,0,"((input==28))", 1, 2, 0);
	trans[0][398]	= settr(397,0,399,188,188,"fsm_state = 40", 1, 2, 0);
	trans[0][399]	= settr(398,0,2647,189,189,"output = 2", 1, 2, 0);
	trans[0][400]	= settr(399,0,401,190,0,"((input==17))", 1, 2, 0);
	trans[0][401]	= settr(400,0,402,191,191,"fsm_state = 40", 1, 2, 0);
	trans[0][402]	= settr(401,0,2647,192,192,"output = 2", 1, 2, 0);
	trans[0][403]	= settr(402,0,404,193,0,"((input==27))", 1, 2, 0);
	trans[0][404]	= settr(403,0,405,194,194,"fsm_state = 40", 1, 2, 0);
	trans[0][405]	= settr(404,0,2647,195,195,"output = 7", 1, 2, 0);
	trans[0][406]	= settr(405,0,407,196,0,"((input==18))", 1, 2, 0);
	trans[0][407]	= settr(406,0,408,197,197,"fsm_state = 40", 1, 2, 0);
	trans[0][408]	= settr(407,0,2647,198,198,"output = 2", 1, 2, 0);
	trans[0][409]	= settr(408,0,410,199,0,"((input==26))", 1, 2, 0);
	trans[0][410]	= settr(409,0,411,200,200,"fsm_state = 40", 1, 2, 0);
	trans[0][411]	= settr(410,0,2647,201,201,"output = 7", 1, 2, 0);
	trans[0][412]	= settr(411,0,413,202,0,"((input==21))", 1, 2, 0);
	trans[0][413]	= settr(412,0,414,203,203,"fsm_state = 40", 1, 2, 0);
	trans[0][414]	= settr(413,0,2647,204,204,"output = 7", 1, 2, 0);
	trans[0][415]	= settr(414,0,416,205,0,"((input==22))", 1, 2, 0);
	trans[0][416]	= settr(415,0,417,206,206,"fsm_state = 40", 1, 2, 0);
	trans[0][417]	= settr(416,0,2647,207,207,"output = 2", 1, 2, 0);
	trans[0][418]	= settr(417,0,419,208,0,"((input==23))", 1, 2, 0);
	trans[0][419]	= settr(418,0,420,209,209,"fsm_state = 40", 1, 2, 0);
	trans[0][420]	= settr(419,0,2647,210,210,"output = 7", 1, 2, 0);
	trans[0][421]	= settr(420,0,17,2,0,"else", 0, 2, 0);
	trans[0][422]	= settr(421,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][425]	= settr(424,0,464,211,0,"((fsm_state==39))", 1, 2, 0);
	T = trans[0][464] = settr(463,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(463,0,426,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(463,0,429,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(463,0,432,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(463,0,435,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(463,0,438,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(463,0,441,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(463,0,444,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(463,0,447,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(463,0,450,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(463,0,453,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(463,0,456,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(463,0,459,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(463,0,462,0,0,"IF", 0, 2, 0);
	trans[0][426]	= settr(425,0,427,212,0,"((input==25))", 1, 2, 0);
	trans[0][427]	= settr(426,0,428,213,213,"fsm_state = 42", 1, 2, 0);
	trans[0][428]	= settr(427,0,2647,214,214,"output = 10", 1, 2, 0);
	trans[0][465]	= settr(464,0,2647,1,0,".(goto)", 0, 2, 0);
	trans[0][429]	= settr(428,0,430,215,0,"((input==24))", 1, 2, 0);
	trans[0][430]	= settr(429,0,431,216,216,"fsm_state = 40", 1, 2, 0);
	trans[0][431]	= settr(430,0,2647,217,217,"output = 10", 1, 2, 0);
	trans[0][432]	= settr(431,0,433,218,0,"((input==27))", 1, 2, 0);
	trans[0][433]	= settr(432,0,434,219,219,"fsm_state = 40", 1, 2, 0);
	trans[0][434]	= settr(433,0,2647,220,220,"output = 10", 1, 2, 0);
	trans[0][435]	= settr(434,0,436,221,0,"((input==26))", 1, 2, 0);
	trans[0][436]	= settr(435,0,437,222,222,"fsm_state = 40", 1, 2, 0);
	trans[0][437]	= settr(436,0,2647,223,223,"output = 10", 1, 2, 0);
	trans[0][438]	= settr(437,0,439,224,0,"((input==21))", 1, 2, 0);
	trans[0][439]	= settr(438,0,440,225,225,"fsm_state = 40", 1, 2, 0);
	trans[0][440]	= settr(439,0,2647,226,226,"output = 10", 1, 2, 0);
	trans[0][441]	= settr(440,0,442,227,0,"((input==23))", 1, 2, 0);
	trans[0][442]	= settr(441,0,443,228,228,"fsm_state = 40", 1, 2, 0);
	trans[0][443]	= settr(442,0,2647,229,229,"output = 10", 1, 2, 0);
	trans[0][444]	= settr(443,0,445,230,0,"((input==20))", 1, 2, 0);
	trans[0][445]	= settr(444,0,17,231,231,"fsm_state = 39", 1, 2, 0);
	trans[0][446]	= settr(445,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][447]	= settr(446,0,448,232,0,"((input==28))", 1, 2, 0);
	trans[0][448]	= settr(447,0,449,233,233,"fsm_state = 39", 1, 2, 0);
	trans[0][449]	= settr(448,0,2647,234,234,"output = 2", 1, 2, 0);
	trans[0][450]	= settr(449,0,451,235,0,"((input==17))", 1, 2, 0);
	trans[0][451]	= settr(450,0,452,236,236,"fsm_state = 39", 1, 2, 0);
	trans[0][452]	= settr(451,0,2647,237,237,"output = 2", 1, 2, 0);
	trans[0][453]	= settr(452,0,454,238,0,"((input==18))", 1, 2, 0);
	trans[0][454]	= settr(453,0,455,239,239,"fsm_state = 39", 1, 2, 0);
	trans[0][455]	= settr(454,0,2647,240,240,"output = 2", 1, 2, 0);
	trans[0][456]	= settr(455,0,457,241,0,"((input==22))", 1, 2, 0);
	trans[0][457]	= settr(456,0,458,242,242,"fsm_state = 39", 1, 2, 0);
	trans[0][458]	= settr(457,0,2647,243,243,"output = 2", 1, 2, 0);
	trans[0][459]	= settr(458,0,460,244,0,"((input==19))", 1, 2, 0);
	trans[0][460]	= settr(459,0,17,245,245,"fsm_state = 37", 1, 2, 0);
	trans[0][461]	= settr(460,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][462]	= settr(461,0,17,2,0,"else", 0, 2, 0);
	trans[0][463]	= settr(462,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][466]	= settr(465,0,505,246,0,"((fsm_state==38))", 1, 2, 0);
	T = trans[0][505] = settr(504,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(504,0,467,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(504,0,470,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(504,0,473,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(504,0,476,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(504,0,479,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(504,0,482,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(504,0,485,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(504,0,488,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(504,0,491,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(504,0,494,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(504,0,497,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(504,0,500,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(504,0,503,0,0,"IF", 0, 2, 0);
	trans[0][467]	= settr(466,0,468,247,0,"((input==24))", 1, 2, 0);
	trans[0][468]	= settr(467,0,17,248,248,"fsm_state = 38", 1, 2, 0);
	trans[0][469]	= settr(468,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][506]	= settr(505,0,2647,1,0,".(goto)", 0, 2, 0);
	trans[0][470]	= settr(469,0,471,249,0,"((input==20))", 1, 2, 0);
	trans[0][471]	= settr(470,0,17,250,250,"fsm_state = 38", 1, 2, 0);
	trans[0][472]	= settr(471,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][473]	= settr(472,0,474,251,0,"((input==19))", 1, 2, 0);
	trans[0][474]	= settr(473,0,17,252,252,"fsm_state = 38", 1, 2, 0);
	trans[0][475]	= settr(474,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][476]	= settr(475,0,477,253,0,"((input==28))", 1, 2, 0);
	trans[0][477]	= settr(476,0,478,254,254,"fsm_state = 38", 1, 2, 0);
	trans[0][478]	= settr(477,0,2647,255,255,"output = 2", 1, 2, 0);
	trans[0][479]	= settr(478,0,480,256,0,"((input==17))", 1, 2, 0);
	trans[0][480]	= settr(479,0,481,257,257,"fsm_state = 38", 1, 2, 0);
	trans[0][481]	= settr(480,0,2647,258,258,"output = 2", 1, 2, 0);
	trans[0][482]	= settr(481,0,483,259,0,"((input==27))", 1, 2, 0);
	trans[0][483]	= settr(482,0,17,260,260,"fsm_state = 38", 1, 2, 0);
	trans[0][484]	= settr(483,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][485]	= settr(484,0,486,261,0,"((input==18))", 1, 2, 0);
	trans[0][486]	= settr(485,0,487,262,262,"fsm_state = 38", 1, 2, 0);
	trans[0][487]	= settr(486,0,2647,263,263,"output = 2", 1, 2, 0);
	trans[0][488]	= settr(487,0,489,264,0,"((input==26))", 1, 2, 0);
	trans[0][489]	= settr(488,0,17,265,265,"fsm_state = 38", 1, 2, 0);
	trans[0][490]	= settr(489,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][491]	= settr(490,0,492,266,0,"((input==21))", 1, 2, 0);
	trans[0][492]	= settr(491,0,17,267,267,"fsm_state = 38", 1, 2, 0);
	trans[0][493]	= settr(492,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][494]	= settr(493,0,495,268,0,"((input==22))", 1, 2, 0);
	trans[0][495]	= settr(494,0,496,269,269,"fsm_state = 38", 1, 2, 0);
	trans[0][496]	= settr(495,0,2647,270,270,"output = 2", 1, 2, 0);
	trans[0][497]	= settr(496,0,498,271,0,"((input==23))", 1, 2, 0);
	trans[0][498]	= settr(497,0,17,272,272,"fsm_state = 38", 1, 2, 0);
	trans[0][499]	= settr(498,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][500]	= settr(499,0,501,273,0,"((input==25))", 1, 2, 0);
	trans[0][501]	= settr(500,0,17,274,274,"fsm_state = 36", 1, 2, 0);
	trans[0][502]	= settr(501,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][503]	= settr(502,0,17,2,0,"else", 0, 2, 0);
	trans[0][504]	= settr(503,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][507]	= settr(506,0,546,275,0,"((fsm_state==37))", 1, 2, 0);
	T = trans[0][546] = settr(545,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(545,0,508,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(545,0,511,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(545,0,514,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(545,0,517,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(545,0,520,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(545,0,523,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(545,0,526,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(545,0,529,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(545,0,532,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(545,0,535,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(545,0,538,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(545,0,541,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(545,0,544,0,0,"IF", 0, 2, 0);
	trans[0][508]	= settr(507,0,509,276,0,"((input==20))", 1, 2, 0);
	trans[0][509]	= settr(508,0,510,277,277,"fsm_state = 40", 1, 2, 0);
	trans[0][510]	= settr(509,0,2647,278,278,"output = 10", 1, 2, 0);
	trans[0][547]	= settr(546,0,2647,1,0,".(goto)", 0, 2, 0);
	trans[0][511]	= settr(510,0,512,279,0,"((input==19))", 1, 2, 0);
	trans[0][512]	= settr(511,0,513,280,280,"fsm_state = 40", 1, 2, 0);
	trans[0][513]	= settr(512,0,2647,281,281,"output = 10", 1, 2, 0);
	trans[0][514]	= settr(513,0,515,282,0,"((input==26))", 1, 2, 0);
	trans[0][515]	= settr(514,0,516,283,283,"fsm_state = 40", 1, 2, 0);
	trans[0][516]	= settr(515,0,2647,284,284,"output = 10", 1, 2, 0);
	trans[0][517]	= settr(516,0,518,285,0,"((input==24))", 1, 2, 0);
	trans[0][518]	= settr(517,0,17,286,286,"fsm_state = 37", 1, 2, 0);
	trans[0][519]	= settr(518,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][520]	= settr(519,0,521,287,0,"((input==28))", 1, 2, 0);
	trans[0][521]	= settr(520,0,522,288,288,"fsm_state = 37", 1, 2, 0);
	trans[0][522]	= settr(521,0,2647,289,289,"output = 2", 1, 2, 0);
	trans[0][523]	= settr(522,0,524,290,0,"((input==17))", 1, 2, 0);
	trans[0][524]	= settr(523,0,525,291,291,"fsm_state = 37", 1, 2, 0);
	trans[0][525]	= settr(524,0,2647,292,292,"output = 2", 1, 2, 0);
	trans[0][526]	= settr(525,0,527,293,0,"((input==27))", 1, 2, 0);
	trans[0][527]	= settr(526,0,17,294,294,"fsm_state = 37", 1, 2, 0);
	trans[0][528]	= settr(527,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][529]	= settr(528,0,530,295,0,"((input==18))", 1, 2, 0);
	trans[0][530]	= settr(529,0,531,296,296,"fsm_state = 37", 1, 2, 0);
	trans[0][531]	= settr(530,0,2647,297,297,"output = 2", 1, 2, 0);
	trans[0][532]	= settr(531,0,533,298,0,"((input==22))", 1, 2, 0);
	trans[0][533]	= settr(532,0,534,299,299,"fsm_state = 37", 1, 2, 0);
	trans[0][534]	= settr(533,0,2647,300,300,"output = 2", 1, 2, 0);
	trans[0][535]	= settr(534,0,536,301,0,"((input==25))", 1, 2, 0);
	trans[0][536]	= settr(535,0,17,302,302,"fsm_state = 35", 1, 2, 0);
	trans[0][537]	= settr(536,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][538]	= settr(537,0,539,303,0,"((input==23))", 1, 2, 0);
	trans[0][539]	= settr(538,0,540,304,304,"fsm_state = 34", 1, 2, 0);
	trans[0][540]	= settr(539,0,2647,305,305,"output = 8", 1, 2, 0);
	trans[0][541]	= settr(540,0,542,306,0,"((input==21))", 1, 2, 0);
	trans[0][542]	= settr(541,0,543,307,307,"fsm_state = 33", 1, 2, 0);
	trans[0][543]	= settr(542,0,2647,308,308,"output = 5", 1, 2, 0);
	trans[0][544]	= settr(543,0,17,2,0,"else", 0, 2, 0);
	trans[0][545]	= settr(544,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][548]	= settr(547,0,587,309,0,"((fsm_state==36))", 1, 2, 0);
	T = trans[0][587] = settr(586,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(586,0,549,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(586,0,552,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(586,0,555,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(586,0,558,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(586,0,561,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(586,0,564,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(586,0,567,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(586,0,570,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(586,0,573,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(586,0,576,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(586,0,579,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(586,0,582,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(586,0,585,0,0,"IF", 0, 2, 0);
	trans[0][549]	= settr(548,0,550,310,0,"((input==18))", 1, 2, 0);
	trans[0][550]	= settr(549,0,17,311,311,"fsm_state = 38", 1, 2, 0);
	trans[0][551]	= settr(550,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][588]	= settr(587,0,2647,1,0,".(goto)", 0, 2, 0);
	trans[0][552]	= settr(551,0,553,312,0,"((input==24))", 1, 2, 0);
	trans[0][553]	= settr(552,0,17,313,313,"fsm_state = 36", 1, 2, 0);
	trans[0][554]	= settr(553,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][555]	= settr(554,0,556,314,0,"((input==20))", 1, 2, 0);
	trans[0][556]	= settr(555,0,17,315,315,"fsm_state = 36", 1, 2, 0);
	trans[0][557]	= settr(556,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][558]	= settr(557,0,559,316,0,"((input==19))", 1, 2, 0);
	trans[0][559]	= settr(558,0,17,317,317,"fsm_state = 36", 1, 2, 0);
	trans[0][560]	= settr(559,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][561]	= settr(560,0,562,318,0,"((input==28))", 1, 2, 0);
	trans[0][562]	= settr(561,0,17,319,319,"fsm_state = 36", 1, 2, 0);
	trans[0][563]	= settr(562,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][564]	= settr(563,0,565,320,0,"((input==25))", 1, 2, 0);
	trans[0][565]	= settr(564,0,566,321,321,"fsm_state = 36", 1, 2, 0);
	trans[0][566]	= settr(565,0,2647,322,322,"output = 15", 1, 2, 0);
	trans[0][567]	= settr(566,0,568,323,0,"((input==17))", 1, 2, 0);
	trans[0][568]	= settr(567,0,17,324,324,"fsm_state = 36", 1, 2, 0);
	trans[0][569]	= settr(568,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][570]	= settr(569,0,571,325,0,"((input==27))", 1, 2, 0);
	trans[0][571]	= settr(570,0,17,326,326,"fsm_state = 36", 1, 2, 0);
	trans[0][572]	= settr(571,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][573]	= settr(572,0,574,327,0,"((input==26))", 1, 2, 0);
	trans[0][574]	= settr(573,0,17,328,328,"fsm_state = 36", 1, 2, 0);
	trans[0][575]	= settr(574,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][576]	= settr(575,0,577,329,0,"((input==21))", 1, 2, 0);
	trans[0][577]	= settr(576,0,17,330,330,"fsm_state = 36", 1, 2, 0);
	trans[0][578]	= settr(577,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][579]	= settr(578,0,580,331,0,"((input==22))", 1, 2, 0);
	trans[0][580]	= settr(579,0,17,332,332,"fsm_state = 36", 1, 2, 0);
	trans[0][581]	= settr(580,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][582]	= settr(581,0,583,333,0,"((input==23))", 1, 2, 0);
	trans[0][583]	= settr(582,0,17,334,334,"fsm_state = 36", 1, 2, 0);
	trans[0][584]	= settr(583,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][585]	= settr(584,0,17,2,0,"else", 0, 2, 0);
	trans[0][586]	= settr(585,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][589]	= settr(588,0,628,335,0,"((fsm_state==35))", 1, 2, 0);
	T = trans[0][628] = settr(627,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(627,0,590,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(627,0,593,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(627,0,596,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(627,0,599,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(627,0,602,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(627,0,605,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(627,0,608,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(627,0,611,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(627,0,614,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(627,0,617,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(627,0,620,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(627,0,623,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(627,0,626,0,0,"IF", 0, 2, 0);
	trans[0][590]	= settr(589,0,591,336,0,"((input==20))", 1, 2, 0);
	trans[0][591]	= settr(590,0,592,337,337,"fsm_state = 42", 1, 2, 0);
	trans[0][592]	= settr(591,0,2647,338,338,"output = 10", 1, 2, 0);
	trans[0][629]	= settr(628,0,2647,1,0,".(goto)", 0, 2, 0);
	trans[0][593]	= settr(592,0,594,339,0,"((input==19))", 1, 2, 0);
	trans[0][594]	= settr(593,0,595,340,340,"fsm_state = 42", 1, 2, 0);
	trans[0][595]	= settr(594,0,2647,341,341,"output = 10", 1, 2, 0);
	trans[0][596]	= settr(595,0,597,342,0,"((input==26))", 1, 2, 0);
	trans[0][597]	= settr(596,0,598,343,343,"fsm_state = 42", 1, 2, 0);
	trans[0][598]	= settr(597,0,2647,344,344,"output = 10", 1, 2, 0);
	trans[0][599]	= settr(598,0,600,345,0,"((input==18))", 1, 2, 0);
	trans[0][600]	= settr(599,0,17,346,346,"fsm_state = 37", 1, 2, 0);
	trans[0][601]	= settr(600,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][602]	= settr(601,0,603,347,0,"((input==24))", 1, 2, 0);
	trans[0][603]	= settr(602,0,17,348,348,"fsm_state = 35", 1, 2, 0);
	trans[0][604]	= settr(603,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][605]	= settr(604,0,606,349,0,"((input==28))", 1, 2, 0);
	trans[0][606]	= settr(605,0,17,350,350,"fsm_state = 35", 1, 2, 0);
	trans[0][607]	= settr(606,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][608]	= settr(607,0,609,351,0,"((input==25))", 1, 2, 0);
	trans[0][609]	= settr(608,0,610,352,352,"fsm_state = 35", 1, 2, 0);
	trans[0][610]	= settr(609,0,2647,353,353,"output = 15", 1, 2, 0);
	trans[0][611]	= settr(610,0,612,354,0,"((input==17))", 1, 2, 0);
	trans[0][612]	= settr(611,0,17,355,355,"fsm_state = 35", 1, 2, 0);
	trans[0][613]	= settr(612,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][614]	= settr(613,0,615,356,0,"((input==27))", 1, 2, 0);
	trans[0][615]	= settr(614,0,17,357,357,"fsm_state = 35", 1, 2, 0);
	trans[0][616]	= settr(615,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][617]	= settr(616,0,618,358,0,"((input==22))", 1, 2, 0);
	trans[0][618]	= settr(617,0,17,359,359,"fsm_state = 35", 1, 2, 0);
	trans[0][619]	= settr(618,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][620]	= settr(619,0,621,360,0,"((input==23))", 1, 2, 0);
	trans[0][621]	= settr(620,0,622,361,361,"fsm_state = 32", 1, 2, 0);
	trans[0][622]	= settr(621,0,2647,362,362,"output = 8", 1, 2, 0);
	trans[0][623]	= settr(622,0,624,363,0,"((input==21))", 1, 2, 0);
	trans[0][624]	= settr(623,0,625,364,364,"fsm_state = 31", 1, 2, 0);
	trans[0][625]	= settr(624,0,2647,365,365,"output = 5", 1, 2, 0);
	trans[0][626]	= settr(625,0,17,2,0,"else", 0, 2, 0);
	trans[0][627]	= settr(626,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][630]	= settr(629,0,669,366,0,"((fsm_state==34))", 1, 2, 0);
	T = trans[0][669] = settr(668,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(668,0,631,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(668,0,634,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(668,0,637,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(668,0,640,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(668,0,643,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(668,0,646,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(668,0,649,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(668,0,652,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(668,0,655,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(668,0,658,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(668,0,661,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(668,0,664,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(668,0,667,0,0,"IF", 0, 2, 0);
	trans[0][631]	= settr(630,0,632,367,0,"((input==20))", 1, 2, 0);
	trans[0][632]	= settr(631,0,633,368,368,"fsm_state = 40", 1, 2, 0);
	trans[0][633]	= settr(632,0,2647,369,369,"output = 10", 1, 2, 0);
	trans[0][670]	= settr(669,0,2647,1,0,".(goto)", 0, 2, 0);
	trans[0][634]	= settr(633,0,635,370,0,"((input==19))", 1, 2, 0);
	trans[0][635]	= settr(634,0,636,371,371,"fsm_state = 40", 1, 2, 0);
	trans[0][636]	= settr(635,0,2647,372,372,"output = 10", 1, 2, 0);
	trans[0][637]	= settr(636,0,638,373,0,"((input==26))", 1, 2, 0);
	trans[0][638]	= settr(637,0,639,374,374,"fsm_state = 40", 1, 2, 0);
	trans[0][639]	= settr(638,0,2647,375,375,"output = 10", 1, 2, 0);
	trans[0][640]	= settr(639,0,641,376,0,"((input==24))", 1, 2, 0);
	trans[0][641]	= settr(640,0,642,377,377,"fsm_state = 34", 1, 2, 0);
	trans[0][642]	= settr(641,0,2647,378,378,"output = 11", 1, 2, 0);
	trans[0][643]	= settr(642,0,644,379,0,"((input==28))", 1, 2, 0);
	trans[0][644]	= settr(643,0,645,380,380,"fsm_state = 34", 1, 2, 0);
	trans[0][645]	= settr(644,0,2647,381,381,"output = 2", 1, 2, 0);
	trans[0][646]	= settr(645,0,647,382,0,"((input==17))", 1, 2, 0);
	trans[0][647]	= settr(646,0,648,383,383,"fsm_state = 34", 1, 2, 0);
	trans[0][648]	= settr(647,0,2647,384,384,"output = 2", 1, 2, 0);
	trans[0][649]	= settr(648,0,650,385,0,"((input==18))", 1, 2, 0);
	trans[0][650]	= settr(649,0,651,386,386,"fsm_state = 34", 1, 2, 0);
	trans[0][651]	= settr(650,0,2647,387,387,"output = 2", 1, 2, 0);
	trans[0][652]	= settr(651,0,653,388,0,"((input==22))", 1, 2, 0);
	trans[0][653]	= settr(652,0,654,389,389,"fsm_state = 34", 1, 2, 0);
	trans[0][654]	= settr(653,0,2647,390,390,"output = 2", 1, 2, 0);
	trans[0][655]	= settr(654,0,656,391,0,"((input==23))", 1, 2, 0);
	trans[0][656]	= settr(655,0,657,392,392,"fsm_state = 34", 1, 2, 0);
	trans[0][657]	= settr(656,0,2647,393,393,"output = 8", 1, 2, 0);
	trans[0][658]	= settr(657,0,659,394,0,"((input==25))", 1, 2, 0);
	trans[0][659]	= settr(658,0,660,395,395,"fsm_state = 32", 1, 2, 0);
	trans[0][660]	= settr(659,0,2647,396,396,"output = 13", 1, 2, 0);
	trans[0][661]	= settr(660,0,662,397,0,"((input==27))", 1, 2, 0);
	trans[0][662]	= settr(661,0,663,398,398,"fsm_state = 30", 1, 2, 0);
	trans[0][663]	= settr(662,0,2647,399,399,"output = 14", 1, 2, 0);
	trans[0][664]	= settr(663,0,665,400,0,"((input==21))", 1, 2, 0);
	trans[0][665]	= settr(664,0,666,401,401,"fsm_state = 29", 1, 2, 0);
	trans[0][666]	= settr(665,0,2647,402,402,"output = 5", 1, 2, 0);
	trans[0][667]	= settr(666,0,17,2,0,"else", 0, 2, 0);
	trans[0][668]	= settr(667,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][671]	= settr(670,0,737,403,0,"((fsm_state==33))", 1, 2, 0);
	T = trans[0][737] = settr(736,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(736,0,672,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(736,0,675,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(736,0,678,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(736,0,681,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(736,0,684,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(736,0,687,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(736,0,690,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(736,0,693,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(736,0,696,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(736,0,699,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(736,0,702,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(736,0,705,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(736,0,735,0,0,"IF", 0, 2, 0);
	trans[0][672]	= settr(671,0,673,404,0,"((input==26))", 1, 2, 0);
	trans[0][673]	= settr(672,0,674,405,405,"fsm_state = 40", 1, 2, 0);
	trans[0][674]	= settr(673,0,2647,406,406,"output = 10", 1, 2, 0);
	trans[0][738]	= settr(737,0,2647,1,0,".(goto)", 0, 2, 0);
	trans[0][675]	= settr(674,0,676,407,0,"((input==21))", 1, 2, 0);
	trans[0][676]	= settr(675,0,677,408,408,"fsm_state = 40", 1, 2, 0);
	trans[0][677]	= settr(676,0,2647,409,409,"output = 10", 1, 2, 0);
	trans[0][678]	= settr(677,0,679,410,0,"((input==23))", 1, 2, 0);
	trans[0][679]	= settr(678,0,680,411,411,"fsm_state = 40", 1, 2, 0);
	trans[0][680]	= settr(679,0,2647,412,412,"output = 10", 1, 2, 0);
	trans[0][681]	= settr(680,0,682,413,0,"((input==19))", 1, 2, 0);
	trans[0][682]	= settr(681,0,17,414,414,"fsm_state = 38", 1, 2, 0);
	trans[0][683]	= settr(682,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][684]	= settr(683,0,685,415,0,"((input==24))", 1, 2, 0);
	trans[0][685]	= settr(684,0,17,416,416,"fsm_state = 33", 1, 2, 0);
	trans[0][686]	= settr(685,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][687]	= settr(686,0,688,417,0,"((input==28))", 1, 2, 0);
	trans[0][688]	= settr(687,0,689,418,418,"fsm_state = 33", 1, 2, 0);
	trans[0][689]	= settr(688,0,2647,419,419,"output = 2", 1, 2, 0);
	trans[0][690]	= settr(689,0,691,420,0,"((input==17))", 1, 2, 0);
	trans[0][691]	= settr(690,0,692,421,421,"fsm_state = 33", 1, 2, 0);
	trans[0][692]	= settr(691,0,2647,422,422,"output = 2", 1, 2, 0);
	trans[0][693]	= settr(692,0,694,423,0,"((input==27))", 1, 2, 0);
	trans[0][694]	= settr(693,0,17,424,424,"fsm_state = 33", 1, 2, 0);
	trans[0][695]	= settr(694,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][696]	= settr(695,0,697,425,0,"((input==18))", 1, 2, 0);
	trans[0][697]	= settr(696,0,698,426,426,"fsm_state = 33", 1, 2, 0);
	trans[0][698]	= settr(697,0,2647,427,427,"output = 2", 1, 2, 0);
	trans[0][699]	= settr(698,0,700,428,0,"((input==22))", 1, 2, 0);
	trans[0][700]	= settr(699,0,701,429,429,"fsm_state = 33", 1, 2, 0);
	trans[0][701]	= settr(700,0,2647,430,430,"output = 2", 1, 2, 0);
	trans[0][702]	= settr(701,0,703,431,0,"((input==25))", 1, 2, 0);
	trans[0][703]	= settr(702,0,17,432,432,"fsm_state = 31", 1, 2, 0);
	trans[0][704]	= settr(703,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][705]	= settr(704,0,706,433,0,"((input==20))", 1, 2, 0);
	trans[0][706]	= settr(705,0,707,434,434,"fsm_state = 28", 1, 2, 0);
	trans[0][707]	= settr(706,0,708,435,435,"output = 3", 1, 2, 0);
	trans[0][708]	= settr(707,0,732,436,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][732] = settr(731,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(731,0,725,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][725]	= settr(724,32,730,437,437,"D_STEP14", 1, 2, 0);
	T = trans[0][730] = settr(729,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(729,0,726,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(729,0,728,0,0,"IF", 0, 2, 0);
	trans[0][726]	= settr(725,0,1,438,0,"((dealt==0))", 1, 2, 0);
	trans[0][727]	= settr(726,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][731]	= settr(730,0,733,1,0,".(goto)", 0, 2, 0);
	trans[0][728]	= settr(727,0,729,2,0,"else", 0, 2, 0);
	trans[0][729]	= settr(728,0,733,1,0,"(1)", 0, 2, 0);
	trans[0][733]	= settr(732,0,734,439,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][734]	= settr(733,0,2647,440,440,"output = 4", 1, 2, 0);
	trans[0][735]	= settr(734,0,17,2,0,"else", 0, 2, 0);
	trans[0][736]	= settr(735,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][739]	= settr(738,0,778,441,0,"((fsm_state==32))", 1, 2, 0);
	T = trans[0][778] = settr(777,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(777,0,740,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(777,0,743,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(777,0,746,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(777,0,749,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(777,0,752,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(777,0,755,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(777,0,758,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(777,0,761,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(777,0,764,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(777,0,767,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(777,0,770,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(777,0,773,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(777,0,776,0,0,"IF", 0, 2, 0);
	trans[0][740]	= settr(739,0,741,442,0,"((input==20))", 1, 2, 0);
	trans[0][741]	= settr(740,0,742,443,443,"fsm_state = 42", 1, 2, 0);
	trans[0][742]	= settr(741,0,2647,444,444,"output = 10", 1, 2, 0);
	trans[0][779]	= settr(778,0,2647,1,0,".(goto)", 0, 2, 0);
	trans[0][743]	= settr(742,0,744,445,0,"((input==19))", 1, 2, 0);
	trans[0][744]	= settr(743,0,745,446,446,"fsm_state = 42", 1, 2, 0);
	trans[0][745]	= settr(744,0,2647,447,447,"output = 10", 1, 2, 0);
	trans[0][746]	= settr(745,0,747,448,0,"((input==26))", 1, 2, 0);
	trans[0][747]	= settr(746,0,748,449,449,"fsm_state = 42", 1, 2, 0);
	trans[0][748]	= settr(747,0,2647,450,450,"output = 10", 1, 2, 0);
	trans[0][749]	= settr(748,0,750,451,0,"((input==18))", 1, 2, 0);
	trans[0][750]	= settr(749,0,751,452,452,"fsm_state = 34", 1, 2, 0);
	trans[0][751]	= settr(750,0,2647,453,453,"output = 13", 1, 2, 0);
	trans[0][752]	= settr(751,0,753,454,0,"((input==24))", 1, 2, 0);
	trans[0][753]	= settr(752,0,754,455,455,"fsm_state = 32", 1, 2, 0);
	trans[0][754]	= settr(753,0,2647,456,456,"output = 11", 1, 2, 0);
	trans[0][755]	= settr(754,0,756,457,0,"((input==28))", 1, 2, 0);
	trans[0][756]	= settr(755,0,757,458,458,"fsm_state = 32", 1, 2, 0);
	trans[0][757]	= settr(756,0,2647,459,459,"output = 13", 1, 2, 0);
	trans[0][758]	= settr(757,0,759,460,0,"((input==25))", 1, 2, 0);
	trans[0][759]	= settr(758,0,760,461,461,"fsm_state = 32", 1, 2, 0);
	trans[0][760]	= settr(759,0,2647,462,462,"output = 15", 1, 2, 0);
	trans[0][761]	= settr(760,0,762,463,0,"((input==17))", 1, 2, 0);
	trans[0][762]	= settr(761,0,763,464,464,"fsm_state = 32", 1, 2, 0);
	trans[0][763]	= settr(762,0,2647,465,465,"output = 13", 1, 2, 0);
	trans[0][764]	= settr(763,0,765,466,0,"((input==22))", 1, 2, 0);
	trans[0][765]	= settr(764,0,766,467,467,"fsm_state = 32", 1, 2, 0);
	trans[0][766]	= settr(765,0,2647,468,468,"output = 13", 1, 2, 0);
	trans[0][767]	= settr(766,0,768,469,0,"((input==23))", 1, 2, 0);
	trans[0][768]	= settr(767,0,769,470,470,"fsm_state = 32", 1, 2, 0);
	trans[0][769]	= settr(768,0,2647,471,471,"output = 8", 1, 2, 0);
	trans[0][770]	= settr(769,0,771,472,0,"((input==21))", 1, 2, 0);
	trans[0][771]	= settr(770,0,772,473,473,"fsm_state = 27", 1, 2, 0);
	trans[0][772]	= settr(771,0,2647,474,474,"output = 5", 1, 2, 0);
	trans[0][773]	= settr(772,0,774,475,0,"((input==27))", 1, 2, 0);
	trans[0][774]	= settr(773,0,775,476,476,"fsm_state = 26", 1, 2, 0);
	trans[0][775]	= settr(774,0,2647,477,477,"output = 14", 1, 2, 0);
	trans[0][776]	= settr(775,0,17,2,0,"else", 0, 2, 0);
	trans[0][777]	= settr(776,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][780]	= settr(779,0,846,478,0,"((fsm_state==31))", 1, 2, 0);
	T = trans[0][846] = settr(845,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(845,0,781,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(845,0,784,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(845,0,787,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(845,0,790,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(845,0,793,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(845,0,796,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(845,0,799,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(845,0,802,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(845,0,805,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(845,0,808,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(845,0,811,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(845,0,814,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(845,0,844,0,0,"IF", 0, 2, 0);
	trans[0][781]	= settr(780,0,782,479,0,"((input==26))", 1, 2, 0);
	trans[0][782]	= settr(781,0,783,480,480,"fsm_state = 42", 1, 2, 0);
	trans[0][783]	= settr(782,0,2647,481,481,"output = 10", 1, 2, 0);
	trans[0][847]	= settr(846,0,2647,1,0,".(goto)", 0, 2, 0);
	trans[0][784]	= settr(783,0,785,482,0,"((input==21))", 1, 2, 0);
	trans[0][785]	= settr(784,0,786,483,483,"fsm_state = 42", 1, 2, 0);
	trans[0][786]	= settr(785,0,2647,484,484,"output = 10", 1, 2, 0);
	trans[0][787]	= settr(786,0,788,485,0,"((input==23))", 1, 2, 0);
	trans[0][788]	= settr(787,0,789,486,486,"fsm_state = 42", 1, 2, 0);
	trans[0][789]	= settr(788,0,2647,487,487,"output = 10", 1, 2, 0);
	trans[0][790]	= settr(789,0,791,488,0,"((input==19))", 1, 2, 0);
	trans[0][791]	= settr(790,0,17,489,489,"fsm_state = 36", 1, 2, 0);
	trans[0][792]	= settr(791,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][793]	= settr(792,0,794,490,0,"((input==18))", 1, 2, 0);
	trans[0][794]	= settr(793,0,17,491,491,"fsm_state = 33", 1, 2, 0);
	trans[0][795]	= settr(794,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][796]	= settr(795,0,797,492,0,"((input==24))", 1, 2, 0);
	trans[0][797]	= settr(796,0,17,493,493,"fsm_state = 31", 1, 2, 0);
	trans[0][798]	= settr(797,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][799]	= settr(798,0,800,494,0,"((input==28))", 1, 2, 0);
	trans[0][800]	= settr(799,0,17,495,495,"fsm_state = 31", 1, 2, 0);
	trans[0][801]	= settr(800,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][802]	= settr(801,0,803,496,0,"((input==25))", 1, 2, 0);
	trans[0][803]	= settr(802,0,804,497,497,"fsm_state = 31", 1, 2, 0);
	trans[0][804]	= settr(803,0,2647,498,498,"output = 15", 1, 2, 0);
	trans[0][805]	= settr(804,0,806,499,0,"((input==17))", 1, 2, 0);
	trans[0][806]	= settr(805,0,17,500,500,"fsm_state = 31", 1, 2, 0);
	trans[0][807]	= settr(806,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][808]	= settr(807,0,809,501,0,"((input==27))", 1, 2, 0);
	trans[0][809]	= settr(808,0,17,502,502,"fsm_state = 31", 1, 2, 0);
	trans[0][810]	= settr(809,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][811]	= settr(810,0,812,503,0,"((input==22))", 1, 2, 0);
	trans[0][812]	= settr(811,0,17,504,504,"fsm_state = 31", 1, 2, 0);
	trans[0][813]	= settr(812,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][814]	= settr(813,0,815,505,0,"((input==20))", 1, 2, 0);
	trans[0][815]	= settr(814,0,816,506,506,"fsm_state = 25", 1, 2, 0);
	trans[0][816]	= settr(815,0,817,507,507,"output = 3", 1, 2, 0);
	trans[0][817]	= settr(816,0,841,508,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][841] = settr(840,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(840,0,834,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][834]	= settr(833,32,839,509,509,"D_STEP14", 1, 2, 0);
	T = trans[0][839] = settr(838,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(838,0,835,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(838,0,837,0,0,"IF", 0, 2, 0);
	trans[0][835]	= settr(834,0,1,510,0,"((dealt==0))", 1, 2, 0);
	trans[0][836]	= settr(835,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][840]	= settr(839,0,842,1,0,".(goto)", 0, 2, 0);
	trans[0][837]	= settr(836,0,838,2,0,"else", 0, 2, 0);
	trans[0][838]	= settr(837,0,842,1,0,"(1)", 0, 2, 0);
	trans[0][842]	= settr(841,0,843,511,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][843]	= settr(842,0,2647,512,512,"output = 4", 1, 2, 0);
	trans[0][844]	= settr(843,0,17,2,0,"else", 0, 2, 0);
	trans[0][845]	= settr(844,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][848]	= settr(847,0,887,513,0,"((fsm_state==30))", 1, 2, 0);
	T = trans[0][887] = settr(886,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(886,0,849,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(886,0,852,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(886,0,855,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(886,0,858,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(886,0,861,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(886,0,864,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(886,0,867,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(886,0,870,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(886,0,873,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(886,0,876,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(886,0,879,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(886,0,882,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(886,0,885,0,0,"IF", 0, 2, 0);
	trans[0][849]	= settr(848,0,850,514,0,"((input==20))", 1, 2, 0);
	trans[0][850]	= settr(849,0,851,515,515,"fsm_state = 40", 1, 2, 0);
	trans[0][851]	= settr(850,0,2647,516,516,"output = 10", 1, 2, 0);
	trans[0][888]	= settr(887,0,2647,1,0,".(goto)", 0, 2, 0);
	trans[0][852]	= settr(851,0,853,517,0,"((input==19))", 1, 2, 0);
	trans[0][853]	= settr(852,0,854,518,518,"fsm_state = 40", 1, 2, 0);
	trans[0][854]	= settr(853,0,2647,519,519,"output = 10", 1, 2, 0);
	trans[0][855]	= settr(854,0,856,520,0,"((input==26))", 1, 2, 0);
	trans[0][856]	= settr(855,0,857,521,521,"fsm_state = 40", 1, 2, 0);
	trans[0][857]	= settr(856,0,2647,522,522,"output = 10", 1, 2, 0);
	trans[0][858]	= settr(857,0,859,523,0,"((input==24))", 1, 2, 0);
	trans[0][859]	= settr(858,0,860,524,524,"fsm_state = 30", 1, 2, 0);
	trans[0][860]	= settr(859,0,2647,525,525,"output = 13", 1, 2, 0);
	trans[0][861]	= settr(860,0,862,526,0,"((input==28))", 1, 2, 0);
	trans[0][862]	= settr(861,0,863,527,527,"fsm_state = 30", 1, 2, 0);
	trans[0][863]	= settr(862,0,2647,528,528,"output = 2", 1, 2, 0);
	trans[0][864]	= settr(863,0,865,529,0,"((input==17))", 1, 2, 0);
	trans[0][865]	= settr(864,0,866,530,530,"fsm_state = 30", 1, 2, 0);
	trans[0][866]	= settr(865,0,2647,531,531,"output = 2", 1, 2, 0);
	trans[0][867]	= settr(866,0,868,532,0,"((input==27))", 1, 2, 0);
	trans[0][868]	= settr(867,0,869,533,533,"fsm_state = 30", 1, 2, 0);
	trans[0][869]	= settr(868,0,2647,534,534,"output = 13", 1, 2, 0);
	trans[0][870]	= settr(869,0,871,535,0,"((input==18))", 1, 2, 0);
	trans[0][871]	= settr(870,0,872,536,536,"fsm_state = 30", 1, 2, 0);
	trans[0][872]	= settr(871,0,2647,537,537,"output = 2", 1, 2, 0);
	trans[0][873]	= settr(872,0,874,538,0,"((input==22))", 1, 2, 0);
	trans[0][874]	= settr(873,0,875,539,539,"fsm_state = 30", 1, 2, 0);
	trans[0][875]	= settr(874,0,2647,540,540,"output = 2", 1, 2, 0);
	trans[0][876]	= settr(875,0,877,541,0,"((input==23))", 1, 2, 0);
	trans[0][877]	= settr(876,0,878,542,542,"fsm_state = 30", 1, 2, 0);
	trans[0][878]	= settr(877,0,2647,543,543,"output = 8", 1, 2, 0);
	trans[0][879]	= settr(878,0,880,544,0,"((input==25))", 1, 2, 0);
	trans[0][880]	= settr(879,0,881,545,545,"fsm_state = 24", 1, 2, 0);
	trans[0][881]	= settr(880,0,2647,546,546,"output = 9", 1, 2, 0);
	trans[0][882]	= settr(881,0,883,547,0,"((input==21))", 1, 2, 0);
	trans[0][883]	= settr(882,0,884,548,548,"fsm_state = 23", 1, 2, 0);
	trans[0][884]	= settr(883,0,2647,549,549,"output = 5", 1, 2, 0);
	trans[0][885]	= settr(884,0,17,2,0,"else", 0, 2, 0);
	trans[0][886]	= settr(885,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][889]	= settr(888,0,955,550,0,"((fsm_state==29))", 1, 2, 0);
	T = trans[0][955] = settr(954,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(954,0,890,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(954,0,893,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(954,0,896,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(954,0,899,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(954,0,902,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(954,0,905,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(954,0,908,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(954,0,911,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(954,0,914,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(954,0,917,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(954,0,947,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(954,0,950,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(954,0,953,0,0,"IF", 0, 2, 0);
	trans[0][890]	= settr(889,0,891,551,0,"((input==26))", 1, 2, 0);
	trans[0][891]	= settr(890,0,892,552,552,"fsm_state = 40", 1, 2, 0);
	trans[0][892]	= settr(891,0,2647,553,553,"output = 10", 1, 2, 0);
	trans[0][956]	= settr(955,0,2647,1,0,".(goto)", 0, 2, 0);
	trans[0][893]	= settr(892,0,894,554,0,"((input==21))", 1, 2, 0);
	trans[0][894]	= settr(893,0,895,555,555,"fsm_state = 40", 1, 2, 0);
	trans[0][895]	= settr(894,0,2647,556,556,"output = 10", 1, 2, 0);
	trans[0][896]	= settr(895,0,897,557,0,"((input==23))", 1, 2, 0);
	trans[0][897]	= settr(896,0,898,558,558,"fsm_state = 40", 1, 2, 0);
	trans[0][898]	= settr(897,0,2647,559,559,"output = 10", 1, 2, 0);
	trans[0][899]	= settr(898,0,900,560,0,"((input==19))", 1, 2, 0);
	trans[0][900]	= settr(899,0,17,561,561,"fsm_state = 38", 1, 2, 0);
	trans[0][901]	= settr(900,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][902]	= settr(901,0,903,562,0,"((input==28))", 1, 2, 0);
	trans[0][903]	= settr(902,0,904,563,563,"fsm_state = 29", 1, 2, 0);
	trans[0][904]	= settr(903,0,2647,564,564,"output = 2", 1, 2, 0);
	trans[0][905]	= settr(904,0,906,565,0,"((input==17))", 1, 2, 0);
	trans[0][906]	= settr(905,0,907,566,566,"fsm_state = 29", 1, 2, 0);
	trans[0][907]	= settr(906,0,2647,567,567,"output = 2", 1, 2, 0);
	trans[0][908]	= settr(907,0,909,568,0,"((input==18))", 1, 2, 0);
	trans[0][909]	= settr(908,0,910,569,569,"fsm_state = 29", 1, 2, 0);
	trans[0][910]	= settr(909,0,2647,570,570,"output = 2", 1, 2, 0);
	trans[0][911]	= settr(910,0,912,571,0,"((input==22))", 1, 2, 0);
	trans[0][912]	= settr(911,0,913,572,572,"fsm_state = 29", 1, 2, 0);
	trans[0][913]	= settr(912,0,2647,573,573,"output = 2", 1, 2, 0);
	trans[0][914]	= settr(913,0,915,574,0,"((input==25))", 1, 2, 0);
	trans[0][915]	= settr(914,0,916,575,575,"fsm_state = 27", 1, 2, 0);
	trans[0][916]	= settr(915,0,2647,576,576,"output = 13", 1, 2, 0);
	trans[0][917]	= settr(916,0,918,577,0,"((input==20))", 1, 2, 0);
	trans[0][918]	= settr(917,0,919,578,578,"fsm_state = 22", 1, 2, 0);
	trans[0][919]	= settr(918,0,920,579,579,"output = 3", 1, 2, 0);
	trans[0][920]	= settr(919,0,944,580,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][944] = settr(943,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(943,0,937,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][937]	= settr(936,32,942,581,581,"D_STEP14", 1, 2, 0);
	T = trans[0][942] = settr(941,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(941,0,938,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(941,0,940,0,0,"IF", 0, 2, 0);
	trans[0][938]	= settr(937,0,1,582,0,"((dealt==0))", 1, 2, 0);
	trans[0][939]	= settr(938,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][943]	= settr(942,0,945,1,0,".(goto)", 0, 2, 0);
	trans[0][940]	= settr(939,0,941,2,0,"else", 0, 2, 0);
	trans[0][941]	= settr(940,0,945,1,0,"(1)", 0, 2, 0);
	trans[0][945]	= settr(944,0,946,583,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][946]	= settr(945,0,2647,584,584,"output = 4", 1, 2, 0);
	trans[0][947]	= settr(946,0,948,585,0,"((input==24))", 1, 2, 0);
	trans[0][948]	= settr(947,0,17,586,586,"fsm_state = 21", 1, 2, 0);
	trans[0][949]	= settr(948,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][950]	= settr(949,0,951,587,0,"((input==27))", 1, 2, 0);
	trans[0][951]	= settr(950,0,17,588,588,"fsm_state = 20", 1, 2, 0);
	trans[0][952]	= settr(951,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][953]	= settr(952,0,17,2,0,"else", 0, 2, 0);
	trans[0][954]	= settr(953,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][957]	= settr(956,0,996,589,0,"((fsm_state==28))", 1, 2, 0);
	T = trans[0][996] = settr(995,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(995,0,958,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(995,0,961,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(995,0,964,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(995,0,967,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(995,0,970,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(995,0,973,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(995,0,976,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(995,0,979,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(995,0,982,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(995,0,985,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(995,0,988,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(995,0,991,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(995,0,994,0,0,"IF", 0, 2, 0);
	trans[0][958]	= settr(957,0,959,590,0,"((input==26))", 1, 2, 0);
	trans[0][959]	= settr(958,0,960,591,591,"fsm_state = 40", 1, 2, 0);
	trans[0][960]	= settr(959,0,2647,592,592,"output = 10", 1, 2, 0);
	trans[0][997]	= settr(996,0,2647,1,0,".(goto)", 0, 2, 0);
	trans[0][961]	= settr(960,0,962,593,0,"((input==21))", 1, 2, 0);
	trans[0][962]	= settr(961,0,963,594,594,"fsm_state = 40", 1, 2, 0);
	trans[0][963]	= settr(962,0,2647,595,595,"output = 10", 1, 2, 0);
	trans[0][964]	= settr(963,0,965,596,0,"((input==23))", 1, 2, 0);
	trans[0][965]	= settr(964,0,966,597,597,"fsm_state = 40", 1, 2, 0);
	trans[0][966]	= settr(965,0,2647,598,598,"output = 10", 1, 2, 0);
	trans[0][967]	= settr(966,0,968,599,0,"((input==19))", 1, 2, 0);
	trans[0][968]	= settr(967,0,17,600,600,"fsm_state = 37", 1, 2, 0);
	trans[0][969]	= settr(968,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][970]	= settr(969,0,971,601,0,"((input==24))", 1, 2, 0);
	trans[0][971]	= settr(970,0,17,602,602,"fsm_state = 28", 1, 2, 0);
	trans[0][972]	= settr(971,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][973]	= settr(972,0,974,603,0,"((input==20))", 1, 2, 0);
	trans[0][974]	= settr(973,0,17,604,604,"fsm_state = 28", 1, 2, 0);
	trans[0][975]	= settr(974,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][976]	= settr(975,0,977,605,0,"((input==28))", 1, 2, 0);
	trans[0][977]	= settr(976,0,978,606,606,"fsm_state = 28", 1, 2, 0);
	trans[0][978]	= settr(977,0,2647,607,607,"output = 2", 1, 2, 0);
	trans[0][979]	= settr(978,0,980,608,0,"((input==17))", 1, 2, 0);
	trans[0][980]	= settr(979,0,981,609,609,"fsm_state = 28", 1, 2, 0);
	trans[0][981]	= settr(980,0,2647,610,610,"output = 2", 1, 2, 0);
	trans[0][982]	= settr(981,0,983,611,0,"((input==27))", 1, 2, 0);
	trans[0][983]	= settr(982,0,17,612,612,"fsm_state = 28", 1, 2, 0);
	trans[0][984]	= settr(983,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][985]	= settr(984,0,986,613,0,"((input==18))", 1, 2, 0);
	trans[0][986]	= settr(985,0,987,614,614,"fsm_state = 28", 1, 2, 0);
	trans[0][987]	= settr(986,0,2647,615,615,"output = 2", 1, 2, 0);
	trans[0][988]	= settr(987,0,989,616,0,"((input==22))", 1, 2, 0);
	trans[0][989]	= settr(988,0,990,617,617,"fsm_state = 28", 1, 2, 0);
	trans[0][990]	= settr(989,0,2647,618,618,"output = 2", 1, 2, 0);
	trans[0][991]	= settr(990,0,992,619,0,"((input==25))", 1, 2, 0);
	trans[0][992]	= settr(991,0,17,620,620,"fsm_state = 25", 1, 2, 0);
	trans[0][993]	= settr(992,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][994]	= settr(993,0,17,2,0,"else", 0, 2, 0);
	trans[0][995]	= settr(994,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][998]	= settr(997,0,1064,621,0,"((fsm_state==27))", 1, 2, 0);
	T = trans[0][1064] = settr(1063,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1063,0,999,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1063,0,1002,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1063,0,1005,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1063,0,1008,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1063,0,1011,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1063,0,1014,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1063,0,1017,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1063,0,1020,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1063,0,1023,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1063,0,1026,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1063,0,1029,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1063,0,1059,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1063,0,1062,0,0,"IF", 0, 2, 0);
	trans[0][999]	= settr(998,0,1000,622,0,"((input==26))", 1, 2, 0);
	trans[0][1000]	= settr(999,0,1001,623,623,"fsm_state = 42", 1, 2, 0);
	trans[0][1001]	= settr(1000,0,2647,624,624,"output = 10", 1, 2, 0);
	trans[0][1065]	= settr(1064,0,2647,1,0,".(goto)", 0, 2, 0);
	trans[0][1002]	= settr(1001,0,1003,625,0,"((input==21))", 1, 2, 0);
	trans[0][1003]	= settr(1002,0,1004,626,626,"fsm_state = 42", 1, 2, 0);
	trans[0][1004]	= settr(1003,0,2647,627,627,"output = 10", 1, 2, 0);
	trans[0][1005]	= settr(1004,0,1006,628,0,"((input==23))", 1, 2, 0);
	trans[0][1006]	= settr(1005,0,1007,629,629,"fsm_state = 42", 1, 2, 0);
	trans[0][1007]	= settr(1006,0,2647,630,630,"output = 10", 1, 2, 0);
	trans[0][1008]	= settr(1007,0,1009,631,0,"((input==19))", 1, 2, 0);
	trans[0][1009]	= settr(1008,0,17,632,632,"fsm_state = 36", 1, 2, 0);
	trans[0][1010]	= settr(1009,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1011]	= settr(1010,0,1012,633,0,"((input==18))", 1, 2, 0);
	trans[0][1012]	= settr(1011,0,1013,634,634,"fsm_state = 29", 1, 2, 0);
	trans[0][1013]	= settr(1012,0,2647,635,635,"output = 13", 1, 2, 0);
	trans[0][1014]	= settr(1013,0,1015,636,0,"((input==28))", 1, 2, 0);
	trans[0][1015]	= settr(1014,0,1016,637,637,"fsm_state = 27", 1, 2, 0);
	trans[0][1016]	= settr(1015,0,2647,638,638,"output = 13", 1, 2, 0);
	trans[0][1017]	= settr(1016,0,1018,639,0,"((input==25))", 1, 2, 0);
	trans[0][1018]	= settr(1017,0,1019,640,640,"fsm_state = 27", 1, 2, 0);
	trans[0][1019]	= settr(1018,0,2647,641,641,"output = 15", 1, 2, 0);
	trans[0][1020]	= settr(1019,0,1021,642,0,"((input==17))", 1, 2, 0);
	trans[0][1021]	= settr(1020,0,1022,643,643,"fsm_state = 27", 1, 2, 0);
	trans[0][1022]	= settr(1021,0,2647,644,644,"output = 13", 1, 2, 0);
	trans[0][1023]	= settr(1022,0,1024,645,0,"((input==22))", 1, 2, 0);
	trans[0][1024]	= settr(1023,0,1025,646,646,"fsm_state = 27", 1, 2, 0);
	trans[0][1025]	= settr(1024,0,2647,647,647,"output = 13", 1, 2, 0);
	trans[0][1026]	= settr(1025,0,1027,648,0,"((input==24))", 1, 2, 0);
	trans[0][1027]	= settr(1026,0,17,649,649,"fsm_state = 19", 1, 2, 0);
	trans[0][1028]	= settr(1027,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1029]	= settr(1028,0,1030,650,0,"((input==20))", 1, 2, 0);
	trans[0][1030]	= settr(1029,0,1031,651,651,"fsm_state = 18", 1, 2, 0);
	trans[0][1031]	= settr(1030,0,1032,652,652,"output = 3", 1, 2, 0);
	trans[0][1032]	= settr(1031,0,1056,653,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][1056] = settr(1055,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1055,0,1049,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][1049]	= settr(1048,32,1054,654,654,"D_STEP14", 1, 2, 0);
	T = trans[0][1054] = settr(1053,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1053,0,1050,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1053,0,1052,0,0,"IF", 0, 2, 0);
	trans[0][1050]	= settr(1049,0,1,655,0,"((dealt==0))", 1, 2, 0);
	trans[0][1051]	= settr(1050,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][1055]	= settr(1054,0,1057,1,0,".(goto)", 0, 2, 0);
	trans[0][1052]	= settr(1051,0,1053,2,0,"else", 0, 2, 0);
	trans[0][1053]	= settr(1052,0,1057,1,0,"(1)", 0, 2, 0);
	trans[0][1057]	= settr(1056,0,1058,656,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][1058]	= settr(1057,0,2647,657,657,"output = 4", 1, 2, 0);
	trans[0][1059]	= settr(1058,0,1060,658,0,"((input==27))", 1, 2, 0);
	trans[0][1060]	= settr(1059,0,17,659,659,"fsm_state = 17", 1, 2, 0);
	trans[0][1061]	= settr(1060,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1062]	= settr(1061,0,17,2,0,"else", 0, 2, 0);
	trans[0][1063]	= settr(1062,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1066]	= settr(1065,0,1105,660,0,"((fsm_state==26))", 1, 2, 0);
	T = trans[0][1105] = settr(1104,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1104,0,1067,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1104,0,1070,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1104,0,1073,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1104,0,1076,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1104,0,1079,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1104,0,1082,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1104,0,1085,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1104,0,1088,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1104,0,1091,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1104,0,1094,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1104,0,1097,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1104,0,1100,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1104,0,1103,0,0,"IF", 0, 2, 0);
	trans[0][1067]	= settr(1066,0,1068,661,0,"((input==20))", 1, 2, 0);
	trans[0][1068]	= settr(1067,0,1069,662,662,"fsm_state = 42", 1, 2, 0);
	trans[0][1069]	= settr(1068,0,2647,663,663,"output = 10", 1, 2, 0);
	trans[0][1106]	= settr(1105,0,2647,1,0,".(goto)", 0, 2, 0);
	trans[0][1070]	= settr(1069,0,1071,664,0,"((input==19))", 1, 2, 0);
	trans[0][1071]	= settr(1070,0,1072,665,665,"fsm_state = 42", 1, 2, 0);
	trans[0][1072]	= settr(1071,0,2647,666,666,"output = 10", 1, 2, 0);
	trans[0][1073]	= settr(1072,0,1074,667,0,"((input==26))", 1, 2, 0);
	trans[0][1074]	= settr(1073,0,1075,668,668,"fsm_state = 42", 1, 2, 0);
	trans[0][1075]	= settr(1074,0,2647,669,669,"output = 10", 1, 2, 0);
	trans[0][1076]	= settr(1075,0,1077,670,0,"((input==18))", 1, 2, 0);
	trans[0][1077]	= settr(1076,0,17,671,671,"fsm_state = 30", 1, 2, 0);
	trans[0][1078]	= settr(1077,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1079]	= settr(1078,0,1080,672,0,"((input==24))", 1, 2, 0);
	trans[0][1080]	= settr(1079,0,1081,673,673,"fsm_state = 26", 1, 2, 0);
	trans[0][1081]	= settr(1080,0,2647,674,674,"output = 13", 1, 2, 0);
	trans[0][1082]	= settr(1081,0,1083,675,0,"((input==28))", 1, 2, 0);
	trans[0][1083]	= settr(1082,0,17,676,676,"fsm_state = 26", 1, 2, 0);
	trans[0][1084]	= settr(1083,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1085]	= settr(1084,0,1086,677,0,"((input==25))", 1, 2, 0);
	trans[0][1086]	= settr(1085,0,1087,678,678,"fsm_state = 26", 1, 2, 0);
	trans[0][1087]	= settr(1086,0,2647,679,679,"output = 15", 1, 2, 0);
	trans[0][1088]	= settr(1087,0,1089,680,0,"((input==17))", 1, 2, 0);
	trans[0][1089]	= settr(1088,0,17,681,681,"fsm_state = 26", 1, 2, 0);
	trans[0][1090]	= settr(1089,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1091]	= settr(1090,0,1092,682,0,"((input==27))", 1, 2, 0);
	trans[0][1092]	= settr(1091,0,1093,683,683,"fsm_state = 26", 1, 2, 0);
	trans[0][1093]	= settr(1092,0,2647,684,684,"output = 13", 1, 2, 0);
	trans[0][1094]	= settr(1093,0,1095,685,0,"((input==22))", 1, 2, 0);
	trans[0][1095]	= settr(1094,0,17,686,686,"fsm_state = 26", 1, 2, 0);
	trans[0][1096]	= settr(1095,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1097]	= settr(1096,0,1098,687,0,"((input==23))", 1, 2, 0);
	trans[0][1098]	= settr(1097,0,1099,688,688,"fsm_state = 26", 1, 2, 0);
	trans[0][1099]	= settr(1098,0,2647,689,689,"output = 8", 1, 2, 0);
	trans[0][1100]	= settr(1099,0,1101,690,0,"((input==21))", 1, 2, 0);
	trans[0][1101]	= settr(1100,0,1102,691,691,"fsm_state = 16", 1, 2, 0);
	trans[0][1102]	= settr(1101,0,2647,692,692,"output = 5", 1, 2, 0);
	trans[0][1103]	= settr(1102,0,17,2,0,"else", 0, 2, 0);
	trans[0][1104]	= settr(1103,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1107]	= settr(1106,0,1146,693,0,"((fsm_state==25))", 1, 2, 0);
	T = trans[0][1146] = settr(1145,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1145,0,1108,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1145,0,1111,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1145,0,1114,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1145,0,1117,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1145,0,1120,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1145,0,1123,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1145,0,1126,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1145,0,1129,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1145,0,1132,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1145,0,1135,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1145,0,1138,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1145,0,1141,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1145,0,1144,0,0,"IF", 0, 2, 0);
	trans[0][1108]	= settr(1107,0,1109,694,0,"((input==26))", 1, 2, 0);
	trans[0][1109]	= settr(1108,0,1110,695,695,"fsm_state = 42", 1, 2, 0);
	trans[0][1110]	= settr(1109,0,2647,696,696,"output = 10", 1, 2, 0);
	trans[0][1147]	= settr(1146,0,2647,1,0,".(goto)", 0, 2, 0);
	trans[0][1111]	= settr(1110,0,1112,697,0,"((input==21))", 1, 2, 0);
	trans[0][1112]	= settr(1111,0,1113,698,698,"fsm_state = 42", 1, 2, 0);
	trans[0][1113]	= settr(1112,0,2647,699,699,"output = 10", 1, 2, 0);
	trans[0][1114]	= settr(1113,0,1115,700,0,"((input==23))", 1, 2, 0);
	trans[0][1115]	= settr(1114,0,1116,701,701,"fsm_state = 42", 1, 2, 0);
	trans[0][1116]	= settr(1115,0,2647,702,702,"output = 10", 1, 2, 0);
	trans[0][1117]	= settr(1116,0,1118,703,0,"((input==19))", 1, 2, 0);
	trans[0][1118]	= settr(1117,0,17,704,704,"fsm_state = 35", 1, 2, 0);
	trans[0][1119]	= settr(1118,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1120]	= settr(1119,0,1121,705,0,"((input==18))", 1, 2, 0);
	trans[0][1121]	= settr(1120,0,17,706,706,"fsm_state = 28", 1, 2, 0);
	trans[0][1122]	= settr(1121,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1123]	= settr(1122,0,1124,707,0,"((input==24))", 1, 2, 0);
	trans[0][1124]	= settr(1123,0,17,708,708,"fsm_state = 25", 1, 2, 0);
	trans[0][1125]	= settr(1124,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1126]	= settr(1125,0,1127,709,0,"((input==20))", 1, 2, 0);
	trans[0][1127]	= settr(1126,0,17,710,710,"fsm_state = 25", 1, 2, 0);
	trans[0][1128]	= settr(1127,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1129]	= settr(1128,0,1130,711,0,"((input==28))", 1, 2, 0);
	trans[0][1130]	= settr(1129,0,17,712,712,"fsm_state = 25", 1, 2, 0);
	trans[0][1131]	= settr(1130,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1132]	= settr(1131,0,1133,713,0,"((input==25))", 1, 2, 0);
	trans[0][1133]	= settr(1132,0,1134,714,714,"fsm_state = 25", 1, 2, 0);
	trans[0][1134]	= settr(1133,0,2647,715,715,"output = 15", 1, 2, 0);
	trans[0][1135]	= settr(1134,0,1136,716,0,"((input==17))", 1, 2, 0);
	trans[0][1136]	= settr(1135,0,17,717,717,"fsm_state = 25", 1, 2, 0);
	trans[0][1137]	= settr(1136,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1138]	= settr(1137,0,1139,718,0,"((input==27))", 1, 2, 0);
	trans[0][1139]	= settr(1138,0,17,719,719,"fsm_state = 25", 1, 2, 0);
	trans[0][1140]	= settr(1139,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1141]	= settr(1140,0,1142,720,0,"((input==22))", 1, 2, 0);
	trans[0][1142]	= settr(1141,0,17,721,721,"fsm_state = 25", 1, 2, 0);
	trans[0][1143]	= settr(1142,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1144]	= settr(1143,0,17,2,0,"else", 0, 2, 0);
	trans[0][1145]	= settr(1144,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1148]	= settr(1147,0,1187,722,0,"((fsm_state==24))", 1, 2, 0);
	T = trans[0][1187] = settr(1186,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1186,0,1149,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1186,0,1152,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1186,0,1155,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1186,0,1158,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1186,0,1161,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1186,0,1164,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1186,0,1167,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1186,0,1170,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1186,0,1173,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1186,0,1176,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1186,0,1179,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1186,0,1182,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1186,0,1185,0,0,"IF", 0, 2, 0);
	trans[0][1149]	= settr(1148,0,1150,723,0,"((input==20))", 1, 2, 0);
	trans[0][1150]	= settr(1149,0,1151,724,724,"fsm_state = 42", 1, 2, 0);
	trans[0][1151]	= settr(1150,0,2647,725,725,"output = 10", 1, 2, 0);
	trans[0][1188]	= settr(1187,0,2647,1,0,".(goto)", 0, 2, 0);
	trans[0][1152]	= settr(1151,0,1153,726,0,"((input==19))", 1, 2, 0);
	trans[0][1153]	= settr(1152,0,1154,727,727,"fsm_state = 42", 1, 2, 0);
	trans[0][1154]	= settr(1153,0,2647,728,728,"output = 10", 1, 2, 0);
	trans[0][1155]	= settr(1154,0,1156,729,0,"((input==26))", 1, 2, 0);
	trans[0][1156]	= settr(1155,0,1157,730,730,"fsm_state = 42", 1, 2, 0);
	trans[0][1157]	= settr(1156,0,2647,731,731,"output = 10", 1, 2, 0);
	trans[0][1158]	= settr(1157,0,1159,732,0,"((input==24))", 1, 2, 0);
	trans[0][1159]	= settr(1158,0,1160,733,733,"fsm_state = 24", 1, 2, 0);
	trans[0][1160]	= settr(1159,0,2647,734,734,"output = 13", 1, 2, 0);
	trans[0][1161]	= settr(1160,0,1162,735,0,"((input==28))", 1, 2, 0);
	trans[0][1162]	= settr(1161,0,1163,736,736,"fsm_state = 24", 1, 2, 0);
	trans[0][1163]	= settr(1162,0,2647,737,737,"output = 1", 1, 2, 0);
	trans[0][1164]	= settr(1163,0,1165,738,0,"((input==25))", 1, 2, 0);
	trans[0][1165]	= settr(1164,0,1166,739,739,"fsm_state = 24", 1, 2, 0);
	trans[0][1166]	= settr(1165,0,2647,740,740,"output = 15", 1, 2, 0);
	trans[0][1167]	= settr(1166,0,1168,741,0,"((input==27))", 1, 2, 0);
	trans[0][1168]	= settr(1167,0,1169,742,742,"fsm_state = 24", 1, 2, 0);
	trans[0][1169]	= settr(1168,0,2647,743,743,"output = 13", 1, 2, 0);
	trans[0][1170]	= settr(1169,0,1171,744,0,"((input==23))", 1, 2, 0);
	trans[0][1171]	= settr(1170,0,1172,745,745,"fsm_state = 24", 1, 2, 0);
	trans[0][1172]	= settr(1171,0,2647,746,746,"output = 8", 1, 2, 0);
	trans[0][1173]	= settr(1172,0,1174,747,0,"((input==22))", 1, 2, 0);
	trans[0][1174]	= settr(1173,0,1175,748,748,"fsm_state = 15", 1, 2, 0);
	trans[0][1175]	= settr(1174,0,2647,749,749,"output = 6", 1, 2, 0);
	trans[0][1176]	= settr(1175,0,1177,750,0,"((input==21))", 1, 2, 0);
	trans[0][1177]	= settr(1176,0,1178,751,751,"fsm_state = 14", 1, 2, 0);
	trans[0][1178]	= settr(1177,0,2647,752,752,"output = 5", 1, 2, 0);
	trans[0][1179]	= settr(1178,0,1180,753,0,"((input==18))", 1, 2, 0);
	trans[0][1180]	= settr(1179,0,1181,754,754,"fsm_state = 13", 1, 2, 0);
	trans[0][1181]	= settr(1180,0,2647,755,755,"output = 6", 1, 2, 0);
	trans[0][1182]	= settr(1181,0,1183,756,0,"((input==17))", 1, 2, 0);
	trans[0][1183]	= settr(1182,0,17,757,757,"fsm_state = 12", 1, 2, 0);
	trans[0][1184]	= settr(1183,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1185]	= settr(1184,0,17,2,0,"else", 0, 2, 0);
	trans[0][1186]	= settr(1185,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1189]	= settr(1188,0,1255,758,0,"((fsm_state==23))", 1, 2, 0);
	T = trans[0][1255] = settr(1254,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1254,0,1190,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1254,0,1193,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1254,0,1196,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1254,0,1199,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1254,0,1202,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1254,0,1205,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1254,0,1208,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1254,0,1211,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1254,0,1214,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1254,0,1217,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1254,0,1220,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1254,0,1223,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1254,0,1253,0,0,"IF", 0, 2, 0);
	trans[0][1190]	= settr(1189,0,1191,759,0,"((input==26))", 1, 2, 0);
	trans[0][1191]	= settr(1190,0,1192,760,760,"fsm_state = 40", 1, 2, 0);
	trans[0][1192]	= settr(1191,0,2647,761,761,"output = 10", 1, 2, 0);
	trans[0][1256]	= settr(1255,0,2647,1,0,".(goto)", 0, 2, 0);
	trans[0][1193]	= settr(1192,0,1194,762,0,"((input==21))", 1, 2, 0);
	trans[0][1194]	= settr(1193,0,1195,763,763,"fsm_state = 40", 1, 2, 0);
	trans[0][1195]	= settr(1194,0,2647,764,764,"output = 10", 1, 2, 0);
	trans[0][1196]	= settr(1195,0,1197,765,0,"((input==23))", 1, 2, 0);
	trans[0][1197]	= settr(1196,0,1198,766,766,"fsm_state = 40", 1, 2, 0);
	trans[0][1198]	= settr(1197,0,2647,767,767,"output = 10", 1, 2, 0);
	trans[0][1199]	= settr(1198,0,1200,768,0,"((input==19))", 1, 2, 0);
	trans[0][1200]	= settr(1199,0,17,769,769,"fsm_state = 38", 1, 2, 0);
	trans[0][1201]	= settr(1200,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1202]	= settr(1201,0,1203,770,0,"((input==24))", 1, 2, 0);
	trans[0][1203]	= settr(1202,0,1204,771,771,"fsm_state = 23", 1, 2, 0);
	trans[0][1204]	= settr(1203,0,2647,772,772,"output = 13", 1, 2, 0);
	trans[0][1205]	= settr(1204,0,1206,773,0,"((input==28))", 1, 2, 0);
	trans[0][1206]	= settr(1205,0,1207,774,774,"fsm_state = 23", 1, 2, 0);
	trans[0][1207]	= settr(1206,0,2647,775,775,"output = 2", 1, 2, 0);
	trans[0][1208]	= settr(1207,0,1209,776,0,"((input==17))", 1, 2, 0);
	trans[0][1209]	= settr(1208,0,1210,777,777,"fsm_state = 23", 1, 2, 0);
	trans[0][1210]	= settr(1209,0,2647,778,778,"output = 2", 1, 2, 0);
	trans[0][1211]	= settr(1210,0,1212,779,0,"((input==27))", 1, 2, 0);
	trans[0][1212]	= settr(1211,0,1213,780,780,"fsm_state = 23", 1, 2, 0);
	trans[0][1213]	= settr(1212,0,2647,781,781,"output = 13", 1, 2, 0);
	trans[0][1214]	= settr(1213,0,1215,782,0,"((input==18))", 1, 2, 0);
	trans[0][1215]	= settr(1214,0,1216,783,783,"fsm_state = 23", 1, 2, 0);
	trans[0][1216]	= settr(1215,0,2647,784,784,"output = 2", 1, 2, 0);
	trans[0][1217]	= settr(1216,0,1218,785,0,"((input==22))", 1, 2, 0);
	trans[0][1218]	= settr(1217,0,1219,786,786,"fsm_state = 23", 1, 2, 0);
	trans[0][1219]	= settr(1218,0,2647,787,787,"output = 2", 1, 2, 0);
	trans[0][1220]	= settr(1219,0,1221,788,0,"((input==25))", 1, 2, 0);
	trans[0][1221]	= settr(1220,0,17,789,789,"fsm_state = 11", 1, 2, 0);
	trans[0][1222]	= settr(1221,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1223]	= settr(1222,0,1224,790,0,"((input==20))", 1, 2, 0);
	trans[0][1224]	= settr(1223,0,1225,791,791,"fsm_state = 10", 1, 2, 0);
	trans[0][1225]	= settr(1224,0,1226,792,792,"output = 3", 1, 2, 0);
	trans[0][1226]	= settr(1225,0,1250,793,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][1250] = settr(1249,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1249,0,1243,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][1243]	= settr(1242,32,1248,794,794,"D_STEP14", 1, 2, 0);
	T = trans[0][1248] = settr(1247,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1247,0,1244,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1247,0,1246,0,0,"IF", 0, 2, 0);
	trans[0][1244]	= settr(1243,0,1,795,0,"((dealt==0))", 1, 2, 0);
	trans[0][1245]	= settr(1244,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][1249]	= settr(1248,0,1251,1,0,".(goto)", 0, 2, 0);
	trans[0][1246]	= settr(1245,0,1247,2,0,"else", 0, 2, 0);
	trans[0][1247]	= settr(1246,0,1251,1,0,"(1)", 0, 2, 0);
	trans[0][1251]	= settr(1250,0,1252,796,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][1252]	= settr(1251,0,2647,797,797,"output = 4", 1, 2, 0);
	trans[0][1253]	= settr(1252,0,17,2,0,"else", 0, 2, 0);
	trans[0][1254]	= settr(1253,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1257]	= settr(1256,0,1296,798,0,"((fsm_state==22))", 1, 2, 0);
	T = trans[0][1296] = settr(1295,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1295,0,1258,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1295,0,1261,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1295,0,1264,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1295,0,1267,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1295,0,1270,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1295,0,1273,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1295,0,1276,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1295,0,1279,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1295,0,1282,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1295,0,1285,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1295,0,1288,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1295,0,1291,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1295,0,1294,0,0,"IF", 0, 2, 0);
	trans[0][1258]	= settr(1257,0,1259,799,0,"((input==26))", 1, 2, 0);
	trans[0][1259]	= settr(1258,0,1260,800,800,"fsm_state = 40", 1, 2, 0);
	trans[0][1260]	= settr(1259,0,2647,801,801,"output = 10", 1, 2, 0);
	trans[0][1297]	= settr(1296,0,2647,1,0,".(goto)", 0, 2, 0);
	trans[0][1261]	= settr(1260,0,1262,802,0,"((input==21))", 1, 2, 0);
	trans[0][1262]	= settr(1261,0,1263,803,803,"fsm_state = 40", 1, 2, 0);
	trans[0][1263]	= settr(1262,0,2647,804,804,"output = 10", 1, 2, 0);
	trans[0][1264]	= settr(1263,0,1265,805,0,"((input==23))", 1, 2, 0);
	trans[0][1265]	= settr(1264,0,1266,806,806,"fsm_state = 40", 1, 2, 0);
	trans[0][1266]	= settr(1265,0,2647,807,807,"output = 10", 1, 2, 0);
	trans[0][1267]	= settr(1266,0,1268,808,0,"((input==19))", 1, 2, 0);
	trans[0][1268]	= settr(1267,0,17,809,809,"fsm_state = 34", 1, 2, 0);
	trans[0][1269]	= settr(1268,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1270]	= settr(1269,0,1271,810,0,"((input==24))", 1, 2, 0);
	trans[0][1271]	= settr(1270,0,1272,811,811,"fsm_state = 22", 1, 2, 0);
	trans[0][1272]	= settr(1271,0,2647,812,812,"output = 11", 1, 2, 0);
	trans[0][1273]	= settr(1272,0,1274,813,0,"((input==20))", 1, 2, 0);
	trans[0][1274]	= settr(1273,0,17,814,814,"fsm_state = 22", 1, 2, 0);
	trans[0][1275]	= settr(1274,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1276]	= settr(1275,0,1277,815,0,"((input==28))", 1, 2, 0);
	trans[0][1277]	= settr(1276,0,1278,816,816,"fsm_state = 22", 1, 2, 0);
	trans[0][1278]	= settr(1277,0,2647,817,817,"output = 2", 1, 2, 0);
	trans[0][1279]	= settr(1278,0,1280,818,0,"((input==17))", 1, 2, 0);
	trans[0][1280]	= settr(1279,0,1281,819,819,"fsm_state = 22", 1, 2, 0);
	trans[0][1281]	= settr(1280,0,2647,820,820,"output = 2", 1, 2, 0);
	trans[0][1282]	= settr(1281,0,1283,821,0,"((input==18))", 1, 2, 0);
	trans[0][1283]	= settr(1282,0,1284,822,822,"fsm_state = 22", 1, 2, 0);
	trans[0][1284]	= settr(1283,0,2647,823,823,"output = 2", 1, 2, 0);
	trans[0][1285]	= settr(1284,0,1286,824,0,"((input==22))", 1, 2, 0);
	trans[0][1286]	= settr(1285,0,1287,825,825,"fsm_state = 22", 1, 2, 0);
	trans[0][1287]	= settr(1286,0,2647,826,826,"output = 2", 1, 2, 0);
	trans[0][1288]	= settr(1287,0,1289,827,0,"((input==25))", 1, 2, 0);
	trans[0][1289]	= settr(1288,0,1290,828,828,"fsm_state = 18", 1, 2, 0);
	trans[0][1290]	= settr(1289,0,2647,829,829,"output = 13", 1, 2, 0);
	trans[0][1291]	= settr(1290,0,1292,830,0,"((input==27))", 1, 2, 0);
	trans[0][1292]	= settr(1291,0,1293,831,831,"fsm_state = 10", 1, 2, 0);
	trans[0][1293]	= settr(1292,0,2647,832,832,"output = 14", 1, 2, 0);
	trans[0][1294]	= settr(1293,0,17,2,0,"else", 0, 2, 0);
	trans[0][1295]	= settr(1294,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1298]	= settr(1297,0,1391,833,0,"((fsm_state==21))", 1, 2, 0);
	T = trans[0][1391] = settr(1390,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1390,0,1299,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1390,0,1302,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1390,0,1305,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1390,0,1308,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1390,0,1311,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1390,0,1368,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1390,0,1371,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1390,0,1374,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1390,0,1377,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1390,0,1380,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1390,0,1383,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1390,0,1386,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1390,0,1389,0,0,"IF", 0, 2, 0);
	trans[0][1299]	= settr(1298,0,1300,834,0,"((input==26))", 1, 2, 0);
	trans[0][1300]	= settr(1299,0,1301,835,835,"fsm_state = 40", 1, 2, 0);
	trans[0][1301]	= settr(1300,0,2647,836,836,"output = 10", 1, 2, 0);
	trans[0][1392]	= settr(1391,0,2647,1,0,".(goto)", 0, 2, 0);
	trans[0][1302]	= settr(1301,0,1303,837,0,"((input==21))", 1, 2, 0);
	trans[0][1303]	= settr(1302,0,1304,838,838,"fsm_state = 40", 1, 2, 0);
	trans[0][1304]	= settr(1303,0,2647,839,839,"output = 10", 1, 2, 0);
	trans[0][1305]	= settr(1304,0,1306,840,0,"((input==23))", 1, 2, 0);
	trans[0][1306]	= settr(1305,0,1307,841,841,"fsm_state = 40", 1, 2, 0);
	trans[0][1307]	= settr(1306,0,2647,842,842,"output = 10", 1, 2, 0);
	trans[0][1308]	= settr(1307,0,1309,843,0,"((input==19))", 1, 2, 0);
	trans[0][1309]	= settr(1308,0,17,844,844,"fsm_state = 38", 1, 2, 0);
	trans[0][1310]	= settr(1309,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1311]	= settr(1310,0,1312,845,0,"((input==20))", 1, 2, 0);
	trans[0][1312]	= settr(1311,0,1313,846,846,"fsm_state = 22", 1, 2, 0);
	trans[0][1313]	= settr(1312,0,1314,847,847,"output = 3", 1, 2, 0);
	trans[0][1314]	= settr(1313,0,1338,848,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][1338] = settr(1337,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1337,0,1331,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][1331]	= settr(1330,32,1336,849,849,"D_STEP14", 1, 2, 0);
	T = trans[0][1336] = settr(1335,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1335,0,1332,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1335,0,1334,0,0,"IF", 0, 2, 0);
	trans[0][1332]	= settr(1331,0,1,850,0,"((dealt==0))", 1, 2, 0);
	trans[0][1333]	= settr(1332,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][1337]	= settr(1336,0,1339,1,0,".(goto)", 0, 2, 0);
	trans[0][1334]	= settr(1333,0,1335,2,0,"else", 0, 2, 0);
	trans[0][1335]	= settr(1334,0,1339,1,0,"(1)", 0, 2, 0);
	trans[0][1339]	= settr(1338,0,1340,851,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][1340]	= settr(1339,0,1341,852,852,"output = 4", 1, 2, 0);
	trans[0][1341]	= settr(1340,0,1365,853,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][1365] = settr(1364,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1364,0,1358,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][1358]	= settr(1357,32,1363,854,854,"D_STEP14", 1, 2, 0);
	T = trans[0][1363] = settr(1362,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1362,0,1359,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1362,0,1361,0,0,"IF", 0, 2, 0);
	trans[0][1359]	= settr(1358,0,1,855,0,"((dealt==0))", 1, 2, 0);
	trans[0][1360]	= settr(1359,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][1364]	= settr(1363,0,1366,1,0,".(goto)", 0, 2, 0);
	trans[0][1361]	= settr(1360,0,1362,2,0,"else", 0, 2, 0);
	trans[0][1362]	= settr(1361,0,1366,1,0,"(1)", 0, 2, 0);
	trans[0][1366]	= settr(1365,0,1367,856,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][1367]	= settr(1366,0,2647,857,857,"output = 12", 1, 2, 0);
	trans[0][1368]	= settr(1367,0,1369,858,0,"((input==24))", 1, 2, 0);
	trans[0][1369]	= settr(1368,0,17,859,859,"fsm_state = 21", 1, 2, 0);
	trans[0][1370]	= settr(1369,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1371]	= settr(1370,0,1372,860,0,"((input==28))", 1, 2, 0);
	trans[0][1372]	= settr(1371,0,1373,861,861,"fsm_state = 21", 1, 2, 0);
	trans[0][1373]	= settr(1372,0,2647,862,862,"output = 2", 1, 2, 0);
	trans[0][1374]	= settr(1373,0,1375,863,0,"((input==17))", 1, 2, 0);
	trans[0][1375]	= settr(1374,0,1376,864,864,"fsm_state = 21", 1, 2, 0);
	trans[0][1376]	= settr(1375,0,2647,865,865,"output = 2", 1, 2, 0);
	trans[0][1377]	= settr(1376,0,1378,866,0,"((input==18))", 1, 2, 0);
	trans[0][1378]	= settr(1377,0,1379,867,867,"fsm_state = 21", 1, 2, 0);
	trans[0][1379]	= settr(1378,0,2647,868,868,"output = 2", 1, 2, 0);
	trans[0][1380]	= settr(1379,0,1381,869,0,"((input==22))", 1, 2, 0);
	trans[0][1381]	= settr(1380,0,1382,870,870,"fsm_state = 21", 1, 2, 0);
	trans[0][1382]	= settr(1381,0,2647,871,871,"output = 2", 1, 2, 0);
	trans[0][1383]	= settr(1382,0,1384,872,0,"((input==27))", 1, 2, 0);
	trans[0][1384]	= settr(1383,0,17,873,873,"fsm_state = 20", 1, 2, 0);
	trans[0][1385]	= settr(1384,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1386]	= settr(1385,0,1387,874,0,"((input==25))", 1, 2, 0);
	trans[0][1387]	= settr(1386,0,1388,875,875,"fsm_state = 19", 1, 2, 0);
	trans[0][1388]	= settr(1387,0,2647,876,876,"output = 13", 1, 2, 0);
	trans[0][1389]	= settr(1388,0,17,2,0,"else", 0, 2, 0);
	trans[0][1390]	= settr(1389,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1393]	= settr(1392,0,1486,877,0,"((fsm_state==20))", 1, 2, 0);
	T = trans[0][1486] = settr(1485,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1485,0,1394,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1485,0,1397,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1485,0,1400,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1485,0,1403,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1485,0,1406,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1485,0,1409,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1485,0,1412,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1485,0,1415,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1485,0,1418,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1485,0,1421,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1485,0,1424,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1485,0,1427,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1485,0,1484,0,0,"IF", 0, 2, 0);
	trans[0][1394]	= settr(1393,0,1395,878,0,"((input==26))", 1, 2, 0);
	trans[0][1395]	= settr(1394,0,1396,879,879,"fsm_state = 40", 1, 2, 0);
	trans[0][1396]	= settr(1395,0,2647,880,880,"output = 10", 1, 2, 0);
	trans[0][1487]	= settr(1486,0,2647,1,0,".(goto)", 0, 2, 0);
	trans[0][1397]	= settr(1396,0,1398,881,0,"((input==21))", 1, 2, 0);
	trans[0][1398]	= settr(1397,0,1399,882,882,"fsm_state = 40", 1, 2, 0);
	trans[0][1399]	= settr(1398,0,2647,883,883,"output = 10", 1, 2, 0);
	trans[0][1400]	= settr(1399,0,1401,884,0,"((input==23))", 1, 2, 0);
	trans[0][1401]	= settr(1400,0,1402,885,885,"fsm_state = 40", 1, 2, 0);
	trans[0][1402]	= settr(1401,0,2647,886,886,"output = 10", 1, 2, 0);
	trans[0][1403]	= settr(1402,0,1404,887,0,"((input==19))", 1, 2, 0);
	trans[0][1404]	= settr(1403,0,17,888,888,"fsm_state = 38", 1, 2, 0);
	trans[0][1405]	= settr(1404,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1406]	= settr(1405,0,1407,889,0,"((input==24))", 1, 2, 0);
	trans[0][1407]	= settr(1406,0,1408,890,890,"fsm_state = 20", 1, 2, 0);
	trans[0][1408]	= settr(1407,0,2647,891,891,"output = 13", 1, 2, 0);
	trans[0][1409]	= settr(1408,0,1410,892,0,"((input==28))", 1, 2, 0);
	trans[0][1410]	= settr(1409,0,1411,893,893,"fsm_state = 20", 1, 2, 0);
	trans[0][1411]	= settr(1410,0,2647,894,894,"output = 2", 1, 2, 0);
	trans[0][1412]	= settr(1411,0,1413,895,0,"((input==17))", 1, 2, 0);
	trans[0][1413]	= settr(1412,0,1414,896,896,"fsm_state = 20", 1, 2, 0);
	trans[0][1414]	= settr(1413,0,2647,897,897,"output = 2", 1, 2, 0);
	trans[0][1415]	= settr(1414,0,1416,898,0,"((input==27))", 1, 2, 0);
	trans[0][1416]	= settr(1415,0,1417,899,899,"fsm_state = 20", 1, 2, 0);
	trans[0][1417]	= settr(1416,0,2647,900,900,"output = 13", 1, 2, 0);
	trans[0][1418]	= settr(1417,0,1419,901,0,"((input==18))", 1, 2, 0);
	trans[0][1419]	= settr(1418,0,1420,902,902,"fsm_state = 20", 1, 2, 0);
	trans[0][1420]	= settr(1419,0,2647,903,903,"output = 2", 1, 2, 0);
	trans[0][1421]	= settr(1420,0,1422,904,0,"((input==22))", 1, 2, 0);
	trans[0][1422]	= settr(1421,0,1423,905,905,"fsm_state = 20", 1, 2, 0);
	trans[0][1423]	= settr(1422,0,2647,906,906,"output = 2", 1, 2, 0);
	trans[0][1424]	= settr(1423,0,1425,907,0,"((input==25))", 1, 2, 0);
	trans[0][1425]	= settr(1424,0,17,908,908,"fsm_state = 11", 1, 2, 0);
	trans[0][1426]	= settr(1425,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1427]	= settr(1426,0,1428,909,0,"((input==20))", 1, 2, 0);
	trans[0][1428]	= settr(1427,0,1429,910,910,"fsm_state = 10", 1, 2, 0);
	trans[0][1429]	= settr(1428,0,1430,911,911,"output = 3", 1, 2, 0);
	trans[0][1430]	= settr(1429,0,1454,912,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][1454] = settr(1453,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1453,0,1447,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][1447]	= settr(1446,32,1452,913,913,"D_STEP14", 1, 2, 0);
	T = trans[0][1452] = settr(1451,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1451,0,1448,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1451,0,1450,0,0,"IF", 0, 2, 0);
	trans[0][1448]	= settr(1447,0,1,914,0,"((dealt==0))", 1, 2, 0);
	trans[0][1449]	= settr(1448,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][1453]	= settr(1452,0,1455,1,0,".(goto)", 0, 2, 0);
	trans[0][1450]	= settr(1449,0,1451,2,0,"else", 0, 2, 0);
	trans[0][1451]	= settr(1450,0,1455,1,0,"(1)", 0, 2, 0);
	trans[0][1455]	= settr(1454,0,1456,915,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][1456]	= settr(1455,0,1457,916,916,"output = 4", 1, 2, 0);
	trans[0][1457]	= settr(1456,0,1481,917,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][1481] = settr(1480,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1480,0,1474,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][1474]	= settr(1473,32,1479,918,918,"D_STEP14", 1, 2, 0);
	T = trans[0][1479] = settr(1478,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1478,0,1475,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1478,0,1477,0,0,"IF", 0, 2, 0);
	trans[0][1475]	= settr(1474,0,1,919,0,"((dealt==0))", 1, 2, 0);
	trans[0][1476]	= settr(1475,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][1480]	= settr(1479,0,1482,1,0,".(goto)", 0, 2, 0);
	trans[0][1477]	= settr(1476,0,1478,2,0,"else", 0, 2, 0);
	trans[0][1478]	= settr(1477,0,1482,1,0,"(1)", 0, 2, 0);
	trans[0][1482]	= settr(1481,0,1483,920,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][1483]	= settr(1482,0,2647,921,921,"output = 12", 1, 2, 0);
	trans[0][1484]	= settr(1483,0,17,2,0,"else", 0, 2, 0);
	trans[0][1485]	= settr(1484,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1488]	= settr(1487,0,1581,922,0,"((fsm_state==19))", 1, 2, 0);
	T = trans[0][1581] = settr(1580,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1580,0,1489,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1580,0,1492,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1580,0,1495,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1580,0,1498,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1580,0,1501,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1580,0,1504,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1580,0,1507,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1580,0,1510,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1580,0,1513,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1580,0,1516,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1580,0,1519,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1580,0,1576,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1580,0,1579,0,0,"IF", 0, 2, 0);
	trans[0][1489]	= settr(1488,0,1490,923,0,"((input==26))", 1, 2, 0);
	trans[0][1490]	= settr(1489,0,1491,924,924,"fsm_state = 42", 1, 2, 0);
	trans[0][1491]	= settr(1490,0,2647,925,925,"output = 10", 1, 2, 0);
	trans[0][1582]	= settr(1581,0,2647,1,0,".(goto)", 0, 2, 0);
	trans[0][1492]	= settr(1491,0,1493,926,0,"((input==21))", 1, 2, 0);
	trans[0][1493]	= settr(1492,0,1494,927,927,"fsm_state = 42", 1, 2, 0);
	trans[0][1494]	= settr(1493,0,2647,928,928,"output = 10", 1, 2, 0);
	trans[0][1495]	= settr(1494,0,1496,929,0,"((input==23))", 1, 2, 0);
	trans[0][1496]	= settr(1495,0,1497,930,930,"fsm_state = 42", 1, 2, 0);
	trans[0][1497]	= settr(1496,0,2647,931,931,"output = 10", 1, 2, 0);
	trans[0][1498]	= settr(1497,0,1499,932,0,"((input==19))", 1, 2, 0);
	trans[0][1499]	= settr(1498,0,17,933,933,"fsm_state = 36", 1, 2, 0);
	trans[0][1500]	= settr(1499,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1501]	= settr(1500,0,1502,934,0,"((input==18))", 1, 2, 0);
	trans[0][1502]	= settr(1501,0,1503,935,935,"fsm_state = 21", 1, 2, 0);
	trans[0][1503]	= settr(1502,0,2647,936,936,"output = 13", 1, 2, 0);
	trans[0][1504]	= settr(1503,0,1505,937,0,"((input==24))", 1, 2, 0);
	trans[0][1505]	= settr(1504,0,17,938,938,"fsm_state = 19", 1, 2, 0);
	trans[0][1506]	= settr(1505,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1507]	= settr(1506,0,1508,939,0,"((input==28))", 1, 2, 0);
	trans[0][1508]	= settr(1507,0,1509,940,940,"fsm_state = 19", 1, 2, 0);
	trans[0][1509]	= settr(1508,0,2647,941,941,"output = 13", 1, 2, 0);
	trans[0][1510]	= settr(1509,0,1511,942,0,"((input==25))", 1, 2, 0);
	trans[0][1511]	= settr(1510,0,1512,943,943,"fsm_state = 19", 1, 2, 0);
	trans[0][1512]	= settr(1511,0,2647,944,944,"output = 15", 1, 2, 0);
	trans[0][1513]	= settr(1512,0,1514,945,0,"((input==17))", 1, 2, 0);
	trans[0][1514]	= settr(1513,0,1515,946,946,"fsm_state = 19", 1, 2, 0);
	trans[0][1515]	= settr(1514,0,2647,947,947,"output = 13", 1, 2, 0);
	trans[0][1516]	= settr(1515,0,1517,948,0,"((input==22))", 1, 2, 0);
	trans[0][1517]	= settr(1516,0,1518,949,949,"fsm_state = 19", 1, 2, 0);
	trans[0][1518]	= settr(1517,0,2647,950,950,"output = 13", 1, 2, 0);
	trans[0][1519]	= settr(1518,0,1520,951,0,"((input==20))", 1, 2, 0);
	trans[0][1520]	= settr(1519,0,1521,952,952,"fsm_state = 18", 1, 2, 0);
	trans[0][1521]	= settr(1520,0,1522,953,953,"output = 3", 1, 2, 0);
	trans[0][1522]	= settr(1521,0,1546,954,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][1546] = settr(1545,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1545,0,1539,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][1539]	= settr(1538,32,1544,955,955,"D_STEP14", 1, 2, 0);
	T = trans[0][1544] = settr(1543,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1543,0,1540,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1543,0,1542,0,0,"IF", 0, 2, 0);
	trans[0][1540]	= settr(1539,0,1,956,0,"((dealt==0))", 1, 2, 0);
	trans[0][1541]	= settr(1540,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][1545]	= settr(1544,0,1547,1,0,".(goto)", 0, 2, 0);
	trans[0][1542]	= settr(1541,0,1543,2,0,"else", 0, 2, 0);
	trans[0][1543]	= settr(1542,0,1547,1,0,"(1)", 0, 2, 0);
	trans[0][1547]	= settr(1546,0,1548,957,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][1548]	= settr(1547,0,1549,958,958,"output = 4", 1, 2, 0);
	trans[0][1549]	= settr(1548,0,1573,959,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][1573] = settr(1572,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1572,0,1566,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][1566]	= settr(1565,32,1571,960,960,"D_STEP14", 1, 2, 0);
	T = trans[0][1571] = settr(1570,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1570,0,1567,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1570,0,1569,0,0,"IF", 0, 2, 0);
	trans[0][1567]	= settr(1566,0,1,961,0,"((dealt==0))", 1, 2, 0);
	trans[0][1568]	= settr(1567,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][1572]	= settr(1571,0,1574,1,0,".(goto)", 0, 2, 0);
	trans[0][1569]	= settr(1568,0,1570,2,0,"else", 0, 2, 0);
	trans[0][1570]	= settr(1569,0,1574,1,0,"(1)", 0, 2, 0);
	trans[0][1574]	= settr(1573,0,1575,962,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][1575]	= settr(1574,0,2647,963,963,"output = 12", 1, 2, 0);
	trans[0][1576]	= settr(1575,0,1577,964,0,"((input==27))", 1, 2, 0);
	trans[0][1577]	= settr(1576,0,17,965,965,"fsm_state = 17", 1, 2, 0);
	trans[0][1578]	= settr(1577,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1579]	= settr(1578,0,17,2,0,"else", 0, 2, 0);
	trans[0][1580]	= settr(1579,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1583]	= settr(1582,0,1622,966,0,"((fsm_state==18))", 1, 2, 0);
	T = trans[0][1622] = settr(1621,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1621,0,1584,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1621,0,1587,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1621,0,1590,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1621,0,1593,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1621,0,1596,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1621,0,1599,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1621,0,1602,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1621,0,1605,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1621,0,1608,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1621,0,1611,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1621,0,1614,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1621,0,1617,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1621,0,1620,0,0,"IF", 0, 2, 0);
	trans[0][1584]	= settr(1583,0,1585,967,0,"((input==26))", 1, 2, 0);
	trans[0][1585]	= settr(1584,0,1586,968,968,"fsm_state = 42", 1, 2, 0);
	trans[0][1586]	= settr(1585,0,2647,969,969,"output = 10", 1, 2, 0);
	trans[0][1623]	= settr(1622,0,2647,1,0,".(goto)", 0, 2, 0);
	trans[0][1587]	= settr(1586,0,1588,970,0,"((input==21))", 1, 2, 0);
	trans[0][1588]	= settr(1587,0,1589,971,971,"fsm_state = 42", 1, 2, 0);
	trans[0][1589]	= settr(1588,0,2647,972,972,"output = 10", 1, 2, 0);
	trans[0][1590]	= settr(1589,0,1591,973,0,"((input==23))", 1, 2, 0);
	trans[0][1591]	= settr(1590,0,1592,974,974,"fsm_state = 42", 1, 2, 0);
	trans[0][1592]	= settr(1591,0,2647,975,975,"output = 10", 1, 2, 0);
	trans[0][1593]	= settr(1592,0,1594,976,0,"((input==19))", 1, 2, 0);
	trans[0][1594]	= settr(1593,0,17,977,977,"fsm_state = 32", 1, 2, 0);
	trans[0][1595]	= settr(1594,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1596]	= settr(1595,0,1597,978,0,"((input==18))", 1, 2, 0);
	trans[0][1597]	= settr(1596,0,1598,979,979,"fsm_state = 22", 1, 2, 0);
	trans[0][1598]	= settr(1597,0,2647,980,980,"output = 13", 1, 2, 0);
	trans[0][1599]	= settr(1598,0,1600,981,0,"((input==24))", 1, 2, 0);
	trans[0][1600]	= settr(1599,0,1601,982,982,"fsm_state = 18", 1, 2, 0);
	trans[0][1601]	= settr(1600,0,2647,983,983,"output = 11", 1, 2, 0);
	trans[0][1602]	= settr(1601,0,1603,984,0,"((input==20))", 1, 2, 0);
	trans[0][1603]	= settr(1602,0,17,985,985,"fsm_state = 18", 1, 2, 0);
	trans[0][1604]	= settr(1603,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1605]	= settr(1604,0,1606,986,0,"((input==28))", 1, 2, 0);
	trans[0][1606]	= settr(1605,0,1607,987,987,"fsm_state = 18", 1, 2, 0);
	trans[0][1607]	= settr(1606,0,2647,988,988,"output = 13", 1, 2, 0);
	trans[0][1608]	= settr(1607,0,1609,989,0,"((input==25))", 1, 2, 0);
	trans[0][1609]	= settr(1608,0,1610,990,990,"fsm_state = 18", 1, 2, 0);
	trans[0][1610]	= settr(1609,0,2647,991,991,"output = 15", 1, 2, 0);
	trans[0][1611]	= settr(1610,0,1612,992,0,"((input==17))", 1, 2, 0);
	trans[0][1612]	= settr(1611,0,1613,993,993,"fsm_state = 18", 1, 2, 0);
	trans[0][1613]	= settr(1612,0,2647,994,994,"output = 13", 1, 2, 0);
	trans[0][1614]	= settr(1613,0,1615,995,0,"((input==22))", 1, 2, 0);
	trans[0][1615]	= settr(1614,0,1616,996,996,"fsm_state = 18", 1, 2, 0);
	trans[0][1616]	= settr(1615,0,2647,997,997,"output = 13", 1, 2, 0);
	trans[0][1617]	= settr(1616,0,1618,998,0,"((input==27))", 1, 2, 0);
	trans[0][1618]	= settr(1617,0,1619,999,999,"fsm_state = 9", 1, 2, 0);
	trans[0][1619]	= settr(1618,0,2647,1000,1000,"output = 14", 1, 2, 0);
	trans[0][1620]	= settr(1619,0,17,2,0,"else", 0, 2, 0);
	trans[0][1621]	= settr(1620,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1624]	= settr(1623,0,1717,1001,0,"((fsm_state==17))", 1, 2, 0);
	T = trans[0][1717] = settr(1716,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1716,0,1625,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1716,0,1628,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1716,0,1631,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1716,0,1634,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1716,0,1637,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1716,0,1640,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1716,0,1643,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1716,0,1646,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1716,0,1649,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1716,0,1652,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1716,0,1655,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1716,0,1658,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1716,0,1715,0,0,"IF", 0, 2, 0);
	trans[0][1625]	= settr(1624,0,1626,1002,0,"((input==26))", 1, 2, 0);
	trans[0][1626]	= settr(1625,0,1627,1003,1003,"fsm_state = 42", 1, 2, 0);
	trans[0][1627]	= settr(1626,0,2647,1004,1004,"output = 10", 1, 2, 0);
	trans[0][1718]	= settr(1717,0,2647,1,0,".(goto)", 0, 2, 0);
	trans[0][1628]	= settr(1627,0,1629,1005,0,"((input==21))", 1, 2, 0);
	trans[0][1629]	= settr(1628,0,1630,1006,1006,"fsm_state = 42", 1, 2, 0);
	trans[0][1630]	= settr(1629,0,2647,1007,1007,"output = 10", 1, 2, 0);
	trans[0][1631]	= settr(1630,0,1632,1008,0,"((input==23))", 1, 2, 0);
	trans[0][1632]	= settr(1631,0,1633,1009,1009,"fsm_state = 42", 1, 2, 0);
	trans[0][1633]	= settr(1632,0,2647,1010,1010,"output = 10", 1, 2, 0);
	trans[0][1634]	= settr(1633,0,1635,1011,0,"((input==19))", 1, 2, 0);
	trans[0][1635]	= settr(1634,0,17,1012,1012,"fsm_state = 36", 1, 2, 0);
	trans[0][1636]	= settr(1635,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1637]	= settr(1636,0,1638,1013,0,"((input==18))", 1, 2, 0);
	trans[0][1638]	= settr(1637,0,17,1014,1014,"fsm_state = 20", 1, 2, 0);
	trans[0][1639]	= settr(1638,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1640]	= settr(1639,0,1641,1015,0,"((input==24))", 1, 2, 0);
	trans[0][1641]	= settr(1640,0,1642,1016,1016,"fsm_state = 17", 1, 2, 0);
	trans[0][1642]	= settr(1641,0,2647,1017,1017,"output = 13", 1, 2, 0);
	trans[0][1643]	= settr(1642,0,1644,1018,0,"((input==28))", 1, 2, 0);
	trans[0][1644]	= settr(1643,0,17,1019,1019,"fsm_state = 17", 1, 2, 0);
	trans[0][1645]	= settr(1644,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1646]	= settr(1645,0,1647,1020,0,"((input==25))", 1, 2, 0);
	trans[0][1647]	= settr(1646,0,1648,1021,1021,"fsm_state = 17", 1, 2, 0);
	trans[0][1648]	= settr(1647,0,2647,1022,1022,"output = 15", 1, 2, 0);
	trans[0][1649]	= settr(1648,0,1650,1023,0,"((input==17))", 1, 2, 0);
	trans[0][1650]	= settr(1649,0,17,1024,1024,"fsm_state = 17", 1, 2, 0);
	trans[0][1651]	= settr(1650,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1652]	= settr(1651,0,1653,1025,0,"((input==27))", 1, 2, 0);
	trans[0][1653]	= settr(1652,0,1654,1026,1026,"fsm_state = 17", 1, 2, 0);
	trans[0][1654]	= settr(1653,0,2647,1027,1027,"output = 13", 1, 2, 0);
	trans[0][1655]	= settr(1654,0,1656,1028,0,"((input==22))", 1, 2, 0);
	trans[0][1656]	= settr(1655,0,17,1029,1029,"fsm_state = 17", 1, 2, 0);
	trans[0][1657]	= settr(1656,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1658]	= settr(1657,0,1659,1030,0,"((input==20))", 1, 2, 0);
	trans[0][1659]	= settr(1658,0,1660,1031,1031,"fsm_state = 9", 1, 2, 0);
	trans[0][1660]	= settr(1659,0,1661,1032,1032,"output = 3", 1, 2, 0);
	trans[0][1661]	= settr(1660,0,1685,1033,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][1685] = settr(1684,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1684,0,1678,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][1678]	= settr(1677,32,1683,1034,1034,"D_STEP14", 1, 2, 0);
	T = trans[0][1683] = settr(1682,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1682,0,1679,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1682,0,1681,0,0,"IF", 0, 2, 0);
	trans[0][1679]	= settr(1678,0,1,1035,0,"((dealt==0))", 1, 2, 0);
	trans[0][1680]	= settr(1679,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][1684]	= settr(1683,0,1686,1,0,".(goto)", 0, 2, 0);
	trans[0][1681]	= settr(1680,0,1682,2,0,"else", 0, 2, 0);
	trans[0][1682]	= settr(1681,0,1686,1,0,"(1)", 0, 2, 0);
	trans[0][1686]	= settr(1685,0,1687,1036,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][1687]	= settr(1686,0,1688,1037,1037,"output = 4", 1, 2, 0);
	trans[0][1688]	= settr(1687,0,1712,1038,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][1712] = settr(1711,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1711,0,1705,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][1705]	= settr(1704,32,1710,1039,1039,"D_STEP14", 1, 2, 0);
	T = trans[0][1710] = settr(1709,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1709,0,1706,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1709,0,1708,0,0,"IF", 0, 2, 0);
	trans[0][1706]	= settr(1705,0,1,1040,0,"((dealt==0))", 1, 2, 0);
	trans[0][1707]	= settr(1706,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][1711]	= settr(1710,0,1713,1,0,".(goto)", 0, 2, 0);
	trans[0][1708]	= settr(1707,0,1709,2,0,"else", 0, 2, 0);
	trans[0][1709]	= settr(1708,0,1713,1,0,"(1)", 0, 2, 0);
	trans[0][1713]	= settr(1712,0,1714,1041,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][1714]	= settr(1713,0,2647,1042,1042,"output = 12", 1, 2, 0);
	trans[0][1715]	= settr(1714,0,17,2,0,"else", 0, 2, 0);
	trans[0][1716]	= settr(1715,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1719]	= settr(1718,0,1785,1043,0,"((fsm_state==16))", 1, 2, 0);
	T = trans[0][1785] = settr(1784,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1784,0,1720,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1784,0,1723,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1784,0,1726,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1784,0,1729,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1784,0,1732,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1784,0,1735,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1784,0,1738,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1784,0,1741,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1784,0,1744,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1784,0,1747,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1784,0,1750,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1784,0,1753,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1784,0,1783,0,0,"IF", 0, 2, 0);
	trans[0][1720]	= settr(1719,0,1721,1044,0,"((input==26))", 1, 2, 0);
	trans[0][1721]	= settr(1720,0,1722,1045,1045,"fsm_state = 42", 1, 2, 0);
	trans[0][1722]	= settr(1721,0,2647,1046,1046,"output = 10", 1, 2, 0);
	trans[0][1786]	= settr(1785,0,2647,1,0,".(goto)", 0, 2, 0);
	trans[0][1723]	= settr(1722,0,1724,1047,0,"((input==21))", 1, 2, 0);
	trans[0][1724]	= settr(1723,0,1725,1048,1048,"fsm_state = 42", 1, 2, 0);
	trans[0][1725]	= settr(1724,0,2647,1049,1049,"output = 10", 1, 2, 0);
	trans[0][1726]	= settr(1725,0,1727,1050,0,"((input==23))", 1, 2, 0);
	trans[0][1727]	= settr(1726,0,1728,1051,1051,"fsm_state = 42", 1, 2, 0);
	trans[0][1728]	= settr(1727,0,2647,1052,1052,"output = 10", 1, 2, 0);
	trans[0][1729]	= settr(1728,0,1730,1053,0,"((input==19))", 1, 2, 0);
	trans[0][1730]	= settr(1729,0,17,1054,1054,"fsm_state = 36", 1, 2, 0);
	trans[0][1731]	= settr(1730,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1732]	= settr(1731,0,1733,1055,0,"((input==18))", 1, 2, 0);
	trans[0][1733]	= settr(1732,0,17,1056,1056,"fsm_state = 23", 1, 2, 0);
	trans[0][1734]	= settr(1733,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1735]	= settr(1734,0,1736,1057,0,"((input==24))", 1, 2, 0);
	trans[0][1736]	= settr(1735,0,1737,1058,1058,"fsm_state = 16", 1, 2, 0);
	trans[0][1737]	= settr(1736,0,2647,1059,1059,"output = 13", 1, 2, 0);
	trans[0][1738]	= settr(1737,0,1739,1060,0,"((input==28))", 1, 2, 0);
	trans[0][1739]	= settr(1738,0,17,1061,1061,"fsm_state = 16", 1, 2, 0);
	trans[0][1740]	= settr(1739,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1741]	= settr(1740,0,1742,1062,0,"((input==25))", 1, 2, 0);
	trans[0][1742]	= settr(1741,0,1743,1063,1063,"fsm_state = 16", 1, 2, 0);
	trans[0][1743]	= settr(1742,0,2647,1064,1064,"output = 15", 1, 2, 0);
	trans[0][1744]	= settr(1743,0,1745,1065,0,"((input==17))", 1, 2, 0);
	trans[0][1745]	= settr(1744,0,17,1066,1066,"fsm_state = 16", 1, 2, 0);
	trans[0][1746]	= settr(1745,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1747]	= settr(1746,0,1748,1067,0,"((input==27))", 1, 2, 0);
	trans[0][1748]	= settr(1747,0,1749,1068,1068,"fsm_state = 16", 1, 2, 0);
	trans[0][1749]	= settr(1748,0,2647,1069,1069,"output = 13", 1, 2, 0);
	trans[0][1750]	= settr(1749,0,1751,1070,0,"((input==22))", 1, 2, 0);
	trans[0][1751]	= settr(1750,0,17,1071,1071,"fsm_state = 16", 1, 2, 0);
	trans[0][1752]	= settr(1751,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1753]	= settr(1752,0,1754,1072,0,"((input==20))", 1, 2, 0);
	trans[0][1754]	= settr(1753,0,1755,1073,1073,"fsm_state = 9", 1, 2, 0);
	trans[0][1755]	= settr(1754,0,1756,1074,1074,"output = 3", 1, 2, 0);
	trans[0][1756]	= settr(1755,0,1780,1075,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][1780] = settr(1779,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1779,0,1773,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][1773]	= settr(1772,32,1778,1076,1076,"D_STEP14", 1, 2, 0);
	T = trans[0][1778] = settr(1777,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1777,0,1774,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1777,0,1776,0,0,"IF", 0, 2, 0);
	trans[0][1774]	= settr(1773,0,1,1077,0,"((dealt==0))", 1, 2, 0);
	trans[0][1775]	= settr(1774,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][1779]	= settr(1778,0,1781,1,0,".(goto)", 0, 2, 0);
	trans[0][1776]	= settr(1775,0,1777,2,0,"else", 0, 2, 0);
	trans[0][1777]	= settr(1776,0,1781,1,0,"(1)", 0, 2, 0);
	trans[0][1781]	= settr(1780,0,1782,1078,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][1782]	= settr(1781,0,2647,1079,1079,"output = 4", 1, 2, 0);
	trans[0][1783]	= settr(1782,0,17,2,0,"else", 0, 2, 0);
	trans[0][1784]	= settr(1783,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1787]	= settr(1786,0,1826,1080,0,"((fsm_state==15))", 1, 2, 0);
	T = trans[0][1826] = settr(1825,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1825,0,1788,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1825,0,1791,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1825,0,1794,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1825,0,1797,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1825,0,1800,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1825,0,1803,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1825,0,1806,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1825,0,1809,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1825,0,1812,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1825,0,1815,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1825,0,1818,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1825,0,1821,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1825,0,1824,0,0,"IF", 0, 2, 0);
	trans[0][1788]	= settr(1787,0,1789,1081,0,"((input==20))", 1, 2, 0);
	trans[0][1789]	= settr(1788,0,1790,1082,1082,"fsm_state = 42", 1, 2, 0);
	trans[0][1790]	= settr(1789,0,2647,1083,1083,"output = 10", 1, 2, 0);
	trans[0][1827]	= settr(1826,0,2647,1,0,".(goto)", 0, 2, 0);
	trans[0][1791]	= settr(1790,0,1792,1084,0,"((input==19))", 1, 2, 0);
	trans[0][1792]	= settr(1791,0,1793,1085,1085,"fsm_state = 42", 1, 2, 0);
	trans[0][1793]	= settr(1792,0,2647,1086,1086,"output = 10", 1, 2, 0);
	trans[0][1794]	= settr(1793,0,1795,1087,0,"((input==26))", 1, 2, 0);
	trans[0][1795]	= settr(1794,0,1796,1088,1088,"fsm_state = 42", 1, 2, 0);
	trans[0][1796]	= settr(1795,0,2647,1089,1089,"output = 10", 1, 2, 0);
	trans[0][1797]	= settr(1796,0,1798,1090,0,"((input==21))", 1, 2, 0);
	trans[0][1798]	= settr(1797,0,1799,1091,1091,"fsm_state = 16", 1, 2, 0);
	trans[0][1799]	= settr(1798,0,2647,1092,1092,"output = 5", 1, 2, 0);
	trans[0][1800]	= settr(1799,0,1801,1093,0,"((input==24))", 1, 2, 0);
	trans[0][1801]	= settr(1800,0,1802,1094,1094,"fsm_state = 15", 1, 2, 0);
	trans[0][1802]	= settr(1801,0,2647,1095,1095,"output = 13", 1, 2, 0);
	trans[0][1803]	= settr(1802,0,1804,1096,0,"((input==28))", 1, 2, 0);
	trans[0][1804]	= settr(1803,0,17,1097,1097,"fsm_state = 15", 1, 2, 0);
	trans[0][1805]	= settr(1804,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1806]	= settr(1805,0,1807,1098,0,"((input==25))", 1, 2, 0);
	trans[0][1807]	= settr(1806,0,1808,1099,1099,"fsm_state = 15", 1, 2, 0);
	trans[0][1808]	= settr(1807,0,2647,1100,1100,"output = 15", 1, 2, 0);
	trans[0][1809]	= settr(1808,0,1810,1101,0,"((input==17))", 1, 2, 0);
	trans[0][1810]	= settr(1809,0,17,1102,1102,"fsm_state = 15", 1, 2, 0);
	trans[0][1811]	= settr(1810,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1812]	= settr(1811,0,1813,1103,0,"((input==27))", 1, 2, 0);
	trans[0][1813]	= settr(1812,0,1814,1104,1104,"fsm_state = 15", 1, 2, 0);
	trans[0][1814]	= settr(1813,0,2647,1105,1105,"output = 13", 1, 2, 0);
	trans[0][1815]	= settr(1814,0,1816,1106,0,"((input==22))", 1, 2, 0);
	trans[0][1816]	= settr(1815,0,17,1107,1107,"fsm_state = 15", 1, 2, 0);
	trans[0][1817]	= settr(1816,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1818]	= settr(1817,0,1819,1108,0,"((input==23))", 1, 2, 0);
	trans[0][1819]	= settr(1818,0,1820,1109,1109,"fsm_state = 15", 1, 2, 0);
	trans[0][1820]	= settr(1819,0,2647,1110,1110,"output = 8", 1, 2, 0);
	trans[0][1821]	= settr(1820,0,1822,1111,0,"((input==18))", 1, 2, 0);
	trans[0][1822]	= settr(1821,0,17,1112,1112,"fsm_state = 13", 1, 2, 0);
	trans[0][1823]	= settr(1822,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1824]	= settr(1823,0,17,2,0,"else", 0, 2, 0);
	trans[0][1825]	= settr(1824,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1828]	= settr(1827,0,1894,1113,0,"((fsm_state==14))", 1, 2, 0);
	T = trans[0][1894] = settr(1893,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1893,0,1829,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1893,0,1832,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1893,0,1835,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1893,0,1838,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1893,0,1841,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1893,0,1844,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1893,0,1847,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1893,0,1850,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1893,0,1853,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1893,0,1856,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1893,0,1859,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1893,0,1862,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1893,0,1892,0,0,"IF", 0, 2, 0);
	trans[0][1829]	= settr(1828,0,1830,1114,0,"((input==26))", 1, 2, 0);
	trans[0][1830]	= settr(1829,0,1831,1115,1115,"fsm_state = 42", 1, 2, 0);
	trans[0][1831]	= settr(1830,0,2647,1116,1116,"output = 10", 1, 2, 0);
	trans[0][1895]	= settr(1894,0,2647,1,0,".(goto)", 0, 2, 0);
	trans[0][1832]	= settr(1831,0,1833,1117,0,"((input==21))", 1, 2, 0);
	trans[0][1833]	= settr(1832,0,1834,1118,1118,"fsm_state = 42", 1, 2, 0);
	trans[0][1834]	= settr(1833,0,2647,1119,1119,"output = 10", 1, 2, 0);
	trans[0][1835]	= settr(1834,0,1836,1120,0,"((input==23))", 1, 2, 0);
	trans[0][1836]	= settr(1835,0,1837,1121,1121,"fsm_state = 42", 1, 2, 0);
	trans[0][1837]	= settr(1836,0,2647,1122,1122,"output = 10", 1, 2, 0);
	trans[0][1838]	= settr(1837,0,1839,1123,0,"((input==19))", 1, 2, 0);
	trans[0][1839]	= settr(1838,0,17,1124,1124,"fsm_state = 36", 1, 2, 0);
	trans[0][1840]	= settr(1839,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1841]	= settr(1840,0,1842,1125,0,"((input==22))", 1, 2, 0);
	trans[0][1842]	= settr(1841,0,17,1126,1126,"fsm_state = 17", 1, 2, 0);
	trans[0][1843]	= settr(1842,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1844]	= settr(1843,0,1845,1127,0,"((input==24))", 1, 2, 0);
	trans[0][1845]	= settr(1844,0,1846,1128,1128,"fsm_state = 14", 1, 2, 0);
	trans[0][1846]	= settr(1845,0,2647,1129,1129,"output = 13", 1, 2, 0);
	trans[0][1847]	= settr(1846,0,1848,1130,0,"((input==25))", 1, 2, 0);
	trans[0][1848]	= settr(1847,0,1849,1131,1131,"fsm_state = 14", 1, 2, 0);
	trans[0][1849]	= settr(1848,0,2647,1132,1132,"output = 15", 1, 2, 0);
	trans[0][1850]	= settr(1849,0,1851,1133,0,"((input==27))", 1, 2, 0);
	trans[0][1851]	= settr(1850,0,1852,1134,1134,"fsm_state = 14", 1, 2, 0);
	trans[0][1852]	= settr(1851,0,2647,1135,1135,"output = 13", 1, 2, 0);
	trans[0][1853]	= settr(1852,0,1854,1136,0,"((input==28))", 1, 2, 0);
	trans[0][1854]	= settr(1853,0,17,1137,1137,"fsm_state = 11", 1, 2, 0);
	trans[0][1855]	= settr(1854,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1856]	= settr(1855,0,1857,1138,0,"((input==18))", 1, 2, 0);
	trans[0][1857]	= settr(1856,0,17,1139,1139,"fsm_state = 8", 1, 2, 0);
	trans[0][1858]	= settr(1857,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1859]	= settr(1858,0,1860,1140,0,"((input==17))", 1, 2, 0);
	trans[0][1860]	= settr(1859,0,17,1141,1141,"fsm_state = 7", 1, 2, 0);
	trans[0][1861]	= settr(1860,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1862]	= settr(1861,0,1863,1142,0,"((input==20))", 1, 2, 0);
	trans[0][1863]	= settr(1862,0,1864,1143,1143,"fsm_state = 6", 1, 2, 0);
	trans[0][1864]	= settr(1863,0,1865,1144,1144,"output = 3", 1, 2, 0);
	trans[0][1865]	= settr(1864,0,1889,1145,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][1889] = settr(1888,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1888,0,1882,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][1882]	= settr(1881,32,1887,1146,1146,"D_STEP14", 1, 2, 0);
	T = trans[0][1887] = settr(1886,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1886,0,1883,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1886,0,1885,0,0,"IF", 0, 2, 0);
	trans[0][1883]	= settr(1882,0,1,1147,0,"((dealt==0))", 1, 2, 0);
	trans[0][1884]	= settr(1883,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][1888]	= settr(1887,0,1890,1,0,".(goto)", 0, 2, 0);
	trans[0][1885]	= settr(1884,0,1886,2,0,"else", 0, 2, 0);
	trans[0][1886]	= settr(1885,0,1890,1,0,"(1)", 0, 2, 0);
	trans[0][1890]	= settr(1889,0,1891,1148,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][1891]	= settr(1890,0,2647,1149,1149,"output = 4", 1, 2, 0);
	trans[0][1892]	= settr(1891,0,17,2,0,"else", 0, 2, 0);
	trans[0][1893]	= settr(1892,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1896]	= settr(1895,0,1935,1150,0,"((fsm_state==13))", 1, 2, 0);
	T = trans[0][1935] = settr(1934,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1934,0,1897,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1934,0,1900,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1934,0,1903,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1934,0,1906,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1934,0,1909,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1934,0,1912,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1934,0,1915,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1934,0,1918,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1934,0,1921,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1934,0,1924,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1934,0,1927,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1934,0,1930,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1934,0,1933,0,0,"IF", 0, 2, 0);
	trans[0][1897]	= settr(1896,0,1898,1151,0,"((input==20))", 1, 2, 0);
	trans[0][1898]	= settr(1897,0,1899,1152,1152,"fsm_state = 40", 1, 2, 0);
	trans[0][1899]	= settr(1898,0,2647,1153,1153,"output = 10", 1, 2, 0);
	trans[0][1936]	= settr(1935,0,2647,1,0,".(goto)", 0, 2, 0);
	trans[0][1900]	= settr(1899,0,1901,1154,0,"((input==19))", 1, 2, 0);
	trans[0][1901]	= settr(1900,0,1902,1155,1155,"fsm_state = 40", 1, 2, 0);
	trans[0][1902]	= settr(1901,0,2647,1156,1156,"output = 10", 1, 2, 0);
	trans[0][1903]	= settr(1902,0,1904,1157,0,"((input==26))", 1, 2, 0);
	trans[0][1904]	= settr(1903,0,1905,1158,1158,"fsm_state = 40", 1, 2, 0);
	trans[0][1905]	= settr(1904,0,2647,1159,1159,"output = 10", 1, 2, 0);
	trans[0][1906]	= settr(1905,0,1907,1160,0,"((input==25))", 1, 2, 0);
	trans[0][1907]	= settr(1906,0,1908,1161,1161,"fsm_state = 24", 1, 2, 0);
	trans[0][1908]	= settr(1907,0,2647,1162,1162,"output = 9", 1, 2, 0);
	trans[0][1909]	= settr(1908,0,1910,1163,0,"((input==24))", 1, 2, 0);
	trans[0][1910]	= settr(1909,0,1911,1164,1164,"fsm_state = 13", 1, 2, 0);
	trans[0][1911]	= settr(1910,0,2647,1165,1165,"output = 13", 1, 2, 0);
	trans[0][1912]	= settr(1911,0,1913,1166,0,"((input==28))", 1, 2, 0);
	trans[0][1913]	= settr(1912,0,1914,1167,1167,"fsm_state = 13", 1, 2, 0);
	trans[0][1914]	= settr(1913,0,2647,1168,1168,"output = 2", 1, 2, 0);
	trans[0][1915]	= settr(1914,0,1916,1169,0,"((input==17))", 1, 2, 0);
	trans[0][1916]	= settr(1915,0,1917,1170,1170,"fsm_state = 13", 1, 2, 0);
	trans[0][1917]	= settr(1916,0,2647,1171,1171,"output = 2", 1, 2, 0);
	trans[0][1918]	= settr(1917,0,1919,1172,0,"((input==27))", 1, 2, 0);
	trans[0][1919]	= settr(1918,0,1920,1173,1173,"fsm_state = 13", 1, 2, 0);
	trans[0][1920]	= settr(1919,0,2647,1174,1174,"output = 13", 1, 2, 0);
	trans[0][1921]	= settr(1920,0,1922,1175,0,"((input==18))", 1, 2, 0);
	trans[0][1922]	= settr(1921,0,1923,1176,1176,"fsm_state = 13", 1, 2, 0);
	trans[0][1923]	= settr(1922,0,2647,1177,1177,"output = 2", 1, 2, 0);
	trans[0][1924]	= settr(1923,0,1925,1178,0,"((input==22))", 1, 2, 0);
	trans[0][1925]	= settr(1924,0,1926,1179,1179,"fsm_state = 13", 1, 2, 0);
	trans[0][1926]	= settr(1925,0,2647,1180,1180,"output = 2", 1, 2, 0);
	trans[0][1927]	= settr(1926,0,1928,1181,0,"((input==23))", 1, 2, 0);
	trans[0][1928]	= settr(1927,0,1929,1182,1182,"fsm_state = 13", 1, 2, 0);
	trans[0][1929]	= settr(1928,0,2647,1183,1183,"output = 8", 1, 2, 0);
	trans[0][1930]	= settr(1929,0,1931,1184,0,"((input==21))", 1, 2, 0);
	trans[0][1931]	= settr(1930,0,1932,1185,1185,"fsm_state = 5", 1, 2, 0);
	trans[0][1932]	= settr(1931,0,2647,1186,1186,"output = 5", 1, 2, 0);
	trans[0][1933]	= settr(1932,0,17,2,0,"else", 0, 2, 0);
	trans[0][1934]	= settr(1933,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1937]	= settr(1936,0,1976,1187,0,"((fsm_state==12))", 1, 2, 0);
	T = trans[0][1976] = settr(1975,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1975,0,1938,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1975,0,1941,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1975,0,1944,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1975,0,1947,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1975,0,1950,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1975,0,1953,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1975,0,1956,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1975,0,1959,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1975,0,1962,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1975,0,1965,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1975,0,1968,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1975,0,1971,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1975,0,1974,0,0,"IF", 0, 2, 0);
	trans[0][1938]	= settr(1937,0,1939,1188,0,"((input==20))", 1, 2, 0);
	trans[0][1939]	= settr(1938,0,1940,1189,1189,"fsm_state = 42", 1, 2, 0);
	trans[0][1940]	= settr(1939,0,2647,1190,1190,"output = 10", 1, 2, 0);
	trans[0][1977]	= settr(1976,0,2647,1,0,".(goto)", 0, 2, 0);
	trans[0][1941]	= settr(1940,0,1942,1191,0,"((input==19))", 1, 2, 0);
	trans[0][1942]	= settr(1941,0,1943,1192,1192,"fsm_state = 42", 1, 2, 0);
	trans[0][1943]	= settr(1942,0,2647,1193,1193,"output = 10", 1, 2, 0);
	trans[0][1944]	= settr(1943,0,1945,1194,0,"((input==26))", 1, 2, 0);
	trans[0][1945]	= settr(1944,0,1946,1195,1195,"fsm_state = 42", 1, 2, 0);
	trans[0][1946]	= settr(1945,0,2647,1196,1196,"output = 10", 1, 2, 0);
	trans[0][1947]	= settr(1946,0,1948,1197,0,"((input==18))", 1, 2, 0);
	trans[0][1948]	= settr(1947,0,1949,1198,1198,"fsm_state = 13", 1, 2, 0);
	trans[0][1949]	= settr(1948,0,2647,1199,1199,"output = 6", 1, 2, 0);
	trans[0][1950]	= settr(1949,0,1951,1200,0,"((input==24))", 1, 2, 0);
	trans[0][1951]	= settr(1950,0,1952,1201,1201,"fsm_state = 12", 1, 2, 0);
	trans[0][1952]	= settr(1951,0,2647,1202,1202,"output = 13", 1, 2, 0);
	trans[0][1953]	= settr(1952,0,1954,1203,0,"((input==28))", 1, 2, 0);
	trans[0][1954]	= settr(1953,0,1955,1204,1204,"fsm_state = 12", 1, 2, 0);
	trans[0][1955]	= settr(1954,0,2647,1205,1205,"output = 1", 1, 2, 0);
	trans[0][1956]	= settr(1955,0,1957,1206,0,"((input==25))", 1, 2, 0);
	trans[0][1957]	= settr(1956,0,1958,1207,1207,"fsm_state = 12", 1, 2, 0);
	trans[0][1958]	= settr(1957,0,2647,1208,1208,"output = 15", 1, 2, 0);
	trans[0][1959]	= settr(1958,0,1960,1209,0,"((input==17))", 1, 2, 0);
	trans[0][1960]	= settr(1959,0,17,1210,1210,"fsm_state = 12", 1, 2, 0);
	trans[0][1961]	= settr(1960,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1962]	= settr(1961,0,1963,1211,0,"((input==27))", 1, 2, 0);
	trans[0][1963]	= settr(1962,0,1964,1212,1212,"fsm_state = 12", 1, 2, 0);
	trans[0][1964]	= settr(1963,0,2647,1213,1213,"output = 13", 1, 2, 0);
	trans[0][1965]	= settr(1964,0,1966,1214,0,"((input==22))", 1, 2, 0);
	trans[0][1966]	= settr(1965,0,17,1215,1215,"fsm_state = 12", 1, 2, 0);
	trans[0][1967]	= settr(1966,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1968]	= settr(1967,0,1969,1216,0,"((input==23))", 1, 2, 0);
	trans[0][1969]	= settr(1968,0,1970,1217,1217,"fsm_state = 12", 1, 2, 0);
	trans[0][1970]	= settr(1969,0,2647,1218,1218,"output = 8", 1, 2, 0);
	trans[0][1971]	= settr(1970,0,1972,1219,0,"((input==21))", 1, 2, 0);
	trans[0][1972]	= settr(1971,0,1973,1220,1220,"fsm_state = 7", 1, 2, 0);
	trans[0][1973]	= settr(1972,0,2647,1221,1221,"output = 5", 1, 2, 0);
	trans[0][1974]	= settr(1973,0,17,2,0,"else", 0, 2, 0);
	trans[0][1975]	= settr(1974,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1978]	= settr(1977,0,2071,1222,0,"((fsm_state==11))", 1, 2, 0);
	T = trans[0][2071] = settr(2070,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2070,0,1979,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2070,0,1982,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2070,0,1985,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2070,0,1988,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2070,0,1991,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2070,0,1994,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2070,0,1997,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2070,0,2000,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2070,0,2003,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2070,0,2006,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2070,0,2009,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2070,0,2066,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2070,0,2069,0,0,"IF", 0, 2, 0);
	trans[0][1979]	= settr(1978,0,1980,1223,0,"((input==26))", 1, 2, 0);
	trans[0][1980]	= settr(1979,0,1981,1224,1224,"fsm_state = 42", 1, 2, 0);
	trans[0][1981]	= settr(1980,0,2647,1225,1225,"output = 10", 1, 2, 0);
	trans[0][2072]	= settr(2071,0,2647,1,0,".(goto)", 0, 2, 0);
	trans[0][1982]	= settr(1981,0,1983,1226,0,"((input==21))", 1, 2, 0);
	trans[0][1983]	= settr(1982,0,1984,1227,1227,"fsm_state = 42", 1, 2, 0);
	trans[0][1984]	= settr(1983,0,2647,1228,1228,"output = 10", 1, 2, 0);
	trans[0][1985]	= settr(1984,0,1986,1229,0,"((input==23))", 1, 2, 0);
	trans[0][1986]	= settr(1985,0,1987,1230,1230,"fsm_state = 42", 1, 2, 0);
	trans[0][1987]	= settr(1986,0,2647,1231,1231,"output = 10", 1, 2, 0);
	trans[0][1988]	= settr(1987,0,1989,1232,0,"((input==19))", 1, 2, 0);
	trans[0][1989]	= settr(1988,0,17,1233,1233,"fsm_state = 36", 1, 2, 0);
	trans[0][1990]	= settr(1989,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1991]	= settr(1990,0,1992,1234,0,"((input==22))", 1, 2, 0);
	trans[0][1992]	= settr(1991,0,17,1235,1235,"fsm_state = 17", 1, 2, 0);
	trans[0][1993]	= settr(1992,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1994]	= settr(1993,0,1995,1236,0,"((input==24))", 1, 2, 0);
	trans[0][1995]	= settr(1994,0,1996,1237,1237,"fsm_state = 11", 1, 2, 0);
	trans[0][1996]	= settr(1995,0,2647,1238,1238,"output = 13", 1, 2, 0);
	trans[0][1997]	= settr(1996,0,1998,1239,0,"((input==28))", 1, 2, 0);
	trans[0][1998]	= settr(1997,0,17,1240,1240,"fsm_state = 11", 1, 2, 0);
	trans[0][1999]	= settr(1998,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2000]	= settr(1999,0,2001,1241,0,"((input==25))", 1, 2, 0);
	trans[0][2001]	= settr(2000,0,2002,1242,1242,"fsm_state = 11", 1, 2, 0);
	trans[0][2002]	= settr(2001,0,2647,1243,1243,"output = 15", 1, 2, 0);
	trans[0][2003]	= settr(2002,0,2004,1244,0,"((input==27))", 1, 2, 0);
	trans[0][2004]	= settr(2003,0,2005,1245,1245,"fsm_state = 11", 1, 2, 0);
	trans[0][2005]	= settr(2004,0,2647,1246,1246,"output = 13", 1, 2, 0);
	trans[0][2006]	= settr(2005,0,2007,1247,0,"((input==18))", 1, 2, 0);
	trans[0][2007]	= settr(2006,0,17,1248,1248,"fsm_state = 8", 1, 2, 0);
	trans[0][2008]	= settr(2007,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2009]	= settr(2008,0,2010,1249,0,"((input==20))", 1, 2, 0);
	trans[0][2010]	= settr(2009,0,2011,1250,1250,"fsm_state = 6", 1, 2, 0);
	trans[0][2011]	= settr(2010,0,2012,1251,1251,"output = 3", 1, 2, 0);
	trans[0][2012]	= settr(2011,0,2036,1252,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2036] = settr(2035,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2035,0,2029,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2029]	= settr(2028,32,2034,1253,1253,"D_STEP14", 1, 2, 0);
	T = trans[0][2034] = settr(2033,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2033,0,2030,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2033,0,2032,0,0,"IF", 0, 2, 0);
	trans[0][2030]	= settr(2029,0,1,1254,0,"((dealt==0))", 1, 2, 0);
	trans[0][2031]	= settr(2030,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2035]	= settr(2034,0,2037,1,0,".(goto)", 0, 2, 0);
	trans[0][2032]	= settr(2031,0,2033,2,0,"else", 0, 2, 0);
	trans[0][2033]	= settr(2032,0,2037,1,0,"(1)", 0, 2, 0);
	trans[0][2037]	= settr(2036,0,2038,1255,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2038]	= settr(2037,0,2039,1256,1256,"output = 4", 1, 2, 0);
	trans[0][2039]	= settr(2038,0,2063,1257,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2063] = settr(2062,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2062,0,2056,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2056]	= settr(2055,32,2061,1258,1258,"D_STEP14", 1, 2, 0);
	T = trans[0][2061] = settr(2060,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2060,0,2057,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2060,0,2059,0,0,"IF", 0, 2, 0);
	trans[0][2057]	= settr(2056,0,1,1259,0,"((dealt==0))", 1, 2, 0);
	trans[0][2058]	= settr(2057,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2062]	= settr(2061,0,2064,1,0,".(goto)", 0, 2, 0);
	trans[0][2059]	= settr(2058,0,2060,2,0,"else", 0, 2, 0);
	trans[0][2060]	= settr(2059,0,2064,1,0,"(1)", 0, 2, 0);
	trans[0][2064]	= settr(2063,0,2065,1260,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2065]	= settr(2064,0,2647,1261,1261,"output = 12", 1, 2, 0);
	trans[0][2066]	= settr(2065,0,2067,1262,0,"((input==17))", 1, 2, 0);
	trans[0][2067]	= settr(2066,0,17,1263,1263,"fsm_state = 4", 1, 2, 0);
	trans[0][2068]	= settr(2067,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2069]	= settr(2068,0,17,2,0,"else", 0, 2, 0);
	trans[0][2070]	= settr(2069,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2073]	= settr(2072,0,2112,1264,0,"((fsm_state==10))", 1, 2, 0);
	T = trans[0][2112] = settr(2111,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2111,0,2074,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2111,0,2077,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2111,0,2080,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2111,0,2083,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2111,0,2086,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2111,0,2089,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2111,0,2092,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2111,0,2095,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2111,0,2098,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2111,0,2101,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2111,0,2104,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2111,0,2107,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2111,0,2110,0,0,"IF", 0, 2, 0);
	trans[0][2074]	= settr(2073,0,2075,1265,0,"((input==26))", 1, 2, 0);
	trans[0][2075]	= settr(2074,0,2076,1266,1266,"fsm_state = 40", 1, 2, 0);
	trans[0][2076]	= settr(2075,0,2647,1267,1267,"output = 10", 1, 2, 0);
	trans[0][2113]	= settr(2112,0,2647,1,0,".(goto)", 0, 2, 0);
	trans[0][2077]	= settr(2076,0,2078,1268,0,"((input==21))", 1, 2, 0);
	trans[0][2078]	= settr(2077,0,2079,1269,1269,"fsm_state = 40", 1, 2, 0);
	trans[0][2079]	= settr(2078,0,2647,1270,1270,"output = 10", 1, 2, 0);
	trans[0][2080]	= settr(2079,0,2081,1271,0,"((input==23))", 1, 2, 0);
	trans[0][2081]	= settr(2080,0,2082,1272,1272,"fsm_state = 40", 1, 2, 0);
	trans[0][2082]	= settr(2081,0,2647,1273,1273,"output = 10", 1, 2, 0);
	trans[0][2083]	= settr(2082,0,2084,1274,0,"((input==19))", 1, 2, 0);
	trans[0][2084]	= settr(2083,0,17,1275,1275,"fsm_state = 30", 1, 2, 0);
	trans[0][2085]	= settr(2084,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2086]	= settr(2085,0,2087,1276,0,"((input==24))", 1, 2, 0);
	trans[0][2087]	= settr(2086,0,2088,1277,1277,"fsm_state = 10", 1, 2, 0);
	trans[0][2088]	= settr(2087,0,2647,1278,1278,"output = 13", 1, 2, 0);
	trans[0][2089]	= settr(2088,0,2090,1279,0,"((input==20))", 1, 2, 0);
	trans[0][2090]	= settr(2089,0,17,1280,1280,"fsm_state = 10", 1, 2, 0);
	trans[0][2091]	= settr(2090,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2092]	= settr(2091,0,2093,1281,0,"((input==28))", 1, 2, 0);
	trans[0][2093]	= settr(2092,0,2094,1282,1282,"fsm_state = 10", 1, 2, 0);
	trans[0][2094]	= settr(2093,0,2647,1283,1283,"output = 2", 1, 2, 0);
	trans[0][2095]	= settr(2094,0,2096,1284,0,"((input==17))", 1, 2, 0);
	trans[0][2096]	= settr(2095,0,2097,1285,1285,"fsm_state = 10", 1, 2, 0);
	trans[0][2097]	= settr(2096,0,2647,1286,1286,"output = 2", 1, 2, 0);
	trans[0][2098]	= settr(2097,0,2099,1287,0,"((input==27))", 1, 2, 0);
	trans[0][2099]	= settr(2098,0,2100,1288,1288,"fsm_state = 10", 1, 2, 0);
	trans[0][2100]	= settr(2099,0,2647,1289,1289,"output = 13", 1, 2, 0);
	trans[0][2101]	= settr(2100,0,2102,1290,0,"((input==18))", 1, 2, 0);
	trans[0][2102]	= settr(2101,0,2103,1291,1291,"fsm_state = 10", 1, 2, 0);
	trans[0][2103]	= settr(2102,0,2647,1292,1292,"output = 2", 1, 2, 0);
	trans[0][2104]	= settr(2103,0,2105,1293,0,"((input==22))", 1, 2, 0);
	trans[0][2105]	= settr(2104,0,2106,1294,1294,"fsm_state = 10", 1, 2, 0);
	trans[0][2106]	= settr(2105,0,2647,1295,1295,"output = 2", 1, 2, 0);
	trans[0][2107]	= settr(2106,0,2108,1296,0,"((input==25))", 1, 2, 0);
	trans[0][2108]	= settr(2107,0,2109,1297,1297,"fsm_state = 6", 1, 2, 0);
	trans[0][2109]	= settr(2108,0,2647,1298,1298,"output = 9", 1, 2, 0);
	trans[0][2110]	= settr(2109,0,17,2,0,"else", 0, 2, 0);
	trans[0][2111]	= settr(2110,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2114]	= settr(2113,0,2153,1299,0,"((fsm_state==9))", 1, 2, 0);
	T = trans[0][2153] = settr(2152,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2152,0,2115,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2152,0,2118,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2152,0,2121,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2152,0,2124,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2152,0,2127,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2152,0,2130,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2152,0,2133,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2152,0,2136,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2152,0,2139,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2152,0,2142,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2152,0,2145,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2152,0,2148,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2152,0,2151,0,0,"IF", 0, 2, 0);
	trans[0][2115]	= settr(2114,0,2116,1300,0,"((input==26))", 1, 2, 0);
	trans[0][2116]	= settr(2115,0,2117,1301,1301,"fsm_state = 42", 1, 2, 0);
	trans[0][2117]	= settr(2116,0,2647,1302,1302,"output = 10", 1, 2, 0);
	trans[0][2154]	= settr(2153,0,2647,1,0,".(goto)", 0, 2, 0);
	trans[0][2118]	= settr(2117,0,2119,1303,0,"((input==21))", 1, 2, 0);
	trans[0][2119]	= settr(2118,0,2120,1304,1304,"fsm_state = 42", 1, 2, 0);
	trans[0][2120]	= settr(2119,0,2647,1305,1305,"output = 10", 1, 2, 0);
	trans[0][2121]	= settr(2120,0,2122,1306,0,"((input==23))", 1, 2, 0);
	trans[0][2122]	= settr(2121,0,2123,1307,1307,"fsm_state = 42", 1, 2, 0);
	trans[0][2123]	= settr(2122,0,2647,1308,1308,"output = 10", 1, 2, 0);
	trans[0][2124]	= settr(2123,0,2125,1309,0,"((input==19))", 1, 2, 0);
	trans[0][2125]	= settr(2124,0,17,1310,1310,"fsm_state = 26", 1, 2, 0);
	trans[0][2126]	= settr(2125,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2127]	= settr(2126,0,2128,1311,0,"((input==18))", 1, 2, 0);
	trans[0][2128]	= settr(2127,0,17,1312,1312,"fsm_state = 10", 1, 2, 0);
	trans[0][2129]	= settr(2128,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2130]	= settr(2129,0,2131,1313,0,"((input==24))", 1, 2, 0);
	trans[0][2131]	= settr(2130,0,2132,1314,1314,"fsm_state = 9", 1, 2, 0);
	trans[0][2132]	= settr(2131,0,2647,1315,1315,"output = 13", 1, 2, 0);
	trans[0][2133]	= settr(2132,0,2134,1316,0,"((input==20))", 1, 2, 0);
	trans[0][2134]	= settr(2133,0,17,1317,1317,"fsm_state = 9", 1, 2, 0);
	trans[0][2135]	= settr(2134,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2136]	= settr(2135,0,2137,1318,0,"((input==28))", 1, 2, 0);
	trans[0][2137]	= settr(2136,0,17,1319,1319,"fsm_state = 9", 1, 2, 0);
	trans[0][2138]	= settr(2137,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2139]	= settr(2138,0,2140,1320,0,"((input==25))", 1, 2, 0);
	trans[0][2140]	= settr(2139,0,2141,1321,1321,"fsm_state = 9", 1, 2, 0);
	trans[0][2141]	= settr(2140,0,2647,1322,1322,"output = 15", 1, 2, 0);
	trans[0][2142]	= settr(2141,0,2143,1323,0,"((input==17))", 1, 2, 0);
	trans[0][2143]	= settr(2142,0,17,1324,1324,"fsm_state = 9", 1, 2, 0);
	trans[0][2144]	= settr(2143,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2145]	= settr(2144,0,2146,1325,0,"((input==27))", 1, 2, 0);
	trans[0][2146]	= settr(2145,0,2147,1326,1326,"fsm_state = 9", 1, 2, 0);
	trans[0][2147]	= settr(2146,0,2647,1327,1327,"output = 13", 1, 2, 0);
	trans[0][2148]	= settr(2147,0,2149,1328,0,"((input==22))", 1, 2, 0);
	trans[0][2149]	= settr(2148,0,17,1329,1329,"fsm_state = 9", 1, 2, 0);
	trans[0][2150]	= settr(2149,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2151]	= settr(2150,0,17,2,0,"else", 0, 2, 0);
	trans[0][2152]	= settr(2151,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2155]	= settr(2154,0,2248,1330,0,"((fsm_state==8))", 1, 2, 0);
	T = trans[0][2248] = settr(2247,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2247,0,2156,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2247,0,2159,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2247,0,2162,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2247,0,2165,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2247,0,2168,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2247,0,2171,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2247,0,2174,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2247,0,2177,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2247,0,2180,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2247,0,2183,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2247,0,2186,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2247,0,2189,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2247,0,2246,0,0,"IF", 0, 2, 0);
	trans[0][2156]	= settr(2155,0,2157,1331,0,"((input==26))", 1, 2, 0);
	trans[0][2157]	= settr(2156,0,2158,1332,1332,"fsm_state = 40", 1, 2, 0);
	trans[0][2158]	= settr(2157,0,2647,1333,1333,"output = 10", 1, 2, 0);
	trans[0][2249]	= settr(2248,0,2647,1,0,".(goto)", 0, 2, 0);
	trans[0][2159]	= settr(2158,0,2160,1334,0,"((input==21))", 1, 2, 0);
	trans[0][2160]	= settr(2159,0,2161,1335,1335,"fsm_state = 40", 1, 2, 0);
	trans[0][2161]	= settr(2160,0,2647,1336,1336,"output = 10", 1, 2, 0);
	trans[0][2162]	= settr(2161,0,2163,1337,0,"((input==23))", 1, 2, 0);
	trans[0][2163]	= settr(2162,0,2164,1338,1338,"fsm_state = 40", 1, 2, 0);
	trans[0][2164]	= settr(2163,0,2647,1339,1339,"output = 10", 1, 2, 0);
	trans[0][2165]	= settr(2164,0,2166,1340,0,"((input==19))", 1, 2, 0);
	trans[0][2166]	= settr(2165,0,17,1341,1341,"fsm_state = 38", 1, 2, 0);
	trans[0][2167]	= settr(2166,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2168]	= settr(2167,0,2169,1342,0,"((input==24))", 1, 2, 0);
	trans[0][2169]	= settr(2168,0,2170,1343,1343,"fsm_state = 8", 1, 2, 0);
	trans[0][2170]	= settr(2169,0,2647,1344,1344,"output = 13", 1, 2, 0);
	trans[0][2171]	= settr(2170,0,2172,1345,0,"((input==28))", 1, 2, 0);
	trans[0][2172]	= settr(2171,0,2173,1346,1346,"fsm_state = 8", 1, 2, 0);
	trans[0][2173]	= settr(2172,0,2647,1347,1347,"output = 2", 1, 2, 0);
	trans[0][2174]	= settr(2173,0,2175,1348,0,"((input==17))", 1, 2, 0);
	trans[0][2175]	= settr(2174,0,2176,1349,1349,"fsm_state = 8", 1, 2, 0);
	trans[0][2176]	= settr(2175,0,2647,1350,1350,"output = 2", 1, 2, 0);
	trans[0][2177]	= settr(2176,0,2178,1351,0,"((input==27))", 1, 2, 0);
	trans[0][2178]	= settr(2177,0,2179,1352,1352,"fsm_state = 8", 1, 2, 0);
	trans[0][2179]	= settr(2178,0,2647,1353,1353,"output = 13", 1, 2, 0);
	trans[0][2180]	= settr(2179,0,2181,1354,0,"((input==18))", 1, 2, 0);
	trans[0][2181]	= settr(2180,0,2182,1355,1355,"fsm_state = 8", 1, 2, 0);
	trans[0][2182]	= settr(2181,0,2647,1356,1356,"output = 2", 1, 2, 0);
	trans[0][2183]	= settr(2182,0,2184,1357,0,"((input==22))", 1, 2, 0);
	trans[0][2184]	= settr(2183,0,2185,1358,1358,"fsm_state = 8", 1, 2, 0);
	trans[0][2185]	= settr(2184,0,2647,1359,1359,"output = 2", 1, 2, 0);
	trans[0][2186]	= settr(2185,0,2187,1360,0,"((input==25))", 1, 2, 0);
	trans[0][2187]	= settr(2186,0,17,1361,1361,"fsm_state = 4", 1, 2, 0);
	trans[0][2188]	= settr(2187,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2189]	= settr(2188,0,2190,1362,0,"((input==20))", 1, 2, 0);
	trans[0][2190]	= settr(2189,0,2191,1363,1363,"fsm_state = 3", 1, 2, 0);
	trans[0][2191]	= settr(2190,0,2192,1364,1364,"output = 3", 1, 2, 0);
	trans[0][2192]	= settr(2191,0,2216,1365,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2216] = settr(2215,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2215,0,2209,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2209]	= settr(2208,32,2214,1366,1366,"D_STEP14", 1, 2, 0);
	T = trans[0][2214] = settr(2213,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2213,0,2210,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2213,0,2212,0,0,"IF", 0, 2, 0);
	trans[0][2210]	= settr(2209,0,1,1367,0,"((dealt==0))", 1, 2, 0);
	trans[0][2211]	= settr(2210,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2215]	= settr(2214,0,2217,1,0,".(goto)", 0, 2, 0);
	trans[0][2212]	= settr(2211,0,2213,2,0,"else", 0, 2, 0);
	trans[0][2213]	= settr(2212,0,2217,1,0,"(1)", 0, 2, 0);
	trans[0][2217]	= settr(2216,0,2218,1368,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2218]	= settr(2217,0,2219,1369,1369,"output = 4", 1, 2, 0);
	trans[0][2219]	= settr(2218,0,2243,1370,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2243] = settr(2242,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2242,0,2236,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2236]	= settr(2235,32,2241,1371,1371,"D_STEP14", 1, 2, 0);
	T = trans[0][2241] = settr(2240,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2240,0,2237,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2240,0,2239,0,0,"IF", 0, 2, 0);
	trans[0][2237]	= settr(2236,0,1,1372,0,"((dealt==0))", 1, 2, 0);
	trans[0][2238]	= settr(2237,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2242]	= settr(2241,0,2244,1,0,".(goto)", 0, 2, 0);
	trans[0][2239]	= settr(2238,0,2240,2,0,"else", 0, 2, 0);
	trans[0][2240]	= settr(2239,0,2244,1,0,"(1)", 0, 2, 0);
	trans[0][2244]	= settr(2243,0,2245,1373,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2245]	= settr(2244,0,2647,1374,1374,"output = 12", 1, 2, 0);
	trans[0][2246]	= settr(2245,0,17,2,0,"else", 0, 2, 0);
	trans[0][2247]	= settr(2246,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2250]	= settr(2249,0,2316,1375,0,"((fsm_state==7))", 1, 2, 0);
	T = trans[0][2316] = settr(2315,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2315,0,2251,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2315,0,2254,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2315,0,2257,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2315,0,2260,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2315,0,2263,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2315,0,2266,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2315,0,2269,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2315,0,2272,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2315,0,2275,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2315,0,2278,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2315,0,2281,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2315,0,2284,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2315,0,2314,0,0,"IF", 0, 2, 0);
	trans[0][2251]	= settr(2250,0,2252,1376,0,"((input==26))", 1, 2, 0);
	trans[0][2252]	= settr(2251,0,2253,1377,1377,"fsm_state = 42", 1, 2, 0);
	trans[0][2253]	= settr(2252,0,2647,1378,1378,"output = 10", 1, 2, 0);
	trans[0][2317]	= settr(2316,0,2647,1,0,".(goto)", 0, 2, 0);
	trans[0][2254]	= settr(2253,0,2255,1379,0,"((input==21))", 1, 2, 0);
	trans[0][2255]	= settr(2254,0,2256,1380,1380,"fsm_state = 42", 1, 2, 0);
	trans[0][2256]	= settr(2255,0,2647,1381,1381,"output = 10", 1, 2, 0);
	trans[0][2257]	= settr(2256,0,2258,1382,0,"((input==23))", 1, 2, 0);
	trans[0][2258]	= settr(2257,0,2259,1383,1383,"fsm_state = 42", 1, 2, 0);
	trans[0][2259]	= settr(2258,0,2647,1384,1384,"output = 10", 1, 2, 0);
	trans[0][2260]	= settr(2259,0,2261,1385,0,"((input==19))", 1, 2, 0);
	trans[0][2261]	= settr(2260,0,17,1386,1386,"fsm_state = 36", 1, 2, 0);
	trans[0][2262]	= settr(2261,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2263]	= settr(2262,0,2264,1387,0,"((input==18))", 1, 2, 0);
	trans[0][2264]	= settr(2263,0,17,1388,1388,"fsm_state = 8", 1, 2, 0);
	trans[0][2265]	= settr(2264,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2266]	= settr(2265,0,2267,1389,0,"((input==24))", 1, 2, 0);
	trans[0][2267]	= settr(2266,0,2268,1390,1390,"fsm_state = 7", 1, 2, 0);
	trans[0][2268]	= settr(2267,0,2647,1391,1391,"output = 13", 1, 2, 0);
	trans[0][2269]	= settr(2268,0,2270,1392,0,"((input==25))", 1, 2, 0);
	trans[0][2270]	= settr(2269,0,2271,1393,1393,"fsm_state = 7", 1, 2, 0);
	trans[0][2271]	= settr(2270,0,2647,1394,1394,"output = 15", 1, 2, 0);
	trans[0][2272]	= settr(2271,0,2273,1395,0,"((input==17))", 1, 2, 0);
	trans[0][2273]	= settr(2272,0,17,1396,1396,"fsm_state = 7", 1, 2, 0);
	trans[0][2274]	= settr(2273,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2275]	= settr(2274,0,2276,1397,0,"((input==27))", 1, 2, 0);
	trans[0][2276]	= settr(2275,0,2277,1398,1398,"fsm_state = 7", 1, 2, 0);
	trans[0][2277]	= settr(2276,0,2647,1399,1399,"output = 13", 1, 2, 0);
	trans[0][2278]	= settr(2277,0,2279,1400,0,"((input==22))", 1, 2, 0);
	trans[0][2279]	= settr(2278,0,17,1401,1401,"fsm_state = 7", 1, 2, 0);
	trans[0][2280]	= settr(2279,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2281]	= settr(2280,0,2282,1402,0,"((input==28))", 1, 2, 0);
	trans[0][2282]	= settr(2281,0,17,1403,1403,"fsm_state = 4", 1, 2, 0);
	trans[0][2283]	= settr(2282,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2284]	= settr(2283,0,2285,1404,0,"((input==20))", 1, 2, 0);
	trans[0][2285]	= settr(2284,0,2286,1405,1405,"fsm_state = 2", 1, 2, 0);
	trans[0][2286]	= settr(2285,0,2287,1406,1406,"output = 3", 1, 2, 0);
	trans[0][2287]	= settr(2286,0,2311,1407,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2311] = settr(2310,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2310,0,2304,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2304]	= settr(2303,32,2309,1408,1408,"D_STEP14", 1, 2, 0);
	T = trans[0][2309] = settr(2308,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2308,0,2305,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2308,0,2307,0,0,"IF", 0, 2, 0);
	trans[0][2305]	= settr(2304,0,1,1409,0,"((dealt==0))", 1, 2, 0);
	trans[0][2306]	= settr(2305,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2310]	= settr(2309,0,2312,1,0,".(goto)", 0, 2, 0);
	trans[0][2307]	= settr(2306,0,2308,2,0,"else", 0, 2, 0);
	trans[0][2308]	= settr(2307,0,2312,1,0,"(1)", 0, 2, 0);
	trans[0][2312]	= settr(2311,0,2313,1410,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2313]	= settr(2312,0,2647,1411,1411,"output = 4", 1, 2, 0);
	trans[0][2314]	= settr(2313,0,17,2,0,"else", 0, 2, 0);
	trans[0][2315]	= settr(2314,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2318]	= settr(2317,0,2357,1412,0,"((fsm_state==6))", 1, 2, 0);
	T = trans[0][2357] = settr(2356,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2356,0,2319,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2356,0,2322,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2356,0,2325,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2356,0,2328,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2356,0,2331,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2356,0,2334,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2356,0,2337,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2356,0,2340,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2356,0,2343,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2356,0,2346,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2356,0,2349,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2356,0,2352,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2356,0,2355,0,0,"IF", 0, 2, 0);
	trans[0][2319]	= settr(2318,0,2320,1413,0,"((input==26))", 1, 2, 0);
	trans[0][2320]	= settr(2319,0,2321,1414,1414,"fsm_state = 42", 1, 2, 0);
	trans[0][2321]	= settr(2320,0,2647,1415,1415,"output = 10", 1, 2, 0);
	trans[0][2358]	= settr(2357,0,2647,1,0,".(goto)", 0, 2, 0);
	trans[0][2322]	= settr(2321,0,2323,1416,0,"((input==21))", 1, 2, 0);
	trans[0][2323]	= settr(2322,0,2324,1417,1417,"fsm_state = 42", 1, 2, 0);
	trans[0][2324]	= settr(2323,0,2647,1418,1418,"output = 10", 1, 2, 0);
	trans[0][2325]	= settr(2324,0,2326,1419,0,"((input==23))", 1, 2, 0);
	trans[0][2326]	= settr(2325,0,2327,1420,1420,"fsm_state = 42", 1, 2, 0);
	trans[0][2327]	= settr(2326,0,2647,1421,1421,"output = 10", 1, 2, 0);
	trans[0][2328]	= settr(2327,0,2329,1422,0,"((input==19))", 1, 2, 0);
	trans[0][2329]	= settr(2328,0,17,1423,1423,"fsm_state = 24", 1, 2, 0);
	trans[0][2330]	= settr(2329,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2331]	= settr(2330,0,2332,1424,0,"((input==24))", 1, 2, 0);
	trans[0][2332]	= settr(2331,0,2333,1425,1425,"fsm_state = 6", 1, 2, 0);
	trans[0][2333]	= settr(2332,0,2647,1426,1426,"output = 13", 1, 2, 0);
	trans[0][2334]	= settr(2333,0,2335,1427,0,"((input==20))", 1, 2, 0);
	trans[0][2335]	= settr(2334,0,17,1428,1428,"fsm_state = 6", 1, 2, 0);
	trans[0][2336]	= settr(2335,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2337]	= settr(2336,0,2338,1429,0,"((input==28))", 1, 2, 0);
	trans[0][2338]	= settr(2337,0,2339,1430,1430,"fsm_state = 6", 1, 2, 0);
	trans[0][2339]	= settr(2338,0,2647,1431,1431,"output = 1", 1, 2, 0);
	trans[0][2340]	= settr(2339,0,2341,1432,0,"((input==25))", 1, 2, 0);
	trans[0][2341]	= settr(2340,0,2342,1433,1433,"fsm_state = 6", 1, 2, 0);
	trans[0][2342]	= settr(2341,0,2647,1434,1434,"output = 15", 1, 2, 0);
	trans[0][2343]	= settr(2342,0,2344,1435,0,"((input==27))", 1, 2, 0);
	trans[0][2344]	= settr(2343,0,2345,1436,1436,"fsm_state = 6", 1, 2, 0);
	trans[0][2345]	= settr(2344,0,2647,1437,1437,"output = 13", 1, 2, 0);
	trans[0][2346]	= settr(2345,0,2347,1438,0,"((input==18))", 1, 2, 0);
	trans[0][2347]	= settr(2346,0,2348,1439,1439,"fsm_state = 3", 1, 2, 0);
	trans[0][2348]	= settr(2347,0,2647,1440,1440,"output = 6", 1, 2, 0);
	trans[0][2349]	= settr(2348,0,2350,1441,0,"((input==17))", 1, 2, 0);
	trans[0][2350]	= settr(2349,0,17,1442,1442,"fsm_state = 2", 1, 2, 0);
	trans[0][2351]	= settr(2350,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2352]	= settr(2351,0,2353,1443,0,"((input==22))", 1, 2, 0);
	trans[0][2353]	= settr(2352,0,2354,1444,1444,"fsm_state = 1", 1, 2, 0);
	trans[0][2354]	= settr(2353,0,2647,1445,1445,"output = 6", 1, 2, 0);
	trans[0][2355]	= settr(2354,0,17,2,0,"else", 0, 2, 0);
	trans[0][2356]	= settr(2355,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2359]	= settr(2358,0,2425,1446,0,"((fsm_state==5))", 1, 2, 0);
	T = trans[0][2425] = settr(2424,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2424,0,2360,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2424,0,2363,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2424,0,2366,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2424,0,2369,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2424,0,2372,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2424,0,2375,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2424,0,2378,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2424,0,2381,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2424,0,2384,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2424,0,2387,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2424,0,2390,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2424,0,2393,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2424,0,2423,0,0,"IF", 0, 2, 0);
	trans[0][2360]	= settr(2359,0,2361,1447,0,"((input==26))", 1, 2, 0);
	trans[0][2361]	= settr(2360,0,2362,1448,1448,"fsm_state = 40", 1, 2, 0);
	trans[0][2362]	= settr(2361,0,2647,1449,1449,"output = 10", 1, 2, 0);
	trans[0][2426]	= settr(2425,0,2647,1,0,".(goto)", 0, 2, 0);
	trans[0][2363]	= settr(2362,0,2364,1450,0,"((input==21))", 1, 2, 0);
	trans[0][2364]	= settr(2363,0,2365,1451,1451,"fsm_state = 40", 1, 2, 0);
	trans[0][2365]	= settr(2364,0,2647,1452,1452,"output = 10", 1, 2, 0);
	trans[0][2366]	= settr(2365,0,2367,1453,0,"((input==23))", 1, 2, 0);
	trans[0][2367]	= settr(2366,0,2368,1454,1454,"fsm_state = 40", 1, 2, 0);
	trans[0][2368]	= settr(2367,0,2647,1455,1455,"output = 10", 1, 2, 0);
	trans[0][2369]	= settr(2368,0,2370,1456,0,"((input==19))", 1, 2, 0);
	trans[0][2370]	= settr(2369,0,17,1457,1457,"fsm_state = 38", 1, 2, 0);
	trans[0][2371]	= settr(2370,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2372]	= settr(2371,0,2373,1458,0,"((input==24))", 1, 2, 0);
	trans[0][2373]	= settr(2372,0,2374,1459,1459,"fsm_state = 5", 1, 2, 0);
	trans[0][2374]	= settr(2373,0,2647,1460,1460,"output = 13", 1, 2, 0);
	trans[0][2375]	= settr(2374,0,2376,1461,0,"((input==28))", 1, 2, 0);
	trans[0][2376]	= settr(2375,0,2377,1462,1462,"fsm_state = 5", 1, 2, 0);
	trans[0][2377]	= settr(2376,0,2647,1463,1463,"output = 2", 1, 2, 0);
	trans[0][2378]	= settr(2377,0,2379,1464,0,"((input==17))", 1, 2, 0);
	trans[0][2379]	= settr(2378,0,2380,1465,1465,"fsm_state = 5", 1, 2, 0);
	trans[0][2380]	= settr(2379,0,2647,1466,1466,"output = 2", 1, 2, 0);
	trans[0][2381]	= settr(2380,0,2382,1467,0,"((input==27))", 1, 2, 0);
	trans[0][2382]	= settr(2381,0,2383,1468,1468,"fsm_state = 5", 1, 2, 0);
	trans[0][2383]	= settr(2382,0,2647,1469,1469,"output = 13", 1, 2, 0);
	trans[0][2384]	= settr(2383,0,2385,1470,0,"((input==18))", 1, 2, 0);
	trans[0][2385]	= settr(2384,0,2386,1471,1471,"fsm_state = 5", 1, 2, 0);
	trans[0][2386]	= settr(2385,0,2647,1472,1472,"output = 2", 1, 2, 0);
	trans[0][2387]	= settr(2386,0,2388,1473,0,"((input==22))", 1, 2, 0);
	trans[0][2388]	= settr(2387,0,2389,1474,1474,"fsm_state = 5", 1, 2, 0);
	trans[0][2389]	= settr(2388,0,2647,1475,1475,"output = 2", 1, 2, 0);
	trans[0][2390]	= settr(2389,0,2391,1476,0,"((input==25))", 1, 2, 0);
	trans[0][2391]	= settr(2390,0,17,1477,1477,"fsm_state = 4", 1, 2, 0);
	trans[0][2392]	= settr(2391,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2393]	= settr(2392,0,2394,1478,0,"((input==20))", 1, 2, 0);
	trans[0][2394]	= settr(2393,0,2395,1479,1479,"fsm_state = 3", 1, 2, 0);
	trans[0][2395]	= settr(2394,0,2396,1480,1480,"output = 3", 1, 2, 0);
	trans[0][2396]	= settr(2395,0,2420,1481,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2420] = settr(2419,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2419,0,2413,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2413]	= settr(2412,32,2418,1482,1482,"D_STEP14", 1, 2, 0);
	T = trans[0][2418] = settr(2417,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2417,0,2414,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2417,0,2416,0,0,"IF", 0, 2, 0);
	trans[0][2414]	= settr(2413,0,1,1483,0,"((dealt==0))", 1, 2, 0);
	trans[0][2415]	= settr(2414,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2419]	= settr(2418,0,2421,1,0,".(goto)", 0, 2, 0);
	trans[0][2416]	= settr(2415,0,2417,2,0,"else", 0, 2, 0);
	trans[0][2417]	= settr(2416,0,2421,1,0,"(1)", 0, 2, 0);
	trans[0][2421]	= settr(2420,0,2422,1484,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2422]	= settr(2421,0,2647,1485,1485,"output = 4", 1, 2, 0);
	trans[0][2423]	= settr(2422,0,17,2,0,"else", 0, 2, 0);
	trans[0][2424]	= settr(2423,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2427]	= settr(2426,0,2520,1486,0,"((fsm_state==4))", 1, 2, 0);
	T = trans[0][2520] = settr(2519,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2519,0,2428,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2519,0,2431,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2519,0,2434,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2519,0,2437,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2519,0,2440,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2519,0,2443,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2519,0,2446,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2519,0,2449,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2519,0,2452,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2519,0,2455,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2519,0,2458,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2519,0,2461,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2519,0,2518,0,0,"IF", 0, 2, 0);
	trans[0][2428]	= settr(2427,0,2429,1487,0,"((input==26))", 1, 2, 0);
	trans[0][2429]	= settr(2428,0,2430,1488,1488,"fsm_state = 42", 1, 2, 0);
	trans[0][2430]	= settr(2429,0,2647,1489,1489,"output = 10", 1, 2, 0);
	trans[0][2521]	= settr(2520,0,2647,1,0,".(goto)", 0, 2, 0);
	trans[0][2431]	= settr(2430,0,2432,1490,0,"((input==21))", 1, 2, 0);
	trans[0][2432]	= settr(2431,0,2433,1491,1491,"fsm_state = 42", 1, 2, 0);
	trans[0][2433]	= settr(2432,0,2647,1492,1492,"output = 10", 1, 2, 0);
	trans[0][2434]	= settr(2433,0,2435,1493,0,"((input==23))", 1, 2, 0);
	trans[0][2435]	= settr(2434,0,2436,1494,1494,"fsm_state = 42", 1, 2, 0);
	trans[0][2436]	= settr(2435,0,2647,1495,1495,"output = 10", 1, 2, 0);
	trans[0][2437]	= settr(2436,0,2438,1496,0,"((input==19))", 1, 2, 0);
	trans[0][2438]	= settr(2437,0,17,1497,1497,"fsm_state = 36", 1, 2, 0);
	trans[0][2439]	= settr(2438,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2440]	= settr(2439,0,2441,1498,0,"((input==18))", 1, 2, 0);
	trans[0][2441]	= settr(2440,0,17,1499,1499,"fsm_state = 8", 1, 2, 0);
	trans[0][2442]	= settr(2441,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2443]	= settr(2442,0,2444,1500,0,"((input==24))", 1, 2, 0);
	trans[0][2444]	= settr(2443,0,2445,1501,1501,"fsm_state = 4", 1, 2, 0);
	trans[0][2445]	= settr(2444,0,2647,1502,1502,"output = 13", 1, 2, 0);
	trans[0][2446]	= settr(2445,0,2447,1503,0,"((input==28))", 1, 2, 0);
	trans[0][2447]	= settr(2446,0,17,1504,1504,"fsm_state = 4", 1, 2, 0);
	trans[0][2448]	= settr(2447,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2449]	= settr(2448,0,2450,1505,0,"((input==25))", 1, 2, 0);
	trans[0][2450]	= settr(2449,0,2451,1506,1506,"fsm_state = 4", 1, 2, 0);
	trans[0][2451]	= settr(2450,0,2647,1507,1507,"output = 15", 1, 2, 0);
	trans[0][2452]	= settr(2451,0,2453,1508,0,"((input==17))", 1, 2, 0);
	trans[0][2453]	= settr(2452,0,17,1509,1509,"fsm_state = 4", 1, 2, 0);
	trans[0][2454]	= settr(2453,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2455]	= settr(2454,0,2456,1510,0,"((input==27))", 1, 2, 0);
	trans[0][2456]	= settr(2455,0,2457,1511,1511,"fsm_state = 4", 1, 2, 0);
	trans[0][2457]	= settr(2456,0,2647,1512,1512,"output = 13", 1, 2, 0);
	trans[0][2458]	= settr(2457,0,2459,1513,0,"((input==22))", 1, 2, 0);
	trans[0][2459]	= settr(2458,0,17,1514,1514,"fsm_state = 4", 1, 2, 0);
	trans[0][2460]	= settr(2459,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2461]	= settr(2460,0,2462,1515,0,"((input==20))", 1, 2, 0);
	trans[0][2462]	= settr(2461,0,2463,1516,1516,"fsm_state = 2", 1, 2, 0);
	trans[0][2463]	= settr(2462,0,2464,1517,1517,"output = 3", 1, 2, 0);
	trans[0][2464]	= settr(2463,0,2488,1518,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2488] = settr(2487,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2487,0,2481,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2481]	= settr(2480,32,2486,1519,1519,"D_STEP14", 1, 2, 0);
	T = trans[0][2486] = settr(2485,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2485,0,2482,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2485,0,2484,0,0,"IF", 0, 2, 0);
	trans[0][2482]	= settr(2481,0,1,1520,0,"((dealt==0))", 1, 2, 0);
	trans[0][2483]	= settr(2482,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2487]	= settr(2486,0,2489,1,0,".(goto)", 0, 2, 0);
	trans[0][2484]	= settr(2483,0,2485,2,0,"else", 0, 2, 0);
	trans[0][2485]	= settr(2484,0,2489,1,0,"(1)", 0, 2, 0);
	trans[0][2489]	= settr(2488,0,2490,1521,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2490]	= settr(2489,0,2491,1522,1522,"output = 4", 1, 2, 0);
	trans[0][2491]	= settr(2490,0,2515,1523,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2515] = settr(2514,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2514,0,2508,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2508]	= settr(2507,32,2513,1524,1524,"D_STEP14", 1, 2, 0);
	T = trans[0][2513] = settr(2512,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2512,0,2509,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2512,0,2511,0,0,"IF", 0, 2, 0);
	trans[0][2509]	= settr(2508,0,1,1525,0,"((dealt==0))", 1, 2, 0);
	trans[0][2510]	= settr(2509,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2514]	= settr(2513,0,2516,1,0,".(goto)", 0, 2, 0);
	trans[0][2511]	= settr(2510,0,2512,2,0,"else", 0, 2, 0);
	trans[0][2512]	= settr(2511,0,2516,1,0,"(1)", 0, 2, 0);
	trans[0][2516]	= settr(2515,0,2517,1526,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2517]	= settr(2516,0,2647,1527,1527,"output = 12", 1, 2, 0);
	trans[0][2518]	= settr(2517,0,17,2,0,"else", 0, 2, 0);
	trans[0][2519]	= settr(2518,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2522]	= settr(2521,0,2561,1528,0,"((fsm_state==3))", 1, 2, 0);
	T = trans[0][2561] = settr(2560,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2560,0,2523,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2560,0,2526,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2560,0,2529,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2560,0,2532,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2560,0,2535,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2560,0,2538,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2560,0,2541,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2560,0,2544,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2560,0,2547,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2560,0,2550,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2560,0,2553,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2560,0,2556,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2560,0,2559,0,0,"IF", 0, 2, 0);
	trans[0][2523]	= settr(2522,0,2524,1529,0,"((input==26))", 1, 2, 0);
	trans[0][2524]	= settr(2523,0,2525,1530,1530,"fsm_state = 40", 1, 2, 0);
	trans[0][2525]	= settr(2524,0,2647,1531,1531,"output = 10", 1, 2, 0);
	trans[0][2562]	= settr(2561,0,2647,1,0,".(goto)", 0, 2, 0);
	trans[0][2526]	= settr(2525,0,2527,1532,0,"((input==21))", 1, 2, 0);
	trans[0][2527]	= settr(2526,0,2528,1533,1533,"fsm_state = 40", 1, 2, 0);
	trans[0][2528]	= settr(2527,0,2647,1534,1534,"output = 10", 1, 2, 0);
	trans[0][2529]	= settr(2528,0,2530,1535,0,"((input==23))", 1, 2, 0);
	trans[0][2530]	= settr(2529,0,2531,1536,1536,"fsm_state = 40", 1, 2, 0);
	trans[0][2531]	= settr(2530,0,2647,1537,1537,"output = 10", 1, 2, 0);
	trans[0][2532]	= settr(2531,0,2533,1538,0,"((input==19))", 1, 2, 0);
	trans[0][2533]	= settr(2532,0,17,1539,1539,"fsm_state = 13", 1, 2, 0);
	trans[0][2534]	= settr(2533,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2535]	= settr(2534,0,2536,1540,0,"((input==25))", 1, 2, 0);
	trans[0][2536]	= settr(2535,0,2537,1541,1541,"fsm_state = 6", 1, 2, 0);
	trans[0][2537]	= settr(2536,0,2647,1542,1542,"output = 9", 1, 2, 0);
	trans[0][2538]	= settr(2537,0,2539,1543,0,"((input==24))", 1, 2, 0);
	trans[0][2539]	= settr(2538,0,2540,1544,1544,"fsm_state = 3", 1, 2, 0);
	trans[0][2540]	= settr(2539,0,2647,1545,1545,"output = 13", 1, 2, 0);
	trans[0][2541]	= settr(2540,0,2542,1546,0,"((input==20))", 1, 2, 0);
	trans[0][2542]	= settr(2541,0,17,1547,1547,"fsm_state = 3", 1, 2, 0);
	trans[0][2543]	= settr(2542,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2544]	= settr(2543,0,2545,1548,0,"((input==28))", 1, 2, 0);
	trans[0][2545]	= settr(2544,0,2546,1549,1549,"fsm_state = 3", 1, 2, 0);
	trans[0][2546]	= settr(2545,0,2647,1550,1550,"output = 2", 1, 2, 0);
	trans[0][2547]	= settr(2546,0,2548,1551,0,"((input==17))", 1, 2, 0);
	trans[0][2548]	= settr(2547,0,2549,1552,1552,"fsm_state = 3", 1, 2, 0);
	trans[0][2549]	= settr(2548,0,2647,1553,1553,"output = 2", 1, 2, 0);
	trans[0][2550]	= settr(2549,0,2551,1554,0,"((input==27))", 1, 2, 0);
	trans[0][2551]	= settr(2550,0,2552,1555,1555,"fsm_state = 3", 1, 2, 0);
	trans[0][2552]	= settr(2551,0,2647,1556,1556,"output = 13", 1, 2, 0);
	trans[0][2553]	= settr(2552,0,2554,1557,0,"((input==18))", 1, 2, 0);
	trans[0][2554]	= settr(2553,0,2555,1558,1558,"fsm_state = 3", 1, 2, 0);
	trans[0][2555]	= settr(2554,0,2647,1559,1559,"output = 2", 1, 2, 0);
	trans[0][2556]	= settr(2555,0,2557,1560,0,"((input==22))", 1, 2, 0);
	trans[0][2557]	= settr(2556,0,2558,1561,1561,"fsm_state = 3", 1, 2, 0);
	trans[0][2558]	= settr(2557,0,2647,1562,1562,"output = 2", 1, 2, 0);
	trans[0][2559]	= settr(2558,0,17,2,0,"else", 0, 2, 0);
	trans[0][2560]	= settr(2559,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2563]	= settr(2562,0,2602,1563,0,"((fsm_state==2))", 1, 2, 0);
	T = trans[0][2602] = settr(2601,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2601,0,2564,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2601,0,2567,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2601,0,2570,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2601,0,2573,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2601,0,2576,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2601,0,2579,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2601,0,2582,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2601,0,2585,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2601,0,2588,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2601,0,2591,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2601,0,2594,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2601,0,2597,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2601,0,2600,0,0,"IF", 0, 2, 0);
	trans[0][2564]	= settr(2563,0,2565,1564,0,"((input==26))", 1, 2, 0);
	trans[0][2565]	= settr(2564,0,2566,1565,1565,"fsm_state = 42", 1, 2, 0);
	trans[0][2566]	= settr(2565,0,2647,1566,1566,"output = 10", 1, 2, 0);
	trans[0][2603]	= settr(2602,0,2647,1,0,".(goto)", 0, 2, 0);
	trans[0][2567]	= settr(2566,0,2568,1567,0,"((input==21))", 1, 2, 0);
	trans[0][2568]	= settr(2567,0,2569,1568,1568,"fsm_state = 42", 1, 2, 0);
	trans[0][2569]	= settr(2568,0,2647,1569,1569,"output = 10", 1, 2, 0);
	trans[0][2570]	= settr(2569,0,2571,1570,0,"((input==23))", 1, 2, 0);
	trans[0][2571]	= settr(2570,0,2572,1571,1571,"fsm_state = 42", 1, 2, 0);
	trans[0][2572]	= settr(2571,0,2647,1572,1572,"output = 10", 1, 2, 0);
	trans[0][2573]	= settr(2572,0,2574,1573,0,"((input==19))", 1, 2, 0);
	trans[0][2574]	= settr(2573,0,17,1574,1574,"fsm_state = 12", 1, 2, 0);
	trans[0][2575]	= settr(2574,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2576]	= settr(2575,0,2577,1575,0,"((input==18))", 1, 2, 0);
	trans[0][2577]	= settr(2576,0,2578,1576,1576,"fsm_state = 3", 1, 2, 0);
	trans[0][2578]	= settr(2577,0,2647,1577,1577,"output = 6", 1, 2, 0);
	trans[0][2579]	= settr(2578,0,2580,1578,0,"((input==24))", 1, 2, 0);
	trans[0][2580]	= settr(2579,0,2581,1579,1579,"fsm_state = 2", 1, 2, 0);
	trans[0][2581]	= settr(2580,0,2647,1580,1580,"output = 13", 1, 2, 0);
	trans[0][2582]	= settr(2581,0,2583,1581,0,"((input==20))", 1, 2, 0);
	trans[0][2583]	= settr(2582,0,17,1582,1582,"fsm_state = 2", 1, 2, 0);
	trans[0][2584]	= settr(2583,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2585]	= settr(2584,0,2586,1583,0,"((input==28))", 1, 2, 0);
	trans[0][2586]	= settr(2585,0,2587,1584,1584,"fsm_state = 2", 1, 2, 0);
	trans[0][2587]	= settr(2586,0,2647,1585,1585,"output = 1", 1, 2, 0);
	trans[0][2588]	= settr(2587,0,2589,1586,0,"((input==25))", 1, 2, 0);
	trans[0][2589]	= settr(2588,0,2590,1587,1587,"fsm_state = 2", 1, 2, 0);
	trans[0][2590]	= settr(2589,0,2647,1588,1588,"output = 15", 1, 2, 0);
	trans[0][2591]	= settr(2590,0,2592,1589,0,"((input==17))", 1, 2, 0);
	trans[0][2592]	= settr(2591,0,17,1590,1590,"fsm_state = 2", 1, 2, 0);
	trans[0][2593]	= settr(2592,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2594]	= settr(2593,0,2595,1591,0,"((input==27))", 1, 2, 0);
	trans[0][2595]	= settr(2594,0,2596,1592,1592,"fsm_state = 2", 1, 2, 0);
	trans[0][2596]	= settr(2595,0,2647,1593,1593,"output = 13", 1, 2, 0);
	trans[0][2597]	= settr(2596,0,2598,1594,0,"((input==22))", 1, 2, 0);
	trans[0][2598]	= settr(2597,0,17,1595,1595,"fsm_state = 2", 1, 2, 0);
	trans[0][2599]	= settr(2598,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2600]	= settr(2599,0,17,2,0,"else", 0, 2, 0);
	trans[0][2601]	= settr(2600,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2604]	= settr(2603,0,2643,1596,0,"((fsm_state==1))", 1, 2, 0);
	T = trans[0][2643] = settr(2642,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2642,0,2605,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2642,0,2608,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2642,0,2611,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2642,0,2614,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2642,0,2617,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2642,0,2620,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2642,0,2623,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2642,0,2626,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2642,0,2629,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2642,0,2632,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2642,0,2635,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2642,0,2638,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2642,0,2641,0,0,"IF", 0, 2, 0);
	trans[0][2605]	= settr(2604,0,2606,1597,0,"((input==26))", 1, 2, 0);
	trans[0][2606]	= settr(2605,0,2607,1598,1598,"fsm_state = 42", 1, 2, 0);
	trans[0][2607]	= settr(2606,0,2647,1599,1599,"output = 10", 1, 2, 0);
	trans[0][2644]	= settr(2643,0,2647,1,0,".(goto)", 0, 2, 0);
	trans[0][2608]	= settr(2607,0,2609,1600,0,"((input==21))", 1, 2, 0);
	trans[0][2609]	= settr(2608,0,2610,1601,1601,"fsm_state = 42", 1, 2, 0);
	trans[0][2610]	= settr(2609,0,2647,1602,1602,"output = 10", 1, 2, 0);
	trans[0][2611]	= settr(2610,0,2612,1603,0,"((input==23))", 1, 2, 0);
	trans[0][2612]	= settr(2611,0,2613,1604,1604,"fsm_state = 42", 1, 2, 0);
	trans[0][2613]	= settr(2612,0,2647,1605,1605,"output = 10", 1, 2, 0);
	trans[0][2614]	= settr(2613,0,2615,1606,0,"((input==19))", 1, 2, 0);
	trans[0][2615]	= settr(2614,0,17,1607,1607,"fsm_state = 15", 1, 2, 0);
	trans[0][2616]	= settr(2615,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2617]	= settr(2616,0,2618,1608,0,"((input==18))", 1, 2, 0);
	trans[0][2618]	= settr(2617,0,17,1609,1609,"fsm_state = 3", 1, 2, 0);
	trans[0][2619]	= settr(2618,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2620]	= settr(2619,0,2621,1610,0,"((input==24))", 1, 2, 0);
	trans[0][2621]	= settr(2620,0,2622,1611,1611,"fsm_state = 1", 1, 2, 0);
	trans[0][2622]	= settr(2621,0,2647,1612,1612,"output = 13", 1, 2, 0);
	trans[0][2623]	= settr(2622,0,2624,1613,0,"((input==20))", 1, 2, 0);
	trans[0][2624]	= settr(2623,0,17,1614,1614,"fsm_state = 1", 1, 2, 0);
	trans[0][2625]	= settr(2624,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2626]	= settr(2625,0,2627,1615,0,"((input==28))", 1, 2, 0);
	trans[0][2627]	= settr(2626,0,17,1616,1616,"fsm_state = 1", 1, 2, 0);
	trans[0][2628]	= settr(2627,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2629]	= settr(2628,0,2630,1617,0,"((input==25))", 1, 2, 0);
	trans[0][2630]	= settr(2629,0,2631,1618,1618,"fsm_state = 1", 1, 2, 0);
	trans[0][2631]	= settr(2630,0,2647,1619,1619,"output = 15", 1, 2, 0);
	trans[0][2632]	= settr(2631,0,2633,1620,0,"((input==17))", 1, 2, 0);
	trans[0][2633]	= settr(2632,0,17,1621,1621,"fsm_state = 1", 1, 2, 0);
	trans[0][2634]	= settr(2633,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2635]	= settr(2634,0,2636,1622,0,"((input==27))", 1, 2, 0);
	trans[0][2636]	= settr(2635,0,2637,1623,1623,"fsm_state = 1", 1, 2, 0);
	trans[0][2637]	= settr(2636,0,2647,1624,1624,"output = 13", 1, 2, 0);
	trans[0][2638]	= settr(2637,0,2639,1625,0,"((input==22))", 1, 2, 0);
	trans[0][2639]	= settr(2638,0,17,1626,1626,"fsm_state = 1", 1, 2, 0);
	trans[0][2640]	= settr(2639,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2641]	= settr(2640,0,17,2,0,"else", 0, 2, 0);
	trans[0][2642]	= settr(2641,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2647]	= settr(2646,0,2648,1627,0,"printf('FSM State: %e\\n',fsm_state)", 1, 2, 0);
	trans[0][2648]	= settr(2647,0,2672,1628,0,"printf('Output: %e\\n\\n',output)", 1, 2, 0);
	T = trans[ 0][2672] = settr(2671,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2671,0,2665,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2665]	= settr(2664,32,2670,1629,1629,"D_STEP14", 1, 2, 0);
	T = trans[0][2670] = settr(2669,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2669,0,2666,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2669,0,2668,0,0,"IF", 0, 2, 0);
	trans[0][2666]	= settr(2665,0,1,1630,0,"((dealt==0))", 1, 2, 0);
	trans[0][2667]	= settr(2666,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2671]	= settr(2670,0,2673,1,0,".(goto)", 0, 2, 0);
	trans[0][2668]	= settr(2667,0,2669,2,0,"else", 0, 2, 0);
	trans[0][2669]	= settr(2668,0,2673,1,0,"(1)", 0, 2, 0);
	trans[0][2673]	= settr(2672,0,2674,1631,0,"printf('DFA State: %e\\n\\n',dfa_state)", 1, 2, 0);
	trans[0][2676]	= settr(2675,0,2677,1,0,"break", 0, 2, 0);
	trans[0][2677]	= settr(2676,0,0,1632,1632,"-end-", 0, 3500, 0);
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
