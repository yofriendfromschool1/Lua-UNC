getgenv().UISFTE = game:GetService("UserInputService")

getgenv().IsWindowFocuseddsa = true
getgenv().dsaThread = coroutine.running()
getgenv().con1 = getgenv().UISFTE.InputChanged:Connect(function()
	coroutine.resume(getgenv().dsaThread)
end)
getgenv().con2 = getgenv().UISFTE.WindowFocused:Connect(function()
	coroutine.resume(getgenv().dsaThread)
end)
coroutine.yield()
getgenv().con1:Disconnect()
getgenv()con2:Disconnect()
getgenv().IsWindowFocuseddsa = true
getgenv().UISFTE.WindowFocused:Connect(function()
	getgenv().IsWindowFocuseddsa = true
end)
getgenv().UISFTE.WindowFocusReleased:Connect(function()
	getgenv().IsWindowFocuseddsa = false
end)

getgenv().isrbxactive = function()
	return getgenv().IsWindowFocuseddsa
end
getgenv().isgameactive = getgenv().isrbxactive
