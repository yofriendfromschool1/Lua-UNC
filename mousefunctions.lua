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
	x = x or 0
	y = y or 0
	vim:SendMouseButtonEvent(x, y, 0, true, game, false)
end
getgenv().mouse1release = function(x, y)
    local vim = game:GetService('VirtualInputManager');
	x = x or 0
	y = y or 0
	vim:SendMouseButtonEvent(x, y, 0, false, game, false)
end
getgenv().mouse2press = function(x, y)
    local vim = game:GetService('VirtualInputManager');
	x = x or 0
	y = y or 0
	vim:SendMouseButtonEvent(x, y, 1, true, game, false)
end
getgenv().mouse2release = function(x, y)
    local vim = game:GetService('VirtualInputManager');
	x = x or 0
	y = y or 0
	vim:SendMouseButtonEvent(x, y, 1, false, game, false)
end
getgenv().mousescroll = function(x, y, a)
    local vim = game:GetService('VirtualInputManager');
	x = x or 0
	y = y or 0
	a = a and true or false
	vim:SendMouseWheelEvent(x, y, a, game)
end
getgenv().mousemoverel = function(relx, rely)
    local vim = game:GetService('VirtualInputManager');
	local Pos = workspace.CurrentCamera.ViewportSize
	relx = relx or 0
	rely = rely or 0
	local x = Pos.X * relx
	local y = Pos.Y * rely
	vim:SendMouseMoveEvent(x, y, game)
end
getgenv().mousemoveabs = function(x, y)
    local vim = game:GetService('VirtualInputManager');
	x = x or 0
	y = y or 0
	vim:SendMouseMoveEvent(x, y, game)
end
