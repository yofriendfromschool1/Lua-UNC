getgenv().join = function(placeID, jobID)
    game:GetService("TeleportService"):TeleportToPlaceInstance(placeID, jobID, getplayer())
end