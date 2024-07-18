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
 * call core2_fnc_WOODLAND_RADIO
 *
 * Public: No
 *
 */
 ["WOODLAND_RADIO Start",1] call core2_fnc_PRINT_SYSLOG;
_data=[
[
	["Land_HelipadEmpty_F",[-0.5,0.5,0],0,1,0,[0,0],"","",true,false], 
	["Land_MobileRadar_01_generator_F",[-3.59142,0.387536,0],0,1,0,[0,0],"","",true,false], 
	["babe_helper",[0,0,-5],0,1,0,[0,0],"","",true,false], 
	["Land_ClutterCutter_small_F",[-3.63208,6.26955,0],0,1,0,[0,0],"","",true,false], 
	["Land_ClutterCutter_small_F",[4.24809,-6.02913,0],0,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_01_line_5_green_F",[5.74114,-7.44171,0],302.853,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_01_line_5_green_F",[-5.82235,7.82959,0],313.596,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_01_line_5_green_F",[-6.02368,-7.7778,0],51.7206,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_01_line_5_green_F",[6.44288,7.70829,0],47.4409,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_01_big_4_green_F",[0.446372,10.8033,0],0,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_01_big_4_green_F",[-0.005087,-10.8976,0],0,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_01_big_4_green_F",[-14.831,0.0949498,0],268.404,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_01_big_4_green_F",[14.8377,-0.0719022,0],90.5982,1,0,[0,-0],"","",true,false], 
	["Logic",[9,9,9],0,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_01_line_5_green_F",[6.68419,-14.7369,0],0,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_01_line_5_green_F",[-14.7026,-6.78124,0],269.55,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_01_line_5_green_F",[-6.39371,14.9713,0],0,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_01_line_5_green_F",[15.0143,6.6715,0],90.3065,1,0,[0,-0],"","",true,false], 
	["Land_HBarrier_01_line_5_green_F",[-7.05453,-14.9228,0],0,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_01_line_5_green_F",[-14.858,7.14457,0],269.964,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_01_line_5_green_F",[15.0475,-6.96224,0],89.5047,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_01_line_5_green_F",[7.48283,14.9881,0],0,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_01_tower_green_F",[14.0774,-12.6169,0],271.915,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_01_tower_green_F",[-13.893,12.8868,0],89.8828,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_01_tower_green_F",[-12.8658,-13.9169,0],1.02477,1,0,[0,0],"","",true,false], 
	["Jbad_opx2_radiomast",[-0.0375567,0.0221175,0],0,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_01_tower_green_F",[13.2401,14.1236,0],180.251,1,0,[0,0],"","",true,false], 
	["Land_ClutterCutter_small_F",[-16.106,13.5658,0],0,1,0,[0,0],"","",true,false], 
	["Land_ClutterCutter_small_F",[-13.5312,-16.306,0],0,1,0,[0,0],"","",true,false], 
	["Land_ClutterCutter_small_F",[16.4933,-13.3438,0],0,1,0,[0,0],"","",true,false], 
	["Land_ClutterCutter_small_F",[13.9391,16.6393,0],0,1,0,[0,0],"","",true,false]
]
];
 ["WOODLAND_RADIO End",1] call core2_fnc_PRINT_SYSLOG;
_data;