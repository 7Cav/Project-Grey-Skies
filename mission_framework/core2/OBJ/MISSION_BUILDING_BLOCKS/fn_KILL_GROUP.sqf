/*
 * Function: core2_fnc_KILL_GROUP
 * Author: 7th Cav Dev Team, Sparrow
 * 
 * Description:
 * This function creates a task for a group and monitors its status. The task is marked as succeeded if the group is deleted or becomes empty.
 *
 * Arguments:
 * 0. _group (Object): The group assigned to complete the task.
 * 1. _parentTaskID (String): The ID of the parent task.
 * 2. _childTaskID (String): The ID of the task being created for this group.
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
params ["_group","_parentTaskID","_childTaskID","_TaskDescription","_TaskName"];

[west, [_childTaskID, _parentTaskID], [_TaskDescription, _TaskName, "cookiemarker2"], objNull, 1, 3, false] call BIS_fnc_taskCreate;

_Events=["Empty","Deleted"];

_group setVariable ["_taskID",_childTaskID];

{
	_group addEventHandler [_x, {
		params ["_group"];
		_taskID=_group getVariable "_taskID";
		[_taskID,"SUCCEEDED",false] call BIS_fnc_taskSetState;
	}];
}foreach _Events;