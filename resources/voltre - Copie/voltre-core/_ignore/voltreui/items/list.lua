--[[
    VoltreUI - List Item
    Liste déroulante
]]

---Créer une liste
---@param Label string
---@param Items table
---@param Index number
---@param Description string|nil
---@param Style table|nil
---@param Enabled boolean|nil
---@param Actions table|nil
---@param Submenu table|nil
---@return boolean, boolean, boolean, number
VoltreUI.List =function(Label, Items, Index, Description, Style, Enabled, Actions, Submenu)
    local CurrentMenu = VoltreUI.CurrentMenu
    if not CurrentMenu then return false, false, false, Index end
    if not CurrentMenu() then return false, false, false, Index end
    
    -- Valeurs par défaut
    Items = Items or {}
    Index = Index or 1
    Style = Style or {}
    Enabled = Enabled ~= false
    Actions = Actions or {}
    
    local Option = VoltreUI.Options + 1
    local theme = VoltreUI.GetTheme()
    local btnSettings = theme.Button
    local offsetY = theme.Behavior.GlobalOffsetY or 0
    
    local Active = false
    local Hovered = false
    local Selected = false
    
    -- Vérifier si dans la pagination
    if CurrentMenu.Pagination.Minimum <= Option and CurrentMenu.Pagination.Maximum >= Option then
        Active = CurrentMenu.Index == Option
        
        VoltreUI.ItemsSafeZone(CurrentMenu)
        
        local height = btnSettings.SelectedSprite.Height
        local yOffset = theme.name == "dark" and 20 or 0
        local y
        
        -- Fond (selon le thème)
        if theme.name == "modern" then
            local x = CurrentMenu.X + 15
            y = CurrentMenu.Y + btnSettings.SelectedSprite.Y + CurrentMenu.SubtitleHeight + VoltreUI.ItemOffset
            local width = btnSettings.SelectedSprite.Width + CurrentMenu.WidthOffset - 30
            
            local btnBg = theme.Colors.ButtonBackground
            if type(btnBg) == "function" then btnBg = btnBg() end
            if btnBg then
                RenderRectangle(x, y, width, height - 3, btnBg.R, btnBg.G, btnBg.B, btnBg.A)
            end
            
            -- Animation de balayage
            if Active and theme.Behavior.SweepAnimation and VoltreUI.Animation then
                local anim = VoltreUI.Animation
                if anim.canAnimate and anim.alpha > 0 then
                    local sweep = theme.Colors.SweepColor
                    RenderRectangle(x + anim.progressValue, y, width - 270, height - 3, sweep.R, sweep.G, sweep.B, anim.alpha)
                end
            end
            
            if Active and theme.Behavior.SideBar then
                local color = theme.Colors.Selection()
                RenderRectangle(x, y, btnSettings.SelectedSprite.Width / 100, height - 3, color.R, color.G, color.B, color.A)
            end
            
        elseif theme.name == "dark" then
            local x = CurrentMenu.X + 15
            y = CurrentMenu.Y + 20 + btnSettings.SelectedSprite.Y + CurrentMenu.SubtitleHeight + VoltreUI.ItemOffset
            local width = btnSettings.SelectedSprite.Width + CurrentMenu.WidthOffset - 55
            
            local bgColor = Active and theme.Colors.Selection() or theme.Colors.ButtonBackground
            RenderRectangle(x, y, width, height - 1, bgColor.R, bgColor.G, bgColor.B, bgColor.A)
            
        else
            y = CurrentMenu.Y + btnSettings.SelectedSprite.Y + CurrentMenu.SubtitleHeight + VoltreUI.ItemOffset
            if Active then
                local color = theme.Colors.Selection()
                RenderRectangle(CurrentMenu.X, y, btnSettings.SelectedSprite.Width + CurrentMenu.WidthOffset, height, color.R, color.G, color.B, color.A)
            end
        end
        
        -- Couleur du texte
        local textColor
        if not Enabled then
            textColor = theme.Colors.TextDisabled
        elseif Active then
            textColor = theme.Colors.TextActive
        else
            textColor = theme.Colors.TextInactive
        end
        
        -- Calcul des positions selon le thème
        local textFont = theme.Behavior.ItemTextFont or 0
        local baseY = CurrentMenu.Y + yOffset + CurrentMenu.SubtitleHeight + VoltreUI.ItemOffset
        
        -- Texte du label
        local textX
        if theme.name == "modern" then
            textX = CurrentMenu.X + 11 + 15  -- Original: X + 11 + 15
        elseif theme.name == "dark" then
            textX = CurrentMenu.X + 23  -- Original: X + (-5) + 28
        else
            textX = CurrentMenu.X + btnSettings.Text.X
        end
        local textY = baseY + btnSettings.Text.Y
        
        RenderText(Label, textX, textY, textFont, btnSettings.Text.Scale, textColor.R, textColor.G, textColor.B, textColor.A)
        
        -- Valeur actuelle de la liste
        local currentItem = Items[Index]
        if type(currentItem) == "table" then
            currentItem = currentItem.Name or currentItem.name or tostring(currentItem)
        else
            currentItem = tostring(currentItem or "")
        end
        
        -- Texte de la liste avec flèches intégrées
        local ListText = string.format("← %s →", currentItem)
        
        -- Position du texte de liste (aligné à droite)
        local listTextX
        if theme.name == "modern" then
            listTextX = CurrentMenu.X + 420 + CurrentMenu.WidthOffset - 15
        elseif theme.name == "dark" then
            listTextX = CurrentMenu.X + 420 + CurrentMenu.WidthOffset - 25
        else
            listTextX = CurrentMenu.X + btnSettings.RightText.X + CurrentMenu.WidthOffset
        end
        
        if Enabled then
            RenderText(
                ListText, 
                listTextX, 
                textY, 
                textFont, 
                btnSettings.RightText.Scale, 
                textColor.R, textColor.G, textColor.B, textColor.A, 
                2  -- Aligné à droite
            )
        else
            RenderText(
                ListText, 
                listTextX, 
                textY, 
                textFont, 
                btnSettings.RightText.Scale, 
                textColor.R, textColor.G, textColor.B, textColor.A, 
                2
            )
        end
        
        -- Incrémenter l'offset
        VoltreUI.ItemOffset = VoltreUI.ItemOffset + btnSettings.Rectangle.Height
        
        -- Description
        VoltreUI.ItemsDescription(CurrentMenu, Description, Active)
        
        -- Actions
        if Enabled then
            Hovered = CurrentMenu.EnableMouse and VoltreUI.IsMouseInBounds(CurrentMenu.X, y, btnSettings.SelectedSprite.Width + CurrentMenu.WidthOffset, height)
            Selected = (CurrentMenu.Controls.Select.Active or (Hovered and CurrentMenu.Controls.Click.Active)) and Active
            
            if Actions.onHovered and Hovered then
                Actions.onHovered()
            end
            
            if Actions.onActive and Active then
                Actions.onActive()
            end
            
            -- Navigation gauche/droite
            if Active then
                if CurrentMenu.Controls.Left.Active then
                    Index = Index - 1
                    if Index < 1 then
                        Index = #Items
                    end
                    
                    local Audio = VoltreUI.Settings.Audio
                    VoltreUI.PlaySound(Audio[Audio.Use].LeftRight.audioName, Audio[Audio.Use].LeftRight.audioRef)
                    
                    if Actions.onListChange then
                        Actions.onListChange(Index, Items[Index])
                    end
                end
                
                if CurrentMenu.Controls.Right.Active then
                    Index = Index + 1
                    if Index > #Items then
                        Index = 1
                    end
                    
                    local Audio = VoltreUI.Settings.Audio
                    VoltreUI.PlaySound(Audio[Audio.Use].LeftRight.audioName, Audio[Audio.Use].LeftRight.audioRef)
                    
                    if Actions.onListChange then
                        Actions.onListChange(Index, Items[Index])
                    end
                end
            end
            
            if Selected then
                local Audio = VoltreUI.Settings.Audio
                VoltreUI.PlaySound(Audio[Audio.Use].Select.audioName, Audio[Audio.Use].Select.audioRef)
                
                if Actions.onSelected then
                    CreateThread(function()
                        Actions.onSelected(Index, Items[Index])
                    end)
                end
                
                if Submenu and Submenu() then
                    VoltreUI.NextMenu = Submenu
                end
            end
        end
    end
    
    VoltreUI.Options = VoltreUI.Options + 1
    
    return Active, Hovered, Selected, Index
end

-- Alias
VoltreUI.Item.List = VoltreUI.List
