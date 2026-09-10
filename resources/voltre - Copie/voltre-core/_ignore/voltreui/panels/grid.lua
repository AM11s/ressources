--[[
    VoltreUI Panels - Grid
    Panels de grille (2D, horizontal, vertical)
]]

--- Panel grille 2D
---@param StartedX number Position X initiale (0-1)
---@param StartedY number Position Y initiale (0-1)
---@param TopText string|nil Texte en haut
---@param BottomText string|nil Texte en bas
---@param LeftText string|nil Texte à gauche
---@param RightText string|nil Texte à droite
---@param Action function|nil Callback(X, Y)
---@param Index number|nil Index de l'item parent
---@return number X, number Y
function VoltreUI.Grid(StartedX, StartedY, TopText, BottomText, LeftText, RightText, Action, Index)
    local menu = VoltreUI._state.CurrentMenu
    if not menu or not menu.Visible then
        return StartedX, StartedY
    end
    
    -- Vérifier si l'item parent est sélectionné
    if Index and VoltreUI._state.Index ~= Index then
        return StartedX, StartedY
    end
    
    StartedX = StartedX or 0.5
    StartedY = StartedY or 0.5
    
    -- Position du panel
    local X = menu.X
    local Width = 0.225 + menu.Settings.SizeWidth
    local ItemHeight = 0.038
    local ItemCount = math.min(VoltreUI._state.Options, menu.Settings.TotalItemsPerPage)
    local Y = menu.Y + 0.061 + 0.034 + (ItemHeight * ItemCount) + 0.08
    
    -- Taille de la grille
    local GridSize = 0.12
    
    -- Fond du panel
    VoltreUI._drawRect(X, Y, Width, GridSize + 0.04, 0, 0, 0, 200)
    
    -- Grille
    VoltreUI._drawRect(X, Y, GridSize, GridSize, 50, 50, 50, 255)
    
    -- Lignes de la grille
    VoltreUI._drawRect(X, Y, 0.001, GridSize, 100, 100, 100, 255) -- Verticale
    VoltreUI._drawRect(X, Y, GridSize, 0.001, 100, 100, 100, 255) -- Horizontale
    
    -- Curseur
    local CursorX = X - (GridSize / 2) + (GridSize * StartedX)
    local CursorY = Y - (GridSize / 2) + (GridSize * StartedY)
    VoltreUI._drawRect(CursorX, CursorY, 0.01, 0.01, 255, 255, 255, 255)
    
    -- Textes
    if TopText then
        VoltreUI._drawText(TopText, X, Y - (GridSize / 2) - 0.015, 0, 0.25, 255, 255, 255, 255, true, false, false)
    end
    if BottomText then
        VoltreUI._drawText(BottomText, X, Y + (GridSize / 2) + 0.005, 0, 0.25, 255, 255, 255, 255, true, false, false)
    end
    if LeftText then
        VoltreUI._drawText(LeftText, X - (GridSize / 2) - 0.02, Y - 0.008, 0, 0.25, 255, 255, 255, 255, true, false, false)
    end
    if RightText then
        VoltreUI._drawText(RightText, X + (GridSize / 2) + 0.02, Y - 0.008, 0, 0.25, 255, 255, 255, 255, true, false, false)
    end
    
    -- Navigation
    local Step = 0.01
    local Changed = false
    
    if VoltreUI._isPressed(VoltreUI._controls.Left) then
        StartedX = math.max(0, StartedX - Step)
        Changed = true
    end
    if VoltreUI._isPressed(VoltreUI._controls.Right) then
        StartedX = math.min(1, StartedX + Step)
        Changed = true
    end
    if VoltreUI._isPressed(VoltreUI._controls.Up) then
        StartedY = math.max(0, StartedY - Step)
        Changed = true
    end
    if VoltreUI._isPressed(VoltreUI._controls.Down) then
        StartedY = math.min(1, StartedY + Step)
        Changed = true
    end
    
    if Changed and Action then
        Action(StartedX, StartedY)
    end
    
    return StartedX, StartedY
end

