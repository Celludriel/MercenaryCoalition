if(!isDedicated) exitWith {};

params ["_location", "_garrison"];

_eventScripts = [
	["core\server\ai\rushToCaptureLocation.sqf"],
	[],
	["core\server\ai\spreadOut.sqf"]
];

_capturableObject = [_location, 5, "Flag_Green_F", 300, east, nil, ] execVm "core\shared\dyncap\createCaptureLocation.sqf";

[_garrison, _capturableObject] call MCSRV_fnc_garrison;

_capturableObject setVariable ["activationRange", ["StrategicLocationActivationRange", 250] call BIS_fnc_getParamValue];
[_capturableObject] execVM "core\server\monitors\garrisonMonitor.sqf";

_capturableObject