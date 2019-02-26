local _, ns = ...
local C = ns.C

C["actionbars"] = {
	enabled = true,
	scale = 0.9,

	bar1 = { -- sInterfaceActionBar1
		position = { "BOTTOM", UIParent, "BOTTOM", 0, 200},
		visibility = "show",
		two_rows = false,
	},

	bar2 = { --sInterfaceActionBar2
		position = { "TOPLEFT", "sInterfaceActionBar4", "BOTTOMLEFT", 0, -20},
		visibility = "[modifier:ctrl, modifier:alt, modifier:shift][cursor] show; hide",
		two_rows = false,
		enabled = true,
	},

	bar3 = { --sInterfaceActionBar3
		position = { "BOTTOMLEFT", "sInterfaceActionBar1", "TOPLEFT", 0, 6},
		visibility = "show",
		two_rows = false,
		enabled = true,
	},

	bar4 = { --sInterfaceActionBar4
		position = { "TOPLEFT", "sInterfaceActionBar1", "BOTTOMLEFT", 0, -20},
		visibility = "[modifier:ctrl, modifier:alt, modifier:shift][cursor] show; hide",
		two_rows = false,
		enabled = true,
	},

	bar5 = { --sInterfaceActionBar5
		position = { "BOTTOM", UIParent, "BOTTOM", 8, 8},
		visibility = "show",
		two_rows = false,
		enabled = true,
		scale = 0.8,
	},

	possessbar = { --sInterfacePossessBar
		position = { "BOTTOMLEFT", "ChatFrame1", "TOPLEFT", 0, 100},
		visibility = "[possessbar] show; hide",
	},

	petbar = { --sInterfacePetBar
		position = { "TOPLEFT", "sInterfaceActionBar5", "BOTTOMLEFT", 0, -20},
		visibility = "[petbattle][overridebar][vehicleui][possessbar,@vehicle,exists] hide; [modifier:ctrl,modifier:alt,modifier:shift,@pet,exists][cursor,@pet,exists] show; hide",
		two_rows = true
	},

	stancebar = { --sInterfaceStanceBar
		position = { "TOPLEFT", "sInterfacePetBar", "BOTTOMLEFT", 0, -20},
		visibility = "show",
	},

	overridebar = { --sInterfaceOverrideBar
		position = { "BOTTOM", UIParent, "BOTTOM", 0, C.general.edgeSpacing*3},
		visibility = "[overridebar][vehicleui][possessbar,@vehicle,exists] show; hide"
	},

	vehicleexit = {
		position = {"TOPLEFT", "sInterfaceOverrideBar", "TOPRIGHT", 6, 0},
		visibility = "[overridebar][vehicleui][possessbar,@vehicle,exists] show; hide"
	},

	extrabar = { --sInterfaceExtraBar
		position = { "BOTTOM", UIParent, "BOTTOM", 0, C.general.edgeSpacing*6},
		visibility = "show"
	},

	bags = { --sInterfaceBagsBar
		position = { "TOPLEFT", "sInterfaceMicromenu", "TOPRIGHT", 0, 0},
		visibility = "[modifier:ctrl, modifier:alt, modifier:shift] show; hide",
		show_all = false
	},

	micromenu = { --sInterfaceMicromenu
		position = { "TOP", UIParent, "TOP", 0, -C.general.edgeSpacing},
		visibility = "[modifier:ctrl, modifier:alt, modifier:shift] show; hide",
		two_rows = true
	},
}
