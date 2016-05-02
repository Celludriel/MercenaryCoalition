if(!hasinterface) exitWith {};

params ["_origin", "_target"];

[_origin, _target] remoteExec ["MCSRV_fnc_moveInventory", 0, true];