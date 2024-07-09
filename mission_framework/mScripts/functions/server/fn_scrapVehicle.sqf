[
	{
		_objectList = nearestObjects [getMarkerPos "cleanup_1", ["LandVehicle", "Air"], 5];

		{

			_object = _x;

			if (!isPlayer _object) then {

				_crewList = crew _object;

				{_object deleteVehicleCrew _x} forEach _crewList;

				deleteVehicle _object;
			};
		} forEach _objectList;

	},
	5,
	[]

] call CBA_fnc_addPerFrameHandler