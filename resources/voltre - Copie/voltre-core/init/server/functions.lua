local convarCache = {}

voltre.getConvarKey = function(key, ...)
    if convarCache[key] then
        return string.format(convarCache[key], ...)
    end
    local status, value = pcall(GetConvar, key, "")
    if status then
        if value and value ~= "" then
            convarCache[key] = string.format(value, ...)
            return convarCache[key]
        else
            return nil
        end
    else
        return nil
    end
end

voltre.setLoaderName = function(name)
    voltre.loader.resources[name] = {
        name = name,
        path = GetResourcePath(name),
        status = GetResourceState(name),
    }
end 

-- remove all function on a table (and sub value etc) 
voltre.cleanTable = function(table)
    local newTable = {}
    for k,v in pairs(table) do
        if type(v) == "function" then
            newTable[k] = nil
        elseif type(v) == "table" then
            newTable[k] = voltre.cleanTable(v)
        else
            newTable[k] = v
        end
    end
    return newTable
end

voltre.DebugPrint = function(...)
    local args = {...}
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
                local cleanTable = voltre.cleanTable(msg)
                msg = json.encode(cleanTable)
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

voltre.stopServer = function(after)
    Citizen.CreateThread(function()
        ESX.SavePlayers()
    end)

    Citizen.CreateThread(function()
        SaveAllSociety()
    end)

    Citizen.CreateThread(function()
        if disableCacheSave == false then 
            SaveData.functions.SaveAllCacheData()
        end
        for k,v in pairs(SaveData.json["illegals"]["laboratorys"]) do 
            if v.propsDry ~= nil then
                for k2,v2 in pairs(v.propsDry) do
                    DeleteEntity(v2)
                    v.propsDry[k2] = nil
                end
            end
            if v.cameraProps then 
                DeleteEntity(v.cameraProps)
                v.cameraProps = nil
            end
        end
    end)

    Citizen.CreateThread(function()
        for k,v in pairs(WorldProps.data.propsSpawned) do
            if v.entity ~= nil then
                DeleteEntity(v.entity)
            end
        end
    end)

    Citizen.CreateThread(function()
        for k,v in pairs(ChestLoad) do
            if v.entity ~= nil and v.entity ~= "in_spawning" then
                DeleteEntity(v.entity)
            end
        end
    end)

    Citizen.CreateThread(function()
        for k,v in pairs(SaveData.Illegal.WeedPlants) do 
            DeleteEntity(v.entity)
        end
    end)

    Citizen.CreateThread(function()
        for k,v in pairs(Config.Drugs.objSpawn) do
            DeleteObject(v)
            Config.Drugs.objSpawn[k] = nil
        end
    end)

    if after then
        after()
    end
end