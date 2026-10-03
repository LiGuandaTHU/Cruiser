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

	trans[1][7]	= settr(4531,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[1][6] = settr(4530,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(4530,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(4530,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 1][3] = settr(4527,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(4527,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[1][1]	= settr(4525,0,6,3,3,"(!((dfa_state!=5)))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached1[2] = 1;
	trans[1][2]	= settr(0,0,0,0,0,"assert(!(!((dfa_state!=5))))",0,0,0);
	trans[1][4]	= settr(4528,0,6,1,0,"(1)", 0, 2, 0);
	trans[1][5]	= settr(4529,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[1][8]	= settr(4532,0,9,1,0,"break", 0, 2, 0);
	trans[1][9]	= settr(4533,0,10,1,0,"(1)", 0, 2, 0);
	trans[1][10]	= settr(4534,0,0,4,4,"-end-", 0, 3500, 0);

	/* proctype 0: :init: */

	trans[0] = (Trans **) emalloc(4526*sizeof(Trans *));

	trans[0][1]	= settr(0,0,2,5,5,"fsm_state = 43", 1, 2, 0);
	trans[0][2]	= settr(1,0,3,6,6,"dfa_state = 6", 1, 2, 0);
	trans[0][3]	= settr(2,0,4522,7,7,"dealt = 0", 1, 2, 0);
	trans[0][4523]	= settr(4522,0,4522,1,0,".(goto)", 0, 2, 0);
	T = trans[0][4522] = settr(4521,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(4521,0,4,0,0,"DO", 0, 2, 0);
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
	trans[0][19]	= settr(18,0,99,20,0,"printf('Input: %e\\n',input)", 1, 2, 0);
	T = trans[ 0][99] = settr(98,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(98,0,92,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][92]	= settr(91,32,97,21,21,"D_STEP13", 1, 2, 0);
	T = trans[0][97] = settr(96,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(96,0,93,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(96,0,95,0,0,"IF", 0, 2, 0);
	trans[0][93]	= settr(92,0,1,22,0,"((dealt==0))", 1, 2, 0);
	trans[0][94]	= settr(93,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][98]	= settr(97,0,100,1,0,".(goto)", 0, 2, 0);
	trans[0][95]	= settr(94,0,96,2,0,"else", 0, 2, 0);
	trans[0][96]	= settr(95,0,100,1,0,"(1)", 0, 2, 0);
	trans[0][100]	= settr(99,0,4437,23,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	T = trans[0][4437] = settr(4436,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4436,0,101,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4436,0,723,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4436,0,764,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4436,0,888,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4436,0,929,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4436,0,970,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4436,0,1011,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4436,0,1052,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4436,0,1093,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4436,0,1134,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4436,0,1175,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4436,0,1299,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4436,0,1340,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4436,0,1464,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4436,0,1505,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4436,0,1629,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4436,0,1670,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4436,0,1794,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4436,0,1835,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4436,0,1876,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4436,0,1917,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4436,0,2041,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4436,0,2082,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4436,0,2289,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4436,0,2496,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4436,0,2703,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4436,0,2744,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4436,0,2951,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4436,0,3075,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4436,0,3116,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4436,0,3240,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4436,0,3281,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4436,0,3322,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4436,0,3529,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4436,0,3570,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4436,0,3611,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4436,0,3818,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4436,0,3942,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4436,0,3983,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4436,0,4107,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4436,0,4314,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4436,0,4355,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(4436,0,4396,0,0,"IF", 0, 2, 0);
	trans[0][101]	= settr(100,0,721,24,0,"((fsm_state==43))", 1, 2, 0);
	T = trans[0][721] = settr(720,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(720,0,102,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(720,0,105,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(720,0,108,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(720,0,111,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(720,0,114,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(720,0,200,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(720,0,203,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(720,0,289,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(720,0,375,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(720,0,461,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(720,0,547,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(720,0,633,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(720,0,719,0,0,"IF", 0, 2, 0);
	trans[0][102]	= settr(101,0,103,25,0,"((input==17))", 1, 2, 0);
	trans[0][103]	= settr(102,0,104,26,26,"fsm_state = 43", 1, 2, 0);
	trans[0][104]	= settr(103,0,4439,27,27,"output = 13", 1, 2, 0);
	trans[0][722]	= settr(721,0,4439,1,0,".(goto)", 0, 2, 0);
	trans[0][105]	= settr(104,0,106,28,0,"((input==26))", 1, 2, 0);
	trans[0][106]	= settr(105,0,107,29,29,"fsm_state = 43", 1, 2, 0);
	trans[0][107]	= settr(106,0,4439,30,30,"output = 13", 1, 2, 0);
	trans[0][108]	= settr(107,0,109,31,0,"((input==23))", 1, 2, 0);
	trans[0][109]	= settr(108,0,110,32,32,"fsm_state = 43", 1, 2, 0);
	trans[0][110]	= settr(109,0,4439,33,33,"output = 13", 1, 2, 0);
	trans[0][111]	= settr(110,0,112,34,0,"((input==19))", 1, 2, 0);
	trans[0][112]	= settr(111,0,113,35,35,"fsm_state = 43", 1, 2, 0);
	trans[0][113]	= settr(112,0,4439,36,36,"output = 13", 1, 2, 0);
	trans[0][114]	= settr(113,0,115,37,0,"((input==24))", 1, 2, 0);
	trans[0][115]	= settr(114,0,116,38,38,"fsm_state = 42", 1, 2, 0);
	trans[0][116]	= settr(115,0,117,39,39,"output = 10", 1, 2, 0);
	trans[0][117]	= settr(116,0,197,40,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][197] = settr(196,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(196,0,190,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][190]	= settr(189,32,195,41,41,"D_STEP13", 1, 2, 0);
	T = trans[0][195] = settr(194,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(194,0,191,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(194,0,193,0,0,"IF", 0, 2, 0);
	trans[0][191]	= settr(190,0,1,42,0,"((dealt==0))", 1, 2, 0);
	trans[0][192]	= settr(191,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][196]	= settr(195,0,198,1,0,".(goto)", 0, 2, 0);
	trans[0][193]	= settr(192,0,194,2,0,"else", 0, 2, 0);
	trans[0][194]	= settr(193,0,198,1,0,"(1)", 0, 2, 0);
	trans[0][198]	= settr(197,0,199,43,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][199]	= settr(198,0,4439,44,44,"output = 15", 1, 2, 0);
	trans[0][200]	= settr(199,0,201,45,0,"((input==21))", 1, 2, 0);
	trans[0][201]	= settr(200,0,202,46,46,"fsm_state = 41", 1, 2, 0);
	trans[0][202]	= settr(201,0,4439,47,47,"output = 10", 1, 2, 0);
	trans[0][203]	= settr(202,0,204,48,0,"((input==25))", 1, 2, 0);
	trans[0][204]	= settr(203,0,205,49,49,"fsm_state = 40", 1, 2, 0);
	trans[0][205]	= settr(204,0,206,50,50,"output = 10", 1, 2, 0);
	trans[0][206]	= settr(205,0,286,51,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][286] = settr(285,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(285,0,279,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][279]	= settr(278,32,284,52,52,"D_STEP13", 1, 2, 0);
	T = trans[0][284] = settr(283,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(283,0,280,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(283,0,282,0,0,"IF", 0, 2, 0);
	trans[0][280]	= settr(279,0,1,53,0,"((dealt==0))", 1, 2, 0);
	trans[0][281]	= settr(280,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][285]	= settr(284,0,287,1,0,".(goto)", 0, 2, 0);
	trans[0][282]	= settr(281,0,283,2,0,"else", 0, 2, 0);
	trans[0][283]	= settr(282,0,287,1,0,"(1)", 0, 2, 0);
	trans[0][287]	= settr(286,0,288,54,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][288]	= settr(287,0,4439,55,55,"output = 15", 1, 2, 0);
	trans[0][289]	= settr(288,0,290,56,0,"((input==22))", 1, 2, 0);
	trans[0][290]	= settr(289,0,291,57,57,"fsm_state = 40", 1, 2, 0);
	trans[0][291]	= settr(290,0,292,58,58,"output = 10", 1, 2, 0);
	trans[0][292]	= settr(291,0,372,59,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][372] = settr(371,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(371,0,365,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][365]	= settr(364,32,370,60,60,"D_STEP13", 1, 2, 0);
	T = trans[0][370] = settr(369,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(369,0,366,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(369,0,368,0,0,"IF", 0, 2, 0);
	trans[0][366]	= settr(365,0,1,61,0,"((dealt==0))", 1, 2, 0);
	trans[0][367]	= settr(366,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][371]	= settr(370,0,373,1,0,".(goto)", 0, 2, 0);
	trans[0][368]	= settr(367,0,369,2,0,"else", 0, 2, 0);
	trans[0][369]	= settr(368,0,373,1,0,"(1)", 0, 2, 0);
	trans[0][373]	= settr(372,0,374,62,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][374]	= settr(373,0,4439,63,63,"output = 15", 1, 2, 0);
	trans[0][375]	= settr(374,0,376,64,0,"((input==20))", 1, 2, 0);
	trans[0][376]	= settr(375,0,377,65,65,"fsm_state = 40", 1, 2, 0);
	trans[0][377]	= settr(376,0,378,66,66,"output = 10", 1, 2, 0);
	trans[0][378]	= settr(377,0,458,67,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][458] = settr(457,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(457,0,451,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][451]	= settr(450,32,456,68,68,"D_STEP13", 1, 2, 0);
	T = trans[0][456] = settr(455,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(455,0,452,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(455,0,454,0,0,"IF", 0, 2, 0);
	trans[0][452]	= settr(451,0,1,69,0,"((dealt==0))", 1, 2, 0);
	trans[0][453]	= settr(452,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][457]	= settr(456,0,459,1,0,".(goto)", 0, 2, 0);
	trans[0][454]	= settr(453,0,455,2,0,"else", 0, 2, 0);
	trans[0][455]	= settr(454,0,459,1,0,"(1)", 0, 2, 0);
	trans[0][459]	= settr(458,0,460,70,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][460]	= settr(459,0,4439,71,71,"output = 15", 1, 2, 0);
	trans[0][461]	= settr(460,0,462,72,0,"((input==18))", 1, 2, 0);
	trans[0][462]	= settr(461,0,463,73,73,"fsm_state = 40", 1, 2, 0);
	trans[0][463]	= settr(462,0,464,74,74,"output = 10", 1, 2, 0);
	trans[0][464]	= settr(463,0,544,75,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][544] = settr(543,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(543,0,537,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][537]	= settr(536,32,542,76,76,"D_STEP13", 1, 2, 0);
	T = trans[0][542] = settr(541,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(541,0,538,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(541,0,540,0,0,"IF", 0, 2, 0);
	trans[0][538]	= settr(537,0,1,77,0,"((dealt==0))", 1, 2, 0);
	trans[0][539]	= settr(538,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][543]	= settr(542,0,545,1,0,".(goto)", 0, 2, 0);
	trans[0][540]	= settr(539,0,541,2,0,"else", 0, 2, 0);
	trans[0][541]	= settr(540,0,545,1,0,"(1)", 0, 2, 0);
	trans[0][545]	= settr(544,0,546,78,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][546]	= settr(545,0,4439,79,79,"output = 15", 1, 2, 0);
	trans[0][547]	= settr(546,0,548,80,0,"((input==16))", 1, 2, 0);
	trans[0][548]	= settr(547,0,549,81,81,"fsm_state = 40", 1, 2, 0);
	trans[0][549]	= settr(548,0,550,82,82,"output = 10", 1, 2, 0);
	trans[0][550]	= settr(549,0,630,83,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][630] = settr(629,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(629,0,623,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][623]	= settr(622,32,628,84,84,"D_STEP13", 1, 2, 0);
	T = trans[0][628] = settr(627,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(627,0,624,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(627,0,626,0,0,"IF", 0, 2, 0);
	trans[0][624]	= settr(623,0,1,85,0,"((dealt==0))", 1, 2, 0);
	trans[0][625]	= settr(624,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][629]	= settr(628,0,631,1,0,".(goto)", 0, 2, 0);
	trans[0][626]	= settr(625,0,627,2,0,"else", 0, 2, 0);
	trans[0][627]	= settr(626,0,631,1,0,"(1)", 0, 2, 0);
	trans[0][631]	= settr(630,0,632,86,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][632]	= settr(631,0,4439,87,87,"output = 15", 1, 2, 0);
	trans[0][633]	= settr(632,0,634,88,0,"((input==27))", 1, 2, 0);
	trans[0][634]	= settr(633,0,635,89,89,"fsm_state = 40", 1, 2, 0);
	trans[0][635]	= settr(634,0,636,90,90,"output = 10", 1, 2, 0);
	trans[0][636]	= settr(635,0,716,91,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][716] = settr(715,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(715,0,709,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][709]	= settr(708,32,714,92,92,"D_STEP13", 1, 2, 0);
	T = trans[0][714] = settr(713,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(713,0,710,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(713,0,712,0,0,"IF", 0, 2, 0);
	trans[0][710]	= settr(709,0,1,93,0,"((dealt==0))", 1, 2, 0);
	trans[0][711]	= settr(710,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][715]	= settr(714,0,717,1,0,".(goto)", 0, 2, 0);
	trans[0][712]	= settr(711,0,713,2,0,"else", 0, 2, 0);
	trans[0][713]	= settr(712,0,717,1,0,"(1)", 0, 2, 0);
	trans[0][717]	= settr(716,0,718,94,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][718]	= settr(717,0,4439,95,95,"output = 15", 1, 2, 0);
	trans[0][719]	= settr(718,0,17,2,0,"else", 0, 2, 0);
	trans[0][720]	= settr(719,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][4438]	= settr(4437,0,4439,1,0,".(goto)", 0, 2, 0);
	trans[0][723]	= settr(722,0,762,96,0,"((fsm_state==42))", 1, 2, 0);
	T = trans[0][762] = settr(761,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(761,0,724,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(761,0,727,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(761,0,730,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(761,0,733,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(761,0,736,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(761,0,739,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(761,0,742,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(761,0,745,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(761,0,748,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(761,0,751,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(761,0,754,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(761,0,757,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(761,0,760,0,0,"IF", 0, 2, 0);
	trans[0][724]	= settr(723,0,725,97,0,"((input==25))", 1, 2, 0);
	trans[0][725]	= settr(724,0,726,98,98,"fsm_state = 42", 1, 2, 0);
	trans[0][726]	= settr(725,0,4439,99,99,"output = 1", 1, 2, 0);
	trans[0][763]	= settr(762,0,4439,1,0,".(goto)", 0, 2, 0);
	trans[0][727]	= settr(726,0,728,100,0,"((input==22))", 1, 2, 0);
	trans[0][728]	= settr(727,0,729,101,101,"fsm_state = 42", 1, 2, 0);
	trans[0][729]	= settr(728,0,4439,102,102,"output = 1", 1, 2, 0);
	trans[0][730]	= settr(729,0,731,103,0,"((input==20))", 1, 2, 0);
	trans[0][731]	= settr(730,0,732,104,104,"fsm_state = 42", 1, 2, 0);
	trans[0][732]	= settr(731,0,4439,105,105,"output = 1", 1, 2, 0);
	trans[0][733]	= settr(732,0,734,106,0,"((input==17))", 1, 2, 0);
	trans[0][734]	= settr(733,0,735,107,107,"fsm_state = 42", 1, 2, 0);
	trans[0][735]	= settr(734,0,4439,108,108,"output = 1", 1, 2, 0);
	trans[0][736]	= settr(735,0,737,109,0,"((input==24))", 1, 2, 0);
	trans[0][737]	= settr(736,0,738,110,110,"fsm_state = 42", 1, 2, 0);
	trans[0][738]	= settr(737,0,4439,111,111,"output = 9", 1, 2, 0);
	trans[0][739]	= settr(738,0,740,112,0,"((input==26))", 1, 2, 0);
	trans[0][740]	= settr(739,0,741,113,113,"fsm_state = 42", 1, 2, 0);
	trans[0][741]	= settr(740,0,4439,114,114,"output = 1", 1, 2, 0);
	trans[0][742]	= settr(741,0,743,115,0,"((input==18))", 1, 2, 0);
	trans[0][743]	= settr(742,0,744,116,116,"fsm_state = 42", 1, 2, 0);
	trans[0][744]	= settr(743,0,4439,117,117,"output = 1", 1, 2, 0);
	trans[0][745]	= settr(744,0,746,118,0,"((input==16))", 1, 2, 0);
	trans[0][746]	= settr(745,0,747,119,119,"fsm_state = 42", 1, 2, 0);
	trans[0][747]	= settr(746,0,4439,120,120,"output = 1", 1, 2, 0);
	trans[0][748]	= settr(747,0,749,121,0,"((input==21))", 1, 2, 0);
	trans[0][749]	= settr(748,0,750,122,122,"fsm_state = 42", 1, 2, 0);
	trans[0][750]	= settr(749,0,4439,123,123,"output = 1", 1, 2, 0);
	trans[0][751]	= settr(750,0,752,124,0,"((input==19))", 1, 2, 0);
	trans[0][752]	= settr(751,0,753,125,125,"fsm_state = 42", 1, 2, 0);
	trans[0][753]	= settr(752,0,4439,126,126,"output = 1", 1, 2, 0);
	trans[0][754]	= settr(753,0,755,127,0,"((input==27))", 1, 2, 0);
	trans[0][755]	= settr(754,0,756,128,128,"fsm_state = 42", 1, 2, 0);
	trans[0][756]	= settr(755,0,4439,129,129,"output = 1", 1, 2, 0);
	trans[0][757]	= settr(756,0,758,130,0,"((input==23))", 1, 2, 0);
	trans[0][758]	= settr(757,0,759,131,131,"fsm_state = 40", 1, 2, 0);
	trans[0][759]	= settr(758,0,4439,132,132,"output = 1", 1, 2, 0);
	trans[0][760]	= settr(759,0,17,2,0,"else", 0, 2, 0);
	trans[0][761]	= settr(760,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][764]	= settr(763,0,886,133,0,"((fsm_state==41))", 1, 2, 0);
	T = trans[0][886] = settr(885,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(885,0,765,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(885,0,768,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(885,0,771,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(885,0,774,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(885,0,777,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(885,0,780,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(885,0,783,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(885,0,786,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(885,0,789,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(885,0,792,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(885,0,795,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(885,0,881,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(885,0,884,0,0,"IF", 0, 2, 0);
	trans[0][765]	= settr(764,0,766,134,0,"((input==24))", 1, 2, 0);
	trans[0][766]	= settr(765,0,767,135,135,"fsm_state = 42", 1, 2, 0);
	trans[0][767]	= settr(766,0,4439,136,136,"output = 15", 1, 2, 0);
	trans[0][887]	= settr(886,0,4439,1,0,".(goto)", 0, 2, 0);
	trans[0][768]	= settr(767,0,769,137,0,"((input==17))", 1, 2, 0);
	trans[0][769]	= settr(768,0,770,138,138,"fsm_state = 41", 1, 2, 0);
	trans[0][770]	= settr(769,0,4439,139,139,"output = 13", 1, 2, 0);
	trans[0][771]	= settr(770,0,772,140,0,"((input==26))", 1, 2, 0);
	trans[0][772]	= settr(771,0,773,141,141,"fsm_state = 41", 1, 2, 0);
	trans[0][773]	= settr(772,0,4439,142,142,"output = 13", 1, 2, 0);
	trans[0][774]	= settr(773,0,775,143,0,"((input==23))", 1, 2, 0);
	trans[0][775]	= settr(774,0,776,144,144,"fsm_state = 41", 1, 2, 0);
	trans[0][776]	= settr(775,0,4439,145,145,"output = 13", 1, 2, 0);
	trans[0][777]	= settr(776,0,778,146,0,"((input==19))", 1, 2, 0);
	trans[0][778]	= settr(777,0,779,147,147,"fsm_state = 41", 1, 2, 0);
	trans[0][779]	= settr(778,0,4439,148,148,"output = 13", 1, 2, 0);
	trans[0][780]	= settr(779,0,781,149,0,"((input==25))", 1, 2, 0);
	trans[0][781]	= settr(780,0,782,150,150,"fsm_state = 40", 1, 2, 0);
	trans[0][782]	= settr(781,0,4439,151,151,"output = 15", 1, 2, 0);
	trans[0][783]	= settr(782,0,784,152,0,"((input==18))", 1, 2, 0);
	trans[0][784]	= settr(783,0,785,153,153,"fsm_state = 40", 1, 2, 0);
	trans[0][785]	= settr(784,0,4439,154,154,"output = 15", 1, 2, 0);
	trans[0][786]	= settr(785,0,787,155,0,"((input==16))", 1, 2, 0);
	trans[0][787]	= settr(786,0,788,156,156,"fsm_state = 40", 1, 2, 0);
	trans[0][788]	= settr(787,0,4439,157,157,"output = 15", 1, 2, 0);
	trans[0][789]	= settr(788,0,790,158,0,"((input==21))", 1, 2, 0);
	trans[0][790]	= settr(789,0,791,159,159,"fsm_state = 40", 1, 2, 0);
	trans[0][791]	= settr(790,0,4439,160,160,"output = 15", 1, 2, 0);
	trans[0][792]	= settr(791,0,793,161,0,"((input==27))", 1, 2, 0);
	trans[0][793]	= settr(792,0,794,162,162,"fsm_state = 40", 1, 2, 0);
	trans[0][794]	= settr(793,0,4439,163,163,"output = 15", 1, 2, 0);
	trans[0][795]	= settr(794,0,796,164,0,"((input==22))", 1, 2, 0);
	trans[0][796]	= settr(795,0,797,165,165,"fsm_state = 39", 1, 2, 0);
	trans[0][797]	= settr(796,0,798,166,166,"output = 12", 1, 2, 0);
	trans[0][798]	= settr(797,0,878,167,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][878] = settr(877,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(877,0,871,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][871]	= settr(870,32,876,168,168,"D_STEP13", 1, 2, 0);
	T = trans[0][876] = settr(875,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(875,0,872,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(875,0,874,0,0,"IF", 0, 2, 0);
	trans[0][872]	= settr(871,0,1,169,0,"((dealt==0))", 1, 2, 0);
	trans[0][873]	= settr(872,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][877]	= settr(876,0,879,1,0,".(goto)", 0, 2, 0);
	trans[0][874]	= settr(873,0,875,2,0,"else", 0, 2, 0);
	trans[0][875]	= settr(874,0,879,1,0,"(1)", 0, 2, 0);
	trans[0][879]	= settr(878,0,880,170,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][880]	= settr(879,0,4439,171,171,"output = 11", 1, 2, 0);
	trans[0][881]	= settr(880,0,882,172,0,"((input==20))", 1, 2, 0);
	trans[0][882]	= settr(881,0,17,173,173,"fsm_state = 38", 1, 2, 0);
	trans[0][883]	= settr(882,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][884]	= settr(883,0,17,2,0,"else", 0, 2, 0);
	trans[0][885]	= settr(884,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][888]	= settr(887,0,927,174,0,"((fsm_state==40))", 1, 2, 0);
	T = trans[0][927] = settr(926,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(926,0,889,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(926,0,892,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(926,0,895,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(926,0,898,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(926,0,901,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(926,0,904,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(926,0,907,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(926,0,910,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(926,0,913,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(926,0,916,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(926,0,919,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(926,0,922,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(926,0,925,0,0,"IF", 0, 2, 0);
	trans[0][889]	= settr(888,0,890,175,0,"((input==24))", 1, 2, 0);
	trans[0][890]	= settr(889,0,891,176,176,"fsm_state = 42", 1, 2, 0);
	trans[0][891]	= settr(890,0,4439,177,177,"output = 1", 1, 2, 0);
	trans[0][928]	= settr(927,0,4439,1,0,".(goto)", 0, 2, 0);
	trans[0][892]	= settr(891,0,893,178,0,"((input==25))", 1, 2, 0);
	trans[0][893]	= settr(892,0,894,179,179,"fsm_state = 40", 1, 2, 0);
	trans[0][894]	= settr(893,0,4439,180,180,"output = 1", 1, 2, 0);
	trans[0][895]	= settr(894,0,896,181,0,"((input==22))", 1, 2, 0);
	trans[0][896]	= settr(895,0,897,182,182,"fsm_state = 40", 1, 2, 0);
	trans[0][897]	= settr(896,0,4439,183,183,"output = 1", 1, 2, 0);
	trans[0][898]	= settr(897,0,899,184,0,"((input==20))", 1, 2, 0);
	trans[0][899]	= settr(898,0,900,185,185,"fsm_state = 40", 1, 2, 0);
	trans[0][900]	= settr(899,0,4439,186,186,"output = 1", 1, 2, 0);
	trans[0][901]	= settr(900,0,902,187,0,"((input==17))", 1, 2, 0);
	trans[0][902]	= settr(901,0,903,188,188,"fsm_state = 40", 1, 2, 0);
	trans[0][903]	= settr(902,0,4439,189,189,"output = 13", 1, 2, 0);
	trans[0][904]	= settr(903,0,905,190,0,"((input==26))", 1, 2, 0);
	trans[0][905]	= settr(904,0,906,191,191,"fsm_state = 40", 1, 2, 0);
	trans[0][906]	= settr(905,0,4439,192,192,"output = 13", 1, 2, 0);
	trans[0][907]	= settr(906,0,908,193,0,"((input==18))", 1, 2, 0);
	trans[0][908]	= settr(907,0,909,194,194,"fsm_state = 40", 1, 2, 0);
	trans[0][909]	= settr(908,0,4439,195,195,"output = 1", 1, 2, 0);
	trans[0][910]	= settr(909,0,911,196,0,"((input==23))", 1, 2, 0);
	trans[0][911]	= settr(910,0,912,197,197,"fsm_state = 40", 1, 2, 0);
	trans[0][912]	= settr(911,0,4439,198,198,"output = 13", 1, 2, 0);
	trans[0][913]	= settr(912,0,914,199,0,"((input==16))", 1, 2, 0);
	trans[0][914]	= settr(913,0,915,200,200,"fsm_state = 40", 1, 2, 0);
	trans[0][915]	= settr(914,0,4439,201,201,"output = 1", 1, 2, 0);
	trans[0][916]	= settr(915,0,917,202,0,"((input==21))", 1, 2, 0);
	trans[0][917]	= settr(916,0,918,203,203,"fsm_state = 40", 1, 2, 0);
	trans[0][918]	= settr(917,0,4439,204,204,"output = 1", 1, 2, 0);
	trans[0][919]	= settr(918,0,920,205,0,"((input==19))", 1, 2, 0);
	trans[0][920]	= settr(919,0,921,206,206,"fsm_state = 40", 1, 2, 0);
	trans[0][921]	= settr(920,0,4439,207,207,"output = 13", 1, 2, 0);
	trans[0][922]	= settr(921,0,923,208,0,"((input==27))", 1, 2, 0);
	trans[0][923]	= settr(922,0,924,209,209,"fsm_state = 40", 1, 2, 0);
	trans[0][924]	= settr(923,0,4439,210,210,"output = 1", 1, 2, 0);
	trans[0][925]	= settr(924,0,17,2,0,"else", 0, 2, 0);
	trans[0][926]	= settr(925,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][929]	= settr(928,0,968,211,0,"((fsm_state==39))", 1, 2, 0);
	T = trans[0][968] = settr(967,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(967,0,930,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(967,0,933,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(967,0,936,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(967,0,939,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(967,0,942,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(967,0,945,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(967,0,948,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(967,0,951,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(967,0,954,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(967,0,957,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(967,0,960,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(967,0,963,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(967,0,966,0,0,"IF", 0, 2, 0);
	trans[0][930]	= settr(929,0,931,212,0,"((input==24))", 1, 2, 0);
	trans[0][931]	= settr(930,0,932,213,213,"fsm_state = 42", 1, 2, 0);
	trans[0][932]	= settr(931,0,4439,214,214,"output = 15", 1, 2, 0);
	trans[0][969]	= settr(968,0,4439,1,0,".(goto)", 0, 2, 0);
	trans[0][933]	= settr(932,0,934,215,0,"((input==25))", 1, 2, 0);
	trans[0][934]	= settr(933,0,935,216,216,"fsm_state = 40", 1, 2, 0);
	trans[0][935]	= settr(934,0,4439,217,217,"output = 15", 1, 2, 0);
	trans[0][936]	= settr(935,0,937,218,0,"((input==18))", 1, 2, 0);
	trans[0][937]	= settr(936,0,938,219,219,"fsm_state = 40", 1, 2, 0);
	trans[0][938]	= settr(937,0,4439,220,220,"output = 15", 1, 2, 0);
	trans[0][939]	= settr(938,0,940,221,0,"((input==16))", 1, 2, 0);
	trans[0][940]	= settr(939,0,941,222,222,"fsm_state = 40", 1, 2, 0);
	trans[0][941]	= settr(940,0,4439,223,223,"output = 15", 1, 2, 0);
	trans[0][942]	= settr(941,0,943,224,0,"((input==21))", 1, 2, 0);
	trans[0][943]	= settr(942,0,944,225,225,"fsm_state = 40", 1, 2, 0);
	trans[0][944]	= settr(943,0,4439,226,226,"output = 15", 1, 2, 0);
	trans[0][945]	= settr(944,0,946,227,0,"((input==27))", 1, 2, 0);
	trans[0][946]	= settr(945,0,947,228,228,"fsm_state = 40", 1, 2, 0);
	trans[0][947]	= settr(946,0,4439,229,229,"output = 15", 1, 2, 0);
	trans[0][948]	= settr(947,0,949,230,0,"((input==22))", 1, 2, 0);
	trans[0][949]	= settr(948,0,17,231,231,"fsm_state = 39", 1, 2, 0);
	trans[0][950]	= settr(949,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][951]	= settr(950,0,952,232,0,"((input==17))", 1, 2, 0);
	trans[0][952]	= settr(951,0,953,233,233,"fsm_state = 39", 1, 2, 0);
	trans[0][953]	= settr(952,0,4439,234,234,"output = 13", 1, 2, 0);
	trans[0][954]	= settr(953,0,955,235,0,"((input==26))", 1, 2, 0);
	trans[0][955]	= settr(954,0,956,236,236,"fsm_state = 39", 1, 2, 0);
	trans[0][956]	= settr(955,0,4439,237,237,"output = 13", 1, 2, 0);
	trans[0][957]	= settr(956,0,958,238,0,"((input==23))", 1, 2, 0);
	trans[0][958]	= settr(957,0,959,239,239,"fsm_state = 39", 1, 2, 0);
	trans[0][959]	= settr(958,0,4439,240,240,"output = 13", 1, 2, 0);
	trans[0][960]	= settr(959,0,961,241,0,"((input==19))", 1, 2, 0);
	trans[0][961]	= settr(960,0,962,242,242,"fsm_state = 39", 1, 2, 0);
	trans[0][962]	= settr(961,0,4439,243,243,"output = 13", 1, 2, 0);
	trans[0][963]	= settr(962,0,964,244,0,"((input==20))", 1, 2, 0);
	trans[0][964]	= settr(963,0,17,245,245,"fsm_state = 37", 1, 2, 0);
	trans[0][965]	= settr(964,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][966]	= settr(965,0,17,2,0,"else", 0, 2, 0);
	trans[0][967]	= settr(966,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][970]	= settr(969,0,1009,246,0,"((fsm_state==38))", 1, 2, 0);
	T = trans[0][1009] = settr(1008,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1008,0,971,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1008,0,974,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1008,0,977,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1008,0,980,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1008,0,983,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1008,0,986,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1008,0,989,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1008,0,992,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1008,0,995,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1008,0,998,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1008,0,1001,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1008,0,1004,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1008,0,1007,0,0,"IF", 0, 2, 0);
	trans[0][971]	= settr(970,0,972,247,0,"((input==25))", 1, 2, 0);
	trans[0][972]	= settr(971,0,17,248,248,"fsm_state = 38", 1, 2, 0);
	trans[0][973]	= settr(972,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1010]	= settr(1009,0,4439,1,0,".(goto)", 0, 2, 0);
	trans[0][974]	= settr(973,0,975,249,0,"((input==22))", 1, 2, 0);
	trans[0][975]	= settr(974,0,17,250,250,"fsm_state = 38", 1, 2, 0);
	trans[0][976]	= settr(975,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][977]	= settr(976,0,978,251,0,"((input==20))", 1, 2, 0);
	trans[0][978]	= settr(977,0,17,252,252,"fsm_state = 38", 1, 2, 0);
	trans[0][979]	= settr(978,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][980]	= settr(979,0,981,253,0,"((input==17))", 1, 2, 0);
	trans[0][981]	= settr(980,0,982,254,254,"fsm_state = 38", 1, 2, 0);
	trans[0][982]	= settr(981,0,4439,255,255,"output = 13", 1, 2, 0);
	trans[0][983]	= settr(982,0,984,256,0,"((input==26))", 1, 2, 0);
	trans[0][984]	= settr(983,0,985,257,257,"fsm_state = 38", 1, 2, 0);
	trans[0][985]	= settr(984,0,4439,258,258,"output = 13", 1, 2, 0);
	trans[0][986]	= settr(985,0,987,259,0,"((input==18))", 1, 2, 0);
	trans[0][987]	= settr(986,0,17,260,260,"fsm_state = 38", 1, 2, 0);
	trans[0][988]	= settr(987,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][989]	= settr(988,0,990,261,0,"((input==23))", 1, 2, 0);
	trans[0][990]	= settr(989,0,991,262,262,"fsm_state = 38", 1, 2, 0);
	trans[0][991]	= settr(990,0,4439,263,263,"output = 13", 1, 2, 0);
	trans[0][992]	= settr(991,0,993,264,0,"((input==16))", 1, 2, 0);
	trans[0][993]	= settr(992,0,17,265,265,"fsm_state = 38", 1, 2, 0);
	trans[0][994]	= settr(993,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][995]	= settr(994,0,996,266,0,"((input==21))", 1, 2, 0);
	trans[0][996]	= settr(995,0,17,267,267,"fsm_state = 38", 1, 2, 0);
	trans[0][997]	= settr(996,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][998]	= settr(997,0,999,268,0,"((input==19))", 1, 2, 0);
	trans[0][999]	= settr(998,0,1000,269,269,"fsm_state = 38", 1, 2, 0);
	trans[0][1000]	= settr(999,0,4439,270,270,"output = 13", 1, 2, 0);
	trans[0][1001]	= settr(1000,0,1002,271,0,"((input==27))", 1, 2, 0);
	trans[0][1002]	= settr(1001,0,17,272,272,"fsm_state = 38", 1, 2, 0);
	trans[0][1003]	= settr(1002,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1004]	= settr(1003,0,1005,273,0,"((input==24))", 1, 2, 0);
	trans[0][1005]	= settr(1004,0,17,274,274,"fsm_state = 36", 1, 2, 0);
	trans[0][1006]	= settr(1005,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1007]	= settr(1006,0,17,2,0,"else", 0, 2, 0);
	trans[0][1008]	= settr(1007,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1011]	= settr(1010,0,1050,275,0,"((fsm_state==37))", 1, 2, 0);
	T = trans[0][1050] = settr(1049,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1049,0,1012,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1049,0,1015,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1049,0,1018,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1049,0,1021,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1049,0,1024,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1049,0,1027,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1049,0,1030,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1049,0,1033,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1049,0,1036,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1049,0,1039,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1049,0,1042,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1049,0,1045,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1049,0,1048,0,0,"IF", 0, 2, 0);
	trans[0][1012]	= settr(1011,0,1013,276,0,"((input==22))", 1, 2, 0);
	trans[0][1013]	= settr(1012,0,1014,277,277,"fsm_state = 40", 1, 2, 0);
	trans[0][1014]	= settr(1013,0,4439,278,278,"output = 15", 1, 2, 0);
	trans[0][1051]	= settr(1050,0,4439,1,0,".(goto)", 0, 2, 0);
	trans[0][1015]	= settr(1014,0,1016,279,0,"((input==20))", 1, 2, 0);
	trans[0][1016]	= settr(1015,0,1017,280,280,"fsm_state = 40", 1, 2, 0);
	trans[0][1017]	= settr(1016,0,4439,281,281,"output = 15", 1, 2, 0);
	trans[0][1018]	= settr(1017,0,1019,282,0,"((input==16))", 1, 2, 0);
	trans[0][1019]	= settr(1018,0,1020,283,283,"fsm_state = 40", 1, 2, 0);
	trans[0][1020]	= settr(1019,0,4439,284,284,"output = 15", 1, 2, 0);
	trans[0][1021]	= settr(1020,0,1022,285,0,"((input==25))", 1, 2, 0);
	trans[0][1022]	= settr(1021,0,17,286,286,"fsm_state = 37", 1, 2, 0);
	trans[0][1023]	= settr(1022,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1024]	= settr(1023,0,1025,287,0,"((input==17))", 1, 2, 0);
	trans[0][1025]	= settr(1024,0,1026,288,288,"fsm_state = 37", 1, 2, 0);
	trans[0][1026]	= settr(1025,0,4439,289,289,"output = 13", 1, 2, 0);
	trans[0][1027]	= settr(1026,0,1028,290,0,"((input==26))", 1, 2, 0);
	trans[0][1028]	= settr(1027,0,1029,291,291,"fsm_state = 37", 1, 2, 0);
	trans[0][1029]	= settr(1028,0,4439,292,292,"output = 13", 1, 2, 0);
	trans[0][1030]	= settr(1029,0,1031,293,0,"((input==18))", 1, 2, 0);
	trans[0][1031]	= settr(1030,0,17,294,294,"fsm_state = 37", 1, 2, 0);
	trans[0][1032]	= settr(1031,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1033]	= settr(1032,0,1034,295,0,"((input==23))", 1, 2, 0);
	trans[0][1034]	= settr(1033,0,1035,296,296,"fsm_state = 37", 1, 2, 0);
	trans[0][1035]	= settr(1034,0,4439,297,297,"output = 13", 1, 2, 0);
	trans[0][1036]	= settr(1035,0,1037,298,0,"((input==19))", 1, 2, 0);
	trans[0][1037]	= settr(1036,0,1038,299,299,"fsm_state = 37", 1, 2, 0);
	trans[0][1038]	= settr(1037,0,4439,300,300,"output = 13", 1, 2, 0);
	trans[0][1039]	= settr(1038,0,1040,301,0,"((input==24))", 1, 2, 0);
	trans[0][1040]	= settr(1039,0,17,302,302,"fsm_state = 35", 1, 2, 0);
	trans[0][1041]	= settr(1040,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1042]	= settr(1041,0,1043,303,0,"((input==27))", 1, 2, 0);
	trans[0][1043]	= settr(1042,0,1044,304,304,"fsm_state = 34", 1, 2, 0);
	trans[0][1044]	= settr(1043,0,4439,305,305,"output = 6", 1, 2, 0);
	trans[0][1045]	= settr(1044,0,1046,306,0,"((input==21))", 1, 2, 0);
	trans[0][1046]	= settr(1045,0,1047,307,307,"fsm_state = 33", 1, 2, 0);
	trans[0][1047]	= settr(1046,0,4439,308,308,"output = 10", 1, 2, 0);
	trans[0][1048]	= settr(1047,0,17,2,0,"else", 0, 2, 0);
	trans[0][1049]	= settr(1048,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1052]	= settr(1051,0,1091,309,0,"((fsm_state==36))", 1, 2, 0);
	T = trans[0][1091] = settr(1090,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1090,0,1053,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1090,0,1056,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1090,0,1059,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1090,0,1062,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1090,0,1065,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1090,0,1068,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1090,0,1071,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1090,0,1074,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1090,0,1077,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1090,0,1080,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1090,0,1083,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1090,0,1086,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1090,0,1089,0,0,"IF", 0, 2, 0);
	trans[0][1053]	= settr(1052,0,1054,310,0,"((input==23))", 1, 2, 0);
	trans[0][1054]	= settr(1053,0,17,311,311,"fsm_state = 38", 1, 2, 0);
	trans[0][1055]	= settr(1054,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1092]	= settr(1091,0,4439,1,0,".(goto)", 0, 2, 0);
	trans[0][1056]	= settr(1055,0,1057,312,0,"((input==25))", 1, 2, 0);
	trans[0][1057]	= settr(1056,0,17,313,313,"fsm_state = 36", 1, 2, 0);
	trans[0][1058]	= settr(1057,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1059]	= settr(1058,0,1060,314,0,"((input==22))", 1, 2, 0);
	trans[0][1060]	= settr(1059,0,17,315,315,"fsm_state = 36", 1, 2, 0);
	trans[0][1061]	= settr(1060,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1062]	= settr(1061,0,1063,316,0,"((input==20))", 1, 2, 0);
	trans[0][1063]	= settr(1062,0,17,317,317,"fsm_state = 36", 1, 2, 0);
	trans[0][1064]	= settr(1063,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1065]	= settr(1064,0,1066,318,0,"((input==17))", 1, 2, 0);
	trans[0][1066]	= settr(1065,0,17,319,319,"fsm_state = 36", 1, 2, 0);
	trans[0][1067]	= settr(1066,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1068]	= settr(1067,0,1069,320,0,"((input==24))", 1, 2, 0);
	trans[0][1069]	= settr(1068,0,1070,321,321,"fsm_state = 36", 1, 2, 0);
	trans[0][1070]	= settr(1069,0,4439,322,322,"output = 9", 1, 2, 0);
	trans[0][1071]	= settr(1070,0,1072,323,0,"((input==26))", 1, 2, 0);
	trans[0][1072]	= settr(1071,0,17,324,324,"fsm_state = 36", 1, 2, 0);
	trans[0][1073]	= settr(1072,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1074]	= settr(1073,0,1075,325,0,"((input==18))", 1, 2, 0);
	trans[0][1075]	= settr(1074,0,17,326,326,"fsm_state = 36", 1, 2, 0);
	trans[0][1076]	= settr(1075,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1077]	= settr(1076,0,1078,327,0,"((input==16))", 1, 2, 0);
	trans[0][1078]	= settr(1077,0,17,328,328,"fsm_state = 36", 1, 2, 0);
	trans[0][1079]	= settr(1078,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1080]	= settr(1079,0,1081,329,0,"((input==21))", 1, 2, 0);
	trans[0][1081]	= settr(1080,0,17,330,330,"fsm_state = 36", 1, 2, 0);
	trans[0][1082]	= settr(1081,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1083]	= settr(1082,0,1084,331,0,"((input==19))", 1, 2, 0);
	trans[0][1084]	= settr(1083,0,17,332,332,"fsm_state = 36", 1, 2, 0);
	trans[0][1085]	= settr(1084,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1086]	= settr(1085,0,1087,333,0,"((input==27))", 1, 2, 0);
	trans[0][1087]	= settr(1086,0,17,334,334,"fsm_state = 36", 1, 2, 0);
	trans[0][1088]	= settr(1087,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1089]	= settr(1088,0,17,2,0,"else", 0, 2, 0);
	trans[0][1090]	= settr(1089,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1093]	= settr(1092,0,1132,335,0,"((fsm_state==35))", 1, 2, 0);
	T = trans[0][1132] = settr(1131,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1131,0,1094,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1131,0,1097,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1131,0,1100,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1131,0,1103,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1131,0,1106,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1131,0,1109,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1131,0,1112,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1131,0,1115,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1131,0,1118,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1131,0,1121,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1131,0,1124,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1131,0,1127,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1131,0,1130,0,0,"IF", 0, 2, 0);
	trans[0][1094]	= settr(1093,0,1095,336,0,"((input==22))", 1, 2, 0);
	trans[0][1095]	= settr(1094,0,1096,337,337,"fsm_state = 42", 1, 2, 0);
	trans[0][1096]	= settr(1095,0,4439,338,338,"output = 15", 1, 2, 0);
	trans[0][1133]	= settr(1132,0,4439,1,0,".(goto)", 0, 2, 0);
	trans[0][1097]	= settr(1096,0,1098,339,0,"((input==20))", 1, 2, 0);
	trans[0][1098]	= settr(1097,0,1099,340,340,"fsm_state = 42", 1, 2, 0);
	trans[0][1099]	= settr(1098,0,4439,341,341,"output = 15", 1, 2, 0);
	trans[0][1100]	= settr(1099,0,1101,342,0,"((input==16))", 1, 2, 0);
	trans[0][1101]	= settr(1100,0,1102,343,343,"fsm_state = 42", 1, 2, 0);
	trans[0][1102]	= settr(1101,0,4439,344,344,"output = 15", 1, 2, 0);
	trans[0][1103]	= settr(1102,0,1104,345,0,"((input==23))", 1, 2, 0);
	trans[0][1104]	= settr(1103,0,17,346,346,"fsm_state = 37", 1, 2, 0);
	trans[0][1105]	= settr(1104,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1106]	= settr(1105,0,1107,347,0,"((input==25))", 1, 2, 0);
	trans[0][1107]	= settr(1106,0,17,348,348,"fsm_state = 35", 1, 2, 0);
	trans[0][1108]	= settr(1107,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1109]	= settr(1108,0,1110,349,0,"((input==17))", 1, 2, 0);
	trans[0][1110]	= settr(1109,0,17,350,350,"fsm_state = 35", 1, 2, 0);
	trans[0][1111]	= settr(1110,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1112]	= settr(1111,0,1113,351,0,"((input==24))", 1, 2, 0);
	trans[0][1113]	= settr(1112,0,1114,352,352,"fsm_state = 35", 1, 2, 0);
	trans[0][1114]	= settr(1113,0,4439,353,353,"output = 9", 1, 2, 0);
	trans[0][1115]	= settr(1114,0,1116,354,0,"((input==26))", 1, 2, 0);
	trans[0][1116]	= settr(1115,0,17,355,355,"fsm_state = 35", 1, 2, 0);
	trans[0][1117]	= settr(1116,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1118]	= settr(1117,0,1119,356,0,"((input==18))", 1, 2, 0);
	trans[0][1119]	= settr(1118,0,17,357,357,"fsm_state = 35", 1, 2, 0);
	trans[0][1120]	= settr(1119,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1121]	= settr(1120,0,1122,358,0,"((input==19))", 1, 2, 0);
	trans[0][1122]	= settr(1121,0,17,359,359,"fsm_state = 35", 1, 2, 0);
	trans[0][1123]	= settr(1122,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1124]	= settr(1123,0,1125,360,0,"((input==27))", 1, 2, 0);
	trans[0][1125]	= settr(1124,0,1126,361,361,"fsm_state = 32", 1, 2, 0);
	trans[0][1126]	= settr(1125,0,4439,362,362,"output = 6", 1, 2, 0);
	trans[0][1127]	= settr(1126,0,1128,363,0,"((input==21))", 1, 2, 0);
	trans[0][1128]	= settr(1127,0,1129,364,364,"fsm_state = 31", 1, 2, 0);
	trans[0][1129]	= settr(1128,0,4439,365,365,"output = 10", 1, 2, 0);
	trans[0][1130]	= settr(1129,0,17,2,0,"else", 0, 2, 0);
	trans[0][1131]	= settr(1130,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1134]	= settr(1133,0,1173,366,0,"((fsm_state==34))", 1, 2, 0);
	T = trans[0][1173] = settr(1172,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1172,0,1135,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1172,0,1138,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1172,0,1141,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1172,0,1144,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1172,0,1147,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1172,0,1150,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1172,0,1153,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1172,0,1156,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1172,0,1159,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1172,0,1162,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1172,0,1165,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1172,0,1168,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1172,0,1171,0,0,"IF", 0, 2, 0);
	trans[0][1135]	= settr(1134,0,1136,367,0,"((input==22))", 1, 2, 0);
	trans[0][1136]	= settr(1135,0,1137,368,368,"fsm_state = 40", 1, 2, 0);
	trans[0][1137]	= settr(1136,0,4439,369,369,"output = 15", 1, 2, 0);
	trans[0][1174]	= settr(1173,0,4439,1,0,".(goto)", 0, 2, 0);
	trans[0][1138]	= settr(1137,0,1139,370,0,"((input==20))", 1, 2, 0);
	trans[0][1139]	= settr(1138,0,1140,371,371,"fsm_state = 40", 1, 2, 0);
	trans[0][1140]	= settr(1139,0,4439,372,372,"output = 15", 1, 2, 0);
	trans[0][1141]	= settr(1140,0,1142,373,0,"((input==16))", 1, 2, 0);
	trans[0][1142]	= settr(1141,0,1143,374,374,"fsm_state = 40", 1, 2, 0);
	trans[0][1143]	= settr(1142,0,4439,375,375,"output = 15", 1, 2, 0);
	trans[0][1144]	= settr(1143,0,1145,376,0,"((input==25))", 1, 2, 0);
	trans[0][1145]	= settr(1144,0,1146,377,377,"fsm_state = 34", 1, 2, 0);
	trans[0][1146]	= settr(1145,0,4439,378,378,"output = 3", 1, 2, 0);
	trans[0][1147]	= settr(1146,0,1148,379,0,"((input==17))", 1, 2, 0);
	trans[0][1148]	= settr(1147,0,1149,380,380,"fsm_state = 34", 1, 2, 0);
	trans[0][1149]	= settr(1148,0,4439,381,381,"output = 13", 1, 2, 0);
	trans[0][1150]	= settr(1149,0,1151,382,0,"((input==26))", 1, 2, 0);
	trans[0][1151]	= settr(1150,0,1152,383,383,"fsm_state = 34", 1, 2, 0);
	trans[0][1152]	= settr(1151,0,4439,384,384,"output = 13", 1, 2, 0);
	trans[0][1153]	= settr(1152,0,1154,385,0,"((input==23))", 1, 2, 0);
	trans[0][1154]	= settr(1153,0,1155,386,386,"fsm_state = 34", 1, 2, 0);
	trans[0][1155]	= settr(1154,0,4439,387,387,"output = 13", 1, 2, 0);
	trans[0][1156]	= settr(1155,0,1157,388,0,"((input==19))", 1, 2, 0);
	trans[0][1157]	= settr(1156,0,1158,389,389,"fsm_state = 34", 1, 2, 0);
	trans[0][1158]	= settr(1157,0,4439,390,390,"output = 13", 1, 2, 0);
	trans[0][1159]	= settr(1158,0,1160,391,0,"((input==27))", 1, 2, 0);
	trans[0][1160]	= settr(1159,0,1161,392,392,"fsm_state = 34", 1, 2, 0);
	trans[0][1161]	= settr(1160,0,4439,393,393,"output = 6", 1, 2, 0);
	trans[0][1162]	= settr(1161,0,1163,394,0,"((input==24))", 1, 2, 0);
	trans[0][1163]	= settr(1162,0,1164,395,395,"fsm_state = 32", 1, 2, 0);
	trans[0][1164]	= settr(1163,0,4439,396,396,"output = 4", 1, 2, 0);
	trans[0][1165]	= settr(1164,0,1166,397,0,"((input==18))", 1, 2, 0);
	trans[0][1166]	= settr(1165,0,1167,398,398,"fsm_state = 30", 1, 2, 0);
	trans[0][1167]	= settr(1166,0,4439,399,399,"output = 2", 1, 2, 0);
	trans[0][1168]	= settr(1167,0,1169,400,0,"((input==21))", 1, 2, 0);
	trans[0][1169]	= settr(1168,0,1170,401,401,"fsm_state = 29", 1, 2, 0);
	trans[0][1170]	= settr(1169,0,4439,402,402,"output = 10", 1, 2, 0);
	trans[0][1171]	= settr(1170,0,17,2,0,"else", 0, 2, 0);
	trans[0][1172]	= settr(1171,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1175]	= settr(1174,0,1297,403,0,"((fsm_state==33))", 1, 2, 0);
	T = trans[0][1297] = settr(1296,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1296,0,1176,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1296,0,1179,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1296,0,1182,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1296,0,1185,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1296,0,1188,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1296,0,1191,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1296,0,1194,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1296,0,1197,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1296,0,1200,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1296,0,1203,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1296,0,1206,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1296,0,1209,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1296,0,1295,0,0,"IF", 0, 2, 0);
	trans[0][1176]	= settr(1175,0,1177,404,0,"((input==16))", 1, 2, 0);
	trans[0][1177]	= settr(1176,0,1178,405,405,"fsm_state = 40", 1, 2, 0);
	trans[0][1178]	= settr(1177,0,4439,406,406,"output = 15", 1, 2, 0);
	trans[0][1298]	= settr(1297,0,4439,1,0,".(goto)", 0, 2, 0);
	trans[0][1179]	= settr(1178,0,1180,407,0,"((input==21))", 1, 2, 0);
	trans[0][1180]	= settr(1179,0,1181,408,408,"fsm_state = 40", 1, 2, 0);
	trans[0][1181]	= settr(1180,0,4439,409,409,"output = 15", 1, 2, 0);
	trans[0][1182]	= settr(1181,0,1183,410,0,"((input==27))", 1, 2, 0);
	trans[0][1183]	= settr(1182,0,1184,411,411,"fsm_state = 40", 1, 2, 0);
	trans[0][1184]	= settr(1183,0,4439,412,412,"output = 15", 1, 2, 0);
	trans[0][1185]	= settr(1184,0,1186,413,0,"((input==20))", 1, 2, 0);
	trans[0][1186]	= settr(1185,0,17,414,414,"fsm_state = 38", 1, 2, 0);
	trans[0][1187]	= settr(1186,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1188]	= settr(1187,0,1189,415,0,"((input==25))", 1, 2, 0);
	trans[0][1189]	= settr(1188,0,17,416,416,"fsm_state = 33", 1, 2, 0);
	trans[0][1190]	= settr(1189,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1191]	= settr(1190,0,1192,417,0,"((input==17))", 1, 2, 0);
	trans[0][1192]	= settr(1191,0,1193,418,418,"fsm_state = 33", 1, 2, 0);
	trans[0][1193]	= settr(1192,0,4439,419,419,"output = 13", 1, 2, 0);
	trans[0][1194]	= settr(1193,0,1195,420,0,"((input==26))", 1, 2, 0);
	trans[0][1195]	= settr(1194,0,1196,421,421,"fsm_state = 33", 1, 2, 0);
	trans[0][1196]	= settr(1195,0,4439,422,422,"output = 13", 1, 2, 0);
	trans[0][1197]	= settr(1196,0,1198,423,0,"((input==18))", 1, 2, 0);
	trans[0][1198]	= settr(1197,0,17,424,424,"fsm_state = 33", 1, 2, 0);
	trans[0][1199]	= settr(1198,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1200]	= settr(1199,0,1201,425,0,"((input==23))", 1, 2, 0);
	trans[0][1201]	= settr(1200,0,1202,426,426,"fsm_state = 33", 1, 2, 0);
	trans[0][1202]	= settr(1201,0,4439,427,427,"output = 13", 1, 2, 0);
	trans[0][1203]	= settr(1202,0,1204,428,0,"((input==19))", 1, 2, 0);
	trans[0][1204]	= settr(1203,0,1205,429,429,"fsm_state = 33", 1, 2, 0);
	trans[0][1205]	= settr(1204,0,4439,430,430,"output = 13", 1, 2, 0);
	trans[0][1206]	= settr(1205,0,1207,431,0,"((input==24))", 1, 2, 0);
	trans[0][1207]	= settr(1206,0,17,432,432,"fsm_state = 31", 1, 2, 0);
	trans[0][1208]	= settr(1207,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1209]	= settr(1208,0,1210,433,0,"((input==22))", 1, 2, 0);
	trans[0][1210]	= settr(1209,0,1211,434,434,"fsm_state = 28", 1, 2, 0);
	trans[0][1211]	= settr(1210,0,1212,435,435,"output = 12", 1, 2, 0);
	trans[0][1212]	= settr(1211,0,1292,436,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][1292] = settr(1291,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1291,0,1285,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][1285]	= settr(1284,32,1290,437,437,"D_STEP13", 1, 2, 0);
	T = trans[0][1290] = settr(1289,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1289,0,1286,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1289,0,1288,0,0,"IF", 0, 2, 0);
	trans[0][1286]	= settr(1285,0,1,438,0,"((dealt==0))", 1, 2, 0);
	trans[0][1287]	= settr(1286,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][1291]	= settr(1290,0,1293,1,0,".(goto)", 0, 2, 0);
	trans[0][1288]	= settr(1287,0,1289,2,0,"else", 0, 2, 0);
	trans[0][1289]	= settr(1288,0,1293,1,0,"(1)", 0, 2, 0);
	trans[0][1293]	= settr(1292,0,1294,439,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][1294]	= settr(1293,0,4439,440,440,"output = 11", 1, 2, 0);
	trans[0][1295]	= settr(1294,0,17,2,0,"else", 0, 2, 0);
	trans[0][1296]	= settr(1295,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1299]	= settr(1298,0,1338,441,0,"((fsm_state==32))", 1, 2, 0);
	T = trans[0][1338] = settr(1337,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1337,0,1300,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1337,0,1303,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1337,0,1306,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1337,0,1309,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1337,0,1312,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1337,0,1315,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1337,0,1318,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1337,0,1321,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1337,0,1324,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1337,0,1327,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1337,0,1330,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1337,0,1333,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1337,0,1336,0,0,"IF", 0, 2, 0);
	trans[0][1300]	= settr(1299,0,1301,442,0,"((input==22))", 1, 2, 0);
	trans[0][1301]	= settr(1300,0,1302,443,443,"fsm_state = 42", 1, 2, 0);
	trans[0][1302]	= settr(1301,0,4439,444,444,"output = 15", 1, 2, 0);
	trans[0][1339]	= settr(1338,0,4439,1,0,".(goto)", 0, 2, 0);
	trans[0][1303]	= settr(1302,0,1304,445,0,"((input==20))", 1, 2, 0);
	trans[0][1304]	= settr(1303,0,1305,446,446,"fsm_state = 42", 1, 2, 0);
	trans[0][1305]	= settr(1304,0,4439,447,447,"output = 15", 1, 2, 0);
	trans[0][1306]	= settr(1305,0,1307,448,0,"((input==16))", 1, 2, 0);
	trans[0][1307]	= settr(1306,0,1308,449,449,"fsm_state = 42", 1, 2, 0);
	trans[0][1308]	= settr(1307,0,4439,450,450,"output = 15", 1, 2, 0);
	trans[0][1309]	= settr(1308,0,1310,451,0,"((input==23))", 1, 2, 0);
	trans[0][1310]	= settr(1309,0,1311,452,452,"fsm_state = 34", 1, 2, 0);
	trans[0][1311]	= settr(1310,0,4439,453,453,"output = 4", 1, 2, 0);
	trans[0][1312]	= settr(1311,0,1313,454,0,"((input==25))", 1, 2, 0);
	trans[0][1313]	= settr(1312,0,1314,455,455,"fsm_state = 32", 1, 2, 0);
	trans[0][1314]	= settr(1313,0,4439,456,456,"output = 3", 1, 2, 0);
	trans[0][1315]	= settr(1314,0,1316,457,0,"((input==17))", 1, 2, 0);
	trans[0][1316]	= settr(1315,0,1317,458,458,"fsm_state = 32", 1, 2, 0);
	trans[0][1317]	= settr(1316,0,4439,459,459,"output = 4", 1, 2, 0);
	trans[0][1318]	= settr(1317,0,1319,460,0,"((input==24))", 1, 2, 0);
	trans[0][1319]	= settr(1318,0,1320,461,461,"fsm_state = 32", 1, 2, 0);
	trans[0][1320]	= settr(1319,0,4439,462,462,"output = 9", 1, 2, 0);
	trans[0][1321]	= settr(1320,0,1322,463,0,"((input==26))", 1, 2, 0);
	trans[0][1322]	= settr(1321,0,1323,464,464,"fsm_state = 32", 1, 2, 0);
	trans[0][1323]	= settr(1322,0,4439,465,465,"output = 4", 1, 2, 0);
	trans[0][1324]	= settr(1323,0,1325,466,0,"((input==19))", 1, 2, 0);
	trans[0][1325]	= settr(1324,0,1326,467,467,"fsm_state = 32", 1, 2, 0);
	trans[0][1326]	= settr(1325,0,4439,468,468,"output = 4", 1, 2, 0);
	trans[0][1327]	= settr(1326,0,1328,469,0,"((input==27))", 1, 2, 0);
	trans[0][1328]	= settr(1327,0,1329,470,470,"fsm_state = 32", 1, 2, 0);
	trans[0][1329]	= settr(1328,0,4439,471,471,"output = 6", 1, 2, 0);
	trans[0][1330]	= settr(1329,0,1331,472,0,"((input==21))", 1, 2, 0);
	trans[0][1331]	= settr(1330,0,1332,473,473,"fsm_state = 27", 1, 2, 0);
	trans[0][1332]	= settr(1331,0,4439,474,474,"output = 10", 1, 2, 0);
	trans[0][1333]	= settr(1332,0,1334,475,0,"((input==18))", 1, 2, 0);
	trans[0][1334]	= settr(1333,0,1335,476,476,"fsm_state = 26", 1, 2, 0);
	trans[0][1335]	= settr(1334,0,4439,477,477,"output = 2", 1, 2, 0);
	trans[0][1336]	= settr(1335,0,17,2,0,"else", 0, 2, 0);
	trans[0][1337]	= settr(1336,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1340]	= settr(1339,0,1462,478,0,"((fsm_state==31))", 1, 2, 0);
	T = trans[0][1462] = settr(1461,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1461,0,1341,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1461,0,1344,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1461,0,1347,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1461,0,1350,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1461,0,1353,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1461,0,1356,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1461,0,1359,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1461,0,1362,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1461,0,1365,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1461,0,1368,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1461,0,1371,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1461,0,1374,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1461,0,1460,0,0,"IF", 0, 2, 0);
	trans[0][1341]	= settr(1340,0,1342,479,0,"((input==16))", 1, 2, 0);
	trans[0][1342]	= settr(1341,0,1343,480,480,"fsm_state = 42", 1, 2, 0);
	trans[0][1343]	= settr(1342,0,4439,481,481,"output = 15", 1, 2, 0);
	trans[0][1463]	= settr(1462,0,4439,1,0,".(goto)", 0, 2, 0);
	trans[0][1344]	= settr(1343,0,1345,482,0,"((input==21))", 1, 2, 0);
	trans[0][1345]	= settr(1344,0,1346,483,483,"fsm_state = 42", 1, 2, 0);
	trans[0][1346]	= settr(1345,0,4439,484,484,"output = 15", 1, 2, 0);
	trans[0][1347]	= settr(1346,0,1348,485,0,"((input==27))", 1, 2, 0);
	trans[0][1348]	= settr(1347,0,1349,486,486,"fsm_state = 42", 1, 2, 0);
	trans[0][1349]	= settr(1348,0,4439,487,487,"output = 15", 1, 2, 0);
	trans[0][1350]	= settr(1349,0,1351,488,0,"((input==20))", 1, 2, 0);
	trans[0][1351]	= settr(1350,0,17,489,489,"fsm_state = 36", 1, 2, 0);
	trans[0][1352]	= settr(1351,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1353]	= settr(1352,0,1354,490,0,"((input==23))", 1, 2, 0);
	trans[0][1354]	= settr(1353,0,17,491,491,"fsm_state = 33", 1, 2, 0);
	trans[0][1355]	= settr(1354,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1356]	= settr(1355,0,1357,492,0,"((input==25))", 1, 2, 0);
	trans[0][1357]	= settr(1356,0,17,493,493,"fsm_state = 31", 1, 2, 0);
	trans[0][1358]	= settr(1357,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1359]	= settr(1358,0,1360,494,0,"((input==17))", 1, 2, 0);
	trans[0][1360]	= settr(1359,0,17,495,495,"fsm_state = 31", 1, 2, 0);
	trans[0][1361]	= settr(1360,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1362]	= settr(1361,0,1363,496,0,"((input==24))", 1, 2, 0);
	trans[0][1363]	= settr(1362,0,1364,497,497,"fsm_state = 31", 1, 2, 0);
	trans[0][1364]	= settr(1363,0,4439,498,498,"output = 9", 1, 2, 0);
	trans[0][1365]	= settr(1364,0,1366,499,0,"((input==26))", 1, 2, 0);
	trans[0][1366]	= settr(1365,0,17,500,500,"fsm_state = 31", 1, 2, 0);
	trans[0][1367]	= settr(1366,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1368]	= settr(1367,0,1369,501,0,"((input==18))", 1, 2, 0);
	trans[0][1369]	= settr(1368,0,17,502,502,"fsm_state = 31", 1, 2, 0);
	trans[0][1370]	= settr(1369,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1371]	= settr(1370,0,1372,503,0,"((input==19))", 1, 2, 0);
	trans[0][1372]	= settr(1371,0,17,504,504,"fsm_state = 31", 1, 2, 0);
	trans[0][1373]	= settr(1372,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1374]	= settr(1373,0,1375,505,0,"((input==22))", 1, 2, 0);
	trans[0][1375]	= settr(1374,0,1376,506,506,"fsm_state = 25", 1, 2, 0);
	trans[0][1376]	= settr(1375,0,1377,507,507,"output = 12", 1, 2, 0);
	trans[0][1377]	= settr(1376,0,1457,508,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][1457] = settr(1456,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1456,0,1450,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][1450]	= settr(1449,32,1455,509,509,"D_STEP13", 1, 2, 0);
	T = trans[0][1455] = settr(1454,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1454,0,1451,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1454,0,1453,0,0,"IF", 0, 2, 0);
	trans[0][1451]	= settr(1450,0,1,510,0,"((dealt==0))", 1, 2, 0);
	trans[0][1452]	= settr(1451,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][1456]	= settr(1455,0,1458,1,0,".(goto)", 0, 2, 0);
	trans[0][1453]	= settr(1452,0,1454,2,0,"else", 0, 2, 0);
	trans[0][1454]	= settr(1453,0,1458,1,0,"(1)", 0, 2, 0);
	trans[0][1458]	= settr(1457,0,1459,511,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][1459]	= settr(1458,0,4439,512,512,"output = 11", 1, 2, 0);
	trans[0][1460]	= settr(1459,0,17,2,0,"else", 0, 2, 0);
	trans[0][1461]	= settr(1460,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1464]	= settr(1463,0,1503,513,0,"((fsm_state==30))", 1, 2, 0);
	T = trans[0][1503] = settr(1502,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1502,0,1465,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1502,0,1468,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1502,0,1471,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1502,0,1474,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1502,0,1477,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1502,0,1480,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1502,0,1483,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1502,0,1486,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1502,0,1489,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1502,0,1492,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1502,0,1495,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1502,0,1498,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1502,0,1501,0,0,"IF", 0, 2, 0);
	trans[0][1465]	= settr(1464,0,1466,514,0,"((input==22))", 1, 2, 0);
	trans[0][1466]	= settr(1465,0,1467,515,515,"fsm_state = 40", 1, 2, 0);
	trans[0][1467]	= settr(1466,0,4439,516,516,"output = 15", 1, 2, 0);
	trans[0][1504]	= settr(1503,0,4439,1,0,".(goto)", 0, 2, 0);
	trans[0][1468]	= settr(1467,0,1469,517,0,"((input==20))", 1, 2, 0);
	trans[0][1469]	= settr(1468,0,1470,518,518,"fsm_state = 40", 1, 2, 0);
	trans[0][1470]	= settr(1469,0,4439,519,519,"output = 15", 1, 2, 0);
	trans[0][1471]	= settr(1470,0,1472,520,0,"((input==16))", 1, 2, 0);
	trans[0][1472]	= settr(1471,0,1473,521,521,"fsm_state = 40", 1, 2, 0);
	trans[0][1473]	= settr(1472,0,4439,522,522,"output = 15", 1, 2, 0);
	trans[0][1474]	= settr(1473,0,1475,523,0,"((input==25))", 1, 2, 0);
	trans[0][1475]	= settr(1474,0,1476,524,524,"fsm_state = 30", 1, 2, 0);
	trans[0][1476]	= settr(1475,0,4439,525,525,"output = 4", 1, 2, 0);
	trans[0][1477]	= settr(1476,0,1478,526,0,"((input==17))", 1, 2, 0);
	trans[0][1478]	= settr(1477,0,1479,527,527,"fsm_state = 30", 1, 2, 0);
	trans[0][1479]	= settr(1478,0,4439,528,528,"output = 13", 1, 2, 0);
	trans[0][1480]	= settr(1479,0,1481,529,0,"((input==26))", 1, 2, 0);
	trans[0][1481]	= settr(1480,0,1482,530,530,"fsm_state = 30", 1, 2, 0);
	trans[0][1482]	= settr(1481,0,4439,531,531,"output = 13", 1, 2, 0);
	trans[0][1483]	= settr(1482,0,1484,532,0,"((input==18))", 1, 2, 0);
	trans[0][1484]	= settr(1483,0,1485,533,533,"fsm_state = 30", 1, 2, 0);
	trans[0][1485]	= settr(1484,0,4439,534,534,"output = 4", 1, 2, 0);
	trans[0][1486]	= settr(1485,0,1487,535,0,"((input==23))", 1, 2, 0);
	trans[0][1487]	= settr(1486,0,1488,536,536,"fsm_state = 30", 1, 2, 0);
	trans[0][1488]	= settr(1487,0,4439,537,537,"output = 13", 1, 2, 0);
	trans[0][1489]	= settr(1488,0,1490,538,0,"((input==19))", 1, 2, 0);
	trans[0][1490]	= settr(1489,0,1491,539,539,"fsm_state = 30", 1, 2, 0);
	trans[0][1491]	= settr(1490,0,4439,540,540,"output = 13", 1, 2, 0);
	trans[0][1492]	= settr(1491,0,1493,541,0,"((input==27))", 1, 2, 0);
	trans[0][1493]	= settr(1492,0,1494,542,542,"fsm_state = 30", 1, 2, 0);
	trans[0][1494]	= settr(1493,0,4439,543,543,"output = 6", 1, 2, 0);
	trans[0][1495]	= settr(1494,0,1496,544,0,"((input==24))", 1, 2, 0);
	trans[0][1496]	= settr(1495,0,1497,545,545,"fsm_state = 24", 1, 2, 0);
	trans[0][1497]	= settr(1496,0,4439,546,546,"output = 14", 1, 2, 0);
	trans[0][1498]	= settr(1497,0,1499,547,0,"((input==21))", 1, 2, 0);
	trans[0][1499]	= settr(1498,0,1500,548,548,"fsm_state = 23", 1, 2, 0);
	trans[0][1500]	= settr(1499,0,4439,549,549,"output = 10", 1, 2, 0);
	trans[0][1501]	= settr(1500,0,17,2,0,"else", 0, 2, 0);
	trans[0][1502]	= settr(1501,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1505]	= settr(1504,0,1627,550,0,"((fsm_state==29))", 1, 2, 0);
	T = trans[0][1627] = settr(1626,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1626,0,1506,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1626,0,1509,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1626,0,1512,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1626,0,1515,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1626,0,1518,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1626,0,1521,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1626,0,1524,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1626,0,1527,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1626,0,1530,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1626,0,1533,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1626,0,1619,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1626,0,1622,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1626,0,1625,0,0,"IF", 0, 2, 0);
	trans[0][1506]	= settr(1505,0,1507,551,0,"((input==16))", 1, 2, 0);
	trans[0][1507]	= settr(1506,0,1508,552,552,"fsm_state = 40", 1, 2, 0);
	trans[0][1508]	= settr(1507,0,4439,553,553,"output = 15", 1, 2, 0);
	trans[0][1628]	= settr(1627,0,4439,1,0,".(goto)", 0, 2, 0);
	trans[0][1509]	= settr(1508,0,1510,554,0,"((input==21))", 1, 2, 0);
	trans[0][1510]	= settr(1509,0,1511,555,555,"fsm_state = 40", 1, 2, 0);
	trans[0][1511]	= settr(1510,0,4439,556,556,"output = 15", 1, 2, 0);
	trans[0][1512]	= settr(1511,0,1513,557,0,"((input==27))", 1, 2, 0);
	trans[0][1513]	= settr(1512,0,1514,558,558,"fsm_state = 40", 1, 2, 0);
	trans[0][1514]	= settr(1513,0,4439,559,559,"output = 15", 1, 2, 0);
	trans[0][1515]	= settr(1514,0,1516,560,0,"((input==20))", 1, 2, 0);
	trans[0][1516]	= settr(1515,0,17,561,561,"fsm_state = 38", 1, 2, 0);
	trans[0][1517]	= settr(1516,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1518]	= settr(1517,0,1519,562,0,"((input==17))", 1, 2, 0);
	trans[0][1519]	= settr(1518,0,1520,563,563,"fsm_state = 29", 1, 2, 0);
	trans[0][1520]	= settr(1519,0,4439,564,564,"output = 13", 1, 2, 0);
	trans[0][1521]	= settr(1520,0,1522,565,0,"((input==26))", 1, 2, 0);
	trans[0][1522]	= settr(1521,0,1523,566,566,"fsm_state = 29", 1, 2, 0);
	trans[0][1523]	= settr(1522,0,4439,567,567,"output = 13", 1, 2, 0);
	trans[0][1524]	= settr(1523,0,1525,568,0,"((input==23))", 1, 2, 0);
	trans[0][1525]	= settr(1524,0,1526,569,569,"fsm_state = 29", 1, 2, 0);
	trans[0][1526]	= settr(1525,0,4439,570,570,"output = 13", 1, 2, 0);
	trans[0][1527]	= settr(1526,0,1528,571,0,"((input==19))", 1, 2, 0);
	trans[0][1528]	= settr(1527,0,1529,572,572,"fsm_state = 29", 1, 2, 0);
	trans[0][1529]	= settr(1528,0,4439,573,573,"output = 13", 1, 2, 0);
	trans[0][1530]	= settr(1529,0,1531,574,0,"((input==24))", 1, 2, 0);
	trans[0][1531]	= settr(1530,0,1532,575,575,"fsm_state = 27", 1, 2, 0);
	trans[0][1532]	= settr(1531,0,4439,576,576,"output = 4", 1, 2, 0);
	trans[0][1533]	= settr(1532,0,1534,577,0,"((input==22))", 1, 2, 0);
	trans[0][1534]	= settr(1533,0,1535,578,578,"fsm_state = 22", 1, 2, 0);
	trans[0][1535]	= settr(1534,0,1536,579,579,"output = 12", 1, 2, 0);
	trans[0][1536]	= settr(1535,0,1616,580,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][1616] = settr(1615,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1615,0,1609,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][1609]	= settr(1608,32,1614,581,581,"D_STEP13", 1, 2, 0);
	T = trans[0][1614] = settr(1613,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1613,0,1610,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1613,0,1612,0,0,"IF", 0, 2, 0);
	trans[0][1610]	= settr(1609,0,1,582,0,"((dealt==0))", 1, 2, 0);
	trans[0][1611]	= settr(1610,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][1615]	= settr(1614,0,1617,1,0,".(goto)", 0, 2, 0);
	trans[0][1612]	= settr(1611,0,1613,2,0,"else", 0, 2, 0);
	trans[0][1613]	= settr(1612,0,1617,1,0,"(1)", 0, 2, 0);
	trans[0][1617]	= settr(1616,0,1618,583,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][1618]	= settr(1617,0,4439,584,584,"output = 11", 1, 2, 0);
	trans[0][1619]	= settr(1618,0,1620,585,0,"((input==25))", 1, 2, 0);
	trans[0][1620]	= settr(1619,0,17,586,586,"fsm_state = 21", 1, 2, 0);
	trans[0][1621]	= settr(1620,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1622]	= settr(1621,0,1623,587,0,"((input==18))", 1, 2, 0);
	trans[0][1623]	= settr(1622,0,17,588,588,"fsm_state = 20", 1, 2, 0);
	trans[0][1624]	= settr(1623,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1625]	= settr(1624,0,17,2,0,"else", 0, 2, 0);
	trans[0][1626]	= settr(1625,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1629]	= settr(1628,0,1668,589,0,"((fsm_state==28))", 1, 2, 0);
	T = trans[0][1668] = settr(1667,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1667,0,1630,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1667,0,1633,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1667,0,1636,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1667,0,1639,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1667,0,1642,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1667,0,1645,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1667,0,1648,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1667,0,1651,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1667,0,1654,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1667,0,1657,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1667,0,1660,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1667,0,1663,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1667,0,1666,0,0,"IF", 0, 2, 0);
	trans[0][1630]	= settr(1629,0,1631,590,0,"((input==16))", 1, 2, 0);
	trans[0][1631]	= settr(1630,0,1632,591,591,"fsm_state = 40", 1, 2, 0);
	trans[0][1632]	= settr(1631,0,4439,592,592,"output = 15", 1, 2, 0);
	trans[0][1669]	= settr(1668,0,4439,1,0,".(goto)", 0, 2, 0);
	trans[0][1633]	= settr(1632,0,1634,593,0,"((input==21))", 1, 2, 0);
	trans[0][1634]	= settr(1633,0,1635,594,594,"fsm_state = 40", 1, 2, 0);
	trans[0][1635]	= settr(1634,0,4439,595,595,"output = 15", 1, 2, 0);
	trans[0][1636]	= settr(1635,0,1637,596,0,"((input==27))", 1, 2, 0);
	trans[0][1637]	= settr(1636,0,1638,597,597,"fsm_state = 40", 1, 2, 0);
	trans[0][1638]	= settr(1637,0,4439,598,598,"output = 15", 1, 2, 0);
	trans[0][1639]	= settr(1638,0,1640,599,0,"((input==20))", 1, 2, 0);
	trans[0][1640]	= settr(1639,0,17,600,600,"fsm_state = 37", 1, 2, 0);
	trans[0][1641]	= settr(1640,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1642]	= settr(1641,0,1643,601,0,"((input==25))", 1, 2, 0);
	trans[0][1643]	= settr(1642,0,17,602,602,"fsm_state = 28", 1, 2, 0);
	trans[0][1644]	= settr(1643,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1645]	= settr(1644,0,1646,603,0,"((input==22))", 1, 2, 0);
	trans[0][1646]	= settr(1645,0,17,604,604,"fsm_state = 28", 1, 2, 0);
	trans[0][1647]	= settr(1646,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1648]	= settr(1647,0,1649,605,0,"((input==17))", 1, 2, 0);
	trans[0][1649]	= settr(1648,0,1650,606,606,"fsm_state = 28", 1, 2, 0);
	trans[0][1650]	= settr(1649,0,4439,607,607,"output = 13", 1, 2, 0);
	trans[0][1651]	= settr(1650,0,1652,608,0,"((input==26))", 1, 2, 0);
	trans[0][1652]	= settr(1651,0,1653,609,609,"fsm_state = 28", 1, 2, 0);
	trans[0][1653]	= settr(1652,0,4439,610,610,"output = 13", 1, 2, 0);
	trans[0][1654]	= settr(1653,0,1655,611,0,"((input==18))", 1, 2, 0);
	trans[0][1655]	= settr(1654,0,17,612,612,"fsm_state = 28", 1, 2, 0);
	trans[0][1656]	= settr(1655,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1657]	= settr(1656,0,1658,613,0,"((input==23))", 1, 2, 0);
	trans[0][1658]	= settr(1657,0,1659,614,614,"fsm_state = 28", 1, 2, 0);
	trans[0][1659]	= settr(1658,0,4439,615,615,"output = 13", 1, 2, 0);
	trans[0][1660]	= settr(1659,0,1661,616,0,"((input==19))", 1, 2, 0);
	trans[0][1661]	= settr(1660,0,1662,617,617,"fsm_state = 28", 1, 2, 0);
	trans[0][1662]	= settr(1661,0,4439,618,618,"output = 13", 1, 2, 0);
	trans[0][1663]	= settr(1662,0,1664,619,0,"((input==24))", 1, 2, 0);
	trans[0][1664]	= settr(1663,0,17,620,620,"fsm_state = 25", 1, 2, 0);
	trans[0][1665]	= settr(1664,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1666]	= settr(1665,0,17,2,0,"else", 0, 2, 0);
	trans[0][1667]	= settr(1666,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1670]	= settr(1669,0,1792,621,0,"((fsm_state==27))", 1, 2, 0);
	T = trans[0][1792] = settr(1791,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1791,0,1671,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1791,0,1674,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1791,0,1677,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1791,0,1680,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1791,0,1683,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1791,0,1686,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1791,0,1689,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1791,0,1692,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1791,0,1695,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1791,0,1698,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1791,0,1701,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1791,0,1787,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1791,0,1790,0,0,"IF", 0, 2, 0);
	trans[0][1671]	= settr(1670,0,1672,622,0,"((input==16))", 1, 2, 0);
	trans[0][1672]	= settr(1671,0,1673,623,623,"fsm_state = 42", 1, 2, 0);
	trans[0][1673]	= settr(1672,0,4439,624,624,"output = 15", 1, 2, 0);
	trans[0][1793]	= settr(1792,0,4439,1,0,".(goto)", 0, 2, 0);
	trans[0][1674]	= settr(1673,0,1675,625,0,"((input==21))", 1, 2, 0);
	trans[0][1675]	= settr(1674,0,1676,626,626,"fsm_state = 42", 1, 2, 0);
	trans[0][1676]	= settr(1675,0,4439,627,627,"output = 15", 1, 2, 0);
	trans[0][1677]	= settr(1676,0,1678,628,0,"((input==27))", 1, 2, 0);
	trans[0][1678]	= settr(1677,0,1679,629,629,"fsm_state = 42", 1, 2, 0);
	trans[0][1679]	= settr(1678,0,4439,630,630,"output = 15", 1, 2, 0);
	trans[0][1680]	= settr(1679,0,1681,631,0,"((input==20))", 1, 2, 0);
	trans[0][1681]	= settr(1680,0,17,632,632,"fsm_state = 36", 1, 2, 0);
	trans[0][1682]	= settr(1681,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1683]	= settr(1682,0,1684,633,0,"((input==23))", 1, 2, 0);
	trans[0][1684]	= settr(1683,0,1685,634,634,"fsm_state = 29", 1, 2, 0);
	trans[0][1685]	= settr(1684,0,4439,635,635,"output = 4", 1, 2, 0);
	trans[0][1686]	= settr(1685,0,1687,636,0,"((input==17))", 1, 2, 0);
	trans[0][1687]	= settr(1686,0,1688,637,637,"fsm_state = 27", 1, 2, 0);
	trans[0][1688]	= settr(1687,0,4439,638,638,"output = 4", 1, 2, 0);
	trans[0][1689]	= settr(1688,0,1690,639,0,"((input==24))", 1, 2, 0);
	trans[0][1690]	= settr(1689,0,1691,640,640,"fsm_state = 27", 1, 2, 0);
	trans[0][1691]	= settr(1690,0,4439,641,641,"output = 9", 1, 2, 0);
	trans[0][1692]	= settr(1691,0,1693,642,0,"((input==26))", 1, 2, 0);
	trans[0][1693]	= settr(1692,0,1694,643,643,"fsm_state = 27", 1, 2, 0);
	trans[0][1694]	= settr(1693,0,4439,644,644,"output = 4", 1, 2, 0);
	trans[0][1695]	= settr(1694,0,1696,645,0,"((input==19))", 1, 2, 0);
	trans[0][1696]	= settr(1695,0,1697,646,646,"fsm_state = 27", 1, 2, 0);
	trans[0][1697]	= settr(1696,0,4439,647,647,"output = 4", 1, 2, 0);
	trans[0][1698]	= settr(1697,0,1699,648,0,"((input==25))", 1, 2, 0);
	trans[0][1699]	= settr(1698,0,17,649,649,"fsm_state = 19", 1, 2, 0);
	trans[0][1700]	= settr(1699,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1701]	= settr(1700,0,1702,650,0,"((input==22))", 1, 2, 0);
	trans[0][1702]	= settr(1701,0,1703,651,651,"fsm_state = 18", 1, 2, 0);
	trans[0][1703]	= settr(1702,0,1704,652,652,"output = 12", 1, 2, 0);
	trans[0][1704]	= settr(1703,0,1784,653,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][1784] = settr(1783,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1783,0,1777,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][1777]	= settr(1776,32,1782,654,654,"D_STEP13", 1, 2, 0);
	T = trans[0][1782] = settr(1781,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1781,0,1778,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1781,0,1780,0,0,"IF", 0, 2, 0);
	trans[0][1778]	= settr(1777,0,1,655,0,"((dealt==0))", 1, 2, 0);
	trans[0][1779]	= settr(1778,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][1783]	= settr(1782,0,1785,1,0,".(goto)", 0, 2, 0);
	trans[0][1780]	= settr(1779,0,1781,2,0,"else", 0, 2, 0);
	trans[0][1781]	= settr(1780,0,1785,1,0,"(1)", 0, 2, 0);
	trans[0][1785]	= settr(1784,0,1786,656,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][1786]	= settr(1785,0,4439,657,657,"output = 11", 1, 2, 0);
	trans[0][1787]	= settr(1786,0,1788,658,0,"((input==18))", 1, 2, 0);
	trans[0][1788]	= settr(1787,0,17,659,659,"fsm_state = 17", 1, 2, 0);
	trans[0][1789]	= settr(1788,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1790]	= settr(1789,0,17,2,0,"else", 0, 2, 0);
	trans[0][1791]	= settr(1790,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1794]	= settr(1793,0,1833,660,0,"((fsm_state==26))", 1, 2, 0);
	T = trans[0][1833] = settr(1832,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1832,0,1795,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1832,0,1798,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1832,0,1801,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1832,0,1804,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1832,0,1807,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1832,0,1810,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1832,0,1813,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1832,0,1816,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1832,0,1819,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1832,0,1822,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1832,0,1825,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1832,0,1828,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1832,0,1831,0,0,"IF", 0, 2, 0);
	trans[0][1795]	= settr(1794,0,1796,661,0,"((input==22))", 1, 2, 0);
	trans[0][1796]	= settr(1795,0,1797,662,662,"fsm_state = 42", 1, 2, 0);
	trans[0][1797]	= settr(1796,0,4439,663,663,"output = 15", 1, 2, 0);
	trans[0][1834]	= settr(1833,0,4439,1,0,".(goto)", 0, 2, 0);
	trans[0][1798]	= settr(1797,0,1799,664,0,"((input==20))", 1, 2, 0);
	trans[0][1799]	= settr(1798,0,1800,665,665,"fsm_state = 42", 1, 2, 0);
	trans[0][1800]	= settr(1799,0,4439,666,666,"output = 15", 1, 2, 0);
	trans[0][1801]	= settr(1800,0,1802,667,0,"((input==16))", 1, 2, 0);
	trans[0][1802]	= settr(1801,0,1803,668,668,"fsm_state = 42", 1, 2, 0);
	trans[0][1803]	= settr(1802,0,4439,669,669,"output = 15", 1, 2, 0);
	trans[0][1804]	= settr(1803,0,1805,670,0,"((input==23))", 1, 2, 0);
	trans[0][1805]	= settr(1804,0,17,671,671,"fsm_state = 30", 1, 2, 0);
	trans[0][1806]	= settr(1805,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1807]	= settr(1806,0,1808,672,0,"((input==25))", 1, 2, 0);
	trans[0][1808]	= settr(1807,0,1809,673,673,"fsm_state = 26", 1, 2, 0);
	trans[0][1809]	= settr(1808,0,4439,674,674,"output = 4", 1, 2, 0);
	trans[0][1810]	= settr(1809,0,1811,675,0,"((input==17))", 1, 2, 0);
	trans[0][1811]	= settr(1810,0,17,676,676,"fsm_state = 26", 1, 2, 0);
	trans[0][1812]	= settr(1811,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1813]	= settr(1812,0,1814,677,0,"((input==24))", 1, 2, 0);
	trans[0][1814]	= settr(1813,0,1815,678,678,"fsm_state = 26", 1, 2, 0);
	trans[0][1815]	= settr(1814,0,4439,679,679,"output = 9", 1, 2, 0);
	trans[0][1816]	= settr(1815,0,1817,680,0,"((input==26))", 1, 2, 0);
	trans[0][1817]	= settr(1816,0,17,681,681,"fsm_state = 26", 1, 2, 0);
	trans[0][1818]	= settr(1817,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1819]	= settr(1818,0,1820,682,0,"((input==18))", 1, 2, 0);
	trans[0][1820]	= settr(1819,0,1821,683,683,"fsm_state = 26", 1, 2, 0);
	trans[0][1821]	= settr(1820,0,4439,684,684,"output = 4", 1, 2, 0);
	trans[0][1822]	= settr(1821,0,1823,685,0,"((input==19))", 1, 2, 0);
	trans[0][1823]	= settr(1822,0,17,686,686,"fsm_state = 26", 1, 2, 0);
	trans[0][1824]	= settr(1823,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1825]	= settr(1824,0,1826,687,0,"((input==27))", 1, 2, 0);
	trans[0][1826]	= settr(1825,0,1827,688,688,"fsm_state = 26", 1, 2, 0);
	trans[0][1827]	= settr(1826,0,4439,689,689,"output = 6", 1, 2, 0);
	trans[0][1828]	= settr(1827,0,1829,690,0,"((input==21))", 1, 2, 0);
	trans[0][1829]	= settr(1828,0,1830,691,691,"fsm_state = 16", 1, 2, 0);
	trans[0][1830]	= settr(1829,0,4439,692,692,"output = 10", 1, 2, 0);
	trans[0][1831]	= settr(1830,0,17,2,0,"else", 0, 2, 0);
	trans[0][1832]	= settr(1831,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1835]	= settr(1834,0,1874,693,0,"((fsm_state==25))", 1, 2, 0);
	T = trans[0][1874] = settr(1873,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1873,0,1836,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1873,0,1839,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1873,0,1842,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1873,0,1845,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1873,0,1848,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1873,0,1851,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1873,0,1854,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1873,0,1857,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1873,0,1860,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1873,0,1863,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1873,0,1866,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1873,0,1869,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1873,0,1872,0,0,"IF", 0, 2, 0);
	trans[0][1836]	= settr(1835,0,1837,694,0,"((input==16))", 1, 2, 0);
	trans[0][1837]	= settr(1836,0,1838,695,695,"fsm_state = 42", 1, 2, 0);
	trans[0][1838]	= settr(1837,0,4439,696,696,"output = 15", 1, 2, 0);
	trans[0][1875]	= settr(1874,0,4439,1,0,".(goto)", 0, 2, 0);
	trans[0][1839]	= settr(1838,0,1840,697,0,"((input==21))", 1, 2, 0);
	trans[0][1840]	= settr(1839,0,1841,698,698,"fsm_state = 42", 1, 2, 0);
	trans[0][1841]	= settr(1840,0,4439,699,699,"output = 15", 1, 2, 0);
	trans[0][1842]	= settr(1841,0,1843,700,0,"((input==27))", 1, 2, 0);
	trans[0][1843]	= settr(1842,0,1844,701,701,"fsm_state = 42", 1, 2, 0);
	trans[0][1844]	= settr(1843,0,4439,702,702,"output = 15", 1, 2, 0);
	trans[0][1845]	= settr(1844,0,1846,703,0,"((input==20))", 1, 2, 0);
	trans[0][1846]	= settr(1845,0,17,704,704,"fsm_state = 35", 1, 2, 0);
	trans[0][1847]	= settr(1846,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1848]	= settr(1847,0,1849,705,0,"((input==23))", 1, 2, 0);
	trans[0][1849]	= settr(1848,0,17,706,706,"fsm_state = 28", 1, 2, 0);
	trans[0][1850]	= settr(1849,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1851]	= settr(1850,0,1852,707,0,"((input==25))", 1, 2, 0);
	trans[0][1852]	= settr(1851,0,17,708,708,"fsm_state = 25", 1, 2, 0);
	trans[0][1853]	= settr(1852,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1854]	= settr(1853,0,1855,709,0,"((input==22))", 1, 2, 0);
	trans[0][1855]	= settr(1854,0,17,710,710,"fsm_state = 25", 1, 2, 0);
	trans[0][1856]	= settr(1855,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1857]	= settr(1856,0,1858,711,0,"((input==17))", 1, 2, 0);
	trans[0][1858]	= settr(1857,0,17,712,712,"fsm_state = 25", 1, 2, 0);
	trans[0][1859]	= settr(1858,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1860]	= settr(1859,0,1861,713,0,"((input==24))", 1, 2, 0);
	trans[0][1861]	= settr(1860,0,1862,714,714,"fsm_state = 25", 1, 2, 0);
	trans[0][1862]	= settr(1861,0,4439,715,715,"output = 9", 1, 2, 0);
	trans[0][1863]	= settr(1862,0,1864,716,0,"((input==26))", 1, 2, 0);
	trans[0][1864]	= settr(1863,0,17,717,717,"fsm_state = 25", 1, 2, 0);
	trans[0][1865]	= settr(1864,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1866]	= settr(1865,0,1867,718,0,"((input==18))", 1, 2, 0);
	trans[0][1867]	= settr(1866,0,17,719,719,"fsm_state = 25", 1, 2, 0);
	trans[0][1868]	= settr(1867,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1869]	= settr(1868,0,1870,720,0,"((input==19))", 1, 2, 0);
	trans[0][1870]	= settr(1869,0,17,721,721,"fsm_state = 25", 1, 2, 0);
	trans[0][1871]	= settr(1870,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1872]	= settr(1871,0,17,2,0,"else", 0, 2, 0);
	trans[0][1873]	= settr(1872,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1876]	= settr(1875,0,1915,722,0,"((fsm_state==24))", 1, 2, 0);
	T = trans[0][1915] = settr(1914,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1914,0,1877,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1914,0,1880,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1914,0,1883,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1914,0,1886,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1914,0,1889,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1914,0,1892,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1914,0,1895,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1914,0,1898,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1914,0,1901,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1914,0,1904,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1914,0,1907,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1914,0,1910,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1914,0,1913,0,0,"IF", 0, 2, 0);
	trans[0][1877]	= settr(1876,0,1878,723,0,"((input==22))", 1, 2, 0);
	trans[0][1878]	= settr(1877,0,1879,724,724,"fsm_state = 42", 1, 2, 0);
	trans[0][1879]	= settr(1878,0,4439,725,725,"output = 15", 1, 2, 0);
	trans[0][1916]	= settr(1915,0,4439,1,0,".(goto)", 0, 2, 0);
	trans[0][1880]	= settr(1879,0,1881,726,0,"((input==20))", 1, 2, 0);
	trans[0][1881]	= settr(1880,0,1882,727,727,"fsm_state = 42", 1, 2, 0);
	trans[0][1882]	= settr(1881,0,4439,728,728,"output = 15", 1, 2, 0);
	trans[0][1883]	= settr(1882,0,1884,729,0,"((input==16))", 1, 2, 0);
	trans[0][1884]	= settr(1883,0,1885,730,730,"fsm_state = 42", 1, 2, 0);
	trans[0][1885]	= settr(1884,0,4439,731,731,"output = 15", 1, 2, 0);
	trans[0][1886]	= settr(1885,0,1887,732,0,"((input==25))", 1, 2, 0);
	trans[0][1887]	= settr(1886,0,1888,733,733,"fsm_state = 24", 1, 2, 0);
	trans[0][1888]	= settr(1887,0,4439,734,734,"output = 4", 1, 2, 0);
	trans[0][1889]	= settr(1888,0,1890,735,0,"((input==17))", 1, 2, 0);
	trans[0][1890]	= settr(1889,0,1891,736,736,"fsm_state = 24", 1, 2, 0);
	trans[0][1891]	= settr(1890,0,4439,737,737,"output = 5", 1, 2, 0);
	trans[0][1892]	= settr(1891,0,1893,738,0,"((input==24))", 1, 2, 0);
	trans[0][1893]	= settr(1892,0,1894,739,739,"fsm_state = 24", 1, 2, 0);
	trans[0][1894]	= settr(1893,0,4439,740,740,"output = 9", 1, 2, 0);
	trans[0][1895]	= settr(1894,0,1896,741,0,"((input==18))", 1, 2, 0);
	trans[0][1896]	= settr(1895,0,1897,742,742,"fsm_state = 24", 1, 2, 0);
	trans[0][1897]	= settr(1896,0,4439,743,743,"output = 4", 1, 2, 0);
	trans[0][1898]	= settr(1897,0,1899,744,0,"((input==27))", 1, 2, 0);
	trans[0][1899]	= settr(1898,0,1900,745,745,"fsm_state = 24", 1, 2, 0);
	trans[0][1900]	= settr(1899,0,4439,746,746,"output = 6", 1, 2, 0);
	trans[0][1901]	= settr(1900,0,1902,747,0,"((input==19))", 1, 2, 0);
	trans[0][1902]	= settr(1901,0,1903,748,748,"fsm_state = 15", 1, 2, 0);
	trans[0][1903]	= settr(1902,0,4439,749,749,"output = 8", 1, 2, 0);
	trans[0][1904]	= settr(1903,0,1905,750,0,"((input==21))", 1, 2, 0);
	trans[0][1905]	= settr(1904,0,1906,751,751,"fsm_state = 14", 1, 2, 0);
	trans[0][1906]	= settr(1905,0,4439,752,752,"output = 10", 1, 2, 0);
	trans[0][1907]	= settr(1906,0,1908,753,0,"((input==23))", 1, 2, 0);
	trans[0][1908]	= settr(1907,0,1909,754,754,"fsm_state = 13", 1, 2, 0);
	trans[0][1909]	= settr(1908,0,4439,755,755,"output = 8", 1, 2, 0);
	trans[0][1910]	= settr(1909,0,1911,756,0,"((input==26))", 1, 2, 0);
	trans[0][1911]	= settr(1910,0,17,757,757,"fsm_state = 12", 1, 2, 0);
	trans[0][1912]	= settr(1911,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1913]	= settr(1912,0,17,2,0,"else", 0, 2, 0);
	trans[0][1914]	= settr(1913,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1917]	= settr(1916,0,2039,758,0,"((fsm_state==23))", 1, 2, 0);
	T = trans[0][2039] = settr(2038,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2038,0,1918,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2038,0,1921,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2038,0,1924,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2038,0,1927,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2038,0,1930,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2038,0,1933,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2038,0,1936,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2038,0,1939,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2038,0,1942,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2038,0,1945,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2038,0,1948,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2038,0,1951,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2038,0,2037,0,0,"IF", 0, 2, 0);
	trans[0][1918]	= settr(1917,0,1919,759,0,"((input==16))", 1, 2, 0);
	trans[0][1919]	= settr(1918,0,1920,760,760,"fsm_state = 40", 1, 2, 0);
	trans[0][1920]	= settr(1919,0,4439,761,761,"output = 15", 1, 2, 0);
	trans[0][2040]	= settr(2039,0,4439,1,0,".(goto)", 0, 2, 0);
	trans[0][1921]	= settr(1920,0,1922,762,0,"((input==21))", 1, 2, 0);
	trans[0][1922]	= settr(1921,0,1923,763,763,"fsm_state = 40", 1, 2, 0);
	trans[0][1923]	= settr(1922,0,4439,764,764,"output = 15", 1, 2, 0);
	trans[0][1924]	= settr(1923,0,1925,765,0,"((input==27))", 1, 2, 0);
	trans[0][1925]	= settr(1924,0,1926,766,766,"fsm_state = 40", 1, 2, 0);
	trans[0][1926]	= settr(1925,0,4439,767,767,"output = 15", 1, 2, 0);
	trans[0][1927]	= settr(1926,0,1928,768,0,"((input==20))", 1, 2, 0);
	trans[0][1928]	= settr(1927,0,17,769,769,"fsm_state = 38", 1, 2, 0);
	trans[0][1929]	= settr(1928,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1930]	= settr(1929,0,1931,770,0,"((input==25))", 1, 2, 0);
	trans[0][1931]	= settr(1930,0,1932,771,771,"fsm_state = 23", 1, 2, 0);
	trans[0][1932]	= settr(1931,0,4439,772,772,"output = 4", 1, 2, 0);
	trans[0][1933]	= settr(1932,0,1934,773,0,"((input==17))", 1, 2, 0);
	trans[0][1934]	= settr(1933,0,1935,774,774,"fsm_state = 23", 1, 2, 0);
	trans[0][1935]	= settr(1934,0,4439,775,775,"output = 13", 1, 2, 0);
	trans[0][1936]	= settr(1935,0,1937,776,0,"((input==26))", 1, 2, 0);
	trans[0][1937]	= settr(1936,0,1938,777,777,"fsm_state = 23", 1, 2, 0);
	trans[0][1938]	= settr(1937,0,4439,778,778,"output = 13", 1, 2, 0);
	trans[0][1939]	= settr(1938,0,1940,779,0,"((input==18))", 1, 2, 0);
	trans[0][1940]	= settr(1939,0,1941,780,780,"fsm_state = 23", 1, 2, 0);
	trans[0][1941]	= settr(1940,0,4439,781,781,"output = 4", 1, 2, 0);
	trans[0][1942]	= settr(1941,0,1943,782,0,"((input==23))", 1, 2, 0);
	trans[0][1943]	= settr(1942,0,1944,783,783,"fsm_state = 23", 1, 2, 0);
	trans[0][1944]	= settr(1943,0,4439,784,784,"output = 13", 1, 2, 0);
	trans[0][1945]	= settr(1944,0,1946,785,0,"((input==19))", 1, 2, 0);
	trans[0][1946]	= settr(1945,0,1947,786,786,"fsm_state = 23", 1, 2, 0);
	trans[0][1947]	= settr(1946,0,4439,787,787,"output = 13", 1, 2, 0);
	trans[0][1948]	= settr(1947,0,1949,788,0,"((input==24))", 1, 2, 0);
	trans[0][1949]	= settr(1948,0,17,789,789,"fsm_state = 11", 1, 2, 0);
	trans[0][1950]	= settr(1949,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][1951]	= settr(1950,0,1952,790,0,"((input==22))", 1, 2, 0);
	trans[0][1952]	= settr(1951,0,1953,791,791,"fsm_state = 10", 1, 2, 0);
	trans[0][1953]	= settr(1952,0,1954,792,792,"output = 12", 1, 2, 0);
	trans[0][1954]	= settr(1953,0,2034,793,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2034] = settr(2033,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2033,0,2027,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2027]	= settr(2026,32,2032,794,794,"D_STEP13", 1, 2, 0);
	T = trans[0][2032] = settr(2031,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2031,0,2028,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2031,0,2030,0,0,"IF", 0, 2, 0);
	trans[0][2028]	= settr(2027,0,1,795,0,"((dealt==0))", 1, 2, 0);
	trans[0][2029]	= settr(2028,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2033]	= settr(2032,0,2035,1,0,".(goto)", 0, 2, 0);
	trans[0][2030]	= settr(2029,0,2031,2,0,"else", 0, 2, 0);
	trans[0][2031]	= settr(2030,0,2035,1,0,"(1)", 0, 2, 0);
	trans[0][2035]	= settr(2034,0,2036,796,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2036]	= settr(2035,0,4439,797,797,"output = 11", 1, 2, 0);
	trans[0][2037]	= settr(2036,0,17,2,0,"else", 0, 2, 0);
	trans[0][2038]	= settr(2037,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2041]	= settr(2040,0,2080,798,0,"((fsm_state==22))", 1, 2, 0);
	T = trans[0][2080] = settr(2079,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2079,0,2042,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2079,0,2045,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2079,0,2048,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2079,0,2051,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2079,0,2054,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2079,0,2057,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2079,0,2060,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2079,0,2063,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2079,0,2066,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2079,0,2069,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2079,0,2072,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2079,0,2075,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2079,0,2078,0,0,"IF", 0, 2, 0);
	trans[0][2042]	= settr(2041,0,2043,799,0,"((input==16))", 1, 2, 0);
	trans[0][2043]	= settr(2042,0,2044,800,800,"fsm_state = 40", 1, 2, 0);
	trans[0][2044]	= settr(2043,0,4439,801,801,"output = 15", 1, 2, 0);
	trans[0][2081]	= settr(2080,0,4439,1,0,".(goto)", 0, 2, 0);
	trans[0][2045]	= settr(2044,0,2046,802,0,"((input==21))", 1, 2, 0);
	trans[0][2046]	= settr(2045,0,2047,803,803,"fsm_state = 40", 1, 2, 0);
	trans[0][2047]	= settr(2046,0,4439,804,804,"output = 15", 1, 2, 0);
	trans[0][2048]	= settr(2047,0,2049,805,0,"((input==27))", 1, 2, 0);
	trans[0][2049]	= settr(2048,0,2050,806,806,"fsm_state = 40", 1, 2, 0);
	trans[0][2050]	= settr(2049,0,4439,807,807,"output = 15", 1, 2, 0);
	trans[0][2051]	= settr(2050,0,2052,808,0,"((input==20))", 1, 2, 0);
	trans[0][2052]	= settr(2051,0,17,809,809,"fsm_state = 34", 1, 2, 0);
	trans[0][2053]	= settr(2052,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2054]	= settr(2053,0,2055,810,0,"((input==25))", 1, 2, 0);
	trans[0][2055]	= settr(2054,0,2056,811,811,"fsm_state = 22", 1, 2, 0);
	trans[0][2056]	= settr(2055,0,4439,812,812,"output = 3", 1, 2, 0);
	trans[0][2057]	= settr(2056,0,2058,813,0,"((input==22))", 1, 2, 0);
	trans[0][2058]	= settr(2057,0,17,814,814,"fsm_state = 22", 1, 2, 0);
	trans[0][2059]	= settr(2058,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2060]	= settr(2059,0,2061,815,0,"((input==17))", 1, 2, 0);
	trans[0][2061]	= settr(2060,0,2062,816,816,"fsm_state = 22", 1, 2, 0);
	trans[0][2062]	= settr(2061,0,4439,817,817,"output = 13", 1, 2, 0);
	trans[0][2063]	= settr(2062,0,2064,818,0,"((input==26))", 1, 2, 0);
	trans[0][2064]	= settr(2063,0,2065,819,819,"fsm_state = 22", 1, 2, 0);
	trans[0][2065]	= settr(2064,0,4439,820,820,"output = 13", 1, 2, 0);
	trans[0][2066]	= settr(2065,0,2067,821,0,"((input==23))", 1, 2, 0);
	trans[0][2067]	= settr(2066,0,2068,822,822,"fsm_state = 22", 1, 2, 0);
	trans[0][2068]	= settr(2067,0,4439,823,823,"output = 13", 1, 2, 0);
	trans[0][2069]	= settr(2068,0,2070,824,0,"((input==19))", 1, 2, 0);
	trans[0][2070]	= settr(2069,0,2071,825,825,"fsm_state = 22", 1, 2, 0);
	trans[0][2071]	= settr(2070,0,4439,826,826,"output = 13", 1, 2, 0);
	trans[0][2072]	= settr(2071,0,2073,827,0,"((input==24))", 1, 2, 0);
	trans[0][2073]	= settr(2072,0,2074,828,828,"fsm_state = 18", 1, 2, 0);
	trans[0][2074]	= settr(2073,0,4439,829,829,"output = 4", 1, 2, 0);
	trans[0][2075]	= settr(2074,0,2076,830,0,"((input==18))", 1, 2, 0);
	trans[0][2076]	= settr(2075,0,2077,831,831,"fsm_state = 10", 1, 2, 0);
	trans[0][2077]	= settr(2076,0,4439,832,832,"output = 2", 1, 2, 0);
	trans[0][2078]	= settr(2077,0,17,2,0,"else", 0, 2, 0);
	trans[0][2079]	= settr(2078,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2082]	= settr(2081,0,2287,833,0,"((fsm_state==21))", 1, 2, 0);
	T = trans[0][2287] = settr(2286,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2286,0,2083,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2286,0,2086,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2286,0,2089,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2286,0,2092,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2286,0,2095,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2286,0,2264,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2286,0,2267,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2286,0,2270,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2286,0,2273,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2286,0,2276,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2286,0,2279,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2286,0,2282,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2286,0,2285,0,0,"IF", 0, 2, 0);
	trans[0][2083]	= settr(2082,0,2084,834,0,"((input==16))", 1, 2, 0);
	trans[0][2084]	= settr(2083,0,2085,835,835,"fsm_state = 40", 1, 2, 0);
	trans[0][2085]	= settr(2084,0,4439,836,836,"output = 15", 1, 2, 0);
	trans[0][2288]	= settr(2287,0,4439,1,0,".(goto)", 0, 2, 0);
	trans[0][2086]	= settr(2085,0,2087,837,0,"((input==21))", 1, 2, 0);
	trans[0][2087]	= settr(2086,0,2088,838,838,"fsm_state = 40", 1, 2, 0);
	trans[0][2088]	= settr(2087,0,4439,839,839,"output = 15", 1, 2, 0);
	trans[0][2089]	= settr(2088,0,2090,840,0,"((input==27))", 1, 2, 0);
	trans[0][2090]	= settr(2089,0,2091,841,841,"fsm_state = 40", 1, 2, 0);
	trans[0][2091]	= settr(2090,0,4439,842,842,"output = 15", 1, 2, 0);
	trans[0][2092]	= settr(2091,0,2093,843,0,"((input==20))", 1, 2, 0);
	trans[0][2093]	= settr(2092,0,17,844,844,"fsm_state = 38", 1, 2, 0);
	trans[0][2094]	= settr(2093,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2095]	= settr(2094,0,2096,845,0,"((input==22))", 1, 2, 0);
	trans[0][2096]	= settr(2095,0,2097,846,846,"fsm_state = 22", 1, 2, 0);
	trans[0][2097]	= settr(2096,0,2098,847,847,"output = 12", 1, 2, 0);
	trans[0][2098]	= settr(2097,0,2178,848,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2178] = settr(2177,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2177,0,2171,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2171]	= settr(2170,32,2176,849,849,"D_STEP13", 1, 2, 0);
	T = trans[0][2176] = settr(2175,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2175,0,2172,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2175,0,2174,0,0,"IF", 0, 2, 0);
	trans[0][2172]	= settr(2171,0,1,850,0,"((dealt==0))", 1, 2, 0);
	trans[0][2173]	= settr(2172,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2177]	= settr(2176,0,2179,1,0,".(goto)", 0, 2, 0);
	trans[0][2174]	= settr(2173,0,2175,2,0,"else", 0, 2, 0);
	trans[0][2175]	= settr(2174,0,2179,1,0,"(1)", 0, 2, 0);
	trans[0][2179]	= settr(2178,0,2180,851,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2180]	= settr(2179,0,2181,852,852,"output = 11", 1, 2, 0);
	trans[0][2181]	= settr(2180,0,2261,853,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2261] = settr(2260,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2260,0,2254,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2254]	= settr(2253,32,2259,854,854,"D_STEP13", 1, 2, 0);
	T = trans[0][2259] = settr(2258,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2258,0,2255,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2258,0,2257,0,0,"IF", 0, 2, 0);
	trans[0][2255]	= settr(2254,0,1,855,0,"((dealt==0))", 1, 2, 0);
	trans[0][2256]	= settr(2255,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2260]	= settr(2259,0,2262,1,0,".(goto)", 0, 2, 0);
	trans[0][2257]	= settr(2256,0,2258,2,0,"else", 0, 2, 0);
	trans[0][2258]	= settr(2257,0,2262,1,0,"(1)", 0, 2, 0);
	trans[0][2262]	= settr(2261,0,2263,856,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2263]	= settr(2262,0,4439,857,857,"output = 7", 1, 2, 0);
	trans[0][2264]	= settr(2263,0,2265,858,0,"((input==25))", 1, 2, 0);
	trans[0][2265]	= settr(2264,0,17,859,859,"fsm_state = 21", 1, 2, 0);
	trans[0][2266]	= settr(2265,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2267]	= settr(2266,0,2268,860,0,"((input==17))", 1, 2, 0);
	trans[0][2268]	= settr(2267,0,2269,861,861,"fsm_state = 21", 1, 2, 0);
	trans[0][2269]	= settr(2268,0,4439,862,862,"output = 13", 1, 2, 0);
	trans[0][2270]	= settr(2269,0,2271,863,0,"((input==26))", 1, 2, 0);
	trans[0][2271]	= settr(2270,0,2272,864,864,"fsm_state = 21", 1, 2, 0);
	trans[0][2272]	= settr(2271,0,4439,865,865,"output = 13", 1, 2, 0);
	trans[0][2273]	= settr(2272,0,2274,866,0,"((input==23))", 1, 2, 0);
	trans[0][2274]	= settr(2273,0,2275,867,867,"fsm_state = 21", 1, 2, 0);
	trans[0][2275]	= settr(2274,0,4439,868,868,"output = 13", 1, 2, 0);
	trans[0][2276]	= settr(2275,0,2277,869,0,"((input==19))", 1, 2, 0);
	trans[0][2277]	= settr(2276,0,2278,870,870,"fsm_state = 21", 1, 2, 0);
	trans[0][2278]	= settr(2277,0,4439,871,871,"output = 13", 1, 2, 0);
	trans[0][2279]	= settr(2278,0,2280,872,0,"((input==18))", 1, 2, 0);
	trans[0][2280]	= settr(2279,0,17,873,873,"fsm_state = 20", 1, 2, 0);
	trans[0][2281]	= settr(2280,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2282]	= settr(2281,0,2283,874,0,"((input==24))", 1, 2, 0);
	trans[0][2283]	= settr(2282,0,2284,875,875,"fsm_state = 19", 1, 2, 0);
	trans[0][2284]	= settr(2283,0,4439,876,876,"output = 4", 1, 2, 0);
	trans[0][2285]	= settr(2284,0,17,2,0,"else", 0, 2, 0);
	trans[0][2286]	= settr(2285,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2289]	= settr(2288,0,2494,877,0,"((fsm_state==20))", 1, 2, 0);
	T = trans[0][2494] = settr(2493,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2493,0,2290,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2493,0,2293,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2493,0,2296,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2493,0,2299,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2493,0,2302,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2493,0,2305,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2493,0,2308,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2493,0,2311,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2493,0,2314,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2493,0,2317,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2493,0,2320,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2493,0,2323,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2493,0,2492,0,0,"IF", 0, 2, 0);
	trans[0][2290]	= settr(2289,0,2291,878,0,"((input==16))", 1, 2, 0);
	trans[0][2291]	= settr(2290,0,2292,879,879,"fsm_state = 40", 1, 2, 0);
	trans[0][2292]	= settr(2291,0,4439,880,880,"output = 15", 1, 2, 0);
	trans[0][2495]	= settr(2494,0,4439,1,0,".(goto)", 0, 2, 0);
	trans[0][2293]	= settr(2292,0,2294,881,0,"((input==21))", 1, 2, 0);
	trans[0][2294]	= settr(2293,0,2295,882,882,"fsm_state = 40", 1, 2, 0);
	trans[0][2295]	= settr(2294,0,4439,883,883,"output = 15", 1, 2, 0);
	trans[0][2296]	= settr(2295,0,2297,884,0,"((input==27))", 1, 2, 0);
	trans[0][2297]	= settr(2296,0,2298,885,885,"fsm_state = 40", 1, 2, 0);
	trans[0][2298]	= settr(2297,0,4439,886,886,"output = 15", 1, 2, 0);
	trans[0][2299]	= settr(2298,0,2300,887,0,"((input==20))", 1, 2, 0);
	trans[0][2300]	= settr(2299,0,17,888,888,"fsm_state = 38", 1, 2, 0);
	trans[0][2301]	= settr(2300,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2302]	= settr(2301,0,2303,889,0,"((input==25))", 1, 2, 0);
	trans[0][2303]	= settr(2302,0,2304,890,890,"fsm_state = 20", 1, 2, 0);
	trans[0][2304]	= settr(2303,0,4439,891,891,"output = 4", 1, 2, 0);
	trans[0][2305]	= settr(2304,0,2306,892,0,"((input==17))", 1, 2, 0);
	trans[0][2306]	= settr(2305,0,2307,893,893,"fsm_state = 20", 1, 2, 0);
	trans[0][2307]	= settr(2306,0,4439,894,894,"output = 13", 1, 2, 0);
	trans[0][2308]	= settr(2307,0,2309,895,0,"((input==26))", 1, 2, 0);
	trans[0][2309]	= settr(2308,0,2310,896,896,"fsm_state = 20", 1, 2, 0);
	trans[0][2310]	= settr(2309,0,4439,897,897,"output = 13", 1, 2, 0);
	trans[0][2311]	= settr(2310,0,2312,898,0,"((input==18))", 1, 2, 0);
	trans[0][2312]	= settr(2311,0,2313,899,899,"fsm_state = 20", 1, 2, 0);
	trans[0][2313]	= settr(2312,0,4439,900,900,"output = 4", 1, 2, 0);
	trans[0][2314]	= settr(2313,0,2315,901,0,"((input==23))", 1, 2, 0);
	trans[0][2315]	= settr(2314,0,2316,902,902,"fsm_state = 20", 1, 2, 0);
	trans[0][2316]	= settr(2315,0,4439,903,903,"output = 13", 1, 2, 0);
	trans[0][2317]	= settr(2316,0,2318,904,0,"((input==19))", 1, 2, 0);
	trans[0][2318]	= settr(2317,0,2319,905,905,"fsm_state = 20", 1, 2, 0);
	trans[0][2319]	= settr(2318,0,4439,906,906,"output = 13", 1, 2, 0);
	trans[0][2320]	= settr(2319,0,2321,907,0,"((input==24))", 1, 2, 0);
	trans[0][2321]	= settr(2320,0,17,908,908,"fsm_state = 11", 1, 2, 0);
	trans[0][2322]	= settr(2321,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2323]	= settr(2322,0,2324,909,0,"((input==22))", 1, 2, 0);
	trans[0][2324]	= settr(2323,0,2325,910,910,"fsm_state = 10", 1, 2, 0);
	trans[0][2325]	= settr(2324,0,2326,911,911,"output = 12", 1, 2, 0);
	trans[0][2326]	= settr(2325,0,2406,912,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2406] = settr(2405,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2405,0,2399,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2399]	= settr(2398,32,2404,913,913,"D_STEP13", 1, 2, 0);
	T = trans[0][2404] = settr(2403,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2403,0,2400,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2403,0,2402,0,0,"IF", 0, 2, 0);
	trans[0][2400]	= settr(2399,0,1,914,0,"((dealt==0))", 1, 2, 0);
	trans[0][2401]	= settr(2400,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2405]	= settr(2404,0,2407,1,0,".(goto)", 0, 2, 0);
	trans[0][2402]	= settr(2401,0,2403,2,0,"else", 0, 2, 0);
	trans[0][2403]	= settr(2402,0,2407,1,0,"(1)", 0, 2, 0);
	trans[0][2407]	= settr(2406,0,2408,915,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2408]	= settr(2407,0,2409,916,916,"output = 11", 1, 2, 0);
	trans[0][2409]	= settr(2408,0,2489,917,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2489] = settr(2488,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2488,0,2482,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2482]	= settr(2481,32,2487,918,918,"D_STEP13", 1, 2, 0);
	T = trans[0][2487] = settr(2486,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2486,0,2483,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2486,0,2485,0,0,"IF", 0, 2, 0);
	trans[0][2483]	= settr(2482,0,1,919,0,"((dealt==0))", 1, 2, 0);
	trans[0][2484]	= settr(2483,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2488]	= settr(2487,0,2490,1,0,".(goto)", 0, 2, 0);
	trans[0][2485]	= settr(2484,0,2486,2,0,"else", 0, 2, 0);
	trans[0][2486]	= settr(2485,0,2490,1,0,"(1)", 0, 2, 0);
	trans[0][2490]	= settr(2489,0,2491,920,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2491]	= settr(2490,0,4439,921,921,"output = 7", 1, 2, 0);
	trans[0][2492]	= settr(2491,0,17,2,0,"else", 0, 2, 0);
	trans[0][2493]	= settr(2492,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2496]	= settr(2495,0,2701,922,0,"((fsm_state==19))", 1, 2, 0);
	T = trans[0][2701] = settr(2700,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2700,0,2497,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2700,0,2500,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2700,0,2503,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2700,0,2506,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2700,0,2509,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2700,0,2512,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2700,0,2515,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2700,0,2518,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2700,0,2521,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2700,0,2524,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2700,0,2527,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2700,0,2696,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2700,0,2699,0,0,"IF", 0, 2, 0);
	trans[0][2497]	= settr(2496,0,2498,923,0,"((input==16))", 1, 2, 0);
	trans[0][2498]	= settr(2497,0,2499,924,924,"fsm_state = 42", 1, 2, 0);
	trans[0][2499]	= settr(2498,0,4439,925,925,"output = 15", 1, 2, 0);
	trans[0][2702]	= settr(2701,0,4439,1,0,".(goto)", 0, 2, 0);
	trans[0][2500]	= settr(2499,0,2501,926,0,"((input==21))", 1, 2, 0);
	trans[0][2501]	= settr(2500,0,2502,927,927,"fsm_state = 42", 1, 2, 0);
	trans[0][2502]	= settr(2501,0,4439,928,928,"output = 15", 1, 2, 0);
	trans[0][2503]	= settr(2502,0,2504,929,0,"((input==27))", 1, 2, 0);
	trans[0][2504]	= settr(2503,0,2505,930,930,"fsm_state = 42", 1, 2, 0);
	trans[0][2505]	= settr(2504,0,4439,931,931,"output = 15", 1, 2, 0);
	trans[0][2506]	= settr(2505,0,2507,932,0,"((input==20))", 1, 2, 0);
	trans[0][2507]	= settr(2506,0,17,933,933,"fsm_state = 36", 1, 2, 0);
	trans[0][2508]	= settr(2507,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2509]	= settr(2508,0,2510,934,0,"((input==23))", 1, 2, 0);
	trans[0][2510]	= settr(2509,0,2511,935,935,"fsm_state = 21", 1, 2, 0);
	trans[0][2511]	= settr(2510,0,4439,936,936,"output = 4", 1, 2, 0);
	trans[0][2512]	= settr(2511,0,2513,937,0,"((input==25))", 1, 2, 0);
	trans[0][2513]	= settr(2512,0,17,938,938,"fsm_state = 19", 1, 2, 0);
	trans[0][2514]	= settr(2513,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2515]	= settr(2514,0,2516,939,0,"((input==17))", 1, 2, 0);
	trans[0][2516]	= settr(2515,0,2517,940,940,"fsm_state = 19", 1, 2, 0);
	trans[0][2517]	= settr(2516,0,4439,941,941,"output = 4", 1, 2, 0);
	trans[0][2518]	= settr(2517,0,2519,942,0,"((input==24))", 1, 2, 0);
	trans[0][2519]	= settr(2518,0,2520,943,943,"fsm_state = 19", 1, 2, 0);
	trans[0][2520]	= settr(2519,0,4439,944,944,"output = 9", 1, 2, 0);
	trans[0][2521]	= settr(2520,0,2522,945,0,"((input==26))", 1, 2, 0);
	trans[0][2522]	= settr(2521,0,2523,946,946,"fsm_state = 19", 1, 2, 0);
	trans[0][2523]	= settr(2522,0,4439,947,947,"output = 4", 1, 2, 0);
	trans[0][2524]	= settr(2523,0,2525,948,0,"((input==19))", 1, 2, 0);
	trans[0][2525]	= settr(2524,0,2526,949,949,"fsm_state = 19", 1, 2, 0);
	trans[0][2526]	= settr(2525,0,4439,950,950,"output = 4", 1, 2, 0);
	trans[0][2527]	= settr(2526,0,2528,951,0,"((input==22))", 1, 2, 0);
	trans[0][2528]	= settr(2527,0,2529,952,952,"fsm_state = 18", 1, 2, 0);
	trans[0][2529]	= settr(2528,0,2530,953,953,"output = 12", 1, 2, 0);
	trans[0][2530]	= settr(2529,0,2610,954,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2610] = settr(2609,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2609,0,2603,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2603]	= settr(2602,32,2608,955,955,"D_STEP13", 1, 2, 0);
	T = trans[0][2608] = settr(2607,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2607,0,2604,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2607,0,2606,0,0,"IF", 0, 2, 0);
	trans[0][2604]	= settr(2603,0,1,956,0,"((dealt==0))", 1, 2, 0);
	trans[0][2605]	= settr(2604,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2609]	= settr(2608,0,2611,1,0,".(goto)", 0, 2, 0);
	trans[0][2606]	= settr(2605,0,2607,2,0,"else", 0, 2, 0);
	trans[0][2607]	= settr(2606,0,2611,1,0,"(1)", 0, 2, 0);
	trans[0][2611]	= settr(2610,0,2612,957,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2612]	= settr(2611,0,2613,958,958,"output = 11", 1, 2, 0);
	trans[0][2613]	= settr(2612,0,2693,959,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2693] = settr(2692,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2692,0,2686,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2686]	= settr(2685,32,2691,960,960,"D_STEP13", 1, 2, 0);
	T = trans[0][2691] = settr(2690,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2690,0,2687,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2690,0,2689,0,0,"IF", 0, 2, 0);
	trans[0][2687]	= settr(2686,0,1,961,0,"((dealt==0))", 1, 2, 0);
	trans[0][2688]	= settr(2687,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2692]	= settr(2691,0,2694,1,0,".(goto)", 0, 2, 0);
	trans[0][2689]	= settr(2688,0,2690,2,0,"else", 0, 2, 0);
	trans[0][2690]	= settr(2689,0,2694,1,0,"(1)", 0, 2, 0);
	trans[0][2694]	= settr(2693,0,2695,962,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2695]	= settr(2694,0,4439,963,963,"output = 7", 1, 2, 0);
	trans[0][2696]	= settr(2695,0,2697,964,0,"((input==18))", 1, 2, 0);
	trans[0][2697]	= settr(2696,0,17,965,965,"fsm_state = 17", 1, 2, 0);
	trans[0][2698]	= settr(2697,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2699]	= settr(2698,0,17,2,0,"else", 0, 2, 0);
	trans[0][2700]	= settr(2699,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2703]	= settr(2702,0,2742,966,0,"((fsm_state==18))", 1, 2, 0);
	T = trans[0][2742] = settr(2741,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2741,0,2704,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2741,0,2707,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2741,0,2710,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2741,0,2713,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2741,0,2716,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2741,0,2719,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2741,0,2722,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2741,0,2725,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2741,0,2728,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2741,0,2731,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2741,0,2734,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2741,0,2737,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2741,0,2740,0,0,"IF", 0, 2, 0);
	trans[0][2704]	= settr(2703,0,2705,967,0,"((input==16))", 1, 2, 0);
	trans[0][2705]	= settr(2704,0,2706,968,968,"fsm_state = 42", 1, 2, 0);
	trans[0][2706]	= settr(2705,0,4439,969,969,"output = 15", 1, 2, 0);
	trans[0][2743]	= settr(2742,0,4439,1,0,".(goto)", 0, 2, 0);
	trans[0][2707]	= settr(2706,0,2708,970,0,"((input==21))", 1, 2, 0);
	trans[0][2708]	= settr(2707,0,2709,971,971,"fsm_state = 42", 1, 2, 0);
	trans[0][2709]	= settr(2708,0,4439,972,972,"output = 15", 1, 2, 0);
	trans[0][2710]	= settr(2709,0,2711,973,0,"((input==27))", 1, 2, 0);
	trans[0][2711]	= settr(2710,0,2712,974,974,"fsm_state = 42", 1, 2, 0);
	trans[0][2712]	= settr(2711,0,4439,975,975,"output = 15", 1, 2, 0);
	trans[0][2713]	= settr(2712,0,2714,976,0,"((input==20))", 1, 2, 0);
	trans[0][2714]	= settr(2713,0,17,977,977,"fsm_state = 32", 1, 2, 0);
	trans[0][2715]	= settr(2714,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2716]	= settr(2715,0,2717,978,0,"((input==23))", 1, 2, 0);
	trans[0][2717]	= settr(2716,0,2718,979,979,"fsm_state = 22", 1, 2, 0);
	trans[0][2718]	= settr(2717,0,4439,980,980,"output = 4", 1, 2, 0);
	trans[0][2719]	= settr(2718,0,2720,981,0,"((input==25))", 1, 2, 0);
	trans[0][2720]	= settr(2719,0,2721,982,982,"fsm_state = 18", 1, 2, 0);
	trans[0][2721]	= settr(2720,0,4439,983,983,"output = 3", 1, 2, 0);
	trans[0][2722]	= settr(2721,0,2723,984,0,"((input==22))", 1, 2, 0);
	trans[0][2723]	= settr(2722,0,17,985,985,"fsm_state = 18", 1, 2, 0);
	trans[0][2724]	= settr(2723,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2725]	= settr(2724,0,2726,986,0,"((input==17))", 1, 2, 0);
	trans[0][2726]	= settr(2725,0,2727,987,987,"fsm_state = 18", 1, 2, 0);
	trans[0][2727]	= settr(2726,0,4439,988,988,"output = 4", 1, 2, 0);
	trans[0][2728]	= settr(2727,0,2729,989,0,"((input==24))", 1, 2, 0);
	trans[0][2729]	= settr(2728,0,2730,990,990,"fsm_state = 18", 1, 2, 0);
	trans[0][2730]	= settr(2729,0,4439,991,991,"output = 9", 1, 2, 0);
	trans[0][2731]	= settr(2730,0,2732,992,0,"((input==26))", 1, 2, 0);
	trans[0][2732]	= settr(2731,0,2733,993,993,"fsm_state = 18", 1, 2, 0);
	trans[0][2733]	= settr(2732,0,4439,994,994,"output = 4", 1, 2, 0);
	trans[0][2734]	= settr(2733,0,2735,995,0,"((input==19))", 1, 2, 0);
	trans[0][2735]	= settr(2734,0,2736,996,996,"fsm_state = 18", 1, 2, 0);
	trans[0][2736]	= settr(2735,0,4439,997,997,"output = 4", 1, 2, 0);
	trans[0][2737]	= settr(2736,0,2738,998,0,"((input==18))", 1, 2, 0);
	trans[0][2738]	= settr(2737,0,2739,999,999,"fsm_state = 9", 1, 2, 0);
	trans[0][2739]	= settr(2738,0,4439,1000,1000,"output = 2", 1, 2, 0);
	trans[0][2740]	= settr(2739,0,17,2,0,"else", 0, 2, 0);
	trans[0][2741]	= settr(2740,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2744]	= settr(2743,0,2949,1001,0,"((fsm_state==17))", 1, 2, 0);
	T = trans[0][2949] = settr(2948,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2948,0,2745,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2948,0,2748,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2948,0,2751,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2948,0,2754,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2948,0,2757,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2948,0,2760,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2948,0,2763,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2948,0,2766,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2948,0,2769,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2948,0,2772,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2948,0,2775,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2948,0,2778,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2948,0,2947,0,0,"IF", 0, 2, 0);
	trans[0][2745]	= settr(2744,0,2746,1002,0,"((input==16))", 1, 2, 0);
	trans[0][2746]	= settr(2745,0,2747,1003,1003,"fsm_state = 42", 1, 2, 0);
	trans[0][2747]	= settr(2746,0,4439,1004,1004,"output = 15", 1, 2, 0);
	trans[0][2950]	= settr(2949,0,4439,1,0,".(goto)", 0, 2, 0);
	trans[0][2748]	= settr(2747,0,2749,1005,0,"((input==21))", 1, 2, 0);
	trans[0][2749]	= settr(2748,0,2750,1006,1006,"fsm_state = 42", 1, 2, 0);
	trans[0][2750]	= settr(2749,0,4439,1007,1007,"output = 15", 1, 2, 0);
	trans[0][2751]	= settr(2750,0,2752,1008,0,"((input==27))", 1, 2, 0);
	trans[0][2752]	= settr(2751,0,2753,1009,1009,"fsm_state = 42", 1, 2, 0);
	trans[0][2753]	= settr(2752,0,4439,1010,1010,"output = 15", 1, 2, 0);
	trans[0][2754]	= settr(2753,0,2755,1011,0,"((input==20))", 1, 2, 0);
	trans[0][2755]	= settr(2754,0,17,1012,1012,"fsm_state = 36", 1, 2, 0);
	trans[0][2756]	= settr(2755,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2757]	= settr(2756,0,2758,1013,0,"((input==23))", 1, 2, 0);
	trans[0][2758]	= settr(2757,0,17,1014,1014,"fsm_state = 20", 1, 2, 0);
	trans[0][2759]	= settr(2758,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2760]	= settr(2759,0,2761,1015,0,"((input==25))", 1, 2, 0);
	trans[0][2761]	= settr(2760,0,2762,1016,1016,"fsm_state = 17", 1, 2, 0);
	trans[0][2762]	= settr(2761,0,4439,1017,1017,"output = 4", 1, 2, 0);
	trans[0][2763]	= settr(2762,0,2764,1018,0,"((input==17))", 1, 2, 0);
	trans[0][2764]	= settr(2763,0,17,1019,1019,"fsm_state = 17", 1, 2, 0);
	trans[0][2765]	= settr(2764,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2766]	= settr(2765,0,2767,1020,0,"((input==24))", 1, 2, 0);
	trans[0][2767]	= settr(2766,0,2768,1021,1021,"fsm_state = 17", 1, 2, 0);
	trans[0][2768]	= settr(2767,0,4439,1022,1022,"output = 9", 1, 2, 0);
	trans[0][2769]	= settr(2768,0,2770,1023,0,"((input==26))", 1, 2, 0);
	trans[0][2770]	= settr(2769,0,17,1024,1024,"fsm_state = 17", 1, 2, 0);
	trans[0][2771]	= settr(2770,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2772]	= settr(2771,0,2773,1025,0,"((input==18))", 1, 2, 0);
	trans[0][2773]	= settr(2772,0,2774,1026,1026,"fsm_state = 17", 1, 2, 0);
	trans[0][2774]	= settr(2773,0,4439,1027,1027,"output = 4", 1, 2, 0);
	trans[0][2775]	= settr(2774,0,2776,1028,0,"((input==19))", 1, 2, 0);
	trans[0][2776]	= settr(2775,0,17,1029,1029,"fsm_state = 17", 1, 2, 0);
	trans[0][2777]	= settr(2776,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2778]	= settr(2777,0,2779,1030,0,"((input==22))", 1, 2, 0);
	trans[0][2779]	= settr(2778,0,2780,1031,1031,"fsm_state = 9", 1, 2, 0);
	trans[0][2780]	= settr(2779,0,2781,1032,1032,"output = 12", 1, 2, 0);
	trans[0][2781]	= settr(2780,0,2861,1033,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2861] = settr(2860,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2860,0,2854,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2854]	= settr(2853,32,2859,1034,1034,"D_STEP13", 1, 2, 0);
	T = trans[0][2859] = settr(2858,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2858,0,2855,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2858,0,2857,0,0,"IF", 0, 2, 0);
	trans[0][2855]	= settr(2854,0,1,1035,0,"((dealt==0))", 1, 2, 0);
	trans[0][2856]	= settr(2855,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2860]	= settr(2859,0,2862,1,0,".(goto)", 0, 2, 0);
	trans[0][2857]	= settr(2856,0,2858,2,0,"else", 0, 2, 0);
	trans[0][2858]	= settr(2857,0,2862,1,0,"(1)", 0, 2, 0);
	trans[0][2862]	= settr(2861,0,2863,1036,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2863]	= settr(2862,0,2864,1037,1037,"output = 11", 1, 2, 0);
	trans[0][2864]	= settr(2863,0,2944,1038,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][2944] = settr(2943,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2943,0,2937,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][2937]	= settr(2936,32,2942,1039,1039,"D_STEP13", 1, 2, 0);
	T = trans[0][2942] = settr(2941,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2941,0,2938,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2941,0,2940,0,0,"IF", 0, 2, 0);
	trans[0][2938]	= settr(2937,0,1,1040,0,"((dealt==0))", 1, 2, 0);
	trans[0][2939]	= settr(2938,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][2943]	= settr(2942,0,2945,1,0,".(goto)", 0, 2, 0);
	trans[0][2940]	= settr(2939,0,2941,2,0,"else", 0, 2, 0);
	trans[0][2941]	= settr(2940,0,2945,1,0,"(1)", 0, 2, 0);
	trans[0][2945]	= settr(2944,0,2946,1041,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][2946]	= settr(2945,0,4439,1042,1042,"output = 7", 1, 2, 0);
	trans[0][2947]	= settr(2946,0,17,2,0,"else", 0, 2, 0);
	trans[0][2948]	= settr(2947,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2951]	= settr(2950,0,3073,1043,0,"((fsm_state==16))", 1, 2, 0);
	T = trans[0][3073] = settr(3072,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3072,0,2952,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3072,0,2955,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3072,0,2958,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3072,0,2961,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3072,0,2964,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3072,0,2967,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3072,0,2970,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3072,0,2973,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3072,0,2976,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3072,0,2979,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3072,0,2982,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3072,0,2985,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3072,0,3071,0,0,"IF", 0, 2, 0);
	trans[0][2952]	= settr(2951,0,2953,1044,0,"((input==16))", 1, 2, 0);
	trans[0][2953]	= settr(2952,0,2954,1045,1045,"fsm_state = 42", 1, 2, 0);
	trans[0][2954]	= settr(2953,0,4439,1046,1046,"output = 15", 1, 2, 0);
	trans[0][3074]	= settr(3073,0,4439,1,0,".(goto)", 0, 2, 0);
	trans[0][2955]	= settr(2954,0,2956,1047,0,"((input==21))", 1, 2, 0);
	trans[0][2956]	= settr(2955,0,2957,1048,1048,"fsm_state = 42", 1, 2, 0);
	trans[0][2957]	= settr(2956,0,4439,1049,1049,"output = 15", 1, 2, 0);
	trans[0][2958]	= settr(2957,0,2959,1050,0,"((input==27))", 1, 2, 0);
	trans[0][2959]	= settr(2958,0,2960,1051,1051,"fsm_state = 42", 1, 2, 0);
	trans[0][2960]	= settr(2959,0,4439,1052,1052,"output = 15", 1, 2, 0);
	trans[0][2961]	= settr(2960,0,2962,1053,0,"((input==20))", 1, 2, 0);
	trans[0][2962]	= settr(2961,0,17,1054,1054,"fsm_state = 36", 1, 2, 0);
	trans[0][2963]	= settr(2962,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2964]	= settr(2963,0,2965,1055,0,"((input==23))", 1, 2, 0);
	trans[0][2965]	= settr(2964,0,17,1056,1056,"fsm_state = 23", 1, 2, 0);
	trans[0][2966]	= settr(2965,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2967]	= settr(2966,0,2968,1057,0,"((input==25))", 1, 2, 0);
	trans[0][2968]	= settr(2967,0,2969,1058,1058,"fsm_state = 16", 1, 2, 0);
	trans[0][2969]	= settr(2968,0,4439,1059,1059,"output = 4", 1, 2, 0);
	trans[0][2970]	= settr(2969,0,2971,1060,0,"((input==17))", 1, 2, 0);
	trans[0][2971]	= settr(2970,0,17,1061,1061,"fsm_state = 16", 1, 2, 0);
	trans[0][2972]	= settr(2971,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2973]	= settr(2972,0,2974,1062,0,"((input==24))", 1, 2, 0);
	trans[0][2974]	= settr(2973,0,2975,1063,1063,"fsm_state = 16", 1, 2, 0);
	trans[0][2975]	= settr(2974,0,4439,1064,1064,"output = 9", 1, 2, 0);
	trans[0][2976]	= settr(2975,0,2977,1065,0,"((input==26))", 1, 2, 0);
	trans[0][2977]	= settr(2976,0,17,1066,1066,"fsm_state = 16", 1, 2, 0);
	trans[0][2978]	= settr(2977,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2979]	= settr(2978,0,2980,1067,0,"((input==18))", 1, 2, 0);
	trans[0][2980]	= settr(2979,0,2981,1068,1068,"fsm_state = 16", 1, 2, 0);
	trans[0][2981]	= settr(2980,0,4439,1069,1069,"output = 4", 1, 2, 0);
	trans[0][2982]	= settr(2981,0,2983,1070,0,"((input==19))", 1, 2, 0);
	trans[0][2983]	= settr(2982,0,17,1071,1071,"fsm_state = 16", 1, 2, 0);
	trans[0][2984]	= settr(2983,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][2985]	= settr(2984,0,2986,1072,0,"((input==22))", 1, 2, 0);
	trans[0][2986]	= settr(2985,0,2987,1073,1073,"fsm_state = 9", 1, 2, 0);
	trans[0][2987]	= settr(2986,0,2988,1074,1074,"output = 12", 1, 2, 0);
	trans[0][2988]	= settr(2987,0,3068,1075,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][3068] = settr(3067,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(3067,0,3061,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][3061]	= settr(3060,32,3066,1076,1076,"D_STEP13", 1, 2, 0);
	T = trans[0][3066] = settr(3065,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3065,0,3062,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3065,0,3064,0,0,"IF", 0, 2, 0);
	trans[0][3062]	= settr(3061,0,1,1077,0,"((dealt==0))", 1, 2, 0);
	trans[0][3063]	= settr(3062,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][3067]	= settr(3066,0,3069,1,0,".(goto)", 0, 2, 0);
	trans[0][3064]	= settr(3063,0,3065,2,0,"else", 0, 2, 0);
	trans[0][3065]	= settr(3064,0,3069,1,0,"(1)", 0, 2, 0);
	trans[0][3069]	= settr(3068,0,3070,1078,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][3070]	= settr(3069,0,4439,1079,1079,"output = 11", 1, 2, 0);
	trans[0][3071]	= settr(3070,0,17,2,0,"else", 0, 2, 0);
	trans[0][3072]	= settr(3071,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3075]	= settr(3074,0,3114,1080,0,"((fsm_state==15))", 1, 2, 0);
	T = trans[0][3114] = settr(3113,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3113,0,3076,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3113,0,3079,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3113,0,3082,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3113,0,3085,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3113,0,3088,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3113,0,3091,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3113,0,3094,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3113,0,3097,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3113,0,3100,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3113,0,3103,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3113,0,3106,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3113,0,3109,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3113,0,3112,0,0,"IF", 0, 2, 0);
	trans[0][3076]	= settr(3075,0,3077,1081,0,"((input==22))", 1, 2, 0);
	trans[0][3077]	= settr(3076,0,3078,1082,1082,"fsm_state = 42", 1, 2, 0);
	trans[0][3078]	= settr(3077,0,4439,1083,1083,"output = 15", 1, 2, 0);
	trans[0][3115]	= settr(3114,0,4439,1,0,".(goto)", 0, 2, 0);
	trans[0][3079]	= settr(3078,0,3080,1084,0,"((input==20))", 1, 2, 0);
	trans[0][3080]	= settr(3079,0,3081,1085,1085,"fsm_state = 42", 1, 2, 0);
	trans[0][3081]	= settr(3080,0,4439,1086,1086,"output = 15", 1, 2, 0);
	trans[0][3082]	= settr(3081,0,3083,1087,0,"((input==16))", 1, 2, 0);
	trans[0][3083]	= settr(3082,0,3084,1088,1088,"fsm_state = 42", 1, 2, 0);
	trans[0][3084]	= settr(3083,0,4439,1089,1089,"output = 15", 1, 2, 0);
	trans[0][3085]	= settr(3084,0,3086,1090,0,"((input==21))", 1, 2, 0);
	trans[0][3086]	= settr(3085,0,3087,1091,1091,"fsm_state = 16", 1, 2, 0);
	trans[0][3087]	= settr(3086,0,4439,1092,1092,"output = 10", 1, 2, 0);
	trans[0][3088]	= settr(3087,0,3089,1093,0,"((input==25))", 1, 2, 0);
	trans[0][3089]	= settr(3088,0,3090,1094,1094,"fsm_state = 15", 1, 2, 0);
	trans[0][3090]	= settr(3089,0,4439,1095,1095,"output = 4", 1, 2, 0);
	trans[0][3091]	= settr(3090,0,3092,1096,0,"((input==17))", 1, 2, 0);
	trans[0][3092]	= settr(3091,0,17,1097,1097,"fsm_state = 15", 1, 2, 0);
	trans[0][3093]	= settr(3092,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3094]	= settr(3093,0,3095,1098,0,"((input==24))", 1, 2, 0);
	trans[0][3095]	= settr(3094,0,3096,1099,1099,"fsm_state = 15", 1, 2, 0);
	trans[0][3096]	= settr(3095,0,4439,1100,1100,"output = 9", 1, 2, 0);
	trans[0][3097]	= settr(3096,0,3098,1101,0,"((input==26))", 1, 2, 0);
	trans[0][3098]	= settr(3097,0,17,1102,1102,"fsm_state = 15", 1, 2, 0);
	trans[0][3099]	= settr(3098,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3100]	= settr(3099,0,3101,1103,0,"((input==18))", 1, 2, 0);
	trans[0][3101]	= settr(3100,0,3102,1104,1104,"fsm_state = 15", 1, 2, 0);
	trans[0][3102]	= settr(3101,0,4439,1105,1105,"output = 4", 1, 2, 0);
	trans[0][3103]	= settr(3102,0,3104,1106,0,"((input==19))", 1, 2, 0);
	trans[0][3104]	= settr(3103,0,17,1107,1107,"fsm_state = 15", 1, 2, 0);
	trans[0][3105]	= settr(3104,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3106]	= settr(3105,0,3107,1108,0,"((input==27))", 1, 2, 0);
	trans[0][3107]	= settr(3106,0,3108,1109,1109,"fsm_state = 15", 1, 2, 0);
	trans[0][3108]	= settr(3107,0,4439,1110,1110,"output = 6", 1, 2, 0);
	trans[0][3109]	= settr(3108,0,3110,1111,0,"((input==23))", 1, 2, 0);
	trans[0][3110]	= settr(3109,0,17,1112,1112,"fsm_state = 13", 1, 2, 0);
	trans[0][3111]	= settr(3110,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3112]	= settr(3111,0,17,2,0,"else", 0, 2, 0);
	trans[0][3113]	= settr(3112,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3116]	= settr(3115,0,3238,1113,0,"((fsm_state==14))", 1, 2, 0);
	T = trans[0][3238] = settr(3237,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3237,0,3117,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3237,0,3120,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3237,0,3123,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3237,0,3126,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3237,0,3129,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3237,0,3132,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3237,0,3135,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3237,0,3138,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3237,0,3141,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3237,0,3144,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3237,0,3147,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3237,0,3150,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3237,0,3236,0,0,"IF", 0, 2, 0);
	trans[0][3117]	= settr(3116,0,3118,1114,0,"((input==16))", 1, 2, 0);
	trans[0][3118]	= settr(3117,0,3119,1115,1115,"fsm_state = 42", 1, 2, 0);
	trans[0][3119]	= settr(3118,0,4439,1116,1116,"output = 15", 1, 2, 0);
	trans[0][3239]	= settr(3238,0,4439,1,0,".(goto)", 0, 2, 0);
	trans[0][3120]	= settr(3119,0,3121,1117,0,"((input==21))", 1, 2, 0);
	trans[0][3121]	= settr(3120,0,3122,1118,1118,"fsm_state = 42", 1, 2, 0);
	trans[0][3122]	= settr(3121,0,4439,1119,1119,"output = 15", 1, 2, 0);
	trans[0][3123]	= settr(3122,0,3124,1120,0,"((input==27))", 1, 2, 0);
	trans[0][3124]	= settr(3123,0,3125,1121,1121,"fsm_state = 42", 1, 2, 0);
	trans[0][3125]	= settr(3124,0,4439,1122,1122,"output = 15", 1, 2, 0);
	trans[0][3126]	= settr(3125,0,3127,1123,0,"((input==20))", 1, 2, 0);
	trans[0][3127]	= settr(3126,0,17,1124,1124,"fsm_state = 36", 1, 2, 0);
	trans[0][3128]	= settr(3127,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3129]	= settr(3128,0,3130,1125,0,"((input==19))", 1, 2, 0);
	trans[0][3130]	= settr(3129,0,17,1126,1126,"fsm_state = 17", 1, 2, 0);
	trans[0][3131]	= settr(3130,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3132]	= settr(3131,0,3133,1127,0,"((input==25))", 1, 2, 0);
	trans[0][3133]	= settr(3132,0,3134,1128,1128,"fsm_state = 14", 1, 2, 0);
	trans[0][3134]	= settr(3133,0,4439,1129,1129,"output = 4", 1, 2, 0);
	trans[0][3135]	= settr(3134,0,3136,1130,0,"((input==24))", 1, 2, 0);
	trans[0][3136]	= settr(3135,0,3137,1131,1131,"fsm_state = 14", 1, 2, 0);
	trans[0][3137]	= settr(3136,0,4439,1132,1132,"output = 9", 1, 2, 0);
	trans[0][3138]	= settr(3137,0,3139,1133,0,"((input==18))", 1, 2, 0);
	trans[0][3139]	= settr(3138,0,3140,1134,1134,"fsm_state = 14", 1, 2, 0);
	trans[0][3140]	= settr(3139,0,4439,1135,1135,"output = 4", 1, 2, 0);
	trans[0][3141]	= settr(3140,0,3142,1136,0,"((input==17))", 1, 2, 0);
	trans[0][3142]	= settr(3141,0,17,1137,1137,"fsm_state = 11", 1, 2, 0);
	trans[0][3143]	= settr(3142,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3144]	= settr(3143,0,3145,1138,0,"((input==23))", 1, 2, 0);
	trans[0][3145]	= settr(3144,0,17,1139,1139,"fsm_state = 8", 1, 2, 0);
	trans[0][3146]	= settr(3145,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3147]	= settr(3146,0,3148,1140,0,"((input==26))", 1, 2, 0);
	trans[0][3148]	= settr(3147,0,17,1141,1141,"fsm_state = 7", 1, 2, 0);
	trans[0][3149]	= settr(3148,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3150]	= settr(3149,0,3151,1142,0,"((input==22))", 1, 2, 0);
	trans[0][3151]	= settr(3150,0,3152,1143,1143,"fsm_state = 6", 1, 2, 0);
	trans[0][3152]	= settr(3151,0,3153,1144,1144,"output = 12", 1, 2, 0);
	trans[0][3153]	= settr(3152,0,3233,1145,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][3233] = settr(3232,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(3232,0,3226,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][3226]	= settr(3225,32,3231,1146,1146,"D_STEP13", 1, 2, 0);
	T = trans[0][3231] = settr(3230,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3230,0,3227,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3230,0,3229,0,0,"IF", 0, 2, 0);
	trans[0][3227]	= settr(3226,0,1,1147,0,"((dealt==0))", 1, 2, 0);
	trans[0][3228]	= settr(3227,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][3232]	= settr(3231,0,3234,1,0,".(goto)", 0, 2, 0);
	trans[0][3229]	= settr(3228,0,3230,2,0,"else", 0, 2, 0);
	trans[0][3230]	= settr(3229,0,3234,1,0,"(1)", 0, 2, 0);
	trans[0][3234]	= settr(3233,0,3235,1148,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][3235]	= settr(3234,0,4439,1149,1149,"output = 11", 1, 2, 0);
	trans[0][3236]	= settr(3235,0,17,2,0,"else", 0, 2, 0);
	trans[0][3237]	= settr(3236,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3240]	= settr(3239,0,3279,1150,0,"((fsm_state==13))", 1, 2, 0);
	T = trans[0][3279] = settr(3278,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3278,0,3241,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3278,0,3244,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3278,0,3247,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3278,0,3250,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3278,0,3253,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3278,0,3256,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3278,0,3259,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3278,0,3262,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3278,0,3265,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3278,0,3268,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3278,0,3271,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3278,0,3274,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3278,0,3277,0,0,"IF", 0, 2, 0);
	trans[0][3241]	= settr(3240,0,3242,1151,0,"((input==22))", 1, 2, 0);
	trans[0][3242]	= settr(3241,0,3243,1152,1152,"fsm_state = 40", 1, 2, 0);
	trans[0][3243]	= settr(3242,0,4439,1153,1153,"output = 15", 1, 2, 0);
	trans[0][3280]	= settr(3279,0,4439,1,0,".(goto)", 0, 2, 0);
	trans[0][3244]	= settr(3243,0,3245,1154,0,"((input==20))", 1, 2, 0);
	trans[0][3245]	= settr(3244,0,3246,1155,1155,"fsm_state = 40", 1, 2, 0);
	trans[0][3246]	= settr(3245,0,4439,1156,1156,"output = 15", 1, 2, 0);
	trans[0][3247]	= settr(3246,0,3248,1157,0,"((input==16))", 1, 2, 0);
	trans[0][3248]	= settr(3247,0,3249,1158,1158,"fsm_state = 40", 1, 2, 0);
	trans[0][3249]	= settr(3248,0,4439,1159,1159,"output = 15", 1, 2, 0);
	trans[0][3250]	= settr(3249,0,3251,1160,0,"((input==24))", 1, 2, 0);
	trans[0][3251]	= settr(3250,0,3252,1161,1161,"fsm_state = 24", 1, 2, 0);
	trans[0][3252]	= settr(3251,0,4439,1162,1162,"output = 14", 1, 2, 0);
	trans[0][3253]	= settr(3252,0,3254,1163,0,"((input==25))", 1, 2, 0);
	trans[0][3254]	= settr(3253,0,3255,1164,1164,"fsm_state = 13", 1, 2, 0);
	trans[0][3255]	= settr(3254,0,4439,1165,1165,"output = 4", 1, 2, 0);
	trans[0][3256]	= settr(3255,0,3257,1166,0,"((input==17))", 1, 2, 0);
	trans[0][3257]	= settr(3256,0,3258,1167,1167,"fsm_state = 13", 1, 2, 0);
	trans[0][3258]	= settr(3257,0,4439,1168,1168,"output = 13", 1, 2, 0);
	trans[0][3259]	= settr(3258,0,3260,1169,0,"((input==26))", 1, 2, 0);
	trans[0][3260]	= settr(3259,0,3261,1170,1170,"fsm_state = 13", 1, 2, 0);
	trans[0][3261]	= settr(3260,0,4439,1171,1171,"output = 13", 1, 2, 0);
	trans[0][3262]	= settr(3261,0,3263,1172,0,"((input==18))", 1, 2, 0);
	trans[0][3263]	= settr(3262,0,3264,1173,1173,"fsm_state = 13", 1, 2, 0);
	trans[0][3264]	= settr(3263,0,4439,1174,1174,"output = 4", 1, 2, 0);
	trans[0][3265]	= settr(3264,0,3266,1175,0,"((input==23))", 1, 2, 0);
	trans[0][3266]	= settr(3265,0,3267,1176,1176,"fsm_state = 13", 1, 2, 0);
	trans[0][3267]	= settr(3266,0,4439,1177,1177,"output = 13", 1, 2, 0);
	trans[0][3268]	= settr(3267,0,3269,1178,0,"((input==19))", 1, 2, 0);
	trans[0][3269]	= settr(3268,0,3270,1179,1179,"fsm_state = 13", 1, 2, 0);
	trans[0][3270]	= settr(3269,0,4439,1180,1180,"output = 13", 1, 2, 0);
	trans[0][3271]	= settr(3270,0,3272,1181,0,"((input==27))", 1, 2, 0);
	trans[0][3272]	= settr(3271,0,3273,1182,1182,"fsm_state = 13", 1, 2, 0);
	trans[0][3273]	= settr(3272,0,4439,1183,1183,"output = 6", 1, 2, 0);
	trans[0][3274]	= settr(3273,0,3275,1184,0,"((input==21))", 1, 2, 0);
	trans[0][3275]	= settr(3274,0,3276,1185,1185,"fsm_state = 5", 1, 2, 0);
	trans[0][3276]	= settr(3275,0,4439,1186,1186,"output = 10", 1, 2, 0);
	trans[0][3277]	= settr(3276,0,17,2,0,"else", 0, 2, 0);
	trans[0][3278]	= settr(3277,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3281]	= settr(3280,0,3320,1187,0,"((fsm_state==12))", 1, 2, 0);
	T = trans[0][3320] = settr(3319,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3319,0,3282,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3319,0,3285,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3319,0,3288,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3319,0,3291,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3319,0,3294,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3319,0,3297,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3319,0,3300,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3319,0,3303,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3319,0,3306,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3319,0,3309,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3319,0,3312,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3319,0,3315,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3319,0,3318,0,0,"IF", 0, 2, 0);
	trans[0][3282]	= settr(3281,0,3283,1188,0,"((input==22))", 1, 2, 0);
	trans[0][3283]	= settr(3282,0,3284,1189,1189,"fsm_state = 42", 1, 2, 0);
	trans[0][3284]	= settr(3283,0,4439,1190,1190,"output = 15", 1, 2, 0);
	trans[0][3321]	= settr(3320,0,4439,1,0,".(goto)", 0, 2, 0);
	trans[0][3285]	= settr(3284,0,3286,1191,0,"((input==20))", 1, 2, 0);
	trans[0][3286]	= settr(3285,0,3287,1192,1192,"fsm_state = 42", 1, 2, 0);
	trans[0][3287]	= settr(3286,0,4439,1193,1193,"output = 15", 1, 2, 0);
	trans[0][3288]	= settr(3287,0,3289,1194,0,"((input==16))", 1, 2, 0);
	trans[0][3289]	= settr(3288,0,3290,1195,1195,"fsm_state = 42", 1, 2, 0);
	trans[0][3290]	= settr(3289,0,4439,1196,1196,"output = 15", 1, 2, 0);
	trans[0][3291]	= settr(3290,0,3292,1197,0,"((input==23))", 1, 2, 0);
	trans[0][3292]	= settr(3291,0,3293,1198,1198,"fsm_state = 13", 1, 2, 0);
	trans[0][3293]	= settr(3292,0,4439,1199,1199,"output = 8", 1, 2, 0);
	trans[0][3294]	= settr(3293,0,3295,1200,0,"((input==25))", 1, 2, 0);
	trans[0][3295]	= settr(3294,0,3296,1201,1201,"fsm_state = 12", 1, 2, 0);
	trans[0][3296]	= settr(3295,0,4439,1202,1202,"output = 4", 1, 2, 0);
	trans[0][3297]	= settr(3296,0,3298,1203,0,"((input==17))", 1, 2, 0);
	trans[0][3298]	= settr(3297,0,3299,1204,1204,"fsm_state = 12", 1, 2, 0);
	trans[0][3299]	= settr(3298,0,4439,1205,1205,"output = 5", 1, 2, 0);
	trans[0][3300]	= settr(3299,0,3301,1206,0,"((input==24))", 1, 2, 0);
	trans[0][3301]	= settr(3300,0,3302,1207,1207,"fsm_state = 12", 1, 2, 0);
	trans[0][3302]	= settr(3301,0,4439,1208,1208,"output = 9", 1, 2, 0);
	trans[0][3303]	= settr(3302,0,3304,1209,0,"((input==26))", 1, 2, 0);
	trans[0][3304]	= settr(3303,0,17,1210,1210,"fsm_state = 12", 1, 2, 0);
	trans[0][3305]	= settr(3304,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3306]	= settr(3305,0,3307,1211,0,"((input==18))", 1, 2, 0);
	trans[0][3307]	= settr(3306,0,3308,1212,1212,"fsm_state = 12", 1, 2, 0);
	trans[0][3308]	= settr(3307,0,4439,1213,1213,"output = 4", 1, 2, 0);
	trans[0][3309]	= settr(3308,0,3310,1214,0,"((input==19))", 1, 2, 0);
	trans[0][3310]	= settr(3309,0,17,1215,1215,"fsm_state = 12", 1, 2, 0);
	trans[0][3311]	= settr(3310,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3312]	= settr(3311,0,3313,1216,0,"((input==27))", 1, 2, 0);
	trans[0][3313]	= settr(3312,0,3314,1217,1217,"fsm_state = 12", 1, 2, 0);
	trans[0][3314]	= settr(3313,0,4439,1218,1218,"output = 6", 1, 2, 0);
	trans[0][3315]	= settr(3314,0,3316,1219,0,"((input==21))", 1, 2, 0);
	trans[0][3316]	= settr(3315,0,3317,1220,1220,"fsm_state = 7", 1, 2, 0);
	trans[0][3317]	= settr(3316,0,4439,1221,1221,"output = 10", 1, 2, 0);
	trans[0][3318]	= settr(3317,0,17,2,0,"else", 0, 2, 0);
	trans[0][3319]	= settr(3318,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3322]	= settr(3321,0,3527,1222,0,"((fsm_state==11))", 1, 2, 0);
	T = trans[0][3527] = settr(3526,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3526,0,3323,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3526,0,3326,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3526,0,3329,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3526,0,3332,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3526,0,3335,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3526,0,3338,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3526,0,3341,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3526,0,3344,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3526,0,3347,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3526,0,3350,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3526,0,3353,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3526,0,3522,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3526,0,3525,0,0,"IF", 0, 2, 0);
	trans[0][3323]	= settr(3322,0,3324,1223,0,"((input==16))", 1, 2, 0);
	trans[0][3324]	= settr(3323,0,3325,1224,1224,"fsm_state = 42", 1, 2, 0);
	trans[0][3325]	= settr(3324,0,4439,1225,1225,"output = 15", 1, 2, 0);
	trans[0][3528]	= settr(3527,0,4439,1,0,".(goto)", 0, 2, 0);
	trans[0][3326]	= settr(3325,0,3327,1226,0,"((input==21))", 1, 2, 0);
	trans[0][3327]	= settr(3326,0,3328,1227,1227,"fsm_state = 42", 1, 2, 0);
	trans[0][3328]	= settr(3327,0,4439,1228,1228,"output = 15", 1, 2, 0);
	trans[0][3329]	= settr(3328,0,3330,1229,0,"((input==27))", 1, 2, 0);
	trans[0][3330]	= settr(3329,0,3331,1230,1230,"fsm_state = 42", 1, 2, 0);
	trans[0][3331]	= settr(3330,0,4439,1231,1231,"output = 15", 1, 2, 0);
	trans[0][3332]	= settr(3331,0,3333,1232,0,"((input==20))", 1, 2, 0);
	trans[0][3333]	= settr(3332,0,17,1233,1233,"fsm_state = 36", 1, 2, 0);
	trans[0][3334]	= settr(3333,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3335]	= settr(3334,0,3336,1234,0,"((input==19))", 1, 2, 0);
	trans[0][3336]	= settr(3335,0,17,1235,1235,"fsm_state = 17", 1, 2, 0);
	trans[0][3337]	= settr(3336,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3338]	= settr(3337,0,3339,1236,0,"((input==25))", 1, 2, 0);
	trans[0][3339]	= settr(3338,0,3340,1237,1237,"fsm_state = 11", 1, 2, 0);
	trans[0][3340]	= settr(3339,0,4439,1238,1238,"output = 4", 1, 2, 0);
	trans[0][3341]	= settr(3340,0,3342,1239,0,"((input==17))", 1, 2, 0);
	trans[0][3342]	= settr(3341,0,17,1240,1240,"fsm_state = 11", 1, 2, 0);
	trans[0][3343]	= settr(3342,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3344]	= settr(3343,0,3345,1241,0,"((input==24))", 1, 2, 0);
	trans[0][3345]	= settr(3344,0,3346,1242,1242,"fsm_state = 11", 1, 2, 0);
	trans[0][3346]	= settr(3345,0,4439,1243,1243,"output = 9", 1, 2, 0);
	trans[0][3347]	= settr(3346,0,3348,1244,0,"((input==18))", 1, 2, 0);
	trans[0][3348]	= settr(3347,0,3349,1245,1245,"fsm_state = 11", 1, 2, 0);
	trans[0][3349]	= settr(3348,0,4439,1246,1246,"output = 4", 1, 2, 0);
	trans[0][3350]	= settr(3349,0,3351,1247,0,"((input==23))", 1, 2, 0);
	trans[0][3351]	= settr(3350,0,17,1248,1248,"fsm_state = 8", 1, 2, 0);
	trans[0][3352]	= settr(3351,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3353]	= settr(3352,0,3354,1249,0,"((input==22))", 1, 2, 0);
	trans[0][3354]	= settr(3353,0,3355,1250,1250,"fsm_state = 6", 1, 2, 0);
	trans[0][3355]	= settr(3354,0,3356,1251,1251,"output = 12", 1, 2, 0);
	trans[0][3356]	= settr(3355,0,3436,1252,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][3436] = settr(3435,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(3435,0,3429,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][3429]	= settr(3428,32,3434,1253,1253,"D_STEP13", 1, 2, 0);
	T = trans[0][3434] = settr(3433,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3433,0,3430,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3433,0,3432,0,0,"IF", 0, 2, 0);
	trans[0][3430]	= settr(3429,0,1,1254,0,"((dealt==0))", 1, 2, 0);
	trans[0][3431]	= settr(3430,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][3435]	= settr(3434,0,3437,1,0,".(goto)", 0, 2, 0);
	trans[0][3432]	= settr(3431,0,3433,2,0,"else", 0, 2, 0);
	trans[0][3433]	= settr(3432,0,3437,1,0,"(1)", 0, 2, 0);
	trans[0][3437]	= settr(3436,0,3438,1255,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][3438]	= settr(3437,0,3439,1256,1256,"output = 11", 1, 2, 0);
	trans[0][3439]	= settr(3438,0,3519,1257,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][3519] = settr(3518,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(3518,0,3512,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][3512]	= settr(3511,32,3517,1258,1258,"D_STEP13", 1, 2, 0);
	T = trans[0][3517] = settr(3516,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3516,0,3513,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3516,0,3515,0,0,"IF", 0, 2, 0);
	trans[0][3513]	= settr(3512,0,1,1259,0,"((dealt==0))", 1, 2, 0);
	trans[0][3514]	= settr(3513,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][3518]	= settr(3517,0,3520,1,0,".(goto)", 0, 2, 0);
	trans[0][3515]	= settr(3514,0,3516,2,0,"else", 0, 2, 0);
	trans[0][3516]	= settr(3515,0,3520,1,0,"(1)", 0, 2, 0);
	trans[0][3520]	= settr(3519,0,3521,1260,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][3521]	= settr(3520,0,4439,1261,1261,"output = 7", 1, 2, 0);
	trans[0][3522]	= settr(3521,0,3523,1262,0,"((input==26))", 1, 2, 0);
	trans[0][3523]	= settr(3522,0,17,1263,1263,"fsm_state = 4", 1, 2, 0);
	trans[0][3524]	= settr(3523,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3525]	= settr(3524,0,17,2,0,"else", 0, 2, 0);
	trans[0][3526]	= settr(3525,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3529]	= settr(3528,0,3568,1264,0,"((fsm_state==10))", 1, 2, 0);
	T = trans[0][3568] = settr(3567,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3567,0,3530,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3567,0,3533,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3567,0,3536,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3567,0,3539,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3567,0,3542,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3567,0,3545,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3567,0,3548,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3567,0,3551,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3567,0,3554,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3567,0,3557,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3567,0,3560,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3567,0,3563,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3567,0,3566,0,0,"IF", 0, 2, 0);
	trans[0][3530]	= settr(3529,0,3531,1265,0,"((input==16))", 1, 2, 0);
	trans[0][3531]	= settr(3530,0,3532,1266,1266,"fsm_state = 40", 1, 2, 0);
	trans[0][3532]	= settr(3531,0,4439,1267,1267,"output = 15", 1, 2, 0);
	trans[0][3569]	= settr(3568,0,4439,1,0,".(goto)", 0, 2, 0);
	trans[0][3533]	= settr(3532,0,3534,1268,0,"((input==21))", 1, 2, 0);
	trans[0][3534]	= settr(3533,0,3535,1269,1269,"fsm_state = 40", 1, 2, 0);
	trans[0][3535]	= settr(3534,0,4439,1270,1270,"output = 15", 1, 2, 0);
	trans[0][3536]	= settr(3535,0,3537,1271,0,"((input==27))", 1, 2, 0);
	trans[0][3537]	= settr(3536,0,3538,1272,1272,"fsm_state = 40", 1, 2, 0);
	trans[0][3538]	= settr(3537,0,4439,1273,1273,"output = 15", 1, 2, 0);
	trans[0][3539]	= settr(3538,0,3540,1274,0,"((input==20))", 1, 2, 0);
	trans[0][3540]	= settr(3539,0,17,1275,1275,"fsm_state = 30", 1, 2, 0);
	trans[0][3541]	= settr(3540,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3542]	= settr(3541,0,3543,1276,0,"((input==25))", 1, 2, 0);
	trans[0][3543]	= settr(3542,0,3544,1277,1277,"fsm_state = 10", 1, 2, 0);
	trans[0][3544]	= settr(3543,0,4439,1278,1278,"output = 4", 1, 2, 0);
	trans[0][3545]	= settr(3544,0,3546,1279,0,"((input==22))", 1, 2, 0);
	trans[0][3546]	= settr(3545,0,17,1280,1280,"fsm_state = 10", 1, 2, 0);
	trans[0][3547]	= settr(3546,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3548]	= settr(3547,0,3549,1281,0,"((input==17))", 1, 2, 0);
	trans[0][3549]	= settr(3548,0,3550,1282,1282,"fsm_state = 10", 1, 2, 0);
	trans[0][3550]	= settr(3549,0,4439,1283,1283,"output = 13", 1, 2, 0);
	trans[0][3551]	= settr(3550,0,3552,1284,0,"((input==26))", 1, 2, 0);
	trans[0][3552]	= settr(3551,0,3553,1285,1285,"fsm_state = 10", 1, 2, 0);
	trans[0][3553]	= settr(3552,0,4439,1286,1286,"output = 13", 1, 2, 0);
	trans[0][3554]	= settr(3553,0,3555,1287,0,"((input==18))", 1, 2, 0);
	trans[0][3555]	= settr(3554,0,3556,1288,1288,"fsm_state = 10", 1, 2, 0);
	trans[0][3556]	= settr(3555,0,4439,1289,1289,"output = 4", 1, 2, 0);
	trans[0][3557]	= settr(3556,0,3558,1290,0,"((input==23))", 1, 2, 0);
	trans[0][3558]	= settr(3557,0,3559,1291,1291,"fsm_state = 10", 1, 2, 0);
	trans[0][3559]	= settr(3558,0,4439,1292,1292,"output = 13", 1, 2, 0);
	trans[0][3560]	= settr(3559,0,3561,1293,0,"((input==19))", 1, 2, 0);
	trans[0][3561]	= settr(3560,0,3562,1294,1294,"fsm_state = 10", 1, 2, 0);
	trans[0][3562]	= settr(3561,0,4439,1295,1295,"output = 13", 1, 2, 0);
	trans[0][3563]	= settr(3562,0,3564,1296,0,"((input==24))", 1, 2, 0);
	trans[0][3564]	= settr(3563,0,3565,1297,1297,"fsm_state = 6", 1, 2, 0);
	trans[0][3565]	= settr(3564,0,4439,1298,1298,"output = 14", 1, 2, 0);
	trans[0][3566]	= settr(3565,0,17,2,0,"else", 0, 2, 0);
	trans[0][3567]	= settr(3566,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3570]	= settr(3569,0,3609,1299,0,"((fsm_state==9))", 1, 2, 0);
	T = trans[0][3609] = settr(3608,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3608,0,3571,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3608,0,3574,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3608,0,3577,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3608,0,3580,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3608,0,3583,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3608,0,3586,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3608,0,3589,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3608,0,3592,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3608,0,3595,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3608,0,3598,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3608,0,3601,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3608,0,3604,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3608,0,3607,0,0,"IF", 0, 2, 0);
	trans[0][3571]	= settr(3570,0,3572,1300,0,"((input==16))", 1, 2, 0);
	trans[0][3572]	= settr(3571,0,3573,1301,1301,"fsm_state = 42", 1, 2, 0);
	trans[0][3573]	= settr(3572,0,4439,1302,1302,"output = 15", 1, 2, 0);
	trans[0][3610]	= settr(3609,0,4439,1,0,".(goto)", 0, 2, 0);
	trans[0][3574]	= settr(3573,0,3575,1303,0,"((input==21))", 1, 2, 0);
	trans[0][3575]	= settr(3574,0,3576,1304,1304,"fsm_state = 42", 1, 2, 0);
	trans[0][3576]	= settr(3575,0,4439,1305,1305,"output = 15", 1, 2, 0);
	trans[0][3577]	= settr(3576,0,3578,1306,0,"((input==27))", 1, 2, 0);
	trans[0][3578]	= settr(3577,0,3579,1307,1307,"fsm_state = 42", 1, 2, 0);
	trans[0][3579]	= settr(3578,0,4439,1308,1308,"output = 15", 1, 2, 0);
	trans[0][3580]	= settr(3579,0,3581,1309,0,"((input==20))", 1, 2, 0);
	trans[0][3581]	= settr(3580,0,17,1310,1310,"fsm_state = 26", 1, 2, 0);
	trans[0][3582]	= settr(3581,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3583]	= settr(3582,0,3584,1311,0,"((input==23))", 1, 2, 0);
	trans[0][3584]	= settr(3583,0,17,1312,1312,"fsm_state = 10", 1, 2, 0);
	trans[0][3585]	= settr(3584,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3586]	= settr(3585,0,3587,1313,0,"((input==25))", 1, 2, 0);
	trans[0][3587]	= settr(3586,0,3588,1314,1314,"fsm_state = 9", 1, 2, 0);
	trans[0][3588]	= settr(3587,0,4439,1315,1315,"output = 4", 1, 2, 0);
	trans[0][3589]	= settr(3588,0,3590,1316,0,"((input==22))", 1, 2, 0);
	trans[0][3590]	= settr(3589,0,17,1317,1317,"fsm_state = 9", 1, 2, 0);
	trans[0][3591]	= settr(3590,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3592]	= settr(3591,0,3593,1318,0,"((input==17))", 1, 2, 0);
	trans[0][3593]	= settr(3592,0,17,1319,1319,"fsm_state = 9", 1, 2, 0);
	trans[0][3594]	= settr(3593,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3595]	= settr(3594,0,3596,1320,0,"((input==24))", 1, 2, 0);
	trans[0][3596]	= settr(3595,0,3597,1321,1321,"fsm_state = 9", 1, 2, 0);
	trans[0][3597]	= settr(3596,0,4439,1322,1322,"output = 9", 1, 2, 0);
	trans[0][3598]	= settr(3597,0,3599,1323,0,"((input==26))", 1, 2, 0);
	trans[0][3599]	= settr(3598,0,17,1324,1324,"fsm_state = 9", 1, 2, 0);
	trans[0][3600]	= settr(3599,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3601]	= settr(3600,0,3602,1325,0,"((input==18))", 1, 2, 0);
	trans[0][3602]	= settr(3601,0,3603,1326,1326,"fsm_state = 9", 1, 2, 0);
	trans[0][3603]	= settr(3602,0,4439,1327,1327,"output = 4", 1, 2, 0);
	trans[0][3604]	= settr(3603,0,3605,1328,0,"((input==19))", 1, 2, 0);
	trans[0][3605]	= settr(3604,0,17,1329,1329,"fsm_state = 9", 1, 2, 0);
	trans[0][3606]	= settr(3605,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3607]	= settr(3606,0,17,2,0,"else", 0, 2, 0);
	trans[0][3608]	= settr(3607,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3611]	= settr(3610,0,3816,1330,0,"((fsm_state==8))", 1, 2, 0);
	T = trans[0][3816] = settr(3815,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3815,0,3612,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3815,0,3615,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3815,0,3618,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3815,0,3621,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3815,0,3624,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3815,0,3627,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3815,0,3630,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3815,0,3633,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3815,0,3636,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3815,0,3639,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3815,0,3642,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3815,0,3645,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3815,0,3814,0,0,"IF", 0, 2, 0);
	trans[0][3612]	= settr(3611,0,3613,1331,0,"((input==16))", 1, 2, 0);
	trans[0][3613]	= settr(3612,0,3614,1332,1332,"fsm_state = 40", 1, 2, 0);
	trans[0][3614]	= settr(3613,0,4439,1333,1333,"output = 15", 1, 2, 0);
	trans[0][3817]	= settr(3816,0,4439,1,0,".(goto)", 0, 2, 0);
	trans[0][3615]	= settr(3614,0,3616,1334,0,"((input==21))", 1, 2, 0);
	trans[0][3616]	= settr(3615,0,3617,1335,1335,"fsm_state = 40", 1, 2, 0);
	trans[0][3617]	= settr(3616,0,4439,1336,1336,"output = 15", 1, 2, 0);
	trans[0][3618]	= settr(3617,0,3619,1337,0,"((input==27))", 1, 2, 0);
	trans[0][3619]	= settr(3618,0,3620,1338,1338,"fsm_state = 40", 1, 2, 0);
	trans[0][3620]	= settr(3619,0,4439,1339,1339,"output = 15", 1, 2, 0);
	trans[0][3621]	= settr(3620,0,3622,1340,0,"((input==20))", 1, 2, 0);
	trans[0][3622]	= settr(3621,0,17,1341,1341,"fsm_state = 38", 1, 2, 0);
	trans[0][3623]	= settr(3622,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3624]	= settr(3623,0,3625,1342,0,"((input==25))", 1, 2, 0);
	trans[0][3625]	= settr(3624,0,3626,1343,1343,"fsm_state = 8", 1, 2, 0);
	trans[0][3626]	= settr(3625,0,4439,1344,1344,"output = 4", 1, 2, 0);
	trans[0][3627]	= settr(3626,0,3628,1345,0,"((input==17))", 1, 2, 0);
	trans[0][3628]	= settr(3627,0,3629,1346,1346,"fsm_state = 8", 1, 2, 0);
	trans[0][3629]	= settr(3628,0,4439,1347,1347,"output = 13", 1, 2, 0);
	trans[0][3630]	= settr(3629,0,3631,1348,0,"((input==26))", 1, 2, 0);
	trans[0][3631]	= settr(3630,0,3632,1349,1349,"fsm_state = 8", 1, 2, 0);
	trans[0][3632]	= settr(3631,0,4439,1350,1350,"output = 13", 1, 2, 0);
	trans[0][3633]	= settr(3632,0,3634,1351,0,"((input==18))", 1, 2, 0);
	trans[0][3634]	= settr(3633,0,3635,1352,1352,"fsm_state = 8", 1, 2, 0);
	trans[0][3635]	= settr(3634,0,4439,1353,1353,"output = 4", 1, 2, 0);
	trans[0][3636]	= settr(3635,0,3637,1354,0,"((input==23))", 1, 2, 0);
	trans[0][3637]	= settr(3636,0,3638,1355,1355,"fsm_state = 8", 1, 2, 0);
	trans[0][3638]	= settr(3637,0,4439,1356,1356,"output = 13", 1, 2, 0);
	trans[0][3639]	= settr(3638,0,3640,1357,0,"((input==19))", 1, 2, 0);
	trans[0][3640]	= settr(3639,0,3641,1358,1358,"fsm_state = 8", 1, 2, 0);
	trans[0][3641]	= settr(3640,0,4439,1359,1359,"output = 13", 1, 2, 0);
	trans[0][3642]	= settr(3641,0,3643,1360,0,"((input==24))", 1, 2, 0);
	trans[0][3643]	= settr(3642,0,17,1361,1361,"fsm_state = 4", 1, 2, 0);
	trans[0][3644]	= settr(3643,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3645]	= settr(3644,0,3646,1362,0,"((input==22))", 1, 2, 0);
	trans[0][3646]	= settr(3645,0,3647,1363,1363,"fsm_state = 3", 1, 2, 0);
	trans[0][3647]	= settr(3646,0,3648,1364,1364,"output = 12", 1, 2, 0);
	trans[0][3648]	= settr(3647,0,3728,1365,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][3728] = settr(3727,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(3727,0,3721,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][3721]	= settr(3720,32,3726,1366,1366,"D_STEP13", 1, 2, 0);
	T = trans[0][3726] = settr(3725,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3725,0,3722,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3725,0,3724,0,0,"IF", 0, 2, 0);
	trans[0][3722]	= settr(3721,0,1,1367,0,"((dealt==0))", 1, 2, 0);
	trans[0][3723]	= settr(3722,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][3727]	= settr(3726,0,3729,1,0,".(goto)", 0, 2, 0);
	trans[0][3724]	= settr(3723,0,3725,2,0,"else", 0, 2, 0);
	trans[0][3725]	= settr(3724,0,3729,1,0,"(1)", 0, 2, 0);
	trans[0][3729]	= settr(3728,0,3730,1368,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][3730]	= settr(3729,0,3731,1369,1369,"output = 11", 1, 2, 0);
	trans[0][3731]	= settr(3730,0,3811,1370,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][3811] = settr(3810,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(3810,0,3804,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][3804]	= settr(3803,32,3809,1371,1371,"D_STEP13", 1, 2, 0);
	T = trans[0][3809] = settr(3808,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3808,0,3805,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3808,0,3807,0,0,"IF", 0, 2, 0);
	trans[0][3805]	= settr(3804,0,1,1372,0,"((dealt==0))", 1, 2, 0);
	trans[0][3806]	= settr(3805,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][3810]	= settr(3809,0,3812,1,0,".(goto)", 0, 2, 0);
	trans[0][3807]	= settr(3806,0,3808,2,0,"else", 0, 2, 0);
	trans[0][3808]	= settr(3807,0,3812,1,0,"(1)", 0, 2, 0);
	trans[0][3812]	= settr(3811,0,3813,1373,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][3813]	= settr(3812,0,4439,1374,1374,"output = 7", 1, 2, 0);
	trans[0][3814]	= settr(3813,0,17,2,0,"else", 0, 2, 0);
	trans[0][3815]	= settr(3814,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3818]	= settr(3817,0,3940,1375,0,"((fsm_state==7))", 1, 2, 0);
	T = trans[0][3940] = settr(3939,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3939,0,3819,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3939,0,3822,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3939,0,3825,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3939,0,3828,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3939,0,3831,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3939,0,3834,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3939,0,3837,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3939,0,3840,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3939,0,3843,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3939,0,3846,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3939,0,3849,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3939,0,3852,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3939,0,3938,0,0,"IF", 0, 2, 0);
	trans[0][3819]	= settr(3818,0,3820,1376,0,"((input==16))", 1, 2, 0);
	trans[0][3820]	= settr(3819,0,3821,1377,1377,"fsm_state = 42", 1, 2, 0);
	trans[0][3821]	= settr(3820,0,4439,1378,1378,"output = 15", 1, 2, 0);
	trans[0][3941]	= settr(3940,0,4439,1,0,".(goto)", 0, 2, 0);
	trans[0][3822]	= settr(3821,0,3823,1379,0,"((input==21))", 1, 2, 0);
	trans[0][3823]	= settr(3822,0,3824,1380,1380,"fsm_state = 42", 1, 2, 0);
	trans[0][3824]	= settr(3823,0,4439,1381,1381,"output = 15", 1, 2, 0);
	trans[0][3825]	= settr(3824,0,3826,1382,0,"((input==27))", 1, 2, 0);
	trans[0][3826]	= settr(3825,0,3827,1383,1383,"fsm_state = 42", 1, 2, 0);
	trans[0][3827]	= settr(3826,0,4439,1384,1384,"output = 15", 1, 2, 0);
	trans[0][3828]	= settr(3827,0,3829,1385,0,"((input==20))", 1, 2, 0);
	trans[0][3829]	= settr(3828,0,17,1386,1386,"fsm_state = 36", 1, 2, 0);
	trans[0][3830]	= settr(3829,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3831]	= settr(3830,0,3832,1387,0,"((input==23))", 1, 2, 0);
	trans[0][3832]	= settr(3831,0,17,1388,1388,"fsm_state = 8", 1, 2, 0);
	trans[0][3833]	= settr(3832,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3834]	= settr(3833,0,3835,1389,0,"((input==25))", 1, 2, 0);
	trans[0][3835]	= settr(3834,0,3836,1390,1390,"fsm_state = 7", 1, 2, 0);
	trans[0][3836]	= settr(3835,0,4439,1391,1391,"output = 4", 1, 2, 0);
	trans[0][3837]	= settr(3836,0,3838,1392,0,"((input==24))", 1, 2, 0);
	trans[0][3838]	= settr(3837,0,3839,1393,1393,"fsm_state = 7", 1, 2, 0);
	trans[0][3839]	= settr(3838,0,4439,1394,1394,"output = 9", 1, 2, 0);
	trans[0][3840]	= settr(3839,0,3841,1395,0,"((input==26))", 1, 2, 0);
	trans[0][3841]	= settr(3840,0,17,1396,1396,"fsm_state = 7", 1, 2, 0);
	trans[0][3842]	= settr(3841,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3843]	= settr(3842,0,3844,1397,0,"((input==18))", 1, 2, 0);
	trans[0][3844]	= settr(3843,0,3845,1398,1398,"fsm_state = 7", 1, 2, 0);
	trans[0][3845]	= settr(3844,0,4439,1399,1399,"output = 4", 1, 2, 0);
	trans[0][3846]	= settr(3845,0,3847,1400,0,"((input==19))", 1, 2, 0);
	trans[0][3847]	= settr(3846,0,17,1401,1401,"fsm_state = 7", 1, 2, 0);
	trans[0][3848]	= settr(3847,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3849]	= settr(3848,0,3850,1402,0,"((input==17))", 1, 2, 0);
	trans[0][3850]	= settr(3849,0,17,1403,1403,"fsm_state = 4", 1, 2, 0);
	trans[0][3851]	= settr(3850,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3852]	= settr(3851,0,3853,1404,0,"((input==22))", 1, 2, 0);
	trans[0][3853]	= settr(3852,0,3854,1405,1405,"fsm_state = 2", 1, 2, 0);
	trans[0][3854]	= settr(3853,0,3855,1406,1406,"output = 12", 1, 2, 0);
	trans[0][3855]	= settr(3854,0,3935,1407,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][3935] = settr(3934,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(3934,0,3928,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][3928]	= settr(3927,32,3933,1408,1408,"D_STEP13", 1, 2, 0);
	T = trans[0][3933] = settr(3932,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3932,0,3929,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3932,0,3931,0,0,"IF", 0, 2, 0);
	trans[0][3929]	= settr(3928,0,1,1409,0,"((dealt==0))", 1, 2, 0);
	trans[0][3930]	= settr(3929,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][3934]	= settr(3933,0,3936,1,0,".(goto)", 0, 2, 0);
	trans[0][3931]	= settr(3930,0,3932,2,0,"else", 0, 2, 0);
	trans[0][3932]	= settr(3931,0,3936,1,0,"(1)", 0, 2, 0);
	trans[0][3936]	= settr(3935,0,3937,1410,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][3937]	= settr(3936,0,4439,1411,1411,"output = 11", 1, 2, 0);
	trans[0][3938]	= settr(3937,0,17,2,0,"else", 0, 2, 0);
	trans[0][3939]	= settr(3938,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3942]	= settr(3941,0,3981,1412,0,"((fsm_state==6))", 1, 2, 0);
	T = trans[0][3981] = settr(3980,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3980,0,3943,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3980,0,3946,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3980,0,3949,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3980,0,3952,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3980,0,3955,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3980,0,3958,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3980,0,3961,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3980,0,3964,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3980,0,3967,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3980,0,3970,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3980,0,3973,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(3980,0,3976,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(3980,0,3979,0,0,"IF", 0, 2, 0);
	trans[0][3943]	= settr(3942,0,3944,1413,0,"((input==16))", 1, 2, 0);
	trans[0][3944]	= settr(3943,0,3945,1414,1414,"fsm_state = 42", 1, 2, 0);
	trans[0][3945]	= settr(3944,0,4439,1415,1415,"output = 15", 1, 2, 0);
	trans[0][3982]	= settr(3981,0,4439,1,0,".(goto)", 0, 2, 0);
	trans[0][3946]	= settr(3945,0,3947,1416,0,"((input==21))", 1, 2, 0);
	trans[0][3947]	= settr(3946,0,3948,1417,1417,"fsm_state = 42", 1, 2, 0);
	trans[0][3948]	= settr(3947,0,4439,1418,1418,"output = 15", 1, 2, 0);
	trans[0][3949]	= settr(3948,0,3950,1419,0,"((input==27))", 1, 2, 0);
	trans[0][3950]	= settr(3949,0,3951,1420,1420,"fsm_state = 42", 1, 2, 0);
	trans[0][3951]	= settr(3950,0,4439,1421,1421,"output = 15", 1, 2, 0);
	trans[0][3952]	= settr(3951,0,3953,1422,0,"((input==20))", 1, 2, 0);
	trans[0][3953]	= settr(3952,0,17,1423,1423,"fsm_state = 24", 1, 2, 0);
	trans[0][3954]	= settr(3953,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3955]	= settr(3954,0,3956,1424,0,"((input==25))", 1, 2, 0);
	trans[0][3956]	= settr(3955,0,3957,1425,1425,"fsm_state = 6", 1, 2, 0);
	trans[0][3957]	= settr(3956,0,4439,1426,1426,"output = 4", 1, 2, 0);
	trans[0][3958]	= settr(3957,0,3959,1427,0,"((input==22))", 1, 2, 0);
	trans[0][3959]	= settr(3958,0,17,1428,1428,"fsm_state = 6", 1, 2, 0);
	trans[0][3960]	= settr(3959,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3961]	= settr(3960,0,3962,1429,0,"((input==17))", 1, 2, 0);
	trans[0][3962]	= settr(3961,0,3963,1430,1430,"fsm_state = 6", 1, 2, 0);
	trans[0][3963]	= settr(3962,0,4439,1431,1431,"output = 5", 1, 2, 0);
	trans[0][3964]	= settr(3963,0,3965,1432,0,"((input==24))", 1, 2, 0);
	trans[0][3965]	= settr(3964,0,3966,1433,1433,"fsm_state = 6", 1, 2, 0);
	trans[0][3966]	= settr(3965,0,4439,1434,1434,"output = 9", 1, 2, 0);
	trans[0][3967]	= settr(3966,0,3968,1435,0,"((input==18))", 1, 2, 0);
	trans[0][3968]	= settr(3967,0,3969,1436,1436,"fsm_state = 6", 1, 2, 0);
	trans[0][3969]	= settr(3968,0,4439,1437,1437,"output = 4", 1, 2, 0);
	trans[0][3970]	= settr(3969,0,3971,1438,0,"((input==23))", 1, 2, 0);
	trans[0][3971]	= settr(3970,0,3972,1439,1439,"fsm_state = 3", 1, 2, 0);
	trans[0][3972]	= settr(3971,0,4439,1440,1440,"output = 8", 1, 2, 0);
	trans[0][3973]	= settr(3972,0,3974,1441,0,"((input==26))", 1, 2, 0);
	trans[0][3974]	= settr(3973,0,17,1442,1442,"fsm_state = 2", 1, 2, 0);
	trans[0][3975]	= settr(3974,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3976]	= settr(3975,0,3977,1443,0,"((input==19))", 1, 2, 0);
	trans[0][3977]	= settr(3976,0,3978,1444,1444,"fsm_state = 1", 1, 2, 0);
	trans[0][3978]	= settr(3977,0,4439,1445,1445,"output = 8", 1, 2, 0);
	trans[0][3979]	= settr(3978,0,17,2,0,"else", 0, 2, 0);
	trans[0][3980]	= settr(3979,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3983]	= settr(3982,0,4105,1446,0,"((fsm_state==5))", 1, 2, 0);
	T = trans[0][4105] = settr(4104,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4104,0,3984,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4104,0,3987,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4104,0,3990,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4104,0,3993,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4104,0,3996,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4104,0,3999,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4104,0,4002,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4104,0,4005,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4104,0,4008,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4104,0,4011,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4104,0,4014,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4104,0,4017,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(4104,0,4103,0,0,"IF", 0, 2, 0);
	trans[0][3984]	= settr(3983,0,3985,1447,0,"((input==16))", 1, 2, 0);
	trans[0][3985]	= settr(3984,0,3986,1448,1448,"fsm_state = 40", 1, 2, 0);
	trans[0][3986]	= settr(3985,0,4439,1449,1449,"output = 15", 1, 2, 0);
	trans[0][4106]	= settr(4105,0,4439,1,0,".(goto)", 0, 2, 0);
	trans[0][3987]	= settr(3986,0,3988,1450,0,"((input==21))", 1, 2, 0);
	trans[0][3988]	= settr(3987,0,3989,1451,1451,"fsm_state = 40", 1, 2, 0);
	trans[0][3989]	= settr(3988,0,4439,1452,1452,"output = 15", 1, 2, 0);
	trans[0][3990]	= settr(3989,0,3991,1453,0,"((input==27))", 1, 2, 0);
	trans[0][3991]	= settr(3990,0,3992,1454,1454,"fsm_state = 40", 1, 2, 0);
	trans[0][3992]	= settr(3991,0,4439,1455,1455,"output = 15", 1, 2, 0);
	trans[0][3993]	= settr(3992,0,3994,1456,0,"((input==20))", 1, 2, 0);
	trans[0][3994]	= settr(3993,0,17,1457,1457,"fsm_state = 38", 1, 2, 0);
	trans[0][3995]	= settr(3994,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][3996]	= settr(3995,0,3997,1458,0,"((input==25))", 1, 2, 0);
	trans[0][3997]	= settr(3996,0,3998,1459,1459,"fsm_state = 5", 1, 2, 0);
	trans[0][3998]	= settr(3997,0,4439,1460,1460,"output = 4", 1, 2, 0);
	trans[0][3999]	= settr(3998,0,4000,1461,0,"((input==17))", 1, 2, 0);
	trans[0][4000]	= settr(3999,0,4001,1462,1462,"fsm_state = 5", 1, 2, 0);
	trans[0][4001]	= settr(4000,0,4439,1463,1463,"output = 13", 1, 2, 0);
	trans[0][4002]	= settr(4001,0,4003,1464,0,"((input==26))", 1, 2, 0);
	trans[0][4003]	= settr(4002,0,4004,1465,1465,"fsm_state = 5", 1, 2, 0);
	trans[0][4004]	= settr(4003,0,4439,1466,1466,"output = 13", 1, 2, 0);
	trans[0][4005]	= settr(4004,0,4006,1467,0,"((input==18))", 1, 2, 0);
	trans[0][4006]	= settr(4005,0,4007,1468,1468,"fsm_state = 5", 1, 2, 0);
	trans[0][4007]	= settr(4006,0,4439,1469,1469,"output = 4", 1, 2, 0);
	trans[0][4008]	= settr(4007,0,4009,1470,0,"((input==23))", 1, 2, 0);
	trans[0][4009]	= settr(4008,0,4010,1471,1471,"fsm_state = 5", 1, 2, 0);
	trans[0][4010]	= settr(4009,0,4439,1472,1472,"output = 13", 1, 2, 0);
	trans[0][4011]	= settr(4010,0,4012,1473,0,"((input==19))", 1, 2, 0);
	trans[0][4012]	= settr(4011,0,4013,1474,1474,"fsm_state = 5", 1, 2, 0);
	trans[0][4013]	= settr(4012,0,4439,1475,1475,"output = 13", 1, 2, 0);
	trans[0][4014]	= settr(4013,0,4015,1476,0,"((input==24))", 1, 2, 0);
	trans[0][4015]	= settr(4014,0,17,1477,1477,"fsm_state = 4", 1, 2, 0);
	trans[0][4016]	= settr(4015,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][4017]	= settr(4016,0,4018,1478,0,"((input==22))", 1, 2, 0);
	trans[0][4018]	= settr(4017,0,4019,1479,1479,"fsm_state = 3", 1, 2, 0);
	trans[0][4019]	= settr(4018,0,4020,1480,1480,"output = 12", 1, 2, 0);
	trans[0][4020]	= settr(4019,0,4100,1481,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][4100] = settr(4099,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(4099,0,4093,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][4093]	= settr(4092,32,4098,1482,1482,"D_STEP13", 1, 2, 0);
	T = trans[0][4098] = settr(4097,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4097,0,4094,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(4097,0,4096,0,0,"IF", 0, 2, 0);
	trans[0][4094]	= settr(4093,0,1,1483,0,"((dealt==0))", 1, 2, 0);
	trans[0][4095]	= settr(4094,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][4099]	= settr(4098,0,4101,1,0,".(goto)", 0, 2, 0);
	trans[0][4096]	= settr(4095,0,4097,2,0,"else", 0, 2, 0);
	trans[0][4097]	= settr(4096,0,4101,1,0,"(1)", 0, 2, 0);
	trans[0][4101]	= settr(4100,0,4102,1484,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][4102]	= settr(4101,0,4439,1485,1485,"output = 11", 1, 2, 0);
	trans[0][4103]	= settr(4102,0,17,2,0,"else", 0, 2, 0);
	trans[0][4104]	= settr(4103,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][4107]	= settr(4106,0,4312,1486,0,"((fsm_state==4))", 1, 2, 0);
	T = trans[0][4312] = settr(4311,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4311,0,4108,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4311,0,4111,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4311,0,4114,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4311,0,4117,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4311,0,4120,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4311,0,4123,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4311,0,4126,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4311,0,4129,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4311,0,4132,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4311,0,4135,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4311,0,4138,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4311,0,4141,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(4311,0,4310,0,0,"IF", 0, 2, 0);
	trans[0][4108]	= settr(4107,0,4109,1487,0,"((input==16))", 1, 2, 0);
	trans[0][4109]	= settr(4108,0,4110,1488,1488,"fsm_state = 42", 1, 2, 0);
	trans[0][4110]	= settr(4109,0,4439,1489,1489,"output = 15", 1, 2, 0);
	trans[0][4313]	= settr(4312,0,4439,1,0,".(goto)", 0, 2, 0);
	trans[0][4111]	= settr(4110,0,4112,1490,0,"((input==21))", 1, 2, 0);
	trans[0][4112]	= settr(4111,0,4113,1491,1491,"fsm_state = 42", 1, 2, 0);
	trans[0][4113]	= settr(4112,0,4439,1492,1492,"output = 15", 1, 2, 0);
	trans[0][4114]	= settr(4113,0,4115,1493,0,"((input==27))", 1, 2, 0);
	trans[0][4115]	= settr(4114,0,4116,1494,1494,"fsm_state = 42", 1, 2, 0);
	trans[0][4116]	= settr(4115,0,4439,1495,1495,"output = 15", 1, 2, 0);
	trans[0][4117]	= settr(4116,0,4118,1496,0,"((input==20))", 1, 2, 0);
	trans[0][4118]	= settr(4117,0,17,1497,1497,"fsm_state = 36", 1, 2, 0);
	trans[0][4119]	= settr(4118,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][4120]	= settr(4119,0,4121,1498,0,"((input==23))", 1, 2, 0);
	trans[0][4121]	= settr(4120,0,17,1499,1499,"fsm_state = 8", 1, 2, 0);
	trans[0][4122]	= settr(4121,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][4123]	= settr(4122,0,4124,1500,0,"((input==25))", 1, 2, 0);
	trans[0][4124]	= settr(4123,0,4125,1501,1501,"fsm_state = 4", 1, 2, 0);
	trans[0][4125]	= settr(4124,0,4439,1502,1502,"output = 4", 1, 2, 0);
	trans[0][4126]	= settr(4125,0,4127,1503,0,"((input==17))", 1, 2, 0);
	trans[0][4127]	= settr(4126,0,17,1504,1504,"fsm_state = 4", 1, 2, 0);
	trans[0][4128]	= settr(4127,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][4129]	= settr(4128,0,4130,1505,0,"((input==24))", 1, 2, 0);
	trans[0][4130]	= settr(4129,0,4131,1506,1506,"fsm_state = 4", 1, 2, 0);
	trans[0][4131]	= settr(4130,0,4439,1507,1507,"output = 9", 1, 2, 0);
	trans[0][4132]	= settr(4131,0,4133,1508,0,"((input==26))", 1, 2, 0);
	trans[0][4133]	= settr(4132,0,17,1509,1509,"fsm_state = 4", 1, 2, 0);
	trans[0][4134]	= settr(4133,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][4135]	= settr(4134,0,4136,1510,0,"((input==18))", 1, 2, 0);
	trans[0][4136]	= settr(4135,0,4137,1511,1511,"fsm_state = 4", 1, 2, 0);
	trans[0][4137]	= settr(4136,0,4439,1512,1512,"output = 4", 1, 2, 0);
	trans[0][4138]	= settr(4137,0,4139,1513,0,"((input==19))", 1, 2, 0);
	trans[0][4139]	= settr(4138,0,17,1514,1514,"fsm_state = 4", 1, 2, 0);
	trans[0][4140]	= settr(4139,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][4141]	= settr(4140,0,4142,1515,0,"((input==22))", 1, 2, 0);
	trans[0][4142]	= settr(4141,0,4143,1516,1516,"fsm_state = 2", 1, 2, 0);
	trans[0][4143]	= settr(4142,0,4144,1517,1517,"output = 12", 1, 2, 0);
	trans[0][4144]	= settr(4143,0,4224,1518,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][4224] = settr(4223,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(4223,0,4217,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][4217]	= settr(4216,32,4222,1519,1519,"D_STEP13", 1, 2, 0);
	T = trans[0][4222] = settr(4221,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4221,0,4218,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(4221,0,4220,0,0,"IF", 0, 2, 0);
	trans[0][4218]	= settr(4217,0,1,1520,0,"((dealt==0))", 1, 2, 0);
	trans[0][4219]	= settr(4218,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][4223]	= settr(4222,0,4225,1,0,".(goto)", 0, 2, 0);
	trans[0][4220]	= settr(4219,0,4221,2,0,"else", 0, 2, 0);
	trans[0][4221]	= settr(4220,0,4225,1,0,"(1)", 0, 2, 0);
	trans[0][4225]	= settr(4224,0,4226,1521,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][4226]	= settr(4225,0,4227,1522,1522,"output = 11", 1, 2, 0);
	trans[0][4227]	= settr(4226,0,4307,1523,0,"printf('Output: %e\\n',output)", 1, 2, 0);
	T = trans[ 0][4307] = settr(4306,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(4306,0,4300,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][4300]	= settr(4299,32,4305,1524,1524,"D_STEP13", 1, 2, 0);
	T = trans[0][4305] = settr(4304,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4304,0,4301,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(4304,0,4303,0,0,"IF", 0, 2, 0);
	trans[0][4301]	= settr(4300,0,1,1525,0,"((dealt==0))", 1, 2, 0);
	trans[0][4302]	= settr(4301,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][4306]	= settr(4305,0,4308,1,0,".(goto)", 0, 2, 0);
	trans[0][4303]	= settr(4302,0,4304,2,0,"else", 0, 2, 0);
	trans[0][4304]	= settr(4303,0,4308,1,0,"(1)", 0, 2, 0);
	trans[0][4308]	= settr(4307,0,4309,1526,0,"printf('DFA State: %e\\n',dfa_state)", 1, 2, 0);
	trans[0][4309]	= settr(4308,0,4439,1527,1527,"output = 7", 1, 2, 0);
	trans[0][4310]	= settr(4309,0,17,2,0,"else", 0, 2, 0);
	trans[0][4311]	= settr(4310,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][4314]	= settr(4313,0,4353,1528,0,"((fsm_state==3))", 1, 2, 0);
	T = trans[0][4353] = settr(4352,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4352,0,4315,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4352,0,4318,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4352,0,4321,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4352,0,4324,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4352,0,4327,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4352,0,4330,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4352,0,4333,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4352,0,4336,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4352,0,4339,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4352,0,4342,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4352,0,4345,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4352,0,4348,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(4352,0,4351,0,0,"IF", 0, 2, 0);
	trans[0][4315]	= settr(4314,0,4316,1529,0,"((input==16))", 1, 2, 0);
	trans[0][4316]	= settr(4315,0,4317,1530,1530,"fsm_state = 40", 1, 2, 0);
	trans[0][4317]	= settr(4316,0,4439,1531,1531,"output = 15", 1, 2, 0);
	trans[0][4354]	= settr(4353,0,4439,1,0,".(goto)", 0, 2, 0);
	trans[0][4318]	= settr(4317,0,4319,1532,0,"((input==21))", 1, 2, 0);
	trans[0][4319]	= settr(4318,0,4320,1533,1533,"fsm_state = 40", 1, 2, 0);
	trans[0][4320]	= settr(4319,0,4439,1534,1534,"output = 15", 1, 2, 0);
	trans[0][4321]	= settr(4320,0,4322,1535,0,"((input==27))", 1, 2, 0);
	trans[0][4322]	= settr(4321,0,4323,1536,1536,"fsm_state = 40", 1, 2, 0);
	trans[0][4323]	= settr(4322,0,4439,1537,1537,"output = 15", 1, 2, 0);
	trans[0][4324]	= settr(4323,0,4325,1538,0,"((input==20))", 1, 2, 0);
	trans[0][4325]	= settr(4324,0,17,1539,1539,"fsm_state = 13", 1, 2, 0);
	trans[0][4326]	= settr(4325,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][4327]	= settr(4326,0,4328,1540,0,"((input==24))", 1, 2, 0);
	trans[0][4328]	= settr(4327,0,4329,1541,1541,"fsm_state = 6", 1, 2, 0);
	trans[0][4329]	= settr(4328,0,4439,1542,1542,"output = 14", 1, 2, 0);
	trans[0][4330]	= settr(4329,0,4331,1543,0,"((input==25))", 1, 2, 0);
	trans[0][4331]	= settr(4330,0,4332,1544,1544,"fsm_state = 3", 1, 2, 0);
	trans[0][4332]	= settr(4331,0,4439,1545,1545,"output = 4", 1, 2, 0);
	trans[0][4333]	= settr(4332,0,4334,1546,0,"((input==22))", 1, 2, 0);
	trans[0][4334]	= settr(4333,0,17,1547,1547,"fsm_state = 3", 1, 2, 0);
	trans[0][4335]	= settr(4334,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][4336]	= settr(4335,0,4337,1548,0,"((input==17))", 1, 2, 0);
	trans[0][4337]	= settr(4336,0,4338,1549,1549,"fsm_state = 3", 1, 2, 0);
	trans[0][4338]	= settr(4337,0,4439,1550,1550,"output = 13", 1, 2, 0);
	trans[0][4339]	= settr(4338,0,4340,1551,0,"((input==26))", 1, 2, 0);
	trans[0][4340]	= settr(4339,0,4341,1552,1552,"fsm_state = 3", 1, 2, 0);
	trans[0][4341]	= settr(4340,0,4439,1553,1553,"output = 13", 1, 2, 0);
	trans[0][4342]	= settr(4341,0,4343,1554,0,"((input==18))", 1, 2, 0);
	trans[0][4343]	= settr(4342,0,4344,1555,1555,"fsm_state = 3", 1, 2, 0);
	trans[0][4344]	= settr(4343,0,4439,1556,1556,"output = 4", 1, 2, 0);
	trans[0][4345]	= settr(4344,0,4346,1557,0,"((input==23))", 1, 2, 0);
	trans[0][4346]	= settr(4345,0,4347,1558,1558,"fsm_state = 3", 1, 2, 0);
	trans[0][4347]	= settr(4346,0,4439,1559,1559,"output = 13", 1, 2, 0);
	trans[0][4348]	= settr(4347,0,4349,1560,0,"((input==19))", 1, 2, 0);
	trans[0][4349]	= settr(4348,0,4350,1561,1561,"fsm_state = 3", 1, 2, 0);
	trans[0][4350]	= settr(4349,0,4439,1562,1562,"output = 13", 1, 2, 0);
	trans[0][4351]	= settr(4350,0,17,2,0,"else", 0, 2, 0);
	trans[0][4352]	= settr(4351,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][4355]	= settr(4354,0,4394,1563,0,"((fsm_state==2))", 1, 2, 0);
	T = trans[0][4394] = settr(4393,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4393,0,4356,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4393,0,4359,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4393,0,4362,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4393,0,4365,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4393,0,4368,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4393,0,4371,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4393,0,4374,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4393,0,4377,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4393,0,4380,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4393,0,4383,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4393,0,4386,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4393,0,4389,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(4393,0,4392,0,0,"IF", 0, 2, 0);
	trans[0][4356]	= settr(4355,0,4357,1564,0,"((input==16))", 1, 2, 0);
	trans[0][4357]	= settr(4356,0,4358,1565,1565,"fsm_state = 42", 1, 2, 0);
	trans[0][4358]	= settr(4357,0,4439,1566,1566,"output = 15", 1, 2, 0);
	trans[0][4395]	= settr(4394,0,4439,1,0,".(goto)", 0, 2, 0);
	trans[0][4359]	= settr(4358,0,4360,1567,0,"((input==21))", 1, 2, 0);
	trans[0][4360]	= settr(4359,0,4361,1568,1568,"fsm_state = 42", 1, 2, 0);
	trans[0][4361]	= settr(4360,0,4439,1569,1569,"output = 15", 1, 2, 0);
	trans[0][4362]	= settr(4361,0,4363,1570,0,"((input==27))", 1, 2, 0);
	trans[0][4363]	= settr(4362,0,4364,1571,1571,"fsm_state = 42", 1, 2, 0);
	trans[0][4364]	= settr(4363,0,4439,1572,1572,"output = 15", 1, 2, 0);
	trans[0][4365]	= settr(4364,0,4366,1573,0,"((input==20))", 1, 2, 0);
	trans[0][4366]	= settr(4365,0,17,1574,1574,"fsm_state = 12", 1, 2, 0);
	trans[0][4367]	= settr(4366,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][4368]	= settr(4367,0,4369,1575,0,"((input==23))", 1, 2, 0);
	trans[0][4369]	= settr(4368,0,4370,1576,1576,"fsm_state = 3", 1, 2, 0);
	trans[0][4370]	= settr(4369,0,4439,1577,1577,"output = 8", 1, 2, 0);
	trans[0][4371]	= settr(4370,0,4372,1578,0,"((input==25))", 1, 2, 0);
	trans[0][4372]	= settr(4371,0,4373,1579,1579,"fsm_state = 2", 1, 2, 0);
	trans[0][4373]	= settr(4372,0,4439,1580,1580,"output = 4", 1, 2, 0);
	trans[0][4374]	= settr(4373,0,4375,1581,0,"((input==22))", 1, 2, 0);
	trans[0][4375]	= settr(4374,0,17,1582,1582,"fsm_state = 2", 1, 2, 0);
	trans[0][4376]	= settr(4375,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][4377]	= settr(4376,0,4378,1583,0,"((input==17))", 1, 2, 0);
	trans[0][4378]	= settr(4377,0,4379,1584,1584,"fsm_state = 2", 1, 2, 0);
	trans[0][4379]	= settr(4378,0,4439,1585,1585,"output = 5", 1, 2, 0);
	trans[0][4380]	= settr(4379,0,4381,1586,0,"((input==24))", 1, 2, 0);
	trans[0][4381]	= settr(4380,0,4382,1587,1587,"fsm_state = 2", 1, 2, 0);
	trans[0][4382]	= settr(4381,0,4439,1588,1588,"output = 9", 1, 2, 0);
	trans[0][4383]	= settr(4382,0,4384,1589,0,"((input==26))", 1, 2, 0);
	trans[0][4384]	= settr(4383,0,17,1590,1590,"fsm_state = 2", 1, 2, 0);
	trans[0][4385]	= settr(4384,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][4386]	= settr(4385,0,4387,1591,0,"((input==18))", 1, 2, 0);
	trans[0][4387]	= settr(4386,0,4388,1592,1592,"fsm_state = 2", 1, 2, 0);
	trans[0][4388]	= settr(4387,0,4439,1593,1593,"output = 4", 1, 2, 0);
	trans[0][4389]	= settr(4388,0,4390,1594,0,"((input==19))", 1, 2, 0);
	trans[0][4390]	= settr(4389,0,17,1595,1595,"fsm_state = 2", 1, 2, 0);
	trans[0][4391]	= settr(4390,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][4392]	= settr(4391,0,17,2,0,"else", 0, 2, 0);
	trans[0][4393]	= settr(4392,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][4396]	= settr(4395,0,4435,1596,0,"((fsm_state==1))", 1, 2, 0);
	T = trans[0][4435] = settr(4434,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4434,0,4397,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4434,0,4400,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4434,0,4403,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4434,0,4406,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4434,0,4409,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4434,0,4412,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4434,0,4415,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4434,0,4418,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4434,0,4421,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4434,0,4424,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4434,0,4427,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4434,0,4430,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(4434,0,4433,0,0,"IF", 0, 2, 0);
	trans[0][4397]	= settr(4396,0,4398,1597,0,"((input==16))", 1, 2, 0);
	trans[0][4398]	= settr(4397,0,4399,1598,1598,"fsm_state = 42", 1, 2, 0);
	trans[0][4399]	= settr(4398,0,4439,1599,1599,"output = 15", 1, 2, 0);
	trans[0][4436]	= settr(4435,0,4439,1,0,".(goto)", 0, 2, 0);
	trans[0][4400]	= settr(4399,0,4401,1600,0,"((input==21))", 1, 2, 0);
	trans[0][4401]	= settr(4400,0,4402,1601,1601,"fsm_state = 42", 1, 2, 0);
	trans[0][4402]	= settr(4401,0,4439,1602,1602,"output = 15", 1, 2, 0);
	trans[0][4403]	= settr(4402,0,4404,1603,0,"((input==27))", 1, 2, 0);
	trans[0][4404]	= settr(4403,0,4405,1604,1604,"fsm_state = 42", 1, 2, 0);
	trans[0][4405]	= settr(4404,0,4439,1605,1605,"output = 15", 1, 2, 0);
	trans[0][4406]	= settr(4405,0,4407,1606,0,"((input==20))", 1, 2, 0);
	trans[0][4407]	= settr(4406,0,17,1607,1607,"fsm_state = 15", 1, 2, 0);
	trans[0][4408]	= settr(4407,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][4409]	= settr(4408,0,4410,1608,0,"((input==23))", 1, 2, 0);
	trans[0][4410]	= settr(4409,0,17,1609,1609,"fsm_state = 3", 1, 2, 0);
	trans[0][4411]	= settr(4410,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][4412]	= settr(4411,0,4413,1610,0,"((input==25))", 1, 2, 0);
	trans[0][4413]	= settr(4412,0,4414,1611,1611,"fsm_state = 1", 1, 2, 0);
	trans[0][4414]	= settr(4413,0,4439,1612,1612,"output = 4", 1, 2, 0);
	trans[0][4415]	= settr(4414,0,4416,1613,0,"((input==22))", 1, 2, 0);
	trans[0][4416]	= settr(4415,0,17,1614,1614,"fsm_state = 1", 1, 2, 0);
	trans[0][4417]	= settr(4416,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][4418]	= settr(4417,0,4419,1615,0,"((input==17))", 1, 2, 0);
	trans[0][4419]	= settr(4418,0,17,1616,1616,"fsm_state = 1", 1, 2, 0);
	trans[0][4420]	= settr(4419,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][4421]	= settr(4420,0,4422,1617,0,"((input==24))", 1, 2, 0);
	trans[0][4422]	= settr(4421,0,4423,1618,1618,"fsm_state = 1", 1, 2, 0);
	trans[0][4423]	= settr(4422,0,4439,1619,1619,"output = 9", 1, 2, 0);
	trans[0][4424]	= settr(4423,0,4425,1620,0,"((input==26))", 1, 2, 0);
	trans[0][4425]	= settr(4424,0,17,1621,1621,"fsm_state = 1", 1, 2, 0);
	trans[0][4426]	= settr(4425,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][4427]	= settr(4426,0,4428,1622,0,"((input==18))", 1, 2, 0);
	trans[0][4428]	= settr(4427,0,4429,1623,1623,"fsm_state = 1", 1, 2, 0);
	trans[0][4429]	= settr(4428,0,4439,1624,1624,"output = 4", 1, 2, 0);
	trans[0][4430]	= settr(4429,0,4431,1625,0,"((input==19))", 1, 2, 0);
	trans[0][4431]	= settr(4430,0,17,1626,1626,"fsm_state = 1", 1, 2, 0);
	trans[0][4432]	= settr(4431,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][4433]	= settr(4432,0,17,2,0,"else", 0, 2, 0);
	trans[0][4434]	= settr(4433,0,17,1,0,"goto Continue", 0, 2, 0);
	trans[0][4439]	= settr(4438,0,4440,1627,0,"printf('FSM State: %e\\n',fsm_state)", 1, 2, 0);
	trans[0][4440]	= settr(4439,0,4520,1628,0,"printf('Output: %e\\n\\n',output)", 1, 2, 0);
	T = trans[ 0][4520] = settr(4519,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(4519,0,4513,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][4513]	= settr(4512,32,4518,1629,1629,"D_STEP13", 1, 2, 0);
	T = trans[0][4518] = settr(4517,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4517,0,4514,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(4517,0,4516,0,0,"IF", 0, 2, 0);
	trans[0][4514]	= settr(4513,0,1,1630,0,"((dealt==0))", 1, 2, 0);
	trans[0][4515]	= settr(4514,0,1,1,0,"goto Restart", 0, 2, 0);
	trans[0][4519]	= settr(4518,0,4521,1,0,".(goto)", 0, 2, 0);
	trans[0][4516]	= settr(4515,0,4517,2,0,"else", 0, 2, 0);
	trans[0][4517]	= settr(4516,0,4521,1,0,"(1)", 0, 2, 0);
	trans[0][4521]	= settr(4520,0,4522,1631,0,"printf('DFA State: %e\\n\\n',dfa_state)", 1, 2, 0);
	trans[0][4524]	= settr(4523,0,4525,1,0,"break", 0, 2, 0);
	trans[0][4525]	= settr(4524,0,0,1632,1632,"-end-", 0, 3500, 0);
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
