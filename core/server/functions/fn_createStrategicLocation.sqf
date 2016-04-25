if(!isDedicated) exitWith {};

params ["_location", "_garrison", ["_maxSpawnRange", (["StrategicLocationActivationRange"] call BIS_fnc_getParamValue)], ["_activationRange", (["StrategicLocationActivationRange"] call BIS_fnc_getParamValue)]];

_eventScripts = [
	["core\server\ai\rushToCaptureLocation.sqf"],
	[],
	["core\server\ai\spreadOut.sqf"]
];

_capturableObject = [_location, "Flag_Green_F", 5, 300, east, nil, _eventScripts] call DYNCAP_fnc_createCaptureLocation;

[_garrison, _capturableObject] call MCSRV_fnc_garrison;

_capturableObject setVariable ["activationRange", _activationRange];
_capturableObject setVariable ["maxSpawnRange", _maxSpawnRange];
[_capturableObject] execVM "core\server\monitors\garrisonMonitor.sqf";

_capturableObject