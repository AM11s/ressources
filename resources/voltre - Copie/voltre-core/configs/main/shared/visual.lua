-- =============================================================================
-- HUD & Visuel
-- =============================================================================

-- @dashboardLabel: HUD actif
-- @dashboardDescription: Sélection du HUD utilisé par le serveur. Un seul doit être activé à la fois.
-- @dashboardGroup: HUD
Config.Hud = {
    -- @dashboardLabel: HUD voltre-core
    -- @dashboardGroup: HUD
    -- @dashboardWidget: boolean
    ["voltre-core"] = true,
    -- @dashboardLabel: HUD externe (autres)
    -- @dashboardDescription: Active le support d'un HUD externe (qb-hud, ox-hud, etc.). Utile si vous remplacez le HUD natif.
    -- @dashboardGroup: HUD
    -- @dashboardWidget: boolean
    ["others"] = false,
}

Config.HudExports = { -- bool: Afficher: true, Cacher: false
    ["voltre-core"] = function(bool)
        HideHud(not bool)
        Display3DInteractions(bool)
        SetNotificationsEnabled(bool)
        ForceCanInfo(bool)
    end,
    ["More"] = function(bool) -- exemple
        DisplayRadar(bool) 
    end
}

Config.HudConfig = {
    ["always-display"] = {
        ["voltre-core"] = {
            enabled = true,
            functions = function(bool)
                HideHud(not bool)
                Display3DInteractions(bool)
            end
        }
    },
    ["additional-display"] = {
        ["voltre-core"] = {
            enabled = true,
            functions = function(bool)
                SetNotificationsEnabled(bool)
                ForceCanInfo(bool)
                exports["voltre-core"]:setChatCanOpen(bool)
            end
        }
    },
    ["3dinteractions"] = {
        ["voltre-core"] = {
            enabled = true,
            functions = function(bool)
                Display3DInteractions(bool)
            end
        }
    }
}

-- Si votre HUD n'est pas start alors il sera désactiver (vous pouvez enlever cette partie)
Citizen.CreateThread(function() 
    Wait(2000)
    for k,v in pairs(Config.Hud) do
        if k ~= "voltre-core" and GetResourceState(k) ~= "started" then 
            Config.Hud[k] = false
        end
    end
end)