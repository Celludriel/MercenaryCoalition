if(!isDedicated) exitWith {};

params ["_garrisonContainer"];
private ["_currentSide", "_count"];

_activationRange = _garrisonContainer getVariable ["_activationRange", 250];

while { alive _garrisonContainer } then {
	sleep 1;
	_units = _container getVariable ["garrison", []];

	_currentSide = _garrisonContainer getVariable ["side", west];
	_sideToCheck = nil;
	if(_currentSide == west) then {
		_sideToCheck = east;
	} else {
		_sideToCheck = west;
	};

	_enemySideCount = [getPos _garrisonContainer, _activationRange, _sideToCheck] call MCSHR_fnc_getUnitCount;

	if(count _units > 0) then {
		if(_enemySideCount > 0) then {
			[_garrisonContainer, _activationRange, _currentSide] call MCSRV_fnc_ungarrison;
		};
	} else {
		if(_enemySideCount == 0) then {
			_currentActiveGroup = _container getVariable ["garrison", objNull];
			if(!isNull _currentActiveGroup) then {
				[_currentActiveGroup, _garrisonContainer] call MCSRV_fnc_garrison;
			};
		};
	};
};