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
CAPTURE_LOCATIONS pushBack _introductionObjective;

// create introduction task
TASK_ORDER = TASK_ORDER + 1;
[
	west,
	["INS_TASK", "GLO_TASK"],
	["Eliminate all opposition and show Altis the town is free by taking the town flag",format ["Free %1", markerText "start_area"],["start_area"]],
	getMarkerPos "start_area",
	true,
	TASK_ORDER,
	true,
	"Attack",
	true
] call BIS_fnc_taskCreate;

// check for condition of ending the scenario
waitUntil {
	sleep 1;
	_introductionObjective getVariable "side" == west
};

// end task
["INS_TASK", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;

// spawn mobile hq truck
_spawnPosition = [_introductionObjective, 10, random 360, 0, [0,0], "B_Truck_01_covered_F"] call ShkPos_fnc_executeFindPosition;

_hqVehicle = createVehicle ["B_Truck_01_covered_F", _spawnPosition, [], 0, "can_collide"];
[_hqVehicle, ["<t color='#11ff11'>" + (localize "STR_MHQ_DEPLOY") + "</t>", {(_this select 0) call MCCLN_fnc_spawnMobileHqSite;}, [], 6, false, false, "", "(speed (vehicle _target)) < 1 && (getPosATL _target) select 2 < 2"]] remoteExec ["addAction", 0, true];

_handle = [] execVM "core\server\scenario\lureOutLuitenantScenario.sqf";
waitUntil { isNull _handle };