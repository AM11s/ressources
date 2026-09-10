--[[
    VoltreUI - Checkbox Item
    Case à cocher
]]

-- Styles de checkbox
VoltreUI.CheckboxStyle = {
    Tick = 1,
    Cross = 2
}

-- Textures des checkbox
local CheckboxTextures = {
    "shop_box_blankb",  -- 1: Vide (sélectionné)
    "shop_box_tickb",   -- 2: Coché tick (sélectionné)
    "shop_box_blank",   -- 3: Vide (non sélectionné)
    "shop_box_tick",    -- 4: Coché tick (non sélectionné)
    "shop_box_crossb",  -- 5: Coché cross (sélectionné)
    "shop_box_cross",   -- 6: Coché cross (non sélectionné)
}

---Rendre le style de checkbox
---@param Selected boolean
---@param Checked boolean
---@param Box number
---@param BoxSelect number
local function StyleCheckBox(Selected, Checked, Box, BoxSelect)
    local CurrentMenu = VoltreUI.CurrentMenu
    if not CurrentMenu then return end
    
    local theme = VoltreUI.GetTheme()
    local cbSettings = theme.Checkbox
    local yOffset = theme.name == "dark" and 20 or 0
    
    local texture
    if Checked then
        texture = CheckboxTextures[BoxSelect]
    else
        texture = CheckboxTextures[Selected and 1 or 3]
    end
    
    RenderSprite(
        cbSettings.Dictionary or "main", 
        texture, 
        CurrentMenu.X + cbSettings.X + CurrentMenu.WidthOffset, 
        CurrentMenu.Y + yOffset + cbSettings.Y + CurrentMenu.SubtitleHeight + VoltreUI.ItemOffset, 
        cbSettings.Width, 
        cbSettings.Height
    )
end

---Créer une checkbox
---@param Label string
---@param Description string|nil
---@param Checked boolean
---@param Style table|nil
---@param Actions table|nil
---@return boolean, boolean, boolean, boolean
VoltreUI.Checkbox = function(Label, Description, Checked, Style, Actions)
    local CurrentMenu = VoltreUI.CurrentMenu
    if not CurrentMenu then return false, false, false, Checked end
    if not CurrentMenu() then return false, false, false, Checked end
    
    -- Valeurs par défaut
    Style = Style or {}
    Actions = Actions or {}
    local CheckboxStyle = Style.CheckboxStyle or VoltreUI.CheckboxStyle.Tick
    
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
        
        -- Fond (selon le thème)
        if theme.name == "modern" then
            local x = CurrentMenu.X + 15
            local y = CurrentMenu.Y + btnSettings.SelectedSprite.Y + CurrentMenu.SubtitleHeight + VoltreUI.ItemOffset
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
            local y = CurrentMenu.Y + 20 + btnSettings.SelectedSprite.Y + CurrentMenu.SubtitleHeight + VoltreUI.ItemOffset
            local width = btnSettings.SelectedSprite.Width + CurrentMenu.WidthOffset - 55
            
            local bgColor = Active and theme.Colors.Selection() or theme.Colors.ButtonBackground
            RenderRectangle(x, y, width, height - 1, bgColor.R, bgColor.G, bgColor.B, bgColor.A)
            
        else
            local y = CurrentMenu.Y + btnSettings.SelectedSprite.Y + CurrentMenu.SubtitleHeight + VoltreUI.ItemOffset
            if Active then
                local color = theme.Colors.Selection()
                RenderRectangle(CurrentMenu.X, y, btnSettings.SelectedSprite.Width + CurrentMenu.WidthOffset, height, color.R, color.G, color.B, color.A)
            end
        end
        
        -- Couleur du texte
        local textColor
        if Active then
            textColor = theme.Colors.TextActive
        else
            textColor = theme.Colors.TextInactive
        end
        
        -- Calcul des positions selon le thème
        local textFont = theme.Behavior.ItemTextFont or 0
        local baseY = CurrentMenu.Y + yOffset + CurrentMenu.SubtitleHeight + VoltreUI.ItemOffset
        
        -- Texte
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
        
        -- Checkbox sprite
        local Box, BoxSelect
        if CheckboxStyle == VoltreUI.CheckboxStyle.Tick then
            Box = Active and 1 or 3
            BoxSelect = Active and 2 or 4
        else
            Box = Active and 1 or 3
            BoxSelect = Active and 5 or 6
        end
        
        StyleCheckBox(Active, Checked, Box, BoxSelect)
        
        -- Incrémenter l'offset
        VoltreUI.ItemOffset = VoltreUI.ItemOffset + btnSettings.Rectangle.Height
        
        -- Description
        VoltreUI.ItemsDescription(CurrentMenu, Description, Active)
        
        -- Actions
        Hovered = CurrentMenu.EnableMouse and VoltreUI.IsMouseInBounds(CurrentMenu.X, y, btnSettings.SelectedSprite.Width + CurrentMenu.WidthOffset, height)
        Selected = (CurrentMenu.Controls.Select.Active or (Hovered and CurrentMenu.Controls.Click.Active)) and Active
        
        if Actions.onHovered and Hovered then
            Actions.onHovered()
        end
        
        if Actions.onActive and Active then
            Actions.onActive()
        end
        
        if Selected then
            Checked = not Checked
            local Audio = VoltreUI.Settings.Audio
            VoltreUI.PlaySound(Audio[Audio.Use].Select.audioName, Audio[Audio.Use].Select.audioRef)
            
            if Checked then
                if Actions.onChecked then
                    Actions.onChecked()
                end
            else
                if Actions.onUnChecked then
                    Actions.onUnChecked()
                end
            end

            if Actions.onSelected then
                CreateThread(function()
                    Actions.onSelected(Checked)
                end)
            end
        end
    end
    
    VoltreUI.Options = VoltreUI.Options + 1
    
    return Active, Hovered, Selected, Checked
end

-- Alias
VoltreUI.Item.Checkbox = VoltreUI.Checkbox
