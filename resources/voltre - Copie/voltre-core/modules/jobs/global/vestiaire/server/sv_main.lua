RegisterServerEvent("voltre:jobclothes:addtenuvestiaire")
AddEventHandler("voltre:jobclothes:addtenuvestiaire", function(name, skin)
    local _src = source
    local xPlayer = ESX.GetPlayerFromId(_src)
    local newId = math.random(000, 999)
    if xPlayer.job.name == "unemployed" then
        return
    end

    MySQL.Async.execute("INSERT INTO voutfit (id, job, label, value) VALUES (@id, @job, @label, @value)", {
        ["@id"] = newId,
        ["@job"] = xPlayer.job.name,
        ["@label"] = name,
        ["@value"] = json.encode(skin)
    }, function(rowsChanged)
        TriggerClientEvent('esx:showNotification', _src, 'Vous avez sauvegardé votre tenue')
    end)
end)

RegisterServerEvent("voltre:jobclothes:editname")
AddEventHandler("voltre:jobclothes:editname", function(id, newName)
    local _src = source
    local xPlayer = ESX.GetPlayerFromId(_src)
    if xPlayer.job.name == "unemployed" then
        return
    end

    MySQL.Async.execute("UPDATE voutfit SET `label` = @newName WHERE id = @id", {
        ["@id"] = id,
        ["@newName"] = newName
    }, function(rowsChanged)
        TriggerClientEvent('esx:showNotification', _src, 'Vous avez modifier le nom de la tenue avec succès')
    end)
end)

RegisterServerEvent("voltre:jobclothes:deleteJobTenue")
AddEventHandler("voltre:jobclothes:deleteJobTenue", function(id)
    local _src = source
    local xPlayer = ESX.GetPlayerFromId(_src)
    if xPlayer.job.name == "unemployed" then
        return
    end

    MySQL.Async.execute("DELETE FROM voutfit WHERE id = @id", {
        ["@id"] = id
    }, function(rowsChanged)
        TriggerClientEvent('esx:showNotification', _src, 'Vous avez supprimé la tenue')
    end)
end)

ESX.RegisterServerCallback("voltre:jobclothes:getVetements", function(source,cb)
    local _src = source
    local xPlayer = ESX.GetPlayerFromId(_src)
    if xPlayer.job.name == "unemployed" then
        return
    end

    MySQL.Async.fetchAll('SELECT * FROM voutfit WHERE job = @job', {
        ['@job'] = xPlayer.job.name
    }, function(result)
        cb(result)
    end)
end)