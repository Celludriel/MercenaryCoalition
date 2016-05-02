if(!isDedicated) exitWith {};

SAVEGAME_NAME = "MercenaryCoalitionSave";

TASK_ORDER = 1;
ALERT_LEVEL = 0;
NR_LUITENANTS_LEFT = 2;
MAX_TIME_OF_WEST_OUT_OF_RANGE_BEFORE_GARRISON = 300;
CAPTURE_TIME = 30;

CAPTURE_LOCATIONS = [];
SECTOR_ICON_TYPES = [["sec_town", "n_art"],["sec_fuel", "loc_Fuelstation"],["sec_base", "o_uav"],["sec_towr", "loc_Transmitter"]];
SECTOR_CAPTUREOBJECT_TYPES = [["sec_town", "Flag_Green_F"],["sec_fuel", "Flag_Green_F"],["sec_base", "Flag_Green_F"],["sec_towr", "Land_TTowerBig_1_F"]];
SECTOR_ACTIVATION_TIMER = 600;

MISSION_FUNDS = 10000;
NEGATIVE_BALANCE_WARNING = -5000;
NEGATIVE_BALANCE_LOSS = -15000;
INCOME_PRO_WORKER = 250;

[
	west,
	"GLO_TASK",
	["Find and eliminate the dictator's luitenants to lure him out of hiding", "Find and eliminate the dicatator", ""],
	objNull,
	false,
	TASK_ORDER,
	false,
	"Default",
	true
] call BIS_fnc_taskCreate;

[] execVM "core\server\monitors\sectorMonitors.sqf";

_handle = [] execVM "core\configuration\enemyGearLoadouts.sqf";
waitUntil { isNull _handle };

_handle = [] execVM "core\server\scenario\loadAllCaptureLocations.sqf";
waitUntil { isNull _handle };

_handle = [] execVM "core\server\scenario\initialInsertionScenario.sqf";
waitUntil { isNull _handle };