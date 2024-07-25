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
params ["_UnitToSpawn", "_position"];

// Create a new group for the unit
private _group = createGroup EAST; 

// Spawn the unit
private _unit = _group createUnit [_UnitToSpawn, _position, [], 33, "NONE"]; // "B_Soldier_F" is the class name for a NATO rifleman

_unit;

