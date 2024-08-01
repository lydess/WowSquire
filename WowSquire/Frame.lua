




eyebutton:RegisterEvent("PLAYER_TARGET_CHANGED")

local function down(self,event)
	Home:Hide()
	print("rags")
end
local function whoisDown(self, event)
	print("working")
	Home:Show()
	

end


local function eyeMove(self, event)
	if UnitExists("target") then
		local currentFrameLoc = TargetFrame:GetCenter()
		eyebutton:Show()
		eyebutton:ClearAllPoints()
		-- TODO: make responsive to different resolutions
		eyebutton:SetPoint("BOTTOMLEFT",TargetFrame, "TOPRIGHT",-25,-25);
		print("yes")
	else
		eyebutton:Hide()
		
	end

	
	
end

eyebutton:SetScript("OnEvent",eyeMove)
eyebutton:SetScript("OnClick",whoisDown)
button_HIDE:SetScript("OnClick", down)