--[[
    Voltre Core - Configs Loader
    Ce fichier est chargé par les ressources externes pour avoir accès aux configs
    Il récupère les globals depuis voltre-core via exports
]]

local resourceName = GetCurrentResourceName()
local resourceName2 = GetInvokingResource()
if resourceName == "voltre-core" then
    -- Dans voltre-core : créer les exports pour partager les globals
    exports("GetConfig", function()
        return Config
    end)
    
    exports("GetVoltre", function()
        if voltre == nil then
            while voltre == nil do
                Wait(100)
            end
        end
        return voltre
    end)
    
    exports("GetESX", function()
        if ESX == nil then
            while ESX == nil do
                Wait(100)
            end
        end
        return ESX
    end)

    -- Exports VoltreUI/RageUI (client uniquement)
    if not IsDuplicityVersion() then
        exports("GetVoltreUI", function()
            return VoltreUI
        end)
        
        exports("GetRageUI", function()
            return RageUI or VoltreUI
        end)
        
        -- Alias pour compatibilité
        exports("GetRMenu", function()
            return RMenu
        end)
    end
    
    if voltre and voltre.InitPrint then
        voltre.InitPrint("^2Configs loader initialized")
    end
else
    while true do 
        local success, error = pcall(function()
            Config = exports["voltre-core"]:GetConfig()
            voltre = exports["voltre-core"]:GetVoltre()
            ESX = exports["voltre-core"]:GetESX()
        end)
        if success then
            break
        end
        Wait(100)
    end
    
    if IsDuplicityVersion() then 
        if string.find(resourceName, "voltre-") then
            local isAllowed = false
            while voltre == nil or voltre.auth == nil do
                Wait(100)
            end

            if voltre.auth.resources == nil then
                isAllowed = true
            else
                for _, allowedResource in ipairs(voltre.auth.resources) do
                    if allowedResource == resourceName then
                        isAllowed = true
                        break
                    end
                end
            end
            
            if not isAllowed then
                print("^1[Voltre Auth] Ressource non autorisée: " .. resourceName)
                print("^1[Voltre Auth] Arrêt de la ressource...")
                BaseStopResource(resourceName, "Ressource non autorisée")
                voltre = nil
                Config = nil
                return
            end
        end
    end
    
    if not IsDuplicityVersion() then
        local rageUIExport = exports["voltre-core"]:GetRageUI()
        if rageUIExport then
            RageUI = rageUIExport
        end
        
        local rmenuExport = exports["voltre-core"]:GetRMenu()
        if rmenuExport then
            RMenu = rmenuExport
        end
    end

    if voltre.setLoaderName then 
        voltre.setLoaderName(resourceName)
    end

    --voltre.InitPrint("^2Configs chargées depuis voltre-core", resourceName)
end