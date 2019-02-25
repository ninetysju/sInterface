local _, ns = ...
local C = ns.C

C["coolbar"] = {
	enabled = true,
	width = 500,
	height = 20,
	oocTransparency = 0.3,
	pos = { "TOP", "sInterfaceActionBar1", "BOTTOM", 34, -20 },
	disabled = {
		[GetItemInfo(6948) or "Hearthstone"] = true,
		[GetItemInfo(110560) or "Garrison Hearthstone"] = true,
	}
}
