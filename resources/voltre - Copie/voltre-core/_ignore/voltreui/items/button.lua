--[[
    VoltreUI - Button Item
    Bouton de base du menu
]]

---Créer un bouton
---@param Label string
---@param Description string|nil
---@param Style table|nil
---@param Enabled boolean|nil
---@param Action table|function|nil
---@param Submenu table|nil
VoltreUI.Button = function(Label, Description, Style, Enabled, Action, Submenu)
    local CurrentMenu = VoltreUI.CurrentMenu
    if not CurrentMenu then return end
    if not CurrentMenu() then return end
    
    -- Valeurs par défaut
    Style = Style or {}
    Enabled = Enabled ~= false
    Action = Action or {}
    
    -- Si Action est une fonction, la convertir en table
    if type(Action) == "function" then
        Action = { onSelected = Action }
    end
    
    local Option = VoltreUI.Options + 1
    local theme = VoltreUI.GetTheme()
    local btnSettings = theme.Button
    local offsetY = theme.Behavior.GlobalOffsetY or 0
    
    -- Vérifier si dans la pagination
    if CurrentMenu.Pagination.Minimum <= Option and CurrentMenu.Pagination.Maximum >= Option then
        local Active = CurrentMenu.Index == Option
        
        VoltreUI.ItemsSafeZone(CurrentMenu)
        
        -- Badges
        local haveLeftBadge = Style.LeftBadge and Style.LeftBadge ~= VoltreUI.BadgeStyle.None
        local haveRightBadge = (Style.RightBadge and Style.RightBadge ~= VoltreUI.BadgeStyle.None) or (not Enabled and Style.LockBadge ~= VoltreUI.BadgeStyle.None)
        local LeftBadgeOffset = haveLeftBadge and 27 or 0
        local RightBadgeOffset = haveRightBadge and 32 or 0
        
        local height = btnSettings.SelectedSprite.Height
        
        -- Fond du bouton via le thème
        local ctx = {
            X = CurrentMenu.X,
            Y = CurrentMenu.Y,
            SubtitleHeight = CurrentMenu.SubtitleHeight,
            ItemOffset = VoltreUI.ItemOffset,
            WidthOffset = CurrentMenu.WidthOffset,
            Style = Style,
        }
        theme:RenderButtonBackground(ctx, Active)
        
        -- Couleur du texte
        local textR, textG, textB, textA
        if not Enabled then
            local c = theme.Colors.TextDisabled
            textR, textG, textB, textA = c.R, c.G, c.B, c.A
        elseif Active then
            local c = theme.Colors.TextActive
            textR, textG, textB, textA = c.R, c.G, c.B, c.A
        else
            local c = theme.Colors.TextInactive
            textR, textG, textB, textA = c.R, c.G, c.B, c.A
        end
        
        -- Calcul des positions selon le thème
        local yOffset = theme.name == "dark" and 20 or 0
        local textFont = theme.Behavior.ItemTextFont or 0
        local baseY = CurrentMenu.Y + yOffset + CurrentMenu.SubtitleHeight + VoltreUI.ItemOffset
        
        -- Badges
        if Enabled then
            if haveLeftBadge and Style.LeftBadge then
                local LeftBadge = Style.LeftBadge(Active)
                RenderSprite(
                    LeftBadge.BadgeDictionary or "main", 
                    LeftBadge.BadgeTexture or "", 
                    CurrentMenu.X + 17,  -- Comme l'original
                    baseY + btnSettings.LeftBadge.Y, 
                    btnSettings.LeftBadge.Width, 
                    btnSettings.LeftBadge.Height, 
                    0, 
                    LeftBadge.BadgeColour and LeftBadge.BadgeColour.R or 255, 
                    LeftBadge.BadgeColour and LeftBadge.BadgeColour.G or 255, 
                    LeftBadge.BadgeColour and LeftBadge.BadgeColour.B or 255, 
                    LeftBadge.BadgeColour and LeftBadge.BadgeColour.A or 255
                )
            end
            
            if haveRightBadge and Style.RightBadge then
                local RightBadge = Style.RightBadge(Active)
                RenderSprite(
                    RightBadge.BadgeDictionary or "main", 
                    RightBadge.BadgeTexture or "", 
                    CurrentMenu.X + btnSettings.RightBadge.X + CurrentMenu.WidthOffset, 
                    baseY + btnSettings.RightBadge.Y, 
                    btnSettings.RightBadge.Width, 
                    btnSettings.RightBadge.Height, 
                    0, 
                    RightBadge.BadgeColour and RightBadge.BadgeColour.R or 255, 
                    RightBadge.BadgeColour and RightBadge.BadgeColour.G or 255, 
                    RightBadge.BadgeColour and RightBadge.BadgeColour.B or 255, 
                    RightBadge.BadgeColour and RightBadge.BadgeColour.A or 255
                )
            end
            
            -- RightLabel (position exacte comme l'original)
            if Style.RightLabel then
                local rightLabelX
                if theme.name == "modern" then
                    rightLabelX = CurrentMenu.X + 420 - RightBadgeOffset + CurrentMenu.WidthOffset - 15
                elseif theme.name == "dark" then
                    rightLabelX = CurrentMenu.X + 420 - RightBadgeOffset + CurrentMenu.WidthOffset - 25
                else
                    rightLabelX = CurrentMenu.X + btnSettings.RightText.X - RightBadgeOffset + CurrentMenu.WidthOffset
                end
                
                RenderText(
                    Style.RightLabel, 
                    rightLabelX, 
                    baseY + btnSettings.RightText.Y, 
                    0, 
                    btnSettings.RightText.Scale, 
                    textR, textG, textB, textA, 
                    2  -- Aligné à droite
                )
            end
        else
            -- Lock badge si désactivé
            if haveRightBadge and VoltreUI.BadgeStyle and VoltreUI.BadgeStyle.Lock then
                local RightBadge = VoltreUI.BadgeStyle.Lock(Active)
                RenderSprite(
                    RightBadge.BadgeDictionary or "main", 
                    RightBadge.BadgeTexture or "", 
                    CurrentMenu.X + btnSettings.RightBadge.X + CurrentMenu.WidthOffset, 
                    baseY + btnSettings.RightBadge.Y, 
                    btnSettings.RightBadge.Width, 
                    btnSettings.RightBadge.Height
                )
            end
        end
        
        -- Texte du bouton (position exacte comme l'original)
        local textX
        if theme.name == "modern" then
            -- Original: X + 11 + LeftBadgeOffset + 15
            textX = CurrentMenu.X + 11 + LeftBadgeOffset + 15
        elseif theme.name == "dark" then
            -- Original: X + (-5) + LeftBadgeOffset + 28 = X + 23 + LeftBadgeOffset
            textX = CurrentMenu.X + 23 + LeftBadgeOffset
        else
            textX = CurrentMenu.X + btnSettings.Text.X + LeftBadgeOffset
        end
        local textY = baseY + btnSettings.Text.Y
        
        RenderText(Label, textX, textY, textFont, btnSettings.Text.Scale, textR, textG, textB, textA)
        
        -- Incrémenter l'offset
        VoltreUI.ItemOffset = VoltreUI.ItemOffset + btnSettings.Rectangle.Height
        
        -- Description
        VoltreUI.ItemsDescription(CurrentMenu, Description, Active)
        
        -- Actions
        if Enabled then
            local mouseY = CurrentMenu.Y + yOffset + CurrentMenu.SubtitleHeight + VoltreUI.ItemOffset - btnSettings.Rectangle.Height
            local Hovered = CurrentMenu.EnableMouse and VoltreUI.IsMouseInBounds(CurrentMenu.X, mouseY, btnSettings.SelectedSprite.Width + CurrentMenu.WidthOffset, height)
            local Selected = (CurrentMenu.Controls.Select.Active or (Hovered and CurrentMenu.Controls.Click.Active)) and Active
            
            if Action.onHovered and Hovered then
                Action.onHovered()
            end
            
            if Action.onActive and Active then
                Action.onActive()
            end
            
            if Selected then
                local Audio = VoltreUI.Settings.Audio
                VoltreUI.PlaySound(Audio[Audio.Use].Select.audioName, Audio[Audio.Use].Select.audioRef)
                
                if Action.onSelected then
                    CreateThread(function()
                        Action.onSelected()
                    end)
                end
                
                if Submenu and Submenu() then
                    VoltreUI.NextMenu = Submenu
                end
            end
        end
    end
    
    VoltreUI.Options = VoltreUI.Options + 1
end

-- Alias pour compatibilité RageUI
VoltreUI.Item.Button = VoltreUI.Button
