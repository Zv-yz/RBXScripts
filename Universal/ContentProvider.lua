--> 
local old; old = hookmetamethod(game, "__namecall", function(self, ...)
	if getnamecallmethod() == "PreloadAsync" then
		return
	end    
	return old(self, ...)    
end)
local old2; old2 = hookfunction(setmetatable, function(tb, methods, ...)
	if methods["__mode"] then methods["__mode"] = nil end
	return old2(tb, methods, ...)    
end)