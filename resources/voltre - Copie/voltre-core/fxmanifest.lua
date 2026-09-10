fx_version "adamant"
lua54 'yes'
game "gta5"

name 'voltre-core'
author 'Voltre'
version "4.0.40"
description 'Voltre Core Framework - ESX Based'
 
this_is_a_map 'yes'
-- ox_lib + oxmysql sont satisfaits par voltre-deps via provides{}.
dependency { '/assetpacks', 'voltre-deps' }

ui_page 'modules/_core/ui/html/index.html'

loadscreen 'modules/_core/loading/html/index.html'
loadscreen_manual_shutdown 'yes'
loadscreen_cursor 'yes'

files {
    'modules/_core/ui/html/index.html',
    'modules/_core/ui/html/css/*.css',
    'modules/_core/ui/html/js/**/*.js',
    'modules/_core/ui/html/js/modules/rageui-bridge.js',
    'modules/_core/ui/html/sounds/*.ogg',
    'modules/_core/loading/html/**',

    'modules/ui/web/dist/index.html',
    'modules/ui/web/dist/assets/**/*',
    'modules/ui/web/dist/voltre-blur.js',

    -- 3D UI DUIs (ammo hologram + speedometer)
    'modules/_core/weapons/html/hologram.html',
    'modules/_core/weapons/html/hologram.css',
    'modules/_core/weapons/html/hologram.js',
    'modules/_core/ui/html/3dui-speed/speed.html',
    'modules/_core/ui/html/3dui-speed/speed.css',
    'modules/_core/ui/html/3dui-speed/speed.js',
    'modules/_core/ui/html/3dui-speed/fonts/*',

    -- 3D UI Fuel station
    'modules/_core/ui/html/3dui-fuel/index.html',
    'modules/_core/ui/html/3dui-fuel/index.css',
    'modules/_core/ui/html/3dui-fuel/index.js',

    'cache/**.json',
    'cache/backups/*',
    'lib/fonts/*.flf',
}

-- Shared scripts (loaded on both client and server)
shared_scripts {
    '@voltre-deps/modules/ox_lib/init.lua',
    'init/shared/lph.lua', -- lph not skipped
    'init/shared/lph_macros.lua', -- lph skipped
}

client_scripts {
    'modules/_core/loading/client.lua',

    -- lib
    'lib/dataview.lua', -- gizmo dependence
    'lib/gizmo.lua', -- object_gizmo
    '@voltre-deps/modules/polyzone/client.lua',
    '@voltre-deps/modules/polyzone/BoxZone.lua',
    '@voltre-deps/modules/polyzone/EntityZone.lua',
    '@voltre-deps/modules/polyzone/CircleZone.lua',
    '@voltre-deps/modules/polyzone/ComboZone.lua',

    -- configs (primary)
    'configs/main/shared/main.lua',
    'configs/main/shared/language.lua',
    'configs/modules/languages/shared/*.lua',

    -- init
    'init/client/common.lua',
    'init/client/functions.lua',
    'init/shared/languages.lua',
    'init/client/blips.lua',
    'init/client/threads.lua',

    -- configs (secondary)
    'configs/**/client/**.lua',
    'configs/**/shared/**.lua',

    -- configs loader
    'init/shared/configs_loader.lua',

    -- import
    '@voltre-loader/import.lua',
    
    'init/client/protection.lua',

    -- NykzUI Menu System (React)
    'configs/modules/ui/shared/menu.lua',
    'modules/ui/priority-client/RageUI.lua',
    'modules/ui/priority-client/Menu.lua',
    'modules/ui/priority-client/items/*.lua',
    -- 'modules/ui/priority-client/example.lua',
 
    -- lib: Visuals
    "lib/visual/*.lua",

    -- lib: ContextMenu (ALT)
    -- "lib/context/config.lua",
    -- "lib/context/menu/Drawables/*.lua",
	-- "lib/context/menu/Menu/*.lua",
	-- "lib/context/menu/*.lua",
    
	-- "lib/context/client/client.lua",
	-- "lib/context/client/function.lua",
    -- "lib/context/client/target.lua",

    -- framework
	'framework/client/common.lua',
	'framework/client/entityiter.lua',
	'framework/client/functions.lua',
	'framework/client/wrapper.lua',
	'framework/client/main.lua',
	'framework/client/salary.lua',
	'framework/client/announcement.lua',
	'framework/client/modules/death.lua',
	'framework/client/modules/streaming.lua',
	'framework/client/modules/weapons.lua',
	'framework/common/modules/math.lua',
	'framework/common/modules/table.lua',
	'framework/common/functions.lua',
    'framework/shared/modules.lua',
    'framework/shared/bridge.lua',

    -- functions
    "functions/shared/**.lua",
    "functions/client/**.lua",

    -- modules priority
    "modules/admin/client/namespaces.lua",

    -- modules
    "modules/**/shared/**.lua",
    "modules/**/client/**.lua",
    "modules/ui/secure-client/**.lua",
}

