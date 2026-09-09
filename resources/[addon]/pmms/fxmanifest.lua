fx_version "adamant"
games {"gta5", "rdr3"}
rdr3_warning "I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships."

name "pmms"
description "FiveM and RedM syncronized media player"
author "kibukj"

dependencies {
    "httpmanager",
    "voltre-loader"
}

shared_scripts {
	"common.lua"
}

server_scripts {
    '@voltre-core/init/shared/configs_loader.lua',
	"server.lua",
}

files {
	"ui/index.html",
	"ui/style.css",
	"ui/script.js",
	"ui/mediaelement.min.js",
	"ui/loading.svg",
	"ui/wave.js"
}

ui_page "ui/index.html"

client_scripts {
    '@voltre-core/init/shared/configs_loader.lua',
	"dui.lua",
	"staticEmitters.lua",
	"client.lua"
}