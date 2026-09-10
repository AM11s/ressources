-- ============================================================================
-- POLICE TABLET - Client
-- ============================================================================
local isOpen = false

local function isPolicePlayer()
    if not ESX or not ESX.PlayerData or not ESX.PlayerData.job then return false end
    return voltre.data.jobs.polices.list[ESX.PlayerData.job.name] ~= nil
end

function OpenPoliceTablet()
    if isOpen then return end
    if not isPolicePlayer() then
        ESX.ShowNotification("~r~Vous n'êtes pas membre des forces de l'ordre")
        return
    end

    isOpen = true
    SetNuiFocus(true, true)

    ESX.TriggerServerCallback("voltre:policeTablet:getData", function(data)
        if not data then
            ESX.ShowNotification("~r~Impossible de charger la tablette")
            SetNuiFocus(false, false)
            isOpen = false
            return
        end
        SendNUIMessage({ action = "policeTablet:open", data = data })
    end)
end

function ClosePoliceTablet()
    if not isOpen then return end
    isOpen = false
    SetNuiFocus(false, false)
    SendNUIMessage({ action = "policeTablet:close" })
end

RegisterCommand(Config.PoliceTablet and Config.PoliceTablet.OpenCommand or "policetablet", function()
    if isOpen then ClosePoliceTablet() else OpenPoliceTablet() end
end, false)

RegisterNUICallback("policeTablet:close", function(_, cb)
    ClosePoliceTablet()
    cb({})
end)

-- ============================================================================
-- DISPATCH
-- ============================================================================
RegisterNUICallback("policeTablet:createCard", function(data, cb)
    TriggerServerEvent("voltre:policeTablet:createCard", data)
    cb({})
end)
RegisterNUICallback("policeTablet:moveCard", function(data, cb)
    TriggerServerEvent("voltre:policeTablet:moveCard", data)
    cb({})
end)
RegisterNUICallback("policeTablet:deleteCard", function(data, cb)
    TriggerServerEvent("voltre:policeTablet:deleteCard", data)
    cb({})
end)
RegisterNUICallback("policeTablet:createGroup", function(data, cb)
    TriggerServerEvent("voltre:policeTablet:createGroup", data)
    cb({})
end)
RegisterNUICallback("policeTablet:moveGroup", function(data, cb)
    TriggerServerEvent("voltre:policeTablet:moveGroup", data)
    cb({})
end)
RegisterNUICallback("policeTablet:deleteGroup", function(data, cb)
    TriggerServerEvent("voltre:policeTablet:deleteGroup", data)
    cb({})
end)

RegisterNetEvent("voltre:policeTablet:dispatchUpdate", function(state)
    if not isOpen then return end
    SendNUIMessage({ action = "policeTablet:dispatchUpdate", data = state })
end)

-- ============================================================================
-- SEARCH
-- ============================================================================
RegisterNUICallback("policeTablet:searchPlayers", function(data, cb)
    ESX.TriggerServerCallback("voltre:policeTablet:searchPlayers", function(results)
        cb(results or {})
    end, data.query)
end)

RegisterNUICallback("policeTablet:getPlayerDetails", function(data, cb)
    ESX.TriggerServerCallback("voltre:policeTablet:getPlayerDetails", function(details)
        cb(details or {})
    end, data.identifier)
end)

RegisterNUICallback("policeTablet:getCasier", function(data, cb)
    ESX.TriggerServerCallback("voltre:policeTablet:getCasier", function(rows)
        cb(rows or {})
    end, data.identifier)
end)

RegisterNUICallback("policeTablet:recentCasier", function(data, cb)
    ESX.TriggerServerCallback("voltre:policeTablet:recentCasier", function(rows)
        cb(rows or {})
    end)
end)

RegisterNUICallback("policeTablet:searchVehicles", function(data, cb)
    ESX.TriggerServerCallback("voltre:policeTablet:searchVehicles", function(results)
        cb(results or {})
    end, data.query)
end)

RegisterNUICallback("policeTablet:searchProperties", function(data, cb)
    ESX.TriggerServerCallback("voltre:policeTablet:searchProperties", function(results)
        cb(results or {})
    end, data.query)
end)

-- ============================================================================
-- CASIER
-- ============================================================================
RegisterNUICallback("policeTablet:addCasier", function(data, cb)
    TriggerServerEvent("voltre:policeTablet:addCasier", data)
    cb({})
end)

RegisterNUICallback("policeTablet:deleteCasier", function(data, cb)
    TriggerServerEvent("voltre:policeTablet:deleteCasier", data.id)
    cb({})
end)

RegisterNetEvent("voltre:policeTablet:casierAdded", function(identifier)
    if not isOpen then return end
    SendNUIMessage({ action = "policeTablet:casierAdded", data = { identifier = identifier } })
end)

-- ============================================================================
-- PENAL CODE
-- ============================================================================
RegisterNUICallback("policeTablet:addPenal", function(data, cb)
    TriggerServerEvent("voltre:policeTablet:addPenal", data)
    cb({})
end)
RegisterNUICallback("policeTablet:updatePenal", function(data, cb)
    TriggerServerEvent("voltre:policeTablet:updatePenal", data)
    cb({})
end)
RegisterNUICallback("policeTablet:deletePenal", function(data, cb)
    TriggerServerEvent("voltre:policeTablet:deletePenal", data.id)
    cb({})
end)

RegisterNetEvent("voltre:policeTablet:penalUpdate", function(penal)
    if not isOpen then return end
    SendNUIMessage({ action = "policeTablet:penalUpdate", data = penal })
end)

-- ============================================================================
-- RADIO CODES
-- ============================================================================
RegisterNUICallback("policeTablet:addRadio", function(data, cb)
    TriggerServerEvent("voltre:policeTablet:addRadio", data)
    cb({})
end)
RegisterNUICallback("policeTablet:updateRadio", function(data, cb)
    TriggerServerEvent("voltre:policeTablet:updateRadio", data)
    cb({})
end)
RegisterNUICallback("policeTablet:deleteRadio", function(data, cb)
    TriggerServerEvent("voltre:policeTablet:deleteRadio", data)
    cb({})
end)

RegisterNetEvent("voltre:policeTablet:radioUpdate", function(list)
    if not isOpen then return end
    SendNUIMessage({ action = "policeTablet:radioUpdate", data = list })
end)

-- ============================================================================
-- WAYPOINT helpers
-- ============================================================================
RegisterNUICallback("policeTablet:setWaypoint", function(data, cb)
    if data and data.x and data.y then
        SetNewWaypoint(data.x + 0.0, data.y + 0.0)
        ESX.ShowNotification("📍 GPS défini")
    end
    cb({})
end)

AddEventHandler("onResourceStop", function(r)
    if GetCurrentResourceName() == r and isOpen then ClosePoliceTablet() end
end)
