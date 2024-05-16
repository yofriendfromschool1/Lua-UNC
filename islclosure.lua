getgenv().islclosure = function(func)
    local toreturn = true
    for i,v in pairs(getgenv()) do
        if v == func then
            toreturn = false
        end
    end
    return toreturn
end