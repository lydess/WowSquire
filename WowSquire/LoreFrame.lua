-- Main actor for the target frame button and the Lore panel
local function ChangeText()

end
Loreframe = {
onTargetChange = function(self, event)
	-- Not a fan of the nested IF, see point 1. in docs for why its like this
	if UnitExists("target") then
		if UnitIsPlayer("target") then
			button_loreshow:Hide()
		else
			local val = UnitGUID("target")
			-- TODO: make responsive to different resolutions
			button_loreshow:Show()
			button_loreshow:ClearAllPoints()
			button_loreshow:SetPoint("BOTTOMLEFT",TargetFrame, "TOPRIGHT",-25,-25);
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
onLogin = function ()
   button_loreshow:Hide()
	button_loreshow:RegisterEvent("PLAYER_TARGET_CHANGED")
	button_loreshow:SetScript("OnEvent",Loreframe.onTargetChange)
	button_loreshow:SetScript("OnClick",Loreframe.showPannel)
	button_lorehide:SetScript("OnClick",Loreframe.hidePannel)
	
end
}

