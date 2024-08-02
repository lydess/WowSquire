-- placeholder method for text file that will be generated after the DB solution is fully worked out
local function iterateIDs(table, givenid)
	for i,v in ipairs(table) do
		if v[1] == givenid then
			return table[i]
		else
		end

	end
end


DataHandler = {
checkExists = function(id)
	return iterateIDs(wowsquiredata, id)
end
}