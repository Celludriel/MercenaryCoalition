if(!isDedicated) exitWith {};

params ["_factory"]

private ["_workers"];

_workers = _factory getVariable ["workers", 0];

if(_workers < 10) then {
	_workers = _workers + 1;
	_factory setVariable ["workers", _workers];
} else {
	["Max amount of workers reached"]remoteExec ["MCSHR_fnc_globalHint", 0, false];
};