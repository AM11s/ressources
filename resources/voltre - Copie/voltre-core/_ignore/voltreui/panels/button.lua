--[[
    VoltreUI Panels - Button
    Panel avec boutons
]]

--- Panel bouton
---@param LeftText string Texte à gauche
---@param RightText string Texte à droite
---@param Index number|nil Index de l'item parent
function VoltreUI.BoutonPanel(LeftText, RightText, Index)
    local menu = VoltreUI._state.CurrentMenu
    if not menu or not menu.Visible then
        return
    end
    
    -- Vérifier si l'item parent est sélectionné
    if Index and VoltreUI._state.Index ~= Index then
        return
    end
    
    -- Position du panel
    local X = menu.X
    local Width = 0.225 + menu.Settings.SizeWidth
    local ItemHeight = 0.038
    local ItemCount = math.min(VoltreUI._state.Options, menu.Settings.TotalItemsPerPage)
    local Y = menu.Y + 0.061 + 0.034 + (ItemHeight * ItemCount) + 0.03
    
    -- Fond du panel
    VoltreUI._drawRect(X, Y, Width, 0.035, 0, 0, 0, 200)
    
    -- Texte gauche
    if LeftText and LeftText ~= "" then
        VoltreUI._drawText(
            LeftText,
            X - (Width / 2) + 0.01,
            Y - 0.012,
            0, 0.28,
            255, 255, 255, 255,
            false, false, false
        )
    end
    
    -- Texte droite
    if RightText and RightText ~= "" then
        VoltreUI._drawText(
            RightText,
            X + (Width / 2) - 0.01,
            Y - 0.012,
            0, 0.28,
            255, 255, 255, 255,
            false, false, false
        )
    end
end
