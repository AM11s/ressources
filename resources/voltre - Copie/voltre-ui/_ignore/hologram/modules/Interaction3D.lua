--[[
    Voltre Hologram System - 3D Interaction Module (JS-Centric)
    Le JS gère la distance, les inputs et l'affichage
    Le Lua stocke les callbacks et répond aux événements
]]

Interaction3D = {}
Interaction3D.__index = Interaction3D

-- Storage interne
local interactions = {}
local visibleInteractions = {}
local displayEnabled = true
local myBucket = 0

--[[
    Crée une nouvelle interaction 3D
    @param data table - Configuration de l'interaction
    @return string|nil - ID de l'interaction ou nil si erreur
]]
function Interaction3D.Create(data)
    if not data.id then
        data.id = "interaction_" .. math.random(100000, 999999)
    end

    if interactions[data.id] then
        Interaction3D.Remove(data.id)
    end

    -- Validation
    if not data.coords then
        HologramDebug("Erreur: coords requis pour interaction", data.id)
        return nil
    end

    -- Conversion coords
    if type(data.coords) ~= 'vector3' then
        data.coords = vector3(data.coords.x, data.coords.y, data.coords.z)
    end

    -- Valeurs par défaut
    data.type = data.type or "basic"
    data.maxDistance = data.maxDistance or HologramConfig.DefaultViewDistance
    data.maxDistanceInteract = data.maxDistanceInteract or HologramConfig.DefaultInteractDistance
    data.key = data.key or "E"

    -- Préparer les données pour l'hologramme DUI
    local holoData = {
        htmlTarget = "interaction",
        attachTo = 'world',
        type = HologramConfig.Types.MARKER,
        position = data.coords,
        distanceView = data.maxDistance,
        scale = data.scale or vector2(512, 512),
        typeProperties = {
            rotation = vector3(90.0, 0.0, 0.0),
            scale = data.holoScale or vector3(1.5, 1.5, 1.0),
            rotate = false,
            cameraFollow = true,
            cameraFollowVertical = true,
            bobUpAndDown = false,
        },
    }

    -- Créer l'hologramme
    local hologram = HologramCore.Create("interaction_" .. data.id, holoData)
    if not hologram then
        HologramDebug("Erreur création hologramme pour interaction", data.id)
        return nil
    end

    -- Stocker les callbacks (exécutés quand le JS envoie un événement)
    local interaction = {
        id = data.id,
        hologram = hologram,
        coords = data.coords,
        type = data.type,
        text = data.text,
        key = data.key,
        style = data.style or "holographic",
        maxDistance = data.maxDistance,
        maxDistanceInteract = data.maxDistanceInteract,
        bucket = data.bucket,
        
        -- Callbacks Lua
        action = data.Action or data.action,
        canSee = data.canSee,
        canInteract = data.canInteract,
        
        -- Pour type "multi"
        lineCallbacks = {},
    }

    -- Enregistrer les callbacks pour les lignes (type multi)
    if data.type == "multi" and data.text and data.text.lines then
        for _, line in pairs(data.text.lines) do
            if line.id then
                interaction.lineCallbacks[line.id] = {
                    action = line.action,
                    canInteract = line.canInteract,
                }
            end
        end
    end

    -- Callback pour recevoir les événements du JS
    hologram.onCallback = function(eventName, content)
        Interaction3D.HandleCallback(data.id, eventName, content)
    end

    interactions[data.id] = interaction

    -- Envoyer les données au JS une seule fois (register)
    CreateThread(function()
        -- Attendre que le DUI soit prêt
        while not hologram.duiIsReady do
            Wait(50)
        end
        
        -- Envoyer l'enregistrement au JS
        hologram:SendData("register", {
            id = data.id,
            coords = { x = data.coords.x, y = data.coords.y, z = data.coords.z },
            type = data.type,
            text = data.text,
            key = data.key,
            style = interaction.style,
            maxDistance = data.maxDistance,
            maxDistanceInteract = data.maxDistanceInteract,
            hasCanSee = data.canSee ~= nil,
        })
    end)

    -- Créer un blip si demandé
    if data.blip and type(data.blip) == 'table' then
        Interaction3D.CreateBlip(data.id, data.blip, data.coords)
    end

    HologramDebug("Interaction 3D créée:", data.id)
    return data.id
end

--[[
    Gère les callbacks reçus du JS
]]
function Interaction3D.HandleCallback(id, eventName, content)
    local interaction = interactions[id]
    if not interaction then return end

    if eventName == "action" then
        -- Action basique
        if interaction.canInteract then
            interaction.canInteract(function(result)
                if result and interaction.action then
                    interaction.action()
                end
            end)
        elseif interaction.action then
            interaction.action()
        end
        
    elseif eventName == "lineAction" then
        -- Action sur une ligne (multi)
        local lineId = content.lineId
        if interaction.lineCallbacks[lineId] then
            local callback = interaction.lineCallbacks[lineId]
            if callback.canInteract then
                callback.canInteract(function(result)
                    if result and callback.action then
                        callback.action()
                    end
                end)
            elseif callback.action then
                callback.action()
            end
        end
        
    elseif eventName == "checkCanSee" then
        -- Le JS demande si l'interaction est visible
        if interaction.canSee then
            interaction.canSee(function(result)
                if interaction.hologram then
                    interaction.hologram:SendData("canSeeResult", {
                        id = id,
                        result = result
                    })
                end
            end)
        else
            -- Pas de canSee, toujours visible
            if interaction.hologram then
                interaction.hologram:SendData("canSeeResult", {
                    id = id,
                    result = true
                })
            end
        end
    end
end

