local function IsMale()
    return GetEntityModel(PlayerPedId()) == GetHashKey("mp_m_freemode_01")
end

-- Disabled - voltre-core handles inventory NUI
-- AddEventHandler("inventory:open", function(leftData, leftWeight)
--     setInInterface("inventory")
--     SetNuiFocus(true, true)
--     SetNuiFocusKeepInput(true)
--     DisplayRadar(false)
--     voltre.DisplayHud(false)
--     voltre.ActiveFrontend(false)
--     
--     SendNUIMessage({ type = "inventory:setMaxLeftWeight", data = { weight = leftWeight } })
--     SendNUIMessage({ type = "inventory:setLeft", data = { inventory = leftData } })
--     SendNUIMessage({ type = "inventory:open", playerSex = IsMale() and "male" or "female" })
--     
--     if exports["voltre-core"]:getPreference("cloneped") then 
--         TriggerEvent("voltre:inventory:createClonePed")
--     end
-- end)

-- Disabled - voltre-core handles inventory NUI
-- AddEventHandler("inventory:close", function()
--     clearInterface()
--     SetNuiFocus(false, false)
--     DisplayRadar(true)
--     voltre.DisplayHud(true)
--     voltre.ActiveFrontend(false)
--     TriggerEvent("voltre:inventory:destroyClonePed")
--     
--     SendNUIMessage({ type = "inventory:close" })
--     
--     pcall(function() exports["voltre-core"]:setChatCanOpen(true) end)
-- end)

-- Disabled - voltre-core handles these events in new_inventory.lua
-- AddEventHandler("inventory:left:changeWeight", function(newWeight)
--     SendNUIMessage({ type = "inventory:setLeftWeight", data = { weight = newWeight } })
-- end)
-- 
-- AddEventHandler("inventory:left:changeMaxWeight", function(newWeight)
--     SendNUIMessage({ type = "inventory:setMaxLeftWeight", data = { weight = newWeight } })
-- end)
-- 
-- AddEventHandler("inventory:right:changeWeight", function(newWeight)
--     SendNUIMessage({ type = "inventory:setRightWeight", data = { weight = newWeight } })
-- end)
-- 
-- AddEventHandler("inventory:setRight", function(rightData)
--     SendNUIMessage({ type = "inventory:setRight", data = { inventory = rightData } })
-- end)
-- 
-- AddEventHandler("esx:refreshRightInventory", function(data)
--     SendNUIMessage({ type = "inventory:setRight", data = { inventory = data } })
-- end)
-- 
-- AddEventHandler("ZgegFramework:enableSecondInventory", function(data)
--     SendNUIMessage({ type = "inventory:disableRightInventory", data = { disable = data } })
-- end)

-- Disabled - voltre-core handles this
-- RegisterNetEvent("inventory:setRightData", function(data)
--     if data.weight then SendNUIMessage({ type = "inventory:setRightWeight", data = { weight = data.weight } }) end
--     if data.maxWeight then SendNUIMessage({ type = "inventory:setMaxRightWeight", data = { weight = data.maxWeight } }) end
--     if data.title then SendNUIMessage({ type = "inventory:setInventoryRightData", data = { title = data.title } }) end
--     SendNUIMessage({ type = "inventory:setRight", data = { inventory = data.inventory } })
-- end)

-- Disabled - voltre-core handles notifications
-- RegisterNetEvent("inventory:sendMessage", function(msg, time2)
--     SendNUIMessage({ type = "inventory:sendMessage", data = { message = { text = msg }, time = time2 or 3000 } })
-- end)
-- 
-- exports("InventoryNotif", function(msg, time2)
--     SendNUIMessage({ type = "inventory:sendMessage", data = { message = { text = msg }, time = time2 or 3000 } })
-- end)


-- RegisterNUICallback("inventory:startRename", function(_, cb) SetNuiFocusKeepInput(false) cb({}) end)
-- RegisterNUICallback("inventory:startGiveItem", function(_, cb) SetNuiFocusKeepInput(false) cb({}) end)
-- RegisterNUICallback("inventory:startDropItem", function(_, cb) SetNuiFocusKeepInput(false) cb({}) end)

RegisterNUICallback("inventory:close", function(_, cb)
    if VoltreInventory and VoltreInventory.Close then
        VoltreInventory.Close()
    else
        TriggerEvent("inventory:close")
    end
    cb({})
end)

RegisterNUICallback("inventory:searchFocus", function(_, cb)
    pcall(function() exports["voltre-core"]:setChatCanOpen(false) end)
    exports["voltre-core"]:ActiveFrontend(true)
    cb({})
end)

RegisterNUICallback("inventory:searchBlur", function(_, cb)
    exports["voltre-core"]:ActiveFrontend(false)
    pcall(function() exports["voltre-core"]:setChatCanOpen(true) end)
    cb({})
end)

RegisterNUICallback("inventory:useItem", function(data, cb)
    TriggerEvent("voltre:inventory:nui:useItem", data)
    cb({})
end)

