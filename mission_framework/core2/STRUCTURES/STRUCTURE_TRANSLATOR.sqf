#include "..\script_component.hpp";
/*
 * Author: CW3.Sparrow.P
 * Compiles an array of Object and OPFOR locations for the Structures storage file
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
 * List of Acceptable _objStructureIDs
 *	OBJ_CAPTURE_HQ
 *	OBJ_DESTORY_RADIO
 *	OBJ_DESTROY_SAM
 *	OBJ_DESTROY_ARTILLERY
 *	OBJ_DESTROY_MORTARS
 *	OBJ_DESTROY_OBS_POST
 *	OBJ_DESTROY_VEC_DEPOT
 *	OBJ_DESTROY_FARP
 *	OBJ_DESTROY_SUPPLY_DEPOT
 *	OBJ_DESTROY_CONVOY
 *	OBJ_DESTROY_PATROL_BASE
 *	OBJ_COLLECT_INTEL
 *	OBJ_KILL_OFF
 *	OBJ_RESCUE_POW
 *	OBJ_CSAR
 *	OBJ_CAPTURE_AIRFIELD
 */
params [["_SearchRadius",50],["_SearchPosition",[0,0,0]]];
_objStructureID="";
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

[_objStructureID,_buildingInfo,_OPFORInfo];