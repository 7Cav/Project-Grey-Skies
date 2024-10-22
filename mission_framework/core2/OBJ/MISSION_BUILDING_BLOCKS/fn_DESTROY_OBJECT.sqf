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
_array append [_childTaskID,_flag];
missionNamespace setVariable ["GS_ProtectedObject",_array];