params ["_objectList"];

{

	_object = _x;

	if (!isPlayer _object) then {

		_crewList = crew _object;

		{_object deleteVehicleCrew _x} forEach _crewList;

		deleteVehicle _object;
	};
} forEach _objectList;