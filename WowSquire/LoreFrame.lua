-- Main actor for the target frame button and the Lore panel
local function moveShowButton()
	button_loreshow:Show()
	button_loreshow:ClearAllPoints()
	button_loreshow:SetPoint("BOTTOMLEFT",TargetFrame, "TOPRIGHT",-25,-25);
end

local function buildLorePanel()
	local val = WSutils.getID(UnitGUID("target"))
	local tabledata = DataHandler.checkExists(val)
	text_loretext:SetText(tostring(tabledata[2]))
	text_loredetail:SetText(tostring(tabledata[4]))
end
Loreframe = {
onTargetChange = function(self, event)
	-- Not a fan of the nested IF, see point 1. in docs for why its like this
	if UnitExists("target") then
		if UnitIsPlayer("target") then
			button_loreshow:Hide()
		else
			buildLorePanel()
			moveShowButton()
			-- TODO: make responsive to different resolutions
		end
	else
		button_loreshow:Hide()
	end
end,
hidePannel = function (self, event)
	panel_lore:Hide()
	
end,
showPannel = function (self, event)
   panel_lore:Show()
end,
panelResizeStart = function (self, event)
	print("sizing start")
	--panel_lore:StartSizing("BOTTOMLEFT")
	
end,
panelResizeStop = function (self, event)
	print("sizing stop")
	panel_lore:StopMovingOrSizing()
	button_lorehide:StopMovingOrSizing()
end,
onLogin = function ()
	button_loreshow:Hide()
	button_loreshow:RegisterEvent("PLAYER_TARGET_CHANGED")
	button_loreshow:SetScript("OnEvent",Loreframe.onTargetChange)
	button_loreshow:SetScript("OnClick",Loreframe.showPannel)
	button_lorehide:SetScript("OnClick",Loreframe.hidePannel)
	button_lorehide:SetMovable(true)
	panel_lore:RegisterForDrag("LeftButton")
	panel_lore:EnableMouse(true)
	panel_lore:SetResizable(true)
	--panel_lore:SetMinResize(300,200)
	--panel_lore:SetMaxResize(800,500)
	panel_lore:SetScript("OnDragStart", Loreframe.panelResizeStart)
	panel_lore:SetScript("OnDragStop", Loreframe.panelResizeStop)
	
end
}
