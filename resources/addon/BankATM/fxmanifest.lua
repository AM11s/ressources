fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Voltre'
description 'Realistic ATM'
version '1.1.0'


dependency 'voltre-loader'

server_scripts {
    '@voltre-core/init/shared/configs_loader.lua',
	'config.lua',
	'server/server.lua'
}

client_scripts {
    '@voltre-core/init/shared/configs_loader.lua',
	'config.lua',
	'client/client.lua'
}
files {
    'html/index.html',
    'html/assets/js/**',
    'html/assets/css/**',
    'html/assets/img/**'
}
ui_page 'html/index.html'


escrow_ignore{
	--'config.lua'
	'**',
	'**/**'
}
dependency '/assetpacks'