local _, ns = ...
local C = ns.C

C["coolbar"] = {
	enabled = true,
	width = 450,
	height = 20,
	oocTransparency = 0.3,
	pos = { "CENTER", "sInterfaceActionBar1", "CENTER", 30, -40 },
	disabled = {
		[GetItemInfo(6948) or "Hearthstone"] = true,
		[GetItemInfo(110560) or "Garrison Hearthstone"] = true,
	}
}
