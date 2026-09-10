fx_version 'cerulean'
game 'gta5'

name 'voltre-cache'
author 'Voltre'
version '2.0.0'
description 'Image cache, screenshot capture & processing'

dependency "voltre-loader"

dependencies {
    'screenshot-basic',
    'yarn'
}

files {
    'images/**/*.webp',
    'images/**/*.png',
    'images/**/*.jpg',
}

server_scripts {
    '@voltre-core/init/shared/configs_loader.lua',
    'server.lua',
    'main.js',
    'server.js'
}
