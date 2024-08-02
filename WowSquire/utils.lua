-- convert GUID to NPC dataabase ID and returns as number

WSutils = {
getID = function (input)
   	local parts = {}
    for part in string.gmatch(input, "([^%-]+)") do
        table.insert(parts, part)
    end
	return tonumber(parts[6])
end
}
