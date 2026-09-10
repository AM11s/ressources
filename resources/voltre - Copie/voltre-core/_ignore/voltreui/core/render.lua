--[[
    VoltreUI - Core Render
    Fonctions de rendu (texte, sprites, rectangles)
]]

--[[
    ============================================
    FONCTIONS DE RENDU DE BASE
    ============================================
]]

-- Cache pour les natives
local SetTextFont = SetTextFont
local SetTextScale = SetTextScale
local SetTextColour = SetTextColour
local SetTextDropShadow = SetTextDropShadow
local SetTextOutline = SetTextOutline
local SetTextCentre = SetTextCentre
local SetTextRightJustify = SetTextRightJustify
local SetTextWrap = SetTextWrap
local BeginTextCommandDisplayText = BeginTextCommandDisplayText
local EndTextCommandDisplayText = EndTextCommandDisplayText
-- Note: Ces natives sont appelées directement car elles peuvent ne pas être disponibles au moment du cache
local AddTextComponentSubstringPlayerName = AddTextComponentSubstringPlayerName
local DrawRect = DrawRect
local DrawSprite = DrawSprite
local HasStreamedTextureDictLoaded = HasStreamedTextureDictLoaded
local RequestStreamedTextureDict = RequestStreamedTextureDict

-- Cache des textures chargées
local LoadedTextures = {}

---Rendre du texte à l'écran
---@param Text string
---@param X number
---@param Y number
---@param Font number
---@param Scale number
---@param R number
---@param G number
---@param B number
---@param A number
---@param Alignment number|string|nil
---@param DropShadow boolean|nil
---@param Outline boolean|nil
---@param WordWrap number|nil
RenderText = function(Text, X, Y, Font, Scale, R, G, B, A, Alignment, DropShadow, Outline, WordWrap)
    local Text = tostring(Text)
    local X = (tonumber(X) or 0) / 1920
    local Y = (tonumber(Y) or 0) / 1080
    
    SetTextFont(Font or 0)
    SetTextScale(1.0, Scale or 0)
    SetTextColour(tonumber(R) or 255, tonumber(G) or 255, tonumber(B) or 255, tonumber(A) or 255)
    
    if DropShadow then
        SetTextDropShadow()
    end
    
    if Outline then
        SetTextOutline()
    end
    
    if Alignment ~= nil then
        if Alignment == 1 or Alignment == "Center" or Alignment == "Centre" then
            SetTextCentre(true)
        elseif Alignment == 2 or Alignment == "Right" then
            SetTextRightJustify(true)
        end
    end
    
    if tonumber(WordWrap) and tonumber(WordWrap) ~= 0 then
        if Alignment == 1 or Alignment == "Center" or Alignment == "Centre" then
            SetTextWrap(X - ((WordWrap / 1920) / 2), X + ((WordWrap / 1920) / 2))
        elseif Alignment == 2 or Alignment == "Right" then
            SetTextWrap(0, X)
        else
            SetTextWrap(X, X + (WordWrap / 1920))
        end
    else
        if Alignment == 2 or Alignment == "Right" then
            SetTextWrap(0, X)
        end
    end
    
    BeginTextCommandDisplayText("jamyfafi")
    -- Découper le texte en morceaux de 47 caractères max (limite GTA pour texte long)
    local textLen = #Text
    if textLen <= 47 then
        AddTextComponentSubstringPlayerName(Text)
    else
        local startPos = 1
        while startPos <= textLen do
            local chunk = string.sub(Text, startPos, startPos + 46)
            AddTextComponentSubstringPlayerName(chunk)
            startPos = startPos + 47
        end
    end
    EndTextCommandDisplayText(X, Y)
end

-- Alias pour compatibilité
function AddText(Text)
    AddTextComponentSubstringPlayerName(tostring(Text))
end

---Obtenir le nombre de lignes d'un texte
---@param Text string
---@param X number
---@param Y number
---@param Font number
---@param Scale number
---@param R number
---@param G number
---@param B number
---@param A number
---@param Alignment number|nil
---@param DropShadow boolean|nil
---@param Outline boolean|nil
---@param WordWrap number|nil
---@return number
GetLineCount = function(Text, X, Y, Font, Scale, R, G, B, A, Alignment, DropShadow, Outline, WordWrap)
    local Text = tostring(Text)
    local X = (tonumber(X) or 0) / 1920
    local Y = (tonumber(Y) or 0) / 1080
    
    SetTextFont(Font or 0)
    SetTextScale(1.0, Scale or 0)
    SetTextColour(tonumber(R) or 255, tonumber(G) or 255, tonumber(B) or 255, tonumber(A) or 255)
    
    if DropShadow then
        SetTextDropShadow()
    end
    
    if Outline then
        SetTextOutline()
    end
    
    if Alignment ~= nil then
        if Alignment == 1 or Alignment == "Center" or Alignment == "Centre" then
            SetTextCentre(true)
        elseif Alignment == 2 or Alignment == "Right" then
            SetTextRightJustify(true)
        end
    end
    
    if tonumber(WordWrap) and tonumber(WordWrap) ~= 0 then
        if Alignment == 1 or Alignment == "Center" or Alignment == "Centre" then
            SetTextWrap(X - ((WordWrap / 1920) / 2), X + ((WordWrap / 1920) / 2))
        elseif Alignment == 2 or Alignment == "Right" then
            SetTextWrap(0, X)
        else
            SetTextWrap(X, X + (WordWrap / 1920))
        end
    else
        if Alignment == 2 or Alignment == "Right" then
            SetTextWrap(0, X)
        end
    end
    
    BeginTextCommandLineCount("jamyfafi")
    -- Découper le texte en morceaux de 47 caractères max (limite GTA pour texte long)
    local textLen = #Text
    if textLen <= 47 then
        AddTextComponentSubstringPlayerName(Text)
    else
        local startPos = 1
        while startPos <= textLen do
            local chunk = string.sub(Text, startPos, startPos + 46)
            AddTextComponentSubstringPlayerName(chunk)
            startPos = startPos + 47
        end
    end
    return EndTextCommandGetLineCount(X, Y)
