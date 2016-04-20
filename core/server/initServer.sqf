if(!isDedicated) exitWith {};

ALERT_LEVEL = 0;

_handle = [] execVM "core\server\scenario\initialInsertionScenario.sqf";
waitUntil { isNull _handle };

[
	west,
	["GLO_TASK"],
	["Find and eliminate the dictator's luitenants to lure him out of hiding", "Find and eliminate the dicatator", ""],
	objNull,
	false,
	1,
	true,
	"Default",
	true
] call BIS_fnc_taskCreate