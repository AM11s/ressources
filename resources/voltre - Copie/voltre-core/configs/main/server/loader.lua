--[[
    How to add voltre loader :
    1. add dependency 'voltre-loader' in your fxmanifest.lua resource
    2. add your resource to Config.Loader.resources
    3. add this line in your fxmanifest.lua (server or client or both (or just shared))
    '@voltre-core/init/shared/configs_loader.lua',
]]

Config.Loader = {
    resources = {
        ["voltre-ui"] = { -- resource name
            autoStart = false, -- if voltre-core restart, he will restart your resource when voltre-core loaded
        },
        ["voltre-dashboard"] = {
            autoStart = false,
        },
        ["voltre-cache"] = { 
            autoStart = false,
        },
        ["voltre-image-maker"] = { 
            autoStart = false,
        },
    }
}