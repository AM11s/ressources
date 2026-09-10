--[[
    VoltreUI - Core Init
    Initialisation du namespace et gestion des thèmes
]]

-- Namespace principal (NE PAS écraser si déjà défini par les thèmes)
VoltreUI = VoltreUI or {}
VoltreUI.Menus = VoltreUI.Menus or {}
VoltreUI.Item = VoltreUI.Item or {}
VoltreUI.Panel = VoltreUI.Panel or {}
VoltreUI.Window = VoltreUI.Window or {}

-- État global
VoltreUI.CurrentMenu = VoltreUI.CurrentMenu or nil
VoltreUI.NextMenu = VoltreUI.NextMenu or nil
VoltreUI.Options = VoltreUI.Options or 0
VoltreUI.ItemOffset = VoltreUI.ItemOffset or 0
VoltreUI.StatisticPanelCount = VoltreUI.StatisticPanelCount or 0
VoltreUI.LastControl = VoltreUI.LastControl or false

-- Thèmes disponibles (NE PAS écraser - déjà défini par themes/*.lua)
VoltreUI.Themes = VoltreUI.Themes or {}
VoltreUI.CurrentTheme = VoltreUI.CurrentTheme or nil
VoltreUI.CurrentStyleIndex = VoltreUI.CurrentStyleIndex or 2  -- Default: Modern (Style 2)

-- Disabled keys
VoltreUI.disabledKeys = {}

-- Largeur du menu (configurable)
VoltreUI.MenuWidth = 43  -- RageUILargeur

--[[
    ============================================
    CHARGEMENT DES THÈMES
    ============================================
]]

local function LoadTheme(name, path)
    local success, theme = pcall(function()
        return dofile(path) or {}
    end)
    
    if success and theme then
        VoltreUI.Themes[name] = theme
        return true
    else
        print(('[^1VoltreUI^7] Failed to load theme: %s'):format(name))
        return false
    end
end

-- Les thèmes sont maintenant chargés depuis les fichiers séparés :
-- lib/voltreui/themes/classic.lua
-- lib/voltreui/themes/modern.lua
-- lib/voltreui/themes/dark.lua

--[[
    ============================================
    GESTION DES THÈMES
    ============================================
]]

function VoltreUI.SetTheme(styleIndex)
    styleIndex = tonumber(styleIndex) or 2
    VoltreUI.CurrentStyleIndex = styleIndex
    
    if styleIndex == 1 then
        VoltreUI.CurrentTheme = VoltreUI.Themes.dark
    elseif styleIndex == 2 then
        VoltreUI.CurrentTheme = VoltreUI.Themes.modern
    elseif styleIndex == 3 then
        VoltreUI.CurrentTheme = VoltreUI.Themes.classic
    else
        VoltreUI.CurrentTheme = VoltreUI.Themes.modern
    end
    
    -- Sauvegarder la préférence
    SetResourceKvp("VoltreUI:style", tostring(styleIndex))
    
    return VoltreUI.CurrentTheme
end

function VoltreUI.GetTheme()
    if not VoltreUI.CurrentTheme then
        -- Essayer modern, sinon dark, sinon classic, sinon base
        VoltreUI.CurrentTheme = VoltreUI.Themes.modern 
            or VoltreUI.Themes.dark 
            or VoltreUI.Themes.classic
            or VoltreUI.Themes.base
        
        -- Si toujours nil (ne devrait jamais arriver), créer un thème minimal
        if not VoltreUI.CurrentTheme then
            print('[^1VoltreUI^7] CRITICAL: No theme loaded at all!')
            VoltreUI.CurrentTheme = {
                name = "emergency_fallback",
                Menu = {
                    TitleFont = 1,
                    TitleScale = 1.0,
                    DefaultSubtitle = "Menu",
                    SubtitleHeight = 0,
                    DefaultY = 30,
                    Pagination = { Minimum = 1, Maximum = 10, Total = 10 },
                },
                Items = {
                    Navigation = { Enabled = false },
                    Title = { Background = { Width = 431, Height = 107 }, Text = { X = 215, Y = 20, Scale = 1.15 } },
                    Subtitle = { Background = { Width = 431, Height = 40 }, Text = { X = 14, Y = 10, Scale = 0.27 } },
                    Description = { Background = { Height = 30 } },
                },
                Button = {
                    Text = { X = 11, Y = 7, Scale = 0.25 },
                    SelectedSprite = { Width = 431, Height = 38 },
                    Padding = { Left = 0, Right = 0 },
                },
                Behavior = { GlareEffect = false },
                Colors = {
                    TextActive = { R = 255, G = 255, B = 255, A = 255 },
                    TextInactive = { R = 153, G = 153, B = 153, A = 255 },
                },
                GetTextColor = function(self, active, enabled)
                    if active then return 255, 255, 255, 255 else return 153, 153, 153, 255 end
                end,
            }
        end
    end
    return VoltreUI.CurrentTheme
end

function VoltreUI.GetStyleIndex()
    return VoltreUI.CurrentStyleIndex or 2
end

-- Initialiser le thème par défaut immédiatement (si disponible)
if VoltreUI.Themes and VoltreUI.Themes.modern then
    VoltreUI.CurrentTheme = VoltreUI.Themes.modern
end

--[[
    ============================================
    FONCTIONS UTILITAIRES
    ============================================
]]

function VoltreUI.setKeyState(key, state)
    if VoltreUI.disabledKeys[key] == nil then
        VoltreUI.disabledKeys[key] = state
    else
        if state == true then
            VoltreUI.disabledKeys[key] = true
        else
            VoltreUI.disabledKeys[key] = nil
        end
    end
end

function VoltreUI.disableKeyFrame(key)
    VoltreUI.setKeyState(key, true)
    CreateThread(function()
        Wait(0)
        VoltreUI.setKeyState(key, false)
    end)
end

--[[
    ============================================
    INITIALISATION
    ============================================
]]

CreateThread(function()
    -- Charger la préférence sauvegardée
    local savedStyle = GetResourceKvpString("VoltreUI:style")
    if savedStyle then
        VoltreUI.SetTheme(tonumber(savedStyle))
    else
        VoltreUI.SetTheme(2)  -- Default: Modern
    end
    
    Wait(100)
    if voltre and voltre.InitPrint then
        voltre.InitPrint('^2VoltreUI initialized^7 (Style: ' .. VoltreUI.CurrentStyleIndex .. ')')
    else
        print('[VoltreUI] ^2Initialized^7 (Style: ' .. VoltreUI.CurrentStyleIndex .. ')')
    end
end)

--[[
    ============================================
    COMPATIBILITÉ RAGEUI
    ============================================
]]

-- Fonctions globales de compatibilité
function ChangeVoltreUIStyle(value)
    VoltreUI.SetTheme(value)
end

function getVoltreUIStyleIndex()
    return VoltreUI.GetStyleIndex()
end

-- Alias pour RageUI
ChangeRageUIStyle = ChangeVoltreUIStyle
getRageUIStyleIndex = getVoltreUIStyleIndex
