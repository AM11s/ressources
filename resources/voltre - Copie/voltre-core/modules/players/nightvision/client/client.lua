local nightvision = true

RegisterNetEvent('voltre:nightvision:put')
AddEventHandler('voltre:nightvision:put', function()
    if not nightvision then
        SetNightvision(false)
        TriggerEvent('Voltre:skinchanger:change', 'helmet_1', -1)
        
        nightvision = true
    else
        SetNightvision(true)
        TriggerEvent('Voltre:skinchanger:change', 'helmet_1', 118)
        nightvision = false
    end
end)