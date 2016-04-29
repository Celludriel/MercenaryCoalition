if(!hasinterface) exitWith {};

params ["_spawnPosition"];

_pc = createVehicle ["Land_Laptop_unfolded_F", _spawnPosition, [], 0, "can_collide"];

_pc