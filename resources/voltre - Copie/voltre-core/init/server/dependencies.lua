pcall(function()
    for k,v in pairs(Config.Loader.resources) do
        if GetResourceState(k) == "started" then
            voltre.InitPrint(k.." is started (not attented, add dependency to your resource), skipping resource initialization")
            return
        end
        if v.autoStart then
            StopResource(k)
            StartResource(k)
            voltre.InitPrint(k.." started !")
        end
    end
end)
