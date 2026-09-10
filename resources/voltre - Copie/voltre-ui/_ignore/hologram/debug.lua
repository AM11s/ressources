--[[
    Voltre Hologram System - Debug Commands
    Commandes de test pour chaque type d'hologramme
]]

-- Stockage des hologrammes de debug
debugHolograms = {}
debugPed = nil

-- Fonction utilitaire pour nettoyer les hologrammes de debug
local function CleanupDebugHolograms()
    for id, _ in pairs(debugHolograms) do
        HologramCore.Destroy(id)
        debugHolograms[id] = nil
    end
    if debugPed and DoesEntityExist(debugPed) then
        DeleteEntity(debugPed)
        debugPed = nil
    end
    print("^2[Debug] Tous les hologrammes de debug ont été supprimés^7")
end

-- ============================================
-- DEBUG: MARKER TYPE (DrawMarker avec texture)
-- ============================================
RegisterCommand('holodebug:marker', function()
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)
    local forward = GetEntityForwardVector(ped)
    local pos = coords + forward * 3.0
    
    local id = "debug_marker"
    debugHolograms[id] = true
    
    HologramCore.Create(id, {
        urlTarget = "https://www.google.com",
        attachTo = 'world',
        type = HologramConfig.Types.MARKER,
        position = pos,
        distanceView = 50.0,
        scale = vector2(1920, 1024),
        typeProperties = {
            rotation = vector3(90.0, 0.0, 0.0),
            scale = vector3(2.0, 2.0, 1.0),
            rotate = false,
            cameraFollow = true,
            cameraFollowVertical = true,
            bobUpAndDown = false,
            markerType = 9,
        }
    })
    
    print("^3[Debug] Hologramme MARKER créé à", pos, "^7")
    print("^3[Debug] Type: DrawMarker avec texture DUI^7")
end, false)

-- ============================================
-- DEBUG: SCALEFORM TYPE
-- ============================================

local scaleformScale = 0.15

RegisterCommand('holodebug:scaleform', function()
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)
    local forward = GetEntityForwardVector(ped)
    local pos = coords + forward * 3.0
    
    local id = "debug_scaleform"
    debugHolograms[id] = true
    
    HologramCore.Create(id, {
        urlTarget = "https://www.youtube.com",
        attachTo = 'world',
        type = HologramConfig.Types.SCALEFORM,
        position = pos,
        distanceView = 50.0,
        scale = vector2(1920, 1080),
        sfScale = scaleformScale,
        typeProperties = {
            cameraFollow = true,
        }
    })
    
    print("^3[Debug] Hologramme SCALEFORM créé à", pos, "^7")
    print("^3[Debug] Type: Scaleform 3D^7")
end, false)

-- ============================================
-- DEBUG: SCALEFORM TYPE
-- ============================================
RegisterCommand('holo:scaleformscale', function(source, args)
    if not args[1] then
        print("^1[Debug] Veuillez spécifier une valeur pour le scaleform scale!^7")
        return
    end
    scaleformScale = tonumber(args[1])
    print("^3[Debug] Scaleform scale modifié à", scaleformScale, "^7")
end, false)

-- ============================================
-- DEBUG: ENTITY TYPE (Attaché à une entité hologramme)
-- ============================================
RegisterCommand('holodebug:entity', function()
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)
    local forward = GetEntityForwardVector(ped)
    local pos = coords + forward * 3.0
    
    local id = "debug_entity"
    debugHolograms[id] = true
    
    HologramCore.Create(id, {
        urlTarget = "https://www.twitch.tv",
        attachTo = 'world',
        type = HologramConfig.Types.ENTITY,
        position = pos,
        distanceView = 50.0,
        scale = vector2(1920, 1024),
        typeProperties = {
            rotation = vector3(0.0, 0.0, 0.0),
        }
    })
    
    print("^3[Debug] Hologramme ENTITY créé à", pos, "^7")
    print("^3[Debug] Type: Attaché à une entité véhicule hologramme^7")
end, false)

