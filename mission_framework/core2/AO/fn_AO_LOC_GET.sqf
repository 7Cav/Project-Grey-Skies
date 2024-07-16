/*
 * Author: CW3.Sparrow.P
 * Gets the Position of a random AO placed in the world
 *
 * Arguments:
 * N/A
 *
 * Return Value:
 * Nothing
 *
 * Example:////////////
 * call core2_fnc_AO_LOC_GET
 *
 * Public: No
 *
 */
["AO_LOC_GET Start",1] call core2_fnc_PRINT_SYSLOG;
//Initialize Variables
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
        [format["Marker Name: %1",_x],3] call core2_fnc_PRINT_SYSLOG;
    };
} forEach _allMarkers;
// Select a random marker from the list of markers
_RandomAO=selectRandom _ArrayofAOs;
[format["Marker Name: %1",_RandomAO],2] call core2_fnc_PRINT_SYSLOG;
//Get Position of the marker
_AOInfo=getMarkerPos _RandomAO;

[format["AO Location: %1",_AOInfo],2] call core2_fnc_PRINT_SYSLOG;
[format["AO_LOC_GET End",_AOInfo],1] call core2_fnc_PRINT_SYSLOG;

["MainAO",2000,"Clear the AO",_AOInfo] call core2_fnc_DRAW_AO;

[_AOInfo,1] call core2_fnc_OBJ_TASK_SEL;
