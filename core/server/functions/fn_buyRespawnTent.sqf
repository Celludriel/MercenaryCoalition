if(!isDedicated) exitWith {};

params ["_player"];

[1500] call MCSRV_fnc_subtractFromFunds;
_player addItemToUniform ("ItemWatch");

[format ["Respawn tent aquired new mission fund balance %1", NEGATIVE_BALANCE_LOSS]]remoteExec ["MCSHR_fnc_globalHint", 0, false];