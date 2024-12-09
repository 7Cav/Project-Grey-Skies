
// Enable friendly markers
//execVM "core\client\QS_icons.sqf";

if (!isDedicated) then {

	//[] spawn mScripts_fnc_initializePlayer;

};



if (isDedicated || isMultiplayer) then {
	call core2_fnc_init_core2;


};

