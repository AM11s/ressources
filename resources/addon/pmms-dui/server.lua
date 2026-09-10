local resName = GetCurrentResourceName()


CreateThread(function()
    
    local pmmsState = GetResourceState("pmms")
    local baseUrl = GetConvar("web_baseUrl", "")
    while pmmsState ~= "started" do
        Wait(100)
        pmmsState = GetResourceState("pmms")
    end

    while baseUrl == "" do 
        Wait(100)
        baseUrl = GetConvar("web_baseUrl", "")
    end
    if baseUrl ~= "" then
        url = "https://"..baseUrl
    end

    if pmmsState == "started" then
        pmmsConfig = LoadResourceFile("pmms", "config.lua")
        if not pmmsConfig then
            return
        end
    else
        return
    end

    if resName ~= "pmms-dui" then
        return
    end



    local finalUrl = url .. "/pmms-dui/"

    local escapedUrl = finalUrl:gsub("([%.%+%-%*%?%[%]%^%$%(%)%%])", "%%%1")

    if pmmsConfig then
        -- Check for both single and double quote patterns
        if not (pmmsConfig:find('Config%.dui%.urls%.https%s*=%s*"[^"]*' .. escapedUrl .. '"') or
                pmmsConfig:find("Config%.dui%.urls%.https%s*=%s*'[^']*" .. escapedUrl .. "'")) then

            RegisterCommand("updateconfig", function(source)
                if source == 0 then
                    local updatedConfig = pmmsConfig
                        :gsub('Config%.dui%.urls%.https%s*=%s*".-"', 'Config.dui.urls.https = "' .. finalUrl .. '"')
                        :gsub("Config%.dui%.urls%.https%s*=%s*'.-'", "Config.dui.urls.https = '" .. finalUrl .. "'")

                    SaveResourceFile("pmms", "config.lua", updatedConfig, -1)
                    Wait(1000)
                    -- StopResource("pmms")
                    Wait(1000)
                    -- StartResource("pmms")
                    SetHttpHandler(createHttpHandler())        
                else
                end
            end, false)
        else
            SetHttpHandler(createHttpHandler())
        end
    end
end)
