/*
	o_soldier_universal_f
*/
if(!isDedicated) exitWith {};

params ["_container", ["_range", 200], ["_side", east]];

_units = _container getVariable ["garrison", []];
_group = createGroup _side;

{
	_spawnPosition = [_container, _range] call ShkPos_fnc_executeFindPosition;
	_x createUnit [_spawnPosition, _group];
	[_x] call MCSRV_fnc_gearUnit;
	[_x, _container position, _range, true] execVM "core\server\ai\patrol-vD.sqf";
} forEach _units;

_container setVariable ["garrison", []];
_container setVariable ["activeGroup", _group];