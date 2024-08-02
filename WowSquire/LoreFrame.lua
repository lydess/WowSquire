

local function hideDown(self,event)
	panel_lore:Hide()
end

local function showDown(self,event)
	panel_lore:Show()
end

-- Main actor for the target frame button

-- Not a fan of the nested IF, see point 1. in docs for why its like this
local function targetChangeResponce(self, event)
	if UnitExists("target") then
		if UnitIsPlayer("target") then
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


	
	
end

button_loreshow:RegisterEvent("PLAYER_TARGET_CHANGED")
button_loreshow:SetScript("OnEvent",targetChangeResponce)
button_loreshow:SetScript("OnClick",showDown)
button_lorehide:SetScript("OnClick",hideDown)
