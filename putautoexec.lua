local hiddenProperties = {}

function gethiddenproperty(instance, property)
    assert(typeof(instance) == "Instance", "invalid argument #1 to 'gethiddenproperty' (Instance expected, got " .. typeof(instance) .. ") ", 2)
    assert(type(property) == "string", "invalid argument #2 to 'gethiddenproperty' (string expected, got " .. type(property) .. ") ", 2)
    
    local success, value = pcall(function()
        return instance[property]
    end)
    
    if success then
        return value, false
    end
    
    if property == "size_xml" and instance:IsA("Fire") then
        return hiddenProperties[instance] and hiddenProperties[instance][property] or 5, true
    end
    
    error("Unable to get hidden property '" .. property .. "' from " .. instance.ClassName, 2)
end

function sethiddenproperty(instance, property, value)
    assert(typeof(instance) == "Instance", "invalid argument #1 to 'sethiddenproperty' (Instance expected, got " .. typeof(instance) .. ") ", 2) 
    assert(type(property) == "string", "invalid argument #2 to 'sethiddenproperty' (string expected, got " .. type(property) .. ") ", 2)
    
    if property == "size_xml" and instance:IsA("Fire") then
        if not hiddenProperties[instance] then
            hiddenProperties[instance] = {}
        end
        hiddenProperties[instance][property] = value
        return true
    end
    
    local success = pcall(function()
        instance[property] = value
    end)
    
    if success then
        return false
    end
    
    error("Unable to set hidden property '" .. property .. "' on " .. instance.ClassName, 2)
end
