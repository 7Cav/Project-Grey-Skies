/*
 * Author: CW3.Sparrow.P
 * Kicks off the corresponding Logic file for each objective
 *
 * Arguments:
 * 0: TaskID - Individual Task ID
 * 1: TaskPos - Location to place the Task at
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [_TaskID,_TaskPOS] call core2_fnc_OBJ_TASK_MANGER
 *
 * Public: No
 *
 */
params ["_TaskID","_TaskPOS"];
["OBJ_TASK_MANAGER Start",1] call core2_fnc_PRINT_SYSLOG;

switch (_TaskID) do {
	case 'OBJ_CAPTURE_HQ':{[_TaskPOS] call core2_fnc_OBJ_CAPTURE_HQ_LOGIC};
	case 'OBJ_DESTORY_RADIO':{[_TaskPOS] call core2_fnc_OBJ_DESTROY_RADIO_LOGIC};
	//case 'OBJ_DESTROY_SAM':{};
	//case 'OBJ_DESTROY_ARTILLERY':{};
	case 'OBJ_DESTROY_MORTARS':{[_TaskPOS] call core2_fnc_OBJ_DESTROY_MORTARS_LOGIC};
	//case 'OBJ_DESTROY_OBS_POST':{};
	//case 'OBJ_DESTROY_VEC_DEPOT':{};
	//case 'OBJ_DESTROY_FARP':{};
	//case 'OBJ_DESTROY_SUPPLY_DEPOT':{};
	//case 'OBJ_DESTROY_CONVOY':{};
	//case 'OBJ_DESTROY_PATROL_BASE':{};
	//case 'OBJ_COLLECT_INTEL':{};
	//case 'OBJ_KILL_OFF':{};
	//case 'OBJ_RESCUE_POW':{};
	//case 'OBJ_CSAR':{};
	//case 'OBJ_CAPTURE_AIRFIELD':{};
}; 
["OBJ_TASK_MANAGER End",1] call core2_fnc_PRINT_SYSLOG;