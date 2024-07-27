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
 * [_group,"OBJ_CAPTURE_HQ","HQ_OFFICER"] call core2_fnc_KILL_GROUP
 *
 * Public: No
 *
 */
params ["_group","_parentTaskID","_childTaskID"];

[west, [_childTaskID, _parentTaskID], ["Kill the Enemy Officer", "Kill the Officer", "cookiemarker2"], objNull, 1, 3, false] call BIS_fnc_taskCreate;

_Events=["Empty","Deleted"]



{
	_group addEventHandler [_x, {
		params ["_group"];
		[_childTaskID,"SUCCEEDED",false] call BIS_fnc_taskSetState;
	}];
}foreach _Events

