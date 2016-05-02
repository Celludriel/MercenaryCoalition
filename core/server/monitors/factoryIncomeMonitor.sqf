if(!isDedicated) exitWith {};

params ["_sector"];

_isFactory = _sector getVariable ["isFactory", false];
_side = _sector getVariable ["side", false];
if(_isFactory && _side == west) then {
	_workers = _sector getVariable ["workers", 0];
	[_workers * INCOME_PRO_WORKER] call MCSRV_fnc_addFunds;
};