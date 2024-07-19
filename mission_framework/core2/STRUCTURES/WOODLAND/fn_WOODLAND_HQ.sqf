/*
 * Author: CW3.Sparrow.P
 * Returns an array of arrays into a global variable to store how the locations are to be built for the objective
 *
 * Arguments:
 * N/A
 *
 * Return Value:
 * 0: data - An Array of compositions
 *
 * Example:
 * call core2_fnc_WOODLAND_HQ
 *
 * Public: No
 *
 */
 ["WOODLAND_HQ Start",1] call core2_fnc_PRINT_SYSLOG;
_data=[
	[["Land_HelipadEmpty_F",[0.5,0.5,0],0,1,0,[0,0],"","",true,false],["Land_HBarrier_01_line_5_green_F",[-2.9173,-3.04261,0],91.2297,1,0,[0,-0],"","",true,false],["babe_helper",[0,0,-5],0,1,0,[0,0],"","",true,false],["Land_HBarrier_01_line_5_green_F",[-2.75705,4.93627,0],91.2297,1,0,[0,-0],"","",true,false],["Land_ClutterCutter_small_F",[5.46081,-1.50584,0],0,1,0,[0,0],"","",true,false],["Land_ClutterCutter_small_F",[6.19474,-1.45233,1.23978e-005],0,1,0,[0,0],"","",true,false],["Land_ClutterCutter_small_F",[-0.0468985,-8.05088,0],0,1,0,[0,0],"","",true,false],["Land_ClutterCutter_small_F",[6.17807,5.50049,2.57492e-005],0,1,0,[0,0],"","",true,false],["Land_HBarrier_01_line_5_green_F",[-2.94152,-8.71422,0],91.2297,1,0,[0,-0],"","",true,false],["Land_Cargo_HQ_V1_F",[9.3208,3.70266,0],0,1,0,[0,0],"","",true,false],["Land_HBarrier_01_line_5_green_F",[-2.59143,10.653,0],91.2297,1,0,[0,-0],"","",true,false],["Land_New_WiredFence_5m_F",[4.15667,13.0264,1.43051e-006],91.513,1,0,[0,-0],"","",true,false],["Land_ClutterCutter_small_F",[-12.5186,-1.25051,0],0,1,0,[0,0],"","",true,false],["Land_ClutterCutter_small_F",[13.2297,5.42305,0],0,1,0,[0,0],"","",true,false],["Land_HBarrier_01_line_5_green_F",[-12.2542,-7.82246,0],3.85135,1,0,[0,0],"","",true,false],["CamoNet_BLUFOR_open_F",[-13.9744,5.85789,0],97.857,1,0,[0,-0],"","",true,false],["rhs_KORD_high_VDV",[13.3275,4.70889,-0.0692844],89.1826,1,0,[-7.39811e-006,-3.07538e-005],"","",true,false],["Logic",[9,9,9],0,1,0,[0,0],"","",true,false],["Land_ClutterCutter_small_F",[12.0256,10.6251,0],0,1,0,[0,0],"","",true,false],["Land_Shed_Small_F",[-7.46571,-11.7635,0],90.2052,1,0,[0,-0],"","",true,false],["Land_New_WiredFence_5m_F",[4.28337,18.0368,1.43051e-006],91.513,1,0,[0,-0],"","",true,false],["Land_ClutterCutter_small_F",[-13.4052,-10.4217,0],0,1,0,[0,0],"","",true,false],["Flag_CSAT",[8.99401,13.8903,0],0,1,0,[0,0],"","",true,false],["Land_HBarrier_01_big_4_green_F",[15.9305,-7.26693,0],268.918,1,0,[0,0],"","",true,false],["Land_ClutterCutter_small_F",[-9.63253,14.7281,0],0,1,0,[0,0],"","",true,false],["Land_HBarrier_01_line_5_green_F",[-15.8785,-9.83016,0],91.2297,1,0,[0,-0],"","",true,false],["Land_HBarrier_01_line_5_green_F",[-8.75851,-16.736,0],91.2297,1,0,[0,-0],"","",true,false],["Land_HBarrier_01_line_5_green_F",[-11.5013,16.8303,0],179.838,1,0,[0,-0],"","",true,false],["Land_HBarrier_01_big_4_green_F",[15.3794,13.9344,0],268.918,1,0,[0,0],"","",true,false],["Land_HBarrier_01_line_5_green_F",[-12.3724,-16.6549,0],0,1,0,[0,0],"","",true,false],["Land_HBarrier_01_line_5_green_F",[-5.09317,20.3246,0],91.2297,1,0,[0,-0],"","",true,false],["Land_New_WiredFence_5m_F",[4.44787,23.001,1.43051e-006],91.513,1,0,[0,-0],"","",true,false],["Land_HBarrier_01_big_4_green_F",[-21.0519,3.54068,0],268.918,1,0,[0,0],"","",true,false],["Land_HBarrier_01_big_4_green_F",[-20.8095,-5.09294,0],268.918,1,0,[0,0],"","",true,false],["Land_HBarrier_01_big_4_green_F",[15.7218,-15.9588,0],268.918,1,0,[0,0],"","",true,false],["Land_HBarrier_01_wall_corridor_green_F",[-17.9195,-14.9459,0],0,1,0,[0,0],"","",true,false],["Land_HBarrier_01_line_5_green_F",[-17.2285,16.7842,0],179.838,1,0,[0,-0],"","",true,false],["Land_ClutterCutter_small_F",[-13.0423,20.3494,0],0,1,0,[0,0],"","",true,false],["Land_HBarrier_01_big_4_green_F",[-21.2048,12.188,0],268.918,1,0,[0,0],"","",true,false],["Land_HBarrier_01_big_4_green_F",[-3.11023,24.294,0],0,1,0,[0,0],"","",true,false],["Land_ClutterCutter_small_F",[-21.8646,-11.8663,0],0,1,0,[0,0],"","",true,false],["Land_BagBunker_01_small_green_F",[-22.6509,-11.4148,0],90.8108,1,0,[0,-0],"","",true,false],["Land_HBarrier_01_big_4_green_F",[5.69886,24.2427,0],0,1,0,[0,0],"","",true,false],["Land_HBarrier_01_big_tower_green_F",[13.2378,21.5045,0],228.033,1,0,[0,0],"","",true,false],["Land_ClutterCutter_small_F",[13.9061,22.0794,2.28029],0,1,0,[0,0],"","",true,false],["Land_HBarrier_01_big_4_green_F",[-21.2555,20.8122,0],268.918,1,0,[0,0],"","",true,false],["Land_HBarrier_01_big_4_green_F",[-6.28342,30.0446,0],268.918,1,0,[0,0],"","",true,false],["Land_ClutterCutter_small_F",[-8.43968,24.3189,2.29125],0,1,0,[0,0],"","",true,false],["Land_ClutterCutter_small_F",[-16.9925,25.6082,9.53674e-007],0,1,0,[0,0],"","",true,false],["Land_Cargo_Tower_V1_F",[-15.3942,27.8634,0],269.771,1,0,[0,0],"","",true,false],["Land_HBarrier_01_big_4_green_F",[-9.49513,35.0887,0],0,1,0,[0,0],"","",true,false],["Land_HBarrier_01_big_4_green_F",[-21.261,29.8449,0],268.918,1,0,[0,0],"","",true,false],["Land_ClutterCutter_small_F",[-13.1801,32.3777,2.6],0,1,0,[0,0],"","",true,false],["Land_HBarrier_01_big_4_green_F",[-18.1122,35.1469,0],0,1,0,[0,0],"","",true,false],["Land_ClutterCutter_small_F",[-16.6813,32.0756,0],0,1,0,[0,0],"","",true,false]]
,[
	["Land_HelipadEmpty_F",[0,0,0],0,1,0,[0,0],"","",true,false], 
	["Land_HelipadEmpty_F",[0.5,0.5,0],0,1,0,[0,0],"","",true,false], 
	["Land_PaperBox_open_full_F",[-1.70925,-0.570248,0],75,1,0,[0,0],"","",true,false], 
	["Land_CratesShabby_F",[-3.13552,-1.01361,0],90,1,0,[0,-0],"","",true,false], 
	["Land_fort_bagfence_long",[-2.96584,-1.83197,0],0,1,0,[0,0],"","",true,false], 
	["babe_helper",[0,0,-5],0,1,0,[0,0],"","",true,false], 
	["Land_WaterBarrel_F",[3.79956,-4.56805,5.24521e-006],209.994,1,0,[0.000343961,-0.00102633],"","",true,false], 
	["Land_fort_bagfence_corner",[-6.48,-2.97967,0],90,1,0,[0,-0],"","",true,false], 
	["Land_MetalBarrel_F",[5.3089,-4.17135,-0.00193739],299.633,1,0.0914863,[0.487414,-0.231248],"","",true,false], 
	["Land_Barrack2_EP1",[7.822,-0.818051,0],90,1,0,[0,-0],"","",true,false], 
	["Land_MetalBarrel_F",[5.04417,-5.0163,1.43051e-006],314.971,1,0.00494823,[0.000548899,-0.000570866],"","",true,false], 
	["Flag_CSAT",[-3.81336,-5.57381,0],0,1,0,[0,0],"","",true,false], 
	["Land_MetalBarrel_F",[5.7993,-4.94305,1.43051e-006],359.968,1,0.00494835,[-0.000541448,-0.000536398],"","",true,false], 
	["PowerGenerator_EP1",[-1.95046,7.80695,0],180,1,0,[0,0],"","",true,false], 
	["Land_CampingChair_V1_F",[-8.01577,2.47378,0.00309563],151.188,1,0,[-0.000611841,-0.00160787],"","",true,false], 
	["Land_CampingTable_F",[-7.96448,3.11435,-0.00259113],143.622,1,0,[0.000153512,-1.30126e-005],"","",true,false], 
	["GunrackTK_EP1",[-8.24245,-3.86883,0],285,1,0,[0,0],"","",true,false], 
	["Land_CamoNetVar_EAST_EP1",[-8.46852,1.93512,-0.813005],0,1,0,[0,0],"","",true,false], 
	["Land_CampingChair_V1_F",[-8.21536,3.8304,0.00309896],284.961,1,0,[-0.00155858,0.00115868],"","",true,false], 
	["GunrackTK_EP1",[3.57298,7.97565,0],15,1,0,[0,0],"","",true,false], 
	["Land_fort_bagfence_long",[-7.08938,-6.17767,0],90,1,0,[0,-0],"","",true,false], 
	["Barrel3",[7.04954,6.55695,0],225.186,1,0,[0,0],"","",true,false], 
	["Barrel3",[6.79173,7.2779,0],299.981,1,0,[0,0],"","",true,false], 
	["Land_PaperBox_closed_F",[-8.70754,-5.32855,0],225,1,0,[0,0],"","",true,false], 
	["Barrel3",[7.67454,7.05695,0],299.981,1,0,[0,0],"","",true,false], 
	["Land_CampingChair_V2_F",[9.71973,5.47736,-9.53674e-007],210.006,1,0,[0.00106059,-0.000847548],"","",true,false], 
	["GunrackTK_EP1",[-6.53078,8.41291,0],270,1,0,[0,0],"","",true,false], 
	["Land_WoodenTable_small_F",[10.0161,6.29694,0],284.997,1,0,[6.55438e-005,-0.000153515],"","",true,false], 
	["Land_TTowerSmall_2_F",[-1.3594,8.28351,0],0,1,0,[0,0],"","",true,false], 
	["Land_fort_rampart_EP1",[-4.95046,9.45636,0],180,1,0,[0,0],"","",true,false], 
	["Land_fort_rampart_EP1",[5.79954,-9.21746,0],0,1,0,[0,0],"","",true,false], 
	["Land_fort_rampart_EP1",[6.97361,8.40729,0],195,1,0,[0,0],"","",true,false], 
	["Land_fort_rampart_EP1",[-7.62453,-7.91839,0],15,1,0,[0,0],"","",true,false], 
	["Land_FieldToilet_F",[12.4245,-4.81805,9.53674e-007],75.0043,1,0,[-4.35438e-005,-3.43913e-005],"","",true,false], 
	["Land_fort_bagfence_corner",[14.3879,5.58649,0],180,1,0,[0,0],"","",true,false], 
	["Logic",[9,9,8.21585],357.102,1,0,[-19.6026,9.10032],"","",true,false], 
	["Land_fort_bagfence_long",[-13.4659,8.41803,0],0,1,0,[0,0],"","",true,false], 
	["Land_fort_bagfence_corner",[14.954,-7.78143,0],270,1,0,[0,0],"","",true,false], 
	["Land_fort_rampart_EP1",[-14.6483,-2.33026,0],60,1,0,[0,0],"","",true,false], 
	["Land_fort_rampart_EP1",[15.4489,-1.31805,0],270,1,0,[0,0],"","",true,false], 
	["Land_fort_bagfence_round",[-18.4666,8.07648,0],315,1,0,[0,0],"","",true,false]
]
];
 ["WOODLAND_HQ End",1] call core2_fnc_PRINT_SYSLOG;
_data;

