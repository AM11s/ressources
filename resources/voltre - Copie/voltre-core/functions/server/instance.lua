-- Cache optimisé : joueurs par routing bucket (O(1) lookup)
voltre.players.byRoutingBucket = {}

voltre.fct.instance.Set = function(src, number, label)
	if src == nil then return end
	if number == nil then return end
	if type(number) ~= "number" then return end
	local xPlayer = ESX.GetPlayerFromId(src)
	if xPlayer == nil then return end

	-- Retirer le joueur de son ancien bucket
	local oldInstance = voltre.players.instances[xPlayer.source]
	if oldInstance and oldInstance.number ~= 0 then
		if voltre.players.byRoutingBucket[oldInstance.number] then
			voltre.players.byRoutingBucket[oldInstance.number][xPlayer.source] = nil
			-- Nettoyer le bucket s'il est vide
			if next(voltre.players.byRoutingBucket[oldInstance.number]) == nil then
				voltre.players.byRoutingBucket[oldInstance.number] = nil
			end
		end
	end

	if number == 0 then
		voltre.players.instances[xPlayer.source] = nil
		SetPlayerRoutingBucket(xPlayer.source, 0)
        TriggerClientEvent("Voltre:esx:changeBucket", xPlayer.source, 0)
	else
		voltre.players.instances[xPlayer.source] = {
			number = number,
			label = label or "Inconnu"
		}
		SetPlayerRoutingBucket(xPlayer.source, number)
        TriggerClientEvent("Voltre:esx:changeBucket", xPlayer.source, number)
		
		-- Ajouter le joueur au cache du nouveau bucket
		if not voltre.players.byRoutingBucket[number] then
			voltre.players.byRoutingBucket[number] = {}
		end
		voltre.players.byRoutingBucket[number][xPlayer.source] = true
	end
end

voltre.fct.instance.Get = function(src)
	if src == nil then return end
	local xPlayer = ESX.GetPlayerFromId(src)
	local PlayerBucket = GetPlayerRoutingBucket(src)
	if PlayerBucket ~= 0 and PlayerBucket ~= voltre.players.instances[xPlayer.source] then
		--print("SetPlayerRoutingBucket n'a pas était changer en SetInInstance()")
		voltre.players.instances[xPlayer.source] = {
			number = PlayerBucket,
			label = "Inconnu"
		}
		return voltre.players.instances[xPlayer.source]
	end

	if voltre.players.instances[xPlayer.source] == nil then 
		return {number = 0, label = "Monde RolePlay"}
	else
		return voltre.players.instances[xPlayer.source]
	end
end

-- Obtenir tous les joueurs dans un routing bucket spécifique (O(1))
voltre.fct.instance.GetPlayersInBucket = function(bucketNumber)
	if bucketNumber == nil or bucketNumber == 0 then
		return {}
	end
	
	local players = {}
	if voltre.players.byRoutingBucket[bucketNumber] then
		for playerId, _ in pairs(voltre.players.byRoutingBucket[bucketNumber]) do
			table.insert(players, playerId)
		end
	end
	
	-- Fallback: si le cache est vide, vérifier manuellement (pour compatibilité)
	if #players == 0 then
		for _, playerId in ipairs(GetPlayers()) do
			if GetPlayerRoutingBucket(playerId) == bucketNumber then
				table.insert(players, playerId)
			end
		end
	end
	
	return players
end

exports("SetInInstance", voltre.fct.instance.Set)
exports("GetInstance", voltre.fct.instance.Get)
exports("GetPlayersInBucket", voltre.fct.instance.GetPlayersInBucket)