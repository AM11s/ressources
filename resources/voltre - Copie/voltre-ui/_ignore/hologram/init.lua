--[[
    Voltre Hologram System - Point d'entrée
    Système d'UI holographiques 3D optimisé
    
    Architecture:
    - hologram/config.lua          : Configuration globale
    - hologram/core/HologramCore.lua : Gestion DUI, textures, entités
    - hologram/modules/Interaction3D.lua : Système d'interactions 3D
    - hologram/ui/ : Fichiers UI (HTML/JS/CSS)
    
    Usage:
    -- Créer une interaction 3D simple
    exports['voltre-ui']:CreateHologramInteraction({
        id = "mon_interaction",
        type = "basic",
        coords = vec3(x, y, z),
        text = "Appuyez pour interagir",
        key = "E",
        Action = function()
            print("Interaction!")
        end
    })
    
    -- Créer une interaction 3D multi-lignes
    exports['voltre-ui']:CreateHologramInteraction({
        id = "mon_menu",
        type = "multi",
        coords = vec3(x, y, z),
        text = {
            title = "Mon Menu",
            lines = {
                { id = 1, left = "Option 1", key = "E", action = function() end },
                { id = 2, left = "Statut", right = "Actif" },
                { id = 3, left = "Vérifié", right = true },
            }
        },
        maxDistance = 10.0,
        maxDistanceInteract = 3.0,
    })
    
    -- Créer un hologramme personnalisé
    exports['voltre-ui']:CreateHologram("mon_holo", {
        htmlTarget = "mon_template",  -- ou urlTarget = "https://..."
        attachTo = 'world',           -- 'world', 'player', 'vehicle'
        type = 'hologram-marker',     -- 'hologram-marker', 'hologram-scaleform'
        position = vec3(x, y, z),
        distanceView = 30,
        scale = vec2(1920, 1024),
        typeProperties = {
            rotation = vec3(90, 0, 0),
            scale = vec3(2, 2, 2),
            cameraFollow = true,
        }
    })
]]

-- Vérifier que les modules sont chargés
if not HologramConfig then
    print("^1[Hologram] Erreur: config.lua non chargé^7")
    return
end

if not HologramCore then
    print("^1[Hologram] Erreur: HologramCore.lua non chargé^7")
    return
end

if not Interaction3D then
    print("^1[Hologram] Erreur: Interaction3D.lua non chargé^7")
    return
end

-- ============================================
-- EXPORTS - API Publique
-- ============================================

-- Hologrammes de base
exports('CreateHologram', function(id, data)
    return HologramCore.Create(id, data)
end)

exports('DestroyHologram', function(id)
    return HologramCore.Destroy(id)
end)

exports('GetHologram', function(id)
    return HologramCore.Get(id)
end)

exports('SendHologramData', function(id, eventName, data)
    local hologram = HologramCore.Get(id)
    if hologram then
        return hologram:SendData(eventName, data)
    end
    return false
end)

exports('SetHologramEnabled', function(id, enabled)
    local hologram = HologramCore.Get(id)
    if hologram then
        hologram:SetEnabled(enabled)
    end
end)

exports('SetHologramUrl', function(id, url)
    local hologram = HologramCore.Get(id)
    if hologram then
        hologram:SetUrl(url)
    end
end)

-- Interactions 3D (nouveau système optimisé)
exports('CreateHologramInteraction', function(data)
    return Interaction3D.Create(data)
end)

exports('RemoveHologramInteraction', function(id)
    return Interaction3D.Remove(id)
end)

exports('HologramInteractionExists', function(id)
    return Interaction3D.Exists(id)
end)

exports('ClearHologramInteractions', function()
    return Interaction3D.Clear()
end)

exports('SetHologramInteractionsEnabled', function(enabled)
    return Interaction3D.SetDisplayEnabled(enabled)
end)

exports('SetHologramInteractionHidden', function(id, hidden)
    return Interaction3D.SetHidden(id, hidden)
end)

exports('UpdateHologramInteraction', function(id, key, value)
    return Interaction3D.Update(id, key, value)
end)

exports('UpdateHologramInteractionMultiple', function(id, data)
    return Interaction3D.UpdateMultiple(id, data)
end)

exports('RefreshHologramInteractionCanSee', function(id)
    return Interaction3D.RefreshCanSee(id)
end)

exports('GetHologramInteraction', function(id)
    return Interaction3D.Get(id)
end)

exports('GetAllHologramInteractions', function()
    return Interaction3D.GetAll()
end)

-- exports('Add3DInteraction', Interaction3D.Create)
-- exports('Exist3DInteraction', Interaction3D.Exists)
-- exports('Remove3DInteraction', Interaction3D.Remove)
-- exports('Clear3DInteractions', Interaction3D.Clear)
-- exports('Display3DInteractions', Interaction3D.SetDisplayEnabled)
-- exports('Hide3DInteraction', Interaction3D.SetHidden)
-- exports('Update3DInteraction', Interaction3D.Update)
-- exports('Update3DInteractionValue', Update3DInteractionValue)


