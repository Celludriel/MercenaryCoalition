/*
	_content:
		GROUP: for garrisoning an existing group of units
		ARRAY: for setting a garrison of non existing units (array of classnames)
*/
if(!isDedicated) exitWith {};

params ["_content", "_container"];

_garrison = _container getVariable ["garrison", []];

if(typeName _content == "GROUP" ) then {
	{
		_garrison pushBack (typeOf _x);
		[_x] call MCSRV_fnc_removeUnit;
	} forEach units _content;
	deleteGroup _content;
};

if(typeName _content == "ARRAY" ) then {
	{
		_garrison pushBack _x;
	} forEach _content;
};

_container setVariable ["garrison", _garrison, false];