(* blackbox *)
module full_sram (

`ifdef USE_POWER_PINS
	inout vccd1,	// User area 1 1.8V power
	inout vssd1,	// User area 1 digital ground
`endif

input PRE,
input readen,
input writeen,

input DataIn0,
input DataIn1,
input DataIn2,
input DataIn3,
input DataIn4,
input DataIn5,
input DataIn6,
input DataIn7,
input DataIn8,
input DataIn9,
input DataIn10,
input DataIn11,
input DataIn12,
input DataIn13,
input DataIn14,
input DataIn15,
input DataIn16,
input DataIn17,
input DataIn18,
input DataIn19,
input DataIn20,
input DataIn21,
input DataIn22,
input DataIn23,
input DataIn24,
input DataIn25,
input DataIn26,
input DataIn27,
input DataIn28,
input DataIn29,
input DataIn30,
input DataIn31,

output DataOut0,
output DataOut1,
output DataOut2,
output DataOut3,
output DataOut4,
output DataOut5,
output DataOut6,
output DataOut7,
output DataOut8,
output DataOut9,
output DataOut10,
output DataOut11,
output DataOut12,
output DataOut13,
output DataOut14,
output DataOut15,
output DataOut16,
output DataOut17,
output DataOut18,
output DataOut19,
output DataOut20,
output DataOut21,
output DataOut22,
output DataOut23,
output DataOut24,
output DataOut25,
output DataOut26,
output DataOut27,
output DataOut28,
output DataOut29,
output DataOut30,
output DataOut31,

input WL0,
input WL1,
input WL2,
input WL3,
input WL4,
input WL5,
input WL6,
input WL7,
input WL8,
input WL9,
input WL10,
input WL11,
input WL12,
input WL13,
input WL14,
input WL15,
input WL16,
input WL17,
input WL18,
input WL19,
input WL20,
input WL21,
input WL22,
input WL23,
input WL24,
input WL25,
input WL26,
input WL27,
input WL28,
input WL29,
input WL30,
input WL31,
input WL32,
input WL33,
input WL34,
input WL35,
input WL36,
input WL37,
input WL38,
input WL39,
input WL40,
input WL41,
input WL42,
input WL43,
input WL44,
input WL45,
input WL46,
input WL47,
input WL48,
input WL49,
input WL50,
input WL51,
input WL52,
input WL53,
input WL54,
input WL55,
input WL56,
input WL57,
input WL58,
input WL59,
input WL60,
input WL61,
input WL62,
input WL63,
input WL64,
input WL65,
input WL66,
input WL67,
input WL68,
input WL69,
input WL70,
input WL71,
input WL72,
input WL73,
input WL74,
input WL75,
input WL76,
input WL77,
input WL78,
input WL79,
input WL80,
input WL81,
input WL82,
input WL83,
input WL84,
input WL85,
input WL86,
input WL87,
input WL88,
input WL89,
input WL90,
input WL91,
input WL92,
input WL93,
input WL94,
input WL95,
input WL96,
input WL97,
input WL98,
input WL99,
input WL100,
input WL101,
input WL102,
input WL103,
input WL104,
input WL105,
input WL106,
input WL107,
input WL108,
input WL109,
input WL110,
input WL111,
input WL112,
input WL113,
input WL114,
input WL115,
input WL116,
input WL117,
input WL118,
input WL119,
input WL120,
input WL121,
input WL122,
input WL123,
input WL124,
input WL125,
input WL126,
input WL127,
input WL128,
input WL129,
input WL130,
input WL131,
input WL132,
input WL133,
input WL134,
input WL135,
input WL136,
input WL137,
input WL138,
input WL139,
input WL140,
input WL141,
input WL142,
input WL143,
input WL144,
input WL145,
input WL146,
input WL147,
input WL148,
input WL149,
input WL150,
input WL151,
input WL152,
input WL153,
input WL154,
input WL155,
input WL156,
input WL157,
input WL158,
input WL159,
input WL160,
input WL161,
input WL162,
input WL163,
input WL164,
input WL165,
input WL166,
input WL167,
input WL168,
input WL169,
input WL170,
input WL171,
input WL172,
input WL173,
input WL174,
input WL175,
input WL176,
input WL177,
input WL178,
input WL179,
input WL180,
input WL181,
input WL182,
input WL183,
input WL184,
input WL185,
input WL186,
input WL187,
input WL188,
input WL189,
input WL190,
input WL191,
input WL192,
input WL193,
input WL194,
input WL195,
input WL196,
input WL197,
input WL198,
input WL199,
input WL200,
input WL201,
input WL202,
input WL203,
input WL204,
input WL205,
input WL206,
input WL207,
input WL208,
input WL209,
input WL210,
input WL211,
input WL212,
input WL213,
input WL214,
input WL215,
input WL216,
input WL217,
input WL218,
input WL219,
input WL220,
input WL221,
input WL222,
input WL223,
input WL224,
input WL225,
input WL226,
input WL227,
input WL228,
input WL229,
input WL230,
input WL231,
input WL232,
input WL233,
input WL234,
input WL235,
input WL236,
input WL237,
input WL238,
input WL239,
input WL240,
input WL241,
input WL242,
input WL243,
input WL244,
input WL245,
input WL246,
input WL247,
input WL248,
input WL249,
input WL250,
input WL251,
input WL252,
input WL253,
input WL254,
input WL255,
input WL256,
input WL257,
input WL258,
input WL259,
input WL260,
input WL261,
input WL262,
input WL263,
input WL264,
input WL265,
input WL266,
input WL267,
input WL268,
input WL269,
input WL270,
input WL271,
input WL272,
input WL273,
input WL274,
input WL275,
input WL276,
input WL277,
input WL278,
input WL279,
input WL280,
input WL281,
input WL282,
input WL283,
input WL284,
input WL285,
input WL286,
input WL287,
input WL288,
input WL289,
input WL290,
input WL291,
input WL292,
input WL293,
input WL294,
input WL295,
input WL296,
input WL297,
input WL298,
input WL299,
input WL300,
input WL301,
input WL302,
input WL303,
input WL304,
input WL305,
input WL306,
input WL307,
input WL308,
input WL309,
input WL310,
input WL311,
input WL312,
input WL313,
input WL314,
input WL315,
input WL316,
input WL317,
input WL318,
input WL319,
input WL320,
input WL321,
input WL322,
input WL323,
input WL324,
input WL325,
input WL326,
input WL327,
input WL328,
input WL329,
input WL330,
input WL331,
input WL332,
input WL333,
input WL334,
input WL335,
input WL336,
input WL337,
input WL338,
input WL339,
input WL340,
input WL341,
input WL342,
input WL343,
input WL344,
input WL345,
input WL346,
input WL347,
input WL348,
input WL349,
input WL350,
input WL351,
input WL352,
input WL353,
input WL354,
input WL355,
input WL356,
input WL357,
input WL358,
input WL359,
input WL360,
input WL361,
input WL362,
input WL363,
input WL364,
input WL365,
input WL366,
input WL367,
input WL368,
input WL369,
input WL370,
input WL371,
input WL372,
input WL373,
input WL374,
input WL375,
input WL376,
input WL377,
input WL378,
input WL379,
input WL380,
input WL381,
input WL382,
input WL383,
input WL384,
input WL385,
input WL386,
input WL387,
input WL388,
input WL389,
input WL390,
input WL391,
input WL392,
input WL393,
input WL394,
input WL395,
input WL396,
input WL397,
input WL398,
input WL399,
input WL400,
input WL401,
input WL402,
input WL403,
input WL404,
input WL405,
input WL406,
input WL407,
input WL408,
input WL409,
input WL410,
input WL411,
input WL412,
input WL413,
input WL414,
input WL415,
input WL416,
input WL417,
input WL418,
input WL419,
input WL420,
input WL421,
input WL422,
input WL423,
input WL424,
input WL425,
input WL426,
input WL427,
input WL428,
input WL429,
input WL430,
input WL431,
input WL432,
input WL433,
input WL434,
input WL435,
input WL436,
input WL437,
input WL438,
input WL439,
input WL440,
input WL441,
input WL442,
input WL443,
input WL444,
input WL445,
input WL446,
input WL447,
input WL448,
input WL449,
input WL450,
input WL451,
input WL452,
input WL453,
input WL454,
input WL455,
input WL456,
input WL457,
input WL458,
input WL459,
input WL460,
input WL461,
input WL462,
input WL463,
input WL464,
input WL465,
input WL466,
input WL467,
input WL468,
input WL469,
input WL470,
input WL471,
input WL472,
input WL473,
input WL474,
input WL475,
input WL476,
input WL477,
input WL478,
input WL479,
input WL480,
input WL481,
input WL482,
input WL483,
input WL484,
input WL485,
input WL486,
input WL487,
input WL488,
input WL489,
input WL490,
input WL491,
input WL492,
input WL493,
input WL494,
input WL495,
input WL496,
input WL497,
input WL498,
input WL499,
input WL500,
input WL501,
input WL502,
input WL503,
input WL504,
input WL505,
input WL506,
input WL507,
input WL508,
input WL509,
input WL510,
input WL511,
input WL512,
input WL513,
input WL514,
input WL515,
input WL516,
input WL517,
input WL518,
input WL519,
input WL520,
input WL521,
input WL522,
input WL523,
input WL524,
input WL525,
input WL526,
input WL527,
input WL528,
input WL529,
input WL530,
input WL531,
input WL532,
input WL533,
input WL534,
input WL535,
input WL536,
input WL537,
input WL538,
input WL539,
input WL540,
input WL541,
input WL542,
input WL543,
input WL544,
input WL545,
input WL546,
input WL547,
input WL548,
input WL549,
input WL550,
input WL551,
input WL552,
input WL553,
input WL554,
input WL555,
input WL556,
input WL557,
input WL558,
input WL559,
input WL560,
input WL561,
input WL562,
input WL563,
input WL564,
input WL565,
input WL566,
input WL567,
input WL568,
input WL569,
input WL570,
input WL571,
input WL572,
input WL573,
input WL574,
input WL575,
input WL576,
input WL577,
input WL578,
input WL579,
input WL580,
input WL581,
input WL582,
input WL583,
input WL584,
input WL585,
input WL586,
input WL587,
input WL588,
input WL589,
input WL590,
input WL591,
input WL592,
input WL593,
input WL594,
input WL595,
input WL596,
input WL597,
input WL598,
input WL599,
input WL600,
input WL601,
input WL602,
input WL603,
input WL604,
input WL605,
input WL606,
input WL607,
input WL608,
input WL609,
input WL610,
input WL611,
input WL612,
input WL613,
input WL614,
input WL615,
input WL616,
input WL617,
input WL618,
input WL619,
input WL620,
input WL621,
input WL622,
input WL623,
input WL624,
input WL625,
input WL626,
input WL627,
input WL628,
input WL629,
input WL630,
input WL631,
input WL632,
input WL633,
input WL634,
input WL635,
input WL636,
input WL637,
input WL638,
input WL639,
input WL640,
input WL641,
input WL642,
input WL643,
input WL644,
input WL645,
input WL646,
input WL647,
input WL648,
input WL649,
input WL650,
input WL651,
input WL652,
input WL653,
input WL654,
input WL655,
input WL656,
input WL657,
input WL658,
input WL659,
input WL660,
input WL661,
input WL662,
input WL663,
input WL664,
input WL665,
input WL666,
input WL667,
input WL668,
input WL669,
input WL670,
input WL671,
input WL672,
input WL673,
input WL674,
input WL675,
input WL676,
input WL677,
input WL678,
input WL679,
input WL680,
input WL681,
input WL682,
input WL683,
input WL684,
input WL685,
input WL686,
input WL687,
input WL688,
input WL689,
input WL690,
input WL691,
input WL692,
input WL693,
input WL694,
input WL695,
input WL696,
input WL697,
input WL698,
input WL699,
input WL700,
input WL701,
input WL702,
input WL703,
input WL704,
input WL705,
input WL706,
input WL707,
input WL708,
input WL709,
input WL710,
input WL711,
input WL712,
input WL713,
input WL714,
input WL715,
input WL716,
input WL717,
input WL718,
input WL719,
input WL720,
input WL721,
input WL722,
input WL723,
input WL724,
input WL725,
input WL726,
input WL727,
input WL728,
input WL729,
input WL730,
input WL731,
input WL732,
input WL733,
input WL734,
input WL735,
input WL736,
input WL737,
input WL738,
input WL739,
input WL740,
input WL741,
input WL742,
input WL743,
input WL744,
input WL745,
input WL746,
input WL747,
input WL748,
input WL749,
input WL750,
input WL751,
input WL752,
input WL753,
input WL754,
input WL755,
input WL756,
input WL757,
input WL758,
input WL759,
input WL760,
input WL761,
input WL762,
input WL763,
input WL764,
input WL765,
input WL766,
input WL767,
input WL768,
input WL769,
input WL770,
input WL771,
input WL772,
input WL773,
input WL774,
input WL775,
input WL776,
input WL777,
input WL778,
input WL779,
input WL780,
input WL781,
input WL782,
input WL783,
input WL784,
input WL785,
input WL786,
input WL787,
input WL788,
input WL789,
input WL790,
input WL791,
input WL792,
input WL793,
input WL794,
input WL795,
input WL796,
input WL797,
input WL798,
input WL799,
input WL800,
input WL801,
input WL802,
input WL803,
input WL804,
input WL805,
input WL806,
input WL807,
input WL808,
input WL809,
input WL810,
input WL811,
input WL812,
input WL813,
input WL814,
input WL815,
input WL816,
input WL817,
input WL818,
input WL819,
input WL820,
input WL821,
input WL822,
input WL823,
input WL824,
input WL825,
input WL826,
input WL827,
input WL828,
input WL829,
input WL830,
input WL831,
input WL832,
input WL833,
input WL834,
input WL835,
input WL836,
input WL837,
input WL838,
input WL839,
input WL840,
input WL841,
input WL842,
input WL843,
input WL844,
input WL845,
input WL846,
input WL847,
input WL848,
input WL849,
input WL850,
input WL851,
input WL852,
input WL853,
input WL854,
input WL855,
input WL856,
input WL857,
input WL858,
input WL859,
input WL860,
input WL861,
input WL862,
input WL863,
input WL864,
input WL865,
input WL866,
input WL867,
input WL868,
input WL869,
input WL870,
input WL871,
input WL872,
input WL873,
input WL874,
input WL875,
input WL876,
input WL877,
input WL878,
input WL879,
input WL880,
input WL881,
input WL882,
input WL883,
input WL884,
input WL885,
input WL886,
input WL887,
input WL888,
input WL889,
input WL890,
input WL891,
input WL892,
input WL893,
input WL894,
input WL895,
input WL896,
input WL897,
input WL898,
input WL899,
input WL900,
input WL901,
input WL902,
input WL903,
input WL904,
input WL905,
input WL906,
input WL907,
input WL908,
input WL909,
input WL910,
input WL911,
input WL912,
input WL913,
input WL914,
input WL915,
input WL916,
input WL917,
input WL918,
input WL919,
input WL920,
input WL921,
input WL922,
input WL923,
input WL924,
input WL925,
input WL926,
input WL927,
input WL928,
input WL929,
input WL930,
input WL931,
input WL932,
input WL933,
input WL934,
input WL935,
input WL936,
input WL937,
input WL938,
input WL939,
input WL940,
input WL941,
input WL942,
input WL943,
input WL944,
input WL945,
input WL946,
input WL947,
input WL948,
input WL949,
input WL950,
input WL951,
input WL952,
input WL953,
input WL954,
input WL955,
input WL956,
input WL957,
input WL958,
input WL959,
input WL960,
input WL961,
input WL962,
input WL963,
input WL964,
input WL965,
input WL966,
input WL967,
input WL968,
input WL969,
input WL970,
input WL971,
input WL972,
input WL973,
input WL974,
input WL975,
input WL976,
input WL977,
input WL978,
input WL979,
input WL980,
input WL981,
input WL982,
input WL983,
input WL984,
input WL985,
input WL986,
input WL987,
input WL988,
input WL989,
input WL990,
input WL991,
input WL992,
input WL993,
input WL994,
input WL995,
input WL996,
input WL997,
input WL998,
input WL999,
input WL1000,
input WL1001,
input WL1002,
input WL1003,
input WL1004,
input WL1005,
input WL1006,
input WL1007,
input WL1008,
input WL1009,
input WL1010,
input WL1011,
input WL1012,
input WL1013,
input WL1014,
input WL1015,
input WL1016,
input WL1017,
input WL1018,
input WL1019,
input WL1020,
input WL1021,
input WL1022,
input WL1023
   
);
endmodule
`default_nettype wire
