-- creds to vxsty
if not getgenv().crypt then
    getgenv().crypt = {}
end
if getgenv().crypt then
getgenv().crypt.generatekey = function(optionalSize)
	local key = ''
	local a = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
	for i = 1, optionalSize or 44 do
		local n = math.random(1, #a)
		key = key .. a:sub(n, n)
	end
	return funcs.base64.encode(key)
end