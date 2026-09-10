--[[
    Voltre Hologram System - Core Module
    Gestion des DUI, textures runtime et entités holographiques
]]

HologramCore = {}
HologramCore.__index = HologramCore

-- Storage interne
local activeHolograms = {}
local scaleformCount = 0

--[[
    Crée un nouvel hologramme
    @param id string - Identifiant unique
    @param data table - Configuration de l'hologramme
    @return table|nil - Instance de l'hologramme ou nil si erreur
]]
function HologramCore.Create(id, data)
    HologramDebug(id, json.encode(data))
    if activeHolograms[id] then
        HologramDebug("Hologramme", id, "existe déjà, destruction avant recréation")
        HologramCore.Destroy(id)
    end

    -- Validation et valeurs par défaut
    data = HologramCore.ValidateData(id, data)
    if not data then return nil end

    local hologram = {
        id = id,
        data = data,
        enabled = data.enabled ~= false,
        visible = false,
        duiObject = nil,
        duiHandle = nil,
        duiTexture = nil,
        txdHandle = nil,
        hologramObject = nil,
        sfHandle = nil,
        sfReady = false,
        duiIsReady = false,
        internalId = nil,
        internalTextureId = nil,
    }

    setmetatable(hologram, HologramCore)
    activeHolograms[id] = hologram

    debugHolograms[id] = true
    debugHolograms[id .. "_width"] = scaleWidth
    debugHolograms[id .. "_height"] = scaleHeight
    debugHolograms[id .. "_scale"] = sfScale
    debugHolograms[id .. "_offsetX"] = offsetX
    debugHolograms[id .. "_offsetY"] = offsetY
    debugHolograms[id .. "_offsetZ"] = offsetZ
    debugHolograms[id .. "_pedCoords"] = pedCoords
    debugHolograms[id .. "_pedHeight"] = pedHeight
    debugHolograms[id .. "_pedHeading"] = pedHeading
    debugHolograms[id .. "_calculatePos"] = calculateBehindPos

    -- Initialisation asynchrone
    CreateThread(function()
        hologram:Initialize()
    end)

    return hologram
end

exports("HologramCoreCreate", function(id, data)
    return HologramCore.Create(id, data)
end)

exports("HologramCoreUpdateTransform", function(id, newPosition, newRotation)
    local hologram = HologramCore.Get(id)
    if hologram then
        hologram.data.position = newPosition
        if hologram.data.typeProperties then
            hologram.data.typeProperties.rotation = newRotation
        end
    end
end)

--[[
    Valide et complète les données de configuration
]]
function HologramCore.ValidateData(id, data)
    if not data then
        HologramDebug("Erreur: données nil pour", id)
        return nil
    end

    -- URL ou HTML target requis
    if not data.urlTarget and not data.htmlTarget then
        HologramDebug("Erreur: urlTarget ou htmlTarget requis pour", id)
        return nil
    end

    -- Position requise pour world
    if data.attachTo ~= 'player' and not data.position then
        HologramDebug("Erreur: position requise pour", id)
        return nil
    end

    -- Conversion position en vector3
    if data.position and type(data.position) ~= 'vector3' then
        data.position = vector3(data.position.x, data.position.y, data.position.z)
    end

    -- Valeurs par défaut
    data.attachTo = data.attachTo or 'world'
    data.type = data.type or HologramConfig.Types.MARKER
    data.distanceView = data.distanceView or HologramConfig.DefaultViewDistance
    data.scale = data.scale or vector2(1920, 1024)
    data.sfScale = data.sfScale or 0.1

    -- Propriétés de type
    data.typeProperties = data.typeProperties or {}
    for k, v in pairs(HologramConfig.DefaultProperties) do
        if data.typeProperties[k] == nil then
            data.typeProperties[k] = v
        end
    end

    return data
end

