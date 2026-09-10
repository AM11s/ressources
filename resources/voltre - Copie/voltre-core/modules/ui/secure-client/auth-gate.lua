local function pushAuth(data)
    if type(data) ~= 'table' then return end
    SendNUIMessage({
        action = 'voltre:ui:auth',
        license = data.license,
        uiToken = data.uiToken,
        -- devmode = not LPH_OBFUSCATED (true en dev, false en prod Luraph).
        -- Sert à désactiver l'anti-devtools côté NUI hors production.
        devMode = devmode == true
    })
end

AddStateBagChangeHandler('voltreUiAuth', 'global', function(_, _, value)
    pushAuth(value)
end)

RegisterNUICallback('voltre:ui:requestAuth', function(_, cb)
    local auth = GlobalState.voltreUiAuth
    if auth then
        pushAuth(auth)
    end
    cb({})
end)

Citizen.CreateThread(function()
    while GlobalState.voltreUiAuth == nil do
        Citizen.Wait(500)
    end
    local auth = GlobalState.voltreUiAuth
    for _ = 1, 6 do
        Citizen.Wait(2000)
        pushAuth(auth)
    end
end)
