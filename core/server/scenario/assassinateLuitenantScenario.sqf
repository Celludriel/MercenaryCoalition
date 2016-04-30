if(!isDedicated) exitWith {};

private ["_luitenant"];

// spawn a luitenant base somewhere with luitenant
_luitenant = [] call MCSRV_fnc_spawnLuitenantBase;

// create assassinate luitenant task
[
	west,
	["ASS_LT_TASK", "GLO_TASK"],
	["Assassinate the dictators luitenant weakening his grip on the island", "Assassinate luitenant", ""],
	getPos _luitenant,
	true,
	2,
	true,
	"Kill",
	true
] call BIS_fnc_taskCreate;

waitUntil {
	sleep 5;
	!(alive _luitenant)
};

// finish task
["ASS_LT_TASK", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;

if(NR_LUITENANTS_LEFT > 0) then {
	_handle = [] execVM "core\server\scenario\lureOutLuitenantScenario.sqf";
	waitUntil { isNull _handle };
} else {
	_handle = [] execVM "core\server\scenario\assassinateDictatorScenario.sqf";
	waitUntil { isNull _handle };
};