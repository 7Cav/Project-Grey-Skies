/*
 * Author: CW3.Sparrow.P
 * [Description of Function]
 *
 * Arguments:
 * [List of Arguements]
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * call rScripts_fnc_tightlz_startaction
 *
 * Public: No
 *
 */
params ["_TaskID","_TaskPOS"];
//Gets total number of compositions
["OBJ_TASK_MANAGER Start",1] call core2_fnc_PRINT_SYSLOG;

switch (_TaskID) do {
	case 'OBJ_CAPTURE_HQ':{[_TaskPOS] call core2_fnc_OBJ_CAPTURE_HQ_LOGIC};
	case 'OBJ_DESTORY_RADIO':{};
	//case 'OBJ_DESTROY_SAM':{};
	//case 'OBJ_DESTROY_ARTILLERY':{};
	case 'OBJ_DESTROY_MORTARS':{};
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