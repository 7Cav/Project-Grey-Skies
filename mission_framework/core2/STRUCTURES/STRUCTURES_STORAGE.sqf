#include "..\script_component.hpp";
/*
 * Author: CW3.Sparrow.P
 * File that stores a table of all structures for the different objectives we have When called returns Entire table
 *
 * Arguments:
 * None
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
 params ["_objStructureIDs","_objStructureTerrian",["_objSpecificBuildingFill",""]];

_StructureArray=[
]

_filteredArray=[]
{
_objectivefilter = _x select 0;
_terrianfilter=_x select 1;
_specificBuildingfilter=_x select 3;

if (_objectivefilter==_objStructureIDs && _objStructureTerrian==_terrianfilter && _objSpecificBuildingFill==_specificBuildingfilter) then {
	_filteredArray pushBack (_x select 4;);

};

} forEach _StructureArray;