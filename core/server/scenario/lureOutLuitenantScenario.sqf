if(!isDedicated) exitWith {};

private ["_sectorsToOwn"];

// create find luitenant task
TASK_ORDER = TASK_ORDER + 1;
[
	west,
	[format ["FND_LT_TASK_%1", NR_LUITENANTS_LEFT], "GLO_TASK"],
	["Capture enough strategic targets to lure out one of the dictators luitenants", "Lure out luitenant", ""],
	objNull,
	true,
	TASK_ORDER,
	true,
	"Default",
	true
] call BIS_fnc_taskCreate;

_sectorsToOwn = floor(count CAPTURE_LOCATIONS / (NR_LUITENANTS_LEFT+1));

waitUntil {
	sleep 5;
	_ownedSectorCount = 0;
	{
		_side = _x getVariable "side";
		if(_side == west) then {
			_ownedSectorCount = _ownedSectorCount + 1;
		};
	} forEach  CAPTURE_LOCATIONS;

	_ownedSectorCount >= _sectorsToOwn
};

// finish task
[format ["FND_LT_TASK_%1", NR_LUITENANTS_LEFT], "SUCCEEDED", true] spawn BIS_fnc_taskSetState;

// call assassinate luitenant scenario
_handle = [] execVM "core\server\scenario\assassinateLuitenantScenario.sqf";
waitUntil { isNull _handle };