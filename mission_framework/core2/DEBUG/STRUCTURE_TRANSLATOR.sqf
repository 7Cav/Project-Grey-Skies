#include "..\script_component.hpp";
/*
 * Author: CW3.Sparrow.P
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
params [["_SearchRadius",50],["_SearchPosition",[0,0,0]]];

_buildingArray=nearestObjects[_SearchPosition,["Building"],_SearchRadius];

_buildingInfo = _buildingArray apply {
    private _obj = _x;
    private _className = typeOf _obj;
    private _position = getPosASL _obj; // getPosASL gives position relative to sea level
    private _rotation = vectorDir _obj; // vectorDir gives direction the object is facing
    [_className, _position, _rotation]
};

_OPFORArray=nearestObjects[_SearchPosition,["StaticWeapon","Man"],_SearchRadius];
_OPFORInfo = _OPFORArray apply {
    private _obj = _x;
    private _className = typeOf _obj;
    private _position = getPosASL _obj; // getPosASL gives position relative to sea level
    private _rotation = vectorDir _obj; // vectorDir gives direction the object is facing
    [_className, _position, _rotation]
};

[_buildingInfo,_OPFORInfo];