-- ============================================================================
-- ILLEGAL TABLET DEVICE - Marché noir bridge (reuses voltre:tablet:* backend)
-- ============================================================================

RegisterNUICallback('illegalDevice:market:getData', function(_, cb)
    ESX.TriggerServerCallback('voltre:tablet:getData', function(result)
        cb(result or {})
    end)
end)

RegisterNUICallback('illegalDevice:market:buyWeapon', function(data, cb)
    TriggerServerEvent('voltre:tablet:buyWeapon', data.weaponId, data.quantity or 1)
    Wait(500)
    ESX.TriggerServerCallback('voltre:tablet:getData', function(result)
        cb(result or {})
    end)
end)

RegisterNUICallback('illegalDevice:market:buyItem', function(data, cb)
    TriggerServerEvent('voltre:tablet:buyItem', data.itemId, data.quantity or 1)
    Wait(500)
    ESX.TriggerServerCallback('voltre:tablet:getData', function(result)
        cb(result or {})
    end)
end)
