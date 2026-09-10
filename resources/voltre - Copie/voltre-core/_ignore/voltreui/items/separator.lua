--[[
    VoltreUI - Separator Item
    Séparateur de menu (titre de section)
]]

---Créer un séparateur (non sélectionnable)
---@param Label string
VoltreUI.Separator = function(Label)
    local CurrentMenu = VoltreUI.CurrentMenu
    if not CurrentMenu then return end
    if not CurrentMenu() then return end
    
    local Option = VoltreUI.Options + 1
    local theme = VoltreUI.GetTheme()
    local btnSettings = theme.Button
    
    -- Vérifier si dans la pagination
    if CurrentMenu.Pagination.Minimum <= Option and CurrentMenu.Pagination.Maximum >= Option then
        VoltreUI.ItemsSafeZone(CurrentMenu)
        
        local height = btnSettings.SelectedSprite.Height
        local yOffset = theme.name == "dark" and 20 or 0
        
        -- Fond du séparateur (selon le thème)
        -- if theme.name == "modern" then
        --     local x = CurrentMenu.X + 15
        --     local y = CurrentMenu.Y + btnSettings.SelectedSprite.Y + CurrentMenu.SubtitleHeight + VoltreUI.ItemOffset
        --     local width = btnSettings.SelectedSprite.Width + CurrentMenu.WidthOffset - 30
            
        --     local btnBg = theme.Colors.ButtonBackground
        --     if type(btnBg) == "function" then btnBg = btnBg() end
        --     if btnBg then
        --         RenderRectangle(x, y, width, height - 3, btnBg.R, btnBg.G, btnBg.B, btnBg.A)
        --     end
        -- elseif theme.name == "dark" then
        --     local x = CurrentMenu.X + 15
        --     local y = CurrentMenu.Y + 20 + btnSettings.SelectedSprite.Y + CurrentMenu.SubtitleHeight + VoltreUI.ItemOffset
        --     local width = btnSettings.SelectedSprite.Width + CurrentMenu.WidthOffset - 55
            
        --     local bgColor = theme.Colors.ButtonBackground
        --     RenderRectangle(x, y, width, height - 1, bgColor.R, bgColor.G, bgColor.B, bgColor.A)
        -- end
        
        -- Texte centré (sur le rectangle, pas le menu entier)
        local textX, textColor, textFont, textScale
        if theme.name == "modern" then
            -- Centré sur le rectangle: X + 15 + (width / 2)
            local rectWidth = btnSettings.SelectedSprite.Width + CurrentMenu.WidthOffset - 30
            textX = CurrentMenu.X + 15 + (rectWidth / 2)
        elseif theme.name == "dark" then
            -- Centré sur le rectangle: X + 15 + (width / 2)
            local rectWidth = btnSettings.SelectedSprite.Width + CurrentMenu.WidthOffset - 55
            textX = CurrentMenu.X + 15 + (rectWidth / 2)
        else
            textX = CurrentMenu.X + (btnSettings.SelectedSprite.Width + CurrentMenu.WidthOffset) / 2
        end
        local textY = CurrentMenu.Y + yOffset + btnSettings.Text.Y + CurrentMenu.SubtitleHeight + VoltreUI.ItemOffset
        textFont = theme.Behavior.ItemTextFont or 0
        
        textColor = theme.Colors.TextInactive
        
        textScale = btnSettings.Text.Scale

        if theme.name == "dark" or theme.name == "modern" then
            textScale += 0.03
            textColor = theme.Colors.TextActive
        end

        RenderText(Label, textX, textY, textFont, textScale, textColor.R, textColor.G, textColor.B, textColor.A, 1)  -- 1 = centré
        
        -- Incrémenter l'offset
        VoltreUI.ItemOffset = VoltreUI.ItemOffset + btnSettings.Rectangle.Height
        
        -- IMPORTANT: Si l'index actuel est sur ce separator, le déplacer
        if CurrentMenu.Index == Option then
            if VoltreUI.LastControl then
                -- On naviguait vers le haut, aller à l'item précédent
                CurrentMenu.Index = Option - 1
                if CurrentMenu.Index < 1 then
                    CurrentMenu.Index = CurrentMenu.Options or 1
                end
            else
                -- On naviguait vers le bas, aller à l'item suivant
                CurrentMenu.Index = Option + 1
            end
        end
    end
    
    VoltreUI.Options = VoltreUI.Options + 1
end

-- Alias
VoltreUI.Item.Separator = VoltreUI.Separator

---Créer une ligne colorée (NON sélectionnable, n'incrémente pas Options)
---@param R number|nil (défaut: couleur serveur)
---@param G number|nil
---@param B number|nil
---@param A number|nil
VoltreUI.Line = function(R, G, B, A)
    local CurrentMenu = VoltreUI.CurrentMenu
    if not CurrentMenu then return end
    if not CurrentMenu() then return end
    
    local theme = VoltreUI.GetTheme()
    local descSettings = theme.Items.Description
    local offsetY = theme.Behavior.GlobalOffsetY or 0
    local padding = theme.Button.Padding or { Left = 0, Right = 0, Top = 0 }
    
    VoltreUI.ItemsSafeZone(CurrentMenu)
    
    -- Utiliser la couleur serveur par défaut (comme l'original)
    local lineR = R or tonumber(voltre.getConvarKey("r")) or 255
    local lineG = G or tonumber(voltre.getConvarKey("g")) or 255
    local lineB = B or tonumber(voltre.getConvarKey("b")) or 255
    local lineA = A or 255
    
    -- Position et dimensions comme l'original
    local lineX = CurrentMenu.X + descSettings.Bar.Y + 60 + CurrentMenu.SubtitleHeight + padding.Left
    local lineY = CurrentMenu.Y + descSettings.Bar.Y - 0.5 + CurrentMenu.SubtitleHeight + VoltreUI.ItemOffset + offsetY
    local lineWidth = descSettings.Bar.Width - 120 + CurrentMenu.WidthOffset
    local lineHeight = descSettings.Bar.Height - 0.7
    
    RenderRectangle(lineX, lineY, lineWidth, lineHeight, lineR, lineG, lineB, lineA)
    
    -- Incrémenter l'offset (mais PAS Options - la ligne n'est pas un item)
    VoltreUI.ItemOffset = VoltreUI.ItemOffset + 10 + descSettings.Bar.Height
    
    -- NOTE: On n'incrémente PAS VoltreUI.Options car Line n'est pas sélectionnable
end

-- Alias
VoltreUI.Item.Line = VoltreUI.Line
