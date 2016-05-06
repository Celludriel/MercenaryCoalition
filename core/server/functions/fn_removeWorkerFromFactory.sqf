if(!isDedicated) exitWith {};

params ["_factory"];

private ["_workers"];

_workers = _factory getVariable ["workers", 0];

if(_workers > 0) then {
	_workers = _workers - 1;
	_factory setVariable ["workers", _workers];
} else {
	["No workers left to remove"]remoteExec ["MCSHR_fnc_globalHint", 0, false];
};