getgenv().gethui = function()
    if cloneref then
        return cloneref(game:GetService("CoreGui"))
    else
        return game:GetService("CoreGui")
    end
end
