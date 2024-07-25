/*
 * Author: 7th Cav Dev Team, Sparrow
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
[] call compileFinal preprocessFileLineNumbers "core2\GS_preset_config.sqf";
[] call compileFinal preprocessFileLineNumbers "core2\GS_config.sqf";
call core2_fnc_GET_COMPS;
call core2_fnc_init_preset;