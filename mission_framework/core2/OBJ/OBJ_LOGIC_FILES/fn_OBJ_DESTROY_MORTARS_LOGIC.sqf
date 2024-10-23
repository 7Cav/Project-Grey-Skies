/*
 * Author: 7th Cav Dev Team, Sparrow
 * Builds out the Destroy Mortars Objective
 *
 * Arguments:
 * 0: TaskPos - Position of Objective
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [_TaskPOS] call core2_fnc_OBJ_DESTROY_MORTARS_LOGIC
 *
 * Public: No
 *
 */
params ["_TaskPOS"];
["OBJ_DESTROY_MORTARS_LOGIC Start",1] call core2_fnc_PRINT_SYSLOG;
//Builds the Objective Objects
[GS_MORTAR_OBJS,_TaskPOS] call core2_fnc_STRUCTURE_BUILDER;
[west, "OBJ_DESTROY_MORTARS", ["Do this and you get a cookie", "Destroy Mortar Position", "cookiemarker"], objNull, 1, 2, false] call BIS_fnc_taskCreate;
//Builds Objects related to competing the Tasks/Objectives
_unit=nearestObject [_TaskPOS,"StaticMortar"];
[_unit,"OBJ_DESTROY_MORTARS","MORTARS_TUBE","Destroy the Mortar Tube", "Destroy the Mortar Tube"] call core2_fnc_DESTROY_OBJECT;


_array=missionNamespace getVariable "GS_OBJArray";
_array append [["OBJ_DESTROY_MORTARS",["MORTARS_TUBE"]]];
missionNamespace setVariable ["GS_OBJArray",_array];



["OBJ_DESTROY_MORTARS_LOGIC End",1] call core2_fnc_PRINT_SYSLOG;