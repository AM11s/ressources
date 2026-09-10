--[[
    VoltreUI - Theme Dark (RageUI3 / Style 1)
    
    Style sombre minimaliste.
    - Fond très sombre (13, 13, 13)
    - Sélection avec couleur serveur (légèrement transparente)
    - Font différente (Font 8 pour items, Font 11 pour titre)
    - Plus d'items par page (14)
    - Offset Y global de +20
]]

VoltreUI = VoltreUI or {}
VoltreUI.Themes = VoltreUI.Themes or {}

-- Enregistrer le thème dans VoltreUI
VoltreUI.Themes.dark = {
    name = "dark",
    version = "1.0.0",
    styleIndex = 1,  -- Correspond à getRageUIStyleIndex() == 1
    
    ------------------------------------
    -- COULEURS LOCALES (UI3Config)
    ------------------------------------
    
    _colors = {
        background = {
            main_255 = { 13, 13, 13, 255 },      -- Bouton fond opaque
            main_125 = { 13, 13, 13, 135 },      -- Bouton fond transparent
            main2_255 = { 16, 16, 16, 255 },     -- Menu fond opaque
            main2_200 = { 16, 16, 16, 200 },     -- Menu fond semi-transparent
            main2_150 = { 16, 16, 16, 180 },     -- Menu fond léger
            main3_255 = { 30, 30, 30, 255 },
            main4_255 = { 87, 87, 87, 255 },
            main5_255 = { 133, 133, 133, 255 },
            main6_255 = { 160, 160, 160, 255 },
        },
    },
    
    ------------------------------------
    -- DIMENSIONS
    ------------------------------------
    
    Items = {
        Title = {
            Background = { Width = 415, Height = 105 },  -- Légèrement plus petit
            Text = { X = 215, Y = 20, Scale = 1.15 },
        },
        
        Subtitle = {
            Background = { Width = 415, Height = 40 },
            Text = { X = 14, Y = 7, Scale = 0.25 },      -- Scale plus petit
            PreText = { X = 395, Y = 9, Scale = 0.27 },  -- Position différente
        },
        
        Background = { 
            Dictionary = "main", 
            Texture = "gradient_bgd", 
            Y = 0, 
            Width = 415   -- Plus étroit
        },
        
        Navigation = {
            Rectangle = { Width = 0, Height = 0 },
            Offset = 5,
            Arrows = { 
                Dictionary = "main", 
                Texture = "shop_arrows_upanddown", 
                X = 190, 
                Y = -6, 
                Width = 0,
                Height = 0 
            },
            Enabled = false,  -- Flèches désactivées
        },
        
        Description = {
            Bar = { Y = 4, Width = 415, Height = 4 },
            Background = { 
                Dictionary = "main", 
                Texture = "gradient_bgd", 
                Y = 4, 
                Width = 415, 
                Height = 30 
            },
            Text = { X = 8, Y = 10, Scale = 0.25 },  -- Scale plus petit
        },
    },
    
    ------------------------------------
    -- BOUTONS
    ------------------------------------
    
    Button = {
        Rectangle = { Y = 0, Width = 500, Height = 43 },
        Text = { X = -5, Y = 8, Scale = 0.25 },  -- Comme l'original RageUI3
        LeftBadge = { X = 2, Y = -2, Width = 40, Height = 40 },
        RightBadge = { X = 365, Y = 5, Width = 29, Height = 29 },  -- Comme l'original
        RightText = { X = 395, Y = 7, Scale = 0.23 },  -- 420 - 25 pour compenser
        SelectedSprite = { 
            Dictionary = "main", 
            Texture = "gradient_nav", 
            Y = 0, 
            Width = 440, 
            Height = 38 
        },
        -- Marges + offset
        Padding = { Left = 15, Right = 40, Top = 0 },
        TextOffset = 28,  -- Offset X supplémentaire pour le texte (comme l'original: +28)
    },
    
    ------------------------------------
    -- CHECKBOX
    ------------------------------------
    
    Checkbox = {
        Dictionary = "main",
        Textures = {
            "shop_box_blankb",  -- 1
            "shop_box_tickb",   -- 2
            "shop_box_blank",   -- 3
            "shop_box_tick",    -- 4
            "shop_box_crossb",  -- 5
            "shop_box_cross",   -- 6
        },
        X = 365,
        Y = 0,
        Width = 35,
        Height = 35,
        OffsetY = 20,  -- Offset Y spécifique
    },
    
    ------------------------------------
    -- MENU DEFAULTS
    ------------------------------------
    
    Menu = {
        TitleFont = 11,       -- Font différente !
        TitleScale = 0.8,     -- Scale différent !
        DefaultSubtitle = "Action(s) Disponibles",  -- Texte légèrement différent
        SubtitleHeight = -100,  -- Très différent !
        DefaultY = 30,
        Pagination = { Minimum = 1, Maximum = 13, Total = 14 },  -- Plus d'items !
        DefaultSprite = { Dictionary = "main", Texture = "interaction_bgd" },
    },
    
    ------------------------------------
    -- COULEURS SPÉCIFIQUES
    ------------------------------------
    
    Colors = {
        -- Sélection = couleur serveur avec transparence
        Selection = function()
            return {
                R = tonumber(voltre.getConvarKey("r")) or 255,
                G = tonumber(voltre.getConvarKey("g")) or 255,
                B = tonumber(voltre.getConvarKey("b")) or 255,
                A = 215  -- Légèrement transparent
            }
        end,
        
        -- Couleur pleine (pour certains éléments)
        FullColor = function()
            return {
                R = tonumber(voltre.getConvarKey("r")) or 255,
                G = tonumber(voltre.getConvarKey("g")) or 255,
                B = tonumber(voltre.getConvarKey("b")) or 255,
                A = 255
            }
        end,
        
        -- Texte BLANC quand sélectionné
        TextActive = { R = 255, G = 255, B = 255, A = 255 },
        
        -- Texte gris clair quand non sélectionné
        TextInactive = { R = 150, G = 150, B = 150, A = 255 },
        
        -- Texte gris foncé quand désactivé
        TextDisabled = { R = 104, G = 108, B = 114, A = 255 },
        
        -- Texte désactivé mais sélectionné
        TextDisabledActive = { R = 124, G = 129, B = 135, A = 255 },
        
        -- Fond du menu
        MenuBackground = { R = 16, G = 16, B = 16, A = 180 },
        
        -- Fond des boutons (non sélectionnés)
        ButtonBackground = { R = 13, G = 13, B = 13, A = 135 },
        
        -- Sous-titre
        Subtitle = { R = 16, G = 16, B = 16, A = 200 },
    },
    
    ------------------------------------
    -- COMPORTEMENTS
    ------------------------------------
    
    Behavior = {
        -- Pas d'animation de balayage
        SweepAnimation = false,
        
        -- Pas de barre latérale
        SideBar = false,
        
        -- Pas de Glare
        GlareEffect = false,
        
        -- OFFSET Y GLOBAL de +20 sur tous les éléments
        GlobalOffsetY = 20,
        
        -- Font 8 pour les textes d'items
        ItemTextFont = 8,
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
    
    ---@param ctx table Context de rendu
    ---@param active boolean Si l'item est sélectionné
    RenderButtonBackground = function(self, ctx, active)
        local padding = self.Button.Padding
        local offsetY = self.Behavior.GlobalOffsetY
        
        local bgColor
        if active then
            bgColor = self.Colors.Selection()
        else
            bgColor = self.Colors.ButtonBackground
        end
        
        RenderRectangle(
            ctx.X + padding.Left, 
            ctx.Y + offsetY + self.Button.SelectedSprite.Y + ctx.SubtitleHeight + ctx.ItemOffset, 
            self.Button.SelectedSprite.Width + ctx.WidthOffset - (padding.Left + padding.Right), 
            self.Button.SelectedSprite.Height - 1, 
            bgColor.R, bgColor.G, bgColor.B, bgColor.A
        )
    end,
    
    -- Rendu du sous-titre (différent des autres thèmes)
    RenderSubtitle = function(self, ctx)
        local colors = self._colors.background.main2_200
        RenderRectangle(
            ctx.X, 
            ctx.Y + ctx.ItemOffset, 
            self.Items.Subtitle.Background.Width + ctx.WidthOffset, 
            self.Items.Subtitle.Background.Height + ctx.SubtitleHeight - 3, 
            colors[1], colors[2], colors[3], colors[4]
        )
    end,
    
    -- Rendu du fond (différent des autres thèmes)
    RenderBackground = function(self, ctx)
        local colors = self._colors.background.main2_150
        RenderRectangle(
            ctx.X, 
            146 + ctx.Y + self.Items.Background.Y + ctx.SubtitleHeight, 
            self.Items.Background.Width + ctx.WidthOffset, 
            ctx.ItemOffset - 117, 
            colors[1], colors[2], colors[3], colors[4]
        )
    end,
    
    -- Rendu de la description (différent des autres thèmes)
    RenderDescription = function(self, ctx)
        local colors = self._colors.background.main2_200
        local offsetY = self.Behavior.GlobalOffsetY
        
        -- Fond de la description (pas de barre colorée)
        RenderRectangle(
            ctx.X, 
            ctx.Y + self.Items.Description.Background.Y + ctx.SubtitleHeight + ctx.ItemOffset + offsetY + 8, 
            self.Items.Description.Background.Width + ctx.WidthOffset, 
            ctx.DescriptionHeight + 5, 
            colors[1], colors[2], colors[3], colors[4]
        )
    end,
    
    ---@param active boolean
    ---@param enabled boolean
    ---@return number R, number G, number B, number A
    GetTextColor = function(self, active, enabled)
        if not enabled then
            if active then
                local c = self.Colors.TextDisabledActive
                return c.R, c.G, c.B, c.A
            else
                local c = self.Colors.TextDisabled
                return c.R, c.G, c.B, c.A
            end
        elseif active then
            local c = self.Colors.TextActive
            return c.R, c.G, c.B, c.A
        else
            local c = self.Colors.TextInactive
            return c.R, c.G, c.B, c.A
        end
    end,
}
