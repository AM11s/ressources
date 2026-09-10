--[[
    VoltreUI - Theme Classic (RageUI1 / Style 3)
    
    Style classique inspiré de GTA Online.
    - Sélection avec couleur serveur (plein)
    - Texte noir sur sélection
    - Effet Glare disponible
    - Navigation avec flèches
]]

VoltreUI = VoltreUI or {}
VoltreUI.Themes = VoltreUI.Themes or {}

-- Enregistrer le thème dans VoltreUI
VoltreUI.Themes.classic = {
    name = "classic",
    version = "1.0.0",
    styleIndex = 3,  -- Correspond à getRageUIStyleIndex() == 3
    
    ------------------------------------
    -- DIMENSIONS (identiques à base)
    ------------------------------------
    
    Items = {
        Title = {
            Background = { Width = 431, Height = 107 },
            Text = { X = 215, Y = 20, Scale = 1.15 },
        },
        
        Subtitle = {
            Background = { Width = 431, Height = 37 },
            Text = { X = 8, Y = 3, Scale = 0.35 },
            PreText = { X = 425, Y = 3, Scale = 0.35 },
        },
        
        Background = { 
            Dictionary = "main", 
            Texture = "gradient_bgd", 
            Y = 0, 
            Width = 431 
        },
        
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
        Padding = { Left = 0, Right = 0, Top = 0 },
    },
    
    ------------------------------------
    -- CHECKBOX
    ------------------------------------
    
    Checkbox = {
        Dictionary = "main",
        Textures = {
            "shop_box_blankb",
            "shop_box_tickb",
            "shop_box_blank",
            "shop_box_tick",
            "shop_box_crossb",
            "shop_box_cross",
        },
        X = 380,
        Y = -6,
        Width = 50,
        Height = 50,
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
    },
    
    ------------------------------------
    -- COULEURS SPÉCIFIQUES
    ------------------------------------
    
    Colors = {
        -- Sélection = couleur serveur (rectangle plein)
        Selection = function()
            return {
                R = tonumber(voltre.getConvarKey("r")) or 255,
                G = tonumber(voltre.getConvarKey("g")) or 255,
                B = tonumber(voltre.getConvarKey("b")) or 255,
                A = 255
            }
        end,
        
        -- Texte NOIR quand sélectionné
        TextActive = { R = 0, G = 0, B = 0, A = 255 },
        
        -- Texte gris clair quand non sélectionné
        TextInactive = { R = 245, G = 245, B = 245, A = 255 },
        
        -- Texte gris foncé quand désactivé
        TextDisabled = { R = 163, G = 159, B = 148, A = 255 },
        
        -- Fond du menu principal
        BackgroundColor = { R = 0, G = 0, B = 0, A = 125 },

        -- Fond des menu (noir) (Info, Description)
        MenuBackground = { R = 0, G = 0, B = 0, A = 225 },
        
        -- Fond du menu Navigation
        NavigationBackground = { R = 0, G = 0, B = 0, A = 225 },

        -- Pas de fond spécifique pour les boutons
        ButtonBackground = nil,
        
        -- Sous-titre (noir)
        Subtitle = { R = 0, G = 0, B = 0, A = 255 },
    },
    
    ------------------------------------
    -- COMPORTEMENTS
    ------------------------------------
    
    Behavior = {
        -- Pas d'animation de balayage
        SweepAnimation = false,
        
        -- Pas de barre latérale
        SideBar = false,
        
        -- Glare disponible (activable par menu)
        GlareEffect = true,
        
        -- Pas d'offset Y
        GlobalOffsetY = 0,
        
        -- Font standard
        ItemTextFont = 0,
    },
    
    ------------------------------------
    -- SAFEZONE
    ------------------------------------
    
    SafeZone = {
        AlignParams = { 0, 0, 0, 0 },
    },
    
    ------------------------------------
    -- RENDU SPÉCIFIQUE
    ------------------------------------
    
    ---@param ctx table Context de rendu (CurrentMenu, ItemOffset, etc.)
    ---@param active boolean Si l'item est sélectionné
    RenderButtonBackground = function(self, ctx, active)
        if active then
            local color = self.Colors.Selection()
            RenderRectangle(
                ctx.X, 
                ctx.Y + self.Button.SelectedSprite.Y + ctx.SubtitleHeight + ctx.ItemOffset, 
                self.Button.SelectedSprite.Width + ctx.WidthOffset, 
                self.Button.SelectedSprite.Height, 
                color.R, color.G, color.B, color.A
            )
        end
    end,
    
    ---@param active boolean
    ---@return number R, number G, number B, number A
    GetTextColor = function(self, active, enabled)
        if not enabled then
            local c = self.Colors.TextDisabled
            return c.R, c.G, c.B, c.A
        elseif active then
            local c = self.Colors.TextActive
            return c.R, c.G, c.B, c.A
        else
            local c = self.Colors.TextInactive
            return c.R, c.G, c.B, c.A
        end
    end,
}
