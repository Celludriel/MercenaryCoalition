if(!isDedicated) exitWith {};

params ["_unit"];

_gearLoadout = [ALERT_LEVEL] call MCSRV_fnc_fetchEnemyGearLoadoutForAlertLevel;

[_unit, _gearLoadout] call MCSRV_fnc_addGearToUnit;