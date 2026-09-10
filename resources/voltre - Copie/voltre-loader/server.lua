local API_ENDPOINT = "https://api.voltre.fr"

local clientBlacklistKey = {"database", "webhooks", "secretkey" }

local ESX = nil

DashboardConfig = {}
UseDashboardConfig = false
local ConfigLoaded = false

-- =====================================================================
-- Debug/Test instrumentation (exposée via exports pour voltre-loader/debug.lua)
-- =====================================================================
LoaderStats = {
    startedAt     = os.time(),
    useDashboard  = UseDashboardConfig,
    licenseSet    = false,
    fetch = {
        attempts       = 0,
        success        = nil,           -- true / false / nil (en cours)
        hasCustomConfig = nil,
        version        = nil,
        httpCode       = nil,
        errorMessage   = nil,
        startedAt      = nil,           -- os.time()
        finishedAt     = nil,
        durationMs     = nil,
        rawSize        = nil,
        totalKeys      = 0,
        clientKeys     = 0,
        blacklistedKeys = {},           -- liste de clés filtrées pour le client
    },
    apply = {
        -- Chaque resource qui merge sa Config via import.lua peut se déclarer ici
        -- via exports['voltre-loader']:RecordApply(resourceName, count)
        resources = {},
    },
}

local function LoaderPrint(...)
    local args = {...}
    print("[^2Voltre^1Loader^7] "..table.concat(args, " "))
end 

local function LoadDashboardConfig()
    if not UseDashboardConfig then
        ConfigLoaded = true
        LoaderStats.fetch.success = false
        LoaderStats.fetch.errorMessage = "UseDashboardConfig=false"
        return
    end

    LoaderStats.fetch.attempts  = LoaderStats.fetch.attempts + 1
    LoaderStats.fetch.startedAt = os.time()
    local t0 = GetGameTimer()

    local headers = {
        ['Content-Type'] = 'application/json'
    }
    
    local data = json.encode({})
    
    PerformHttpRequest(API_ENDPOINT..'/api/server-config/fetch', function(errorCode, resultData, resultHeaders)
        LoaderStats.fetch.finishedAt = os.time()
        LoaderStats.fetch.durationMs = GetGameTimer() - t0
        LoaderStats.fetch.httpCode   = errorCode
        LoaderStats.fetch.rawSize    = resultData and #resultData or 0

        if errorCode == 200 then
            local success, response = pcall(json.decode, resultData)
            if success and response then
                LoaderStats.fetch.hasCustomConfig = response.hasCustomConfig and true or false
                LoaderStats.fetch.version         = response.version
                if response.hasCustomConfig then
                    DashboardConfig = response.config or {}
                    local clientSafeConfig = {}
                    local blacklisted = {}
                    for k, v in pairs(DashboardConfig) do
                        local isBlacklisted = false
                        local lowerKey = string.lower(k)
                        for _, blacklistedKey in ipairs(clientBlacklistKey) do
                            if string.find(lowerKey, string.lower(blacklistedKey)) then
                                isBlacklisted = true
                                break
                            end
                        end
                        if not isBlacklisted then
                            clientSafeConfig[k] = v
                        else
                            table.insert(blacklisted, k)
                        end
                    end
                    GlobalState.VoltreDashboardConfig = clientSafeConfig

                    local totalKeys = 0
                    for _ in pairs(DashboardConfig) do totalKeys = totalKeys + 1 end
                    local clientKeys = 0
                    for _ in pairs(clientSafeConfig) do clientKeys = clientKeys + 1 end

                    LoaderStats.fetch.totalKeys       = totalKeys
                    LoaderStats.fetch.clientKeys      = clientKeys
                    LoaderStats.fetch.blacklistedKeys = blacklisted
                    LoaderStats.fetch.success         = true 

                    LoaderPrint("Configuration dashboard chargée (Version: "..tostring(response.version or "?")..", Paramètres: "..(totalKeys)..", Client: "..clientKeys..", Durée: "..LoaderStats.fetch.durationMs.."ms)")
                else
                    LoaderPrint("Aucune configuration personnalisée, utilisation de la config par défaut")
                    DashboardConfig = {}
                    LoaderStats.fetch.success   = true
                    LoaderStats.fetch.totalKeys = 0
                end
                ConfigLoaded = true
            else
                LoaderStats.fetch.success      = false
                LoaderStats.fetch.errorMessage = "JSON decode failed"
                LoaderPrint("Erreur lors du décodage de la configuration")
                ConfigLoaded = true
            end
        else
            LoaderStats.fetch.success      = false
            LoaderStats.fetch.errorMessage = "HTTP "..tostring(errorCode)
            LoaderPrint("Erreur lors du chargement de la configuration (Code: "..tostring(errorCode)..")")
            ConfigLoaded = true
        end
    end, 'POST', data, headers)
