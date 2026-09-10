fx_version "cerulean"
game "gta5"

title       "Voltre Immo - lb-phone app"
description "App immobilière publique : visualise les biens en vente et en location de l'agence."
author      "Voltre"
version     "1.0.0"

client_scripts {
    "@voltre-core/init/shared/configs_loader.lua",
    "client.lua",
}

file "ui/**/*"
ui_page "ui/index.html"

dependencies {
    "voltre-loader",   -- auto-start via voltre-loader
    "lb-phone",
}
