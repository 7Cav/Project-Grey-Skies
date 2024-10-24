/*
 * Author: CW3.Sparrow.P
 * Compiles an array of Object and OPFOR locations for the Structures storage file, Currently just gets the output of BIS_fnc_ObjectsGrabber
 * Is meant to be copy and pasted into the debug script prompt
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
copyToClipboard _objLocations;