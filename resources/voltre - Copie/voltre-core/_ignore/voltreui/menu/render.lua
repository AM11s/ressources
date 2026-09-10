--[[
    VoltreUI - Menu Render
    Rendu des éléments du menu (Banner, Subtitle, Background, Description)
]]

--[[
    ============================================
    BANNER
    ============================================
]]

VoltreUI.Banner = function()
    local CurrentMenu = VoltreUI.CurrentMenu
    if not CurrentMenu then return end
    if not CurrentMenu() then return end
    if not CurrentMenu.Display.Header then return end
    
    local theme = VoltreUI.GetTheme()
    local titleSettings = theme.Items.Title
    
    VoltreUI.ItemsSafeZone(CurrentMenu)
    
    -- Sprite ou Rectangle
    if CurrentMenu.Sprite and CurrentMenu.Sprite.Dictionary then
        if CurrentMenu.Sprite.Dictionary == "main" then
            RenderSprite(
                CurrentMenu.Sprite.Dictionary, 
                CurrentMenu.Sprite.Texture, 
                CurrentMenu.X, 
                CurrentMenu.Y, 
                titleSettings.Background.Width + CurrentMenu.WidthOffset, 
                titleSettings.Background.Height, 
                0,
                CurrentMenu.Sprite.Color.R, 
                CurrentMenu.Sprite.Color.G, 
                CurrentMenu.Sprite.Color.B, 
                CurrentMenu.Sprite.Color.A
            )
        else
            RenderSprite(
                CurrentMenu.Sprite.Dictionary, 
                CurrentMenu.Sprite.Texture, 
                CurrentMenu.X, 
                CurrentMenu.Y, 
                titleSettings.Background.Width + CurrentMenu.WidthOffset, 
                titleSettings.Background.Height
            )
        end
    elseif CurrentMenu.Rectangle then
        RenderRectangle(
            CurrentMenu.X, 
            CurrentMenu.Y, 
            titleSettings.Background.Width + CurrentMenu.WidthOffset, 
            titleSettings.Background.Height, 
            CurrentMenu.Rectangle.R, 
            CurrentMenu.Rectangle.G, 
            CurrentMenu.Rectangle.B, 
            CurrentMenu.Rectangle.A
        )
    end
    
    -- Glare effect
    if CurrentMenu.Display.Glare and theme.Behavior.GlareEffect then
        local ScaleformMovie = RequestScaleformMovie("MP_MENU_GLARE")
        if HasScaleformMovieLoaded(ScaleformMovie) then
            local GlareWidth = titleSettings.Background.Width
            local GlareHeight = titleSettings.Background.Height
            local GlareX = CurrentMenu.X / 1920 + (CurrentMenu.SafeZoneSize.X / (64.399 - (CurrentMenu.WidthOffset * 0.065731)))
            local GlareY = CurrentMenu.Y / 1080 + CurrentMenu.SafeZoneSize.Y / 33.195020746888
            
            BeginScaleformMovieMethod(ScaleformMovie, "SET_DATA_SLOT")
            ScaleformMovieMethodAddParamFloat(GetGameplayCamRelativeHeading())
            EndScaleformMovieMethod()
            
            DrawScaleformMovie(ScaleformMovie, GlareX, GlareY, GlareWidth / 430, GlareHeight / 100, 255, 255, 255, 255, 0)
        end
    end
    
    -- Colorbar sur le banner (Modern theme)
    if theme.Behavior.ColorbarBanner then
        local color = theme.Colors.Selection()
        RenderRectangle(
            CurrentMenu.X, 
            CurrentMenu.Y + titleSettings.Background.Height - 5, 
            titleSettings.Background.Width + CurrentMenu.WidthOffset, 
            4, 
            color.R, color.G, color.B, color.A
        )
    end
    
    -- Titre
    RenderText(
        CurrentMenu.Title, 
        CurrentMenu.X + titleSettings.Text.X + (CurrentMenu.WidthOffset / 2), 
        CurrentMenu.Y + titleSettings.Text.Y, 
        CurrentMenu.TitleFont, 
        CurrentMenu.TitleScale, 
        255, 255, 255, 255, 
        1  -- Centré
    )
    
    VoltreUI.ItemOffset = VoltreUI.ItemOffset + titleSettings.Background.Height