server_scripts {
    -- lib
    'init/server/async.lua',
    'lib/deferral.lua',
	'@voltre-deps/modules/oxmysql/lib/MySQL.lua',
    'lib/figlet.lua',
    'lib/main.js',
    '@voltre-deps/modules/polyzone/creation/server/creation.lua',

    -- configs/init (primary)
    'configs/main/shared/main.lua',
    'configs/main/shared/language.lua',
    'configs/modules/languages/shared/*.lua',
    'init/shared/languages.lua',

    -- init (secondary)
    'init/server/common.lua',
    'init/server/functions.lua',
    'init/server/savedata.lua',
    'init/server/cache.lua',
    'init/server/lite-mysql.lua',

    -- configs (secondary)
    'configs/**/server/**.lua',
    'configs/**/shared/**.lua',

    -- import
    '@voltre-loader/import.lua',

    -- protection (après configs)
    'init/server/protection.lua',

    -- configs loader
    'init/shared/configs_loader.lua',

    -- framework
	'framework/server/common.lua',
	'framework/server/whitelist.lua',
	'framework/server/classes/groups.lua',
	'framework/server/classes/player.lua',
	'framework/server/functions.lua',
	'framework/server/paycheck.lua',
	'framework/server/main.lua',
	'framework/server/auth.lua',
	'framework/server/commands.lua',
	'framework/server/cache.lua',
	'framework/server/announcement.lua',
	'framework/server/bridge/**/*.lua',
	'framework/common/modules/math.lua',
	'framework/common/modules/table.lua',
	'framework/common/functions.lua',
    'framework/shared/modules.lua',
    'framework/shared/bridge.lua',

    -- functions
    "functions/shared/**.lua",
    "functions/server/**.lua",

    -- modules
    "modules/**/shared/**.lua",
    "modules/**/server/**.lua",

    "init/server/dependencies.lua",
}

escrow_ignore {
    "cache/**",
    "configs/**.lua",

    "init/server/common.lua",

    "init/shared/lph.lua",
    'init/shared/lph_macros.lua',
    'init/shared/configs_loader.lua',
    'lib/figlet.lua',
    'lib/dataview.lua',
    'lib/gizmo.lua',

    "modules/**/server/**.lua",
    "modules/**/shared/**.lua",

    "modules/admin/client/**.lua",
    "modules/admin/**/client/**.lua",

    -- UI client event-driven (Luraph-locked, must be excluded from FXAP)
    "modules/ui/secure-client/**.lua",
}

luraph_ignore {
    "cache/**",
    "configs/**.lua",

    "framework/**.lua",
    "functions/**.lua",
    "init/client/**.lua",
    "init/server/async.lua",
    "init/server/cache.lua",
    "init/server/dependencies.lua",
    "init/server/functions.lua",
    "init/server/lite-mysql.lua",
    "init/server/protection.lua",
    "init/server/savedata.lua",
    "init/shared/languages.lua",
    "init/shared/lph_macros.lua",
    "lib/**.lua",

    "modules/_core/loading/client.lua",

    "modules/_core/client/**.lua",
    "modules/_core/**/client/**.lua",
    "modules/gameplay/client/**.lua",
    "modules/gameplay/**/client/**.lua",
    "modules/gameplay/**/images/**.png",
    "modules/illegal/client/**.lua",
    "modules/illegal/**/client/**.lua",
    "modules/jobs/client/**.lua",
    "modules/jobs/**/client/**.lua",
    "modules/players/client/**.lua",
    "modules/players/**/client/**.lua",
    "modules/ui/client/**.lua",
    "modules/ui/**/client/**.lua",
    'modules/ui/priority-client/**.lua',
    'modules/ui/**/priority-client/**.lua',
    "modules/world/client/**.lua",
    "modules/world/**/client/**.lua",
    "modules/system/client/**.lua",
    "modules/system/**/client/**.lua",
    "modules/showcase/client/**.lua",
    "modules/showcase/**/client/**.lua",
    "modules/vehicles/client/**.lua",
    "modules/vehicles/**/client/**.lua",
}
