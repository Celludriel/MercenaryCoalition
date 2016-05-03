if(!isDedicated) exitWith {};

private ["_totalCount", "_side", "_isFactory", "_isTown", "_workers", "_militia"];
_totalCount = 0;

{
	_side = _x getVariable ["side", east];
	if(_side == west) then {
		_isTown = _x getVariable ["isTown", false];
		_isFactory = _x getVariable ["isFactory", false];

		if(_isTown) then {
			_totalCount = _totalCount + TOWN_MANPOWER;
		};

		if(_isFactory) then {
			_workers = _x getVariable ["workers", 0];
			_totalCount = _totalCount - _workers;
		};

		_militia = _x getVariable ["militia", 0];
		_totalCount = _totalCount - _militia;
	};
} forEach CAPTURE_LOCATIONS;