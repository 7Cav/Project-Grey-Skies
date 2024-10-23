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
 * call core2_fnc_OBJ_PROTECTED_OBJECT_CHECK
 *
 *
 * Public: No
 *
 */

_function={
	_array=missionNamespace getVariable "GS_ProtectedObject";
	if (_array isEqualTo []) exitWith {["GS_ProtectedObject is Empty",1] call core2_fnc_PRINT_SYSLOG;};
	{
		_childTaskID= _x select 0;
		_protectedThing = _x select 1;
		_test1=try {!(alive _protectedThing);} catch {false;};
		_test2=try {(isNull _protectedThing) ;} catch {false;};
		_test3=try {(isNull _protectedThing && {count units _protectedThing >0}) ;} catch {false;};
		if (_test1 || _test2 || _test3)
		then {
			[_childTaskID,"SUCCEEDED",false] call BIS_fnc_taskSetState;
			_array deleteAt _forEachIndex;
		}
	} forEach _array;
	missionNamespace setVariable ["GS_ProtectedObject",_array];
};

_exitCondition={count GS_ProtectedObject ==0;};

[_function,GS_FrameHandlerDelay,[],{},{},{true},_exitCondition] call CBA_fnc_createPerFrameHandlerObject;
try 