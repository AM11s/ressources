--[[
    VoltreUI Panels - Statistic
    Panels de statistiques
]]

--- Panel de statistique simple
---@param Percent number Pourcentage (0-100)
---@param Text string Texte de la statistique
---@param Index number|nil Index de l'item parent
function VoltreUI.StatisticPanel(Percent, Text, Index)
    local menu = VoltreUI._state.CurrentMenu
    if not menu or not menu.Visible then
        return
    end
    
    -- Vérifier si l'item parent est sélectionné
    if Index and VoltreUI._state.Index ~= Index then
        return
    end
    
    Percent = Percent or 0
    
    -- Position du panel
    local X = menu.X
    local Width = 0.225 + menu.Settings.SizeWidth
    local ItemHeight = 0.038
    local ItemCount = math.min(VoltreUI._state.Options, menu.Settings.TotalItemsPerPage)
    local Y = menu.Y + 0.061 + 0.034 + (ItemHeight * ItemCount) + 0.035
    
    -- Fond du panel
    VoltreUI._drawRect(X, Y, Width, 0.04, 0, 0, 0, 200)
    
    -- Texte
    if Text and Text ~= "" then
        VoltreUI._drawText(
            Text,
            X - (Width / 2) + 0.005,
            Y - 0.012,
            0, 0.28,
            255, 255, 255, 255,
            false, false, false
        )
    end
    
    -- Barre de statistique
    local BarWidth = 0.08
    local BarHeight = 0.008
    local BarX = X + (Width / 2) - 0.05
    
    -- Fond de la barre
    VoltreUI._drawRect(BarX, Y, BarWidth, BarHeight, 50, 50, 50, 255)
    
    -- Progression
    local ProgressWidth = BarWidth * (Percent / 100)
    local ProgressX = BarX - (BarWidth / 2) + (ProgressWidth / 2)
    VoltreUI._drawRect(ProgressX, Y, ProgressWidth, BarHeight, 255, 255, 255, 255)
end

--- Panel de statistique avancé (avec deux barres)
---@param Text string Texte
---@param Percent number Premier pourcentage
---@param RGBA1 table|nil Couleur première barre {R, G, B, A}
---@param Percent2 number|nil Deuxième pourcentage
---@param RGBA2 table|nil Couleur deuxième barre
---@param RGBA3 table|nil Couleur de fond
---@param Index number|nil Index de l'item parent
function VoltreUI.StatisticPanelAdvanced(Text, Percent, RGBA1, Percent2, RGBA2, RGBA3, Index)
    local menu = VoltreUI._state.CurrentMenu
    if not menu or not menu.Visible then
        return
    end
    
    -- Vérifier si l'item parent est sélectionné
    if Index and VoltreUI._state.Index ~= Index then
        return
    end
    
    Percent = Percent or 0
    Percent2 = Percent2 or 0
    RGBA1 = RGBA1 or { R = 255, G = 255, B = 255, A = 255 }
    RGBA2 = RGBA2 or { R = 200, G = 200, B = 200, A = 255 }
    RGBA3 = RGBA3 or { R = 50, G = 50, B = 50, A = 255 }
    
    -- Position du panel
    local X = menu.X
    local Width = 0.225 + menu.Settings.SizeWidth
    local ItemHeight = 0.038
    local ItemCount = math.min(VoltreUI._state.Options, menu.Settings.TotalItemsPerPage)
    local Y = menu.Y + 0.061 + 0.034 + (ItemHeight * ItemCount) + 0.035
    
    -- Fond du panel
    VoltreUI._drawRect(X, Y, Width, 0.04, 0, 0, 0, 200)
    
    -- Texte
    if Text and Text ~= "" then
        VoltreUI._drawText(
            Text,
            X - (Width / 2) + 0.005,
            Y - 0.012,
            0, 0.28,
            255, 255, 255, 255,
            false, false, false
        )
    end
    
    -- Barre de statistique
    local BarWidth = 0.08
    local BarHeight = 0.008
    local BarX = X + (Width / 2) - 0.05
    
    -- Fond de la barre
    VoltreUI._drawRect(BarX, Y, BarWidth, BarHeight, RGBA3.R, RGBA3.G, RGBA3.B, RGBA3.A)
    
    -- Première progression
    local ProgressWidth1 = BarWidth * (Percent / 100)
    local ProgressX1 = BarX - (BarWidth / 2) + (ProgressWidth1 / 2)
    VoltreUI._drawRect(ProgressX1, Y, ProgressWidth1, BarHeight, RGBA1.R, RGBA1.G, RGBA1.B, RGBA1.A)
    
    -- Deuxième progression (superposée)
    if Percent2 > 0 then
        local ProgressWidth2 = BarWidth * (Percent2 / 100)
        local ProgressX2 = BarX - (BarWidth / 2) + (ProgressWidth2 / 2)
        VoltreUI._drawRect(ProgressX2, Y - 0.003, ProgressWidth2, BarHeight * 0.5, RGBA2.R, RGBA2.G, RGBA2.B, RGBA2.A)
    end
end
