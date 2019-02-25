local _, ns = ...
local C = ns.C

C["uf"] = {
	enabled = true,
	hidePlayerFrameOoc = false,

	-- Setting emulatePersonalResourceDisplay to true will ignore the player frame position,
	-- instead, anchoring the player frame to the Personal Resource Display
	emulatePersonalResourceDisplay = false,

	-- Spacing between icons like combo points, arcane orbs, soul shards, etc.
	classIconSpacing = 4
}

C["uf"].size = {
	primary = {
		width = 200,
		health = 40,
		power = 10,
	},
	secondary = {
		width = 135,
		health = 12,
		power = 3,
	},
	tertiary = {
		width = 56,
		health = 7,
	},
	raid = {
		width = 60,
		health = 12
	}
}

C["uf"].positions = {
	Player = { "TOPRIGHT", "sInterfaceActionBar3", "TOPLEFT", -10, 0 }, -- Unused if emulatePersonalResourceDisplay is set
	Target = { "TOPLEFT", "sInterfaceActionBar3", "TOPRIGHT", 78, 0 },
	Targettarget = { "TOPLEFT", "oUF_sInterfaceTarget", "TOPRIGHT", 7, 0 },
	Focus = { "TOPLEFT", "oUF_sInterfacePlayer", "TOPRIGHT", 56, -100 },
	Focustarget = { "TOPLEFT", "oUF_sInterfaceFocus", "TOPRIGHT", 7, 0 },
	Pet = { "TOPLEFT", "oUF_sInterfacePlayer", "TOPRIGHT", 5, 0 },
	Boss = { "BOTTOMLEFT", "oUF_sInterfaceTarget", "TOPRIGHT", 300, 250 },
	Tank = { "BOTTOMRIGHT", "oUF_sInterfacePlayer", "TOPLEFT", -350, 150 },
	Raid = { "TOPLEFT", UIParent, "TOPLEFT", 20, -20 },
	Party = { "BOTTOMRIGHT", "oUF_sInterfacePlayer", "TOPLEFT", -350, 150 },
	Arena = { "BOTTOMLEFT", "oUF_sInterfaceTarget", "TOPRIGHT", 225, 150 },
}

C["uf"].aura = {
	player = {
		enable = true,
		mode = "buff",
		size = 24
	},
	target = {
		enable = true,
		mode = "aura",
		size = 18
	},
	party = {
		enable = false,
		mode = "aura",
		size = 18
	},
	focus = {
		enable = true,
		mode = "aura",
		size = 18
	},
	tank = {
		enable = true,
		mode = "debuff",
		size = 30
	},
	boss = {
		enable = false,
		mode = "debuff",
		size = 24
	}
}

C["uf"].buffs = {
	["Sudden Doom"] = true,
	["Dark Succor"] = true,

	["Victorious"] = true,
	["Sharpen Blade"] = true,
	["Crushing Assault"] = true
}
