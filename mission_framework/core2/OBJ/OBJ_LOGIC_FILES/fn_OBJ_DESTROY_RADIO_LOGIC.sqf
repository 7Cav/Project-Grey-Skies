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






["OBJ_DESTROY_RADIO_LOGIC End",1] call core2_fnc_PRINT_SYSLOG;