getgenv().cloneref = function(...)
	local objs = table.pack(...)
	local res = {}
	local function clone(obj)
		if typeof(obj) == "table" then
			local copy = {}
			for i,v in pairs(obj) do
				copy[i] = v
			end
			return copy
		elseif typeof(obj) == "Instance" then
			if obj ~= game.TweenService then
				print(obj,"is not a valid member to be cloned.")
				return obj
			else
				local metaInstances = {}
				local function table_find(t,v)
					return (table.find(t,v) or t[v]) ~= nil
				end
				local function convertToMetaInstance(object,options)
					if object == game:GetService("TweenService") then return object end

					local options = options or {}
					local customMethods = options.CustomMethods or {}
					local blockMethods = options.BlockMethods or {}
					local metaInstance

					local dest = {customMethods.destroy, customMethods.Destroy}
					customMethods.destroy = function()
						for _,v in pairs(dest) do
							if v then
								v()
							end
						end
						if not object then
							local c = {}
							for i,v in pairs(metaInstances) do
								if i == metaInstance or not v then continue end
								c[i] = v
							end
							metaInstances = c
							c = nil
						else
							object:Destroy()
						end
					end
					customMethods.Destroy = customMethods.destroy

					metaInstance = setmetatable({},
					{
						__index = function(self, index)
							local found = table_find(customMethods, index)
							if found then
								return customMethods[index]
							else
								return object[index]
							end
						end,
						__newindex = function(self, index, value)
							if blockMethods[index] == true then
								error("Failed to set "..tostring(index).." to "..tostring(value))
							elseif typeof(blockMethods[index]) == "function" then
								return blockMethods[index](value)
							end
							object[index] = value
						end,
						__tostring = function()
							return tostring(object)
						end,
						__metatable = "Metatable is locked!"
					}
					)

					metaInstances[metaInstance] = object

					return metaInstance
					--return object
				end
				return metaInstances[obj] or convertToMetaInstance(obj)
			end
		else
			return obj
		end
	end
	for i,v in pairs(objs) do
		res[#res+1] = clone(v)
	end
	return unpack(res)
end