fx_version "cerulean"
game "gta5"

title       "Voltre Taxi - lb-phone app"
description "App pour appeler un taxi : liste les chauffeurs en service et envoie une demande aux taxis."
author      "Voltre"
version     "1.0.0"

client_scripts {
    "@voltre-core/init/shared/configs_loader.lua",
    "client.lua",
}

file "ui/**/*"
ui_page "ui/index.html"

dependencies {
    "voltre-loader",
    "lb-phone",
}
