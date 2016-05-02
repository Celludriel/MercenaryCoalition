if(!isDedicated) exitWith {};

params [["_deposit", 0]];

MISSION_FUNDS = MISSION_FUNDS + _deposit;

[MISSION_FUNDS] remoteExec ["MCCLN_fnc_updateMissionFundsIndicator", -2, true];