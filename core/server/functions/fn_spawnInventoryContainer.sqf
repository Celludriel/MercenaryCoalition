if(!isDedicated) exitWith {};

params ["_spawnPosition", "_mobileHq"];

_inventory = createVehicle ["Land_Cargo20_military_green_F", _spawnPosition, [], 0, "can_collide"];
_cargo = "Supply500" createVehicle [0,0,0];
_cargo attachTo [_inventory, [0,0,0.85]];
[_mobileHq, _cargo] call MCSRV_fnc_moveInventory;

_inventory