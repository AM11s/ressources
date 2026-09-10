--[[
    VoltreUI - Core Controls
    Gestion des inputs et de la navigation
]]

-- Cache des natives
local IsDisabledControlJustPressed = IsDisabledControlJustPressed
local IsDisabledControlPressed = IsDisabledControlPressed
local DisableControlAction = DisableControlAction

--[[
    ============================================
    CONFIGURATION DES CONTRÔLES
    ============================================
]]

VoltreUI.Settings = VoltreUI.Settings or {}

VoltreUI.Settings.Controls = {
    Up = {
        Enabled = true,
        Active = false,
        Pressed = false,
        Keys = {
            { 0, 172 }, { 1, 172 }, { 2, 172 },
            { 0, 241 }, { 1, 241 }, { 2, 241 },
        },
    },
    Down = {
        Enabled = true,
        Active = false,
        Pressed = false,
        Keys = {
            { 0, 173 }, { 1, 173 }, { 2, 173 },
            { 0, 242 }, { 1, 242 }, { 2, 242 },
        },
    },
    Left = {
        Enabled = true,
        Active = false,
        Pressed = false,
        Keys = {
            { 0, 174 }, { 1, 174 }, { 2, 174 },
        },
    },
    Right = {
        Enabled = true,
        Pressed = false,
        Active = false,
        Keys = {
            { 0, 175 }, { 1, 175 }, { 2, 175 },
        },
    },
    SliderLeft = {
        Enabled = true,
        Active = false,
        Pressed = false,
        Keys = {
            { 0, 174 }, { 1, 174 }, { 2, 174 },
        },
    },
    SliderRight = {
        Enabled = true,
        Pressed = false,
        Active = false,
        Keys = {
            { 0, 175 }, { 1, 175 }, { 2, 175 },
        },
    },
    Select = {
        Enabled = true,
        Pressed = false,
        Active = false,
        Keys = {
            { 0, 201 }, { 1, 201 }, { 2, 201 },
        },
    },
    Back = {
        Enabled = true,
        Active = false,
        Pressed = false,
        Keys = {
            { 0, 177 }, { 1, 177 }, { 2, 177 },
            { 0, 199 }, { 1, 199 }, { 2, 199 },
        },
    },
    Click = {
        Enabled = true,
        Active = false,
        Pressed = false,
        Keys = {
            { 0, 24 },
        },
    },
    Enabled = {
        Controller = {
            { 0, 2 },   -- Look Up and Down
            { 0, 1 },   -- Look Left and Right
            { 0, 25 },  -- Aim
            { 0, 24 },  -- Attack
        },
        Keyboard = {
            -- Seulement les contrôles de menu, PAS les contrôles de mouvement
            { 0, 201 },  -- Enter/Select
            { 0, 195 },  -- F3
            { 0, 196 },  -- F4
            { 0, 199 },  -- Pause
            { 0, 200 },  -- Pause Alt
        },
    },
}

VoltreUI.Settings.Audio = {
    Use = "NativeUI",
    NativeUI = {
        UpDown = { audioName = "HUD_FRONTEND_DEFAULT_SOUNDSET", audioRef = "NAV_UP_DOWN" },
        LeftRight = { audioName = "HUD_FRONTEND_DEFAULT_SOUNDSET", audioRef = "NAV_LEFT_RIGHT" },
        Select = { audioName = "HUD_FRONTEND_DEFAULT_SOUNDSET", audioRef = "SELECT" },
        Back = { audioName = "HUD_FRONTEND_DEFAULT_SOUNDSET", audioRef = "BACK" },
        Error = { audioName = "HUD_FRONTEND_DEFAULT_SOUNDSET", audioRef = "ERROR" },
        Slider = { audioName = "HUD_FRONTEND_DEFAULT_SOUNDSET", audioRef = "CONTINUOUS_SLIDER" },
    },
}

--[[
    ============================================
    FONCTIONS DE CONTRÔLE
    ============================================
]]

---Jouer un son
---@param Library string
---@param Sound string
---@param IsLooped boolean|nil
function VoltreUI.PlaySound(Library, Sound, IsLooped)
    PlaySoundFrontend(-1, Sound, Library, IsLooped or false)
end

