if(!isDedicated) exitWith {};

params ["_garrisonContainer", "_activationRange", "_sideToCheck"];
private ["_endCount", "_enemySideCount", "_quitMonitor"];

_endCount = 0;
_enemySideCount = 0;
_quitMonitor = false;

while { _endCount != 300 } do {
	sleep 5;
	_enemySideCount = [getPos _garrisonContainer, _activationRange, _sideToCheck] call MCSHR_fnc_getUnitCount;
	if(_enemySideCount > 0) exitWith { _quitMonitor = true };
	_endCount = _endCount + 5;
};

if(!_quitMonitor) then {
	_currentActiveGroup = _garrisonContainer getVariable ["activeGroup", objNull];
	if(!isNull _currentActiveGroup) then {
		[_currentActiveGroup, _garrisonContainer] call MCSRV_fnc_garrison;
	};
};