if(!isDedicated) exitWith {};

params ["_campFire"];

_table = _campFire getVariable ["table", objNull];
_pc = _campFire getVariable ["pc", objNull];

deleteVehicle _table;
deleteVehicle _pc;

_inventory = _campFire getVariable ["inventory", objNull];

_spawnPosition = getPos _campFire;
deleteVehicle _campFire;

_respawnId = _campFire getVariable ["respawnId", 0];
[["_respawnId: %1", _respawnId]] call MCSHR_fnc_mcLog;

_respawnId call BIS_fnc_removeRespawnPosition;

_hqVehicle = createVehicle ["B_Truck_01_covered_F", _spawnPosition, [], 0, "can_collide"];

{
	[_x, _hqVehicle] call MCSRV_fnc_moveInventory;
	detach _x,
	deleteVehicle _x;
} forEach attachedObjects _inventory;

deleteVehicle _inventory;
[_hqVehicle, ["<t color='#11ff11'>" + (localize "STR_MHQ_DEPLOY") + "</t>", {(_this select 0) call MCCLN_fnc_spawnMobileHqSite;}, [], 6, false, false, "", "(speed (vehicle _target)) < 1 && (getPosATL _target) select 2 < 2"]] remoteExec ["addAction", 0, true];