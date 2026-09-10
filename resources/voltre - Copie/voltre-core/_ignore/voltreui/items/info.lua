--[[
    VoltreUI - Info Panel
    Panneau d'information affiché à côté du menu
]]

---Afficher un panneau d'information à côté du menu
---@param Title string|nil Titre du panneau
---@param RightText table|nil Textes alignés à gauche (table de strings)
---@param LeftText table|nil Textes alignés à droite (table de strings)
VoltreUI.Info = function(Title, RightText, LeftText)
    local CurrentMenu = VoltreUI.CurrentMenu
    if not CurrentMenu then return end
    
    local theme = VoltreUI.GetTheme()
    RightText = RightText or {}
    LeftText = LeftText or {}
    
    local LineCount = #RightText >= #LeftText and #RightText or #LeftText
    
    -- Position du panneau (à droite du menu)
    local baseX = CurrentMenu.X + 431 + CurrentMenu.WidthOffset + 10
    local baseY = CurrentMenu.Y
    
    -- Couleur de fond
    local bgColor = theme.Colors.MenuBackground
    if type(bgColor) == "function" then bgColor = bgColor() end
    
    -- Calculer la hauteur
    local panelHeight = Title and (50 + (LineCount * 20)) or ((LineCount + 1) * 20)
    
    -- Fond du panneau
    RenderRectangle(baseX, baseY, 432, panelHeight, bgColor.R, bgColor.G, bgColor.B, bgColor.A or 200)
    
    -- Titre
    if Title then
        RenderText("~h~" .. Title .. "~s~", baseX + 10, baseY + 7, 0, 0.30, 255, 255, 255, 255, 0)
    end
    
    -- Texte gauche (RightText dans l'original = côté gauche du panneau)
    if RightText and #RightText > 0 then
        local textY = Title and (baseY + 37) or (baseY + 7)
        RenderText(table.concat(RightText, "\n"), baseX + 10, textY, 0, 0.25, 255, 255, 255, 255, 0)
    end
    
    -- Texte droite (LeftText dans l'original = côté droit du panneau)
    if LeftText and #LeftText > 0 then
        local textY = Title and (baseY + 37) or (baseY + 7)
        RenderText(table.concat(LeftText, "\n"), baseX + 422, textY, 0, 0.25, 255, 255, 255, 255, 2)
    end
end

-- Alias
VoltreUI.Panel.Info = VoltreUI.Info

---Afficher un panneau de statistiques
---@param Stats table Table de { label = string, value = number (0-100) }
function VoltreUI.StatsPanel(Stats)
    local CurrentMenu = VoltreUI.CurrentMenu
    if not CurrentMenu then return end
    
    local theme = VoltreUI.GetTheme()
    Stats = Stats or {}
    
    -- Position du panneau
    local baseX = CurrentMenu.X + 431 + CurrentMenu.WidthOffset + 10
    local baseY = CurrentMenu.Y
    
    -- Couleur de fond
    local bgColor = theme.Colors.MenuBackground
    if type(bgColor) == "function" then bgColor = bgColor() end
    local barBgColor = { R = 100, G = 100, B = 100, A = 255 }
    local barColor = theme.Colors.Selection and theme.Colors.Selection() or { R = 255, G = 255, B = 255, A = 255 }
    
    -- Calculer la hauteur
    local panelHeight = 10 + (#Stats * 30)
    
    -- Fond du panneau
    RenderRectangle(baseX, baseY, 200, panelHeight, bgColor.R, bgColor.G, bgColor.B, bgColor.A or 200)
    
    -- Afficher chaque stat
    for i, stat in ipairs(Stats) do
        local y = baseY + 5 + ((i - 1) * 30)
        
        -- Label
        RenderText(stat.label or "", baseX + 10, y, 0, 0.25, 255, 255, 255, 255, 0)
        
        -- Barre de fond
        RenderRectangle(baseX + 10, y + 18, 180, 8, barBgColor.R, barBgColor.G, barBgColor.B, barBgColor.A)
        
        -- Barre de valeur
        local value = math.min(100, math.max(0, stat.value or 0))
        local barWidth = (value / 100) * 180
        RenderRectangle(baseX + 10, y + 18, barWidth, 8, barColor.R, barColor.G, barColor.B, barColor.A)
    end
end

-- Alias
VoltreUI.Panel.Stats = VoltreUI.StatsPanel

---Afficher un panneau de couleur
---@param Title string|nil
---@param Colors table Table de couleurs { R, G, B }
---@param SelectedIndex number Index de la couleur sélectionnée
---@param Columns number|nil Nombre de colonnes (défaut: 8)
function VoltreUI.ColorPanel(Title, Colors, SelectedIndex, Columns)
    local CurrentMenu = VoltreUI.CurrentMenu
    if not CurrentMenu then return end
    
    local theme = VoltreUI.GetTheme()
    Colors = Colors or {}
    Columns = Columns or 8
    SelectedIndex = SelectedIndex or 1
    
    -- Position du panneau
    local baseX = CurrentMenu.X + 431 + CurrentMenu.WidthOffset + 10
    local baseY = CurrentMenu.Y
    
    -- Couleur de fond
    local bgColor = theme.Colors.MenuBackground
    if type(bgColor) == "function" then bgColor = bgColor() end
    
    -- Calculer les dimensions
    local colorSize = 25
    local padding = 5
    local rows = math.ceil(#Colors / Columns)
    local panelWidth = (Columns * (colorSize + padding)) + padding
    local panelHeight = (Title and 30 or 0) + (rows * (colorSize + padding)) + padding
    
    -- Fond du panneau
    RenderRectangle(baseX, baseY, panelWidth, panelHeight, bgColor.R, bgColor.G, bgColor.B, bgColor.A or 200)
    
    -- Titre
    local startY = baseY + padding
    if Title then 
        RenderText(Title, baseX + panelWidth / 2, startY, 0, 0.25, 255, 255, 255, 255, 1)
        startY = startY + 25
    end
    
    -- Afficher les couleurs
    for i, color in ipairs(Colors) do
        local col = ((i - 1) % Columns)
        local row = math.floor((i - 1) / Columns)
        
        local x = baseX + padding + (col * (colorSize + padding))
        local y = startY + (row * (colorSize + padding))
        
        -- Couleur
        local r = color.R or color[1] or 255
        local g = color.G or color[2] or 255
        local b = color.B or color[3] or 255
        
        RenderRectangle(x, y, colorSize, colorSize, r, g, b, 255)
        
        -- Bordure si sélectionné
        if i == SelectedIndex then
            -- Bordure blanche
            RenderRectangle(x - 2, y - 2, colorSize + 4, 2, 255, 255, 255, 255)
            RenderRectangle(x - 2, y + colorSize, colorSize + 4, 2, 255, 255, 255, 255)
            RenderRectangle(x - 2, y, 2, colorSize, 255, 255, 255, 255)
            RenderRectangle(x + colorSize, y, 2, colorSize, 255, 255, 255, 255)
        end
    end
end

-- Alias
VoltreUI.Panel.Color = VoltreUI.ColorPanel
