/*
 * Function: core2_fnc_SINGLE_UNIT_SPAWN
 * Author: 7th Cav Dev Team, Sparrow
 * 
 * Description:
 * Spawns a single unit at the specified position, creating a new group for the unit. The function returns an array containing the spawned unit and its group.
 *
 * Arguments:
 * 0. _UnitToSpawn (String): The class name of the unit to spawn (e.g., "B_Soldier_F" for a NATO rifleman).
 * 1. _position (Array): The position where the unit will spawn in the format `[x, y, z]`.
 *
 * Return Value:
 * Array: Contains the spawned unit and the group, in the format `[_unit, _group]`.
 *
 * Example:
 * [rf_officer, _position] call core2_fnc_SINGLE_UNIT_SPAWN;
 *
 * Public:
 * No.
 */
params ["_UnitToSpawn", "_position"];

// Create a new group for the unit
private _group = createGroup EAST; 

// Spawn the unit
private _unit = _group createUnit [_UnitToSpawn, _position, [], 5, "NONE"]; // "B_Soldier_F" is the class name for a NATO rifleman

_array=[_unit,_group];

_array;