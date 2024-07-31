/*
	Modified by: 7Cav Dev Team, Sparrow.P
	

	Description:
	 Adds action to laptop to plugin USB, after a certain duration (15 seconds) an action is made available to unplug usb
	 This triggers a QRF force to spawn and deal with anyone in the objective. If Objective is abandoned (killed players, retreat, etc...)
	 this resets the objective (no players within 100m)

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
_duration=15;
[west, [_childTaskID, _parentTaskID], ["Hack the Enemy Intel", "Hack the Intel", "cookiemarker2"], objNull, 1, 3, false] call BIS_fnc_taskCreate;


_duration = 15;

_laptop setVariable ["_USBComplete","false"];
_laptop setVariable ["_USBStarted","false"]

_laptop addAction ["Plug USB into Laptop",
{params ["_target", "_caller", "_actionId", "_arguments"];
	_arguments params ["_laptop","_duration"];
	_trg=createTrigger["EmptyDetector",getPos _laptop];
	_trg setTriggerArea[50,50,0,false,20];
	_trg setTriggerActivation["ANYPLAYER","PRESENT",false];
	_trg setTriggerStatements 
	[
		"this",
		"_laptop setVariable ['_USBComplete','true']; [west,'HQ'] sideChat 'Download Complete. Grab the USB'; ",
		"_laptop setVariable ['_USBComplete','false'];_laptop setVariable ['_USBStarted','false']; deleteVehicle thisTrigger;"
	];
	_trg setTriggerTimeout [_duration,_duration,_duration,true];
	_laptop setVariable ['_USBStarted','true'];
	[west,"HQ"] sideChat "Download in progress";
},[_laptop,_duration],1.5,true,true,"!(_target getVariable['_USBComplete']) && !(_target getVariable['_USBStarted'])",
];

_laptop addAction ["Take USB from Laptop",
{params ["_target", "_caller", "_actionId", "_arguments"];
	_arguments params ["_taskID"];
	[_taskID,"SUCCEEDED",false] call BIS_fnc_taskSetState;
},[_childTaskID],1.5,true,true,"(_target getVariable['_USBComplete'])",
];

["HACK_END END",1] call core2_fnc_PRINT_SYSLOG;