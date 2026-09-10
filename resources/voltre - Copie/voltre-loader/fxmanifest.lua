fx_version "adamant"
lua54 'yes'
game "gta5"
name 'voltre-loader'
author 'Voltre'
version "4.0.1"
description 'Voltre Loader'

shared_scripts {
    "import.lua"
}

server_scripts {
    "server.lua",
    "main.js",
    "devpanel.lua",
    "debug.lua"
}

client_scripts {
    "debug.lua"
}

exports {
    'ApplyDashboardConfig',
    'IsDashboardConfigLoaded',
    'GetDashboardConfig',
    'GetDashboardConfigStats',
    'GetDashboardValue',
    'RecordApply',
    'ReloadDashboardConfig',
    'VerifyDashboardKey',
    -- voltre-deps lifecycle (le loader pilote le start du bundle des dépendances)
    'EnsureVoltreDeps',
    'IsVoltreDepsReady',
}

luraph_ignore {
    "import.lua",
    "devpanel.lua"
}

escrow_ignore {
    "server.lua",
    "debug.lua"
}