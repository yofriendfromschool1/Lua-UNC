-- creds to vxsty
getgenv().crypt.generatekey = function(optionalSize)
	local key = ''
	local a = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
	for i = 1, optionalSize or 44 do
		local n = math.random(1, #a)
		key = key .. a:sub(n, n)
	end
	return getgenv().crypt.base64encode(key)
end