--[[
    Initialise le DUI et les textures
]]
function HologramCore:Initialize()
    local resourceName = GetCurrentResourceName()
    local randId = math.random(1000, 9999)

    self.internalId = "HoloDUI_" .. self.id .. "_" .. randId
    self.internalTextureId = "DUI_" .. self.id .. "-" .. randId

    -- Construire l'URL
    local url
    if self.data.urlTarget then
        url = self.data.urlTarget
    else
        url = string.format("nui://%s/_ignore/hologram/ui/pages/%s/%s.html", 
            resourceName, self.data.htmlTarget, self.data.htmlTarget)
    end

    -- Créer le DUI
    self.duiObject = CreateDui(url, math.floor(self.data.scale.x), math.floor(self.data.scale.y))
    HologramDebug("DUI créé pour", self.id, "->", self.duiObject)
    HologramDebug("URL DUI:", url)

    -- Attendre que le DUI soit prêt (ou timeout pour URL externe)
    local timeout = 0
    repeat 
        Wait(50) 
        timeout = timeout + 50
    until self.duiIsReady or self.data.urlTarget ~= nil or timeout > 5000

    if not activeHolograms[self.id] then return end

    -- Créer la texture runtime
    self.txdHandle = CreateRuntimeTxd(self.internalId)
    self.duiHandle = GetDuiHandle(self.duiObject)
    self.duiTexture = CreateRuntimeTextureFromDuiHandle(self.txdHandle, self.internalTextureId, self.duiHandle)

    HologramDebug("Texture runtime créée pour", self.id)

    -- Initialiser selon le type
    if self.data.type == HologramConfig.Types.SCALEFORM then
        self:InitializeScaleform()
    elseif self.data.type == HologramConfig.Types.ENTITY or self.data.type == HologramConfig.Types.MARKER then
        -- MARKER et ENTITY utilisent tous les deux une entité pour afficher la texture
        -- DrawMarker avec texture ne fonctionne pas correctement dans FiveM
        self:InitializeEntity()
    end

    -- Attacher selon la cible
    if self.data.attachTo == 'player' then
        self:AttachToPlayer()
    elseif self.data.attachTo == 'world' and (self.data.type == HologramConfig.Types.ENTITY or self.data.type == HologramConfig.Types.MARKER) then
        self:AttachToWorld()
    end

    self.data.loaded = true
    HologramDebug("Hologramme", self.id, "initialisé avec succès")
end

--[[
    Initialise un scaleform pour l'hologramme
]]
function HologramCore:InitializeScaleform()
    if scaleformCount >= HologramConfig.MaxScaleforms then
        HologramDebug("Limite de scaleforms atteinte pour", self.id)
        return false
    end

    scaleformCount = scaleformCount + 1
    local sfIndex = scaleformCount

    -- Charger le scaleform
    local sfHandle = RequestScaleformMovie("GT_" .. sfIndex)
    local timeout = 0
    while not HasScaleformMovieLoaded(sfHandle) and timeout < 1000 do
        Wait(10)
        timeout = timeout + 10
    end

    if HasScaleformMovieLoaded(sfHandle) then
        self.sfHandle = sfHandle
        self.sfId = sfIndex

        -- Configurer la texture
        PushScaleformMovieFunction(sfHandle, 'SET_TEXTURE')
        PushScaleformMovieMethodParameterString(self.internalId)
        PushScaleformMovieMethodParameterString(self.internalTextureId)
        PushScaleformMovieFunctionParameterInt(0)
        PushScaleformMovieFunctionParameterInt(0)
        PushScaleformMovieFunctionParameterInt(math.floor(self.data.scale.x))
        PushScaleformMovieFunctionParameterInt(math.floor(self.data.scale.y))
        PopScaleformMovieFunctionVoid()

        self.sfReady = true
        HologramDebug("Scaleform initialisé pour", self.id)
        return true
    end

    return false
end

