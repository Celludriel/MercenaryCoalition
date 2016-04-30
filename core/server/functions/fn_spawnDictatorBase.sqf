if(!isDedicated) exitWith {};

private ["_dictator"];

// find a spot

// spawn the base

// spawn the luitenant
_group = createGroup east;
_dictator = _group createUnit ["o_soldier_universal_f", getMarkerPos "lt_spawn_1", [], 0, "NONE"];

_dictator