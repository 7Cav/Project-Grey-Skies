/*
 * Author: CW3.Sparrow.P
 * 
 * This script is designed to clear all units, dead bodies, and vehicles within a defined radius around a specified position in the mission area.
 * Arguments:
 * Return Value:
 *
 * Example:
 * [_position, _radius] call core2_fnc_CLEANUP_AO;
 *
 * 
 *
 */

params ["_position", "_radius"];

	// Current result is saved in variable _x
{deleteVehicle _x} foreach (allunits select {_x distance2D _position <= _radius }); 
{deleteVehicle _x} foreach (allDead select {_x distance2D _position <= _radius }); 
{deleteVehicle _x} foreach (vehicles select {_x distance2D _position <= _radius });