-- ============================================
-- DEBUG: PLAYER ATTACHED
-- ============================================
RegisterCommand('holodebug:player', function()
    local id = "debug_player_attached"
    debugHolograms[id] = true
    
    HologramCore.Create(id, {
        urlTarget = "https://www.github.com",
        attachTo = 'player',
        type = HologramConfig.Types.ENTITY,
        distanceView = 50.0,
        scale = vector2(1920, 1024),
        typeProperties = {
            attachmentOffset = vec3(0.8, 1.5, 0.75),
            attachmentRotation = vec3(6.5, -0.5, 0.85),
        }
    })
    
    print("^3[Debug] Hologramme attaché au joueur^7")
    print("^3[Debug] Type: Attaché à l'entité joueur^7")
end, false)

-- ============================================
-- DEBUG: VEHICLE ATTACHED
-- ============================================
RegisterCommand('holodebug:vehicle', function()
    local ped = PlayerPedId()
    local vehicle = GetVehiclePedIsIn(ped, false)
    
    if vehicle == 0 then
        print("^1[Debug] Vous devez être dans un véhicule!^7")
        return
    end
    
    local id = "debug_vehicle"
    debugHolograms[id] = true
    
    local coords = GetEntityCoords(vehicle)
    
    -- Créer l'hologramme à la position du véhicule
    local hologram = HologramCore.Create(id, {
        urlTarget = "https://www.reddit.com",
        attachTo = 'world',
        type = HologramConfig.Types.ENTITY,
        position = coords,
        distanceView = 100.0,
        scale = vector2(1920, 1024),
    })
    
    -- Thread pour attacher au véhicule
    CreateThread(function()
        Wait(1000) -- Attendre que l'hologramme soit initialisé
        
        local holo = HologramCore.Get(id)
        if holo and holo.hologramObject and DoesEntityExist(holo.hologramObject) then
            AttachEntityToEntity(
                holo.hologramObject, vehicle,
                0, -- Bone index
                0.0, 2.0, 1.0, -- Offset
                0.0, 0.0, 0.0, -- Rotation
                false, true, false, true, 2, true
            )
            print("^2[Debug] Hologramme attaché au véhicule^7")
        end
    end)
    
    print("^3[Debug] Hologramme VEHICLE créé^7")
    print("^3[Debug] Type: Attaché à un véhicule^7")
end, false)

-- ============================================
-- DEBUG: BLIP TEST
-- ============================================
RegisterCommand('holodebug:blip', function()
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)
    local forward = GetEntityForwardVector(ped)
    local pos = coords + forward * 5.0
    
    exports['voltre-ui']:CreateHologramInteraction({
        id = "debug_blip_interaction",
        type = "basic",
        coords = pos,
        text = "Test avec Blip",
        key = "E",
        maxDistance = 50.0,
        maxDistanceInteract = 2.0,
        blip = {
            sprite = 280,
            color = 2,
            scale = 0.8,
            name = "Debug Hologram"
        },
        Action = function()
            print("^2[Debug] Interaction avec blip activée!^7")
        end
    })
    
    debugHolograms["debug_blip_interaction"] = true
    
    print("^3[Debug] Interaction avec BLIP créée à", pos, "^7")
    print("^3[Debug] Type: Interaction 3D avec blip sur la carte^7")
end, false)

