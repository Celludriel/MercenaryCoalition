if(!isDedicated) exitWith {};

private ["_luitenant"];

// spawn a luitenant base somewhere with luitenant
_luitenant = [] call MCSRV_fnc_spawnLuitenantBase;

// create assassinate luitenant task
TASK_ORDER = TASK_ORDER + 1;
[
	west,
	[format ["ASS_LT_TASK_%1", NR_LUITENANTS_LEFT], "GLO_TASK"],
	["Assassinate the dictators luitenant weakening his grip on the island", "Assassinate luitenant", ""],
	getPos _luitenant,
	true,
	TASK_ORDER,
	true,
	"Kill",
	true
] call BIS_fnc_taskCreate;

waitUntil {
	sleep 5;
	!(alive _luitenant)
};

// finish task
[format ["ASS_LT_TASK_%1", NR_LUITENANTS_LEFT], "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
NR_LUITENANTS_LEFT = NR_LUITENANTS_LEFT - 1;

sleep 5;

if(NR_LUITENANTS_LEFT > 0) then {
	_handle = [] execVM "core\server\scenario\lureOutLuitenantScenario.sqf";
	waitUntil { isNull _handle };
} else {
	_handle = [] execVM "core\server\scenario\assassinateDictatorScenario.sqf";
	waitUntil { isNull _handle };
};