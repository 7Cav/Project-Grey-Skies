/*
	Modified by: 7Cav Dev Team, Sparrow.P
	Original Author: 7erra

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
["HACK_INTEL Start",1] call core2_fnc_PRINT_SYSLOG;
params ["_laptop","_parentTaskID","_childTaskID"];

//Need to convert to global variables in setting file
#define NATO_FLAG "\a3\data_f\flags\flag_nato_co.paa"


[west, [_childTaskID, _parentTaskID], ["Hack the Enemy Intel", "Capture the flag.", "cookiemarker2"], objNull, 1, 3, false] call BIS_fnc_taskCreate;

_icon = "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa";
_duration = 10;

_addID = [_laptop, "Hack Terminal", _icon, _icon,
	"true",//condition show
	"true",
	{//code start
	},
	{// code progress -> set flag height
		params ["_laptop", "_caller", "_actionId", "_arguments","_progress", "_maxProgress"];
		
	},
	{// codeCompleted
		params ["_laptop", "_caller", "_actionId", "_arguments"];
		_arguments params ["_taskID"];
		[_taskID,"SUCCEEDED",false] call BIS_fnc_taskSetState;
	},
	{//codeInterrupted
		//revert
		params ["_laptop", "_caller", "_actionId", "_arguments"];

	},
[_childTaskID], _duration, 1.5, true] call BIS_fnc_holdActionAdd;

_addID;
["HACK_END END",1] call core2_fnc_PRINT_SYSLOG;