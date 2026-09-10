local needDisplayBag = false

RegisterNetEvent('voltre:balaclava:put-in-player')
AddEventHandler('voltre:balaclava:put-in-player', function()
        local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
 
        if closestPlayer == -1 or closestDistance > 3.0 then
            ESX.ShowNotification('Aucun joueurs au alentours')
        else
            if IsPedInAnyVehicle(GetPlayerPed(closestPlayer), false) then
                ESX.ShowNotification('Vous ne pouvez pas mettre de cagoule en étant dans un véhicule')
            else
                local targetPed = GetPlayerPed(closestPlayer)
                if ESX.isHandsUp(targetPed) then  
                    TriggerServerEvent('voltre:balaclava:set', GetPlayerServerId(closestPlayer))
                else
                    ESX.ShowNotification('🙌 Le joueur cible ne leve pas les mains')
                end
            end
        end
end)

RegisterNetEvent('voltre:balaclava:set')
AddEventHandler('voltre:balaclava:set', function()
    needDisplayBag = not needDisplayBag
    if needDisplayBag then 
        TriggerEvent('Voltre:skinchanger:change', 'mask_1', 11)
        TriggerEvent('Voltre:skinchanger:change', 'mask_2', 0)
    end
    while needDisplayBag do
        if not HasStreamedTextureDictLoaded('revolutionbag') then
            RequestStreamedTextureDict('revolutionbag')
            while not HasStreamedTextureDictLoaded('revolutionbag') do
                Citizen.Wait(50)
            end
        end

        DrawSprite('revolutionbag', 'headbag', 0.5, 0.5, 1.0, 1.0, 0.0, 255, 255, 255, 255)
        Citizen.Wait(0)
    end
    SetStreamedTextureDictAsNoLongerNeeded('revolutionbag')
    TriggerEvent('Voltre:skinchanger:change', 'mask_1', 0)
    TriggerEvent('Voltre:skinchanger:change', 'mask_2', 0)
end)