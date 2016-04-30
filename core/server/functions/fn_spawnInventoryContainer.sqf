if(!isDedicated) exitWith {};

params ["_spawnPosition"];

_inventory = createVehicle ["Land_Cargo20_military_green_F", _spawnPosition, [], 0, "can_collide"];

_inventory