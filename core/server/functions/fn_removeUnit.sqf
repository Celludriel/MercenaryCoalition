if(!isDedicated) exitWith {};

params["_unit"];

if(vehicle _unit != _unit)then {
	_veh = vehicle _unit;
	{
		_x assignAsDriver _veh;
		unassignVehicle _x;
		moveOut _x;
		_x setPos [0,0,0];
		deleteVehicle _x;
	} forEach crew _veh;
	deleteVehicle _veh;
}
else {
	deleteVehicle _unit;
};