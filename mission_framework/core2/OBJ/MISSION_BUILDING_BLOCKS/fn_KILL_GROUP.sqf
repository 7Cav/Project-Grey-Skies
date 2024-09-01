/*
 * Author: 7th Cav Dev Team, Sparrow
 * [Description of Function]
 *
 * Arguments:
 * [List of Arguements]
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [_group,"OBJ_CAPTURE_HQ","HQ_OFFICER","Kill the Enemy Officer", "Kill the Officer"] call core2_fnc_KILL_GROUP
 *
 * Public: No
 *
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

[_childTaskID,_group] append GS_ProtectedObject;

