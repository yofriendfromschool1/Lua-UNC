getgenv().getscripts = function()
	local stuff = game:GetDescendants()
	local scripts = {}
	for i, v in pairs(stuff) do
		if v:IsA("ModuleScript") or v:IsA("LocalScript") then
			table.insert(scripts,v)
		end
	end
end