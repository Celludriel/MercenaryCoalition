if(!isDedicated) exitWith {};

{
	_sectorCheck = toArray _x;
	_sectorCheck resize 3;

	[["_sectorCheck: %1", _sectorCheck]] call MCSHR_fnc_mcLog;

	if ( toString _sectorCheck == "sec" ) then {
		_currentMarker = toArray _x;
		_currentMarker resize 8;
		_markerType = [toString _currentMarker] call MCSRV_fnc_getIconTypeForSector;
		_captureObjectType = [toString _currentMarker] call MCSRV_fnc_getCaptureObjectTypeForSector;

		_objective = [_x, ["o_soldier_universal_f","o_soldier_universal_f","o_soldier_universal_f","o_soldier_universal_f","o_soldier_universal_f"], 100, _captureObjectType, _markerType] call MCSRV_fnc_createStrategicLocation;
		CAPTURE_LOCATIONS pushBack _objective;
	};
} foreach allMapMarkers;
