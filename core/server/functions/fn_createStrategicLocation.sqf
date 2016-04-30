if(!isDedicated) exitWith {};

_defaultActivationRange = ["StrategicLocationActivationRange"] call BIS_fnc_getParamValue;
params ["_location", "_garrison", ["_maxSpawnRange", _defaultActivationRange], ["_activationRange", _defaultActivationRange], ["_captureObjectType", "Flag_Green_F"], ["_iconType", "n_art"]];

_eventScripts = [
	["core\server\ai\rushToCaptureLocation.sqf"],
	[],
	["core\server\ai\spreadOut.sqf"]
];

_capturableObject = [_location, _captureObjectType, 5, CAPTURE_TIME, east, _iconType, _eventScripts] call DYNCAP_fnc_createCaptureLocation;

[_garrison, _capturableObject] call MCSRV_fnc_garrison;

_capturableObject setVariable ["activationRange", _activationRange];
_capturableObject setVariable ["maxSpawnRange", _maxSpawnRange];
[_capturableObject] execVM "core\server\monitors\garrisonMonitor.sqf";

_capturableObject