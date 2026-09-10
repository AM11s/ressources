--[[
    VoltreUI - Menu Pool
    Création et gestion des menus
]]

--[[
    ============================================
    RMENU (Compatibilité)
    ============================================
]]

RMenu = setmetatable({}, RMenu)
local TotalMenus = {}

function RMenu.Add(Type, Name, Menu)
    if RMenu[Type] ~= nil then
        RMenu[Type][Name] = { Menu = Menu }
    else
        RMenu[Type] = {}
        RMenu[Type][Name] = { Menu = Menu }
    end
    return table.insert(TotalMenus, Menu)
end

function RMenu:Get(Type, Name)
    if self[Type] ~= nil and self[Type][Name] ~= nil then
        return self[Type][Name].Menu
    end
end

function RMenu:GetType(Type)
    if self[Type] ~= nil then
        return self[Type]
    end
end

function RMenu:Settings(Type, Name, Settings, Value)
    if Value ~= nil then
        self[Type][Name][Settings] = Value
    else
        return self[Type][Name][Settings]
    end
end

function RMenu:Delete(Type, Name)
    self[Type][Name] = nil
    collectgarbage()
end

function RMenu:DeleteType(Type)
    self[Type] = nil
    collectgarbage()
end

--[[
    ============================================
    METATABLE DES MENUS
    ============================================
]]

VoltreUI.Menus = setmetatable({}, VoltreUI.Menus)

VoltreUI.Menus.__call = function()
    return true
end

VoltreUI.Menus.__index = VoltreUI.Menus

--[[
    ============================================
    CRÉATION DE MENUS
    ============================================
]]

---Créer un nouveau menu
---@param Title string
---@param Subtitle string|nil
---@param X number|nil
---@param Y number|nil
---@param TextureDictionary string|nil
---@param TextureName string|nil
---@param R number|nil
---@param G number|nil
---@param B number|nil
---@param A number|nil
---@return table
function VoltreUI.CreateMenu(Title, Subtitle, X, Y, TextureDictionary, TextureName, R, G, B, A)
    local theme = VoltreUI.GetTheme()
    local menuDefaults = theme.Menu
    
    local Menu = {}
    Menu.Display = {}
    Menu.InstructionalButtons = {}
    Menu.disableKeys = {}
    
    -- Display options
    Menu.Display.Header = true
    Menu.Display.Glare = theme.Behavior.GlareEffect or false
    Menu.Display.Subtitle = true
    Menu.Display.Background = true
    Menu.Display.Navigation = theme.Items.Navigation.Enabled
    Menu.Display.InstructionalButton = true
    Menu.Display.PageCounter = true
    
    -- Titre
    Menu.Title = "" -- Desactivated the Title
    Menu.TitleFont = menuDefaults.TitleFont
    Menu.TitleScale = menuDefaults.TitleScale
    
    -- Sous-titre
    Menu.Subtitle = Subtitle or menuDefaults.DefaultSubtitle
    Menu.SubtitleHeight = menuDefaults.SubtitleHeight
    
    -- Description
    Menu.Description = nil
    Menu.DescriptionHeight = theme.Items.Description.Background.Height
    
    -- Position
    Menu.X = X or 0
    Menu.Y = Y or menuDefaults.DefaultY
    
    -- Hiérarchie
    Menu.Parent = nil
    
    -- Dimensions
    Menu.WidthOffset = VoltreUI.MenuWidth
    
    -- État
    Menu.Open = false
    Menu.Controls = VoltreUI.Settings.Controls
    Menu.Index = 1
    Menu.Options = 0
    Menu.Closable = true
    
    -- Sprite/Rectangle
    if TextureDictionary then
        Menu.Sprite = { 
            Dictionary = TextureDictionary, 
            Texture = TextureName or "interaction_bgd", 
            Color = { R = R or 255, G = G or 255, B = B or 255, A = A or 255 } 
        }
    else
        Menu.Sprite = { 
            Dictionary = "main", 
            Texture = "interaction_bgd", 
            Color = { R = R or 255, G = G or 255, B = B or 255, A = A or 255 } 
        }
    end
    Menu.Rectangle = nil
    
    -- Pagination
    Menu.Pagination = { 
        Minimum = menuDefaults.Pagination.Minimum, 
        Maximum = menuDefaults.Pagination.Maximum, 
        Total = menuDefaults.Pagination.Total 
    }
    
    -- Safe zone
    Menu.Safezone = true
    Menu.SafeZoneSize = nil
    
    -- Souris
    Menu.EnableMouse = false
    Menu.CursorStyle = 1
    
    -- Scaleform
    Menu.InstructionalScaleform = RequestScaleformMovie("INSTRUCTIONAL_BUTTONS")
    Menu.InitScaleform = false
    
    -- Page counter color
    if string.starts(Menu.Subtitle, "~") then
        Menu.PageCounterColour = string.lower(string.sub(Menu.Subtitle, 1, 3))
    else
        Menu.PageCounterColour = ""
    end
    
    -- Calculer la hauteur du sous-titre
    if Menu.Subtitle ~= "" then
        local SubtitleLineCount = GetLineCount(
            Menu.Subtitle, 
            Menu.X + theme.Items.Subtitle.Text.X, 
            Menu.Y + theme.Items.Subtitle.Text.Y, 
            0, 
            theme.Items.Subtitle.Text.Scale, 
            245, 245, 245, 255, 
            nil, false, false, 
            theme.Items.Subtitle.Background.Width + Menu.WidthOffset
        )
        
        if SubtitleLineCount > 1 then
            Menu.SubtitleHeight = 18 * SubtitleLineCount
        else
            Menu.SubtitleHeight = 0
        end
    end
    
    -- Charger le scaleform
    CreateThread(function()
        if not HasScaleformMovieLoaded(Menu.InstructionalScaleform) then
            Menu.InstructionalScaleform = RequestScaleformMovie("INSTRUCTIONAL_BUTTONS")
            local timeout = 0
            while not HasScaleformMovieLoaded(Menu.InstructionalScaleform) and timeout < 100 do
                Wait(10)
                timeout = timeout + 1
            end
        end
    end)
    
    return setmetatable(Menu, VoltreUI.Menus)
