local UIS = game:GetService("UserInputService")

local IsWindowFocused = true
local Thread = coroutine.running()
local con1 = UIS.InputChanged:Connect(function()
	coroutine.resume(Thread)
end)
local con2 = UIS.WindowFocused:Connect(function()
	coroutine.resume(Thread)
end)
coroutine.yield()
con1:Disconnect()
con2:Disconnect()
IsWindowFocused = true
UIS.WindowFocused:Connect(function()
	IsWindowFocused = true
end)
UIS.WindowFocusReleased:Connect(function()
	IsWindowFocused = false
end)

getgenv().isrbxactive = function()
	return IsWindowFocused
end
getgenv().isgameactive