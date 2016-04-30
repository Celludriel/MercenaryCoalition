if(!isDedicated) exitWith {};

private ["_luitenant"];

// find a spot

// spawn the base

// spawn the luitenant
_group = createGroup east;
_luitenant = _group createUnit ["o_soldier_universal_f", getMarkerPos "lt_spawn_1", [], 0, "NONE"];

_luitenant