getgenv().messagebox = function(text,caption,style,callback)
    if style == 0 then
        local Converted = {
            ["_messagebox"] = Instance.new("ScreenGui");
            ["_Frame"] = Instance.new("Frame");
            ["_ok"] = Instance.new("TextButton");
            ["_LocalScript"] = Instance.new("LocalScript");
            ["_shadow"] = Instance.new("Frame");
            ["_main"] = Instance.new("TextLabel");
            ["_title"] = Instance.new("TextLabel");
            ["_x"] = Instance.new("TextButton");
            ["_LocalScript1"] = Instance.new("LocalScript");
            ["_Dragify"] = Instance.new("LocalScript");
        }
        
        Converted["_messagebox"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        Converted["_messagebox"].Name = "messagebox"
        Converted["_messagebox"].Parent = game:GetService("CoreGui")
        
        Converted["_Frame"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_Frame"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_Frame"].BorderSizePixel = 0
        Converted["_Frame"].Position = UDim2.new(0.456591636, 0, 0.420382172, 0)
        Converted["_Frame"].Size = UDim2.new(0, 153, 0, 163)
        Converted["_Frame"].Parent = Converted["_messagebox"]
        
        Converted["_ok"].Font = Enum.Font.SourceSans
        Converted["_ok"].Text = "OK"
        Converted["_ok"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_ok"].TextSize = 14
        Converted["_ok"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_ok"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_ok"].BorderSizePixel = 2
        Converted["_ok"].Position = UDim2.new(0.473963529, 0, 0.792376757, 0)
        Converted["_ok"].Size = UDim2.new(0, 73, 0, 23)
        Converted["_ok"].ZIndex = 2
        Converted["_ok"].Name = "ok"
        Converted["_ok"].Parent = Converted["_Frame"]
        
        Converted["_shadow"].BackgroundColor3 = Color3.fromRGB(240.0000160932541, 240.0000160932541, 240.0000160932541)
        Converted["_shadow"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_shadow"].BorderSizePixel = 0
        Converted["_shadow"].Position = UDim2.new(0, 0, 0.736196339, 0)
        Converted["_shadow"].Size = UDim2.new(0, 153, 0, 43)
        Converted["_shadow"].Name = "shadow"
        Converted["_shadow"].Parent = Converted["_Frame"]
        
        Converted["_main"].Font = Enum.Font.SourceSans
        Converted["_main"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_main"].TextSize = 14
        Converted["_main"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_main"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_main"].BorderSizePixel = 0
        Converted["_main"].Position = UDim2.new(0.339869291, 0, 0.202453986, 0)
        Converted["_main"].Size = UDim2.new(0, 48, 0, 50)
        Converted["_main"].Name = "main"
        Converted["_main"].Text = text
        Converted["_main"].Parent = Converted["_Frame"]
        
        Converted["_title"].Font = Enum.Font.SourceSans
        Converted["_title"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_title"].TextSize = 14
        Converted["_title"].TextXAlignment = Enum.TextXAlignment.Left
        Converted["_title"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_title"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_title"].BorderSizePixel = 0
        Converted["_title"].Size = UDim2.new(0, 121, 0, 33)
        Converted["_title"].Name = "title"
        Converted["_title"].Text = caption
        Converted["_title"].Parent = Converted["_Frame"]
        
        Converted["_x"].Font = Enum.Font.SourceSans
        Converted["_x"].Text = "X"
        Converted["_x"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_x"].TextSize = 14
        Converted["_x"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_x"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_x"].BorderSizePixel = 0
        Converted["_x"].Position = UDim2.new(0.790849686, 0, 0, 0)
        Converted["_x"].Size = UDim2.new(0, 32, 0, 26)
        Converted["_x"].Name = "x"
        Converted["_x"].Parent = Converted["_Frame"]
        
        local fake_module_scripts = {}
        
        local toreturn = nil

        local function RXIOXO_fake_script() -- Fake Script: StarterGui.messagebox.Frame.ok.LocalScript
            local script = Instance.new("LocalScript")
            script.Name = "LocalScript"
            script.Parent = Converted["_ok"]
            local req = require
            local require = function(obj)
                local fake = fake_module_scripts[obj]
                if fake then
                    return fake()
                end
                return req(obj)
            end
        
            script.Parent.MouseButton1Down:Connect(function()
                toreturn = 1
                script.Parent.Parent.Parent:Destroy()
            end)
        end
        local function LPTAF_fake_script() -- Fake Script: StarterGui.messagebox.Frame.x.LocalScript
            local script = Instance.new("LocalScript")
            script.Name = "LocalScript"
            script.Parent = Converted["_x"]
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
        local function OVXL_fake_script() -- Fake Script: StarterGui.messagebox.Frame.Dragify
            local script = Instance.new("LocalScript")
            script.Name = "Dragify"
            script.Parent = Converted["_Frame"]
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
                    game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.15), {Position = Position}):Play()
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
        
        coroutine.wrap(RXIOXO_fake_script)()
        coroutine.wrap(LPTAF_fake_script)()
        coroutine.wrap(OVXL_fake_script)()
        repeat
            task.wait()
        until toreturn ~= nil
        return toreturn

    elseif style == 1 then
        local Converted = {
            ["_messagebox"] = Instance.new("ScreenGui");
            ["_Frame"] = Instance.new("Frame");
            ["_ok"] = Instance.new("TextButton");
            ["_LocalScript"] = Instance.new("LocalScript");
            ["_shadow"] = Instance.new("Frame");
            ["_main"] = Instance.new("TextLabel");
            ["_title"] = Instance.new("TextLabel");
            ["_x"] = Instance.new("TextButton");
            ["_LocalScript1"] = Instance.new("LocalScript");
            ["_Dragify"] = Instance.new("LocalScript");
            ["_cancel"] = Instance.new("TextButton");
            ["_LocalScript2"] = Instance.new("LocalScript");
        }
        
        
        Converted["_messagebox"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        Converted["_messagebox"].Name = "messagebox"
        Converted["_messagebox"].Parent = game:GetService("CoreGui")
        
        Converted["_Frame"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_Frame"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_Frame"].BorderSizePixel = 0
        Converted["_Frame"].Position = UDim2.new(0.456591636, 0, 0.420382172, 0)
        Converted["_Frame"].Size = UDim2.new(0, 263, 0, 163)
        Converted["_Frame"].Parent = Converted["_messagebox"]
        
        Converted["_ok"].Font = Enum.Font.SourceSans
        Converted["_ok"].Text = "OK"
        Converted["_ok"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_ok"].TextSize = 14
        Converted["_ok"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_ok"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_ok"].BorderSizePixel = 2
        Converted["_ok"].Position = UDim2.new(0.0687347576, 0, 0.792376757, 0)
        Converted["_ok"].Size = UDim2.new(0, 73, 0, 23)
        Converted["_ok"].ZIndex = 2
        Converted["_ok"].Name = "ok"
        Converted["_ok"].Parent = Converted["_Frame"]
        
        Converted["_shadow"].BackgroundColor3 = Color3.fromRGB(240.0000160932541, 240.0000160932541, 240.0000160932541)
        Converted["_shadow"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_shadow"].BorderSizePixel = 0
        Converted["_shadow"].Position = UDim2.new(0, 0, 0.736196339, 0)
        Converted["_shadow"].Size = UDim2.new(0, 262, 0, 43)
        Converted["_shadow"].Name = "shadow"
        Converted["_shadow"].Parent = Converted["_Frame"]
        
        Converted["_main"].Font = Enum.Font.SourceSans
        Converted["_main"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_main"].TextSize = 14
        Converted["_main"].Text = text
        Converted["_main"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_main"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_main"].BorderSizePixel = 0
        Converted["_main"].Position = UDim2.new(0.434926301, 0, 0.257668704, 0)
        Converted["_main"].Size = UDim2.new(0, 48, 0, 50)
        Converted["_main"].Name = "main"
        Converted["_main"].Parent = Converted["_Frame"]
        
        Converted["_title"].Font = Enum.Font.SourceSans
        Converted["_title"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_title"].TextSize = 14
        Converted["_title"].Text = caption
        Converted["_title"].TextXAlignment = Enum.TextXAlignment.Left
        Converted["_title"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_title"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_title"].BorderSizePixel = 0
        Converted["_title"].Size = UDim2.new(0, 230, 0, 33)
        Converted["_title"].Name = "title"
        Converted["_title"].Parent = Converted["_Frame"]
        
        Converted["_x"].Font = Enum.Font.SourceSans
        Converted["_x"].Text = "X"
        Converted["_x"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_x"].TextSize = 14
        Converted["_x"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_x"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_x"].BorderSizePixel = 0
        Converted["_x"].Position = UDim2.new(0.878302157, 0, 0, 0)
        Converted["_x"].Size = UDim2.new(0, 32, 0, 26)
        Converted["_x"].Name = "x"
        Converted["_x"].Parent = Converted["_Frame"]
        
        Converted["_cancel"].Font = Enum.Font.SourceSans
        Converted["_cancel"].Text = "Cancel"
        Converted["_cancel"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_cancel"].TextSize = 14
        Converted["_cancel"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_cancel"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_cancel"].BorderSizePixel = 2
        Converted["_cancel"].Position = UDim2.new(0.593449712, 0, 0.792376757, 0)
        Converted["_cancel"].Size = UDim2.new(0, 73, 0, 23)
        Converted["_cancel"].ZIndex = 2
        Converted["_cancel"].Name = "cancel"
        Converted["_cancel"].Parent = Converted["_Frame"]
        
        
        local fake_module_scripts = {}
        
        
        local toreturn = nil

        local function CKPCU_fake_script() -- Fake Script: StarterGui.messagebox.Frame.ok.LocalScript
            local script = Instance.new("LocalScript")
            script.Name = "LocalScript"
            script.Parent = Converted["_ok"]
            local req = require
            local require = function(obj)
                local fake = fake_module_scripts[obj]
                if fake then
                    return fake()
                end
                return req(obj)
            end
        
            script.Parent.MouseButton1Down:Connect(function()
                toreturn = 1
                script.Parent.Parent.Parent:Destroy()
            end)
        end
        local function CIWSM_fake_script() -- Fake Script: StarterGui.messagebox.Frame.x.LocalScript
            local script = Instance.new("LocalScript")
            script.Name = "LocalScript"
            script.Parent = Converted["_x"]
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
        local function HAHLPR_fake_script() -- Fake Script: StarterGui.messagebox.Frame.Dragify
            local script = Instance.new("LocalScript")
            script.Name = "Dragify"
            script.Parent = Converted["_Frame"]
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
                    game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.15), {Position = Position}):Play()
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
        local function NZUHXUG_fake_script() -- Fake Script: StarterGui.messagebox.Frame.cancel.LocalScript
            local script = Instance.new("LocalScript")
            script.Name = "LocalScript"
            script.Parent = Converted["_cancel"]
            local req = require
            local require = function(obj)
                local fake = fake_module_scripts[obj]
                if fake then
                    return fake()
                end
                return req(obj)
            end
        
            script.Parent.MouseButton1Down:Connect(function()
                toreturn = 2
                script.Parent.Parent.Parent:Destroy()
            end)
        end
        coroutine.wrap(CKPCU_fake_script)()
        coroutine.wrap(CIWSM_fake_script)()
        coroutine.wrap(HAHLPR_fake_script)()
        coroutine.wrap(NZUHXUG_fake_script)()
        repeat
            task.wait()
        until toreturn ~= nil
        return toreturn
    elseif style == 2 then
        local Converted = {
            ["_messagebox"] = Instance.new("ScreenGui");
            ["_Frame"] = Instance.new("Frame");
            ["_abort"] = Instance.new("TextButton");
            ["_LocalScript"] = Instance.new("LocalScript");
            ["_shadow"] = Instance.new("Frame");
            ["_main"] = Instance.new("TextLabel");
            ["_title"] = Instance.new("TextLabel");
            ["_x"] = Instance.new("TextButton");
            ["_LocalScript1"] = Instance.new("LocalScript");
            ["_Dragify"] = Instance.new("LocalScript");
            ["_ignore"] = Instance.new("TextButton");
            ["_LocalScript2"] = Instance.new("LocalScript");
            ["_retry"] = Instance.new("TextButton");
            ["_LocalScript3"] = Instance.new("LocalScript");
        }
        
        
        Converted["_messagebox"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        Converted["_messagebox"].Name = "messagebox"
        Converted["_messagebox"].Parent = game:GetService("CoreGui")
        
        Converted["_Frame"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_Frame"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_Frame"].BorderSizePixel = 0
        Converted["_Frame"].Position = UDim2.new(0.456591636, 0, 0.420382172, 0)
        Converted["_Frame"].Size = UDim2.new(0, 263, 0, 163)
        Converted["_Frame"].Parent = Converted["_messagebox"]
        
        Converted["_abort"].Font = Enum.Font.SourceSans
        Converted["_abort"].Text = "Abort"
        Converted["_abort"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_abort"].TextSize = 14
        Converted["_abort"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_abort"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_abort"].BorderSizePixel = 2
        Converted["_abort"].Position = UDim2.new(0.0421188995, 0, 0.792376757, 0)
        Converted["_abort"].Size = UDim2.new(0, 73, 0, 23)
        Converted["_abort"].ZIndex = 2
        Converted["_abort"].Name = "abort"
        Converted["_abort"].Parent = Converted["_Frame"]
        
        Converted["_shadow"].BackgroundColor3 = Color3.fromRGB(240.0000160932541, 240.0000160932541, 240.0000160932541)
        Converted["_shadow"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_shadow"].BorderSizePixel = 0
        Converted["_shadow"].Position = UDim2.new(0, 0, 0.736196339, 0)
        Converted["_shadow"].Size = UDim2.new(0, 262, 0, 43)
        Converted["_shadow"].Name = "shadow"
        Converted["_shadow"].Parent = Converted["_Frame"]
        
        Converted["_main"].Font = Enum.Font.SourceSans
        Converted["_main"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_main"].TextSize = 14
        Converted["_main"].Text = text
        Converted["_main"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_main"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_main"].BorderSizePixel = 0
        Converted["_main"].Position = UDim2.new(0.434926301, 0, 0.257668704, 0)
        Converted["_main"].Size = UDim2.new(0, 48, 0, 50)
        Converted["_main"].Name = "main"
        Converted["_main"].Parent = Converted["_Frame"]
        
        Converted["_title"].Font = Enum.Font.SourceSans
        Converted["_title"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_title"].TextSize = 14
        Converted["_title"].Text = caption
        Converted["_title"].TextXAlignment = Enum.TextXAlignment.Left
        Converted["_title"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_title"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_title"].BorderSizePixel = 0
        Converted["_title"].Size = UDim2.new(0, 230, 0, 33)
        Converted["_title"].Name = "title"
        Converted["_title"].Parent = Converted["_Frame"]
        
        Converted["_x"].Font = Enum.Font.SourceSans
        Converted["_x"].Text = "X"
        Converted["_x"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_x"].TextSize = 14
        Converted["_x"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_x"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_x"].BorderSizePixel = 0
        Converted["_x"].Position = UDim2.new(0.878302157, 0, 0, 0)
        Converted["_x"].Size = UDim2.new(0, 32, 0, 26)
        Converted["_x"].Name = "x"
        Converted["_x"].Parent = Converted["_Frame"]
        
        Converted["_ignore"].Font = Enum.Font.SourceSans
        Converted["_ignore"].Text = "Ignore"
        Converted["_ignore"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_ignore"].TextSize = 14
        Converted["_ignore"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_ignore"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_ignore"].BorderSizePixel = 2
        Converted["_ignore"].Position = UDim2.new(0.688506722, 0, 0.792376757, 0)
        Converted["_ignore"].Size = UDim2.new(0, 73, 0, 23)
        Converted["_ignore"].ZIndex = 2
        Converted["_ignore"].Name = "ignore"
        Converted["_ignore"].Parent = Converted["_Frame"]
        
        Converted["_retry"].Font = Enum.Font.SourceSans
        Converted["_retry"].Text = "Retry"
        Converted["_retry"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_retry"].TextSize = 14
        Converted["_retry"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_retry"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_retry"].BorderSizePixel = 2
        Converted["_retry"].Position = UDim2.new(0.357708246, 0, 0.792376757, 0)
        Converted["_retry"].Size = UDim2.new(0, 73, 0, 23)
        Converted["_retry"].ZIndex = 2
        Converted["_retry"].Name = "retry"
        Converted["_retry"].Parent = Converted["_Frame"]
        
        
        local fake_module_scripts = {}
        
        local toreturn = nil
        
        local function UMBLVK_fake_script() -- Fake Script: StarterGui.messagebox.Frame.abort.LocalScript
            local script = Instance.new("LocalScript")
            script.Name = "LocalScript"
            script.Parent = Converted["_abort"]
            local req = require
            local require = function(obj)
                local fake = fake_module_scripts[obj]
                if fake then
                    return fake()
                end
                return req(obj)
            end
        
            script.Parent.MouseButton1Down:Connect(function()
                toreturn = 1
                script.Parent.Parent.Parent:Destroy()
            end)
        end
        local function CYFK_fake_script() -- Fake Script: StarterGui.messagebox.Frame.x.LocalScript
            local script = Instance.new("LocalScript")
            script.Name = "LocalScript"
            script.Parent = Converted["_x"]
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
        local function CILKM_fake_script() -- Fake Script: StarterGui.messagebox.Frame.Dragify
            local script = Instance.new("LocalScript")
            script.Name = "Dragify"
            script.Parent = Converted["_Frame"]
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
                    game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.15), {Position = Position}):Play()
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
        local function PAWMI_fake_script() -- Fake Script: StarterGui.messagebox.Frame.ignore.LocalScript
            local script = Instance.new("LocalScript")
            script.Name = "LocalScript"
            script.Parent = Converted["_ignore"]
            local req = require
            local require = function(obj)
                local fake = fake_module_scripts[obj]
                if fake then
                    return fake()
                end
                return req(obj)
            end
        
            script.Parent.MouseButton1Down:Connect(function()
                toreturn = 3
                script.Parent.Parent.Parent:Destroy()
            end)
        end
        local function LCJM_fake_script() -- Fake Script: StarterGui.messagebox.Frame.retry.LocalScript
            local script = Instance.new("LocalScript")
            script.Name = "LocalScript"
            script.Parent = Converted["_retry"]
            local req = require
            local require = function(obj)
                local fake = fake_module_scripts[obj]
                if fake then
                    return fake()
                end
                return req(obj)
            end
        
            script.Parent.MouseButton1Down:Connect(function()
                toreturn = 2
                script.Parent.Parent.Parent:Destroy()
            end)
        end
        
        coroutine.wrap(UMBLVK_fake_script)()
        coroutine.wrap(CYFK_fake_script)()
        coroutine.wrap(CILKM_fake_script)()
        coroutine.wrap(PAWMI_fake_script)()
        coroutine.wrap(LCJM_fake_script)()
        repeat
            task.wait()
        until toreturn ~= nil
        return toreturn
    elseif style == 3 then
        local Converted = {
            ["_messagebox"] = Instance.new("ScreenGui");
            ["_Frame"] = Instance.new("Frame");
            ["_yes"] = Instance.new("TextButton");
            ["_LocalScript"] = Instance.new("LocalScript");
            ["_shadow"] = Instance.new("Frame");
            ["_main"] = Instance.new("TextLabel");
            ["_title"] = Instance.new("TextLabel");
            ["_x"] = Instance.new("TextButton");
            ["_LocalScript1"] = Instance.new("LocalScript");
            ["_Dragify"] = Instance.new("LocalScript");
            ["_cancel"] = Instance.new("TextButton");
            ["_LocalScript2"] = Instance.new("LocalScript");
            ["_no"] = Instance.new("TextButton");
            ["_LocalScript3"] = Instance.new("LocalScript");
        }
        
        
        Converted["_messagebox"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        Converted["_messagebox"].Name = "messagebox"
        Converted["_messagebox"].Parent = game:GetService("CoreGui")
        
        Converted["_Frame"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_Frame"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_Frame"].BorderSizePixel = 0
        Converted["_Frame"].Position = UDim2.new(0.456591636, 0, 0.420382172, 0)
        Converted["_Frame"].Size = UDim2.new(0, 263, 0, 163)
        Converted["_Frame"].Parent = Converted["_messagebox"]
        
        Converted["_yes"].Font = Enum.Font.SourceSans
        Converted["_yes"].Text = "Yes"
        Converted["_yes"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_yes"].TextSize = 14
        Converted["_yes"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_yes"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_yes"].BorderSizePixel = 2
        Converted["_yes"].Position = UDim2.new(0.0421188995, 0, 0.792376757, 0)
        Converted["_yes"].Size = UDim2.new(0, 73, 0, 23)
        Converted["_yes"].ZIndex = 2
        Converted["_yes"].Name = "yes"
        Converted["_yes"].Parent = Converted["_Frame"]
        
        Converted["_shadow"].BackgroundColor3 = Color3.fromRGB(240.0000160932541, 240.0000160932541, 240.0000160932541)
        Converted["_shadow"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_shadow"].BorderSizePixel = 0
        Converted["_shadow"].Position = UDim2.new(0, 0, 0.736196339, 0)
        Converted["_shadow"].Size = UDim2.new(0, 262, 0, 43)
        Converted["_shadow"].Name = "shadow"
        Converted["_shadow"].Parent = Converted["_Frame"]
        
        Converted["_main"].Font = Enum.Font.SourceSans
        Converted["_main"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_main"].TextSize = 14
        Converted["_main"].Text = text
        Converted["_main"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_main"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_main"].BorderSizePixel = 0
        Converted["_main"].Position = UDim2.new(0.434926301, 0, 0.257668704, 0)
        Converted["_main"].Size = UDim2.new(0, 48, 0, 50)
        Converted["_main"].Name = "main"
        Converted["_main"].Parent = Converted["_Frame"]
        
        Converted["_title"].Font = Enum.Font.SourceSans
        Converted["_title"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_title"].TextSize = 14
        Converted["_title"].Text = caption
        Converted["_title"].TextXAlignment = Enum.TextXAlignment.Left
        Converted["_title"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_title"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_title"].BorderSizePixel = 0
        Converted["_title"].Size = UDim2.new(0, 230, 0, 33)
        Converted["_title"].Name = "title"
        Converted["_title"].Parent = Converted["_Frame"]
        
        Converted["_x"].Font = Enum.Font.SourceSans
        Converted["_x"].Text = "X"
        Converted["_x"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_x"].TextSize = 14
        Converted["_x"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_x"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_x"].BorderSizePixel = 0
        Converted["_x"].Position = UDim2.new(0.878302157, 0, 0, 0)
        Converted["_x"].Size = UDim2.new(0, 32, 0, 26)
        Converted["_x"].Name = "x"
        Converted["_x"].Parent = Converted["_Frame"]
        
        Converted["_cancel"].Font = Enum.Font.SourceSans
        Converted["_cancel"].Text = "Cancel"
        Converted["_cancel"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_cancel"].TextSize = 14
        Converted["_cancel"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_cancel"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_cancel"].BorderSizePixel = 2
        Converted["_cancel"].Position = UDim2.new(0.688506722, 0, 0.792376757, 0)
        Converted["_cancel"].Size = UDim2.new(0, 73, 0, 23)
        Converted["_cancel"].ZIndex = 2
        Converted["_cancel"].Name = "cancel"
        Converted["_cancel"].Parent = Converted["_Frame"]
        
        Converted["_no"].Font = Enum.Font.SourceSans
        Converted["_no"].Text = "No"
        Converted["_no"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_no"].TextSize = 14
        Converted["_no"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_no"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_no"].BorderSizePixel = 2
        Converted["_no"].Position = UDim2.new(0.357708246, 0, 0.792376757, 0)
        Converted["_no"].Size = UDim2.new(0, 73, 0, 23)
        Converted["_no"].ZIndex = 2
        Converted["_no"].Name = "no"
        Converted["_no"].Parent = Converted["_Frame"]
        
        local fake_module_scripts = {}
        
        local toreturn = nil

        local function KWWQAE_fake_script() -- Fake Script: StarterGui.messagebox.Frame.yes.LocalScript
            local script = Instance.new("LocalScript")
            script.Name = "LocalScript"
            script.Parent = Converted["_yes"]
            local req = require
            local require = function(obj)
                local fake = fake_module_scripts[obj]
                if fake then
                    return fake()
                end
                return req(obj)
            end
        
            script.Parent.MouseButton1Down:Connect(function()
                toreturn = 1
                script.Parent.Parent.Parent:Destroy()
            end)
        end
        local function XPJIE_fake_script() -- Fake Script: StarterGui.messagebox.Frame.x.LocalScript
            local script = Instance.new("LocalScript")
            script.Name = "LocalScript"
            script.Parent = Converted["_x"]
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
        local function OTOWUOS_fake_script() -- Fake Script: StarterGui.messagebox.Frame.Dragify
            local script = Instance.new("LocalScript")
            script.Name = "Dragify"
            script.Parent = Converted["_Frame"]
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
                    game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.15), {Position = Position}):Play()
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
        local function FPOQ_fake_script() -- Fake Script: StarterGui.messagebox.Frame.cancel.LocalScript
            local script = Instance.new("LocalScript")
            script.Name = "LocalScript"
            script.Parent = Converted["_cancel"]
            local req = require
            local require = function(obj)
                local fake = fake_module_scripts[obj]
                if fake then
                    return fake()
                end
                return req(obj)
            end
        
            script.Parent.MouseButton1Down:Connect(function()
                toreturn = 3
                script.Parent.Parent.Parent:Destroy()
            end)
        end
        local function GMWBUX_fake_script() -- Fake Script: StarterGui.messagebox.Frame.no.LocalScript
            local script = Instance.new("LocalScript")
            script.Name = "LocalScript"
            script.Parent = Converted["_no"]
            local req = require
            local require = function(obj)
                local fake = fake_module_scripts[obj]
                if fake then
                    return fake()
                end
                return req(obj)
            end
        
            script.Parent.MouseButton1Down:Connect(function()
                toreturn = 2
                script.Parent.Parent.Parent:Destroy()
            end)
        end
        
        coroutine.wrap(KWWQAE_fake_script)()
        coroutine.wrap(XPJIE_fake_script)()
        coroutine.wrap(OTOWUOS_fake_script)()
        coroutine.wrap(FPOQ_fake_script)()
        coroutine.wrap(GMWBUX_fake_script)()
        repeat
            task.wait()
        until toreturn ~= nil
        return toreturn
    elseif style == 4 then
        local Converted = {
            ["_messagebox"] = Instance.new("ScreenGui");
            ["_Frame"] = Instance.new("Frame");
            ["_yes"] = Instance.new("TextButton");
            ["_LocalScript"] = Instance.new("LocalScript");
            ["_shadow"] = Instance.new("Frame");
            ["_main"] = Instance.new("TextLabel");
            ["_title"] = Instance.new("TextLabel");
            ["_x"] = Instance.new("TextButton");
            ["_LocalScript1"] = Instance.new("LocalScript");
            ["_Dragify"] = Instance.new("LocalScript");
            ["_no"] = Instance.new("TextButton");
            ["_LocalScript2"] = Instance.new("LocalScript");
        }
        
        
        Converted["_messagebox"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        Converted["_messagebox"].Name = "messagebox"
        Converted["_messagebox"].Parent = game:GetService("CoreGui")
        
        Converted["_Frame"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_Frame"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_Frame"].BorderSizePixel = 0
        Converted["_Frame"].Position = UDim2.new(0.456591636, 0, 0.420382172, 0)
        Converted["_Frame"].Size = UDim2.new(0, 263, 0, 163)
        Converted["_Frame"].Parent = Converted["_messagebox"]
        
        Converted["_yes"].Font = Enum.Font.SourceSans
        Converted["_yes"].Text = "Yes"
        Converted["_yes"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_yes"].TextSize = 14
        Converted["_yes"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_yes"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_yes"].BorderSizePixel = 2
        Converted["_yes"].Position = UDim2.new(0.156187341, 0, 0.792376757, 0)
        Converted["_yes"].Size = UDim2.new(0, 73, 0, 23)
        Converted["_yes"].ZIndex = 2
        Converted["_yes"].Name = "yes"
        Converted["_yes"].Parent = Converted["_Frame"]
        
        Converted["_shadow"].BackgroundColor3 = Color3.fromRGB(240.0000160932541, 240.0000160932541, 240.0000160932541)
        Converted["_shadow"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_shadow"].BorderSizePixel = 0
        Converted["_shadow"].Position = UDim2.new(0, 0, 0.736196339, 0)
        Converted["_shadow"].Size = UDim2.new(0, 262, 0, 43)
        Converted["_shadow"].Name = "shadow"
        Converted["_shadow"].Parent = Converted["_Frame"]
        
        Converted["_main"].Font = Enum.Font.SourceSans
        Converted["_main"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_main"].TextSize = 14
        Converted["_main"].Text = text
        Converted["_main"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_main"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_main"].BorderSizePixel = 0
        Converted["_main"].Position = UDim2.new(0.434926301, 0, 0.257668704, 0)
        Converted["_main"].Size = UDim2.new(0, 48, 0, 50)
        Converted["_main"].Name = "main"
        Converted["_main"].Parent = Converted["_Frame"]
        
        Converted["_title"].Font = Enum.Font.SourceSans
        Converted["_title"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_title"].TextSize = 14
        Converted["_title"].Text = caption
        Converted["_title"].TextXAlignment = Enum.TextXAlignment.Left
        Converted["_title"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_title"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_title"].BorderSizePixel = 0
        Converted["_title"].Size = UDim2.new(0, 230, 0, 33)
        Converted["_title"].Name = "title"
        Converted["_title"].Parent = Converted["_Frame"]
        
        Converted["_x"].Font = Enum.Font.SourceSans
        Converted["_x"].Text = "X"
        Converted["_x"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_x"].TextSize = 14
        Converted["_x"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_x"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_x"].BorderSizePixel = 0
        Converted["_x"].Position = UDim2.new(0.878302157, 0, 0, 0)
        Converted["_x"].Size = UDim2.new(0, 32, 0, 26)
        Converted["_x"].Name = "x"
        Converted["_x"].Parent = Converted["_Frame"]
        
        Converted["_no"].Font = Enum.Font.SourceSans
        Converted["_no"].Text = "No"
        Converted["_no"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_no"].TextSize = 14
        Converted["_no"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_no"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_no"].BorderSizePixel = 2
        Converted["_no"].Position = UDim2.new(0.593449712, 0, 0.792376757, 0)
        Converted["_no"].Size = UDim2.new(0, 73, 0, 23)
        Converted["_no"].ZIndex = 2
        Converted["_no"].Name = "no"
        Converted["_no"].Parent = Converted["_Frame"]
        
        
        local fake_module_scripts = {}
        
        local toreturn = nil
        
        local function AAEXTH_fake_script() -- Fake Script: StarterGui.messagebox.Frame.yes.LocalScript
            local script = Instance.new("LocalScript")
            script.Name = "LocalScript"
            script.Parent = Converted["_yes"]
            local req = require
            local require = function(obj)
                local fake = fake_module_scripts[obj]
                if fake then
                    return fake()
                end
                return req(obj)
            end
        
            script.Parent.MouseButton1Down:Connect(function()
                toreturn = 1
                script.Parent.Parent.Parent:Destroy()
            end)
        end
        local function EAXIAEM_fake_script() -- Fake Script: StarterGui.messagebox.Frame.x.LocalScript
            local script = Instance.new("LocalScript")
            script.Name = "LocalScript"
            script.Parent = Converted["_x"]
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
        local function SSBNBX_fake_script() -- Fake Script: StarterGui.messagebox.Frame.Dragify
            local script = Instance.new("LocalScript")
            script.Name = "Dragify"
            script.Parent = Converted["_Frame"]
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
                    game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.15), {Position = Position}):Play()
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
        local function HDLYUB_fake_script() -- Fake Script: StarterGui.messagebox.Frame.no.LocalScript
            local script = Instance.new("LocalScript")
            script.Name = "LocalScript"
            script.Parent = Converted["_no"]
            local req = require
            local require = function(obj)
                local fake = fake_module_scripts[obj]
                if fake then
                    return fake()
                end
                return req(obj)
            end
        
            script.Parent.MouseButton1Down:Connect(function()
                toreturn = 2
                script.Parent.Parent.Parent:Destroy()
            end)
        end
        
        coroutine.wrap(AAEXTH_fake_script)()
        coroutine.wrap(EAXIAEM_fake_script)()
        coroutine.wrap(SSBNBX_fake_script)()
        coroutine.wrap(HDLYUB_fake_script)()
        repeat
            task.wait()
        until toreturn ~= nil
        return toreturn
    elseif style == 5 then
        local Converted = {
            ["_messagebox"] = Instance.new("ScreenGui");
            ["_Frame"] = Instance.new("Frame");
            ["_retry"] = Instance.new("TextButton");
            ["_LocalScript"] = Instance.new("LocalScript");
            ["_shadow"] = Instance.new("Frame");
            ["_main"] = Instance.new("TextLabel");
            ["_title"] = Instance.new("TextLabel");
            ["_x"] = Instance.new("TextButton");
            ["_LocalScript1"] = Instance.new("LocalScript");
            ["_Dragify"] = Instance.new("LocalScript");
            ["_cancel"] = Instance.new("TextButton");
            ["_LocalScript2"] = Instance.new("LocalScript");
        }
        
        Converted["_messagebox"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        Converted["_messagebox"].Name = "messagebox"
        Converted["_messagebox"].Parent = game:GetService("CoreGui")
        
        Converted["_Frame"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_Frame"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_Frame"].BorderSizePixel = 0
        Converted["_Frame"].Position = UDim2.new(0.456591636, 0, 0.420382172, 0)
        Converted["_Frame"].Size = UDim2.new(0, 263, 0, 163)
        Converted["_Frame"].Parent = Converted["_messagebox"]
        
        Converted["_retry"].Font = Enum.Font.SourceSans
        Converted["_retry"].Text = "Retry"
        Converted["_retry"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_retry"].TextSize = 14
        Converted["_retry"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_retry"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_retry"].BorderSizePixel = 2
        Converted["_retry"].Position = UDim2.new(0.156187341, 0, 0.792376757, 0)
        Converted["_retry"].Size = UDim2.new(0, 73, 0, 23)
        Converted["_retry"].ZIndex = 2
        Converted["_retry"].Name = "retry"
        Converted["_retry"].Parent = Converted["_Frame"]
        
        Converted["_shadow"].BackgroundColor3 = Color3.fromRGB(240.0000160932541, 240.0000160932541, 240.0000160932541)
        Converted["_shadow"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_shadow"].BorderSizePixel = 0
        Converted["_shadow"].Position = UDim2.new(0, 0, 0.736196339, 0)
        Converted["_shadow"].Size = UDim2.new(0, 262, 0, 43)
        Converted["_shadow"].Name = "shadow"
        Converted["_shadow"].Parent = Converted["_Frame"]
        
        Converted["_main"].Font = Enum.Font.SourceSans
        Converted["_main"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_main"].TextSize = 14
        Converted["_main"].Text = text
        Converted["_main"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_main"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_main"].BorderSizePixel = 0
        Converted["_main"].Position = UDim2.new(0.434926301, 0, 0.257668704, 0)
        Converted["_main"].Size = UDim2.new(0, 48, 0, 50)
        Converted["_main"].Name = "main"
        Converted["_main"].Parent = Converted["_Frame"]
        
        Converted["_title"].Font = Enum.Font.SourceSans
        Converted["_title"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_title"].TextSize = 14
        Converted["_title"].Text = caption
        Converted["_title"].TextXAlignment = Enum.TextXAlignment.Left
        Converted["_title"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_title"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_title"].BorderSizePixel = 0
        Converted["_title"].Size = UDim2.new(0, 230, 0, 33)
        Converted["_title"].Name = "title"
        Converted["_title"].Parent = Converted["_Frame"]
        
        Converted["_x"].Font = Enum.Font.SourceSans
        Converted["_x"].Text = "X"
        Converted["_x"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_x"].TextSize = 14
        Converted["_x"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_x"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_x"].BorderSizePixel = 0
        Converted["_x"].Position = UDim2.new(0.878302157, 0, 0, 0)
        Converted["_x"].Size = UDim2.new(0, 32, 0, 26)
        Converted["_x"].Name = "x"
        Converted["_x"].Parent = Converted["_Frame"]
        
        Converted["_cancel"].Font = Enum.Font.SourceSans
        Converted["_cancel"].Text = "Cancel"
        Converted["_cancel"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_cancel"].TextSize = 14
        Converted["_cancel"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_cancel"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_cancel"].BorderSizePixel = 2
        Converted["_cancel"].Position = UDim2.new(0.593449712, 0, 0.792376757, 0)
        Converted["_cancel"].Size = UDim2.new(0, 73, 0, 23)
        Converted["_cancel"].ZIndex = 2
        Converted["_cancel"].Name = "cancel"
        Converted["_cancel"].Parent = Converted["_Frame"]
        
        local fake_module_scripts = {}
        
        local toreturn = nil
        
        local function SIYHBZ_fake_script() -- Fake Script: StarterGui.messagebox.Frame.retry.LocalScript
            local script = Instance.new("LocalScript")
            script.Name = "LocalScript"
            script.Parent = Converted["_retry"]
            local req = require
            local require = function(obj)
                local fake = fake_module_scripts[obj]
                if fake then
                    return fake()
                end
                return req(obj)
            end
        
            script.Parent.MouseButton1Down:Connect(function()
                toreturn = 1
                script.Parent.Parent.Parent:Destroy()
            end)
        end
        local function YCWE_fake_script() -- Fake Script: StarterGui.messagebox.Frame.x.LocalScript
            local script = Instance.new("LocalScript")
            script.Name = "LocalScript"
            script.Parent = Converted["_x"]
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
        local function JZCHVUC_fake_script() -- Fake Script: StarterGui.messagebox.Frame.Dragify
            local script = Instance.new("LocalScript")
            script.Name = "Dragify"
            script.Parent = Converted["_Frame"]
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
                    game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.15), {Position = Position}):Play()
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
        local function RSMXOX_fake_script() -- Fake Script: StarterGui.messagebox.Frame.cancel.LocalScript
            local script = Instance.new("LocalScript")
            script.Name = "LocalScript"
            script.Parent = Converted["_cancel"]
            local req = require
            local require = function(obj)
                local fake = fake_module_scripts[obj]
                if fake then
                    return fake()
                end
                return req(obj)
            end
        
            script.Parent.MouseButton1Down:Connect(function()
                toreturn = 2
                script.Parent.Parent.Parent:Destroy()
            end)
        end
        
        coroutine.wrap(SIYHBZ_fake_script)()
        coroutine.wrap(YCWE_fake_script)()
        coroutine.wrap(JZCHVUC_fake_script)()
        coroutine.wrap(RSMXOX_fake_script)()
        repeat
            task.wait()
        until toreturn ~= nil
        return toreturn
    elseif style == 6 then
        local Converted = {
            ["_messagebox"] = Instance.new("ScreenGui");
            ["_Frame"] = Instance.new("Frame");
            ["_cancel"] = Instance.new("TextButton");
            ["_LocalScript"] = Instance.new("LocalScript");
            ["_shadow"] = Instance.new("Frame");
            ["_main"] = Instance.new("TextLabel");
            ["_title"] = Instance.new("TextLabel");
            ["_x"] = Instance.new("TextButton");
            ["_LocalScript1"] = Instance.new("LocalScript");
            ["_Dragify"] = Instance.new("LocalScript");
            ["_try"] = Instance.new("TextButton");
            ["_LocalScript2"] = Instance.new("LocalScript");
            ["_continue"] = Instance.new("TextButton");
            ["_LocalScript3"] = Instance.new("LocalScript");
        }
        
        
        Converted["_messagebox"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        Converted["_messagebox"].Name = "messagebox"
        Converted["_messagebox"].Parent = game:GetService("CoreGui")
        
        Converted["_Frame"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_Frame"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_Frame"].BorderSizePixel = 0
        Converted["_Frame"].Position = UDim2.new(0.456591636, 0, 0.420382172, 0)
        Converted["_Frame"].Size = UDim2.new(0, 263, 0, 163)
        Converted["_Frame"].Parent = Converted["_messagebox"]
        
        Converted["_cancel"].Font = Enum.Font.SourceSans
        Converted["_cancel"].Text = "Cancel"
        Converted["_cancel"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_cancel"].TextSize = 14
        Converted["_cancel"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_cancel"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_cancel"].BorderSizePixel = 2
        Converted["_cancel"].Position = UDim2.new(0.0421188995, 0, 0.792376757, 0)
        Converted["_cancel"].Size = UDim2.new(0, 73, 0, 23)
        Converted["_cancel"].ZIndex = 2
        Converted["_cancel"].Name = "cancel"
        Converted["_cancel"].Parent = Converted["_Frame"]
        
        Converted["_shadow"].BackgroundColor3 = Color3.fromRGB(240.0000160932541, 240.0000160932541, 240.0000160932541)
        Converted["_shadow"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_shadow"].BorderSizePixel = 0
        Converted["_shadow"].Position = UDim2.new(0, 0, 0.736196339, 0)
        Converted["_shadow"].Size = UDim2.new(0, 262, 0, 43)
        Converted["_shadow"].Name = "shadow"
        Converted["_shadow"].Parent = Converted["_Frame"]
        
        Converted["_main"].Font = Enum.Font.SourceSans
        Converted["_main"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_main"].TextSize = 14
        Converted["_main"].Text = text
        Converted["_main"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_main"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_main"].BorderSizePixel = 0
        Converted["_main"].Position = UDim2.new(0.434926301, 0, 0.257668704, 0)
        Converted["_main"].Size = UDim2.new(0, 48, 0, 50)
        Converted["_main"].Name = "main"
        Converted["_main"].Parent = Converted["_Frame"]
        
        Converted["_title"].Font = Enum.Font.SourceSans
        Converted["_title"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_title"].TextSize = 14
        Converted["_title"].Text = caption
        Converted["_title"].TextXAlignment = Enum.TextXAlignment.Left
        Converted["_title"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_title"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_title"].BorderSizePixel = 0
        Converted["_title"].Size = UDim2.new(0, 230, 0, 33)
        Converted["_title"].Name = "title"
        Converted["_title"].Parent = Converted["_Frame"]
        
        Converted["_x"].Font = Enum.Font.SourceSans
        Converted["_x"].Text = "X"
        Converted["_x"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_x"].TextSize = 14
        Converted["_x"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_x"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_x"].BorderSizePixel = 0
        Converted["_x"].Position = UDim2.new(0.878302157, 0, 0, 0)
        Converted["_x"].Size = UDim2.new(0, 32, 0, 26)
        Converted["_x"].Name = "x"
        Converted["_x"].Parent = Converted["_Frame"]
        
        Converted["_try"].Font = Enum.Font.SourceSans
        Converted["_try"].Text = "Try Again"
        Converted["_try"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_try"].TextSize = 14
        Converted["_try"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_try"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_try"].BorderSizePixel = 2
        Converted["_try"].Position = UDim2.new(0.357708246, 0, 0.792376757, 0)
        Converted["_try"].Size = UDim2.new(0, 73, 0, 23)
        Converted["_try"].ZIndex = 2
        Converted["_try"].Name = "try"
        Converted["_try"].Parent = Converted["_Frame"]
        
        Converted["_continue"].Font = Enum.Font.SourceSans
        Converted["_continue"].Text = "Continue"
        Converted["_continue"].TextColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_continue"].TextSize = 14
        Converted["_continue"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Converted["_continue"].BorderColor3 = Color3.fromRGB(0, 0, 0)
        Converted["_continue"].BorderSizePixel = 2
        Converted["_continue"].Position = UDim2.new(0.684704423, 0, 0.792376757, 0)
        Converted["_continue"].Size = UDim2.new(0, 73, 0, 23)
        Converted["_continue"].ZIndex = 2
        Converted["_continue"].Name = "continue"
        Converted["_continue"].Parent = Converted["_Frame"]
        
        local fake_module_scripts = {}
        
        local toreturn = nil

        local function LCBJCC_fake_script() -- Fake Script: StarterGui.messagebox.Frame.cancel.LocalScript
            local script = Instance.new("LocalScript")
            script.Name = "LocalScript"
            script.Parent = Converted["_cancel"]
            local req = require
            local require = function(obj)
                local fake = fake_module_scripts[obj]
                if fake then
                    return fake()
                end
                return req(obj)
            end
        
            script.Parent.MouseButton1Down:Connect(function()
                toreturn = 1
                script.Parent.Parent.Parent:Destroy()
            end)
        end
        local function PRRFB_fake_script() -- Fake Script: StarterGui.messagebox.Frame.x.LocalScript
            local script = Instance.new("LocalScript")
            script.Name = "LocalScript"
            script.Parent = Converted["_x"]
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
        local function UVGH_fake_script() -- Fake Script: StarterGui.messagebox.Frame.Dragify
            local script = Instance.new("LocalScript")
            script.Name = "Dragify"
            script.Parent = Converted["_Frame"]
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
                    game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.15), {Position = Position}):Play()
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
        local function IUOJ_fake_script() -- Fake Script: StarterGui.messagebox.Frame.try.LocalScript
            local script = Instance.new("LocalScript")
            script.Name = "LocalScript"
            script.Parent = Converted["_try"]
            local req = require
            local require = function(obj)
                local fake = fake_module_scripts[obj]
                if fake then
                    return fake()
                end
                return req(obj)
            end
        
            script.Parent.MouseButton1Down:Connect(function()
                toreturn = 2
                script.Parent.Parent.Parent:Destroy()
            end)
        end
        local function ELHCM_fake_script() -- Fake Script: StarterGui.messagebox.Frame.continue.LocalScript
            local script = Instance.new("LocalScript")
            script.Name = "LocalScript"
            script.Parent = Converted["_continue"]
            local req = require
            local require = function(obj)
                local fake = fake_module_scripts[obj]
                if fake then
                    return fake()
                end
                return req(obj)
            end
        
            script.Parent.MouseButton1Down:Connect(function()
                toreturn = 3
                script.Parent.Parent.Parent:Destroy()
            end)
        end
        
        coroutine.wrap(LCBJCC_fake_script)()
        coroutine.wrap(PRRFB_fake_script)()
        coroutine.wrap(UVGH_fake_script)()
        coroutine.wrap(IUOJ_fake_script)()
        coroutine.wrap(ELHCM_fake_script)()
        repeat
            task.wait()
        until toreturn ~= nil
        return toreturn
    end
end