-- ============================================
-- DEBUG: NUI ATTACHED TO PED
-- ============================================
RegisterCommand('holodebug:ped', function()
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)
    local forward = GetEntityForwardVector(ped)
    local pos = coords + forward * 2.0
    
    -- Créer un ped
    RequestModel(`a_m_m_business_01`)
    while not HasModelLoaded(`a_m_m_business_01`) do
        Wait(10)
    end
    
    debugPed = CreatePed(4, `a_m_m_business_01`, pos.x, pos.y, pos.z, 0.0, false, true)
    FreezeEntityPosition(debugPed, true)
    SetEntityInvincible(debugPed, true)
    SetBlockingOfNonTemporaryEvents(debugPed, true)
    
    -- Créer l'hologramme attaché au ped
    local id = "debug_ped_nui"
    debugHolograms[id] = true
    
    local hologram = HologramCore.Create(id, {
        htmlTarget = "ped_nui",
        attachTo = 'world',
        type = HologramConfig.Types.ENTITY,
        position = pos,
        distanceView = 50.0,
        scale = vector2(512, 1024), -- Taille verticale pour couvrir le ped
    })
    
    -- Thread pour attacher au ped et ajuster la taille
    CreateThread(function()
        Wait(1000)
        
        local holo = HologramCore.Get(id)
        if holo and holo.hologramObject and DoesEntityExist(holo.hologramObject) then
            -- Calculer la taille du ped
            local min, max = GetModelDimensions(GetEntityModel(debugPed))
            local pedHeight = max.z - min.z
            local pedWidth = max.x - min.x
            
            -- Attacher l'hologramme au ped
            AttachEntityToEntity(
                holo.hologramObject, debugPed,
                0, -- Bone index
                0.0, 0.0, pedHeight / 2, -- Offset centré
                0.0, 0.0, 0.0, -- Rotation
                false, true, false, true, 2, true
            )
            
            print("^2[Debug] Hologramme attaché au ped^7")
            print("^2[Debug] Hauteur du ped:", pedHeight, "^7")
        end
    end)
    
    print("^3[Debug] NUI attaché à un PED créé à", pos, "^7")
    print("^3[Debug] Type: NUI avec fond rgba(12, 12, 12, 0.92) attaché à un ped^7")
end, false)

-- ============================================
-- DEBUG: SCALEFORM BEHIND PED
-- ============================================
RegisterCommand('holodebug:pedscaleform', function()
    local playerPed = PlayerPedId()
    local coords = GetEntityCoords(playerPed)
    local forward = GetEntityForwardVector(playerPed)
    local pos = coords + forward * 3.0
    
    -- Créer un ped
    RequestModel(`a_m_m_business_01`)
    while not HasModelLoaded(`a_m_m_business_01`) do
        Wait(10)
    end
    
    debugPed = CreatePed(4, `a_m_m_business_01`, pos.x, pos.y, pos.z, 0.0, false, true)
    FreezeEntityPosition(debugPed, true)
    SetEntityInvincible(debugPed, true)
    SetBlockingOfNonTemporaryEvents(debugPed, true)
    
    SetEntityHeading(debugPed, ToFloat((math.random(1, 360))))

    -- Obtenir le heading du ped
    local pedHeading = GetEntityHeading(debugPed)
    
    -- Calculer les dimensions du ped
    local min, max = GetModelDimensions(GetEntityModel(debugPed))
    local pedHeight = max.z - min.z
    local pedWidth = math.max(max.x - min.x, max.y - min.y)
    
    print("^3[Debug] Dimensions ped (world units): largeur=" .. pedWidth .. ", hauteur=" .. pedHeight .. "^7")

    -- Calculer la position derrière le ped
    local pedCoords = GetEntityCoords(debugPed)
    local headingRad = math.rad(pedHeading)
    
    -- Créer le scaleform derrière le ped
    local id = "debug_ped_scaleform"
    debugHolograms[id] = true
    
    -- Dimensions de base (ajustables avec les commandes)
    local scaleWidth = 1400
    local scaleHeight = 1300
    local sfScale = 0.05
    local offsetX = -0.62
    local offsetY = -0.2
    local offsetZ = 0.0
    local pedRotation = GetEntityRotation(debugPed)
    local behindPos = GetOffsetFromEntityInWorldCoords(debugPed, offsetX, offsetY, offsetZ)
    
    HologramCore.Create(id, {
        htmlTarget = "ped_background",
        attachTo = 'world',
        type = HologramConfig.Types.SCALEFORM,
        position = vector3(behindPos.x, behindPos.y, behindPos.z + 0.98),
        distanceView = 100.0,  -- Augmenté pour être sûr
        scale = vector2(scaleWidth, scaleHeight),
        sfScale = sfScale,
        typeProperties = {
            cameraFollow = false,
            rotation = vector3(pedRotation.x, pedRotation.y, pedRotation.z),
        }
    })
    
    Wait(100)  -- Attendre que le scaleform soit initialisé
    
    -- Stocker les valeurs pour les ajustements
    debugHolograms[id .. "_width"] = scaleWidth
    debugHolograms[id .. "_height"] = scaleHeight
    debugHolograms[id .. "_scale"] = sfScale
    debugHolograms[id .. "_offsetX"] = offsetX
    debugHolograms[id .. "_offsetY"] = offsetY
    debugHolograms[id .. "_offsetZ"] = offsetZ
    debugHolograms[id .. "_pedCoords"] = pedCoords
    debugHolograms[id .. "_pedHeight"] = pedHeight
    debugHolograms[id .. "_pedRotation"] = vector3(pedRotation.x, pedRotation.y, pedRotation.z)
    debugHolograms[id .. "_behindPos"] = behindPos
    
    print("^3[Debug] Scaleform créé derrière le PED^7")
    print("^3[Debug] Position ped:", pedCoords, "^7")
    print("^3[Debug] Position scaleform:", behindPos, "^7")
    print("^3[Debug] Heading:", pedHeading, "^7")
    print("^3[Debug] Dimensions ped: largeur=" .. pedWidth .. ", hauteur=" .. pedHeight .. "^7")
    print("^3[Debug] Dimensions scaleform: " .. scaleWidth .. "x" .. scaleHeight .. "^7")
    print("^3[Debug] Scale 3D: " .. sfScale .. "^7")
    print("^3[Debug] Offset: X=" .. offsetX .. " Y=" .. offsetY .. " Z=" .. offsetZ .. "^7")
    print("^3[Debug] Fond: rgba(12, 12, 12, 0.92)^7")
    
    -- Vérifier si le scaleform existe
    Citizen.CreateThread(function()
        Wait(500)
        local holo = HologramCore.Get(id)
        if holo then
            print("^2[Debug] Scaleform confirmé actif^7")
        else
            print("^1[Debug] ERREUR: Scaleform non trouvé!^7")
        end
    end)
end, false)

