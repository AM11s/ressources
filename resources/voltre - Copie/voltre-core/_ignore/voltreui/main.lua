--[[
    VoltreUI - Main Entry Point
    Point d'entrée principal et compatibilité RageUI
    
    Version: 2.0.0
    Author: Voltre
]]

--[[
    ============================================
    COMPATIBILITÉ RAGEUI
    ============================================
]]

-- Alias globaux pour compatibilité totale avec RageUI
RageUI = VoltreUI
RageUI1 = VoltreUI
RageUI2 = VoltreUI
RageUI3 = VoltreUI

-- Badges (placeholder - à compléter avec data/badges.lua)
VoltreUI.BadgeStyle = VoltreUI.BadgeStyle or {}
VoltreUI.BadgeStyle.None = function() return {} end
VoltreUI.BadgeStyle.Lock = function(active)
    return {
        BadgeDictionary = "main",
        BadgeTexture = active and "shop_lock" or "shop_lock",
        BadgeColour = { R = 255, G = 255, B = 255, A = 255 }
    }
end

-- Panel colours (placeholder)
VoltreUI.PanelColour = VoltreUI.PanelColour or {}

--[[
    ============================================
    EXPORTS
    ============================================
]]

exports('CreateMenu', function(...) return VoltreUI.CreateMenu(...) end)
exports('CreateSubMenu', function(...) return VoltreUI.CreateSubMenu(...) end)
exports('Visible', function(...) return VoltreUI.Visible(...) end)
exports('CloseAll', function(...) return VoltreUI.CloseAll(...) end)
exports('IsVisible', function(...) return VoltreUI.IsVisible(...) end)
exports('ChangeVoltreUIStyle', function(...) return VoltreUI.SetTheme(...) end)
exports('getVoltreUIStyleIndex', function() return VoltreUI.GetStyleIndex() end)

--[[
    ============================================
    ANIMATION SYSTEM (Modern theme)
    L'animation se joue UNE SEULE FOIS quand on change de sélection
    ============================================
]]

-- État de l'animation (global)
VoltreUI.Animation = {
    progressValue = 0,
    alpha = 100,
    canAnimate = true,      -- Si l'animation peut se jouer
    threadCreated = false,  -- Si le thread est actif
    lastIndex = 0,          -- Dernier index sélectionné
}

-- Démarrer le thread d'animation si pas déjà actif
local function EnsureAnimationThread()
    if VoltreUI.Animation.threadCreated then return end
    VoltreUI.Animation.threadCreated = true
    
    CreateThread(LPH_NO_VIRTUALIZE(function()
        local anim = VoltreUI.Animation
        
        while true do
            -- Vérifier si le menu est ouvert et si on est en style Modern
            if VoltreUI.CurrentMenu and VoltreUI.CurrentStyleIndex == 2 then
                -- Animer seulement si canAnimate est true
                if anim.canAnimate then
                    -- Progression
                    if anim.progressValue <= 5 then
                        anim.progressValue = anim.progressValue + 2
                    else
                        anim.progressValue = anim.progressValue + 7
                    end
                    
                    -- Fade out proportionnel à la progression (100 -> 0 sur toute la distance)
                    local progress = anim.progressValue / 275
                    anim.alpha = math.max(0, 100 * (1 - progress))
                    voltre.DebugPrint(anim.alpha)
                    -- Fin de l'animation
                    if anim.progressValue >= 300 then
                        anim.progressValue = 0
                        anim.alpha = 0
                        anim.canAnimate = false  -- Arrêter l'animation
                    end
                end
            else
                -- Menu fermé - reset et arrêter le thread
                anim.progressValue = 0
                anim.alpha = 100
                anim.canAnimate = true
                anim.threadCreated = false
                return
            end
            
            Wait(10)
        end
    end))
end

-- Fonction appelée quand on change de sélection (dans GoUp/GoDown)
function VoltreUI.ResetAnimation()
    VoltreUI.Animation.progressValue = 0
    VoltreUI.Animation.alpha = 100
    VoltreUI.Animation.canAnimate = true
    EnsureAnimationThread()
end

-- Démarrer le thread au premier menu ouvert
CreateThread(LPH_NO_VIRTUALIZE(function()
    while true do
        Wait(100)
        if VoltreUI.CurrentMenu and VoltreUI.CurrentStyleIndex == 2 then
            EnsureAnimationThread()
        end
    end
end))

--[[
    ============================================
    FONCTIONS UTILITAIRES
    ============================================
]]

-- Fermer tous les menus
function VoltreUI.CloseAll()
    if VoltreUI.CurrentMenu then
        VoltreUI.Visible(VoltreUI.CurrentMenu, false)
    end
    VoltreUI.CurrentMenu = nil
    VoltreUI.NextMenu = nil
end

-- Vérifier si un menu est visible
function VoltreUI.IsAnyMenuOpen()
    return VoltreUI.CurrentMenu ~= nil
end

-- Obtenir le menu actuel
function VoltreUI.GetCurrentMenu()
    return VoltreUI.CurrentMenu
end

-- Désactiver une touche
function VoltreUI.DisableKey(key)
    VoltreUI.disabledKeys = VoltreUI.disabledKeys or {}
    VoltreUI.disabledKeys[key] = true
end

