--[[
    VoltreUI Panels - Percentage
    Panel de pourcentage
]]

--- Panel de pourcentage
---@param Percent number Pourcentage actuel (0-100)
---@param HeaderText string|nil Texte d'en-tête
---@param MinText string|nil Texte minimum
---@param MaxText string|nil Texte maximum
---@param Action function|nil Callback(Percent)
---@param Index number|nil Index de l'item parent
---@return number NewPercent
function VoltreUI.PercentagePanel(Percent, HeaderText, MinText, MaxText, Action, Index)
    local CurrentMenu = VoltreUI.CurrentMenu
    if not CurrentMenu then return Percent end
    if not CurrentMenu() then return Percent end
    
    -- Vérifier si l'item parent est sélectionné
    if Index and CurrentMenu.Index ~= Index then
        return Percent
    end
    
    Percent = Percent or 50
    
    -- Position du panel (sous les items)
    local ItemHeight = 38
    local ItemCount = math.min(VoltreUI.Options, CurrentMenu.Pagination.Total)
    local PanelY = CurrentMenu.Y + 107 + CurrentMenu.SubtitleHeight + 38 + (ItemHeight * ItemCount) + 5
    local PanelWidth = 431 + CurrentMenu.WidthOffset
    local PanelHeight = 65
    
    -- Fond du panel
    RenderRectangle(
        CurrentMenu.X, 
        PanelY, 
        PanelWidth, 
        PanelHeight, 
        0, 0, 0, 200
    )
    
    -- Header
    if HeaderText and HeaderText ~= "" then
        RenderText(
            HeaderText,
            CurrentMenu.X + (PanelWidth / 2),
            PanelY + 5,
            0, 0.28,
            255, 255, 255, 255,
            1 -- Centré
        )
    end
    
    -- Barre de progression
    local BarWidth = 280
    local BarHeight = 12
    local BarX = CurrentMenu.X + (PanelWidth / 2) - (BarWidth / 2)
    local BarY = PanelY + 30
    
    -- Fond de la barre
    RenderRectangle(BarX, BarY, BarWidth, BarHeight, 50, 50, 50, 255)
    
    -- Progression
    local ProgressWidth = BarWidth * (Percent / 100)
    RenderRectangle(BarX, BarY, ProgressWidth, BarHeight, 255, 255, 255, 255)
    
    -- Texte du pourcentage
    RenderText(
        tostring(math.floor(Percent)) .. "%",
        CurrentMenu.X + (PanelWidth / 2),
        BarY + BarHeight + 3,
        0, 0.25,
        255, 255, 255, 255,
        1 -- Centré
    )
    
    -- Textes min/max
    if MinText then
        RenderText(
            MinText,
            BarX - 5,
            BarY - 2,
            0, 0.22,
            200, 200, 200, 255,
            2 -- Aligné à droite
        )
    end
    if MaxText then
        RenderText(
            MaxText,
            BarX + BarWidth + 5,
            BarY - 2,
            0, 0.22,
            200, 200, 200, 255,
            0 -- Aligné à gauche
        )
    end
    
    -- Navigation (maintenir gauche/droite pour changer)
    local Step = 1
    local Changed = false
    
    if IsDisabledControlPressed(0, 174) then -- Left
        Percent = math.max(0, Percent - Step)
        Changed = true
    end
    if IsDisabledControlPressed(0, 175) then -- Right
        Percent = math.min(100, Percent + Step)
        Changed = true
    end
    
    if Changed and Action then
        Action(Percent)
    end
    
    return Percent
end
