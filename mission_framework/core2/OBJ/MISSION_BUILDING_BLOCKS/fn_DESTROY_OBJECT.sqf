/*
 * Function: core2_fnc_KILL_GROUP
 * Author: 7th Cav Dev Team, Sparrow
 * 
 * Description:
 * This function creates a task for the specified unit to kill an assigned target. 
 * When the target is killed, the task is automatically marked as succeeded.
 *
 * Arguments:
 * 0. _unit (Object): The unit that is the target to be killed.
 * 1. _parentTaskID (String): The ID of the parent task.
 * 2. _childTaskID (String): The ID of the task being created for this action.
 * 3. _TaskDescription (String): The description of the task.
 * 4. _TaskName (String): The name of the task.
 *
 * Return Value:
 * None.
 *
 * Example:
 * [_group, "OBJ_CAPTURE_HQ", "HQ_OFFICER", "Kill the Enemy Officer", "Kill the Officer"] call core2_fnc_KILL_GROUP;
 *
 * Public:
 * No.
 */
params ["_unit","_parentTaskID","_childTaskID","_TaskDescription","_TaskName"];

[west, [_childTaskID, _parentTaskID], [_TaskDescription, _TaskName, "cookiemarker2"], objNull, 1, 3, false] call BIS_fnc_taskCreate;

_Events=["Killed"];

_unit setVariable ["_taskID",_childTaskID];

{
	_unit addEventHandler [_x, {
		params ["_unit"];
		_taskID=_unit getVariable "_taskID";
		[_taskID,"SUCCEEDED",false] call BIS_fnc_taskSetState;
	}];
}foreach _Events;

_array=missionNamespace getVariable "GS_ProtectedObject";
_array append [[_childTaskID,_unit]];
missionNamespace setVariable ["GS_ProtectedObject",_array];