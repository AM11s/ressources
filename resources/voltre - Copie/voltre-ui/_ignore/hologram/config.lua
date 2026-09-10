--[[
    Voltre Hologram System - Configuration
    Architecture modulaire pour UI 3D holographiques
]]

HologramConfig = {}

-- Debug mode
HologramConfig.Debug = true

-- Modèle utilisé comme support pour les hologrammes (streamé via voltre-stream)
HologramConfig.HologramModel = `hologram_box_model`

-- Nombre maximum de scaleforms simultanés
HologramConfig.MaxScaleforms = 6

-- Distance par défaut pour voir un hologramme
HologramConfig.DefaultViewDistance = 30.0

-- Distance par défaut pour interagir
HologramConfig.DefaultInteractDistance = 3.0

-- Intervalle de vérification de distance (ms)
HologramConfig.DistanceCheckInterval = 500

-- Touches disponibles pour les interactions
HologramConfig.Keys = {
    ["E"] = 51,
    ["F"] = 23,
    ["G"] = 47,
    ["H"] = 74,
    ["K"] = 311,
    ["UP"] = 172,
    ["DOWN"] = 173,
    ["LEFT"] = 174,
    ["RIGHT"] = 175,
}

-- Types d'hologrammes supportés
HologramConfig.Types = {
    MARKER = "hologram-marker",       -- DrawMarker avec texture (le plus courant)
    SCALEFORM = "hologram-scaleform", -- Scaleform 3D
    ENTITY = "hologram-entity",       -- Attaché à une entité
}

-- Taille par défaut du DUI (toujours carré pour éviter les déformations)
HologramConfig.DefaultDuiSize = 512

-- Propriétés par défaut pour les hologrammes
HologramConfig.DefaultProperties = {
    rotation = vector3(90.0, 0.0, 0.0), -- 90° sur X = marker vertical
    scale = vector3(1.5, 1.5, 1.0),     -- Échelle du marker 3D (uniforme)
    rotate = false,                      -- Rotation continue sur l'axe Z
    cameraFollow = true,                 -- Suit la caméra horizontalement (natif GTA)
    cameraFollowVertical = true,         -- Suit la caméra verticalement (calcul pitch)
    bobUpAndDown = false,                -- Flottement vertical
    markerType = 9,                      -- Type 9 = plan vertical texturé
}

-- Fonction utilitaire de debug
function HologramDebug(...)
    if HologramConfig.Debug then
        print("[^3Hologram^7]", ...)
    end
end
