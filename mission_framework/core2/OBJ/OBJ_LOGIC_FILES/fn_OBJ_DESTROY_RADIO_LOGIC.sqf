/*
 * Author: 7th Cav Dev Team, Sparrow
 * Builds out the Destroy Radio Tower Objective
 *
 * Arguments:
 * 0: TaskPos - Position of Objective
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [_TaskPOS] call core2_fnc_OBJ_DESTROY_RADIO_LOGIC
 *
 * Public: No
 *
 */
params ["_TaskPOS"];
["OBJ_DESTROY_RADIO_LOGIC Start",1] call core2_fnc_PRINT_SYSLOG;
//Builds the Objective Objects
[GS_RADIO_OBJS,_TaskPOS] call core2_fnc_STRUCTURE_BUILDER;
//Builds Objects related to competing the Tasks/Objectives
[west, "OBJ_DESTROY_RADIO", ["Do this and you get a cookie", "Destroy Radio Tower", "cookiemarker"], objNull, 1, 2, false] call BIS_fnc_taskCreate;
_tower=nearestObject [_TaskPOS, "Jbad_opx2_radiomast"];

//Builds Objects related to competing the Tasks/Objectives

[_tower,"OBJ_DESTROY_RADIO","RADIO_TOWER","Destroy the Radio Tower", "Destroy the Radio Tower"] call core2_fnc_DESTROY_OBJECT;

_array=missionNamespace getVariable "GS_OBJArray";
_array append ["OBJ_DESTROY_RADIO",["RADIO_TOWER"]];
missionNamespace setVariable ["GS_OBJArray",_array];


["OBJ_DESTROY_RADIO_LOGIC End",1] call core2_fnc_PRINT_SYSLOG;