#include "..\script_component.hpp";
/*
 * Author: CW3.Sparrow.P
 * File that stores a table of all structures for the different objectives we have When called returns Entire table
 *
 * Arguments:
 * None
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * call rScripts_fnc_tightlz_startaction
 *
 * Public: No
 * 
 */
 params ["_objStructureIDs","_objStructureTerrian",["_objSpecificBuildingFill",""]];
[
 ["OBJ_CAPTURE_HQ","WOODLAND","",[["Land_HelipadEmpty_F",[-0.5,0.5,5],[0,1,0]],["Land_Cargo_HQ_V1_F",[1.57338,-4.14232,5],[0,1,0]],["Land_TreeBin_F",[-4.80163,3.85752,5],[-1,1.19249e-008,0]],["Flag_CSAT",[-4.677,4.233,5],[0,1,0]],["GunrackTK_EP1",[0.381965,9.87379,5],[-8.74228e-008,-1,0]],["GunrackTK_EP1",[1.38196,9.87379,5],[-8.74228e-008,-1,0]],["Land_CratesPlastic_F",[-4.67663,9.35752,5],[0.707107,-0.707107,0]],["Land_CratesShabby_F",[-5.05155,10.1073,5],[0.707107,-0.707107,0]],["Land_CratesWooden_F",[-4.34445,10.8145,5],[-0.707107,-0.707107,0]],["Land_HBarrier_5_F",[11.6984,0.482249,5],[1,-4.37114e-008,0]],["Land_CamoNet_EAST",[-1.92659,12.1072,5],[0,1,0]],["Land_HBarrier_5_F",[0.698371,-12.3926,5],[0,1,0]],["Land_HBarrier_5_F",[11.6984,-5.01775,5],[1,-4.37114e-008,0]],["Land_HBarrier_5_F",[6.32337,-11.1426,5],[0,1,0]],["Land_LampShabby_F",[-2.42655,-12.2677,5],[-1,1.19249e-008,0]],["Land_HBarrier_1_F",[4.0734,-12.3923,5],[0,1,0]],["Land_fort_bagfence_corner",[-13.3015,0.607499,5],[1,-4.37114e-008,0]],["RU_WarfareBUAVterminal",[-11.4266,-6.64241,5],[0.258819,0.965926,0]],["Misc_Backpackheap",[2.82339,13.4825,5],[0,1,0]],["Land_fort_bagfence_round",[10.0734,9.48251,5],[0.965926,0.258819,0]],["Land_HBarrier_1_F",[9.82336,-11.2675,5],[-1,1.19249e-008,0]],["Land_HBarrier_3_F",[11.6985,-9.3927,5],[1,-4.37114e-008,0]],["Land_fort_bagfence_long",[8.19841,13.1072,5],[1,-4.37114e-008,0]],["Land_fort_bagfence_long",[6.44835,14.3572,5],[0,1,0]],["Land_HBarrier_1_F",[11.1984,-11.1425,5],[-0.965926,-0.258819,0]],["Land_fort_bagfence_corner",[-13.3017,10.1072,5],[0,1,0]],["Land_fort_rampart",[0.198405,16.8573,5],[-8.74228e-008,-1,0]],["Land_GarbageBags_F",[-13.6766,-10.6426,5],[0,1,0]],["Misc_cargo_cont_net1",[-10.9266,13.4823,5],[0,1,0]],["Land_fort_rampart",[-16.8016,-5.76754,5],[1,-4.37114e-008,0]],["Land_fort_rampart",[-9.55159,16.9823,5],[-8.74228e-008,-1,0]],["Land_fort_bagfence_long",[-14.5516,13.1072,5],[1,-4.37114e-008,0]],["Land_fort_rampart",[-14.1765,-15.8925,5],[0.866025,0.5,0]]],[[-0.5,0.5,5],[9.33835,8.34015,5],[-13.4349,0.0224545,5],[6.51816,13.1736,5],[-13.728,10.5993,5]]]
, ["OBJ_CAPTURE_HQ","WOODLAND","",[["Land_HelipadEmpty_F",[-0.5,0.5,5],[0,1,0]],["Land_Cargo_HQ_V1_F",[1.57338,-4.14232,5],[0,1,0]],["Land_TreeBin_F",[-4.80163,3.85752,5],[-1,1.19249e-008,0]],["Flag_CSAT",[-4.677,4.233,5],[0,1,0]],["GunrackTK_EP1",[0.381965,9.87379,5],[-8.74228e-008,-1,0]],["GunrackTK_EP1",[1.38196,9.87379,5],[-8.74228e-008,-1,0]],["Land_CratesPlastic_F",[-4.67663,9.35752,5],[0.707107,-0.707107,0]],["Land_CratesShabby_F",[-5.05155,10.1073,5],[0.707107,-0.707107,0]],["Land_CratesWooden_F",[-4.34445,10.8145,5],[-0.707107,-0.707107,0]],["Land_HBarrier_5_F",[11.6984,0.482249,5],[1,-4.37114e-008,0]],["Land_CamoNet_EAST",[-1.92659,12.1072,5],[0,1,0]],["Land_HBarrier_5_F",[0.698371,-12.3926,5],[0,1,0]],["Land_HBarrier_5_F",[11.6984,-5.01775,5],[1,-4.37114e-008,0]],["Land_HBarrier_5_F",[6.32337,-11.1426,5],[0,1,0]],["Land_LampShabby_F",[-2.42655,-12.2677,5],[-1,1.19249e-008,0]],["Land_HBarrier_1_F",[4.0734,-12.3923,5],[0,1,0]],["Land_fort_bagfence_corner",[-13.3015,0.607499,5],[1,-4.37114e-008,0]],["RU_WarfareBUAVterminal",[-11.4266,-6.64241,5],[0.258819,0.965926,0]],["Misc_Backpackheap",[2.82339,13.4825,5],[0,1,0]],["Land_fort_bagfence_round",[10.0734,9.48251,5],[0.965926,0.258819,0]],["Land_HBarrier_1_F",[9.82336,-11.2675,5],[-1,1.19249e-008,0]],["Land_HBarrier_3_F",[11.6985,-9.3927,5],[1,-4.37114e-008,0]],["Land_fort_bagfence_long",[8.19841,13.1072,5],[1,-4.37114e-008,0]],["Land_fort_bagfence_long",[6.44835,14.3572,5],[0,1,0]],["Land_HBarrier_1_F",[11.1984,-11.1425,5],[-0.965926,-0.258819,0]],["Land_fort_bagfence_corner",[-13.3017,10.1072,5],[0,1,0]],["Land_fort_rampart",[0.198405,16.8573,5],[-8.74228e-008,-1,0]],["Land_GarbageBags_F",[-13.6766,-10.6426,5],[0,1,0]],["Misc_cargo_cont_net1",[-10.9266,13.4823,5],[0,1,0]],["Land_fort_rampart",[-16.8016,-5.76754,5],[1,-4.37114e-008,0]],["Land_fort_rampart",[-9.55159,16.9823,5],[-8.74228e-008,-1,0]],["Land_fort_bagfence_long",[-14.5516,13.1072,5],[1,-4.37114e-008,0]],["Land_fort_rampart",[-14.1765,-15.8925,5],[0.866025,0.5,0]]],[[-0.5,0.5,5],[9.33835,8.34015,5],[-13.4349,0.0224545,5],[6.51816,13.1736,5],[-13.728,10.5993,5]]]
, ["OBJ_DESTORY_RADIO","WOODLAND","",[["Land_HelipadEmpty_F",[2.5,-0.5,5],[0,1,0]],["Land_CamoNet_EAST",[4.76315,2.019,5],[0,1,0]],["Land_HBarrier_1_F",[3.38815,-4.23108,5],[0,1,0]],["Land_Sacks_heap_F",[5.13827,2.89399,5],[0,1,0]],["Land_Sack_F",[5.63815,2.14391,5],[-0.965926,0.258819,0]],["Land_fort_bagfence_long",[-5.11187,3.89395,5],[0.258819,0.965926,0]],["Land_fort_bagfence_long",[5.5131,-4.23101,5],[0,1,0]],["Land_HBarrier_1_F",[-2.73685,-6.60608,5],[0,1,0]],["Land_fort_rampart",[4.63815,6.01886,5],[-8.74228e-008,-1,0]],["Land_CratesWooden_F",[7.76315,2.51899,5],[0,1,0]],["Land_fort_bagfence_long",[-2.98685,-8.85597,5],[1,-4.37114e-008,0]],["Land_fort_bagfence_long",[8.5131,-4.23101,5],[0,1,0]],["Land_CratesShabby_F",[9.38815,2.89398,5],[0.258819,-0.965926,0]],["Land_fort_bagfence_round",[-9.48689,3.89409,5],[-0.5,0.866025,0]],["Land_fort_bagfence_long",[-11.7368,0.0190868,5],[-0.965926,0.258819,0]],["Land_fort_bagfence_corner",[11.5131,-2.85606,5],[-1,1.19249e-008,0]],["Land_Vysilac_FM",[-7.9869,-6.60611,5],[0,1,0]],["Land_fort_bagfence_corner",[-4.23687,-11.8561,5],[-1,1.19249e-008,0]],["Land_fort_bagfence_round",[13.8881,1.26891,5],[1,-4.37114e-008,0]],["Land_fort_bagfence_long",[-7.2369,-13.231,5],[2.38419e-007,1,0]],["Land_fort_bagfence_corner",[-10.2369,-11.981,5],[0,1,0]]],[[2.5,-0.5,5],[-5.66816,3.0565,5],[-10.6588,-0.0380013,5],[10.4251,-2.52318,5],[-4.87223,-10.8251,5],[13.2116,1.96473,5]]]
,["OBJ_CAPTURE_HQ","WOODLAND","","/*
Grab data:
Mission: Composition_Compiler
World: VR
Anchor position: [0, 0]
Area size: 50
Using orientation of objects: yes
*/

[
	[""Land_CampingChair_V2_F"",[0.0698787,-0.700241,4.76837e-006],150.853,1,0,[-0.000389765,-0.00115013],"""","""",true,false], 
	[""Land_WoodenTable_large_F"",[1.13978,-0.358617,0.0287309],132.882,1,0,[-0.00284669,3.25472],"""","""",true,false], 
	[""Land_CampingChair_V2_F"",[1.15439,0.365014,0.00205421],44.9687,1,0,[-0.303477,-0.119691],"""","""",true,false], 
	[""Land_CampingChair_V2_F"",[0.975182,-1.22955,2.86102e-006],210.008,1,0,[0.000824657,0.000481538],"""","""",true,false], 
	[""Land_CampingChair_V2_F"",[2.03586,-0.168764,1.90735e-006],30.0074,1,0,[0.000334792,0.000494031],"""","""",true,false], 
	[""Land_HelipadEmpty_F"",[2.5,-0.5,0],0,1,0,[0,0],"""","""",true,false], 
	[""Land_WaterBarrel_F"",[3.63814,2.76899,4.29153e-006],359.995,1,0,[-0.000884302,-0.000607574],"""","""",true,false], 
	[""babe_helper"",[0,0,-5],0,1,0,[0,0],"""","""",true,false], 
	[""Land_CamoNet_EAST"",[4.73898,2.21844,0],0,1,0,[0,0],"""","""",true,false], 
	[""Land_Sack_EP1"",[5.01425,2.02435,0],75,1,0,[0,0],"""","""",true,false], 
	[""Land_HBarrier_1_F"",[3.38815,-4.23858,0],0,1,0,[0,0],"""","""",true,false], 
	[""Land_Sacks_heap_F"",[5.13827,2.89398,0],0,1,0,[0,0],"""","""",true,false], 
	[""Land_Sack_F"",[5.63363,2.14178,0],285,1,0,[0,0],"""","""",true,false], 
	[""Barrels"",[-5.70523,-2.31427,0],135,1,0,[0,-0],"""","""",true,false], 
	[""Land_fort_bagfence_long"",[-5.13028,3.88446,0],15,1,0,[0,0],"""","""",true,false], 
	[""Land_ClutterCutter_small_F"",[-5.66816,3.0565,0],0,1,0,[0,0],"""","""",true,false], 
	[""Land_fort_bagfence_long"",[5.49777,-4.24494,0],0,1,0,[0,0],"""","""",true,false], 
	[""Land_HBarrier_1_F"",[-2.73685,-6.61358,0],0,1,0,[0,0],"""","""",true,false], 
	[""Land_fort_rampart"",[4.63815,3.79339,0],180,1,0,[0,0],"""","""",true,false], 
	[""Land_CratesWooden_F"",[7.76315,2.51898,0],0,1,0,[0,0],"""","""",true,false], 
	[""Land_Pallets_stack_F"",[-7.86185,-3.35602,0],270.002,1,0,[-7.73061e-006,-4.0717e-006],"""","""",true,false], 
	[""Land_fort_bagfence_long"",[-3.00077,-8.84064,0],90,1,0,[0,-0],"""","""",true,false], 
	[""Land_fort_bagfence_long"",[8.49777,-4.24494,0],0,1,0,[0,0],"""","""",true,false], 
	[""Land_CratesShabby_F"",[9.38754,2.90179,0],165,1,0,[0,-0],"""","""",true,false], 
	[""Land_fort_bagfence_round"",[-10.0278,4.83563,0],330,1,0,[0,0],"""","""",true,false], 
	[""Land_ClutterCutter_small_F"",[-10.6588,-0.0380013,0],0,1,0,[0,0],"""","""",true,false], 
	[""Land_ClutterCutter_small_F"",[10.4251,-2.52318,0],0,1,0,[0,0],"""","""",true,false], 
	[""Land_fort_bagfence_long"",[-11.7274,0.000674346,0],285,1,0,[0,0],"""","""",true,false], 
	[""Land_fort_bagfence_corner"",[12.1676,-3.0694,0],270,1,0,[0,0],"""","""",true,false], 
	[""Land_ClutterCutter_small_F"",[-4.87223,-10.8251,0],0,1,0,[0,0],"""","""",true,false], 
	[""Land_Vysilac_FM"",[-6.93375,-7.02838,0],0,1,0,[0,0],"""","""",true,false], 
	[""Land_fort_bagfence_corner"",[-3.58231,-12.0694,0],270,1,0,[0,0],"""","""",true,false], 
	[""Land_ClutterCutter_small_F"",[13.2116,1.96473,0],0,1,0,[0,0],"""","""",true,false], 
	[""Land_fort_bagfence_round"",[14.9739,1.26654,0],90,1,0,[0,-0],"""","""",true,false], 
	[""UK3CB_AAF_O_DSHKM"",[-9.89388,-10.6942,-0.0673776],191.02,1,0,[0.985896,0.0497396],"""","""",true,false], 
	[""Land_fort_bagfence_long"",[-7.25223,-13.2449,0],1.36604e-005,1,0,[0,0],"""","""",true,false], 
	[""Logic"",[9,9,9],0,1,0,[0,0],"""","""",true,false], 
	[""Land_fort_bagfence_corner"",[-10.4503,-12.6355,0],0,1,0,[0,0],"""","""",true,false]
]"]
]

/*
Grab data:
Mission: tempMissionSP
World: VR
Anchor position: [0, 0]
Area size: 50
Using orientation of objects: yes
*/

[
	
	//Westcott first HQ test start below.  
	["Land_HelipadEmpty_F",[0,0,0],0,1,0,[0,0],"","",true,false], 
	["Land_HelipadEmpty_F",[-0.5,0.5,0],0,1,0,[0,0],"","",true,false], 
	["Land_WaterBarrel_F",[-3.6499,-1.28086,0],359.995,1,0,[8.45646e-006,-8.68667e-006],"","",true,false], 
	["babe_helper",[0,0,-5],0,1,0,[0,0],"","",true,false], 
	["Land_Cargo_HQ_V1_F",[2.27002,-3.25742,0],0,1,0,[0,0],"","",true,false], 
	["Land_CampingChair_V2_F",[0.162244,6.09268,6.19888e-006],75.0081,1,0,[-0.00143724,-0.000645436],"","",true,false], 
	["Land_TreeBin_F",[-4.89978,3.94814,0],270,1,0,[0,0],"","",true,false], 
	["Land_CampingChair_V2_F",[0.957776,6.88858,5.24521e-006],59.9757,1,0,[-0.00162509,-0.000285386],"","",true,false], 
	["Land_WoodenTable_large_F",[-0.0249016,7.34414,0],224.69,1,0,[-2.56088e-005,-0.000171889],"","",true,false], 
	["Land_CampingChair_V2_F",[-0.89844,7.50721,-1.90735e-006],315.008,1,0,[0.000832898,-0.00111596],"","",true,false], 
	["FlagPole_F",[-4.87793,3.95547,-0.4225],0,1,0,[0,0],"","",true,false], 
	["Land_CampingChair_V2_F",[-0.368035,8.39102,4.29153e-006],345.009,1,0,[-0.000424114,0.000935619],"","",true,false], 
	["GunrackTK_EP1",[1.05274,10.4051,0],180,1,0,[0,0],"","",true,false], 
	["GunrackTK_EP1",[2.05274,10.4051,0],180,1,0,[0,0],"","",true,false], 
	["Land_A_tent",[-11.2596,-1.86539,0],270.291,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_5_F",[11.5962,2.84268,0],90,1,0,[0,-0],"","",true,false], 
	["Land_LampShabby_F",[-2.25592,-10.9552,0],270,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_5_F",[-2.74067,-12.2787,0],0,1,0,[0,0],"","",true,false], 
	["Land_A_tent",[-11.2518,-5.1478,0],270.93,1,0,[0,0],"","",true,false], 
	["Land_CamoNet_EAST",[-2.04907,12.4183,0],0,1,0,[0,0],"","",true,false], 
	["CUP_hromada_beden_dekorativniX",[-3.63401,11.9822,0],240,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_1_F",[2.9683,-12.2229,0],0,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_5_F",[11.5962,-2.65732,0],90,1,0,[0,-0],"","",true,false], 
	["Land_HBarrier_5_F",[3.97632,-11.0348,0],0,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_5_F",[-8.39335,-12.2793,0],0,1,0,[0,0],"","",true,false], 
	["Land_fort_bagfence_round",[11.0245,9.87295,0],75,1,0,[0,0],"","",true,false], 
	["Misc_Backpackheap",[2.59876,13.5736,0],0,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_1_F",[9.73255,-11.1559,0],270,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_3_F",[11.5772,-8.16709,0],90,1,0,[0,-0],"","",true,false], 
	["Land_fort_bagfence_long",[8.08618,13.2342,0],90,1,0,[0,-0],"","",true,false], 
	["Logic",[9,9,9],0,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_1_F",[11.1073,-11.0289,0],255,1,0,[0,0],"","",true,false], 
	["Land_fort_bagfence_long",[6.33472,14.4549,0],0,1,0,[0,0],"","",true,false], 
	["Land_fort_rampart",[-13.9489,0.497756,0],90.226,1,0,[0,-0],"","",true,false], 
	["Land_fort_rampart",[0.100098,14.7435,0],180,1,0,[0,0],"","",true,false], 
	["Land_BagBunker_Small_F",[-11.1921,-13.7319,0],0,1,0,[0,0],"","",true,false], 
	["Misc_cargo_cont_net1",[-11.0238,13.5946,0],0,1,0,[0,0],"","",true,false], 
	["Land_fort_rampart",[-13.861,-7.89662,0],87.7064,1,0,[0,0],"","",true,false], 
	["Land_fort_bagfence_corner",[-16.4409,8.89207,0],0,1,0,[0,0],"","",true,false], 
	["Land_fort_rampart",[-9.6499,14.8685,0],180,1,0,[0,0],"","",true,false], 
	["Land_fort_bagfence_long",[-17.533,12.5949,0],90,1,0,[0,-0],"","",true,false], 
	["Land_fort_bagfence_corner",[-16.883,15.7814,0],90,1,0,[0,-0],"","",true,false]
]