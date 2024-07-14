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

_TotalNumberofComps = [_TaskID,0,1] call core2_fnc_GET_COMPS;
_RandomNum = floor random _TotalNumberofComps;
_Comp=[_TaskID,_RandomNum] call core2_fnc_GET_COMPS;

[_TaskPOS,0,_Comp] call BIS_fnc_ObjectsMapper;

switch (_TaskID) do {
	case 'OBJ_CAPTURE_HQ':{};
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
