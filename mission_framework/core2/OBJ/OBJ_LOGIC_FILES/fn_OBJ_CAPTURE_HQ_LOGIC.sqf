/*
 * Author: 7th Cav Dev Team, Sparrow
 * Builds out the Capture HQ Objective
 *
 * Arguments:
 * 0: TaskPos - Position of Objective
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [_TaskPOS] call core2_fnc_OBJ_CAPTURE_HQ_LOGIC
 *
 * Public: No
 *
 */
params ["_TaskPOS"];
["OBJ_CAPTURE_HQ_LOGIC Start",1] call core2_fnc_PRINT_SYSLOG;
//Builds the Objective Objects
[GS_HQ_OBJS,_TaskPOS] call core2_fnc_STRUCTURE_BUILDER;
[west, "OBJ_CAPTURE_HQ", ["Do this and you get a cookie", "Capture HQ", "cookiemarker"], objNull, 1, 2, false] call BIS_fnc_taskCreate;
//Builds Objects related to competing the Tasks/Objectives
//CAPTURE THE flag
_flag=nearestObject [_TaskPOS, "FlagCarrier"];
[_flag,"OBJ_CAPTURE_HQ","HQ_FLAG"] call core2_fnc_CAPTURE_FLAG;
//Kill/Capture Officer
//Collect Intel




["OBJ_CAPTURE_HQ_LOGIC End",1] call core2_fnc_PRINT_SYSLOG;