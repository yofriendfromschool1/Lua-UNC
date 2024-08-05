getgenv().getplayer = function(name)
    return not name and getplayers()["LocalPlayer"] or getplayers()[name]
end
