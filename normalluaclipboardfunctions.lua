getgenv().setclipboard = function(text)
	local Converted = {
		["_setcliptoclip"] = Instance.new("ScreenGui");
		["_TextBox"] = Instance.new("TextBox");
		["_LocalScript"] = Instance.new("LocalScript");
	}

	Converted["_setcliptoclip"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	Converted["_setcliptoclip"].Name = "setcliptoclip"
	Converted["_setcliptoclip"].Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

	Converted["_TextBox"].ClearTextOnFocus = false
	Converted["_TextBox"].CursorPosition = -1
	Converted["_TextBox"].Font = Enum.Font.SourceSans
	Converted["_TextBox"].Text = text
	Converted["_TextBox"].TextColor3 = Color3.fromRGB(0, 0, 0)
	Converted["_TextBox"].TextSize = 14
	Converted["_TextBox"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Converted["_TextBox"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Converted["_TextBox"].BorderSizePixel = 0
	Converted["_TextBox"].Position = UDim2.new(0.48038584, 0, 0.471337587, 0)
	Converted["_TextBox"].Size = UDim2.new(0, 200, 0, 50)
	Converted["_TextBox"].Parent = Converted["_setcliptoclip"]

	local fake_module_scripts = {}


	local function GBGAD_fake_script() -- Fake Script: StarterGui.setcliptoclip.TextBox.LocalScript
		local script = Instance.new("LocalScript")
		script.Name = "LocalScript"
		script.Parent = Converted["_TextBox"]
		local req = require
		local require = function(obj)
			local fake = fake_module_scripts[obj]
			if fake then
				return fake()
			end
			return req(obj)
		end

		script.Parent.FocusLost:Connect(function()
			script.Parent.Parent:Destroy()
		end)
	end

	coroutine.wrap(GBGAD_fake_script)()
end
getgenv().setrbxclipboard = function(text)
	local Converted = {
		["_setcliptoclip"] = Instance.new("ScreenGui");
		["_TextBox"] = Instance.new("TextBox");
		["_LocalScript"] = Instance.new("LocalScript");
	}

	Converted["_setcliptoclip"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	Converted["_setcliptoclip"].Name = "setcliptoclip"
	Converted["_setcliptoclip"].Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

	Converted["_TextBox"].ClearTextOnFocus = false
	Converted["_TextBox"].CursorPosition = -1
	Converted["_TextBox"].Font = Enum.Font.SourceSans
	Converted["_TextBox"].Text = text
	Converted["_TextBox"].TextColor3 = Color3.fromRGB(0, 0, 0)
	Converted["_TextBox"].TextSize = 14
	Converted["_TextBox"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Converted["_TextBox"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Converted["_TextBox"].BorderSizePixel = 0
	Converted["_TextBox"].Position = UDim2.new(0.48038584, 0, 0.471337587, 0)
	Converted["_TextBox"].Size = UDim2.new(0, 200, 0, 50)
	Converted["_TextBox"].Parent = Converted["_setcliptoclip"]

	local fake_module_scripts = {}


	local function GBGAD_fake_script() -- Fake Script: StarterGui.setcliptoclip.TextBox.LocalScript
		local script = Instance.new("LocalScript")
		script.Name = "LocalScript"
		script.Parent = Converted["_TextBox"]
		local req = require
		local require = function(obj)
			local fake = fake_module_scripts[obj]
			if fake then
				return fake()
			end
			return req(obj)
		end

		script.Parent.FocusLost:Connect(function()
			script.Parent.Parent:Destroy()
		end)
	end

	coroutine.wrap(GBGAD_fake_script)()
end
getgenv().toclipboard = function(text)
	local Converted = {
		["_setcliptoclip"] = Instance.new("ScreenGui");
		["_TextBox"] = Instance.new("TextBox");
		["_LocalScript"] = Instance.new("LocalScript");
	}

	Converted["_setcliptoclip"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	Converted["_setcliptoclip"].Name = "setcliptoclip"
	Converted["_setcliptoclip"].Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

	Converted["_TextBox"].ClearTextOnFocus = false
	Converted["_TextBox"].CursorPosition = -1
	Converted["_TextBox"].Font = Enum.Font.SourceSans
	Converted["_TextBox"].Text = text
	Converted["_TextBox"].TextColor3 = Color3.fromRGB(0, 0, 0)
	Converted["_TextBox"].TextSize = 14
	Converted["_TextBox"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Converted["_TextBox"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Converted["_TextBox"].BorderSizePixel = 0
	Converted["_TextBox"].Position = UDim2.new(0.48038584, 0, 0.471337587, 0)
	Converted["_TextBox"].Size = UDim2.new(0, 200, 0, 50)
	Converted["_TextBox"].Parent = Converted["_setcliptoclip"]

	local fake_module_scripts = {}


	local function GBGAD_fake_script() -- Fake Script: StarterGui.setcliptoclip.TextBox.LocalScript
		local script = Instance.new("LocalScript")
		script.Name = "LocalScript"
		script.Parent = Converted["_TextBox"]
		local req = require
		local require = function(obj)
			local fake = fake_module_scripts[obj]
			if fake then
				return fake()
			end
			return req(obj)
		end

		script.Parent.FocusLost:Connect(function()
			script.Parent.Parent:Destroy()
		end)
	end

	coroutine.wrap(GBGAD_fake_script)()
end