/*
 * Author: CW3.Sparrow.P
 * Determines the number and types of objectives for the AO
 *
 * Arguments:
 * 0: AOInfo - Location of the AO
 * 1: NumOfTasks - Number of tasks to add
 * Return Value:
 * Nothing
 *
 * Example:
 * [_AOInfo, _NumOfTasks] call core2_fnc_OBJ_TASK_SEL
 *
 * Public: No
 * To Do:
 * Revaluate how this is done
 */
params ["_AOInfo", ["_NumOfTasks",0]];
["OBJ_TASK_SEL Start",1] call core2_fnc_PRINT_SYSLOG;
_TaskIDs=['OBJ_CAPTURE_HQ','OBJ_DESTORY_RADIO'];
//_RandomNumber = random 100;

//The Max Number is determined by the number of times in the TaskList
_TaskList = ['OBJ_DESTROY_MORTARS'];
/* Task ID list
'OBJ_DESTROY_SAM'
'OBJ_DESTROY_ARTILLERY'
'OBJ_DESTROY_MORTARS'
'OBJ_DESTROY_OBS_POST'
'OBJ_DESTROY_VEC_DEPOT'
'OBJ_DESTROY_FARP'
'OBJ_DESTROY_SUPPLY_DEPOT'
'OBJ_DESTROY_CONVOY'
'OBJ_DESTROY_PATROL_BASE'
'OBJ_COLLECT_INTEL'
'OBJ_KILL_OFF'
'OBJ_RESCUE_POW'
'OBJ_CSAR'
'OBJ_CAPTURE_AIRFIELD'
'OBJ_CAPTURE_CHECKPOINT'
'OBJ_DESTROY_LRP'
*/

//Place into the TaskList the TaskIDs then pop it out of the Task list, the Max Number is determined by the number of times in the TaskList
_i=0;
while {_i<_NumOfTasks} do {
	_RandomNum=0;
	_TotalNumberofTasks = count _TaskList;
	_RandomNum = floor random _TotalNumberofTasks;
	_TaskID = _TaskList select _RandomNum;
	_TaskIDs pushBack _TaskID;
	_TaskList deleteAt _RandomNum;
	_i=_i+1;
	[format["Task IDs: %1, Random Number: %2, Iteration: %3",_TaskID,_RandomNum,_i],3] call core2_fnc_PRINT_SYSLOG;
};

[format["Task IDs: %1",_TaskIDs],2] call core2_fnc_PRINT_SYSLOG;
["OBJ_TASK_SEL End",1] call core2_fnc_PRINT_SYSLOG;
[_AOInfo,_TaskIDs] call core2_fnc_OBJ_TASK_LOC_SEL;
