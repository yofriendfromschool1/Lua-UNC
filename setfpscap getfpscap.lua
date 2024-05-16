local fpscap = 60
function setfpscap(cap)
	fpscap = cap
end

local clock = tick()
game:GetService("RunService").RenderStepped:Connect(function()
	while clock + 1 / fpscap > tick() do end
	clock = tick()

	task.wait()
end)

function getfpscap()
	return fpscap
end