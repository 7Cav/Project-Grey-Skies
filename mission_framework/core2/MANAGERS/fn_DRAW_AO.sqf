/*
 * Function: core2_fnc_DRAW_AO
 * Author: 7th Cav Dev Team, Sparrow
 *
 * Description:
 * Draws a circular Area of Operations (AO) marker on the map with customizable size, text, and color attributes.
 *
 * Parameter(s):
 * 1. _name (String): The name of the marker.
 * 2. _size (Number): The radius of the AO marker in meters.
 * 3. _text (String): The label or description associated with the AO.
 * 4. _loc (Array): The map coordinates ([x, y]) where the AO marker should be centered.
 *
 * Returns:
 * None.
 *
 * Example:
 * ["MainAO", 2000, "Clear the AO", _AOInfo] call core2_fnc_DRAW_AO;
 *
 * Public:
 * No.
 */
params ["_name", "_size","_text","_loc"];

//_name="MainAO"; 
//_radi=1500; 
private _brush="Border"; 
private _color="colorOPFOR"; 
//_txt="Clear the AO"; 
private _alpha=0.4; 
private _shape="ELLIPSE";
createMarker [_name, _loc];  
_name setMarkerSize [_size, _size]; 
_name setMarkerBrush _brush; 
_name setMarkerShape _shape; 
_name setMarkerColor _color; 
_name setMarkerText _text; 
_name setMarkerAlpha _alpha;
