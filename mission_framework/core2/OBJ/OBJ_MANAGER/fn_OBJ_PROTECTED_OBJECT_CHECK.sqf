/*
 * Function: core2_fnc_OBJ_PROTECTED_OBJECT_CHECK
 * Author: 7th Cav Dev Team, Sparrow
 * 
 * Description:
 * This function monitors objects stored in the `GS_ProtectedObject` mission namespace variable. 
 * It ensures that tasks related to these objects are updated to "SUCCEEDED" when conditions 
 * like object destruction, invalidation, or group unit count exceed specified thresholds are met.
 * The function operates as a per-frame handler and cleans up the `GS_ProtectedObject` variable when finished.
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
	private _array = missionNamespace getVariable ["GS_ProtectedObject", []];
	if (_array isEqualTo []) exitWith {["GS_ProtectedObject is Empty",1] call core2_fnc_PRINT_SYSLOG;};

	{
		_x params ["_childTaskID", "_protectedThing"];
		private _test1 = !(alive _protectedThing);
		private _test2 = (isNull _protectedThing);
		private _test3 = count units _protectedThing > 0;
		if (_test1 || _test2 || _test3) then {
			[_childTaskID,"SUCCEEDED",false] call BIS_fnc_taskSetState;
			_array deleteAt _forEachIndex;
		};
		if (_childTaskID call BIS_fnc_taskCompleted) then {
			_array deleteAt _forEachIndex;
		};
	} forEach _array;

	missionNamespace setVariable ["GS_ProtectedObject",_array];
};

private _exitCondition = {
	private _array = missionNamespace getVariable ["GS_ProtectedObject", []];
	_array isEqualTo [];
};

private _exitFunction = {
	missionNamespace setVariable ["GS_ProtectedObject", []];
};

[
	_function,
	GS_FrameHandlerDelay,
	[],
	{},_exitFunction,
	{true},
	_exitCondition
] call CBA_fnc_createPerFrameHandlerObject;