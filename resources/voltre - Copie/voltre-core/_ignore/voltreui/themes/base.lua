--[[
    VoltreUI - Theme Base
    Structure de base pour tous les thèmes
    
    Chaque thème doit définir toutes ces valeurs.
    Les thèmes héritent de cette base et override les valeurs nécessaires.
]]

-- Initialiser le namespace VoltreUI (DOIT être fait en premier)
VoltreUI = VoltreUI or {}
VoltreUI.Themes = VoltreUI.Themes or {}
VoltreUI.Menus = VoltreUI.Menus or {}
VoltreUI.Item = VoltreUI.Item or {}
VoltreUI.Panel = VoltreUI.Panel or {}
VoltreUI.Window = VoltreUI.Window or {}
VoltreUI.CurrentMenu = VoltreUI.CurrentMenu or nil
VoltreUI.CurrentTheme = VoltreUI.CurrentTheme or nil

---@class VoltreUITheme
local ThemeBase = {
    -- Identifiant du thème
    name = "base",
    version = "1.0.0",
    
    ------------------------------------
    -- DIMENSIONS GLOBALES
    ------------------------------------
    
    Items = {
        -- Banner/Titre
        Title = {
            Background = { Width = 431, Height = 107 },
            Text = { X = 215, Y = 20, Scale = 1.15 },
        },
        
        -- Sous-titre
        Subtitle = {
            Background = { Width = 431, Height = 37 },
            Text = { X = 8, Y = 3, Scale = 0.35 },
            PreText = { X = 425, Y = 3, Scale = 0.35 },  -- Compteur de pages
        },
        
        -- Fond du menu
        Background = { 
            Dictionary = "main", 
            Texture = "gradient_bgd", 
            Y = 0, 
            Width = 431 
        },
        
        -- Flèches de navigation (haut/bas)
        Navigation = {
            Rectangle = { Width = 431, Height = 38 },
            Offset = 5,
            Arrows = { 
                Dictionary = "main", 
                Texture = "shop_arrows_upanddown", 
                X = 190, 
                Y = -6, 
                Width = 50, 
                Height = 50 
            },
            Enabled = false,  -- Afficher ou non les flèches
        },
        
        -- Zone de description
        Description = {
            Bar = { Y = 4, Width = 431, Height = 4 },
            Background = { 
                Dictionary = "main", 
                Texture = "gradient_bgd", 
                Y = 4, 
                Width = 431, 
                Height = 30 
            },
            Text = { X = 8, Y = 10, Scale = 0.35 },
        },
    },
    
    ------------------------------------
    -- BOUTONS
    ------------------------------------
    
    Button = {
        Rectangle = { Y = 0, Width = 431, Height = 38 },
        Text = { X = 8, Y = 3, Scale = 0.31 },
        LeftBadge = { Y = -2, Width = 40, Height = 40 },
        RightBadge = { X = 385, Y = -2, Width = 40, Height = 40 },
        RightText = { X = 420, Y = 3, Scale = 0.31 },
        SelectedSprite = { 
            Dictionary = "main", 
            Texture = "gradient_nav", 
            Y = 0, 
            Width = 431, 
            Height = 38 
        },
        
        -- Offsets spécifiques (certains thèmes ajoutent des marges)
        Padding = { Left = 0, Right = 0, Top = 0 },
    },
    
    ------------------------------------
    -- CHECKBOX
    ------------------------------------
    
    Checkbox = {
        Dictionary = "main",
        Textures = {
            "shop_box_blankb",  -- 1: Vide (sélectionné)
            "shop_box_tickb",   -- 2: Coché tick (sélectionné)
            "shop_box_blank",   -- 3: Vide (non sélectionné)
            "shop_box_tick",    -- 4: Coché tick (non sélectionné)
            "shop_box_crossb",  -- 5: Coché cross (sélectionné)
            "shop_box_cross",   -- 6: Coché cross (non sélectionné)
        },
        X = 380,
        Y = 0,
        Width = 40,
        Height = 40,
    },
    
    ------------------------------------
    -- LIST
    ------------------------------------
    
    List = {
        Text = { X = 8, Y = 3, Scale = 0.31 },
        Items = { X = 420, Y = 3, Scale = 0.31 },
        Arrow = {
            Dictionary = "main",
            LeftTexture = "arrowleft",
            RightTexture = "arrowright",
            Width = 30,
            Height = 30,
            LeftX = 350,
            RightX = 420,
            Y = 0,
        },
    },
    
    ------------------------------------
    -- SLIDER
    ------------------------------------
    
    Slider = {
        Background = { X = 250, Y = 14, Width = 150, Height = 10 },
        Progress = { X = 250, Y = 14, Width = 150, Height = 10 },
        Divider = { Width = 2, Height = 20 },
        Text = { X = 8, Y = 3, Scale = 0.31 },
    },
    
    ------------------------------------
    -- PANELS
    ------------------------------------
    
    Panels = {
        Grid = {
            Background = { 
                Dictionary = "main", 
                Texture = "gradient_bgd", 
                Y = 4, 
                Width = 431, 
                Height = 275 
            },
            Grid = { 
                Dictionary = "pause_menu_pages_char_mom_dad", 
                Texture = "nose_grid", 
                X = 115.5, 
                Y = 47.5, 
                Width = 200, 
                Height = 200 
            },
            Circle = { 
                Dictionary = "mpinventory", 
                Texture = "in_world_circle", 
                X = 115.5, 
                Y = 47.5, 
                Width = 20, 
                Height = 20 
            },
            Text = {
                Top = { X = 215.5, Y = 15, Scale = 0.35 },
                Bottom = { X = 215.5, Y = 250, Scale = 0.35 },
                Left = { X = 57.75, Y = 130, Scale = 0.35 },
                Right = { X = 373.25, Y = 130, Scale = 0.35 },
            },
        },
        
        Percentage = {
            Background = { 
                Dictionary = "main", 
                Texture = "gradient_bgd", 
                Y = 4, 
                Width = 431, 
                Height = 76 
            },
            Bar = { X = 9, Y = 50, Width = 413, Height = 10 },
            Text = {
                Left = { X = 25, Y = 15, Scale = 0.35 },
                Middle = { X = 215.5, Y = 15, Scale = 0.35 },
                Right = { X = 398, Y = 15, Scale = 0.35 },
            },
        },
    },
    
    ------------------------------------
    -- MENU DEFAULTS
    ------------------------------------
    
    Menu = {
        TitleFont = 6,
        TitleScale = 1.2,
        DefaultSubtitle = "Actions(s) Disponible",
        SubtitleHeight = -37,
        DefaultY = 30,
        Pagination = { Minimum = 1, Maximum = 10, Total = 10 },
        DefaultSprite = { Dictionary = "main", Texture = "interaction_bgd" },
        Closable = true,
        EnableMouse = false,
        CursorStyle = 1,
    },
    
    ------------------------------------
    -- COULEURS
    ------------------------------------
    
    Colors = {
        -- Couleur de sélection (utilise les convars serveur par défaut)
        Selection = function()
            return {
                R = tonumber(voltre.getConvarKey("r")) or 255,
                G = tonumber(voltre.getConvarKey("g")) or 255,
                B = tonumber(voltre.getConvarKey("b")) or 255,
                A = 255
            }
        end,
        
        -- Texte actif
        TextActive = { R = 0, G = 0, B = 0, A = 255 },
        
        -- Texte inactif
        TextInactive = { R = 245, G = 245, B = 245, A = 255 },
        
        -- Texte désactivé
        TextDisabled = { R = 163, G = 159, B = 148, A = 255 },
        
        -- Fond du menu
        MenuBackground = { R = 0, G = 0, B = 0, A = 200 },
        
        NavigationBackground = { R = 0, G = 0, B = 0, A = 200 },

        -- Fond des boutons
        ButtonBackground = nil,  -- nil = transparent
        
        -- Barre de description
        DescriptionBar = function()
            return {
                R = tonumber(voltre.getConvarKey("r")) or 255,
                G = tonumber(voltre.getConvarKey("g")) or 255,
                B = tonumber(voltre.getConvarKey("b")) or 255,
                A = 255
            }
        end,
        
        -- Sous-titre
        Subtitle = { R = 0, G = 0, B = 0, A = 200 },
    },
    
    ------------------------------------
    -- COMPORTEMENTS
    ------------------------------------
    
    Behavior = {
        -- Animation de balayage (RageUI2 uniquement)
        SweepAnimation = false,
        SweepColor = { R = 74, G = 75, B = 77 },
        SweepSpeed = 7,
        
        -- Barre latérale colorée (RageUI2 uniquement)
        SideBar = false,
        SideBarWidth = 4,
        
        -- Effet Glare sur le banner
        GlareEffect = false,
        
        -- Offset Y global (RageUI3 ajoute +20)
        GlobalOffsetY = 0,
        
        -- Font pour les textes d'items (RageUI3 utilise font 8)
        ItemTextFont = 0,
    },
    
    ------------------------------------
    -- SAFEZONE
    ------------------------------------
    
    SafeZone = {
        AlignParams = { 0, 0, 0, 0 },  -- SetScriptGfxAlignParams
    },
    
    ------------------------------------
    -- AUDIO
    ------------------------------------
    
    Audio = {
        Use = "NativeUI",  -- ou "RageUI"
        
        NativeUI = {
            UpDown = { audioName = "HUD_FRONTEND_DEFAULT_SOUNDSET", audioRef = "NAV_UP_DOWN" },
            LeftRight = { audioName = "HUD_FRONTEND_DEFAULT_SOUNDSET", audioRef = "NAV_LEFT_RIGHT" },
            Select = { audioName = "HUD_FRONTEND_DEFAULT_SOUNDSET", audioRef = "SELECT" },
            Back = { audioName = "HUD_FRONTEND_DEFAULT_SOUNDSET", audioRef = "BACK" },
            Error = { audioName = "HUD_FRONTEND_DEFAULT_SOUNDSET", audioRef = "ERROR" },
            Slider = { audioName = "HUD_FRONTEND_DEFAULT_SOUNDSET", audioRef = "CONTINUOUS_SLIDER" },
        },
        
        RageUI = {
            UpDown = { audioName = "HUD_FREEMODE_SOUNDSET", audioRef = "NAV_UP_DOWN" },
            LeftRight = { audioName = "HUD_FRONTEND_DEFAULT_SOUNDSET", audioRef = "NAV_LEFT_RIGHT" },
            Select = { audioName = "HUD_FRONTEND_DEFAULT_SOUNDSET", audioRef = "SELECT" },
            Back = { audioName = "HUD_FRONTEND_DEFAULT_SOUNDSET", audioRef = "BACK" },
            Error = { audioName = "HUD_FRONTEND_DEFAULT_SOUNDSET", audioRef = "ERROR" },
            Slider = { audioName = "HUD_FRONTEND_DEFAULT_SOUNDSET", audioRef = "CONTINUOUS_SLIDER" },
        },
    },
}

-- Enregistrer le thème base comme fallback
VoltreUI.Themes.base = ThemeBase

-- Définir le thème par défaut si aucun n'est chargé
if not VoltreUI.CurrentTheme then
    VoltreUI.CurrentTheme = ThemeBase
end

return ThemeBase
