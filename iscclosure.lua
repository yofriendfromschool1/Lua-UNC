getgenv().iscclosure = function(func)
    for i,v in pairs(getgenv()) do
        if v == func then
            return true
        end
    end
    return false
end
