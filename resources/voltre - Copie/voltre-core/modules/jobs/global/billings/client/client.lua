local active = false

RegisterNetEvent("Core:AfficheBilling", function(sender, amount, society)
    --ESX.ShowNotification("Vous avez reçu une facture de ~g~"..amount.."$.")
    --ESX.ShowNotification("Y : Accepter\nN : Refuser")
    local amount = tonumber(amount)
    ESX.ShowAccept("Vous avez reçu une facture de ~g~"..amount.."$.", function(result)
        if result then
            TriggerServerEvent("Core:PayeBilling", "paye", sender, amount, society)
        else
            TriggerServerEvent("Core:PayeBilling", "decline", sender, amount, society)
        end
    end)
end)

RegisterNetEvent('voltre:billing:receviedemande')
AddEventHandler('voltre:billing:receviedemande', function(id, amount,society)
    ESX.ShowAccept("Vous avez reçu une facture de ~g~"..amount.."$.", function(result)
        if result then
            TriggerServerEvent('voltre:billing:receviereponse', id, true)
        else
            TriggerServerEvent('voltre:billing:receviereponse', id, false)
        end
    end)
end)