--[[
    Crée l'entité support pour l'hologramme
]]
function HologramCore:InitializeEntity()
    RequestModel(HologramConfig.HologramModel)
    local timeout = 0
    while not HasModelLoaded(HologramConfig.HologramModel) and timeout < 5000 do
        Wait(10)
        timeout = timeout + 10
    end

    if not HasModelLoaded(HologramConfig.HologramModel) then
        HologramDebug("Erreur: impossible de charger le modèle hologramme")
        return false
    end

    local coords = self.data.position or GetEntityCoords(PlayerPedId())
    self.hologramObject = CreateVehicle(HologramConfig.HologramModel, coords.x, coords.y, coords.z, 0.0, false, true)
    
    SetVehicleIsConsideredByPlayer(self.hologramObject, false)
    SetVehicleEngineOn(self.hologramObject, true, true)
    SetEntityCollision(self.hologramObject, false, false)
    SetEntityAlpha(self.hologramObject, 255, true)

    -- Appliquer la texture
    AddReplaceTexture("hologram_box_model", "p_hologram_box", self.internalId, self.internalTextureId)

    Entity(self.hologramObject).state:set("hologram", true)
    HologramDebug("Entité hologramme créée:", self.hologramObject)

    return true
end

--[[
    Attache l'hologramme au joueur
]]
function HologramCore:AttachToPlayer()
    if not self.hologramObject then
        self:InitializeEntity()
    end

    local ped = PlayerPedId()
    local offset = self.data.typeProperties.attachmentOffset or vec3(0.8, 1.5, 0.75)
    local rotation = self.data.typeProperties.attachmentRotation or vec3(6.5, -0.5, 0.85)

    AttachEntityToEntity(
        self.hologramObject, ped,
        GetPedBoneIndex(ped, 1),
        offset.x, offset.y, offset.z,
        rotation.x, rotation.y, rotation.z,
        false, true, false, true, true, true
    )

    HologramDebug("Hologramme attaché au joueur:", self.id)
end

--[[
    Attache l'hologramme au monde
]]
function HologramCore:AttachToWorld()
    if not self.hologramObject then return end

    SetEntityCoords(self.hologramObject, self.data.position.x, self.data.position.y, self.data.position.z)
    FreezeEntityPosition(self.hologramObject, true)
    
    if self.data.typeProperties.rotation then
        SetEntityRotation(self.hologramObject, 
            self.data.typeProperties.rotation.x,
            self.data.typeProperties.rotation.y,
            self.data.typeProperties.rotation.z,
            2, true
        )
    end

    HologramDebug("Hologramme attaché au monde:", self.id)
end

--[[
    Dessine l'hologramme (appelé chaque frame si visible)
]]
function HologramCore:Draw()
    if not self.enabled or not self.visible then return end

    -- MARKER utilise maintenant une entité, pas DrawMarker
    -- Seul SCALEFORM a besoin d'être dessiné chaque frame
    if self.data.type == HologramConfig.Types.SCALEFORM and self.sfReady then
        self:DrawScaleform()
    end
end

--[[
    DrawMarker avec texture ne fonctionne pas correctement dans FiveM
    Le type MARKER utilise maintenant une entité (comme ENTITY)
    La différence est dans les propriétés de rotation/scale par défaut
]]

--[[
    Dessine un scaleform 3D
]]
function HologramCore:DrawScaleform()
    local pos = self.data.position
    local props = self.data.typeProperties
    
    -- Rotation de la caméra ou rotation fixe
    local rotX, rotY, rotZ
    if props.cameraFollow then
        local camRot = GetGameplayCamRot(2)
        rotX = 0
        rotY = -camRot.z
        rotZ = camRot.y
    else
        -- Utiliser la rotation définie dans les propriétés
        rotX = props.rotation and props.rotation.x or 0
        rotY = props.rotation and props.rotation.y or 0
        rotZ = props.rotation and props.rotation.z or 0
    end
    
    -- Échelle (aspect ratio 200:800 = 1:4)
    local scaleX = self.data.sfScale
    local scaleY = self.data.sfScale * (self.data.scale.y / self.data.scale.x)

    DrawScaleformMovie_3dNonAdditive(
        self.sfHandle,
        pos.x, pos.y, pos.z,
        rotX, rotY, rotZ,
        2, 2, 2,
        scaleX, scaleY,
        1, 1  -- 1 = feathering minimal (compromis)
    )
end

