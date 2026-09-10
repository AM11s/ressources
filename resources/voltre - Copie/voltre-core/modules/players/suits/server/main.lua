local EquipedSuit = {}

RegisterNetEvent("esx:playerDropped", function(src, xPlayer)
    local idunique = xPlayer.getIdunique()
    if EquipedSuit[idunique] == nil then return end
    if EquipedSuit[idunique].type ~= item.name then return end
    EquipedSuit[idunique] = nil
end)

RegisterNetEvent('esx:onRemoveInventoryItem')
AddEventHandler('esx:onRemoveInventoryItem', function(src, item)
    local xPlayer = ESX.GetPlayerFromId(src)
    local idunique = xPlayer.getIdunique()
    if EquipedSuit[idunique] == nil then return end
    if EquipedSuit[idunique].type ~= item.name then return end

    TriggerClientEvent("Voltre:suit:equip", src, "unequip")
    Wait(2100)
    TriggerClientEvent("Voltre:skinchanger:loadSkin", src, EquipedSuit[idunique].skinSave)
    EquipedSuit[idunique] = nil
end)


local function equipSuit(src, name)
    if Config.Suits.allSuits[name] == nil then return end
    local xPlayer = ESX.GetPlayerFromId(src)
    local value = xPlayer.getInventoryItem(name)
    if value == nil or value.count < 1 then return end
    if EquipedSuit[xPlayer.idunique] ~= nil and EquipedSuit[xPlayer.idunique].type == name then
        TriggerClientEvent("Voltre:suit:equip", xPlayer.source, "unequip")
        Wait(2100)
        TriggerClientEvent("Voltre:skinchanger:loadSkin", xPlayer.source, EquipedSuit[xPlayer.idunique].skinSave)
        EquipedSuit[xPlayer.idunique] = nil
    else
        TriggerEvent("Voltre:esx_skin:getPlayerSkinSv", xPlayer.identifier, function(result)
            EquipedSuit[xPlayer.idunique] = {
                skinSave = result,
                type = name
            }
            TriggerClientEvent("Voltre:suit:equip", xPlayer.source, "equip", name)
            Wait(2100)
            if result.sex == 0 then
                TriggerClientEvent('Voltre:skinchanger:loadClothes', xPlayer.source, result, Config.Suits.allSuits[name].skins)
            else
                TriggerClientEvent('Voltre:skinchanger:loadClothes', xPlayer.source, result, Config.Suits.allSuits[name].skins2)
            end
        end)
    end
end

Citizen.CreateThread(function()
    for k,v in pairs(Config.Suits.allSuits) do
        ESX.RegisterUsableItem(k, function(source)
            equipSuit(source, k)
        end)
        Wait(400)
    end
end)
