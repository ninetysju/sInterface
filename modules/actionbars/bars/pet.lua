local _, ns = ...
local C = ns.C

if not C.actionbars.enabled then return end

local NUM_PET_ACTION_SLOTS = NUM_PET_ACTION_SLOTS
local BUTTON_SPACING = 6
local BUTTON_SIZE = PetActionButton1:GetHeight()

local petbar = ns.sInterfaceBars.petbar

petbar:SetSize((BUTTON_SIZE * NUM_PET_ACTION_SLOTS) + (BUTTON_SPACING * (NUM_PET_ACTION_SLOTS-1)), BUTTON_SIZE)
petbar:SetScale(C.actionbars.scale)
petbar:SetPoint(unpack(C.actionbars.petbar.position))

PetActionBarFrame:SetParent(petbar)
for i = 1, NUM_PET_ACTION_SLOTS do
	local button = _G["PetActionButton"..i]

	button:ClearAllPoints()
	if i == 1 then
		button:SetPoint("TOPLEFT", petbar, "TOPLEFT")
		button:SetPoint("BOTTOMLEFT", petbar, "BOTTOMLEFT")
	else
		button:SetPoint("TOPLEFT", _G["PetActionButton"..i-1], "TOPRIGHT", BUTTON_SPACING, 0)
	end
end

if C.actionbars.petbar.two_rows then
	local half = NUM_PET_ACTION_SLOTS/2
	local newLineButton = _G["PetActionButton"..half+1]
	local oldLineButton = _G["PetActionButton1"]
	newLineButton:SetPoint("TOPLEFT", oldLineButton, "BOTTOMLEFT", 0, -BUTTON_SPACING)
end

RegisterStateDriver(petbar, "visibility", C.actionbars.petbar.visibility or "show")
