RegisterNetEvent('voltre:kit:mecano:repair')
AddEventHandler('voltre:kit:mecano:repair', function()
    local playerPed = PlayerPedId()
    local coords    = GetEntityCoords(playerPed)

    if IsAnyVehicleNearPoint(coords.x, coords.y, coords.z, 5.0) then
        local vehicle = nil

        if IsPedInAnyVehicle(playerPed, false) then
            vehicle = GetVehiclePedIsIn(playerPed, false)
        else
            vehicle = GetClosestVehicle(coords.x, coords.y, coords.z, 5.0, 0, 71)
        end

        if DoesEntityExist(vehicle) then
            voltre.fct.draw.AddTimerBar("Réparation de la Carrosserie :",{endTime=GetGameTimer()+60*1000*0.19})
            TriggerEvent('voltre:kit:mecano:canrepairanim')
            Citizen.CreateThread(function()
                GetVehicleEngineHealth(vehicle)
                local moteur = GetVehicleEngineHealth(vehicle)
                Citizen.Wait(10000)
                SetVehicleBodyHealth(vehicle, 1000.0)
                SetVehicleFixed(vehicle)
                SetVehicleDeformationFixed(vehicle)
                SetVehicleEngineHealth(vehicle, moteur)
                ClearPedTasksImmediately(playerPed)
                ESX.ShowNotification(('~g~Carrosserie \n~s~installé avec ~g~succès'))
                voltre.fct.draw.RemoveTimerBar()
            end)
        end
    end
end)


RegisterNetEvent('voltre:kit:mecano:canrepairanim')
AddEventHandler('voltre:kit:mecano:canrepairanim', function()
    TriggerEvent('voltre:kit:mecano:repairanim')
    Wait(3000)
    TriggerEvent('voltre:kit:mecano:repairanim')
    Wait(3000)
    TriggerEvent('voltre:kit:mecano:repairanim')
end)

RegisterNetEvent('voltre:kit:mecano:repairanim')
AddEventHandler('voltre:kit:mecano:repairanim', function()
    local dict, anim = 'amb@world_human_vehicle_mechanic@male@base', 'base'
    local playerPed = PlayerPedId()
    ESX.Streaming.RequestAnimDict(dict)
    TaskPlayAnim(playerPed, dict, anim, 8.0, 1.0, 5000, 0, 0.0, false, false, false)
end)