-- ============================================
-- DEBUG: ROTATION TEST
-- ============================================
RegisterCommand('holodebug:rotation', function()
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)
    local forward = GetEntityForwardVector(ped)
    local pos = coords + forward * 3.0
    
    local id = "debug_rotation"
    debugHolograms[id] = true
    
    HologramCore.Create(id, {
        urlTarget = "https://www.wikipedia.org",
        attachTo = 'world',
        type = HologramConfig.Types.MARKER,
        position = pos,
        distanceView = 50.0,
        scale = vector2(1920, 1024),
        typeProperties = {
            rotation = vector3(90.0, 0.0, 0.0),
            scale = vector3(2.0, 2.0, 1.0),
            rotate = true, -- Rotation continue
            cameraFollow = false,
            cameraFollowVertical = false,
            bobUpAndDown = true, -- Flottement
        }
    })
    
    print("^3[Debug] Hologramme avec ROTATION créé à", pos, "^7")
    print("^3[Debug] Type: Marker avec rotation continue et flottement^7")
end, false)

-- ============================================
-- DEBUG: CAMERA FOLLOW TEST
-- ============================================
RegisterCommand('holodebug:camera', function()
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)
    local forward = GetEntityForwardVector(ped)
    local pos = coords + forward * 3.0
    
    local id = "debug_camera"
    debugHolograms[id] = true
    
    HologramCore.Create(id, {
        urlTarget = "https://www.stackoverflow.com",
        attachTo = 'world',
        type = HologramConfig.Types.MARKER,
        position = pos,
        distanceView = 50.0,
        scale = vector2(1920, 1024),
        typeProperties = {
            rotation = vector3(90.0, 0.0, 0.0),
            scale = vector3(2.5, 2.5, 1.0),
            rotate = false,
            cameraFollow = true, -- Suit la caméra horizontalement
            cameraFollowVertical = true, -- Suit la caméra verticalement
            bobUpAndDown = false,
        }
    })
    
    print("^3[Debug] Hologramme avec CAMERA FOLLOW créé à", pos, "^7")
    print("^3[Debug] Type: Marker qui suit la caméra (horizontal + vertical)^7")
end, false)

