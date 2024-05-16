function isreadonly(instance, property)
	return not (pcall(function()
		instance[property] = instance[property] -- errors if readonly, or nonexistant
	end))
end