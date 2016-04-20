if(!isDedicated) exitWith {};

params ["_alertLevel"];
private ["_retValue"];

_retValue = [];
{
	if((_x select 0) == _alertLevel) exitWith {
		_retValue = _x select 1;
	};
} forEach ENEMY_GEAR_LOADOUTS;

_retValue