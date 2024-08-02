
local f = CreateFrame("Frame")
local function onload()
	print("hello player")
	button_loreshow:RegisterEvent("PLAYER_TARGET_CHANGED")
	button_loreshow:SetScript("OnEvent",targetChangeResponce)
	button_loreshow:SetScript("OnClick",showDown)
	button_lorehide:SetScript("OnClick",hideDown)
end
f:RegisterEvent("PLAYER_ENTERING_WORLD")
f:SetScript("OnEvent", onload)