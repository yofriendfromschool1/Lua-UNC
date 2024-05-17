-- creds to vxsty
if not getgenv().crypt then
	getgenv().crypt = {}
end
getgenv().crypt.generatebytes = function(size)
	if type(size) ~= 'number' then
		return error('missing arguement #1 to \'generatebytes\' (number expected)')
	end
	return getgenv().crypt.generatekey(size) -- must run this unc fix first
end