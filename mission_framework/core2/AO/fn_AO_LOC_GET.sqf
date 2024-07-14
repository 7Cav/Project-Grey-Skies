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
 * Example:////////////
 * call rScripts_fnc_tightlz_startaction
 *
 * Public: No
 *
 */
//params ["param1", "param2"];
_ArrayofAOs=[];
_RandomAO="";
_AOInfo=[];
_LookForText="zone_spawn_";
// Get all markers
private _allMarkers = allMapMarkers;
// Loop through all markers and check if their name matches the prefix
{
    // Check if the marker name starts with the defined prefix
    if ((toLower _x) find (toLower _LookForText) == 0) then {
        _ArrayofAOs pushBack _x;
    };
} forEach _allMarkers;
// Select a random marker from the list of markers
_RandomAO=selectRandom _ArrayofAOs;

//Get Position of the marker
_AOInfo=getMarkerPos _RandomAO;
[_AOInfo,0] call core2_fnc_OBJ_TASK_SEL;