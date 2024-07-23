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
params ["param1", "param2"];

// Create a new group for the unit
private _group = createGroup EAST; 

// Define the position where the unit will be spawned
private _position = [1000, 1000, 0]; // Replace with your desired coordinates

// Spawn the unit
private _unit = _group createUnit ["B_Soldier_F", _position, [], 33, "NONE"]; // "B_Soldier_F" is the class name for a NATO rifleman

// Optional: Do something with the unit, like assigning it a name
_unit setName "MyUnit";

