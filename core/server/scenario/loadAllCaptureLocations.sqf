if(!isDedicated) exitWith {};

{
	_sectorCheck = toArray _x;
	_sectorCheck resize 3;

	[["_sectorCheck: %1", _sectorCheck]] call MCSHR_fnc_mcLog;

	if ( toString _sectorCheck == "sec" ) then {
		_currentMarker = toArray _x;
		_currentMarker resize 8;
		_captureObjectType = [toString _currentMarker] call MCSRV_fnc_getCaptureObjectTypeForSector;

		[["_captureObjectType: [%1]", _captureObjectType]] call MCSHR_fnc_mcLog;

		_markerType = [toString _currentMarker] call MCSRV_fnc_getIconTypeForSector;

		[["_markerType: [%1]", _markerType]] call MCSHR_fnc_mcLog;

		_defaultActivationRange = ["StrategicLocationActivationRange"] call BIS_fnc_getParamValue;
		_garrisson = ["o_soldier_universal_f","o_soldier_universal_f","o_soldier_universal_f","o_soldier_universal_f","o_soldier_universal_f"];
		_objective = [_x, _garrisson, 100, _defaultActivationRange, _captureObjectType, _markerType] call MCSRV_fnc_createStrategicLocation;
		CAPTURE_LOCATIONS pushBack _objective;
	};
} foreach allMapMarkers;
