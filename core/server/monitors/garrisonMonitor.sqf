if(!isDedicated) exitWith {};

params ["_garrisonContainer"];
private ["_currentSide", "_count"];

_defaultActivationRange = (["StrategicLocationActivationRange"] call BIS_fnc_getParamValue);
_activationRange = _garrisonContainer getVariable ["activationRange", _defaultActivationRange];
_maxSpawnRange = _garrisonContainer getVariable ["maxSpawnRange", _defaultActivationRange];

while { alive _garrisonContainer } do {
	sleep 1;
	_units = _garrisonContainer getVariable ["garrison", []];

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
			[_garrisonContainer, _maxSpawnRange, _currentSide] call MCSRV_fnc_ungarrison;
		};
	} else {
		if(_enemySideCount == 0) then {
			[_garrisonContainer, _activationRange, _sideToCheck] execVm "core\server\monitors\shouldGarrisonMonitor.sqf";
		};
	};
};