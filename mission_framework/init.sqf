// Run evannex gamemode
execVM "core\evannexInit.sqf";
// Enable friendly markers
//execVM "core\client\QS_icons.sqf";

if (!isDedicated) then {

	[] spawn mScripts_fnc_initializePlayer;

};

if (isDedicated || isMultiplayer) then {

	[] call ina_fnc_startServer;

};