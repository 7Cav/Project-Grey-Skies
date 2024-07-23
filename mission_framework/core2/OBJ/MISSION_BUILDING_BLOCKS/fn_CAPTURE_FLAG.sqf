/*
	Author: 7erra

	Description:
	 Makes a flag pole capturable

	Parameter(s):
	 0: OBJECT - Flag
	 (optional) 1: CODE - Code executed after the cap

	Returns:
	NUMBER - Action ID of the Hold Action

	Example:
	[this] call TAG_fncName;
	[this,{hint "Capped";}] call TAG_fncName;
*/
["CAPTURE_FLAG Start",1] call core2_fnc_PRINT_SYSLOG;
params ["_flag","_parentTaskID","_childTaskID"];
#define FLAG_PATH(TEXTURE) (format ["\a3\data_f\flags\%1.paa",TEXTURE])
#define NATO_FLAG FLAG_PATH("flag_nato_co")
#define CSAT_FLAG FLAG_PATH("flag_csat_co")
#define AAF_FLAG FLAG_PATH("flag_aaf_co")
#define EMPTY_FLAG FLAG_PATH("flag_white_co")
#define HOLDACTION_PARAMS ["_flag", "_caller", "_actionId", "_arguments"]
#define FLAG_ARRAY [NATO_FLAG,CSAT_FLAG,AAF_FLAG,EMPTY_FLAG]
#define SIDE_ARRAY [west,east,independent,civilian]
#define OWN_FLAG(ARG_SIDE) (FLAG_ARRAY select (SIDE_ARRAY find ARG_SIDE))

[west, [_childTaskID, _parentTaskID], ["Capture the Enemy Flag", "Capture the flag.", "cookiemarker2"], objNull, 1, 3, false] call BIS_fnc_taskCreate;

_flag setflagAnimationPhase 1;
_flag setFlagTexture EMPTY_FLAG;
_flag setVariable ["TER_flagSide",civilian];
_icon = "\a3\ui_f\data\igui\cfg\holdactions\holdaction_takeoff2_ca.paa";
_duration = 10;
_addID = [_flag, "Capture Flag", _icon, _icon,
	"_target getVariable [""TER_flagSide"",civilian] != side _this",//condition show
	"true",
	{//code start
	},
	{// code progress -> set flag height
		params (HOLDACTION_PARAMS+["_progress", "_maxProgress"]);
		_relProgress = _progress/_maxProgress;
		if (_relProgress < 0.5) then {
			_flag setFlagAnimationPhase (1-(2*_relProgress));
		} else {
			if (_relProgress == 0.5) then {_flag setFlagTexture OWN_FLAG(side _caller)};
			_flag setFlagAnimationPhase ((2*_relProgress)-1);
		};
	},
	{// codeCompleted
		params HOLDACTION_PARAMS;
		_arguments params ["_taskID"];
		_flag setVariable ["TER_flagSide",side _caller];
		[_taskID,"SUCCEEDED",false] call BIS_fnc_taskSetState;
	},
	{//codeInterrupted
		//revert
		params HOLDACTION_PARAMS;
		_flag setFlagAnimationPhase 1;
		_side = _flag getVariable ["TER_flagSide",civilian];
		_flag setFlagTexture OWN_FLAG(_side);
	},
[_childTaskID], _duration, 1.5, true] call BIS_fnc_holdActionAdd;

_addID;
["CAPTURE_FLAG END",1] call core2_fnc_PRINT_SYSLOG;