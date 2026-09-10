local resourceName = GetCurrentResourceName()
local isServer = IsDuplicityVersion()

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
    if resourceName == "voltre-loader" then
        exports('ApplyDashboardConfig', function()
            if not exports['voltre-loader']:IsDashboardConfigLoaded() then
                return false
            end
            
            local dashboardConfig = exports['voltre-loader']:GetDashboardConfig()
            
            if not dashboardConfig or not next(dashboardConfig) then
                return true
            end
            
            local count = 0
            for configKey, value in pairs(dashboardConfig) do
                MergeConfigValue(configKey, value)
                count = count + 1
            end
            
            if count > 0 then
                print("[^2Voltre^1Loader^7] "..count.." paramètres appliqués pour "..GetCurrentResourceName())
            end 
            
            return true
        end)
        exports('stopResource', function(name)
            StopResource(name)
        end)
    else
        if isServer then
            while GetResourceState('voltre-loader') ~= 'started' do
                Wait(100)
            end
            
            --voltre.stopResource = exports["voltre-loader"]:stopResource

            local maxAttempts = 100
            local attempts = 0
            while attempts < maxAttempts do
                local success, isLoaded = pcall(function()
                    return exports['voltre-loader']:IsDashboardConfigLoaded()
                end)
                
                if success and isLoaded then
                    break
                end
                
                attempts = attempts + 1
                Wait(100)
            end
            
            local success, result = pcall(function()
                return exports['voltre-loader']:ApplyDashboardConfig()
            end)
            
            if success and result then
                -- compte le nombre de clés appliquées localement pour le debug
                local ok, dashCfg = pcall(function() return exports['voltre-loader']:GetDashboardConfig() end)
                local n = 0
                if ok and type(dashCfg) == "table" then
                    for _ in pairs(dashCfg) do n = n + 1 end
                end
                pcall(function()
                    exports['voltre-loader']:RecordApply(resourceName, n, "server")
                end)
            else
                print("[^2Voltre^1Loader^7] Impossible d'appliquer la config dashboard pour "..resourceName)
                pcall(function()
                    exports['voltre-loader']:RecordApply(resourceName, -1, "server")
                end)
            end
        else
            --Citizen.CreateThread(function()
                local maxAttempts = 100
                local attempts = 0
                
                while attempts < maxAttempts do
                    if GlobalState.VoltreDashboardConfig ~= nil then
                        break
                    end
                    attempts = attempts + 1
                    Wait(10)
                end
                
                local dashboardConfig = GlobalState.VoltreDashboardConfig
                
                if dashboardConfig and next(dashboardConfig) then
                    local count = 0
                    for configKey, value in pairs(dashboardConfig) do
                        MergeConfigValue(configKey, value)
                        count = count + 1
                    end
                    
                    if count > 0 then
                        print("[^2Voltre^1Loader^7] "..count.." paramètres appliqués (client) pour "..resourceName)
                    end

                    -- Report au serveur pour la télémétrie debug
                    TriggerServerEvent('voltre-loader:debug:clientApplied', resourceName, count)
                else
                    TriggerServerEvent('voltre-loader:debug:clientApplied', resourceName, 0)
                end
            --end)
        end
    end
end

ApplyDashboardConfig()
