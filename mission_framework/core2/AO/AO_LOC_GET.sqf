#include "..\script_component.hpp";
/*
 * Author: CW3.Sparrow.P
 * Gets the Position of a random AO placed in the world
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
//params ["param1", "param2"];
_ArrayofAOs=[];
_RandomAO="";
_AOInfo=[];

_ArrayofAOs=["AO_SPAWNER_"] call BIS_fnc_getMarkers;
_RandomAO=selectRandom _ArrayofAOs;
_AOInfo=getPos _RandomAO;