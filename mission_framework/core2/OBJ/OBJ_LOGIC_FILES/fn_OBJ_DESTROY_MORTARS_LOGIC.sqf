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
 * [_TaskPOS] call core2_fnc_OBJ_CAPTURE_HQ_LOGIC
 *
 * Public: No
 *
 */
params ["_TaskPOS"];
["OBJ_DESTROY_MORTARS_LOGIC Start",1] call core2_fnc_PRINT_SYSLOG;
//Builds the Objective Objects
_TotalNumberofComps = count GS_MORTAR_OBJS;
_RandomNum = floor random _TotalNumberofComps;
_Comp=GS_MORTAR_OBJS select _RandomNum;
[_TaskPOS,0,_Comp] call BIS_fnc_ObjectsMapper;

//Builds Objects related to competing the Tasks/Objectives






["OBJ_DESTROY_MORTARS_LOGIC End",1] call core2_fnc_PRINT_SYSLOG;