--[[
    Envoie des données au DUI
]]
function HologramCore:SendData(eventName, data)
    if not self.duiObject or not IsDuiAvailable(self.duiObject) then
        return false
    end

    SendDuiMessage(self.duiObject, json.encode({
        id = self.id,
        duiName = self.data.htmlTarget,
        eventName = eventName,
        content = data
    }))

    return true
end

--[[
    Met à jour l'URL du DUI
]]
function HologramCore:SetUrl(url)
    if self.duiObject then
        SetDuiUrl(self.duiObject, url)
        self.data.urlTarget = url
    end
end

--[[
    Active/désactive l'hologramme
]]
function HologramCore:SetEnabled(enabled)
    self.enabled = enabled
    if not enabled then
        self.visible = false
    end
end

--[[
    Détruit l'hologramme
]]
function HologramCore:Destroy()
    HologramCore.Destroy(self.id)
end

--[[
    Détruit un hologramme par ID (statique)
]]
function HologramCore.Destroy(id)
    local hologram = activeHolograms[id]
    if not hologram then return end

    hologram.enabled = false

    -- Nettoyer le scaleform
    if hologram.sfHandle then
        SetScaleformMovieAsNoLongerNeeded(hologram.sfHandle)
        scaleformCount = math.max(0, scaleformCount - 1)
    end

    -- Supprimer l'entité
    if hologram.hologramObject and DoesEntityExist(hologram.hologramObject) then
        DeleteVehicle(hologram.hologramObject)
    end

    -- Supprimer le DUI
    if hologram.duiObject then
        DestroyDui(hologram.duiObject)
    end

    activeHolograms[id] = nil
    HologramDebug("Hologramme détruit:", id)
end

exports("HologramCoreDestroy", function(id)
    HologramCore.Destroy(id)
end)

--[[
    Détruit tous les hologrammes
]]
function HologramCore.DestroyAll()
    for id, _ in pairs(activeHolograms) do
        HologramCore.Destroy(id)
    end
end

--[[
    Récupère un hologramme par ID
]]
function HologramCore.Get(id)
    return activeHolograms[id]
end

--[[
    Récupère tous les hologrammes actifs
]]
function HologramCore.GetAll()
    return activeHolograms
end

--[[
    Marque un DUI comme prêt (appelé depuis le callback NUI)
]]
function HologramCore.MarkDuiReady(htmlTarget)
    for id, hologram in pairs(activeHolograms) do
        if hologram.data.htmlTarget == htmlTarget then
            hologram.duiIsReady = true
            HologramDebug("DUI prêt pour:", id)
        end
    end
end

-- Thread de rendu
CreateThread(function()
    while true do
        for _, hologram in pairs(activeHolograms) do
            if hologram.enabled and hologram.visible and hologram.data.loaded then
                hologram:Draw()
            end
        end
        Wait(0)
    end
end)

-- Thread de vérification de distance
CreateThread(function()
    while true do
        Wait(HologramConfig.DistanceCheckInterval)
        
        local playerCoords = GetEntityCoords(PlayerPedId())
        
        for id, hologram in pairs(activeHolograms) do
            if hologram.enabled and hologram.data.loaded then
                if hologram.data.attachTo == 'player' then
                    hologram.visible = not IsPedDeadOrDying(PlayerPedId())
                elseif hologram.data.position then
                    local distance = #(playerCoords - hologram.data.position)
                    hologram.visible = distance <= hologram.data.distanceView
                end
            end
        end
    end
end)

-- Callback NUI pour marquer le DUI comme prêt
RegisterNUICallback("hologram:duiReady", function(data, cb)
    HologramCore.MarkDuiReady(data.duiName)
    cb({ ok = true })
end)

-- Callback NUI pour recevoir des données du DUI
RegisterNUICallback("hologram:sendData", function(data, cb)
    local hologram = activeHolograms[data.id]
    if hologram and hologram.onCallback then
        hologram.onCallback(data.eventName, data.content)
    end
    cb({ ok = true })
end)

-- Nettoyage à l'arrêt de la ressource
AddEventHandler("onResourceStop", function(resource)
    if resource == GetCurrentResourceName() then
        HologramCore.DestroyAll()
    end
end)

return HologramCore
