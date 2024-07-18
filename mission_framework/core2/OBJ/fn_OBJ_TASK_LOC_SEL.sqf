/*
 * Author: CW3.Sparrow.P
 * Finds the Location to place each Task/Objective, and calls the task Manager for each one
 *
 * Arguments:
 * 0: AOInfo - Location of the AO 
 * 1: TaskIDs - List of TaskIDs to determine what each objective is for the AO
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [_AOInfo,_TaskIDs] call core2_fnc_OBJ_TASK_LOC_SEL
 *
 * Public: No
 *
 */
params ["_AOInfo", "_TaskIDs"];
["OBJ_TASK_LOC_SEL Start",1] call core2_fnc_PRINT_SYSLOG;
_AOSize=1500;
{
	_TaskPOS=[_AOInfo,0,_AOSize,0,0,0.1,0,[],[]] call BIS_fnc_findSafePos;
	[_x,_TaskPOS] call core2_fnc_OBJ_TASK_MANGER;
	[format["Task ID: %1, Task Position: %2",_x,_TaskPOS],3] call core2_fnc_PRINT_SYSLOG;
}foreach _taskIDs;
["OBJ_TASK_LOC_SEL End",1] call core2_fnc_PRINT_SYSLOG;
