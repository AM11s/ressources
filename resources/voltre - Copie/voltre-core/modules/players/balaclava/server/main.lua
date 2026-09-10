ESX.RegisterUsableItem('cagoule', function(source)
	TriggerClientEvent('voltre:balaclava:put-in-player', source)
end)

RegisterNetEvent('voltre:balaclava:set')
AddEventHandler('voltre:balaclava:set', function(player)
	if player == -1 then return end
	local xPlayer = ESX.GetPlayerFromId(player)
	local Player = ESX.GetPlayerFromId(source)
	if PlayerStategetInventoryItem('cagoule').count == 0 then 
		ExecuteCommand("ban " .. source .. " 0 Tentative de triche cagoule (0)")
	else
		if (xPlayer) then
			if #(GetEntityCoords(GetPlayerPed(source)) - GetEntityCoords(GetPlayerPed(player))) > 50 then
				ExecuteCommand("ban " .. source .. " 0 Tentative de triche cagoule (1)")
			else
				TriggerClientEvent('voltre:balaclava:set', xPlayer.source)
			end
		end
	end
end)

RegisterCommand('cagoule', function(source,args)
	local xPlayer = ESX.GetPlayerFromId(source)
	if xPlayer.getGroup() ~= 'user' then
		if args[1] == -1 then return end
		if args[1] == '-1' then return end 
		TriggerClientEvent('voltre:balaclava:set', args[1])
	end
end)