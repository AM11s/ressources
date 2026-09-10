Config = Config or {}

Config.DevPanel = {
    Enabled = false, -- Master switch: set to false to completely disable the dev panel

    -- Whitelist d'identifiants autorisés (license:/discord:/fivem:). Vide = AUCUN joueur autorisé (fail-closed). Ajoute tes identifiants pour utiliser le devpanel.
    Developers = {
        -- ["license:xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"] = true,
    },

    -- Keybind to open the dev panel (only works if Enabled = true)
    OpenKey = "F11",

    -- Quick actions available in the panel
    QuickActions = {
        { id = "restart_core",      label = "Restart voltre-core",         command = "restart voltre-core",           icon = "refresh" },
        { id = "restart_ui",        label = "Restart voltre-ui",           command = "restart voltre-ui",             icon = "refresh" },
        { id = "restart_stream",    label = "Restart voltre-stream",       command = "restart voltre-stream",         icon = "refresh" },
        { id = "player_loaded",     label = "Re-trigger playerLoaded",     event = "esx:playerLoaded",                icon = "user" },
        { id = "refresh_inventory", label = "Refresh Inventory",           event = "voltre:inventory:update",         icon = "package" },
        { id = "reload_skin",       label = "Reload Skin",                 event = "Voltre:skinchanger:reloadSkin",   icon = "shirt" },
        { id = "heal",              label = "Heal Player",                 serverEvent = "voltre:dev:heal",           icon = "heart" },
        { id = "revive",            label = "Revive Player",               serverEvent = "voltre:dev:revive",         icon = "activity" },
        { id = "tp_marker",         label = "TP to Marker",                clientEvent = "voltre:dev:tpmarker",       icon = "map-pin" },
        { id = "coords",            label = "Copy Coords",                 clientEvent = "voltre:dev:copyCoords",     icon = "crosshair" },
        { id = "noclip",            label = "Toggle Noclip",               clientEvent = "voltre:dev:noclip",         icon = "ghost" },
        { id = "invisible",         label = "Toggle Invisible",            clientEvent = "voltre:dev:invisible",      icon = "eye-off" },
    },
}
