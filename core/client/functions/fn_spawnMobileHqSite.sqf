if(!hasinterface) exitWith {};

params ["_mobileHq"];

_campFire = createVehicle ["FirePlace_burning_F", getPos _mobileHq, [], 0, "can_collide"];

_spawnPosition = [_mobileHq, 5] call ShkPos_fnc_executeFindPosition;
_table = createVehicle ["Land_CampingTable_F", _spawnPosition, [], 0, "can_collide"];
_pc = [_spawnPosition] call MCCLN_fnc_spawnMobileComputer;

_spawnPosition = [_mobileHq, 5] call ShkPos_fnc_executeFindPosition;
_inventory = [_spawnPosition] call MCCLN_fnc_spawnInventoryContainer;
_spawnPosition = [_campFire, 5] call ShkPos_fnc_executeFindPosition;

_respawnId = [west, _spawnPostion, "HQ"] call BIS_fnc_addRespawnPosition;
[["_respawnId: %1", _respawnId]] call CTISHR_fnc_ctiLog;

_campFire setVariable ["table", _table];
_campFire setVariable ["pc", _pc];
_campFire setVariable ["inventory", _inventory];
_campFire setVariable ["respawnId", _respawnId, true];

[_campFire, ["<t color='#ff1111'>" + (localize "STR_MHQ_UNDEPLOY") + "</t>", {target call MCCLN_fnc_spawnMobileHqVehicle;}]] remoteExec ["addAction", 0, true];