RegisterNUICallback("inventory:giveItem", function(data, cb)
    TriggerEvent("voltre:inventory:nui:giveItem", data)
    cb({})
end)

RegisterNUICallback("inventory:dropItem", function(data, cb)
    TriggerEvent("voltre:inventory:nui:dropItem", data)
    cb({})
end)

RegisterNUICallback("inventory:renameItem", function(data, cb)
    TriggerEvent("voltre:inventory:nui:renameItem", data)
    cb({})
end)

RegisterNUICallback("inventory:changeSlot", function(data, cb)
    TriggerEvent("voltre:inventory:nui:changeSlot", data)
    cb({})
end)

local weaponBinds = {
    numbers = { [0] = 'one', [1] = 'two', [2] = 'three', [3] = 'four', [4] = 'five' },
    string = { ['one'] = 1, ["two"] = 2, ["three"] = 3, ["four"] = 4, ["five"] = 5 }
}

-- Disabled - voltre-core handles shortcuts in new_inventory.lua
-- RegisterNetEvent("ZgegFramework:changeShortCut", function(name, weapon, isNumber)
--     local id = isNumber and tonumber(name) or weaponBinds.string[name]
--     if not id then return end
--     local shortcut = weapon == "WEAPON_UNARMED" 
--         and { name = "none", label = "", count = 1, type = "weapon" }
--         or { name = weapon, label = ESX.GetWeaponLabel(weapon), count = 1, type = "weapon" }
--     SendNUIMessage({ type = "shortcut:setShortcut", data = { index = id, shortcut = shortcut } })
-- end)

RegisterNUICallback("shortcut:set", function(data, cb)
    exports["voltre-core"]:setWeaponKeybind(weaponBinds.numbers[data.slot-1], data.item.name, data.item.label)
    cb({})
end)

RegisterNUICallback("shortcut:remove", function(data, cb)
    exports["voltre-core"]:setWeaponKeybind(weaponBinds.numbers[data.slot-1], "WEAPON_UNARMED", "Aucun")
    cb({})
end)

RegisterNUICallback("shortcut:equipAccessory", function(data, cb)
    TriggerEvent("voltre:inventory:nui:equipAccessory", data)
    cb({})
end)

RegisterNUICallback("shortcut:removeAccessory", function(data, cb)
    TriggerEvent("voltre:inventory:nui:removeAccessory", data)
    cb({})
end)

-- Disabled - voltre-core handles accessories
-- AddEventHandler("voltre:inventory:nui:setAccessory", function(accessoryType, item)
--     SendNUIMessage({ type = "shortcut:setAccessory", data = { type = accessoryType, item = item } })
-- end)

RegisterNetEvent("voltre:inventory:equipClothesSlot", function(clotheType, clotheData)
    if not clotheData then return end
    

    if VoltreInventory then
        VoltreInventory.clothesCache = nil
        VoltreInventory.clothesCacheTime = 0
    end
    
    if clotheData.data and type(clotheData.data) == "table" then
        for propName, propValue in pairs(clotheData.data) do
            if type(propName) == "string" and type(propValue) == "number" then
                TriggerEvent("Voltre:skinchanger:change", propName, propValue)
            end
        end
    end
    
    -- Disabled - voltre-core handles this
    -- SendNUIMessage({ 
    --     type = "shortcut:setAccessory", 
    --     data = { 
    --         type = clotheType, 
    --         item = {
    --             type2 = clotheType,
    --             count = 1,
    --             name = clotheData.id,
    --             data = clotheData.data,
    --             label = clotheData.label,
    --         }
    --     } 
    -- })
    
    if VoltreInventory and VoltreInventory.equippedClothes then
        VoltreInventory.equippedClothes[clotheType] = clotheData
    end

    TriggerEvent("Voltre:skinchanger:getSkin", function(skin)
        TriggerServerEvent("Voltre:esx_skin:save", skin)
    end)
end)

-- Disabled - voltre-core handles all these
-- AddEventHandler("voltre:inventory:nui:updateStats", function(stats)
--     SendNUIMessage({ type = "inventory:updateStats", data = stats })
-- end)
-- 
-- AddEventHandler("voltre:inventory:nui:setLeftData", function(data, leftMaxWeight)
--     SendNUIMessage({ type = "inventory:setLeft", data = { inventory = data } })
--     if leftMaxWeight then 
--         SendNUIMessage({ type = "inventory:setMaxLeftWeight", data = { weight = leftMaxWeight } })
--     end
-- end)
-- 
-- AddEventHandler("voltre:inventory:nui:setTitle", function(title)
--     SendNUIMessage({ type = "inventory:setInventoryLeftData", data = { title = title } })
-- end)
-- 
-- CreateThread(function()
--     Wait(5000)
--     SendNUIMessage({ type = "inventory:setInventoryLeftData", data = { title = "Inventaire" } })
-- end)

voltre.InitPrint("Inventory NUI Bridge loaded")
