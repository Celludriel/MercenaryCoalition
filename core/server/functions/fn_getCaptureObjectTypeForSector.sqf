if(!isDedicated) exitWith {};

params ["_sectorType"];

_type = "Flag_Green_F";
{
	if(_x select 0 == _sectorType) then {
		_type = _x select 1;
	};
} forEach SECTOR_CAPTUREOBJECT_TYPES;

_type