RegisterNetEvent("voltre:setNewWayPoint", function(coords)
    ESX.ShowNotification("Un point a était poser sur votre carte.")
    SetNewWaypoint(voltre.fct.JsonCoordsToVect3(coords))
end)

-- @TODO: move to announcements file
RegisterNetEvent("voltre:annonce", function(text, Subtitle, time, sound)
    time = time or 1000
    Subtitle = Subtitle or ""
    voltre.fct.draw.CenteredAnnouncement(text, Subtitle, time)
    if sound ~= nil then
        PlaySoundFrontend(-1, sound[1], sound[2], true)
    end
end)