class GarageContainer: MCIGUIBack
{
	idc = 2201;
	x = 0.304062 * safezoneW + safezoneX;
	y = 0.247 * safezoneH + safezoneY;
	w = 0.397031 * safezoneW;
	h = 0.396 * safezoneH;
};

class BlackMarketMissionFundsLabel: MCRscText
{
	idc = 1001;
	text = "Mission Funds"; //--- ToDo: Localize;
	x = 0.448438 * safezoneW + safezoneX;
	y = 0.269 * safezoneH + safezoneY;
	w = 0.0979687 * safezoneW;
	h = 0.033 * safezoneH;
};

class BlackMarketAvailableStockListBox: MCRscListbox
{
	idc = 1501;
	x = 0.345312 * safezoneW + safezoneX;
	y = 0.313 * safezoneH + safezoneY;
	w = 0.319688 * safezoneW;
	h = 0.099 * safezoneH;
};

class AddToOrderButton: MCRscButton
{
	idc = 1604;
	text = "Add"; //--- ToDo: Localize;
	x = 0.474219 * safezoneW + safezoneX;
	y = 0.423 * safezoneH + safezoneY;
	w = 0.04125 * safezoneW;
	h = 0.022 * safezoneH;
};

class BlackMarketShoppingCartListBox: MCRscListbox
{
	idc = 1502;
	x = 0.345313 * safezoneW + safezoneX;
	y = 0.456 * safezoneH + safezoneY;
	w = 0.319688 * safezoneW;
	h = 0.099 * safezoneH;
};

class RemoveFromShoppingCartButton: MCRscButton
{
	idc = 1605;
	text = "Remove"; //--- ToDo: Localize;
	x = 0.474219 * safezoneW + safezoneX;
	y = 0.566 * safezoneH + safezoneY;
	w = 0.04125 * safezoneW;
	h = 0.022 * safezoneH;
};

class BlackMarketOrderButton: MCRscButton
{
	idc = 1606;
	text = "Order"; //--- ToDo: Localize;
	x = 0.510312 * safezoneW + safezoneX;
	y = 0.599 * safezoneH + safezoneY;
	w = 0.04125 * safezoneW;
	h = 0.022 * safezoneH;
};

class BlackMarketBackToMenuButton: MCRscButton
{
	idc = 1607;
	text = "Back"; //--- ToDo: Localize;
	x = 0.443281 * safezoneW + safezoneX;
	y = 0.599 * safezoneH + safezoneY;
	w = 0.04125 * safezoneW;
	h = 0.022 * safezoneH;
};