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

//Need to convert to global variables in setting file
#define NATO_FLAG "\a3\data_f\flags\flag_nato_co.paa"
#define CSAT_FLAG "\a3\data_f\flags\flag_csat_co.paa"


[west, [_childTaskID, _parentTaskID], ["Capture the Enemy Flag", "Capture the flag.", "cookiemarker2"], objNull, 1, 3, false] call BIS_fnc_taskCreate;

_flag setflagAnimationPhase 1;
_flag setFlagTexture CSAT_FLAG;
_icon = "\a3\ui_f\data\igui\cfg\holdactions\holdaction_takeoff2_ca.paa";
_duration = 10;

_addID = [_flag, "Capture Flag", _icon, _icon,
	"true",//condition show
	"true",
	{//code start
	},
	{// code progress -> set flag height
		params ["_flag", "_caller", "_actionId", "_arguments","_progress", "_maxProgress"];
		_relProgress = _progress/_maxProgress;
		if (_relProgress < 0.5) then {
			_flag setFlagAnimationPhase (1-(2*_relProgress));
		} else {
			if (_relProgress == 0.5) then {_flag setFlagTexture NATO_FLAG};
			_flag setFlagAnimationPhase ((2*_relProgress)-1);
		};
	},
	{// codeCompleted
		params ["_flag", "_caller", "_actionId", "_arguments"];
		_arguments params ["_taskID"];
		[_taskID,"SUCCEEDED",false] call BIS_fnc_taskSetState;
	},
	{//codeInterrupted
		//revert
		params ["_flag", "_caller", "_actionId", "_arguments"];
		_flag setFlagAnimationPhase 1;
		_flag setFlagTexture CSAT_FLAG;
	},
[_childTaskID], _duration, 1.5, true] call BIS_fnc_holdActionAdd;

_addID;
["CAPTURE_FLAG END",1] call core2_fnc_PRINT_SYSLOG;