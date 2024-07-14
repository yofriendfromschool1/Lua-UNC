getgenv().getdevice = function()
	local inputsrv = game:GetService("UserInputService")
	if inputsrv:GetPlatform() == Enum.Platform.Windows then
		return 'Windows'
	elseif inputsrv:GetPlatform() == Enum.Platform.OSX then
		return 'macOS'
	elseif inputsrv:GetPlatform() == Enum.Platform.IOS then
		return 'iOS'
	elseif inputsrv:GetPlatform() == Enum.Platform.UWP then
		return 'Windows (Microsoft Store)'
	elseif inputsrv:GetPlatform() == Enum.Platform.Android then
		return 'Android'
	else
		return 'Unknown'
	end
end