-- Réactiver une touche
function VoltreUI.EnableKey(key)
    if VoltreUI.disabledKeys then
        VoltreUI.disabledKeys[key] = nil
    end
end

-- Désactiver toutes les touches
function VoltreUI.DisableAllKeys()
    VoltreUI.disabledKeys = VoltreUI.disabledKeys or {}
    VoltreUI.disabledKeys['all'] = true
end

-- Réactiver toutes les touches
function VoltreUI.EnableAllKeys()
    VoltreUI.disabledKeys = {}
end

-- Désactiver une touche pour une frame
function VoltreUI.DisableKeyFrame(key)
    VoltreUI.DisableKey(key)
    CreateThread(function()
        Wait(0)
        VoltreUI.EnableKey(key)
    end)
end

-- Rafraîchir la pagination
function VoltreUI.RefreshPagination()
    local CurrentMenu = VoltreUI.CurrentMenu
    if not CurrentMenu then return end
    
    if CurrentMenu.Index > CurrentMenu.Options then
        CurrentMenu.Index = CurrentMenu.Options
    end
    
    if CurrentMenu.Index < CurrentMenu.Pagination.Minimum then
        CurrentMenu.Pagination.Minimum = CurrentMenu.Index
        CurrentMenu.Pagination.Maximum = CurrentMenu.Index + CurrentMenu.Pagination.Total - 1
    elseif CurrentMenu.Index > CurrentMenu.Pagination.Maximum then
        CurrentMenu.Pagination.Maximum = CurrentMenu.Index
        CurrentMenu.Pagination.Minimum = CurrentMenu.Index - CurrentMenu.Pagination.Total + 1
    end
end

-- Définir le style audio
function VoltreUI.SetStyleAudio(StyleAudio)
    VoltreUI.Settings.Audio.Use = StyleAudio or "RageUI"
end

-- Obtenir le style audio
function VoltreUI.GetStyleAudio()
    return VoltreUI.Settings.Audio.Use or "RageUI"
end

-- Comparer le menu actuel
function VoltreUI.CurrentIsEqualTo(Current, To, Style, DefaultStyle)
    return Current == To and Style or DefaultStyle or {}
end

Visual = Visual or {};

local function AddLongString(txt)
    for i = 100, string.len(txt), 99 do
        local sub = string.sub(txt, i, i + 99)
        AddTextComponentSubstringPlayerName(sub)
    end
end

function Visual.Subtitle(text, time)
    ClearPrints()
    BeginTextCommandPrint("STRING")
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandPrint(time and math.ceil(time) or 0, true)
end

function Visual.FloatingHelpText(text, sound, loop)
    BeginTextCommandDisplayHelp("jamyfafi")
    AddTextComponentSubstringPlayerName(text)
    if string.len(text) > 99 then
        AddLongString(text)
    end
    EndTextCommandDisplayHelp(0, loop or 0, sound or true, -1)
end

function Visual.Prompt(text, spinner)
    BeginTextCommandBusyspinnerOn("STRING")
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandBusyspinnerOn(spinner or 1)
end

function Visual.PromptDuration(duration, text, spinner)
    Citizen.CreateThread(function()
        Citizen.Wait(0)
        Visual.Prompt(text, spinner)
        Citizen.Wait(duration)
        if (BusyspinnerIsOn()) then
            BusyspinnerOff();
        end
    end)
end

RegisterNetEvent("Visual:Popup")
AddEventHandler("Visual:Popup", function(array)
    RageUI1.Popup(array)
end)

function Visual.Popup(array)
    ClearPrints()
    if (array.colors == nil) then
        SetNotificationBackgroundColor(140)
    else
        SetNotificationBackgroundColor(array.colors)
    end
    SetNotificationTextEntry("STRING")
    if (array.message == nil) then
        error("Missing arguments, message")
    else
        AddTextComponentString(tostring(array.message))
    end
    DrawNotification(false, true)
    if (array.sound ~= nil) then
        if (array.sound.audio_name ~= nil) then
            if (array.sound.audio_ref ~= nil) then
                PlaySoundFrontend(-1, array.sound.audio_name, array.sound.audio_ref, true)
            else
                error("Missing arguments, audio_ref")
            end
        else
            error("Missing arguments, audio_name")
        end
    end
end

function Visual.Text(array)
    ClearPrints()
    SetTextEntry_2("STRING")
    if (array.message ~= nil) then
        AddTextComponentString(tostring(array.message))
    else
        error("Missing arguments, message")
    end
    if (array.time_display ~= nil) then
        DrawSubtitleTimed(tonumber(array.time_display), 1)
    else
        DrawSubtitleTimed(6000, 1)
    end
    if (array.sound ~= nil) then
        if (array.sound.audio_name ~= nil) then
            if (array.sound.audio_ref ~= nil) then
                PlaySoundFrontend(-1, array.sound.audio_name, array.sound.audio_ref, true)
            else
                error("Missing arguments, audio_ref")
            end
        else
            error("Missing arguments, audio_name")
        end
    end
end

--[[
    ============================================
    MESSAGE D'INITIALISATION
    ============================================
]]

CreateThread(function()
    Wait(200)
    print('[VoltreUI] ^2Library loaded^7 - Use /voltreuitest to test')
end)
