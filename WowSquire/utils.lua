-- test

function GetRecordExists(mer)
	print("testfunc")
end
-- convert GUID to NPC dataabase ID
function getID(input)
	local parts = {}
    for part in string.gmatch(input, "([^%-]+)") do
        table.insert(parts, part)
    end
	return parts[6]
	
end