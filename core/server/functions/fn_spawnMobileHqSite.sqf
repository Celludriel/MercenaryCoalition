if(!isDedicated) exitWith {};

params ["_mobileHq"];

_campFire = createVehicle ["FirePlace_burning_F", getPos _mobileHq, [], 0, "can_collide"];
deleteVehicle _mobileHq;


_spawnPosition = [_campFire, 5, 90, 0, [0,0], "Land_CampingTable_F"] call ShkPos_fnc_executeFindPosition;
_table = createVehicle ["Land_CampingTable_F", _spawnPosition, [], 0, "can_collide"];
_pc = [_spawnPosition] call MCSRV_fnc_spawnMobileComputer;
_pc attachTo [_table, [0,0,0.8]];
_table setDir 270;

_spawnPosition = [_campFire, 5, 270, 0, [0,0], "Land_Cargo20_military_green_F"] call ShkPos_fnc_executeFindPosition;
_inventory = [_spawnPosition] call MCSRV_fnc_spawnInventoryContainer;
_inventory setDir 90;
_spawnPosition = [_campFire, 5] call ShkPos_fnc_executeFindPosition;

_respawnId = [west, _spawnPosition, "HQ"] call BIS_fnc_addRespawnPosition;
[["_respawnId: %1", _respawnId]] call MCSHR_fnc_mcLog;

_campFire setVariable ["table", _table];
_campFire setVariable ["pc", _pc];
_campFire setVariable ["inventory", _inventory];
_campFire setVariable ["respawnId", _respawnId, true];

[_campFire, ["<t color='#ff1111'>" + (localize "STR_MHQ_UNDEPLOY") + "</t>", {(_this select 0) call MCCLN_fnc_spawnMobileHqVehicle;}]] remoteExec ["addAction", 0, true];