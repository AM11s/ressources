Citizen.CreateThread(function()
    Wait(2500)
    TriggerServerEvent("voltre:world:getServerInfo")
end)

RegisterNetEvent("voltre:world:serverInfo", function(data)
    voltre.data.server.days = data.day
    voltre.data.server.mounts = data.mount
    voltre.data.server.years = data.years
    voltre.data.server.maxplayers = data.maxplayers
end)