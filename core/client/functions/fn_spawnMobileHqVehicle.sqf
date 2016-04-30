if(!hasinterface) exitWith {};

params ["_campFire"];

[_campFire] remoteExec ["MCSRV_fnc_spawnMobileHqVehicle", 0, true];