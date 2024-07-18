/*
 * Author: 7th Cav Dev Team, Sparrow
 * Selects a random composition from a composition list and builds it on a location
 *
 * Arguments:
 * 0: CompList - List of compositions in the format outputed from BIS_fnc_ObjectsGrabber
 * 1: TaskPos - Position of the Task
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [GS_HQ_OBJS,_TaskPOS] call core2_fnc_STRUCTURE_BUILDER
 *
 * Public: No
 *
 */
params ["_CompList", "_TaskPOS"];
 ["STRUCTURE_BUILDER Start",1] call core2_fnc_PRINT_SYSLOG;
_RandomNum=0;
_TotalNumberofComps = count _CompList;
_RandomNum = floor random _TotalNumberofComps;
_Comp=_CompList select _RandomNum;

[format["Total Number of Comps: %1, Random Number: %2",_TotalNumberofComps,_RandomNum],2] call core2_fnc_PRINT_SYSLOG;

[_TaskPOS,0,_Comp] call BIS_fnc_ObjectsMapper;

 ["STRUCTURE_BUILDER End",1] call core2_fnc_PRINT_SYSLOG;
