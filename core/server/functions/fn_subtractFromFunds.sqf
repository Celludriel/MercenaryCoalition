if(!isDedicated) exitWith {};

params [["_withDrawel", 0]];

MISSION_FUNDS = MISSION_FUNDS - _withDrawel;

[MISSION_FUNDS] remoteExec ["MCCLN_fnc_updateMissionFundsIndicator", -2, true];

if(MISSION_FUNDS <= NEGATIVE_BALANCE_WARNING) then {
	// hint to players the negative balance warning is reached
	[format ["Soon we will be out of money to continue the liberation, the banks will only loan us so much !  When we hit %1 all will be lost !", NEGATIVE_BALANCE_LOSS]]remoteExec ["MCSHR_fnc_globalHint", 0, false];
};

if(MISSION_FUNDS <= NEGATIVE_BALANCE_LOSS) then {
	//clear the savegame so next mission will start clean
	profileNamespace setVariable [SAVEGAME_NAME, nil];
	saveProfileNamespace;
	//end the mission in loss
	"Lost" call BIS_fnc_endMissionServer;
};