params ["_uid"];

#include "whitelist.sqf"

_restrictedClass = "Cav_B_A_JFO_F";
_playerClass = typeOf player;


if (_playerClass IsNotEqualTo _restrictedClass) exitWith {};
if (_uid in mScripts_whitelist) exitWith {};
endMission "RESTRICTED_SLOT";
