if(!isDedicated) exitWith {};

params ["_captureLocationObject"];


if(!isNull _currentActiveGroup) then {
	_activationRange = _captureLocationObject getVariable ["activationRange", 250];
	{
		_randomLocation = [_captureLocationObject, _range] call ShkPos_fnc_executeFindPosition;
		_x moveTo _randomLocation;
		_x setBehaviour "AWARE";
		_x setSpeedMode "NORMAL";
		[_x, _captureLocationObject, _activationRange] execVm "core\server\ai\spreadOutResumePatrol.sqf";
	} foreach units _currentActiveGroup;
};