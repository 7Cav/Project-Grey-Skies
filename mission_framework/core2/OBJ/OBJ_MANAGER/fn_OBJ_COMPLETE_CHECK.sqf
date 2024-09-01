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


_function={{
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
	};
	  
} forEach GS_OBJArray;};

_exitCondition={count GS_OBJArray ==0;};

[_function,GS_FrameHandlerDelay,[],{},{},{true},_exitCondition] call CBA_fnc_createPerFrameHandlerObject;