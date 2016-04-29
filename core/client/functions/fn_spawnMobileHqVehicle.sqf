if(!hasinterface) exitWith {};

params ["_campFire"];

_table = _campFire getVariable ["table", objNull];
_pc = _campFire getVariable ["pc", objNull];

deleteVehicle _table;
deleteVehicle _pc;

_inventory = _campFire getVariable ["inventory", objNull];

_spawnPosition = getPos _campFire;
deleteVehicle _campFire;

_hqVehicle = "B_Truck_01_covered_F" createVehicle _spawnPosition;
[_hqVehicle, ["<t color='#11ff11'>" + (localize "STR_MHQ_DEPLOY") + "</t>", {target call MCCLN_fnc_spawnMobileHqSite;}, [], 6, false, false, "", "(speed (vehicle _target)) < 1 && (getPosATL _target) select 2 < 2"]] remoteExec ["addAction", 0, true];