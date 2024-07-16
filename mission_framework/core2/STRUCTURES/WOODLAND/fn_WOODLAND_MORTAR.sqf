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
 * call core2_fnc_WOODLAND_MORTAR
 *
 * Public: No
 *
 */
 ["WOODLAND_MORTAR Start",1] call core2_fnc_PRINT_SYSLOG;
_data=[
[
	["rhs_2b14_82mm_vdv",[-0.0356362,-0.0379317,-0.0710573],360,1,0,[0.174922,-0.353143],"","",true,false], 
	["Land_HelipadEmpty_F",[2.5,0.5,0],0,1,0,[0,0],"","",true,false], 
	["Land_ClutterCutter_large_F",[-2.26027,-3.05998,0],0,1,0,[0,0],"","",true,false], 
	["Land_ClutterCutter_large_F",[2.83855,2.7692,0],0,1,0,[0,0],"","",true,false], 
	["Land_ClutterCutter_large_F",[-3.4326,2.90614,0],0,1,0,[0,0],"","",true,false], 
	["Land_BagFence_01_long_green_F",[-1.5573,4.2481,-0.000999928],0,1,0,[0,0],"","",true,false], 
	["Land_BagFence_01_long_green_F",[1.53439,4.27632,-0.000999928],0,1,0,[0,0],"","",true,false], 
	["babe_helper",[0,0,-5],0,1,0,[0,0],"","",true,false], 
	["Land_BagFence_01_long_green_F",[3.8187,4.22062,-0.000999928],180.112,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_01_line_5_green_F",[-5.57759,-1.21655,0],90.5089,1,0,[0,-0],"","",true,false], 
	["Land_BagFence_01_long_green_F",[5.21943,2.89618,-0.000999928],88.7507,1,0,[0,0],"","",true,false], 
	["Land_BagFence_01_long_green_F",[-4.19072,4.25961,-0.000999928],0,1,0,[0,0],"","",true,false], 
	["Land_BagFence_01_long_green_F",[-5.52847,2.89906,-0.000999928],90.5169,1,0,[0,-0],"","",true,false], 
	["Land_HBarrier_01_line_3_green_F",[-4.70394,-4.56417,0],0,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_01_line_5_green_F",[-2.24605,-6.63378,0],90.5089,1,0,[0,-0],"","",true,false], 
	["Land_ClutterCutter_large_F",[7.36022,-4.32179,0],0,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_01_big_4_green_F",[8.65957,0.791807,0],0,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_01_line_5_green_F",[-0.170841,-10.3233,0],180.52,1,0,[0,0],"","",true,false], 
	["Land_Cargo_House_V1_F",[9.47518,-3.97619,0],0,1,0,[0,0],"","",true,false], 
	["Land_CratesShabby_F",[6.32443,-10.607,0],270,1,0,[0,0],"","",true,false], 
	["Land_CratesWooden_F",[5.56674,-12.3555,0],270,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_01_big_4_green_F",[13.9344,-2.37708,0],91.8815,1,0,[0,-0],"","",true,false], 
	["Land_BagFence_01_long_green_F",[9.43974,-12.0792,-0.000999928],0.366253,1,0,[0,0],"","",true,false], 
	["Logic",[9,9,9],0,1,0,[0,0],"","",true,false], 
	["Land_BagFence_01_long_green_F",[13.744,-7.84878,-0.000999928],89.7422,1,0,[0,0],"","",true,false], 
	["Land_ClutterCutter_large_F",[12.1372,-11.1678,0],0,1,0,[0,0],"","",true,false], 
	["Land_BagFence_01_long_green_F",[12.2904,-12.0864,-0.000999928],0.366253,1,0,[0,0],"","",true,false], 
	["Land_BagFence_01_long_green_F",[13.7288,-10.7083,-0.000999928],89.7422,1,0,[0,0],"","",true,false]
]
];
 ["WOODLAND_MORTAR End",1] call core2_fnc_PRINT_SYSLOG;
_data;