end

--[[
    ============================================
    SUBTITLE
    ============================================
]]

VoltreUI.Subtitle = function()
    local CurrentMenu = VoltreUI.CurrentMenu
    if not CurrentMenu then return end
    if not CurrentMenu() then return end
    if not CurrentMenu.Display.Subtitle then return end
    if CurrentMenu.Subtitle == "" then return end
    
    local theme = VoltreUI.GetTheme()
    local subtitleSettings = theme.Items.Subtitle
    
    VoltreUI.ItemsSafeZone(CurrentMenu)
    
    -- Fond du sous-titre
    local bgColor = theme.Colors.Subtitle
    if type(bgColor) == "function" then bgColor = bgColor() end
    
    RenderRectangle(
        CurrentMenu.X, 
        CurrentMenu.Y + VoltreUI.ItemOffset, 
        subtitleSettings.Background.Width + CurrentMenu.WidthOffset, 
        subtitleSettings.Background.Height + CurrentMenu.SubtitleHeight, 
        bgColor.R, bgColor.G, bgColor.B, bgColor.A
    )
    
    -- Texte du sous-titre
    RenderText(
        CurrentMenu.PageCounterColour .. CurrentMenu.Subtitle, 
        CurrentMenu.X + subtitleSettings.Text.X, 
        CurrentMenu.Y + subtitleSettings.Text.Y + VoltreUI.ItemOffset, 
        0, 
        subtitleSettings.Text.Scale, 
        245, 245, 245, 255, 
        nil, false, false, 
        subtitleSettings.Background.Width + CurrentMenu.WidthOffset
    )
    
    -- Vérifier l'index
    if CurrentMenu.Index > CurrentMenu.Options or CurrentMenu.Index < 0 then
        CurrentMenu.Index = 1
    end
    
    -- Pagination
    if CurrentMenu.Index > CurrentMenu.Pagination.Total then
        local offset = CurrentMenu.Index - CurrentMenu.Pagination.Total
        CurrentMenu.Pagination.Minimum = 1 + offset
        CurrentMenu.Pagination.Maximum = CurrentMenu.Pagination.Total + offset
    else
        CurrentMenu.Pagination.Minimum = 1
        CurrentMenu.Pagination.Maximum = CurrentMenu.Pagination.Total
    end
    
    -- Compteur de pages
    if CurrentMenu.Display.PageCounter then
        local counterText = CurrentMenu.PageCounter or (CurrentMenu.PageCounterColour .. CurrentMenu.Index .. " / " .. CurrentMenu.Options)
        RenderText(
            counterText, 
            CurrentMenu.X + subtitleSettings.PreText.X + CurrentMenu.WidthOffset, 
            CurrentMenu.Y + subtitleSettings.PreText.Y + VoltreUI.ItemOffset, 
            0, 
            subtitleSettings.PreText.Scale, 
            245, 245, 245, 255, 
            2  -- Aligné à droite
        )
    end
    
    VoltreUI.ItemOffset = VoltreUI.ItemOffset + subtitleSettings.Background.Height
end

--[[
    ============================================
    BACKGROUND
    ============================================
]]

