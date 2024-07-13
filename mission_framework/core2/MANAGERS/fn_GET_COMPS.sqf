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
params ["_TaskID", "_RandomNumber"];

GS_HQ_OBJS=#include "core2/STRUCTURES/WOODLAND/WOODLAND_HQ.sqf";
GS_RADIO_OBJS=#include "core2/STRUCTURES/WOODLAND/WOODLAND_RADIO.sqf";
GS_MORTAR_OBJS=#include "core2/STRUCTURES/WOODLAND/WOODLAND_MORTAR.sqf";

switch (_TaskID) do {
	case 'OBJ_CAPTURE_HQ':{GS_HQ_OBJS select _RandomNumber;};
	case 'OBJ_DESTORY_RADIO':{GS_RADIO_OBJS select _RandomNumber;};
	//case 'OBJ_DESTROY_SAM':{};
	//case 'OBJ_DESTROY_ARTILLERY':{};
	case 'OBJ_DESTROY_MORTARS':{GS_MORTAR_OBJS select _RandomNumber;};
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