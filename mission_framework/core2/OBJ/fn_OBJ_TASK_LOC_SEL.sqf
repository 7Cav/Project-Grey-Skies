/*
 * Author: CW3.Sparrow.P
 * [Description of Function]
 *
 * Arguments:
 * [List of Arguements]
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
params ["_AOInfo", "_TaskIDs"];
["OBJ_TASK_LOC_SEL Start",1] call core2_fnc_PRINT_SYSLOG;
_AOSize=1500;
{
	_TaskPOS=[_AOInfo,0,_AOSize,0,0,0.1,0,[],[]] call BIS_fnc_findSafePos;
	[_x,_TaskPOS] call core2_fnc_OBJ_TASK_MANGER;
	[format["Task ID: %1, Task Position: %2",_x,_TaskPOS],3] call core2_fnc_PRINT_SYSLOG;
}foreach _taskIDs;
["OBJ_TASK_LOC_SEL End",1] call core2_fnc_PRINT_SYSLOG;