VoltreUI.Background = function()
    local CurrentMenu = VoltreUI.CurrentMenu
    if not CurrentMenu then return end
    if not CurrentMenu() then return end
    if not CurrentMenu.Display.Background then return end
    
    local theme = VoltreUI.GetTheme()
    local bgSettings = theme.Items.Background
    
    VoltreUI.ItemsSafeZone(CurrentMenu)
    
    SetScriptGfxDrawOrder(0)
    
    -- Utiliser BackgroundColor si défini, sinon MenuBackground
    local bgColor = theme.Colors.BackgroundColor or theme.Colors.MenuBackground
    if type(bgColor) == "function" then bgColor = bgColor() end
    
    -- Fond avec sprite ou rectangle selon le thème
    if theme.name == "dark" then
        -- Dark theme: fond spécifique
        local colors = theme._colors.background.main2_150
        RenderRectangle(
            CurrentMenu.X, 
            146 + CurrentMenu.Y + bgSettings.Y + CurrentMenu.SubtitleHeight, 
            bgSettings.Width + CurrentMenu.WidthOffset, 
            VoltreUI.ItemOffset - 117, 
            colors[1], colors[2], colors[3], colors[4]
        )
    else
        RenderRectangle(
            CurrentMenu.X, 
            CurrentMenu.Y + bgSettings.Y + CurrentMenu.SubtitleHeight, 
            bgSettings.Width + CurrentMenu.WidthOffset, 
            VoltreUI.ItemOffset, 
            bgColor.R, bgColor.G, bgColor.B, bgColor.A
        )
        -- -- Classic/Modern: sprite gradient
        -- RenderSprite(
        --     bgSettings.Dictionary, 
        --     bgSettings.Texture, 
        --     CurrentMenu.X, 
        --     CurrentMenu.Y + bgSettings.Y + CurrentMenu.SubtitleHeight, 
        --     bgSettings.Width + CurrentMenu.WidthOffset, 
        --     VoltreUI.ItemOffset, 
        --     0,
        --     bgColor.R, bgColor.G, bgColor.B, bgColor.A
        -- )
    end
    
    SetScriptGfxDrawOrder(1)
end

--[[
    ============================================
    DESCRIPTION
    ============================================
]]

VoltreUI.Description = function()
    local CurrentMenu = VoltreUI.CurrentMenu
    if not CurrentMenu then return end
    if not CurrentMenu() then return end
    
    local theme = VoltreUI.GetTheme()
    local haveDescription = CurrentMenu.Description ~= nil
    local descSettings = theme.Items.Description
    local offsetY = theme.Behavior.GlobalOffsetY or 0
    
    VoltreUI.ItemsSafeZone(CurrentMenu)
    
    if haveDescription then
        local barColor = theme.Colors.Selection()
        RenderRectangle(
            CurrentMenu.X, 
            CurrentMenu.Y + descSettings.Bar.Y + CurrentMenu.SubtitleHeight + VoltreUI.ItemOffset + offsetY, 
            descSettings.Bar.Width + CurrentMenu.WidthOffset, 
            descSettings.Bar.Height, 
            barColor.R, barColor.G, barColor.B, barColor.A
        )

        -- Fond de la description
        local bgColor = theme.Colors.MenuBackground
        if type(bgColor) == "function" then bgColor = bgColor() end
        
        RenderRectangle(
            CurrentMenu.X, 
            CurrentMenu.Y + descSettings.Background.Y + CurrentMenu.SubtitleHeight + VoltreUI.ItemOffset + descSettings.Bar.Height + offsetY, 
            descSettings.Background.Width + CurrentMenu.WidthOffset, 
            CurrentMenu.DescriptionHeight, 
            bgColor.R, bgColor.G, bgColor.B, bgColor.A
        )
        
        -- Texte de la description
        RenderText(
            CurrentMenu.Description, 
            CurrentMenu.X + descSettings.Text.X, 
            CurrentMenu.Y + descSettings.Text.Y + CurrentMenu.SubtitleHeight + VoltreUI.ItemOffset + descSettings.Bar.Height + offsetY, 
            0, 
            descSettings.Text.Scale, 
            255, 255, 255, 255, 
            nil, false, false, 
            descSettings.Background.Width + CurrentMenu.WidthOffset - 8.0
        )
        
        VoltreUI.ItemOffset = VoltreUI.ItemOffset + CurrentMenu.DescriptionHeight + descSettings.Bar.Y
    else
        local barColor = theme.Colors.Selection()
        RenderRectangle(
            CurrentMenu.X, 
            CurrentMenu.Y + descSettings.Bar.Y + CurrentMenu.SubtitleHeight + VoltreUI.ItemOffset + offsetY + 1, 
            descSettings.Bar.Width + CurrentMenu.WidthOffset, 
            descSettings.Bar.Height, 
            barColor.R, barColor.G, barColor.B, barColor.A
        )

        VoltreUI.ItemOffset = VoltreUI.ItemOffset + descSettings.Bar.Y
    end
