getgenv().getplayer = function(plr)
    if type(plr) ~= "string" then
        return error("Invalid Type, must be a string.")
    end
    for i,v in pairs(game:GetService("Players"):GetPlayers()) do
        if v.Name == plr or v.DisplayName == plr then
            return v
        end
    end
end