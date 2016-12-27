class MCLaptopMenu {
	idd = 1900;
	movingEnable = false;
	enableSimulation = 1;
	onLoad = "";
	onUnload = "";
	controlsBackground[] = { "MenuContainer", "BlackMarketButton", "GarageButton", "BuyRespawnTentButton", "SectorManagerButton"};

	class MenuContainer: MCIGUIBack {
		idc = 2200;
		x = 0.304062 * safezoneW + safezoneX;
		y = 0.247 * safezoneH + safezoneY;
		w = 0.397031 * safezoneW;
		h = 0.396 * safezoneH;
	};

	class BlackMarketButton: MCRscButton {
		idc = 1600;
		text = "Black Market"; //--- ToDo: Localize;
		x = 0.391719 * safezoneW + safezoneX;
		y = 0.324 * safezoneH + safezoneY;
		w = 0.0567187 * safezoneW;
		h = 0.055 * safezoneH;
	};

	class GarageButton: MCRscButton {
		idc = 1601;
		text = "Garage"; //--- ToDo: Localize;
		x = 0.54125 * safezoneW + safezoneX;
		y = 0.324 * safezoneH + safezoneY;
		w = 0.0567187 * safezoneW;
		h = 0.055 * safezoneH;
	};

	class BuyRespawnTentButton: MCRscButton {
		idc = 1602;
		text = "Buy Respawn Tent"; //--- ToDo: Localize;
		x = 0.391719 * safezoneW + safezoneX;
		y = 0.401 * safezoneH + safezoneY;
		w = 0.20625 * safezoneW;
		h = 0.055 * safezoneH;
		action = "[] call MCGUI_fnc_buyRespawnTent;";
	};

	class SectorManagerButton: MCRscButton {
		idc = 1603;
		text = "Sector Manager"; //--- ToDo: Localize;
		x = 0.391719 * safezoneW + safezoneX;
		y = 0.489 * safezoneH + safezoneY;
		w = 0.20625 * safezoneW;
		h = 0.055 * safezoneH;
	};
};