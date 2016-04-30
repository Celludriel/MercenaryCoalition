if(!hasinterface) exitWith {};

params ["_mobileHq"];

[_mobileHq] remoteExec ["MCSRV_fnc_spawnMobileHqSite", 0, true];