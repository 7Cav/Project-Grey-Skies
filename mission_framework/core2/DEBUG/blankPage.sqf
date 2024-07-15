[[0,0,0],[["OBJ_CAPTURE_HQ",[-347.476,-615.581]],["OBJ_DESTORY_RADIO",[-1135.47,-232.414]]]]
_GetNumberInArray=1;
_TaskID='OBJ_CAPTURE_HQ';

GS_HQ_OBJS=#include "core2/STRUCTURES/WOODLAND/WOODLAND_HQ.sqf";
GS_RADIO_OBJS=#include "core2/STRUCTURES/WOODLAND/WOODLAND_RADIO.sqf";
GS_MORTAR_OBJS=#include "core2/STRUCTURES/WOODLAND/WOODLAND_MORTAR.sqf";
if (_GetNumberInArray==0) then {
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
} else {
	switch (_TaskID) do {
		case 'OBJ_CAPTURE_HQ':{count GS_HQ_OBJS;};
		case 'OBJ_DESTORY_RADIO':{count GS_RADIO_OBJS;};
		//case 'OBJ_DESTROY_SAM':{};
		//case 'OBJ_DESTROY_ARTILLERY':{};
		case 'OBJ_DESTROY_MORTARS':{count GS_MORTAR_OBJS;};
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
};