/*
 * Function: core2_fnc_CLEANUP_AO
 * Author: CW3.Sparrow.P
 * 
 * Description:
 * This script clears all units, dead bodies, vehicles, and objects within a specified radius around a given position. It is useful for cleaning up an area in the mission to improve performance or reset the environment.
 *
 * Arguments:
 * 1. _position (Array): The center position `[x, y, z]` around which the cleanup will be performed.
 * 2. _radius (Number): The radius (in meters) within which objects will be deleted.
 *
 * Return Value:
 * None.
 *
 * Example:
 * [_position, _radius] call core2_fnc_CLEANUP_AO;
 *
 * Public:
 * No.
 */

params ["_position", "_radius"];

	// Current result is saved in variable _x
{deleteVehicle _x} foreach (allunits select {_x distance2D _position <= _radius }); 
{deleteVehicle _x} foreach (allDead select {_x distance2D _position <= _radius }); 
{deleteVehicle _x} foreach (vehicles select {_x distance2D _position <= _radius });
{deleteVehicle _x} foreach (-1 allObjects 0 select {_x distance2D _position <= _radius });