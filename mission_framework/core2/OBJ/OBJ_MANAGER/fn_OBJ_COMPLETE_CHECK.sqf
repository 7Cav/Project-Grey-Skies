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
	_array=missionNamespace getVariable "GS_OBJArray";
	if (_array isEqualTo []) exitWith {["GS_OBJArray is Empty",1] call core2_fnc_PRINT_SYSLOG;};
	{
		_ParentTaskID= _x select 0;
		_ChildTaskIDs = _x select 1;
		_childTaskStatusArray=[];
		{
			_taskStatus=_x call BIS_fnc_taskCompleted;
			_childTaskStatusArray pushBackUnique _taskStatus;
		}forEach _ChildTaskIDs;

		_NumOfElements=count _childTaskStatusArray;
		_ArrayValue = _childTaskStatusArray select 0;
		if (_NumOfElements==1 && _ArrayValue==true) then 
		{
			[_ParentTaskID,"SUCCEEDED",false] call BIS_fnc_taskSetState;
			_array deleteAt _forEachIndex;
		};
	
	} forEach _array;
	missionNamespace setVariable ["GS_OBJArray",_array];
}; 

_exitCondition={count GS_OBJArray ==0;};

_cleanupFunction={
private _position = missionNamespace getVariable "GS_MainAOCenterPOS"; // Get position
private _radius = missionNamespace getVariable "GS_AOSize";
[_position, _radius] call core2_fnc_CLEANUP_AO;
deleteMarker "MainAO";
_array=[];
missionNamespace setVariable ["GS_OBJArray",_array];
call core2_fnc_AO_LOC_GET;
};

[_function,GS_FrameHandlerDelay,[],{},_cleanupFunction,{true},_exitCondition] call CBA_fnc_createPerFrameHandlerObject;