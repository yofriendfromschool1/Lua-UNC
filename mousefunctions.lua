-- creds to vxsty
getgenv().mouse1click = function(x, y)
	local vim = game:GetService('VirtualInputManager');
    x = x or 0
	y = y or 0
	vim:SendMouseButtonEvent(x, y, 0, true, game, false)
	task.wait()
	vim:SendMouseButtonEvent(x, y, 0, false, game, false)
end
getgenv().mouse2click = function(x, y)
    local vim = game:GetService('VirtualInputManager');
	x = x or 0
	y = y or 0
	vim:SendMouseButtonEvent(x, y, 1, true, game, false)
	task.wait()
	vim:SendMouseButtonEvent(x, y, 1, false, game, false)
end
getgenv().mouse1press = function(x, y)
    local vim = game:GetService('VirtualInputManager');
	vim:SendMouseButtonEvent(x or 0, y or 0, 0, true, game, false)
end
getgenv().mouse1release = function(x, y)
    local vim = game:GetService('VirtualInputManager');
	vim:SendMouseButtonEvent(x or 0, y or 0, 0, false, game, false)
end
getgenv().mouse2press = function(x, y)
    local vim = game:GetService('VirtualInputManager');
	vim:SendMouseButtonEvent(x or 0, y or 0, 1, true, game, false)
end
getgenv().mouse2release = function(x, y)
    local vim = game:GetService('VirtualInputManager');
	vim:SendMouseButtonEvent(x or 0, y or 0, 1, false, game, false)
end
getgenv().mousescroll = function(x, y, a)
    local vim = game:GetService('VirtualInputManager');
	vim:SendMouseWheelEvent(x or 0, y or 0, a and true or false, game)
end
getgenv().mousemoverel = function(x, y)
    local vim = game:GetService('VirtualInputManager');
	local Pos = workspace.CurrentCamera.ViewportSize
	vim:SendMouseMoveEvent(Pos.X * x or 0, Pos.Y * y or 0, game)
end
getgenv().mousemoveabs = function(x, y)
    local vim = game:GetService('VirtualInputManager');
	vim:SendMouseMoveEvent(x or 0, y or 0, game)
end
