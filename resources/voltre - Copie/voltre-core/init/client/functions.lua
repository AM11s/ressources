voltre.getConvarKey = function(key, ...)
    local status, value = pcall(GetConvar, key, "")
    if status then
        if value and value ~= "" then
            return string.format(value, ...)
        else
            return nil
        end
    else
        return nil
    end
end

voltre.setLoaderName = function(name)
    voltre.loader.resources[name] = {
        name = name
    }
end 

voltre.quickHash = function(str)
    local hash = 0
    for i = 1, #str do
        hash = (hash * 31 + str:byte(i)) % 2^32
    end
    return hash
end

local printCache = {}

voltre.DebugPrint = function(...)
    local args = {...}
    local formatArgs = args
    for k,v in pairs(formatArgs) do 
        if type(v) == "table" then
            formatArgs[k] = json.encode(v)
        elseif type(v) == "boolean" then
            formatArgs[k] = v and "true" or "false"
        elseif type(v) == "number" then
            formatArgs[k] = tostring(v)
        end
    end
    local hash = voltre.quickHash(table.concat(formatArgs, " "))

    if printCache[hash] ~= nil and (GetGameTimer() - printCache[hash] < 5000) then
        return
    elseif printCache[hash] ~= nil then
        table.insert(args, "(timeout 5000ms)")
    end
    
    printCache[hash] = GetGameTimer()

    if Config.Print.Debug and Config.Print.DebugKey == "e24975895620VNVBE" then
        local finalDebug = " - ^2Debug^7]"
        local caller = GetInvokingResource() or "voltre-core"

        if caller == "voltre-core" or caller == "voltre-loader" then
            finalDebug = "^7[^2Voltre^7Core"..finalDebug
        elseif caller == "voltre-ui" then
            finalDebug = "^7[^4Voltre^7UI"..finalDebug
        elseif caller == "voltre-hud" then
            finalDebug = "^7[^1Voltre^7HUD"..finalDebug
        else
            finalDebug = "^7[^6"..caller.."^7"..finalDebug
        end

        for i,msg in pairs(args) do
            if type(msg) ~= "string" and type(msg) ~= "table" then
                msg = tostring(msg)
            elseif type(msg) == "table" then
                msg = json.encode(msg)
            end
            finalDebug = finalDebug.." "..msg
        end
        print(finalDebug.."^7")
    end
end

voltre.InitPrint = function(msg)
    if Config.Print.Initializing and Config.Print.InitializingKey == "e24975895620VNVBE" then
        local caller = GetInvokingResource() or "voltre-core"
        if caller == "voltre-core" or caller == "voltre-loader" then
            print("^7[^2Voltre^7Core] ^2"..msg.."^7")
        elseif caller == "voltre-ui" then
            print("^7[^4Voltre^7UI] ^2"..msg.."^7")
        elseif caller == "voltre-hud" then
            print("^7[^1Voltre^7HUD] ^2"..msg.."^7")
        else
            print("^7[^6"..caller.."^7] ^2"..msg.."^7")
        end
    end
end

DisplayHud = false
local LastRequest = nil

--[[
exemple :
1.
voltre.DisplayHud(true, 999)

2.
voltre.DisplayHud("always-display", true)
voltre.DisplayHud("additional-display", false)
voltre.DisplayHud("3dinteractions", false)
]]

--[[
priority : 

Options Affichage (Activer/Désactiver l'HUD) : 54

Creator : 978

Default : 1
]]

voltre.DisplayHud = function(first, second, third)
    if type(first) == "boolean" then
        -- Priority handling:
        --  - second = priorité du caller (défaut 1 si non fourni)
        --  - LastRequest = priorité du dernier verrou actif
        -- Un appel SANS priorité explicite est traité comme priorité 1, et ne peut
        -- donc PAS écraser un verrou plus élevé (ex: DisplayHud(true, 999)).
        local callerPriority = tonumber(second) or 1
        if LastRequest == nil then LastRequest = 1 end
        if callerPriority < LastRequest then
            return
        end
        LastRequest = callerPriority

        DisplayHud = first
        for k,v in pairs(Config.Hud) do
            if v ~= true then goto continue end
            if GetResourceState(k) ~= "started" then goto continue end

            if Config.HudExports[k] then
                local success, error = pcall(function()
                    Config.HudExports[k](first)
                end)
                if devmode and not success then
                    print("Error in " .. k .. ": " .. error)
                end
            end

            ::continue::
        end
    
        pcall(function()
            exports["voltre-core"]:setChatCanOpen(first)
        end)

        if Config.HudExports["More"] ~= nil and type(Config.HudExports["More"]) == "function" then
            Config.HudExports["More"](first)
        end
    elseif type(first) == "string" then
        if Config.HudConfig[first] then
            for k,v in pairs(Config.HudConfig[first]) do
                if v.enabled == true and GetResourceState(k) == "started" then
                    v.functions(second)
                end
            end
        end
    end
end

exports("DisplayHud", voltre.DisplayHud)
exports("isDisplayHud", function() return DisplayHud end)

local ActiveFrontEnd = false
voltre.ActiveFrontend = function(bool)
    ActiveFrontEnd = bool
    if bool then
        ActivateFrontendMenu(GetHashKey("FE_MENU_VERSION_EMPTY"), false, -1)
    else
        SetFrontendActive(false)
    end
end
exports("ActiveFrontend", voltre.ActiveFrontend)
exports("isActiveFrontEnd", function() return ActiveFrontEnd end)