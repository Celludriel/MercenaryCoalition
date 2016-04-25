if(!isDedicated) exitWith {};

params ["_unit", "_newPos", "_captureLocationObject", "_activationRange"];
private ["_currentActiveGroup", "_lastOrder"];

_currentActiveGroup = group _unit;
_lastOrder = _currentActiveGroup getVariable ["lastOrder", "patrol"];

waitUntil {
	if(_lastOrder != "spreadOut") exitWith {};
	sleep 1;
	_lastOrder = _currentActiveGroup getVariable ["lastOrder", "patrol"];
	unitReady _unit || _unit distance _newPos < 2 || !(alive _unit)
};

if(_lastOrder == "spreadOut") then {
	[["Executing spreadOutResumePatrol for [%1] from [%2] with max range [%3]", _unit, _captureLocationObject, _activationRange]]call MCSHR_fnc_mcLog;

	[_unit, getPos _captureLocationObject, _activationRange, true] execVM "core\server\ai\patrol-vD.sqf";
	_unit setVariable ["lastOrder", "patrol"];
};

[["End monitoring spreadOutResumePatrol for [%1]", _x]]call MCSHR_fnc_mcLog;