-- ============================================
-- DEBUG: MULTIPLE HOLOGRAMS
-- ============================================
RegisterCommand('holodebug:multiple', function()
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)
    local forward = GetEntityForwardVector(ped)
    local right = GetEntityForwardVector(ped)
    right = vector3(-right.y, right.x, 0.0) -- Perpendiculaire
    
    -- Créer 5 hologrammes en cercle
    for i = 1, 5 do
        local angle = (i - 1) * (360 / 5)
        local rad = math.rad(angle)
        local offset = vector3(math.cos(rad) * 5.0, math.sin(rad) * 5.0, 0.0)
        local pos = coords + offset
        
        local id = "debug_multi_" .. i
        debugHolograms[id] = true
        
        HologramCore.Create(id, {
            urlTarget = "https://www.example.com",
            attachTo = 'world',
            type = HologramConfig.Types.MARKER,
            position = pos,
            distanceView = 50.0,
            scale = vector2(1024, 1024),
            typeProperties = {
                rotation = vector3(90.0, 0.0, 0.0),
                scale = vector3(1.5, 1.5, 1.0),
                cameraFollow = true,
                cameraFollowVertical = true,
            }
        })
    end
    
    print("^3[Debug] 5 hologrammes créés en cercle autour de vous^7")
end, false)

-- ============================================
-- DEBUG: SEND DATA TO DUI
-- ============================================
RegisterCommand('holodebug:senddata', function()
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)
    local forward = GetEntityForwardVector(ped)
    local pos = coords + forward * 3.0
    
    local id = "debug_senddata"
    debugHolograms[id] = true
    
    local hologram = HologramCore.Create(id, {
        htmlTarget = "test_data",
        attachTo = 'world',
        type = HologramConfig.Types.MARKER,
        position = pos,
        distanceView = 50.0,
        scale = vector2(1920, 1024),
        typeProperties = {
            rotation = vector3(90.0, 0.0, 0.0),
            scale = vector3(2.0, 2.0, 1.0),
            cameraFollow = true,
            cameraFollowVertical = true,
        }
    })
    
    -- Envoyer des données au DUI après 2 secondes
    CreateThread(function()
        Wait(2000)
        local holo = HologramCore.Get(id)
        if holo then
            holo:SendData("updateContent", {
                title = "Test Data",
                message = "Données envoyées depuis Lua!",
                timestamp = os.time()
            })
            print("^2[Debug] Données envoyées au DUI^7")
        end
    end)
    
    print("^3[Debug] Hologramme avec SEND DATA créé^7")
end, false)

-- ============================================
-- DEBUG: CLEANUP
-- ============================================
RegisterCommand('holodebug:clear', function()
    CleanupDebugHolograms()
end, false)

-- ============================================
-- DEBUG: LIST ALL
-- ============================================
RegisterCommand('holodebug:list', function()
    print("^3[Debug] Hologrammes actifs:^7")
    local count = 0
    for id, _ in pairs(debugHolograms) do
        local holo = HologramCore.Get(id)
        if holo then
            print("  - " .. id .. " (type: " .. holo.data.type .. ", visible: " .. tostring(holo.visible) .. ")")
            count = count + 1
        end
    end
    print("^3[Debug] Total: " .. count .. " hologrammes^7")
end, false)

