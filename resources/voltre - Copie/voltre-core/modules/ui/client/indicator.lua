local cachedSafezone = nil

AddEventHandler('voltre:safezone:update', function(data)
    cachedSafezone = data
    SendNUIMessage({
        action = "indicator:update",
        data = {
            id = "safezone",
            show = data.inSafezone,
            label = data.inSafezone and "Zone protégée" or nil,
            icon = data.inSafezone and "safezone" or nil,
        }
    })
end)

AddEventHandler('voltre:safezone:hide', function()
    cachedSafezone = nil
    SendNUIMessage({
        action = "indicator:update",
        data = {
            id = "safezone",
            show = false,
        }
    })
end)

AddEventHandler('playerSpawned', function()
    if cachedSafezone then
        cachedSafezone = nil
        SendNUIMessage({
            action = "indicator:update",
            data = {
                id = "safezone",
                show = false,
            }
        })
    end
end)
