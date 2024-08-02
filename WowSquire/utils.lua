-- convert GUID to NPC dataabase ID

WSutils = {
getID = function (input)
   	local parts = {}
    for part in string.gmatch(input, "([^%-]+)") do
        table.insert(parts, part)
    end
	return parts[6]
end
}
