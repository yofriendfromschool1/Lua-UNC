getgenv().newcclosure = function(func)
    local tab = getgenv()
    getgenv()[#tab+1] = func
end