// Local to Player

waitUntil {alive player};
waitUntil {!isNull player};
waitUntil {vehicle player == player};

_uid = getPlayerUID player;

[_uid] call mScripts_fnc_checkPerms;

[] call mScripts_fnc_addActions;

player addEventHandler ["GetInMan",{[] call mScripts_fnc_checkPilot;}];
