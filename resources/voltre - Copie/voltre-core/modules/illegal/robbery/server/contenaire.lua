RegisterNetEvent('cfx-container:server:containerSync')
AddEventHandler('cfx-container:server:containerSync', function(coords, rotation)
    TriggerClientEvent('cfx-container:client:containerSync', -1, coords, rotation)
    local id = math.random(0,9999)
    TriggerClientEvent('voltre:police:addchoicenotif', -1, id, "Braquage Contenaire", coords, 478, 15,"container", "Un citoyen a vu un quelqu'un ouvrir un contenaire avec une meuleuse")
end)

RegisterNetEvent('cfx-container:server:objectSync')
AddEventHandler('cfx-container:server:objectSync', function(e)
    TriggerClientEvent('cfx-container:client:objectSync', -1, e)
end)

RegisterNetEvent('cfx-container:server:lockSync')
AddEventHandler('cfx-container:server:lockSync', function(index)
    TriggerClientEvent('cfx-container:client:lockSync', -1, index)
end)

RegisterNetEvent('voltre:conteneur:server:take')
AddEventHandler('voltre:conteneur:server:take', function(ID)
    time = os.time()
    TriggerClientEvent("voltre:conteneur:client:take", -1, ID, time)
end)

RegisterNetEvent('voltre:conteneur:client:OpenC')
AddEventHandler('voltre:conteneur:client:OpenC', function(ID)
    source = source
    time = os.time()
    TriggerClientEvent("voltre:conteneur:client:OpenC", source, ID, time)
end)

ESX.RegisterUsableItem("drill", function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    chance = math.random(Config.Chance[1], Config.Chance[2])
    if chance == 1 then
        xPlayer.removeInventoryItem("drill", 1)
        --TriggerClientEvent("voltre:conteneur:client:break", source) @TODO : add break animation
    else
        TriggerClientEvent("voltre:conteneur:client:dril", source)
    end
end)

RegisterNetEvent('voltre:giveItem')
AddEventHandler('voltre:giveItem', function(type_item, type_loot, cb_togive, data)
    src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    if type_item == "item" then
        if type_loot == "item" then
            local xPlayer = ESX.GetPlayerFromId(src)
            cb_togive = math.random(data.min, data.max)
            xPlayer.addInventoryItem(data.item, cb_togive)
            TriggerClientEvent('esx:showNotification', src, "Vous avez reçu "..cb_togive.." "..data.label)
        else
            xPlayer.addWeapon(data.item, cb_togive)
            TriggerClientEvent('esx:showNotification', src, "Vous avez reçu "..cb_togive.." "..data.label)
        end
    else
        xPlayer.addAccountMoney(type_loot, cb_togive)
        if type_loot == "money" then
            TriggerClientEvent('esx:showNotification', src, "Vous avez reçu "..cb_togive.." $")
        else
            TriggerClientEvent('esx:showNotification', src, "Vous avez reçu "..cb_togive.." $ sale")
        end
    end

    local gangname = xPlayer.getJob2() and xPlayer.getJob2().name or "unemployed"
    if gangname ~= "unemployed" then
        exports["voltre-core"]:ProgressGangMission(gangname, "weekly_robbery_spree", 1)
        if type_loot == "dirtycash" then
            exports["voltre-core"]:ProgressGangMission(gangname, "daily_dirty_money", cb_togive)
            exports["voltre-core"]:ProgressGangMission(gangname, "weekly_dirty_money_mass", cb_togive)
        end
        exports["voltre-core"]:AddGangXP(gangname, 40)
    end

    Citizen.CreateThread(function ()
        Wait(120000)
        TriggerClientEvent('voltre:police:removeallblipswithtag', -1, "container")
    end)
end)