end

---Créer un sous-menu
---@param ParentMenu table
---@param Title string|nil
---@param Subtitle string|nil
---@param X number|nil
---@param Y number|nil
---@param TextureDictionary string|nil
---@param TextureName string|nil
---@param R number|nil
---@param G number|nil
---@param B number|nil
---@param A number|nil
---@return table|nil
function VoltreUI.CreateSubMenu(ParentMenu, Title, Subtitle, X, Y, TextureDictionary, TextureName, R, G, B, A)
    if ParentMenu == nil then return nil end
    if not ParentMenu() then return nil end
    
    local theme = VoltreUI.GetTheme()
    local Menu = VoltreUI.CreateMenu(
        Title or "", 
        Subtitle or theme.Menu.DefaultSubtitle, 
        X or ParentMenu.X, 
        Y or ParentMenu.Y
    )
    
    Menu.Parent = ParentMenu
    Menu.WidthOffset = ParentMenu.WidthOffset
    Menu.Safezone = ParentMenu.Safezone
    
    if ParentMenu.Sprite then
        Menu.Sprite = { 
            Dictionary = TextureDictionary or ParentMenu.Sprite.Dictionary, 
            Texture = TextureName or ParentMenu.Sprite.Texture, 
            Color = { 
                R = R or ParentMenu.Sprite.Color.R, 
                G = G or ParentMenu.Sprite.Color.G, 
                B = B or ParentMenu.Sprite.Color.B, 
                A = A or ParentMenu.Sprite.Color.A 
            } 
        }
    else
        Menu.Rectangle = ParentMenu.Rectangle
    end
    
    return setmetatable(Menu, VoltreUI.Menus)
end

--[[
    ============================================
    VISIBILITÉ
    ============================================
]]

---Définir ou obtenir la visibilité d'un menu
---@param Menu table
---@param Value boolean|nil
---@return boolean|nil
function VoltreUI.Visible(Menu, Value)
    if Menu == nil or not Menu() then return end
    
    if Value == true or Value == false then
        if Value then
            if VoltreUI.CurrentMenu ~= nil then
                if VoltreUI.CurrentMenu.Closed then
                    VoltreUI.CurrentMenu.Closed()
                end
                VoltreUI.CurrentMenu.Open = false
                Menu:UpdateInstructionalButtons(Value)
                Menu:UpdateCursorStyle()
            end
            VoltreUI.CurrentMenu = Menu
        else
            VoltreUI.CurrentMenu = nil
        end
        
        Menu.Open = Value
        VoltreUI.Options = 0
        VoltreUI.ItemOffset = 0
        VoltreUI.LastControl = false
        
        -- Reset animation quand on ouvre un menu
        if Value and VoltreUI.ResetAnimation then
            VoltreUI.ResetAnimation()
        end
    else
        return Menu.Open
    end
end

---Fermer tous les menus
function VoltreUI.CloseAll()
    if VoltreUI.CurrentMenu ~= nil then
        local parent = VoltreUI.CurrentMenu.Parent
        while parent ~= nil do
            parent.Index = 1
            parent.Pagination.Minimum = 1
            parent.Pagination.Maximum = parent.Pagination.Total
            parent = parent.Parent
        end
        
        VoltreUI.CurrentMenu.Index = 1
        VoltreUI.CurrentMenu.Pagination.Minimum = 1
        VoltreUI.CurrentMenu.Pagination.Maximum = VoltreUI.CurrentMenu.Pagination.Total
        VoltreUI.CurrentMenu.Open = false
        VoltreUI.CurrentMenu = nil
    end
    
    VoltreUI.Options = 0
    VoltreUI.ItemOffset = 0
    ResetScriptGfxAlign()
end

---Vérifier si un menu est visible et préparer le rendu
---@param Menu table
---@param Items function|nil
---@param Panels function|nil
---@return boolean
VoltreUI.IsVisible = function(Menu, Items, Panels)
    if VoltreUI.Visible(Menu) and UpdateOnscreenKeyboard() ~= 0 and UpdateOnscreenKeyboard() ~= 3 then
        VoltreUI.Banner()
        VoltreUI.Subtitle()
        
        if Items then
            Items()
        end
        
        VoltreUI.Background()
        VoltreUI.Navigation()
        VoltreUI.Description()
        
        if Panels then
            Panels()
        end
        
        VoltreUI.Render()
        return true
    end
    return false
end