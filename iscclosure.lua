getgenv().iscclosure = function(func)
    local toreturn = false
    for i,v in pairs(getgenv()) do
        if v == func then
            toreturn = true
        end
    end
    return toreturn
end