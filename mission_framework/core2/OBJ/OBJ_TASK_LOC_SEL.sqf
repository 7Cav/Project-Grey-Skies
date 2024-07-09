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
params ["_AOInfo", "_TaskIDs"];
_AOSize=1500;
_MultTaskPOS=[];
{
	_TaskPOS=[_AOInfo,0,_AOSize,0,0,0.1,0,[],[]] call BIS_fnc_findSafePos;
	_TaskandPOS=[_x,_TaskPOS];
	_MultTaskPOS pushBack _TaskandPOS;
}foreach _taskIDs;
