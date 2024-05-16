getgenv().fpscap = 60
getgenv().setfpscap = function(cap)
	getgenv().fpscap = cap
end
getgenv().clock = tick()
game:GetService("RunService").RenderStepped:Connect(function()
	while getgenv().clock + 1 / getgenv().fpscap > tick() do end
	getgenv().clock = tick()

	task.wait()
end)

getgenv().getfpscap = function()
	return getgenv().fpscap
end
