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

//Builds Objects related to competing the Tasks/Objectives






["OBJ_CAPTURE_HQ_LOGIC End",1] call core2_fnc_PRINT_SYSLOG;