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
 * ["MainAO",2000,Clear the AO,_AOInfo] call core2_fnc_DRAW_AO
 *
 * Public: No
 *
 */
params [_name, _size,_text,_loc];

//_name="MainAO"; 
//_radi=1500; 
_brush="Border"; 
_color="colorOPFOR"; 
//_txt="Clear the AO"; 
_alpha=0.4; 
_shape="ELLIPSE";
createMarker [_name, _loc];  
_name setMarkerSize [_size, _size]; 
_name setMarkerBrush _brush; 
_name setMarkerShape _shape; 
_name setMarkerColor _color; 
_name setMarkerText _text; 
_name setMarkerAlpha _alpha;
