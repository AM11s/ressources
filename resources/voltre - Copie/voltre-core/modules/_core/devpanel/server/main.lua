if not devmode then return end
if not Config.DevPanel or not Config.DevPanel.Enabled then return end

local function IsDevMode()
    return devmode == true and Config.DevPanel and Config.DevPanel.Enabled == true
end

local function IsAuthorizedDev(src)
    if not IsDevMode() then return false end
    if not src or src == 0 then return false end
    local allow = Config.DevPanel.Developers
    if not allow or next(allow) == nil then return false end
    for _, id in ipairs(GetPlayerIdentifiers(src) or {}) do
        if allow[id] then return true end
    end
    return false
end

-- Allowed external resources for targeted execution
local ALLOWED_RESOURCES = {
    ["voltre-core"] = true,
    ["voltre-loader"] = true,
    ["voltre-stream"] = true,
    ["voltre-ui"] = true,
    ["voltre-dealwp"] = true,
}

-- Execute Lua code server-side (with optional resource target)
RegisterNetEvent("voltre:devpanel:executeServer", function(code, resource)
    local source = source
    if not IsAuthorizedDev(source) then return end
    resource = resource or "voltre-core"
    
    -- Route to external resource
    if resource ~= "voltre-core" and ALLOWED_RESOURCES[resource] then
        TriggerEvent("voltre:dev:execute:" .. resource .. ":server", code, source)
        return
    end
    
    -- Execute in voltre-core context
    local fn, err = load(code, "devpanel_server", "t", setmetatable({}, { __index = function(_, k)
        if k == "io" or k == "os" or k == "PerformHttpRequest" or k == "_G" then return nil end
        return _G[k]
    end }))
    if not fn then
        TriggerClientEvent("voltre:devpanel:result", source, {
            success = false,
            output = "[voltre-core] Compile Error: " .. tostring(err),
            side = "server"
        })
        return
    end
    
    -- Capture print output
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
    
    TriggerClientEvent("voltre:devpanel:result", source, {
        success = ok,
        output = output,
        side = "server"
    })
end)

-- Execute trigger server-side
RegisterNetEvent("voltre:devpanel:triggerServer", function(eventName, args)
    local source = source
    if not IsAuthorizedDev(source) then return end
    
    local ok, err = pcall(function()
        TriggerEvent(eventName, table.unpack(args or {}))
    end)
    
    TriggerClientEvent("voltre:devpanel:result", source, {
        success = ok,
        output = ok and ("Triggered server event: " .. eventName) or ("Error: " .. tostring(err)),
        side = "server"
    })
end)

-- Trigger client event from server
RegisterNetEvent("voltre:devpanel:triggerClientFromServer", function(eventName, args)
    local source = source
    if not IsAuthorizedDev(source) then return end
    
    local ok, err = pcall(function()
        TriggerClientEvent(eventName, source, table.unpack(args or {}))
    end)
    
    TriggerClientEvent("voltre:devpanel:result", source, {
        success = ok,
        output = ok and ("Triggered client event: " .. eventName .. " (from server)") or ("Error: " .. tostring(err)),
        side = "server"
    })
end)

-- Scan registered events (server-side)
RegisterNetEvent("voltre:devpanel:scanEvents", function(filter)
    local source = source
    if not IsAuthorizedDev(source) then return end
    
    local events = {}
    local handlers = GetRegisteredCommands and GetRegisteredCommands() or {}
    
    -- Use the internal event handlers list
    for eventName, _ in pairs(GetRegisteredEvents and GetRegisteredEvents() or {}) do
        if not filter or filter == "" or string.find(string.lower(eventName), string.lower(filter)) then
            events[#events+1] = { name = eventName, side = "server" }
        end
    end
    
    -- Fallback: scan known event patterns
    if #events == 0 then
        local knownPatterns = {
            "esx:", "voltre:", "ZgegFramework:", "inventory:", "Voltre:",
            "es_extended:", "gcPhone:", "lbphone:", "skinchanger:"
        }
        
        for _, pattern in ipairs(knownPatterns) do
            if not filter or filter == "" or string.find(string.lower(pattern), string.lower(filter)) then
                events[#events+1] = { name = pattern .. "*", side = "server", isPattern = true }
            end
        end
    end
    
    TriggerClientEvent("voltre:devpanel:eventList", source, events)
end)

-- Get resource list
RegisterNetEvent("voltre:devpanel:getResources", function()
    local source = source
    if not IsAuthorizedDev(source) then return end
    
    local resources = {}
    local numResources = GetNumResources()
    for i = 0, numResources - 1 do
        local name = GetResourceByFindIndex(i)
        if name then
            resources[#resources+1] = {
                name = name,
                state = GetResourceState(name)
            }
        end
    end
    
    table.sort(resources, function(a, b) return a.name < b.name end)
    TriggerClientEvent("voltre:devpanel:resourceList", source, resources)
end)

-- Restart resource
RegisterNetEvent("voltre:devpanel:restartResource", function(resourceName)
    local source = source
    if not IsAuthorizedDev(source) then return end
    
    local state = GetResourceState(resourceName)
    if state == "missing" then
        TriggerClientEvent("voltre:devpanel:result", source, {
            success = false,
            output = "Resource not found: " .. resourceName,
            side = "server"
        })
        return
    end
    
    ExecuteCommand("restart " .. resourceName)
    
    TriggerClientEvent("voltre:devpanel:result", source, {
        success = true,
        output = "Restarting resource: " .. resourceName,
        side = "server"
    })
end)

-- Execute server command
RegisterNetEvent("voltre:devpanel:executeCommand", function(command)
    local source = source
    if not IsAuthorizedDev(source) then return end
    
    local ok, err = pcall(function()
        ExecuteCommand(command)
    end)
    
    TriggerClientEvent("voltre:devpanel:result", source, {
        success = ok,
        output = ok and ("Executed command: " .. command) or ("Error: " .. tostring(err)),
        side = "server"
    })
end)

-- Quick action: heal
RegisterNetEvent("voltre:dev:heal", function()
    local source = source
    if not IsAuthorizedDev(source) then return end
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer then
        TriggerClientEvent("esx:restoreHealth", source)
    end
end)

-- Quick action: revive
RegisterNetEvent("voltre:dev:revive", function()
    local source = source
    if not IsAuthorizedDev(source) then return end
    TriggerClientEvent("esx:restoreHealth", source)
    TriggerClientEvent("voltre:revive", source)
end)

-- Get quick actions from config
ESX.RegisterServerCallback("voltre:devpanel:getConfig", function(source, cb)
    if not IsAuthorizedDev(source) then return cb(nil) end
    
    cb({
        quickActions = Config.DevPanel.QuickActions or {},
    })
end)

voltre.InitPrint("DevPanel Server loaded")
