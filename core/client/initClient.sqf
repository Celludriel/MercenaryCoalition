if(hasInterface) then {
	waitUntil { !isNull player };

	if(DEBUG_ENABLED) then {
		//load all debug tools
		call compileFinal preprocessFileLineNumbers "core\client\debug\initDebugTools.sqf";
	};

	["core\client\scripts\generalPlayerRespawn.sqf"] call MCCLN_fnc_addRespawnScript;

	//add all Respawn handlers to the player
	{
		[["Adding Respawn handler: %1", _x]] call MCSHR_fnc_mcLog;
  		player addEventhandler ["Respawn", "_this execVM '" + _x + "'"];
	} foreach RESPAWN_SCRIPTS;
};