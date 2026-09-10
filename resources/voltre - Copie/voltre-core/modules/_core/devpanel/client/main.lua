if not devmode then return end
if not Config.DevPanel or not Config.DevPanel.Enabled then return end

local isOpen = false
local isNoclip = false
local isInvisible = false

local function IsDevMode()
    return devmode == true and Config.DevPanel and Config.DevPanel.Enabled == true
end

local function OpenDevPanel()
    if not IsDevMode() then return end
    if isOpen then return end
    isOpen = true
    
    SetNuiFocus(true, true)
    
    -- Get config from server
    ESX.TriggerServerCallback("voltre:devpanel:getConfig", function(config)
        SendNUIMessage({
            action = "devPanel:open",
            data = config or {}
        })
    end)
    
    -- Request resource list
    TriggerServerEvent("voltre:devpanel:getResources")
end

local function CloseDevPanel()
    if not isOpen then return end
    isOpen = false
    SetNuiFocus(false, false)
    SendNUIMessage({ action = "devPanel:close" })
end

-- Keybind
RegisterCommand("devpanel", function()
    if not IsDevMode() then return end
    if isOpen then
        CloseDevPanel()
    else
        OpenDevPanel()
    end
end, false)

local openKey = Config.DevPanel.OpenKey or "F11"
RegisterKeyMapping("devpanel", "Open Dev Panel", "keyboard", openKey)

-- NUI Callbacks
RegisterNUICallback("devPanel:close", function(_, cb)
    CloseDevPanel()
    cb({})
end)

-- Allowed external resources for targeted execution
local ALLOWED_RESOURCES = {
    ["voltre-core"] = true,
    ["voltre-loader"] = true,
    ["voltre-stream"] = true,
    ["voltre-ui"] = true,
    ["voltre-dealwp"] = true,
}

