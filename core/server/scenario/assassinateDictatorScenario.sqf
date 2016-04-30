if(!isDedicated) exitWith {};

// spawn dictator with protection force
_dictator = [] call MCSRV_fnc_spawnDictatorBase;

// create assassinate dictator task
[
	west,
	["ASS_DTR_TASK", "GLO_TASK"],
	["Assassinate the dictator liberating the island", "Assassinate dictator", ""],
	getPos _dictator,
	true,
	2,
	true,
	"Kill",
	true
] call BIS_fnc_taskCreate;

waitUntil {
	sleep 5;
	!(alive _dictator)
};

// finish task
["ASS_DTR_TASK", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;

// finish global task
["GLO_TASK", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;

sleep 5;

//clear the savegame so next mission will start clean
profileNamespace setVariable [SAVEGAME_NAME, nil];
saveProfileNamespace;
//end the mission
"end1" call BIS_fnc_endMissionServer;