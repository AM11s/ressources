RegisterNetEvent('voltre:police:blips')
AddEventHandler('voltre:police:blips', function(id, name, pos,sprite, color, tag)
    if voltre.data.jobs.polices.list[ESX.PlayerData.job.name] ~= nil then
        if tag == nil then tag = 'default' end
        ESX.addBlips({
            name = tag..':police-blip_'..id,
            label = name,
            category = nil,
            position = vector3(pos.x,pos.y,pos.z),
            sprite = sprite,
            display = 4,
            scale = 0.75,
            color = color
        })
    end
end)

RegisterNetEvent('voltre:police:removeblips')
AddEventHandler('voltre:police:removeblips', function(id)
    if voltre.data.jobs.polices.list[ESX.PlayerData.job.name] then
        ESX.removeBlip('police-blip_'..id)
    end
end)

RegisterNetEvent('voltre:police:removeallblips')
AddEventHandler('voltre:police:removeallblips', function()
    if voltre.data.jobs.polices.list[ESX.PlayerData.job.name] then
        local listBlips = ESX.getBasicBlips()
        for k,v in pairs(listBlips) do
            if string.find(k, "police-blip") then
                ESX.removeBlip(k)
            end
        end
    end
end)

RegisterNetEvent('voltre:police:removeallblipswithtag')
AddEventHandler('voltre:police:removeallblipswithtag', function(tag)
    if voltre.data.jobs.polices.list[ESX.PlayerData.job.name] then
        local listBlips = ESX.getBasicBlips()
        for k,v in pairs(listBlips) do
            if string.find(k, "police-blip") and string.find(k, tag) then
                ESX.removeBlip(k)
            end
        end
    end
end)

RegisterNetEvent('voltre:police:notif')
AddEventHandler('voltre:police:notif', function(msg, onlyinservice)
    if voltre.data.jobs.polices.list[ESX.PlayerData.job.name] then
        if onlyinservice then
            if ServicePoliceCheck then 
                ESX.ShowNotification(msg)
            end
        else
            ESX.ShowNotification(msg)
        end
    end
end)


RegisterNetEvent('voltre:police:addchoicenotif')
AddEventHandler('voltre:police:addchoicenotif', function(id, name, pos,sprite, color, tag,msg)
    if voltre.data.jobs.polices.list[ESX.PlayerData.job.name] then
        if tag == nil then tag = 'default' end
        ESX.ShowAccept(msg, function(result)
            if result then
                ESX.addBlips({
                    name = tag..':police-blip_'..id,
                    label = name,
                    category = nil,
                    position = vector3(pos.x,pos.y,pos.z),
                    sprite = sprite,
                    display = 4,
                    scale = 0.75,
                    color = color
                })
                SetNewWaypoint(pos.x,pos.y)
                ESX.ShowNotification("Un point sur votre GPS a était placé.")
                Citizen.CreateThread(function()
                    ESX.removeBlip(tag..':police-blip_'..id)
                end)
            end
        end)    
    end
end)
