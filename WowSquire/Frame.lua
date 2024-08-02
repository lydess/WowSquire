




eyebutton:RegisterEvent("PLAYER_TARGET_CHANGED")

local function down(self,event)
	Home:Hide()
	print("rags")
end
local function whoisDown(self, event)
	print("working")
	Home:Show()
	Home:SetResizable(true)
	

end




-- Main actor for the target frame button

-- Not a fan of the nested IF, see point 1. in docs for why its like this
local function targetChangeResponce(self, event)
	if UnitExists("target") then
		if getIsPlayer() then
		else
			local currentFrameLoc = TargetFrame:GetCenter()
			local val = UnitGUID("target")
			-- TODO: make responsive to different resolutions
			eyebutton:Show()
			eyebutton:ClearAllPoints()
			eyebutton:SetPoint("BOTTOMLEFT",TargetFrame, "TOPRIGHT",-25,-25);
			print(getID(val))
		end
		
	else
		eyebutton:Hide()
		
	end


	
	
end

eyebutton:SetScript("OnEvent",targetChangeResponce)
eyebutton:SetScript("OnClick",whoisDown)
button_HIDE:SetScript("OnClick", down)