-- ============================================
-- DEBUG: HELP
-- ============================================
RegisterCommand('holodebug:help', function()
    print("^2========== HOLOGRAM DEBUG COMMANDS ==========^7")
    print("^3/holodebug:marker^7       - Test DrawMarker avec texture")
    print("^3/holodebug:scaleform^7    - Test Scaleform 3D")
    print("^3/holodebug:entity^7       - Test entité hologramme")
    print("^3/holodebug:player^7       - Test attaché au joueur")
    print("^3/holodebug:vehicle^7      - Test attaché à un véhicule")
    print("^3/holodebug:blip^7         - Test interaction avec blip")
    print("^3/holodebug:ped^7          - Test NUI attaché à un ped")
    print("^3/holodebug:pedscaleform^7 - Test scaleform derrière un ped")
    print("^3/holodebug:rotation^7     - Test rotation continue")
    print("^3/holodebug:camera^7       - Test suivi caméra")
    print("^3/holodebug:multiple^7     - Test 5 hologrammes en cercle")
    print("^3/holodebug:senddata^7     - Test envoi de données au DUI")
    print("^3/holodebug:list^7         - Liste tous les hologrammes actifs")
    print("^3/holodebug:clear^7        - Supprime tous les hologrammes de debug")
    print("^2==============================================^7")
    print("^2========== LIVE ADJUSTMENT COMMANDS =========^7")
    print("^3/holo:width <px>^7        - Ajuster largeur (100-2048)")
    print("^3/holo:height <px>^7       - Ajuster hauteur (100-2048)")
    print("^3/holo:scale <val>^7       - Ajuster échelle 3D (0.1-5.0)")
    print("^3/holo:offsetx <val>^7     - Déplacer gauche/droite")
    print("^3/holo:offsety <val>^7     - Déplacer avant/arrière")
    print("^3/holo:offsetz <val>^7     - Déplacer haut/bas")
    print("^3/holo:info^7              - Afficher valeurs actuelles")
    print("^2==============================================^7")
end, false)

-- ============================================
-- LIVE ADJUSTMENT COMMANDS
-- ============================================

-- Fonction pour recréer le scaleform avec les nouvelles valeurs
function UpdatePedScaleform()
    local id = "debug_ped_scaleform"
    local holo = HologramCore.Get(id)
    if not holo then
        print("^1[Debug] Aucun scaleform actif. Utilisez /holodebug:pedscaleform d'abord^7")
        return false
    end
    
    local width = debugHolograms[id .. "_width"]
    local height = debugHolograms[id .. "_height"]
    local scale = debugHolograms[id .. "_scale"]
    local offX = debugHolograms[id .. "_offsetX"]
    local offY = debugHolograms[id .. "_offsetY"]
    local offZ = debugHolograms[id .. "_offsetZ"]
    local behindPos = debugHolograms[id .. "_behindPos"]
    local rotation = debugHolograms[id .. "_pedRotation"]
    
    if not behindPos then
        print("^1[Debug] Données manquantes^7")
        return false
    end
    
    -- Détruire l'ancien
    HologramCore.Destroy(id)
    
    

    HologramCore.Create(id, {
        htmlTarget = "ped_background",
        attachTo = 'world',
        type = HologramConfig.Types.SCALEFORM,
        position = vector3(behindPos.x, behindPos.y, behindPos.z + 0.98),
        distanceView = 50.0,
        scale = vector2(width, height),
        sfScale = scale,
        typeProperties = {
            cameraFollow = false,
            rotation = rotation,
        }
    })
    
    print("^2[Debug] Scaleform mis à jour: " .. width .. "x" .. height .. " | Scale: " .. scale .. " | Offset: " .. offX .. "," .. offY .. "," .. offZ .. "^7")
    return true
end

-- Ajuster la largeur (pixels)
RegisterCommand('holo:width', function(source, args)
    local id = "debug_ped_scaleform"
    if not debugHolograms[id .. "_width"] then
        print("^1[Debug] Aucun scaleform actif^7")
        return
    end
    
    local value = tonumber(args[1])
    if not value then
        print("^3[Debug] Width actuel: " .. debugHolograms[id .. "_width"] .. "^7")
        print("^3Usage: /holo:width <valeur>^7")
        return
    end
    
    debugHolograms[id .. "_width"] = math.max(100, math.min(2048, value))
    UpdatePedScaleform()
end, false)

-- Ajuster la hauteur (pixels)
RegisterCommand('holo:height', function(source, args)
    local id = "debug_ped_scaleform"
    if not debugHolograms[id .. "_height"] then
        print("^1[Debug] Aucun scaleform actif^7")
        return
    end
    
    local value = tonumber(args[1])
    if not value then
        print("^3[Debug] Height actuel: " .. debugHolograms[id .. "_height"] .. "^7")
        print("^3Usage: /holo:height <valeur>^7")
        return
    end
    
    debugHolograms[id .. "_height"] = math.max(100, math.min(2048, value))
    UpdatePedScaleform()
end, false)

