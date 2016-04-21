if(!isDedicated) exitWith {};

params ["_captureLocationObject"];

_location = getPos _captureLocationObject;
_currentActiveGroup = _captureLocationObject getVariable ["activeGroup", objNull];

if(!isNull _currentActiveGroup) then {
	{
		_x moveTo _location;
		_x setBehaviour "COMBAT";
		_x setSpeedMode "FULL";
	} foreach units _currentActiveGroup;
};