-- Execute Lua client-side (with optional resource target)
RegisterNUICallback("devPanel:executeClient", function(data, cb)
    if not IsDevMode() then return cb({}) end
    
    local code = data.code
    local resource = data.resource or "voltre-core"
    
    -- Route to external resource
    if resource ~= "voltre-core" and ALLOWED_RESOURCES[resource] then
        TriggerEvent("voltre:dev:execute:" .. resource .. ":client", code)
        cb({})
        return
    end
    
    -- Execute in voltre-core context
    local fn, err = load(code, "devpanel_client", "t", setmetatable({}, { __index = function(_, k)
        if k == "io" or k == "os" or k == "PerformHttpRequest" or k == "_G" then return nil end
        return _G[k]
    end }))
    if not fn then
        SendNUIMessage({
            action = "devPanel:result",
            data = {
                success = false,
                output = "[voltre-core] Compile Error: " .. tostring(err),
                side = "client"
            }
        })
        cb({})
        return
    end
    
    local outputs = {}
    local originalPrint = print
    print = function(...)
        local args = {...}
        local strs = {}
        for i = 1, select('#', ...) do
            strs[#strs+1] = tostring(args[i])
        end
        outputs[#outputs+1] = table.concat(strs, "\t")
        originalPrint(...)
    end
    
    local ok, result = pcall(fn)
    print = originalPrint
    
    local output = table.concat(outputs, "\n")
    if not ok then
        output = output .. (output ~= "" and "\n" or "") .. "Runtime Error: " .. tostring(result)
    elseif result ~= nil then
        output = output .. (output ~= "" and "\n" or "") .. "=> " .. tostring(result)
    end
    
    if output == "" then
        output = "[voltre-core] Executed successfully (no output)"
    end
    
    SendNUIMessage({
        action = "devPanel:result",
        data = {
            success = ok,
            output = output,
            side = "client"
        }
    })
    cb({})
end)

-- Execute Lua server-side (with optional resource target)
RegisterNUICallback("devPanel:executeServer", function(data, cb)
    if not IsDevMode() then return cb({}) end
    local resource = data.resource or "voltre-core"
    TriggerServerEvent("voltre:devpanel:executeServer", data.code, resource)
    cb({})
end)

-- Trigger client event
RegisterNUICallback("devPanel:triggerClient", function(data, cb)
    if not IsDevMode() then return cb({}) end
    
    local ok, err = pcall(function()
        TriggerEvent(data.eventName, table.unpack(data.args or {}))
    end)
    
    SendNUIMessage({
        action = "devPanel:result",
        data = {
            success = ok,
            output = ok and ("Triggered client event: " .. data.eventName) or ("Error: " .. tostring(err)),
            side = "client"
        }
    })
    cb({})
end)

-- Trigger server event
RegisterNUICallback("devPanel:triggerServer", function(data, cb)
    if not IsDevMode() then return cb({}) end
    TriggerServerEvent("voltre:devpanel:triggerServer", data.eventName, data.args or {})
    cb({})
end)

-- Trigger client event from server
RegisterNUICallback("devPanel:triggerClientFromServer", function(data, cb)
    if not IsDevMode() then return cb({}) end
    TriggerServerEvent("voltre:devpanel:triggerClientFromServer", data.eventName, data.args or {})
    cb({})
end)

-- Scan events
RegisterNUICallback("devPanel:scanEvents", function(data, cb)
    if not IsDevMode() then return cb({}) end
    TriggerServerEvent("voltre:devpanel:scanEvents", data.filter or "")
    cb({})
end)

-- Get resources
RegisterNUICallback("devPanel:getResources", function(_, cb)
    if not IsDevMode() then return cb({}) end
    TriggerServerEvent("voltre:devpanel:getResources")
    cb({})
end)

-- Restart resource
RegisterNUICallback("devPanel:restartResource", function(data, cb)
    if not IsDevMode() then return cb({}) end
    TriggerServerEvent("voltre:devpanel:restartResource", data.resource)
    cb({})
end)

-- Execute command
RegisterNUICallback("devPanel:executeCommand", function(data, cb)
    if not IsDevMode() then return cb({}) end
    TriggerServerEvent("voltre:devpanel:executeCommand", data.command)
    cb({})
end)

-- Quick action
RegisterNUICallback("devPanel:quickAction", function(data, cb)
    if not IsDevMode() then return cb({}) end
    
    local action = data.action
    if not action then return cb({}) end
    
    if action.command then
        TriggerServerEvent("voltre:devpanel:executeCommand", action.command)
    elseif action.event then
        TriggerEvent(action.event)
    elseif action.serverEvent then
        TriggerServerEvent(action.serverEvent)
    elseif action.clientEvent then
        TriggerEvent(action.clientEvent)
    end
    
    SendNUIMessage({
        action = "devPanel:result",
        data = {
            success = true,
            output = "Quick action executed: " .. (action.label or action.id or "unknown"),
            side = "action"
        }
    })
    cb({})
end)

-- Receive results from server
RegisterNetEvent("voltre:devpanel:result", function(result)
    if not IsDevMode() then return end
    SendNUIMessage({
        action = "devPanel:result",
        data = result
    })
end)

-- Receive event list from server
RegisterNetEvent("voltre:devpanel:eventList", function(events)
    if not IsDevMode() then return end
    SendNUIMessage({
        action = "devPanel:eventList",
        data = events
    })
end)

-- Receive resource list from server
RegisterNetEvent("voltre:devpanel:resourceList", function(resources)
    if not IsDevMode() then return end
    SendNUIMessage({
        action = "devPanel:resourceList",
        data = resources
    })
end)

-- Quick action: TP to marker
AddEventHandler("voltre:dev:tpmarker", function()
    if not IsDevMode() then return end
    local blip = GetFirstBlipInfoId(8)
    if DoesBlipExist(blip) then
        local coords = GetBlipInfoIdCoord(blip)
        local groundZ = 0.0
        local found = false
        for z = 1000.0, 0.0, -25.0 do
            RequestCollisionAtCoord(coords.x, coords.y, z)
            Wait(50)
            local _, ground = GetGroundZFor_3dCoord(coords.x, coords.y, z, false)
            if ground ~= 0.0 then
                groundZ = ground
                found = true
                break
            end
        end
        SetEntityCoords(PlayerPedId(), coords.x, coords.y, found and groundZ or 300.0, false, false, false, true)
        SendNUIMessage({
            action = "devPanel:result",
            data = { success = true, output = string.format("Teleported to %.2f, %.2f, %.2f", coords.x, coords.y, groundZ), side = "client" }
        })
    else
        SendNUIMessage({
            action = "devPanel:result",
            data = { success = false, output = "No marker set on map", side = "client" }
        })
    end
end)

-- Quick action: Copy coords
AddEventHandler("voltre:dev:copyCoords", function()
    if not IsDevMode() then return end
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)
    local heading = GetEntityHeading(ped)
    local coordStr = string.format("vector4(%.4f, %.4f, %.4f, %.4f)", coords.x, coords.y, coords.z, heading)
    
    SendNUIMessage({
        action = "devPanel:copyToClipboard",
        data = { text = coordStr }
    })
    SendNUIMessage({
        action = "devPanel:result",
        data = { success = true, output = "Coords copied: " .. coordStr, side = "client" }
    })
end)

-- Quick action: Noclip
AddEventHandler("voltre:dev:noclip", function()
    if not IsDevMode() then return end
    isNoclip = not isNoclip
    local ped = PlayerPedId()
    SetEntityVisible(ped, not isNoclip, false)
    SetEntityCollision(ped, not isNoclip, not isNoclip)
    FreezeEntityPosition(ped, false)
    
    if isNoclip then
        CreateThread(function()
            while isNoclip do
                local ped = PlayerPedId()
                local camRot = GetGameplayCamRot(0)
                local camFwd = vector3(
                    -math.sin(math.rad(camRot.z)) * math.cos(math.rad(camRot.x)),
                    math.cos(math.rad(camRot.z)) * math.cos(math.rad(camRot.x)),
                    math.sin(math.rad(camRot.x))
                )
                
                local speed = IsControlPressed(0, 21) and 5.0 or 1.5
                local pos = GetEntityCoords(ped)
                local newPos = pos
                
                if IsControlPressed(0, 32) then newPos = newPos + camFwd * speed end -- W
                if IsControlPressed(0, 33) then newPos = newPos - camFwd * speed end -- S
                if IsControlPressed(0, 34) then -- A
                    local left = vector3(camFwd.y, -camFwd.x, 0.0)
                    newPos = newPos + left * speed
                end
                if IsControlPressed(0, 35) then -- D
                    local right = vector3(-camFwd.y, camFwd.x, 0.0)
                    newPos = newPos + right * speed
                end
                
                SetEntityCoordsNoOffset(ped, newPos.x, newPos.y, newPos.z, false, false, false)
                SetEntityVelocity(ped, 0.0, 0.0, 0.0)
                Wait(0)
            end
        end)
    end
    
    SendNUIMessage({
        action = "devPanel:result",
        data = { success = true, output = "Noclip: " .. (isNoclip and "ON" or "OFF"), side = "client" }
    })
end)

-- Quick action: Invisible
AddEventHandler("voltre:dev:invisible", function()
    if not IsDevMode() then return end
    isInvisible = not isInvisible
    SetEntityVisible(PlayerPedId(), not isInvisible, false)
    SendNUIMessage({
        action = "devPanel:result",
        data = { success = true, output = "Invisible: " .. (isInvisible and "ON" or "OFF"), side = "client" }
    })
end)

RegisterCommand("loadipl", function(source, args)
    if not IsDevMode() then return end
    local ipl = args[1]
    if not ipl then
        SendNUIMessage({
            action = "devPanel:result",
            data = { success = false, output = "Usage: /loadipl <ipl_name>", side = "client" }
        })
        return
    end
    RequestIpl(ipl)
    SendNUIMessage({
        action = "devPanel:result",
        data = { success = true, output = "IPL loaded: " .. ipl, side = "client" }
    })
end, false)

RegisterCommand("unloadipl", function(source, args)
    if not IsDevMode() then return end
    local ipl = args[1]
    if not ipl then
        SendNUIMessage({
            action = "devPanel:result",
            data = { success = false, output = "Usage: /unloadipl <ipl_name>", side = "client" }
        })
        return
    end
    RemoveIpl(ipl)
    SendNUIMessage({
        action = "devPanel:result",
        data = { success = true, output = "IPL unloaded: " .. ipl, side = "client" }
    })
end, false)

RegisterNUICallback("devPanel:loadIpl", function(data, cb)
    if not IsDevMode() then return cb({}) end
    local ipl = data.ipl
    if not ipl then
        SendNUIMessage({
            action = "devPanel:result",
            data = { success = false, output = "No IPL name provided", side = "client" }
        })
        cb({})
        return
    end
    RequestIpl(ipl)
    SendNUIMessage({
        action = "devPanel:result",
        data = { success = true, output = "IPL loaded: " .. ipl, side = "client" }
    })
    cb({})
end)

RegisterNUICallback("devPanel:unloadIpl", function(data, cb)
    if not IsDevMode() then return cb({}) end
    local ipl = data.ipl
    if not ipl then
        SendNUIMessage({
            action = "devPanel:result",
            data = { success = false, output = "No IPL name provided", side = "client" }
        })
        cb({})
        return
    end
    RemoveIpl(ipl)
    SendNUIMessage({
        action = "devPanel:result",
        data = { success = true, output = "IPL unloaded: " .. ipl, side = "client" }
    })
    cb({})
end)

-- ============================================================================
-- Bob74 IPL Integration
-- ============================================================================
RegisterNUICallback("devPanel:bob74:getList", function(_, cb)
    if not IsDevMode() then return cb({}) end
    local list = Bob74Ipl.GetList()
    cb({ list = list })
end)

RegisterNUICallback("devPanel:bob74:load", function(data, cb)
    if not IsDevMode() then return cb({}) end
    local ok, msg = Bob74Ipl.Load(data.id)
    SendNUIMessage({
        action = "devPanel:result",
        data = { success = ok, output = msg, side = "client" }
    })
    cb({})
end)

RegisterNUICallback("devPanel:bob74:unload", function(data, cb)
    if not IsDevMode() then return cb({}) end
    local ok, msg = Bob74Ipl.Unload(data.id)
    SendNUIMessage({
        action = "devPanel:result",
        data = { success = ok, output = msg, side = "client" }
    })
    cb({})
end)

RegisterNUICallback("devPanel:bob74:teleport", function(data, cb)
    if not IsDevMode() then return cb({}) end
    local ok, msg = Bob74Ipl.Teleport(data.id)
    SendNUIMessage({
        action = "devPanel:result",
        data = { success = ok, output = msg, side = "client" }
    })
    cb({})
end)

RegisterNUICallback("devPanel:bob74:getOptions", function(data, cb)
    if not IsDevMode() then return cb({}) end
    local opts = Bob74Ipl.GetOptions(data.id)
    cb({ options = opts })
end)

RegisterNUICallback("devPanel:bob74:setOption", function(data, cb)
    if not IsDevMode() then return cb({}) end
    local ok, msg = Bob74Ipl.SetOption(data.id, data.key, data.value, data.extra)
    SendNUIMessage({
        action = "devPanel:result",
        data = { success = ok, output = msg, side = "client" }
    })
    cb({})
end)

-- ============================================================================
-- Wave Background Playground
-- ============================================================================
local isWavePlayOpen = false

local function OpenWavePlayground()
    if not IsDevMode() then return end
    if isWavePlayOpen then return end
    isWavePlayOpen = true
    SetNuiFocus(true, true)
    SendNUIMessage({ action = "wavePlayground:open" })
end

local function CloseWavePlayground()
    if not isWavePlayOpen then return end
    isWavePlayOpen = false
    SetNuiFocus(false, false)
    SendNUIMessage({ action = "wavePlayground:close" })
end

RegisterCommand("waveplay", function()
    if not IsDevMode() then return end
    if isWavePlayOpen then CloseWavePlayground() else OpenWavePlayground() end
end, false)

RegisterNUICallback("wavePlayground:close", function(_, cb)
    CloseWavePlayground()
    cb({})
end)

voltre.InitPrint("DevPanel Client loaded")
