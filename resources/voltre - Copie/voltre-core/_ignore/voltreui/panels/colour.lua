--[[
    VoltreUI Panels - Colour
    Panel de sélection de couleur
]]

--- Panel de couleur
---@param Title string Titre du panel
---@param Colours table Liste des couleurs {{R,G,B}, ...}
---@param MinimumIndex number Index minimum
---@param CurrentIndex number Index actuel
---@param Action function|nil Callback(index, colour)
---@param Index number|nil Index de l'item parent (pour afficher seulement si sélectionné)
---@return number NewIndex
function VoltreUI.ColourPanel(Title, Colours, MinimumIndex, CurrentIndex, Action, Index)
    local CurrentMenu = VoltreUI.CurrentMenu
    if not CurrentMenu then return CurrentIndex end
    if not CurrentMenu() then return CurrentIndex end
    
    -- Vérifier si l'item parent est sélectionné
    if Index and CurrentMenu.Index ~= Index then
        return CurrentIndex
    end
    
    local theme = VoltreUI.GetTheme()
    
    Colours = Colours or {}
    CurrentIndex = CurrentIndex or 1
    MinimumIndex = MinimumIndex or 1
    
    if #Colours == 0 then return CurrentIndex end
    
    -- Position du panel (sous les items)
    local ItemHeight = 38
    local ItemCount = math.min(VoltreUI.Options, CurrentMenu.Pagination.Total)
    local PanelY = CurrentMenu.Y + 107 + CurrentMenu.SubtitleHeight + 38 + (ItemHeight * ItemCount) + 5
    local PanelWidth = 431 + CurrentMenu.WidthOffset
    
    -- Calculer la hauteur du panel en fonction du nombre de lignes de couleurs
    local ColourSize = 25
    local ColourSpacing = 3
    local ColoursPerRow = math.floor((PanelWidth - 20) / (ColourSize + ColourSpacing))
    local RowCount = math.ceil(#Colours / ColoursPerRow)
    local PanelHeight = 35 + (RowCount * (ColourSize + ColourSpacing)) + 10
    
    -- Fond du panel
    RenderRectangle(
        CurrentMenu.X, 
        PanelY, 
        PanelWidth, 
        PanelHeight, 
        0, 0, 0, 200
    )
    
    -- Titre
    if Title and Title ~= "" then
        RenderText(
            Title,
            CurrentMenu.X + (PanelWidth / 2),
            PanelY + 5,
            0, 0.30,
            255, 255, 255, 255,
            1 -- Centré
        )
    end
    
    -- Afficher les couleurs
    local StartX = CurrentMenu.X + 10
    local StartY = PanelY + 30
    
    for i, colour in ipairs(Colours) do
        local row = math.floor((i - 1) / ColoursPerRow)
        local col = (i - 1) % ColoursPerRow
        
        local ColourX = StartX + (col * (ColourSize + ColourSpacing))
        local ColourY = StartY + (row * (ColourSize + ColourSpacing))
        
        local R, G, B = colour[1] or 255, colour[2] or 255, colour[3] or 255
        
        -- Bordure si sélectionné (dessiner d'abord la bordure blanche plus grande)
        if i == CurrentIndex then
            RenderRectangle(ColourX - 2, ColourY - 2, ColourSize + 4, ColourSize + 4, 255, 255, 255, 255)
        end
        
        -- Dessiner la couleur
        RenderRectangle(ColourX, ColourY, ColourSize, ColourSize, R, G, B, 255)
    end
    
    -- Navigation avec les touches gauche/droite
    if IsDisabledControlJustPressed(0, 174) then -- Left
        CurrentIndex = CurrentIndex - 1
        if CurrentIndex < MinimumIndex then
            CurrentIndex = #Colours
        end
        PlaySoundFrontend(-1, "NAV_LEFT_RIGHT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
        if Action then Action(CurrentIndex, Colours[CurrentIndex]) end
    end
    
    if IsDisabledControlJustPressed(0, 175) then -- Right
        CurrentIndex = CurrentIndex + 1
        if CurrentIndex > #Colours then
            CurrentIndex = MinimumIndex
        end
        PlaySoundFrontend(-1, "NAV_LEFT_RIGHT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
        if Action then Action(CurrentIndex, Colours[CurrentIndex]) end
    end
    
    return CurrentIndex
end
