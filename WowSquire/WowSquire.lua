-- temporary frame at startup to run INIT commands off of
local f = CreateFrame("Frame")
local function onload()
	print("Im gay and alive!")

end
f:RegisterEvent("PLAYER_ENTERING_WORLD")
f:SetScript("OnEvent", onload)
-- run init commands for each frame
Loreframe.onLogin()