-- ============================================
-- COMPATIBILITÉ - Ancien système (optionnel)
-- ============================================
-- Ces exports permettent de migrer progressivement

--[[
-- Décommenter pour activer la compatibilité avec l'ancien système
exports('Add3DInteractionHologram', function(data, resourceName)
    -- Adapter les données de l'ancien format
    local newData = {
        id = data.id,
        type = data.type or "basic",
        coords = data.coords,
        text = data.text,
        key = data.key,
        maxDistance = data.maxDistance,
        maxDistanceInteract = data.maxDistance2,
        bucket = data.bucket,
        Action = data.Action,
        canSee = data.canSee,
        everytime = data.everytime,
        blip = data.blip,
    }
    return Interaction3D.Create(newData)
end)

exports('Remove3DInteractionHologram', function(id)
    return Interaction3D.Remove(id)
end)
]]

-- ============================================
-- COMMANDES DE TEST
-- ============================================

RegisterCommand('testhologram', function()
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)
    local forward = GetEntityForwardVector(ped)
    local pos = coords + forward * 3.0
    local pos2 = coords + forward * 6.0

    exports['voltre-ui']:CreateHologramInteraction({
        id = "test_basic",
        type = "basic",
        coords = pos,
        style = "holographic",
        text = "Test Interaction",
        key = "E",
        maxDistance = 10.0,
        maxDistanceInteract = 1.5,
        Action = function()
            print("^2[Test] Interaction basique exécutée!^7")
        end
    })

    print("^3[Test] Hologramme créé à", pos, "^7")
    print("^3[Test] Utilisez /destroytesthologram pour supprimer^7")
end, false)

RegisterCommand('testhologramdefault', function()
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)
    local forward = GetEntityForwardVector(ped)
    local pos = coords + forward * 3.0
    local pos2 = coords + forward * 6.0

    exports['voltre-ui']:CreateHologramInteraction({
        id = "test_basic_default",
        type = "basic",
        coords = pos,
        style = "default",
        text = "Test Interaction",
        key = "E",
        maxDistance = 10.0,
        maxDistanceInteract = 1.5,
        Action = function()
            print("^2[Test] Interaction basique exécutée!^7")
        end,
    })

    print("^3[Test] Hologramme créé à", pos, "^7")
    print("^3[Test] Utilisez /destroytesthologram pour supprimer^7")
end, false)

RegisterCommand('testhologrammulti', function()
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)
    local forward = GetEntityForwardVector(ped)
    local pos = coords + forward * 3.0
    local pos2 = coords + forward * 6.0

    exports['voltre-ui']:CreateHologramInteraction({
        id = "test_multi",
        type = "multi",
        coords = pos,
        style = "holographic",
        text = {
            title = "Menu Test",
            lines = {
                { id = 1, left = "Information", right = "Valeur" },
                { id = 2, left = "Statut", right = true },
                { id = 3, left = "Désactivé", right = false },
                { id = 4, left = "Action 1", key = "E", action = function() print("Action 1!") end },
                { id = 5, left = "Action 2", key = "F", action = function() print("Action 2!") end },
            }
        },
        maxDistance = 15.0,
        maxDistanceInteract = 1.5,
        -- scale = vector2(2000, 2000),
        -- holoScale = vector3(2.0, 2.0, 2.0),
    })

    print("^3[Test] Hologramme multi créé à", pos, "^7")
end, false)

RegisterCommand('testhologrammultidefault', function()
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)
    local forward = GetEntityForwardVector(ped)
    local pos = coords + forward * 3.0
    local pos2 = coords + forward * 6.0

    exports['voltre-ui']:CreateHologramInteraction({
        id = "test_multi_default",
        type = "multi",
        coords = pos,
        style = "default",
        text = {
            title = "Menu Test",
            lines = {
                { id = 1, left = "Information", right = "Valeur" },
                { id = 2, left = "Statut", right = true },
                { id = 3, left = "Désactivé", right = false },
                { id = 4, left = "Action 1", key = "E", action = function() print("Action 1!") end },
                { id = 5, left = "Action 2", key = "F", action = function() print("Action 2!") end },
            }
        },
        maxDistance = 15.0,
        maxDistanceInteract = 1.5,
    })

    print("^3[Test] Hologramme multi créé à", pos, "^7")
end, false)

RegisterCommand('destroytesthologram', function()
    exports['voltre-ui']:RemoveHologramInteraction("test_basic")
    exports['voltre-ui']:RemoveHologramInteraction("test_multi")
    print("^3[Test] Hologrammes de test supprimés^7")
end, false)
