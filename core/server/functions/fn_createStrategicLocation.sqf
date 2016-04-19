if(!isDedicated) exitWith {};

params ["_location", "_garrison"];

_capturableObject = [_location, 5, "Flag_Green_F", 300, east] execVm "core\shared\dyncap\createCaptureLocation.sqf";

_capturableObject