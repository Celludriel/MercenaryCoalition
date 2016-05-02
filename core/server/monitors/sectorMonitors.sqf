if(!isDedicated) exitWith {};

while { true } do {
	sleep SECTOR_ACTIVATION_TIMER;

	{
		[_x] execVm "core\server\monitors\factoryIncomeMonitor.sqf";
	} forEach CAPTURE_LOCATIONS;
};