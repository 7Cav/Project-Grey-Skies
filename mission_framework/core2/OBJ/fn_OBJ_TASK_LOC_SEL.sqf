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
private _AOSizeMax=missionNamespace getVariable "GS_AOSize";
private _AOSizeEdgePrevention=missionNamespace getVariable "GS_AOSizeEdgePrevention";
private _AOSize=_AOSizeMax-_AOSizeEdgePrevention;
{
	_TaskPOS=[_AOInfo,0,_AOSize,0,0,0.1,0,[],[]] call BIS_fnc_findSafePos;
	[_x,_TaskPOS] call core2_fnc_OBJ_TASK_MANGER;
	private _array=missionNamespace getVariable "GS_MainPOIPOS";
	_array pushBack _TaskPOS;
	missionNamespace setVariable ["GS_MainPOIPOS",_array];
	[format["Task ID: %1, Task Position: %2",_x,_TaskPOS],3] call core2_fnc_PRINT_SYSLOG;
}foreach _taskIDs;

call core2_fnc_OBJ_PROTECTED_OBJECT_CHECK;
call core2_fnc_OBJ_COMPLETE_CHECK;

["OBJ_TASK_LOC_SEL End",1] call core2_fnc_PRINT_SYSLOG;
