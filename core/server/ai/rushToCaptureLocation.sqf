if(!isDedicated) exitWith {};

params ["_captureLocationObject"];

_location = getPos _captureLocationObject;
_currentActiveGroup = _captureLocationObject getVariable ["activeGroup", objNull];

if(!isNull _currentActiveGroup) then {
	{
		_lastOrder = _x getVariable ["lastOrder", "patrol"];
		if(_lastOrder != "rushToCaptureLocation") then {
			[["Executing rushToCaptureLocation [%1]", _x]]call MCSHR_fnc_mcLog;
			_x doMove _location;
			_x setBehaviour "COMBAT";
			_x setSpeedMode "FULL";
			_x setVariable ["lastOrder", "rushToCaptureLocation"];
		};
	} foreach units _currentActiveGroup;
};