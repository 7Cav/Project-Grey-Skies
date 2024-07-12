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
 * List of Acceptable _objStructureIDs:
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
 *
 * List of Acceptable _objStructureTerrian:
 *  WOODLAND
 *  SNOW
 *  DESERT
 *
 * _objSpecificBuildingFill is meant for buildings already on the map. This would place the objects in that building if needed like a hanger
 *
 *
 */
params [["_SearchRadius",50],["_SearchPosition",[0,0,0]]];
_objStructureID="OBJ_CAPTURE_HQ";
_objStructureTerrian="WOODLAND";
_objSpecificBuildingFill="";
_objLocations=[_SearchPosition,_SearchRadius,true] call BIS_fnc_ObjectsGrabber;
_stringbs=_objLocations splitstring "*/";
_stringbs2=_stringbs select 1;
_FinalProduct=parseSimpleArray _stringbs2;
copyToClipboard format["[""%1"",""%2"",""%3"",%4]",_objStructureID,_objStructureTerrian,_objSpecificBuildingFill,_FinalProduct];