---Vérifier et mettre à jour les contrôles
VoltreUI.Controls = function()
    local CurrentMenu = VoltreUI.CurrentMenu
    if not CurrentMenu then return end
    
    local Controls = VoltreUI.Settings.Controls
    
    -- Désactiver les contrôles de jeu
    for _, v in ipairs(Controls.Enabled.Keyboard) do
        DisableControlAction(v[1], v[2], true)
    end
    
    -- Reset des états Active (mais pas Pressed)
    Controls.Up.Active = false
    Controls.Down.Active = false
    Controls.Left.Active = false
    Controls.Right.Active = false
    Controls.SliderLeft.Active = false
    Controls.SliderRight.Active = false
    Controls.Select.Active = false
    Controls.Back.Active = false
    Controls.Click.Active = false
    
    -- Vérifier Up (avec support hold - appelle directement GoUp comme l'original)
    if Controls.Up.Enabled and not Controls.Up.Pressed then
        for _, Key in ipairs(Controls.Up.Keys) do
            if VoltreUI.disabledKeys and VoltreUI.disabledKeys[Key[2]] then
                -- Key disabled
            elseif IsDisabledControlJustPressed(Key[1], Key[2]) then
                Controls.Up.Pressed = true
                -- Thread qui appelle directement GoUp (comme l'original RageUI)
                CreateThread(function()
                    VoltreUI.GoUpDirect()
                    Wait(175)  -- Délai initial
                    while Controls.Up.Enabled and IsDisabledControlPressed(Key[1], Key[2]) do
                        VoltreUI.GoUpDirect()
                        Wait(50)  -- Répétition rapide
                    end
                    Controls.Up.Pressed = false
                end)
                break
            end
        end
    end
    
    -- Vérifier Down (avec support hold - appelle directement GoDown comme l'original)
    if Controls.Down.Enabled and not Controls.Down.Pressed then
        for _, Key in ipairs(Controls.Down.Keys) do
            if VoltreUI.disabledKeys and VoltreUI.disabledKeys[Key[2]] then
                -- Key disabled
            elseif IsDisabledControlJustPressed(Key[1], Key[2]) then
                Controls.Down.Pressed = true
                -- Thread qui appelle directement GoDown (comme l'original RageUI)
                CreateThread(function()
                    VoltreUI.GoDownDirect()
                    Wait(175)  -- Délai initial
                    while Controls.Down.Enabled and IsDisabledControlPressed(Key[1], Key[2]) do
                        VoltreUI.GoDownDirect()
                        Wait(50)  -- Répétition rapide
                    end
                    Controls.Down.Pressed = false
                end)
                break
            end
        end
    end
    
    -- Vérifier Left (avec support hold)
    if Controls.Left.Enabled and not Controls.Left.Pressed then
        for _, Key in ipairs(Controls.Left.Keys) do
            if VoltreUI.disabledKeys and VoltreUI.disabledKeys[Key[2]] then
                -- Key disabled
            elseif IsDisabledControlJustPressed(Key[1], Key[2]) then
                Controls.Left.Pressed = true
                CreateThread(function()
                    Controls.Left.Active = true
                    Wait(175)
                    while Controls.Left.Enabled and IsDisabledControlPressed(Key[1], Key[2]) do
                        Controls.Left.Active = true
                        Wait(50)
                    end
                    Controls.Left.Pressed = false
                end)
                break
            end
        end
    end
    
    -- Vérifier Right (avec support hold)
    if Controls.Right.Enabled and not Controls.Right.Pressed then
        for _, Key in ipairs(Controls.Right.Keys) do
            if VoltreUI.disabledKeys and VoltreUI.disabledKeys[Key[2]] then
                -- Key disabled
            elseif IsDisabledControlJustPressed(Key[1], Key[2]) then
                Controls.Right.Pressed = true
                CreateThread(function()
                    Controls.Right.Active = true
                    Wait(175)
                    while Controls.Right.Enabled and IsDisabledControlPressed(Key[1], Key[2]) do
                        Controls.Right.Active = true
                        Wait(50)
                    end
                    Controls.Right.Pressed = false
                end)
                break
            end
        end
    end
    
    -- Vérifier SliderLeft (pressed, pas just pressed)
    if Controls.SliderLeft.Enabled then
        for _, Key in ipairs(Controls.SliderLeft.Keys) do
            if IsDisabledControlPressed(Key[1], Key[2]) then
                Controls.SliderLeft.Active = true
                break
            end
        end
    end
    
    -- Vérifier SliderRight (pressed, pas just pressed)
    if Controls.SliderRight.Enabled then
        for _, Key in ipairs(Controls.SliderRight.Keys) do
            if IsDisabledControlPressed(Key[1], Key[2]) then
                Controls.SliderRight.Active = true
                break
            end
        end
    end
    
    -- Vérifier Select
    if Controls.Select.Enabled then
        for _, Key in ipairs(Controls.Select.Keys) do
            if VoltreUI.disabledKeys and VoltreUI.disabledKeys[Key[2]] then
                -- Key disabled
            elseif IsDisabledControlJustPressed(Key[1], Key[2]) then
                Controls.Select.Active = true
                break
            end
        end
    end
    
    -- Vérifier Back
    if Controls.Back.Enabled then
        for _, Key in ipairs(Controls.Back.Keys) do
            if VoltreUI.disabledKeys and VoltreUI.disabledKeys[Key[2]] then
                -- Key disabled
            elseif IsDisabledControlJustPressed(Key[1], Key[2]) then
                Controls.Back.Active = true
                break
            end
        end
    end
    
    -- Vérifier Click (souris)
    if Controls.Click.Enabled then
        for _, Key in ipairs(Controls.Click.Keys) do
            if IsDisabledControlJustPressed(Key[1], Key[2]) then
                Controls.Click.Active = true
                Controls.Click.Pressed = true
                break
            end
        end
    end
end

---Naviguer vers le haut (appelé directement par le thread de hold)
function VoltreUI.GoUpDirect()
    local CurrentMenu = VoltreUI.CurrentMenu
    if not CurrentMenu then return end
    
    local Options = CurrentMenu.Options or 1
    
    CurrentMenu.Index = CurrentMenu.Index - 1
    if CurrentMenu.Index < 1 then
        CurrentMenu.Index = Options
    end
    
    -- Reset animation pour le thème Modern
    if VoltreUI.ResetAnimation then
        VoltreUI.ResetAnimation()
    end
    VoltreUI.LastControl = true  -- On navigue vers le haut
    
    local Audio = VoltreUI.Settings.Audio
    VoltreUI.PlaySound(Audio[Audio.Use].UpDown.audioName, Audio[Audio.Use].UpDown.audioRef)
    
    -- Pagination
    if CurrentMenu.Index < CurrentMenu.Pagination.Minimum then
        CurrentMenu.Pagination.Minimum = CurrentMenu.Index
        CurrentMenu.Pagination.Maximum = CurrentMenu.Index + CurrentMenu.Pagination.Total - 1
    end
end

---Naviguer vers le bas (appelé directement par le thread de hold)
function VoltreUI.GoDownDirect()
    local CurrentMenu = VoltreUI.CurrentMenu
    if not CurrentMenu then return end
    
    local Options = CurrentMenu.Options or 1
    
    CurrentMenu.Index = CurrentMenu.Index + 1
    if CurrentMenu.Index > Options then
        CurrentMenu.Index = 1
    end
    
    -- Reset animation pour le thème Modern
    if VoltreUI.ResetAnimation then
        VoltreUI.ResetAnimation()
    end
    VoltreUI.LastControl = false  -- On navigue vers le bas
    
    local Audio = VoltreUI.Settings.Audio
    VoltreUI.PlaySound(Audio[Audio.Use].UpDown.audioName, Audio[Audio.Use].UpDown.audioRef)
    
    -- Pagination
    if CurrentMenu.Index > CurrentMenu.Pagination.Maximum then
        CurrentMenu.Pagination.Minimum = CurrentMenu.Index - CurrentMenu.Pagination.Total + 1
        CurrentMenu.Pagination.Maximum = CurrentMenu.Index
    end
end

---Naviguer vers le haut (legacy - vérifie Active flag)
---@param Options number
function VoltreUI.GoUp(Options)
    -- Ne fait plus rien car géré par GoUpDirect dans le thread
end

---Naviguer vers le bas (legacy - vérifie Active flag)
---@param Options number
function VoltreUI.GoDown(Options)
    -- Ne fait plus rien car géré par GoDownDirect dans le thread
end

---Retourner au menu parent
function VoltreUI.GoBack()
    local CurrentMenu = VoltreUI.CurrentMenu
    if not CurrentMenu then return end
    
    if CurrentMenu.Parent then
        VoltreUI.NextMenu = CurrentMenu.Parent
    else
        VoltreUI.Visible(CurrentMenu, false)
    end
end

---Navigation (appelé dans le render)
function VoltreUI.Navigation()
    local CurrentMenu = VoltreUI.CurrentMenu
    if not CurrentMenu then return end
    
    local theme = VoltreUI.GetTheme()
    
    -- Afficher les flèches de navigation si activé
    if theme.Items.Navigation.Enabled and CurrentMenu.Options > CurrentMenu.Pagination.Total then
        VoltreUI.ItemsSafeZone(CurrentMenu)
        
        local nav = theme.Items.Navigation
        
        -- Couleur du fond de navigation (utilise MenuBackground ou blanc par défaut)
        local navBgColor = theme.Colors.NavigationBackground or theme.Colors.MenuBackground
        if type(navBgColor) == "function" then navBgColor = navBgColor() end
        if not navBgColor then navBgColor = { R = 255, G = 255, B = 255, A = 255 } end
        
        RenderRectangle(
            CurrentMenu.X, 
            CurrentMenu.Y + VoltreUI.ItemOffset + CurrentMenu.SubtitleHeight, 
            nav.Rectangle.Width + CurrentMenu.WidthOffset, 
            nav.Rectangle.Height, 
            navBgColor.R, navBgColor.G, navBgColor.B, navBgColor.A
        )
        
        RenderSprite(
            nav.Arrows.Dictionary, 
            nav.Arrows.Texture, 
            CurrentMenu.X + nav.Arrows.X + (CurrentMenu.WidthOffset / 2), 
            CurrentMenu.Y + VoltreUI.ItemOffset + nav.Arrows.Y + CurrentMenu.SubtitleHeight, 
            nav.Arrows.Width, 
            nav.Arrows.Height
        )
        
        -- Ajouter la hauteur de la navigation à l'offset pour que la description soit en dessous
        VoltreUI.ItemOffset = VoltreUI.ItemOffset + nav.Rectangle.Height
    end
end