-- Ajuster l'échelle 3D
RegisterCommand('holo:scale', function(source, args)
    local id = "debug_ped_scaleform"
    if not debugHolograms[id .. "_scale"] then
        print("^1[Debug] Aucun scaleform actif^7")
        return
    end
    
    local value = tonumber(args[1])
    if not value then
        print("^3[Debug] Scale actuel: " .. debugHolograms[id .. "_scale"] .. "^7")
        print("^3Usage: /holo:scale <valeur>^7")
        return
    end
    
    debugHolograms[id .. "_scale"] = value
    UpdatePedScaleform()
end, false)

-- Ajuster offset X (gauche/droite)
RegisterCommand('holo:offsetx', function(source, args)
    local id = "debug_ped_scaleform"
    if not debugHolograms[id .. "_offsetX"] then
        print("^1[Debug] Aucun scaleform actif^7")
        return
    end
    
    local value = tonumber(args[1])
    if not value then
        print("^3[Debug] OffsetX actuel: " .. debugHolograms[id .. "_offsetX"] .. "^7")
        print("^3Usage: /holo:offsetx <valeur> (négatif = gauche, positif = droite)^7")
        return
    end
    
    debugHolograms[id .. "_offsetX"] = value
    UpdatePedScaleform()
end, false)

-- Ajuster offset Y (avant/arrière)
RegisterCommand('holo:offsety', function(source, args)
    local id = "debug_ped_scaleform"
    if not debugHolograms[id .. "_offsetY"] then
        print("^1[Debug] Aucun scaleform actif^7")
        return
    end
    
    local value = tonumber(args[1])
    if not value then
        print("^3[Debug] OffsetY actuel: " .. debugHolograms[id .. "_offsetY"] .. "^7")
        print("^3Usage: /holo:offsety <valeur> (négatif = devant, positif = derrière)^7")
        return
    end
    
    debugHolograms[id .. "_offsetY"] = value
    UpdatePedScaleform()
end, false)

-- Ajuster offset Z (haut/bas)
RegisterCommand('holo:offsetz', function(source, args)
    local id = "debug_ped_scaleform"
    if not debugHolograms[id .. "_offsetZ"] then
        print("^1[Debug] Aucun scaleform actif^7")
        return
    end
    
    local value = tonumber(args[1])
    if not value then
        print("^3[Debug] OffsetZ actuel: " .. debugHolograms[id .. "_offsetZ"] .. "^7")
        print("^3Usage: /holo:offsetz <valeur> (négatif = bas, positif = haut)^7")
        return
    end
    
    debugHolograms[id .. "_offsetZ"] = value
    UpdatePedScaleform()
end, false)

-- Afficher les valeurs actuelles
RegisterCommand('holo:info', function()
    local id = "debug_ped_scaleform"
    if not debugHolograms[id .. "_width"] then
        print("^1[Debug] Aucun scaleform actif^7")
        return
    end
    
    print("^2========== VALEURS ACTUELLES ==========^7")
    print("^3Width:    " .. debugHolograms[id .. "_width"] .. " px^7")
    print("^3Height:   " .. debugHolograms[id .. "_height"] .. " px^7")
    print("^3Scale:    " .. debugHolograms[id .. "_scale"] .. "^7")
    print("^3OffsetX:  " .. debugHolograms[id .. "_offsetX"] .. " (gauche/droite)^7")
    print("^3OffsetY:  " .. debugHolograms[id .. "_offsetY"] .. " (avant/arrière)^7")
    print("^3OffsetZ:  " .. debugHolograms[id .. "_offsetZ"] .. " (haut/bas)^7")
    print("^2========================================^7")
end, false)

-- Nettoyage automatique à l'arrêt de la ressource
AddEventHandler("onResourceStop", function(resource)
    if resource == GetCurrentResourceName() then
        CleanupDebugHolograms()
    end
end)

print("^2[Hologram Debug] Commandes de debug chargées - Tapez /holodebug:help^7")
print("^2[Hologram Debug] Commandes d'ajustement: /holo:width /holo:height /holo:scale /holo:offset[x/y/z] /holo:info^7")
