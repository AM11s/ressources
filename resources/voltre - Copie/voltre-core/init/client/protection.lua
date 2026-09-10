token = nil

RegisterNetEvent('voltre:protection:token:retrevie')
AddEventHandler('voltre:protection:token:retrevie', function(TokenReceive)
    token = TokenReceive
end)