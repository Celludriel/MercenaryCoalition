/*
	SERVER GLOBAL CREATION
		INSERTION_MARKER = name of the marker where game start insertion will occur
		INITIAL_INSERTION_RESPAWN_ID = The very first respawn point available to respawn
*/
if(!isDedicated) exitWith {};

// create insertion spot
INSERTION_MARKER = "insertion_location";

_campFireCoord = getmarkerpos INSERTION_MARKER;
_campFire = createVehicle ["FirePlace_burning_F", _campFireCoord, [], 0, "can_collide"];

_spawnPosition = [_campFire, 5] call ShkPos_fnc_executeFindPosition;
_markerText = (markerText INSERTION_MARKER);

INITIAL_INSERTION_RESPAWN_ID = [west, _spawnPosition, _markerText] call BIS_fnc_addRespawnPosition;

_ammoBoxPosition = [_campFire, 1] call ShkPos_fnc_executeFindPosition;

_ammoBox = createVehicle ["Box_NATO_Ammo_F", _ammoBoxPosition, [], 0, "can_collide"];
_inventory = [] call compileFinal preprocessFileLineNumbers "core\configuration\insertionGear.sqf";

[_ammoBox, _inventory] call MCSRV_fnc_fillContainerInventory;

_introductionObjective = ["start_area", ["o_soldier_universal_f","o_soldier_universal_f","o_soldier_universal_f","o_soldier_universal_f","o_soldier_universal_f"], 100] call MCSRV_fnc_createStrategicLocation;

// create introduction task
[
	west,
	["INS_TASK", "GLO_TASK"],
	["Eliminate all opposition and show Altis the town is free by taking the town flag",format ["Free %1", markerText "start_area"],["start_area"]],
	getMarkerPos "start_area",
	true,
	2,
	true,
	"Attack",
	true
] call BIS_fnc_taskCreate;