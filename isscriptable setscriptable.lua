local ssbs = {}

function isscriptable(object, property)
    if object and typeof(object) == 'Instance' then
        local s, r = pcall(function()
            return ssbs[object][property]
        end)
        if s and r ~= nil then
            return r
        end
        local s, r = pcall(function()
            return object[property] ~= nil
        end)
        return s and r
    end
    return false
end

function setscriptable(object, property, bool)
    if object and typeof(object) == 'Instance' and property then
        local scriptable = isscriptable(object, property)
        local s = pcall(function()
            ssbs[object][property] = bool
        end)
        if not s then
            ssbs[object] = {[property] = bool}
        end
        return scriptable
    end
end