end

-- Fonction simplifiée si les natives ne sont pas disponibles
if not BeginTextCommandLineCount then
    function GetLineCount(Text, X, Y, Font, Scale, R, G, B, A, Alignment, DropShadow, Outline, WordWrap)
        -- Estimation basique du nombre de lignes
        if not WordWrap or WordWrap == 0 then return 1 end
        local charPerLine = math.floor(WordWrap / (Scale * 10))
        if charPerLine <= 0 then charPerLine = 50 end
        return math.ceil(#tostring(Text) / charPerLine)
    end
end

---Rendre un rectangle
---@param X number
---@param Y number
---@param Width number
---@param Height number
---@param R number
---@param G number
---@param B number
---@param A number
RenderRectangle = function(X, Y, Width, Height, R, G, B, A)
    local X = (tonumber(X) or 0) / 1920
    local Y = (tonumber(Y) or 0) / 1080
    local Width = (tonumber(Width) or 0) / 1920
    local Height = (tonumber(Height) or 0) / 1080
    
    DrawRect(X + Width * 0.5, Y + Height * 0.5, Width, Height, math.floor(tonumber(R) or 255), math.floor(tonumber(G) or 255), math.floor(tonumber(B) or 255), math.floor(tonumber(A) or 255))
end

---Charger une texture si nécessaire
---@param Dictionary string
---@return boolean
local function EnsureTextureLoaded(Dictionary)
    if LoadedTextures[Dictionary] then
        return true
    end
    
    if not HasStreamedTextureDictLoaded(Dictionary) then
        RequestStreamedTextureDict(Dictionary, true)
        local timeout = 0
        while not HasStreamedTextureDictLoaded(Dictionary) and timeout < 100 do
            Wait(10)
            timeout = timeout + 1
        end
    end
    
    if HasStreamedTextureDictLoaded(Dictionary) then
        LoadedTextures[Dictionary] = true
        return true
    end
    
    return false
end

---Rendre un sprite
---@param Dictionary string
---@param Texture string
---@param X number
---@param Y number
---@param Width number
---@param Height number
---@param Heading number|nil
---@param R number|nil
---@param G number|nil
---@param B number|nil
---@param A number|nil
RenderSprite = function(Dictionary, Texture, X, Y, Width, Height, Heading, R, G, B, A)
    if not Dictionary or not Texture then return end
    
    EnsureTextureLoaded(Dictionary)
    
    local X = (tonumber(X) or 0) / 1920
    local Y = (tonumber(Y) or 0) / 1080
    local Width = (tonumber(Width) or 0) / 1920
    local Height = (tonumber(Height) or 0) / 1080
    
    DrawSprite(Dictionary, Texture, X + Width * 0.5, Y + Height * 0.5, Width, Height, tonumber(Heading) or 0, tonumber(R) or 255, tonumber(G) or 255, tonumber(B) or 255, tonumber(A) or 255)
end

--[[
    ============================================
    FONCTIONS UTILITAIRES
    ============================================
]]

---Arrondir un nombre
---@param num number
---@param numDecimalPlaces number|nil
---@return number
function math.round(num, numDecimalPlaces)
    return tonumber(string.format("%." .. (numDecimalPlaces or 0) .. "f", num))
end

---Vérifier si une string commence par une autre
---@param String string
---@param Start string
---@return boolean
function string.starts(String, Start)
    return string.sub(String, 1, string.len(Start)) == Start
end

---Vérifier si la souris est dans une zone
---@param X number
---@param Y number
---@param Width number
---@param Height number
---@return boolean
function VoltreUI.IsMouseInBounds(X, Y, Width, Height)
    local MX = math.round(GetControlNormal(2, 239) * 1920) / 1920
    local MY = math.round(GetControlNormal(2, 240) * 1080) / 1080
    X, Y = X / 1920, Y / 1080
    Width, Height = Width / 1920, Height / 1080
    return (MX >= X and MX <= X + Width) and (MY > Y and MY < Y + Height)
end

---Obtenir les limites de la safe zone
---@return table
function VoltreUI.GetSafeZoneBounds()
    local SafeSize = GetSafeZoneSize()
    SafeSize = math.round(SafeSize, 2)
    SafeSize = (SafeSize * 100) - 90
    SafeSize = 10 - SafeSize
    
    local W, H = 1920, 1080
    
    return { X = math.round(SafeSize * ((W / H) * 5.4)), Y = math.round(SafeSize * 5.4) }
end

---Configurer la safe zone pour le menu
---@param CurrentMenu table
function VoltreUI.ItemsSafeZone(CurrentMenu)
    if not CurrentMenu.SafeZoneSize then
        CurrentMenu.SafeZoneSize = { X = 0, Y = 0 }
        if CurrentMenu.Safezone then
            CurrentMenu.SafeZoneSize = VoltreUI.GetSafeZoneBounds()
            SetScriptGfxAlign(76, 84)
            local theme = VoltreUI.GetTheme()
            local params = theme.SafeZone and theme.SafeZone.AlignParams or { 0, 0, 0, 0 }
            SetScriptGfxAlignParams(params[1], params[2], params[3], params[4])
        end
    end
end
