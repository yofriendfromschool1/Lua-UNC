getgenv().clonefunction = function(func)
    return function(...)
        local done = func(...)
        local toreturn = {}
        if type(done) == "table" then
            for i, v in pairs(done) do
                toreturn[i] = v
            end
        else
            toreturn = done
        end
        return toreturn
    end
end