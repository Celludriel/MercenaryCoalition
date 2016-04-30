if(!isDedicated) exitWith {};

private ["_sectorsToOwn"];

// create find luitenant task
[
	west,
	["FND_LT_TASK", "GLO_TASK"],
	["Capture enough strategic targets to lure out one of the dictators luitenants", "Lure out luitenant", ""],
	objNull,
	false,
	1,
	true,
	"Default",
	true
] call BIS_fnc_taskCreate;

_sectorsToOwn = _floor(count CAPTURE_LOCATIONS / (NR_LUITENANTS_LEFT+1));

waitUntil {
	sleep 5;
	_ownedSectorCount = 0;
	{
		_side = _x getVariable ["side"];
		if(_side == west) then {
			_ownedSectorCount = _ownedSectorCount + 1;
		};
	} forEach  CAPTURE_LOCATIONS;

	_ownedSectorCount >= _sectorsToOwn
};

// finish task
["FND_LT_TASK", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;

// call assassinate luitenant scenario
_handle = [] execVM "core\server\scenario\assassinateLuitenantScenario.sqf";
waitUntil { isNull _handle };