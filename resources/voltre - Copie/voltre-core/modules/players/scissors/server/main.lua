ESX.RegisterUsableItem('ciseaux', function(source)
	TriggerClientEvent('voltre:use-scissors', source)
end)

RegisterNetEvent('voltre:scissors:cut', function(target)
	TriggerClientEvent('voltre:scissors:cut', target, source)
end)