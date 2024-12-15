/*
 * Function: core2_fnc_OBJ_PROTECTED_OBJECT_CHECK
 * Author: 7th Cav Dev Team, Sparrow
 * 
 * Description:
 * This function monitors the status of tasks stored in the `GS_OBJArray` mission namespace variable. 
 * It marks parent tasks as "SUCCEEDED" if all associated child tasks are completed. The script uses 
 * a per-frame handler to repeatedly check the task statuses and cleans up mission-specific variables 
 * when the array becomes empty.
 *
 * Arguments:
 * None.
 *
 * Return Value:
 * None.
 *
 * Example:
 * call core2_fnc_OBJ_PROTECTED_OBJECT_CHECK;
 *
 * Public:
 * No.
 */


private _function = {
	private _array = missionNamespace getVariable ["GS_OBJArray", []];
	if (_array isEqualTo []) exitWith {["GS_OBJArray is Empty",1] call core2_fnc_PRINT_SYSLOG;};

	{
		_x params ["_ParentTaskID", "_ChildTaskIDs"];

		private _childTaskStatusArray = [];

		{
			private _taskStatus = _x call BIS_fnc_taskCompleted;
			_childTaskStatusArray pushBackUnique _taskStatus;
		} forEach _ChildTaskIDs;

		private _NumOfElements = count _childTaskStatusArray;
		private _ArrayValue = _childTaskStatusArray select 0;

		if (_NumOfElements == 1 && _ArrayValue == true) then {
			[_ParentTaskID, "SUCCEEDED", false] call BIS_fnc_taskSetState;
			_array deleteAt _forEachIndex;
		};
	
	} forEach _array;

	missionNamespace setVariable ["GS_OBJArray", _array];
}; 

private _exitCondition = {
	private _array = missionNamespace getVariable ["GS_OBJArray", []];
	_array isEqualTo [];
};

private _cleanupFunction = {
	[format["Clearing GS_OBJArray, GS_MainPOIPOS, GS_MainAOCenterPOS"], 3] call core2_fnc_PRINT_SYSLOG;

	private _position = missionNamespace getVariable "GS_MainAOCenterPOS"; // Get position
	private _radius = missionNamespace getVariable "GS_AOSize";
	[_position, _radius] call core2_fnc_CLEANUP_AO;
	deleteMarker "MainAO";
	missionNamespace setVariable ["GS_OBJArray", []];
	missionNamespace setVariable ["GS_MainPOIPOS", []];
	missionNamespace setVariable ["GS_MainAOCenterPOS", []];
	call core2_fnc_AO_LOC_GET;
};


[
	_function,
	GS_FrameHandlerDelay,
	[],
	{},
	_cleanupFunction,
	{true},
	_exitCondition
] call CBA_fnc_createPerFrameHandlerObject;