fx_version 'bodacious'
game 'gta5'
lua54 'yes'

name 'voltre-stream'
description ''
author 'Voltre'
version '4.0.4'

dependency "voltre-loader"

file {
    "fm_timecycle_list_showroom.xml",
	'data/**/*.meta',
    "stream/**.ytyp",
}

data_file 'DLC_ITYP_REQUEST' 'stream/[weed_jar]/bzzz_growing_freepot_a.ytyp'
data_file 'TIMECYCLEMOD_FILE' 'fm_timecycle_list_showroom.xml'
data_file 'DLC_ITYP_REQUEST' 'stream/**.ytyp'

data_file 'HANDLING_FILE' 'data/vehicles/handling.meta'
data_file 'HANDLING_FILE' 'data/hologram/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'data/hologram/vehicles.meta'
data_file 'VEHICLE_VARIATION_FILE' 'data/hologram/carvariations.meta'

data_file "DLC_ITYP_REQUEST" "stream/[lab]/v_int_61.ytyp"
data_file "DLC_ITYP_REQUEST" "stream/[lab]/v_int_50.ytyp"
data_file 'DLC_ITYP_REQUEST' 'stream/[props]/prop_custom_methpile.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/[props]/prop_custom_pooch.ytyp'

client_scripts {
    'client.lua',
    'devpanel_client.lua'
}

server_scripts {
    'server.lua',
    'main.js',
    'devpanel_server.lua'
}

escrow_ignore {
    'server.lua',
    'client.lua',
    'stream/[minmap]/**',
    'devpanel_server.lua',
    'devpanel_client.lua'
}

lurpah_ignore {
    'server.lua',
    'client.lua',
}