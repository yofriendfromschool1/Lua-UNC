getgenv().rconsoletablerem = {}
local par = game:GetService("CoreGui")
getgenv().rconsolecreate = function(text, color)
	if not par:FindFirstChild("rconsole") then
		getgenv().rconsoletablerem = {}
		getgenv().rconsoleConverted = {
			["_rconsole"] = Instance.new("ScreenGui");
			["_Frame"] = Instance.new("Frame");
			["_min"] = Instance.new("TextButton");
			["_LocalScript"] = Instance.new("LocalScript");
			["_TextBox"] = Instance.new("TextBox");
			["_max1"] = Instance.new("TextButton");
			["_max2"] = Instance.new("TextButton");
			["_max3"] = Instance.new("TextButton");
			["_max4"] = Instance.new("TextButton");
			["_close"] = Instance.new("TextButton");
			["_closescript"] = Instance.new("LocalScript");
			["_TextLabel"] = Instance.new("TextLabel");
			["_Dragify"] = Instance.new("LocalScript");
			["_LocalScript1"] = Instance.new("LocalScript");
		}
	end
	getgenv().rconsoleConverted["_rconsole"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	getgenv().rconsoleConverted["_rconsole"].Name = "rconsole"
	getgenv().rconsoleConverted["_rconsole"].Parent = par

	getgenv().rconsoleConverted["_Frame"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	getgenv().rconsoleConverted["_Frame"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	getgenv().rconsoleConverted["_Frame"].BorderSizePixel = 0
	if not par:FindFirstChild("rconsole") then
		getgenv().rconsoleConverted["_Frame"].Position = UDim2.new(0.36141479, 0, 0.332802534, 0)
	else
		getgenv().rconsoleConverted["_Frame"].Position = getgenv().rconsoleConverted["_Frame"].Position
	end
	getgenv().rconsoleConverted["_Frame"].Size = UDim2.new(0, 694, 0, 294)
	getgenv().rconsoleConverted["_Frame"].Parent = getgenv().rconsoleConverted["_rconsole"]
	getgenv().rconsoleConverted["_min"].Font = Enum.Font.SourceSans
	getgenv().rconsoleConverted["_min"].Text = "-"
	getgenv().rconsoleConverted["_min"].TextColor3 = Color3.fromRGB(255, 255, 255)
	getgenv().rconsoleConverted["_min"].TextSize = 72
	getgenv().rconsoleConverted["_min"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	getgenv().rconsoleConverted["_min"].BackgroundTransparency = 1
	getgenv().rconsoleConverted["_min"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	getgenv().rconsoleConverted["_min"].BorderSizePixel = 0
	getgenv().rconsoleConverted["_min"].Position = UDim2.new(0.877521634, 0, -0.0510204099, 0)
	getgenv().rconsoleConverted["_min"].Size = UDim2.new(0, 15, 0, 50)
	getgenv().rconsoleConverted["_min"].Name = "min"
	getgenv().rconsoleConverted["_min"].Parent = getgenv().rconsoleConverted["_Frame"]

	getgenv().rconsoleConverted["_TextBox"].CursorPosition = -1
	getgenv().rconsoleConverted["_TextBox"].ClearTextOnFocus = false
	getgenv().rconsoleConverted["_TextBox"].Font = Enum.Font.SourceSans
	getgenv().rconsoleConverted["_TextBox"].RichText = true
	getgenv().rconsoleConverted["_TextBox"].Text = ""
	getgenv().rconsoleConverted["_TextBox"].TextColor3 = Color3.fromRGB(204.0000182390213, 204.0000182390213, 204.0000182390213) -- nah
	getgenv().rconsoleConverted["_TextBox"].TextDirection = Enum.TextDirection.RightToLeft
	getgenv().rconsoleConverted["_TextBox"].TextEditable = false
	getgenv().rconsoleConverted["_TextBox"].TextSize = 14
	getgenv().rconsoleConverted["_TextBox"].TextWrapped = true
	getgenv().rconsoleConverted["_TextBox"].TextXAlignment = Enum.TextXAlignment.Left
	getgenv().rconsoleConverted["_TextBox"].TextYAlignment = Enum.TextYAlignment.Top
	getgenv().rconsoleConverted["_TextBox"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	getgenv().rconsoleConverted["_TextBox"].BackgroundTransparency = 1
	getgenv().rconsoleConverted["_TextBox"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	getgenv().rconsoleConverted["_TextBox"].BorderSizePixel = 0
	getgenv().rconsoleConverted["_TextBox"].Position = UDim2.new(0, 0, 0.119047619, 0)
	getgenv().rconsoleConverted["_TextBox"].Size = UDim2.new(0, 694, 0, 259)
	getgenv().rconsoleConverted["_TextBox"].Parent = getgenv().rconsoleConverted["_Frame"]

	getgenv().rconsoleConverted["_max1"].Font = Enum.Font.SourceSans
	getgenv().rconsoleConverted["_max1"].Text = "-"
	getgenv().rconsoleConverted["_max1"].TextColor3 = Color3.fromRGB(255, 255, 255)
	getgenv().rconsoleConverted["_max1"].TextSize = 72
	getgenv().rconsoleConverted["_max1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	getgenv().rconsoleConverted["_max1"].BackgroundTransparency = 1
	getgenv().rconsoleConverted["_max1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	getgenv().rconsoleConverted["_max1"].BorderSizePixel = 0
	getgenv().rconsoleConverted["_max1"].Position = UDim2.new(0.793982983, 0, 0.0546244942, 0)
	getgenv().rconsoleConverted["_max1"].Rotation = -90
	getgenv().rconsoleConverted["_max1"].Size = UDim2.new(0, 200, 0, 0)
	getgenv().rconsoleConverted["_max1"].Name = "max1"
	getgenv().rconsoleConverted["_max1"].Parent = getgenv().rconsoleConverted["_Frame"]

	getgenv().rconsoleConverted["_max2"].Font = Enum.Font.SourceSans
	getgenv().rconsoleConverted["_max2"].Text = "-"
	getgenv().rconsoleConverted["_max2"].TextColor3 = Color3.fromRGB(255, 255, 255)
	getgenv().rconsoleConverted["_max2"].TextSize = 72
	getgenv().rconsoleConverted["_max2"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	getgenv().rconsoleConverted["_max2"].BackgroundTransparency = 1
	getgenv().rconsoleConverted["_max2"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	getgenv().rconsoleConverted["_max2"].BorderSizePixel = 0
	getgenv().rconsoleConverted["_max2"].Position = UDim2.new(0.775181472, 0, 0.0546244942, 0)
	getgenv().rconsoleConverted["_max2"].Rotation = -90
	getgenv().rconsoleConverted["_max2"].Size = UDim2.new(0, 200, 0, 0)
	getgenv().rconsoleConverted["_max2"].Name = "max2"
	getgenv().rconsoleConverted["_max2"].Parent = getgenv().rconsoleConverted["_Frame"]

	getgenv().rconsoleConverted["_max3"].Font = Enum.Font.SourceSans
	getgenv().rconsoleConverted["_max3"].Text = "-"
	getgenv().rconsoleConverted["_max3"].TextColor3 = Color3.fromRGB(255, 255, 255)
	getgenv().rconsoleConverted["_max3"].TextSize = 72
	getgenv().rconsoleConverted["_max3"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	getgenv().rconsoleConverted["_max3"].BackgroundTransparency = 1
	getgenv().rconsoleConverted["_max3"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	getgenv().rconsoleConverted["_max3"].BorderSizePixel = 0
	getgenv().rconsoleConverted["_max3"].Position = UDim2.new(0.937443197, 0, -0.0748299286, 0)
	getgenv().rconsoleConverted["_max3"].Size = UDim2.new(0, 0, 0, 50)
	getgenv().rconsoleConverted["_max3"].Name = "max3"
	getgenv().rconsoleConverted["_max3"].Parent = getgenv().rconsoleConverted["_Frame"]

	getgenv().rconsoleConverted["_max4"].Font = Enum.Font.SourceSans
	getgenv().rconsoleConverted["_max4"].Text = "-"
	getgenv().rconsoleConverted["_max4"].TextColor3 = Color3.fromRGB(255, 255, 255)
	getgenv().rconsoleConverted["_max4"].TextSize = 72
	getgenv().rconsoleConverted["_max4"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	getgenv().rconsoleConverted["_max4"].BackgroundTransparency = 1
	getgenv().rconsoleConverted["_max4"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	getgenv().rconsoleConverted["_max4"].BorderSizePixel = 0
	getgenv().rconsoleConverted["_max4"].Position = UDim2.new(0.937443197, 0, -0.0306122452, 0)
	getgenv().rconsoleConverted["_max4"].Size = UDim2.new(0, 2, 0, 50)
	getgenv().rconsoleConverted["_max4"].Name = "max4"
	getgenv().rconsoleConverted["_max4"].Parent = getgenv().rconsoleConverted["_Frame"]

	getgenv().rconsoleConverted["_close"].Font = Enum.Font.SourceSans
	getgenv().rconsoleConverted["_close"].Text = "X"
	getgenv().rconsoleConverted["_close"].TextColor3 = Color3.fromRGB(255, 255, 255)
	getgenv().rconsoleConverted["_close"].TextSize = 27
	getgenv().rconsoleConverted["_close"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	getgenv().rconsoleConverted["_close"].BackgroundTransparency = 1
	getgenv().rconsoleConverted["_close"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	getgenv().rconsoleConverted["_close"].BorderSizePixel = 0
	getgenv().rconsoleConverted["_close"].Position = UDim2.new(0.962536037, 0, 0, 0)
	getgenv().rconsoleConverted["_close"].Size = UDim2.new(0, 26, 0, 35)
	getgenv().rconsoleConverted["_close"].Name = "close"
	getgenv().rconsoleConverted["_close"].Parent = getgenv().rconsoleConverted["_Frame"]

	getgenv().rconsoleConverted["_TextLabel"].Font = Enum.Font.SourceSans
	getgenv().rconsoleConverted["_TextLabel"].RichText = true
	getgenv().rconsoleConverted["_TextLabel"].Text = ""
	getgenv().rconsoleConverted["_TextLabel"].TextColor3 = Color3.fromRGB(255, 255, 255)
	getgenv().rconsoleConverted["_TextLabel"].TextScaled = true
	getgenv().rconsoleConverted["_TextLabel"].TextSize = 14
	getgenv().rconsoleConverted["_TextLabel"].TextWrapped = true
	getgenv().rconsoleConverted["_TextLabel"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	getgenv().rconsoleConverted["_TextLabel"].BackgroundTransparency = 1
	getgenv().rconsoleConverted["_TextLabel"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	getgenv().rconsoleConverted["_TextLabel"].BorderSizePixel = 0
	getgenv().rconsoleConverted["_TextLabel"].Size = UDim2.new(0, 609, 0, 42)
	getgenv().rconsoleConverted["_TextLabel"].Parent = getgenv().rconsoleConverted["_Frame"]


	local fake_module_scripts = {}

	local function BDYORWU_fake_script() -- Fake Script: StarterGui.rconsole.Frame.min.LocalScript
		local script = Instance.new("LocalScript")
		script.Name = "LocalScript"
		script.Parent = getgenv().rconsoleConverted["_min"]
		local req = require
		local require = function(obj)
			local fake = fake_module_scripts[obj]
			if fake then
				return fake()
			end
			return req(obj)
		end

		script.Parent.MouseButton1Down:Connect(function()
			script.Parent.Parent.Visible = false
		end)
	end
	local function FOWXFT_fake_script() -- Fake Script: StarterGui.rconsole.Frame.close.closescript
		local script = Instance.new("LocalScript")
		script.Name = "closescript"
		script.Parent = getgenv().rconsoleConverted["_close"]
		local req = require
		local require = function(obj)
			local fake = fake_module_scripts[obj]
			if fake then
				return fake()
			end
			return req(obj)
		end

		script.Parent.MouseButton1Down:Connect(function()
			script.Parent.Parent.Parent:Destroy()
		end)
	end
	local function JLOCYX_fake_script() -- Fake Script: StarterGui.rconsole.Frame.Dragify
		local script = Instance.new("LocalScript")
		script.Name = "Dragify"
		script.Parent = getgenv().rconsoleConverted["_Frame"]
		local req = require
		local require = function(obj)
			local fake = fake_module_scripts[obj]
			if fake then
				return fake()
			end
			return req(obj)
		end

		local UIS = game:GetService("UserInputService")
		function dragify(Frame)
			dragToggle = nil
			dragSpeed = 0.15
			dragInput = nil
			dragStart = nil
			dragPos = nil
			function updateInput(input)
				Delta = input.Position - dragStart
				Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
				game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.15), {
					Position = Position
				}):Play()
			end
			Frame.InputBegan:Connect(function(input)
				if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
					dragToggle = true
					dragStart = input.Position
					startPos = Frame.Position
					input.Changed:Connect(function()
						if input.UserInputState == Enum.UserInputState.End then
							dragToggle = false
						end
					end)
				end
			end)
			Frame.InputChanged:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
					dragInput = input
				end
			end)
			game:GetService("UserInputService").InputChanged:Connect(function(input)
				if input == dragInput and dragToggle then
					updateInput(input)
				end
			end)
		end
		dragify(script.Parent)

	end
	local function OOBMK_fake_script() -- Fake Script: StarterGui.rconsole.LocalScript
		local script = Instance.new("LocalScript")
		script.Name = "LocalScript"
		script.Parent = getgenv().rconsoleConverted["_rconsole"]
		local req = require
		local require = function(obj)
			local fake = fake_module_scripts[obj]
			if fake then
				return fake()
			end
			return req(obj)
		end

		local uis = game:GetService("UserInputService")
		uis.InputBegan:Connect(function(inp)
			if inp.KeyCode == Enum.KeyCode.RightControl then
				script.Parent.Frame.Visible = not script.Parent.Frame.Visible
			end
		end)
	end

	coroutine.wrap(BDYORWU_fake_script)()
	coroutine.wrap(FOWXFT_fake_script)()
	coroutine.wrap(JLOCYX_fake_script)()
	coroutine.wrap(OOBMK_fake_script)()
end
getgenv().rconsoleclear = function()
	if not par:FindFirstChild("rconsole") then
		error("No Console Found.")
	else
		getgenv().rconsoleConverted["_TextBox"].Text = ""
		getgenv().rconsoletablerem = {}
		makeonestring = ""
	end
end
getgenv().rconsoleprint = function(text, color)
	text = text .. "\n"
	if not par:FindFirstChild("rconsole") then
		rconsolecreate()
		task.wait(0.25)
		table.insert(getgenv().rconsoletablerem, text)
		makeonestring = table.concat(getgenv().rconsoletablerem, "")
		getgenv().rconsoleConverted["_TextBox"].Text = makeonestring
	else
		table.insert(getgenv().rconsoletablerem, text)
		makeonestring = table.concat(getgenv().rconsoletablerem, "")
		getgenv().rconsoleConverted["_TextBox"].Text = makeonestring
		if getgenv().rconsoleConverted["_TextBox"].TextColor3 ~= Color3.fromRGB(204.0000182390213, 204.0000182390213, 204.0000182390213) then
			getgenv().rconsoleConverted["_TextBox"].TextColor3 = Color3.fromRGB(204.0000182390213, 204.0000182390213, 204.0000182390213)
		end
	end
end
getgenv().rconsoleerr = function(text, color)
	text = text .. "\n"
	if not par:FindFirstChild("rconsole") then
		rconsolecreate()
		task.wait(0.25)
		table.insert(getgenv().rconsoletablerem, text)
		makeonestring = table.concat(getgenv().rconsoletablerem, "")
		getgenv().rconsoleConverted["_TextBox"].Text = makeonestring
		getgenv().rconsoleConverted["_TextBox"].TextColor3 = Color3.fromRGB(255, 0, 0)
	else
		table.insert(getgenv().rconsoletablerem, text)
		makeonestring = table.concat(getgenv().rconsoletablerem, "")
		getgenv().rconsoleConverted["_TextBox"].Text = makeonestring
		getgenv().rconsoleConverted["_TextBox"].TextColor3 = Color3.fromRGB(255, 0, 0)
	end
end
getgenv().rconsoleinfo = function(text, color)
	text = text .. "\n"
	if not par:FindFirstChild("rconsole") then
		rconsolecreate()
		task.wait(0.25)
		table.insert(getgenv().rconsoletablerem, text)
		makeonestring = table.concat(getgenv().rconsoletablerem, "")
		getgenv().rconsoleConverted["_TextBox"].Text = makeonestring
		getgenv().rconsoleConverted["_TextBox"].TextColor3 = Color3.fromRGB(0, 204, 255)
	else
		table.insert(getgenv().rconsoletablerem, text)
		makeonestring = table.concat(getgenv().rconsoletablerem, "")
		getgenv().rconsoleConverted["_TextBox"].Text = makeonestring
		getgenv().rconsoleConverted["_TextBox"].TextColor3 = Color3.fromRGB(0, 204, 255)
	end
end
getgenv().rconsolewarn = function(text, color)
	text = text .. "\n"
	if not par:FindFirstChild("rconsole") then
		rconsolecreate()
		task.wait(0.25)
		table.insert(getgenv().rconsoletablerem, text)
		makeonestring = table.concat(getgenv().rconsoletablerem, "")
		getgenv().rconsoleConverted["_TextBox"].Text = makeonestring
		getgenv().rconsoleConverted["_TextBox"].TextColor3 = Color3.fromRGB(238, 255, 0)
	else
		table.insert(getgenv().rconsoletablerem, text)
		makeonestring = table.concat(getgenv().rconsoletablerem, "")
		getgenv().rconsoleConverted["_TextBox"].Text = makeonestring
		getgenv().rconsoleConverted["_TextBox"].TextColor3 = Color3.fromRGB(238, 255, 0)
	end
end
getgenv().rconsoledestroy = function()
	if not par:FindFirstChild("rconsole") then
		error("No Console Found.")
	else
		par:FindFirstChild("rconsole"):Destroy()
	end
end
getgenv().rconsolesettitle = function(text)
	if not par:FindFirstChild("rconsole") then
		rconsolecreate()
		task.wait(0.25)
		getgenv().rconsoleConverted["_TextLabel"].Text = text
	else
		getgenv().rconsoleConverted["_TextLabel"].Text = text
	end
end
getgenv().rconsolename = function(text)
	if not par:FindFirstChild("rconsole") then
		rconsolecreate()
		task.wait(0.25)
		getgenv().rconsoleConverted["_TextLabel"].Text = text
	else
		getgenv().rconsoleConverted["_TextLabel"].Text = text
	end
end
getgenv().rconsoleinput = function()
	if not par:FindFirstChild("rconsole") then
		error("No Console Found.")
	else
		getgenv().rconsoleConverted["_TextBox"].TextEditable = true
		getgenv().rconsoleConverted["_TextBox"].Text = ""
		local toreturn = nil
		getgenv().rconsoleConverted["_TextBox"].InputEnded:Connect(function(inp)
			if inp.KeyCode == Enum.KeyCode.Return then
				toreturn = getgenv().rconsoleConverted["_TextBox"].Text
				getgenv().rconsoleConverted["_TextBox"].Text = ""
				getgenv().rconsoleConverted["_TextBox"].TextEditable = false
			end
		end)
		local prev = getgenv().rconsoletablerem
		makeonestring = table.concat(prev, "")
		getgenv().rconsoleConverted["_TextBox"].Text = makeonestring .. string.gsub(getgenv().rconsoleConverted["_TextBox"].Text, makeonestring, "")
		repeat
			task.wait()
		until toreturn ~= nil
		toreturn = string.gsub(toreturn, makeonestring, "")
		table.insert(getgenv().rconsoletablerem, toreturn)
		makeonestring = table.concat(getgenv().rconsoletablerem, "")
		getgenv().rconsoleConverted["_TextBox"].Text = makeonestring
		return toreturn
	end
end
