class CoreOptionsTitle {
	title = $STR_PARAMS_CORE_OPTIONS;
	values[] = { "" };
	texts[] = { "" };
	default = "";
};

class ClearSave {
	title = $STR_PARAMS_CLEAR_SAVE;
	values[] = {1,0};
	texts[] = { $STR_OPTION_YES, $STR_OPTION_NO };
	default = 0;
};

class StrategicLocationActivationRange {
	title = $STR_PARAMS_STRATEGIC_LOCATION_ACTIVATION_RANGE;
	values[] = {250, 500, 1000};
	texts[] = { "250m", "500m", "1000m" };
	default = 250;
};