--[[
    Crée un blip pour l'interaction
]]
function Interaction3D.CreateBlip(id, blipData, coords)
    local blip = AddBlipForCoord(coords.x, coords.y, coords.z)
    SetBlipSprite(blip, blipData.sprite or 1)
    SetBlipDisplay(blip, blipData.display or 4)
    SetBlipScale(blip, blipData.scale or 0.75)
    SetBlipColour(blip, blipData.color or 1)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(blipData.name or "Interaction")
    EndTextCommandSetBlipName(blip)

    interactions[id].blip = blip
end

--[[
    Vérifie si une interaction existe
]]
function Interaction3D.Exists(id)
    return interactions[id] ~= nil
end

--[[
    Supprime une interaction
]]
function Interaction3D.Remove(id)
    local interaction = interactions[id]
    if not interaction then return end

    -- Supprimer l'hologramme
    if interaction.hologram then
        interaction.hologram:Destroy()
    end

    -- Supprimer le blip
    if interaction.blip then
        RemoveBlip(interaction.blip)
    end

    interactions[id] = nil
    visibleInteractions[id] = nil

    HologramDebug("Interaction 3D supprimée:", id)
end

--[[
    Supprime toutes les interactions
]]
function Interaction3D.Clear()
    for id, _ in pairs(interactions) do
        Interaction3D.Remove(id)
    end
end

--[[
    Active/désactive l'affichage global
]]
function Interaction3D.SetDisplayEnabled(enabled)
    displayEnabled = enabled
    if not enabled then
        for id, interaction in pairs(interactions) do
            if interaction.hologram then
                interaction.hologram:SetEnabled(false)
            end
        end
    end
end

--[[
    Cache/montre une interaction spécifique
]]
function Interaction3D.SetHidden(id, hidden)
    if interactions[id] then
        interactions[id].hidden = hidden
        if interactions[id].hologram then
            interactions[id].hologram:SetEnabled(not hidden)
        end
    end
end

--[[
    Met à jour les données d'une interaction et notifie le JS
]]
function Interaction3D.Update(id, key, value)
    local interaction = interactions[id]
    if not interaction then return end
    
    interaction[key] = value
    
    -- Notifier le JS du changement
    if interaction.hologram and interaction.hologram.duiIsReady then
        interaction.hologram:SendData("update", { [key] = value })
    end
end

--[[
    Met à jour plusieurs données d'une interaction
]]
function Interaction3D.UpdateMultiple(id, data)
    local interaction = interactions[id]
    if not interaction then return end
    
    for key, value in pairs(data) do
        interaction[key] = value
    end
    
    -- Notifier le JS
    if interaction.hologram and interaction.hologram.duiIsReady then
        interaction.hologram:SendData("update", data)
    end
end

--[[
    Force le refresh du cache canSee côté JS
]]
function Interaction3D.RefreshCanSee(id)
    local interaction = interactions[id]
    if not interaction then return end
    
    if interaction.hologram and interaction.hologram.duiIsReady then
        interaction.hologram:SendData("refreshCanSee", { id = id })
    end
end

--[[
    Met à jour le bucket du joueur
]]
function Interaction3D.SetBucket(bucket)
    myBucket = bucket
end

--[[
    Récupère une interaction par son ID
]]
function Interaction3D.Get(id)
    return interactions[id]
end

--[[
    Récupère toutes les interactions
]]
function Interaction3D.GetAll()
    return interactions
end

-- Écouter les changements de bucket
RegisterNetEvent("Voltre:esx:changeBucket", function(value)
    Interaction3D.SetBucket(value)
end)

local configCacheInteract = {}

-- Thread principal : coordonnées + inputs
CreateThread(function()

    while true do
        local playerCoords = GetEntityCoords(PlayerPedId())
        local hasActiveInteraction = false
        
        for id, interaction in pairs(interactions) do
            if interaction.hologram and interaction.hologram.duiIsReady then
                -- Envoyer les coordonnées
                interaction.hologram:SendData("playerCoords", {
                    x = playerCoords.x,
                    y = playerCoords.y,
                    z = playerCoords.z
                })

                if configCacheInteract[id] == nil then
                    interaction.hologram:SendData("initConfig", {
                        config = voltre.getConvarKey("jsColor"),
                        name = voltre.getConvarKey("serverName"),
                        logo = voltre.getConvarKey("serverCHAr")
                    })
                    configCacheInteract[id] = true
                end
                
                -- Calculer la distance pour les inputs
                local distance = #(playerCoords - interaction.coords)
                local canInteract = distance <= interaction.maxDistanceInteract
                
                if canInteract then
                    hasActiveInteraction = true
                    
                    -- Gérer les inputs pour type "basic"
                    if interaction.type == "basic" then
                        local keyCode = HologramConfig.Keys[interaction.key]
                        if keyCode and IsControlJustPressed(0, keyCode) then
                            HologramDebug("Action triggered for:", id)
                            -- Envoyer l'animation au JS
                            interaction.hologram:SendData("actionPressed", { type = "basic" })
                            Interaction3D.HandleCallback(id, "action", {})
                        end
                    
                    -- Gérer les inputs pour type "multi"
                    elseif interaction.type == "multi" and interaction.text and interaction.text.lines then
                        for _, line in pairs(interaction.text.lines) do
                            if line.key and not line.hidden then
                                local keyCode = HologramConfig.Keys[line.key]
                                if keyCode and IsControlJustPressed(0, keyCode) then
                                    interaction.hologram:SendData("actionPressed", { type = "multi", lineId = line.id })
                                    Interaction3D.HandleCallback(id, "lineAction", { lineId = line.id })
                                end
                            end
                        end
                    end
                end
            end
        end
        
        -- Wait(0) si interaction active (pour les inputs), sinon Wait(100)
        if hasActiveInteraction then
            Wait(0)
        else
            Wait(500)
        end
    end
end)

return Interaction3D
