if(!isDedicated) exitWith {};

params ["_sectorType"];

_icon = "n_art";
{
	if(_x select 0 == _sectorType) then {
		_icon = _x select 1;
	};
} forEach SECTOR_ICON_TYPES;

_icon