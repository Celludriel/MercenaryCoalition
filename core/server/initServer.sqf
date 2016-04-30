if(!isDedicated) exitWith {};

ALERT_LEVEL = 0;
CAPTURE_TIME = 30;
CAPTURE_LOCATIONS = [];
SECTOR_ICON_TYPES = [["sec_town", "n_art"],["sec_fuel", "loc_Fuelstation"],["sec_base", "o_uav"],["sec_towr", "loc_Transmitter"]];
SECTOR_CAPTUREOBJECT_TYPES = [["sec_town", "Flag_Green_F"],["sec_fuel", "Flag_Green_F"],["sec_base", "Flag_Green_F"],["sec_towr", "Land_TTowerBig_1_F"]];

_handle = [] execVM "core\configuration\enemyGearLoadouts.sqf";
waitUntil { isNull _handle };

_handle = [] execVM "core\server\scenario\loadAllCaptureLocations.sqf";
waitUntil { isNull _handle };

_handle = [] execVM "core\server\scenario\initialInsertionScenario.sqf";
waitUntil { isNull _handle };

[
	west,
	["GLO_TASK"],
	["Find and eliminate the dictator's luitenants to lure him out of hiding", "Find and eliminate the dicatator", ""],
	objNull,
	false,
	1,
	true,
	"Default",
	true
] call BIS_fnc_taskCreate