--- Panel grille horizontal uniquement
---@param StartedX number Position X initiale (0-1)
---@param LeftText string|nil Texte à gauche
---@param RightText string|nil Texte à droite
---@param Action function|nil Callback(X)
---@param Index number|nil Index de l'item parent
---@return number X
function VoltreUI.GridHorizontal(StartedX, LeftText, RightText, Action, Index)
    local menu = VoltreUI._state.CurrentMenu
    if not menu or not menu.Visible then
        return StartedX
    end
    
    if Index and VoltreUI._state.Index ~= Index then
        return StartedX
    end
    
    StartedX = StartedX or 0.5
    
    -- Position du panel
    local X = menu.X
    local Width = 0.225 + menu.Settings.SizeWidth
    local ItemHeight = 0.038
    local ItemCount = math.min(VoltreUI._state.Options, menu.Settings.TotalItemsPerPage)
    local Y = menu.Y + 0.061 + 0.034 + (ItemHeight * ItemCount) + 0.04
    
    -- Taille de la barre
    local BarWidth = 0.15
    local BarHeight = 0.015
    
    -- Fond du panel
    VoltreUI._drawRect(X, Y, Width, 0.05, 0, 0, 0, 200)
    
    -- Barre
    VoltreUI._drawRect(X, Y, BarWidth, BarHeight, 50, 50, 50, 255)
    
    -- Curseur
    local CursorX = X - (BarWidth / 2) + (BarWidth * StartedX)
    VoltreUI._drawRect(CursorX, Y, 0.008, BarHeight + 0.005, 255, 255, 255, 255)
    
    -- Textes
    if LeftText then
        VoltreUI._drawText(LeftText, X - (BarWidth / 2) - 0.02, Y - 0.008, 0, 0.25, 255, 255, 255, 255, true, false, false)
    end
    if RightText then
        VoltreUI._drawText(RightText, X + (BarWidth / 2) + 0.02, Y - 0.008, 0, 0.25, 255, 255, 255, 255, true, false, false)
    end
    
    -- Navigation
    local Step = 0.01
    local Changed = false
    
    if VoltreUI._isPressed(VoltreUI._controls.Left) then
        StartedX = math.max(0, StartedX - Step)
        Changed = true
    end
    if VoltreUI._isPressed(VoltreUI._controls.Right) then
        StartedX = math.min(1, StartedX + Step)
        Changed = true
    end
    
    if Changed and Action then
        Action(StartedX)
    end
    
    return StartedX
end

--- Panel grille vertical uniquement
---@param StartedY number Position Y initiale (0-1)
---@param TopText string|nil Texte en haut
---@param BottomText string|nil Texte en bas
---@param Action function|nil Callback(Y)
---@param Index number|nil Index de l'item parent
---@return number Y
function VoltreUI.GridVertical(StartedY, TopText, BottomText, Action, Index)
    local menu = VoltreUI._state.CurrentMenu
    if not menu or not menu.Visible then
        return StartedY
    end
    
    if Index and VoltreUI._state.Index ~= Index then
        return StartedY
    end
    
    StartedY = StartedY or 0.5
    
    -- Position du panel
    local X = menu.X
    local Width = 0.225 + menu.Settings.SizeWidth
    local ItemHeight = 0.038
    local ItemCount = math.min(VoltreUI._state.Options, menu.Settings.TotalItemsPerPage)
    local Y = menu.Y + 0.061 + 0.034 + (ItemHeight * ItemCount) + 0.06
    
    -- Taille de la barre
    local BarWidth = 0.015
    local BarHeight = 0.08
    
    -- Fond du panel
    VoltreUI._drawRect(X, Y, Width, BarHeight + 0.03, 0, 0, 0, 200)
    
    -- Barre
    VoltreUI._drawRect(X, Y, BarWidth, BarHeight, 50, 50, 50, 255)
    
    -- Curseur
    local CursorY = Y - (BarHeight / 2) + (BarHeight * StartedY)
    VoltreUI._drawRect(X, CursorY, BarWidth + 0.005, 0.008, 255, 255, 255, 255)
    
    -- Textes
    if TopText then
        VoltreUI._drawText(TopText, X, Y - (BarHeight / 2) - 0.012, 0, 0.25, 255, 255, 255, 255, true, false, false)
    end
    if BottomText then
        VoltreUI._drawText(BottomText, X, Y + (BarHeight / 2) + 0.005, 0, 0.25, 255, 255, 255, 255, true, false, false)
    end
    
    -- Navigation
    local Step = 0.01
    local Changed = false
    
    if VoltreUI._isPressed(VoltreUI._controls.Up) then
        StartedY = math.max(0, StartedY - Step)
        Changed = true
    end
    if VoltreUI._isPressed(VoltreUI._controls.Down) then
        StartedY = math.min(1, StartedY + Step)
        Changed = true
    end
    
    if Changed and Action then
        Action(StartedY)
    end
    
    return StartedY
end
