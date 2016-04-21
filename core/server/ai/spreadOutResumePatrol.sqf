if(!isDedicated) exitWith {};

params ["_unit", "_captureLocationObject", "_activationRange"];

waitUntil { moveToCompleted _unit };

[_unit, _captureLocationObject position, _activationRange, true] execVM "core\server\ai\patrol-vD.sqf";