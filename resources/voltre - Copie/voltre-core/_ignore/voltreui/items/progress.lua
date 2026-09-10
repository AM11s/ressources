--[[
    VoltreUI - Progress Item (Slider)
    Barre de progression avec contrôle gauche/droite
]]

---Créer une barre de progression
---@param Label string
---@param ProgressStart number Valeur actuelle
---@param ProgressMax number Valeur maximale
---@param Description string|nil
---@param Counter boolean|nil Afficher le compteur (ex: 5/10)
---@param Enabled boolean|nil
---@param Actions table|nil { onProgressChange = function(value), onSelected = function(value) }
---@return boolean Active, boolean Hovered, boolean Selected, number Value
VoltreUI.Progress = function(Label, ProgressStart, ProgressMax, Description, Counter, Enabled, Actions)
    local CurrentMenu = VoltreUI.CurrentMenu
    if not CurrentMenu then return false, false, false, ProgressStart end
    if not CurrentMenu() then return false, false, false, ProgressStart end
    
    -- Valeurs par défaut
    Enabled = Enabled ~= false
    Actions = Actions or {}
    ProgressStart = ProgressStart or 0
    ProgressMax = ProgressMax or 100
    
    local Option = VoltreUI.Options + 1
    local theme = VoltreUI.GetTheme()
    local btnSettings = theme.Button
    
    local Active = false
    local Hovered = false
    local Selected = false
    local ProgressHovered = false
    
    -- Créer la table des items
    local Items = {}
    for i = 1, ProgressMax do
        table.insert(Items, i)
    end
    
    -- Settings selon le thème
    local SettingsProgress
    if theme.name == "dark" then
        SettingsProgress = {
            Background = { X = 23, Y = 30, Width = 365, Height = 14 },
            Bar = { X = 25, Y = 32, Width = 361, Height = 10 },
            Height = 50,
            YOffset = 20
        }
    elseif theme.name == "modern" then
        SettingsProgress = {
            Background = { X = 26, Y = 30, Width = 381, Height = 14 },
            Bar = { X = 28, Y = 32, Width = 377, Height = 10 },
            Height = 50,
            YOffset = 0
        }
    else
        SettingsProgress = {
            Background = { X = 8, Y = 28, Width = 407, Height = 14 },
            Bar = { X = 10, Y = 30, Width = 403, Height = 10 },
            Height = 50,
            YOffset = 0
        }
    end
    
    -- Vérifier si dans la pagination
    if CurrentMenu.Pagination.Minimum <= Option and CurrentMenu.Pagination.Maximum >= Option then
        Active = CurrentMenu.Index == Option
        
        VoltreUI.ItemsSafeZone(CurrentMenu)
        
        local yOffset = SettingsProgress.YOffset or 0
        local height = btnSettings.SelectedSprite.Height
        
        -- Fond du bouton (selon le thème)
        if theme.name == "modern" then
            local x = CurrentMenu.X + 15
            local y = CurrentMenu.Y + btnSettings.SelectedSprite.Y + CurrentMenu.SubtitleHeight + VoltreUI.ItemOffset
            local width = btnSettings.SelectedSprite.Width + CurrentMenu.WidthOffset - 30
            
            local btnBg = theme.Colors.ButtonBackground
            if btnBg then
                if type(btnBg) == "function" then btnBg = btnBg() end
                RenderRectangle(x, y, width, SettingsProgress.Height - 3, btnBg.R, btnBg.G, btnBg.B, btnBg.A)
            end
            
            if Active and theme.Behavior.SideBar then
                local color = theme.Colors.Selection()
                RenderRectangle(x, y, btnSettings.SelectedSprite.Width / 100, SettingsProgress.Height - 3, color.R, color.G, color.B, color.A)
            end
            
        elseif theme.name == "dark" then
            local x = CurrentMenu.X + 15
            local y = CurrentMenu.Y + yOffset + btnSettings.SelectedSprite.Y + CurrentMenu.SubtitleHeight + VoltreUI.ItemOffset
            local width = btnSettings.SelectedSprite.Width + CurrentMenu.WidthOffset - 55
            
            local bgColor = Active and theme.Colors.Selection() or theme.Colors.ButtonBackground
            RenderRectangle(x, y, width, SettingsProgress.Height - 1, bgColor.R, bgColor.G, bgColor.B, bgColor.A)
            
        else
            -- Classic
            if Active then
                local color = theme.Colors.Selection()
                RenderRectangle(
                    CurrentMenu.X, 
                    CurrentMenu.Y + btnSettings.SelectedSprite.Y + CurrentMenu.SubtitleHeight + VoltreUI.ItemOffset, 
                    btnSettings.SelectedSprite.Width + CurrentMenu.WidthOffset, 
                    SettingsProgress.Height,
                    color.R, color.G, color.B, color.A
                )
            end
        end
        
        -- Vérifier si souris sur la barre
        if Active and CurrentMenu.EnableMouse then
            ProgressHovered = VoltreUI.IsMouseInBounds(
                CurrentMenu.X + SettingsProgress.Bar.X + (CurrentMenu.SafeZoneSize and CurrentMenu.SafeZoneSize.X or 0), 
                CurrentMenu.Y + SettingsProgress.Bar.Y + yOffset + (CurrentMenu.SafeZoneSize and CurrentMenu.SafeZoneSize.Y or 0) + CurrentMenu.SubtitleHeight + VoltreUI.ItemOffset - 12, 
                SettingsProgress.Bar.Width + CurrentMenu.WidthOffset, 
                SettingsProgress.Bar.Height + 24
            )
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
        
        -- Texte de progression
        local ProgressText = Counter and (ProgressStart .. "/" .. #Items) or tostring(ProgressStart)
        
        -- Texte du label
        local textX
        if theme.name == "modern" then
            textX = CurrentMenu.X + 11 + 15
        elseif theme.name == "dark" then
            textX = CurrentMenu.X + 23
        else
            textX = CurrentMenu.X + btnSettings.Text.X
        end
        local textY = CurrentMenu.Y + yOffset + btnSettings.Text.Y + CurrentMenu.SubtitleHeight + VoltreUI.ItemOffset
        local textFont = theme.Behavior.ItemTextFont or 0
        
        RenderText(Label, textX, textY, textFont, btnSettings.Text.Scale, textColor.R, textColor.G, textColor.B, textColor.A)
        
        -- Texte de la valeur (à droite)
        local rightTextX
        if theme.name == "modern" then
            rightTextX = CurrentMenu.X + 420 + CurrentMenu.WidthOffset - 15
        elseif theme.name == "dark" then
            rightTextX = CurrentMenu.X + 420 + CurrentMenu.WidthOffset - 25
        else
            rightTextX = CurrentMenu.X + btnSettings.RightText.X + CurrentMenu.WidthOffset
        end
        
        RenderText(ProgressText, rightTextX, textY, 0, btnSettings.RightText.Scale, textColor.R, textColor.G, textColor.B, textColor.A, 2)
        
        -- Barre de fond
        local barBgColor
        if theme.name == "dark" then
            barBgColor = { R = 60, G = 60, B = 60, A = 255 }
        else 
            local barBg = theme.Colors.MenuBackground
            if type(barBg) == "function" then barBg = barBg() end
            barBgColor = barBg
        end
        
        local barTotalWidth = SettingsProgress.Background.Width + CurrentMenu.WidthOffset
        local barFillWidth = SettingsProgress.Bar.Width + CurrentMenu.WidthOffset
        
        RenderRectangle(
            CurrentMenu.X + SettingsProgress.Background.X, 
            CurrentMenu.Y + yOffset + SettingsProgress.Background.Y + CurrentMenu.SubtitleHeight + VoltreUI.ItemOffset, 
            barTotalWidth, 
            SettingsProgress.Background.Height, 
            barBgColor.R, barBgColor.G, barBgColor.B, barBgColor.A
        )
        
        -- Barre de progression
        local progressWidth = (ProgressStart / #Items) * barFillWidth
        local selColor = theme.Colors.Selection()
        local barColor = { R = selColor.R, G = selColor.G, B = selColor.B, A = 255 }
        
        RenderRectangle(
            CurrentMenu.X + SettingsProgress.Bar.X, 
            CurrentMenu.Y + yOffset + SettingsProgress.Bar.Y + CurrentMenu.SubtitleHeight + VoltreUI.ItemOffset, 
            progressWidth, 
            SettingsProgress.Bar.Height, 
            barColor.R, barColor.G, barColor.B, barColor.A
        )
        
        -- Incrémenter l'offset (hauteur spéciale pour progress)
        VoltreUI.ItemOffset = VoltreUI.ItemOffset + SettingsProgress.Height
        
        -- Description
        VoltreUI.ItemsDescription(CurrentMenu, Description, Active)
        
        -- Actions
        if Enabled then
            -- Mouse hover
            if CurrentMenu.EnableMouse then
                Hovered = VoltreUI.IsMouseInBounds(
                    CurrentMenu.X, 
                    CurrentMenu.Y + CurrentMenu.SubtitleHeight + VoltreUI.ItemOffset - SettingsProgress.Height, 
                    btnSettings.SelectedSprite.Width + CurrentMenu.WidthOffset, 
                    SettingsProgress.Height
                )
            end
            
            -- Navigation gauche/droite
            if Active then
                if CurrentMenu.Controls.Left.Active and not CurrentMenu.Controls.Right.Active then
                    ProgressStart = ProgressStart - 1
                    if ProgressStart < 0 then
                        ProgressStart = #Items
                    end
                    
                    local Audio = VoltreUI.Settings.Audio
                    VoltreUI.PlaySound(Audio[Audio.Use].LeftRight.audioName, Audio[Audio.Use].LeftRight.audioRef)
                    
                    if Actions.onProgressChange then
                        Actions.onProgressChange(ProgressStart)
                    end
                    
                elseif CurrentMenu.Controls.Right.Active and not CurrentMenu.Controls.Left.Active then
                    ProgressStart = ProgressStart + 1
                    if ProgressStart > #Items then
                        ProgressStart = 0
                    end
                    
                    local Audio = VoltreUI.Settings.Audio
                    VoltreUI.PlaySound(Audio[Audio.Use].LeftRight.audioName, Audio[Audio.Use].LeftRight.audioRef)
                    
                    if Actions.onProgressChange then
                        Actions.onProgressChange(ProgressStart)
                    end
                end
                
                -- Clic sur la barre
                if ProgressHovered and CurrentMenu.Controls.Click.Active then
                    local Progress = (math.floor(GetControlNormal(0, 239) * 1920) - (CurrentMenu.SafeZoneSize and CurrentMenu.SafeZoneSize.X or 0)) - SettingsProgress.Bar.X
                    local Barsize = SettingsProgress.Bar.Width + CurrentMenu.WidthOffset
                    
                    if Progress > Barsize then
                        Progress = Barsize
                    elseif Progress < 0 then
                        Progress = 0
                    end
                    
                    ProgressStart = math.floor(#Items * (Progress / Barsize))
                    
                    if ProgressStart > #Items or ProgressStart < 0 then
                        ProgressStart = 0
                    end
                    
                    if Actions.onProgressChange then
                        Actions.onProgressChange(ProgressStart)
                    end
                end
                
                -- Sélection
                Selected = (CurrentMenu.Controls.Select.Active or (Hovered and CurrentMenu.Controls.Click.Active and not ProgressHovered))
                if Selected then
                    local Audio = VoltreUI.Settings.Audio
                    VoltreUI.PlaySound(Audio[Audio.Use].Select.audioName, Audio[Audio.Use].Select.audioRef)
                    
                    if Actions.onSelected then
                        CreateThread(function()
                            Actions.onSelected(ProgressStart)
                        end)
                    end
                end
            end
        end
    end
    
    VoltreUI.Options = VoltreUI.Options + 1
    
    return Active, Hovered, Selected, ProgressStart
end

-- Alias
VoltreUI.Item.Progress = VoltreUI.Progress
VoltreUI.Slider = VoltreUI.Progress
VoltreUI.Item.Slider = VoltreUI.Progress
