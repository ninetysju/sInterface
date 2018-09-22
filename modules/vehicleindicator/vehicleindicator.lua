local _, ns = ...
local C = ns.C

if not C.tooltips.enabled then return end

local function VehicleSeatIndicator_SetPosition(_,_, parent)
	if (parent == "MinimapCluster") or (parent == _G["MinimapCluster"]) then
		VehicleSeatIndicator:ClearAllPoints()

		VehicleSeatIndicator:SetPoint("TOPRIGHT", ObjectiveTrackerBlocksFrame, "TOPLEFT", -30, 0)

		VehicleSeatIndicator:SetScale(0.7)
	end
end
hooksecurefunc(VehicleSeatIndicator,"SetPoint", VehicleSeatIndicator_SetPosition)

ObjectiveTrackerBlocksFrame:HookScript("OnHide", function()
	VehicleSeatIndicator:SetPoint("TOPRIGHT", sInterfaceProgressBars, "BOTTOMRIGHT", 0, -30)
end)

ObjectiveTrackerBlocksFrame:HookScript("OnShow", function()
	VehicleSeatIndicator:SetPoint("TOPRIGHT", ObjectiveTrackerBlocksFrame, "TOPLEFT", -30, 0)
end)