end

--[[
    ============================================
    RENDER (Fin de frame)
    ============================================
]]

VoltreUI.Render = function()
    local CurrentMenu = VoltreUI.CurrentMenu
    if not CurrentMenu then return end
    if not CurrentMenu() then return end
    
    if CurrentMenu.Safezone then
        ResetScriptGfxAlign()
    end
    
    -- Instructional buttons
    if CurrentMenu.Display.InstructionalButton then
        if not CurrentMenu.InitScaleform then
            CurrentMenu:UpdateInstructionalButtons(true)
            CurrentMenu.InitScaleform = true
        end
        DrawScaleformMovieFullscreen(CurrentMenu.InstructionalScaleform, 255, 255, 255, 255, 0)
    end
    
    -- Sauvegarder le nombre d'options
    CurrentMenu.Options = VoltreUI.Options
    CurrentMenu.SafeZoneSize = nil
    
    -- Gérer les contrôles
    VoltreUI.Controls()
    
    -- Navigation
    VoltreUI.GoUp(CurrentMenu.Options)
    VoltreUI.GoDown(CurrentMenu.Options)
    
    -- Reset pour la prochaine frame
    VoltreUI.Options = 0
    VoltreUI.StatisticPanelCount = 0
    VoltreUI.ItemOffset = 0
    
    -- Gestion du retour
    local Controls = VoltreUI.Settings.Controls
    if Controls.Back.Enabled and CurrentMenu.Closable then
        if Controls.Back.Active then
            local Audio = VoltreUI.Settings.Audio
            VoltreUI.PlaySound(Audio[Audio.Use].Back.audioName, Audio[Audio.Use].Back.audioRef)
            
            if CurrentMenu.Closed then
                collectgarbage()
                CurrentMenu.Closed()
            end
            
            if CurrentMenu.Parent and CurrentMenu.Parent() then
                VoltreUI.NextMenu = CurrentMenu.Parent
                CurrentMenu:UpdateCursorStyle()
            else
                VoltreUI.NextMenu = nil
                VoltreUI.Visible(CurrentMenu, false)
            end
        end
    end
    
    -- Transition vers le prochain menu
    if VoltreUI.NextMenu and VoltreUI.NextMenu() then
        VoltreUI.Visible(CurrentMenu, false)
        VoltreUI.Visible(VoltreUI.NextMenu, true)
        Controls.Select.Active = false
        VoltreUI.NextMenu = nil
        VoltreUI.LastControl = false
    end
end

--[[
    ============================================
    ITEMS DESCRIPTION
    ============================================
]]

VoltreUI.ItemsDescription = function(CurrentMenu, Description, Selected)
    -- Si l'item sélectionné n'a pas de description, effacer la description actuelle
    if Selected and (not Description or Description == "") then
        CurrentMenu.Description = nil
        CurrentMenu.DescriptionHeight = 0
        return
    end
    
    if not Description or Description == "" then return end
    
    local theme = VoltreUI.GetTheme()
    local descSettings = theme.Items.Description
    
    if Selected and CurrentMenu.Description ~= Description then
        CurrentMenu.Description = Description
        
        local DescriptionLineCount = GetLineCount(
            CurrentMenu.Description, 
            CurrentMenu.X + descSettings.Text.X, 
            CurrentMenu.Y + descSettings.Text.Y + CurrentMenu.SubtitleHeight + VoltreUI.ItemOffset, 
            0, 
            descSettings.Text.Scale, 
            255, 255, 255, 255, 
            nil, false, false, 
            descSettings.Background.Width + CurrentMenu.WidthOffset - 5.0
        )
        
        if DescriptionLineCount > 1 then
            CurrentMenu.DescriptionHeight = descSettings.Background.Height * DescriptionLineCount
        else
            CurrentMenu.DescriptionHeight = descSettings.Background.Height + 7
        end
    end
end
