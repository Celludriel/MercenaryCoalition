if(!isDedicated) exitWith {};

params ["_captureLocationObject"];

_currentActiveGroup = _captureLocationObject getVariable ["activeGroup", objNull];

if(!isNull _currentActiveGroup) then {
	[["Executing spreadOut from [%1]", _captureLocationObject]]call MCSHR_fnc_mcLog;
	_maxSpawnRange = _captureLocationObject getVariable ["maxSpawnRange", 250];
	{
		_randomLocation = [_captureLocationObject, floor(random _maxSpawnRange)] call ShkPos_fnc_executeFindPosition;
		_x doMove _randomLocation;
		_x setBehaviour "AWARE";
		_x setSpeedMode "NORMAL";
		_x setVariable ["lastOrder", "spreadOut"];
		[["Monitoring spreadOutResumePatrol for [%1]", _x]]call MCSHR_fnc_mcLog;
		[_x, _randomLocation, _captureLocationObject, _maxSpawnRange] execVm "core\server\ai\spreadOutResumePatrol.sqf";
	} foreach units _currentActiveGroup;
};