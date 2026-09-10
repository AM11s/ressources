--[[
    VoltreUI - Theme Modern (RageUI2 / Style 2)
    
    Style moderne avec animations.
    - Animation de balayage sur les items
    - Barre latérale colorée sur sélection
    - Fond de bouton gris foncé
    - Dépendance à Config.RageUI.AdvancedStyle
]]

VoltreUI = VoltreUI or {}
VoltreUI.Themes = VoltreUI.Themes or {}

-- Enregistrer le thème dans VoltreUI
VoltreUI.Themes.modern = {
    name = "modern",
    version = "1.0.0",
    styleIndex = 2,  -- Correspond à getRageUIStyleIndex() == 2
    
    ------------------------------------
    -- DIMENSIONS
    ------------------------------------
    
    Items = {
        Title = {
            Background = { Width = 431, Height = 107 },
            Text = { X = 215, Y = 20, Scale = 1.15 },
        },
        
        Subtitle = {
            Background = { Width = 431, Height = 40 },  -- Plus haut que classic
            Text = { X = 14, Y = 10, Scale = 0.27 },    -- Position et scale différents
            PreText = { X = 420, Y = 10, Scale = 0.30 },
        },
        
        Background = { 
            Dictionary = "main", 
            Texture = "gradient_bgd", 
            Y = 0, 
            Width = 431 
        },
        
        Navigation = {
            Rectangle = { Width = 0, Height = 0 },  -- Pas de rectangle
            Offset = 5,
            Arrows = { 
                Dictionary = "main", 
                Texture = "shop_arrows_upanddown", 
                X = 190, 
                Y = -6, 
                Width = 0,   -- Flèches cachées
                Height = 0 
            },
            Enabled = false,  -- Flèches désactivées
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
            Text = { X = 8, Y = 10, Scale = 0.30 },  -- Scale légèrement différent
        },
    },
    
    ------------------------------------
    -- BOUTONS
    ------------------------------------
    
    Button = {
        Rectangle = { Y = 0, Width = 500, Height = 43 },
        Text = { X = 11, Y = 7, Scale = 0.25 },  -- Comme l'original
        LeftBadge = { X = 2, Y = -2, Width = 40, Height = 40 },
        RightBadge = { X = 375, Y = 0, Width = 40, Height = 40 },  -- Comme l'original
        RightText = { X = 405, Y = 7, Scale = 0.25 },  -- 420 - 15 pour compenser le padding
        SelectedSprite = { 
            Dictionary = "main", 
            Texture = "gradient_nav", 
            Y = 0, 
            Width = 431,   -- Comme l'original
            Height = 38 
        },
        -- Marges internes (boutons avec padding)
        Padding = { Left = 15, Right = 15, Top = 0 },
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
        X = 370,  -- Comme l'original
        Y = -3,
        Width = 40,
        Height = 40,
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
        -- Sélection = barre latérale colorée (pas de fond plein)
        Selection = function()
            return {
                R = tonumber(voltre.getConvarKey("r")) or 255,
                G = tonumber(voltre.getConvarKey("g")) or 255,
                B = tonumber(voltre.getConvarKey("b")) or 255,
                A = 255
            }
        end,
        
        -- Texte BLANC quand sélectionné
        TextActive = { R = 255, G = 255, B = 255, A = 255 },
        
        -- Texte gris quand non sélectionné
        TextInactive = { R = 153, G = 153, B = 153, A = 255 },
        
        -- Texte gris foncé quand désactivé
        TextDisabled = { R = 100, G = 100, B = 100, A = 255 },
        
        -- Fond du menu (depuis Config.RageUI.AdvancedStyle.MenuBackground)
        MenuBackground = function()
            if Config and Config.RageUI and Config.RageUI.AdvancedStyle then
                local bg = Config.RageUI.AdvancedStyle.MenuBackground
                return { R = bg[1], G = bg[2], B = bg[3], A = bg[4] }
            end
            return { R = 20, G = 20, B = 20, A = 200 }
        end,
        
        -- Fond des boutons (depuis Config.RageUI.AdvancedStyle.ButtonBackground)
        ButtonBackground = function()
            if Config and Config.RageUI and Config.RageUI.AdvancedStyle then
                local bg = Config.RageUI.AdvancedStyle.ButtonBackground
                return { R = bg[1], G = bg[2], B = bg[3], A = bg[4] }
            end
            return { R = 30, G = 30, B = 30, A = 200 }
        end,
        
        -- Sous-titre (depuis Config.RageUI.AdvancedStyle.SubTitle)
        Subtitle = function()
            if Config and Config.RageUI and Config.RageUI.AdvancedStyle then
                local st = Config.RageUI.AdvancedStyle.SubTitle
                return { R = st[1], G = st[2], B = st[3], A = st[4] }
            end
            return { R = 0, G = 0, B = 0, A = 255 }
        end,
        
        -- Fond derrière les items (sprite gradient)
        BackgroundColor = function()
            if Config and Config.RageUI and Config.RageUI.AdvancedStyle then
                local bg = Config.RageUI.AdvancedStyle.MenuBackground
                return { R = bg[1], G = bg[2], B = bg[3], A = bg[4] }
            end
            return { R = 15, G = 15, B = 15, A = 220 }
        end,
        
        -- Couleur de l'animation de balayage
        SweepColor = { R = 74, G = 75, B = 77 },
    },
    
    ------------------------------------
    -- COMPORTEMENTS
    ------------------------------------
    
    Behavior = {
        -- Animation de balayage ACTIVÉE
        SweepAnimation = true,
        SweepColor = { R = 74, G = 75, B = 77 },
        SweepSpeed = 7,          -- Vitesse de progression
        SweepMaxWidth = 300,     -- Largeur max avant reset
        SweepInitialSpeed = 2,   -- Vitesse initiale (plus lente)
        
        -- Barre latérale colorée ACTIVÉE
        SideBar = true,
        SideBarWidth = 4,  -- Largeur de la barre (SelectedSprite.Width/100)
        
        -- Pas de Glare
        GlareEffect = false,
        
        -- Pas d'offset Y
        GlobalOffsetY = 0,
        
        -- Font standard
        ItemTextFont = 0,
        
        -- Colorbar sur le banner (optionnel)
        ColorbarBanner = function()
            if Config and Config.RageUI and Config.RageUI.AdvancedStyle then
                return Config.RageUI.AdvancedStyle.ColorbarBanner
            end
            return false
        end,
    },
    
    ------------------------------------
    -- SAFEZONE
    ------------------------------------
    
    SafeZone = {
        AlignParams = { 22, 25, 29, 0 },  -- Différent de classic !
    },
    
    ------------------------------------
    -- RENDU SPÉCIFIQUE
    ------------------------------------
    
    ---@param ctx table Context de rendu
    ---@param active boolean Si l'item est sélectionné
    RenderButtonBackground = function(self, ctx, active)
        local padding = self.Button.Padding
        local btnBg = self.Colors.ButtonBackground()
        
        -- Fond du bouton (toujours affiché)
        RenderRectangle(
            ctx.X + padding.Left, 
            ctx.Y + self.Button.SelectedSprite.Y + ctx.SubtitleHeight + ctx.ItemOffset, 
            self.Button.SelectedSprite.Width + ctx.WidthOffset - (padding.Left + padding.Right), 
            self.Button.SelectedSprite.Height - 3, 
            btnBg.R, btnBg.G, btnBg.B, btnBg.A
        )
        
        if active then
            -- Animation de balayage
            if self.Behavior.SweepAnimation and VoltreUI.Animation then
                local anim = VoltreUI.Animation
                if anim.canAnimate and anim.alpha > 0 then
                    local sweep = self.Colors.SweepColor
                    RenderRectangle(
                        ctx.X + padding.Left + anim.progressValue, 
                        ctx.Y + self.Button.SelectedSprite.Y + ctx.SubtitleHeight + ctx.ItemOffset, 
                        self.Button.SelectedSprite.Width + ctx.WidthOffset - 300, 
                        self.Button.SelectedSprite.Height - 3, 
                        sweep.R, sweep.G, sweep.B, anim.alpha
                    )
                end
            end
            
            -- Barre latérale colorée
            if self.Behavior.SideBar then
                local color = self.Colors.Selection()
                RenderRectangle(
                    ctx.X + padding.Left, 
                    ctx.Y + self.Button.SelectedSprite.Y + ctx.SubtitleHeight + ctx.ItemOffset, 
                    self.Behavior.SideBarWidth, 
                    self.Button.SelectedSprite.Height - 3, 
                    color.R, color.G, color.B, color.A
                )
            end
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
