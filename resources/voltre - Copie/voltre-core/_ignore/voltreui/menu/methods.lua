--[[
    VoltreUI - Menu Methods
    Méthodes des menus (SetTitle, Closable, etc.)
]]

--[[
    ============================================
    MÉTHODES D'AFFICHAGE
    ============================================
]]

function VoltreUI.Menus:DisplayHeader(boolean)
    self.Display.Header = boolean
    return self.Display.Header
end

function VoltreUI.Menus:DisplayGlare(boolean)
    self.Display.Glare = boolean
    return self.Display.Glare
end

function VoltreUI.Menus:DisplaySubtitle(boolean)
    self.Display.Subtitle = boolean
    return self.Display.Subtitle
end

function VoltreUI.Menus:DisplayNavigation(boolean)
    self.Display.Navigation = boolean
    return self.Display.Navigation
end

function VoltreUI.Menus:DisplayInstructionalButton(boolean)
    self.Display.InstructionalButton = boolean
    return self.Display.InstructionalButton
end

function VoltreUI.Menus:DisplayPageCounter(boolean)
    self.Display.PageCounter = boolean
    return self.Display.PageCounter
end

--[[
    ============================================
    MÉTHODES DE CONFIGURATION
    ============================================
]]

function VoltreUI.Menus:SetTitle(Title)
    self.Title = Title
end

function VoltreUI.Menus:SetStyleSize(Value)
    local width
    if Value >= 0 and Value <= 100 then
        width = Value
    else
        width = 100
    end
    self.WidthOffset = width
end

function VoltreUI.Menus:GetStyleSize()
    if self.WidthOffset == 100 then
        return "RageUI"
    elseif self.WidthOffset == 0 then
        return "NativeUI"
    else
        return self.WidthOffset
    end
end

function VoltreUI.Menus:SetCursorStyle(Int)
    self.CursorStyle = Int or 1
    SetMouseCursorSprite(Int)
end

function VoltreUI.Menus:ResetCursorStyle()
    self.CursorStyle = 1
end

function VoltreUI.Menus:UpdateCursorStyle()
    SetMouseCursorSprite(self.CursorStyle or 1)
end

function VoltreUI.Menus:RefreshIndex()
    self.Index = 1
    self.Pagination.Minimum = 1
    self.Pagination.Maximum = self.Pagination.Total
end

function VoltreUI.Menus:EditSpriteColor(R, G, B, A)
    if self.Sprite then
        self.Sprite.Color = { R = R, G = G, B = B, A = A }
    end
end

function VoltreUI.Menus:SetPosition(X, Y)
    self.X = X or self.X
    self.Y = Y or self.Y
end

function VoltreUI.Menus:SetTotalItemsPerPage(Value)
    self.Pagination.Total = Value
    self.Pagination.Maximum = Value
end

function VoltreUI.Menus:SetRectangleBanner(R, G, B, A)
    self.Sprite = nil
    self.Rectangle = { R = R, G = G, B = B, A = A }
end

function VoltreUI.Menus:SetSpriteBanner(TextureDictionary, Texture)
    self.Rectangle = nil
    self.Sprite = { 
        Dictionary = TextureDictionary, 
        Texture = Texture, 
        Color = { R = 255, G = 255, B = 255, A = 255 } 
    }
end

function VoltreUI.Menus:Closable(boolean)
    self.Closable = boolean
end

function VoltreUI.Menus:SetSizeWidth(Value)
    self.WidthOffset = Value
end

--[[
    ============================================
    INSTRUCTIONAL BUTTONS
    ============================================
]]

function VoltreUI.Menus:AddInstructionButton(button)
    if type(button) == "table" then
        table.insert(self.InstructionalButtons, button)
    end
end

function VoltreUI.Menus:RemoveInstructionButton(button)
    for i, btn in ipairs(self.InstructionalButtons) do
        if btn == button then
            table.remove(self.InstructionalButtons, i)
            break
        end
    end
end

function VoltreUI.Menus:UpdateInstructionalButtons(Visible)
    if not self.InstructionalScaleform then return end
    
    BeginScaleformMovieMethod(self.InstructionalScaleform, "CLEAR_ALL")
    EndScaleformMovieMethod()
    
    BeginScaleformMovieMethod(self.InstructionalScaleform, "SET_CLEAR_SPACE")
    ScaleformMovieMethodAddParamInt(200)
    EndScaleformMovieMethod()
    
    if Visible then
        -- Bouton Back
        BeginScaleformMovieMethod(self.InstructionalScaleform, "SET_DATA_SLOT")
        ScaleformMovieMethodAddParamInt(0)
        ScaleformMovieMethodAddParamPlayerNameString("~INPUT_FRONTEND_RRIGHT~")
        BeginTextCommandScaleformString("STRING")
        AddTextComponentSubstringKeyboardDisplay("Retour")
        EndTextCommandScaleformString()
        EndScaleformMovieMethod()
        
        -- Bouton Select
        BeginScaleformMovieMethod(self.InstructionalScaleform, "SET_DATA_SLOT")
        ScaleformMovieMethodAddParamInt(1)
        ScaleformMovieMethodAddParamPlayerNameString("~INPUT_FRONTEND_ACCEPT~")
        BeginTextCommandScaleformString("STRING")
        AddTextComponentSubstringKeyboardDisplay("Sélectionner")
        EndTextCommandScaleformString()
        EndScaleformMovieMethod()
        
        -- Boutons personnalisés
        for i, button in ipairs(self.InstructionalButtons) do
            BeginScaleformMovieMethod(self.InstructionalScaleform, "SET_DATA_SLOT")
            ScaleformMovieMethodAddParamInt(i + 1)
            ScaleformMovieMethodAddParamPlayerNameString(button[1])
            BeginTextCommandScaleformString("STRING")
            AddTextComponentSubstringKeyboardDisplay(button[2])
            EndTextCommandScaleformString()
            EndScaleformMovieMethod()
        end
    end
    
    BeginScaleformMovieMethod(self.InstructionalScaleform, "DRAW_INSTRUCTIONAL_BUTTONS")
    EndScaleformMovieMethod()
    
    BeginScaleformMovieMethod(self.InstructionalScaleform, "SET_BACKGROUND_COLOUR")
    ScaleformMovieMethodAddParamInt(0)
    ScaleformMovieMethodAddParamInt(0)
    ScaleformMovieMethodAddParamInt(0)
    ScaleformMovieMethodAddParamInt(80)
    EndScaleformMovieMethod()
end
