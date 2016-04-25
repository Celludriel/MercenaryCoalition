/*
	o_soldier_universal_f
*/
if(!isDedicated) exitWith {};

params ["_container", ["_maxSpawnRange", 50], ["_side", east]];

_units = _container getVariable ["garrison", []];
_group = createGroup _side;

{
	_spawnRange = floor random _maxSpawnRange;
	[["_spawnRange: %1", _spawnRange]] call MCSHR_fnc_mcLog;
	_spawnPosition = [_container, _spawnRange] call ShkPos_fnc_executeFindPosition;
	_unit = _group createUnit [_x, _spawnPosition, [], 0, "NONE"];
	[_unit] call MCSRV_fnc_gearUnit;
	[_unit, getPos _container, _maxSpawnRange, true] execVM "core\server\ai\patrol-vD.sqf";
	_unit setVariable ["lastOrder", "patrol"];
} forEach _units;

_container setVariable ["garrison", []];
_container setVariable ["activeGroup", _group];