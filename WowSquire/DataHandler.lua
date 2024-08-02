-- placeholder method for text file that will be generated after the DB solution is fully worked out
local function iterateIDs(table, givenid)
	for i,v in ipairs(table) do
	print(v[2])
		if v[2] == givenid then
			print("its them!")
			return table[i]
		else
			print("its not them")
		end

	end
end


DataHandler = {
checkExists = function(id)
	return iterateIDs(wowsquiredata, id)
end
}