end

local function MergeConfigValue(configKey, dashboardValue)
    if not configKey or not dashboardValue then return end
    
    local keys = {}
    for key in string.gmatch(configKey, "[^.]+") do
        table.insert(keys, key)
    end
    
    local current = Config or {}
    for i = 1, #keys - 1 do
        local key = keys[i]
        if not current[key] then
            current[key] = {}
        end
        current = current[key]
    end
    
    local finalKey = keys[#keys]
    local oldValue = current[finalKey]
    
    if type(oldValue) == "vector3" or type(oldValue) == "vector4" then
        if type(dashboardValue) == "table" and dashboardValue.x and dashboardValue.y and dashboardValue.z then
            if dashboardValue.w then
                current[finalKey] = vector4(dashboardValue.x, dashboardValue.y, dashboardValue.z, dashboardValue.w)
            else
                current[finalKey] = vector3(dashboardValue.x, dashboardValue.y, dashboardValue.z)
            end
            return
        end
    end
    
    if type(oldValue) == "table" and #oldValue == 4 and type(dashboardValue) == "table" and #dashboardValue == 4 then
        current[finalKey] = dashboardValue
        return
    end
    
    if type(dashboardValue) == "table" and #dashboardValue > 0 then
        current[finalKey] = dashboardValue
        return
    end
    
    if type(dashboardValue) == "table" then
        if type(oldValue) == "table" then
            for k, v in pairs(dashboardValue) do
                current[finalKey][k] = v
            end
        else
            current[finalKey] = dashboardValue
        end
        return
    end
    
    current[finalKey] = dashboardValue
end

local function ApplyDashboardConfig()
    if not ConfigLoaded then
        LoaderPrint("Configuration pas encore chargée, attente...")
        return false
    end
    
    if not next(DashboardConfig) then
        LoaderPrint("Aucune configuration dashboard à appliquer")
        return true
    end
    
    local count = 0
    for configKey, value in pairs(DashboardConfig) do
        MergeConfigValue(configKey, value)
        count = count + 1
    end
    
    LoaderPrint(""..count.." paramètres de configuration appliqués depuis le dashboard")
    return true
end

exports('ApplyDashboardConfig', ApplyDashboardConfig)
exports('IsDashboardConfigLoaded', function() return ConfigLoaded end)
exports('GetDashboardConfig', function() return DashboardConfig end)

-- =====================================================================
-- Exports debug/test
-- =====================================================================
exports('GetDashboardConfigStats', function() return LoaderStats end)

-- Récupère la valeur raw d'une clé dashboard (ex: "Config.Players.StartMoney")
exports('GetDashboardValue', function(key)
    if not key then return nil end
    return DashboardConfig[key]
end)

-- Enregistre l'application de la config par une resource (appelée depuis import.lua)
exports('RecordApply', function(resourceName, count, side)
    if not resourceName then return end
    LoaderStats.apply.resources[resourceName] = {
        count = count or 0,
        side  = side or "server",
        at    = os.time(),
    }
end)

-- Recharge la config depuis l'API (sans redémarrer les ressources)
-- ATTENTION: les ressources déjà démarrées auront leur Config figée,
-- il faudra les ensure manuellement pour qu'elles re-mergent.
exports('ReloadDashboardConfig', function()
    ConfigLoaded = false
    LoadDashboardConfig()
    local deadline = GetGameTimer() + 15000
    while not ConfigLoaded and GetGameTimer() < deadline do
        Wait(50)
    end
    return ConfigLoaded, LoaderStats.fetch
end)

-- Vérifie si une clé dashboard a été correctement mergée dans la Config d'une resource
-- Retourne { exists, dashboardValue, currentValue, match, error }
exports('VerifyDashboardKey', function(key, resourceName)
    resourceName = resourceName or "voltre-core"
    local result = { exists = false, dashboardValue = nil, currentValue = nil, match = false, error = nil }
    if not key then result.error = "missing key"; return result end

    result.dashboardValue = DashboardConfig[key]
    result.exists = result.dashboardValue ~= nil

    local ok, targetConfig = pcall(function()
        return exports[resourceName]:GetConfig()
    end)
    if not ok or not targetConfig then
        result.error = "resource "..resourceName.." unreachable"
        return result
    end

    -- Résoudre le chemin (ex: Config.Players.StartMoney)
    local segments = {}
    for seg in string.gmatch(key, "[^.]+") do table.insert(segments, seg) end

    -- Si la première clé est "Config", on part de la root; sinon on descend dans Config
    local cur = targetConfig
    local startIdx = 1
    if segments[1] == "Config" then
        startIdx = 2
    end
    for i = startIdx, #segments do
        if type(cur) ~= "table" then cur = nil; break end
        cur = cur[segments[i]]
    end
    result.currentValue = cur

    -- Comparaison (gère vector3/4 + tables simples)
    local function valueEquals(a, b)
        if type(a) ~= type(b) then
            -- cas vector3 <-> {x,y,z}
            if (type(a) == "vector3" or type(a) == "vector4") and type(b) == "table" then
                return a.x == b.x and a.y == b.y and a.z == b.z and (type(a) == "vector3" or a.w == b.w)
            end
            return false
        end
        if type(a) == "table" then
            for k, v in pairs(a) do if b[k] ~= v then return false end end
            for k, v in pairs(b) do if a[k] ~= v then return false end end
            return true
        end
        return a == b
    end
    result.match = result.exists and valueEquals(result.dashboardValue, result.currentValue)
    return result
end)

-- =====================================================================
-- Démarrage de voltre-deps (bundle des dépendances runtime).
-- Doit être started AVANT voltre-core qui en dépend (PolyZone, pma-voice, ...).
-- =====================================================================
local DepsReady = false

local function EnsureVoltreDeps()
    if GetResourceState("voltre-deps") == "started" then
        DepsReady = true
        return true
    end

    ExecuteCommand("start voltre-deps")

    -- Attend jusqu'à 10s que voltre-deps soit started.
    local deadline = GetGameTimer() + 10000
    while GetResourceState("voltre-deps") ~= "started" and GetGameTimer() < deadline do
        Citizen.Wait(50)
    end

    DepsReady = (GetResourceState("voltre-deps") == "started")
    if DepsReady then
        LoaderPrint("voltre-deps prêt (bundle dépendances : cron, sessionmanager, spawnmanager, PolyZone, httpmanager, pma-voice, xsound, screenshot-basic).")
    else
        LoaderPrint("^1ERREUR: voltre-deps n'a pas démarré dans les 10s — voltre-core ne fonctionnera pas correctement.^7")
    end
    return DepsReady
end

exports('EnsureVoltreDeps', EnsureVoltreDeps)
exports('IsVoltreDepsReady', function() return DepsReady end)

Citizen.CreateThread(function()
    -- 1) Fetch config dashboard
    LoadDashboardConfig()

    while not ConfigLoaded do
        Citizen.Wait(10)
    end

    -- 2) Start voltre-deps AVANT voltre-core (voltre-core déclare dependency 'voltre-deps')
    EnsureVoltreDeps()

    -- 3) Start voltre-core
    if GetResourceState("voltre-core") ~= "started" then
        ExecuteCommand("start voltre-core")
    else
        ExecuteCommand("ensure voltre-core")
        LoaderPrint("Resource voltre-core déjà démarré, utilisation de ensure (^1Attention, veuillez supprimer cette ressource de votre server.cfg^7)")
    end

    Wait(2000)

    local resourceCount = GetNumResources()
    for i = 0, resourceCount - 1 do
        local name = GetResourceByFindIndex(i)
        if GetResourceMetadata(name, 'dependency', 0) == 'voltre-loader' then
            if GetResourceState(name) ~= 'started' then
                ExecuteCommand("start "..name)
            else
                ExecuteCommand("ensure "..name)
                LoaderPrint("Resource "..name.." déjà démarré, utilisation de ensure (^1Attention, veuillez supprimer cette ressource de votre server.cfg^7)")
            end
        end
    end

    Wait(2000)

    local success, err = pcall(function()
        local succ = exports["voltre-core"]:showLicense()
        if not succ then
            error("showLicense returned unsuccessful")
        end
    end)
    -- if not success then
    --     LoaderPrint("Failed to show server print: "..tostring(err))
    -- end
end)