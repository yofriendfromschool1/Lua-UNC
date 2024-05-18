getgenv().cloneref = function(a)
	local s, _ = pcall(function() return a:Clone() end) return s and _ or a
end
