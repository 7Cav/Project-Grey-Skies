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
 * [rf_officer,_position] call core2_fnc_SINGLE_UNIT_SPAWN;
 *
 * Public: No
 *
 */
params ["_UnitToSpawn", "_position"];

// Create a new group for the unit
private _group = createGroup EAST; 

// Spawn the unit
private _unit = _group createUnit [_UnitToSpawn, _position, [], 33, "NONE"]; // "B_Soldier_F" is the class name for a NATO rifleman

_array=[_unit,_group];

_array;