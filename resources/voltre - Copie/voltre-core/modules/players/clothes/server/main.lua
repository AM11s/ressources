local vBlWords = {
    "LOAD"
}


Citizen.CreateThread(function()
    MySQL.Async.fetchAll("SELECT * FROM vclothes ", {}, function(result)
        for k, v in pairs(result) do
            if not voltre.players.clothes[v.identifier] then 
                voltre.players.clothes[v.identifier] = {}
            end
            if not voltre.players.clothes[v.identifier][v.id] then
                voltre.players.clothes[v.identifier][v.id] = {}
            end 
            voltre.players.clothes[v.identifier][v.id].identifier = v.identifier
            voltre.players.clothes[v.identifier][v.id].label = v.name 
            voltre.players.clothes[v.identifier][v.id].skin = v.data
            voltre.players.clothes[v.identifier][v.id].type = v.type
            voltre.players.clothes[v.identifier][v.id].equip = false
            voltre.players.clothes[v.identifier][v.id].id = v.id
        end
        TriggerEvent("voltre:core:recevieload:ClothesCount", #result)
        --Wait(10000)
        --print('[^4LOAD^0] [^4'..#result..'^0] Tenues ont été load avec succès')
    end)
end)


RegisterNetEvent("Voltre:addtenueitem", function(label, skin)
    --[[local NumberCount = 0
    local xPlayer = ESX.GetPlayerFromId(source)
    local NumberTenueAutorized = GetVIP(xPlayer.source) == true and 9999 or GetVIP(xPlayer.source) == 1 and 9999 or 9999
    if not voltre.players.clothes[xPlayer.identifier] then
        NumberCount = 0
    else
        NumberCount = 0
    end

    if NumberCount+1 > NumberTenueAutorized then 
        xPlayer.showNotification('Vous avez déjà trop de tenue.')
    else
        local Account = xPlayer.getAccount('cash').money >= 750 and 'money' or xPlayer.getAccount('bank').money >= 750 and 'bank' or 'nomoney'
        if Account == 'nomoney' then
            xPlayer.showNotification('Vous n\'avez pas assez d\'argent sur vous')
        else
            xPlayer.removeAccountMoney(Account, 750)
            local IdTenue = math.random(11111,99999)
            local IdTenue2 = math.random(11111,99999)
            local ValidateID = IdTenue+IdTenue2

            if not voltre.players.clothes[xPlayer.identifier][ValidateID] then
                voltre.players.clothes[xPlayer.identifier][ValidateID] = {}
                voltre.players.clothes[xPlayer.identifier][ValidateID].identifier = xPlayer.identifier
                voltre.players.clothes[xPlayer.identifier][ValidateID].label = label
                voltre.players.clothes[xPlayer.identifier][ValidateID].type = "vetement"
                voltre.players.clothes[xPlayer.identifier][ValidateID].equip = "n"
                voltre.players.clothes[xPlayer.identifier][ValidateID].skin = json.encode(skin)
                voltre.players.clothes[xPlayer.identifier][ValidateID].id = ValidateID
            end
            MySQL.Async.execute("INSERT INTO vclothes (label, skin, type, identifier) VALUES (@label, @skin, @type, @identifier)", {
                ["@label"] = tostring(label),
                ["@skin"] = json.encode(skin),
                ["@type"] = "vetement",
                ["@identifier"] = xPlayer.identifier 
            })
            xPlayer.showNotification('Vous avez crée une tenue (~g~'..label..'~s~)')
            TriggerClientEvent("Voltre:recieveclientsidevetement", xPlayer.source, voltre.players.clothes[xPlayer.identifier])
        end
    end]]
end)

RegisterNetEvent("Voltre:paidaccesoires", function(type, name, skin)
    --[[local xPlayer = ESX.GetPlayerFromId(source)
    local IdTenue = math.random(11111,99999)
    local IdTenue2 = math.random(11111,99999)
    local ValidateID = IdTenue+IdTenue2

    if xPlayer.getAccount('cash').money >= 300 then 
        xPlayer.removeAccountMoney('cash', 300)
        if not voltre.players.clothes[xPlayer.identifier][ValidateID] then
            voltre.players.clothes[xPlayer.identifier][ValidateID] = {}
            voltre.players.clothes[xPlayer.identifier][ValidateID].identifier = xPlayer.identifier
            voltre.players.clothes[xPlayer.identifier][ValidateID].label = name
            voltre.players.clothes[xPlayer.identifier][ValidateID].type = type
            voltre.players.clothes[xPlayer.identifier][ValidateID].skin = json.encode(skin)
            voltre.players.clothes[xPlayer.identifier][ValidateID].id = ValidateID
        end
        MySQL.Async.execute("INSERT INTO vclothes (label, skin, type, identifier) VALUES (@label, @skin, @type, @identifier)", {
            ["@label"] = tostring(name),
            ["@skin"] = json.encode(skin),
            ["@type"] = type,
            ["@identifier"] = xPlayer.identifier 
        })
        
        TriggerClientEvent("Voltre:recieveclientsidevetement", xPlayer.source, voltre.players.clothes[xPlayer.identifier])
        xPlayer.showNotification("Vous venez d'acheter un "..type.."")
    else
        xPlayer.showNotification("Vous n'avez pas les fonds nécéssaires")
    end]]
end)

RegisterNetEvent('Voltre:donnertenue', function(player, id)
    local xPlayer = ESX.GetPlayerFromId(source)
    local tPlayer = ESX.GetPlayerFromId(player)

    if tPlayer ~= nil then
        if voltre.players.clothes[xPlayer.identifier][id] then
            voltre.players.clothes[tPlayer.identifier][id] = {}
            voltre.players.clothes[tPlayer.identifier][id] = voltre.players.clothes[xPlayer.identifier][id]
            voltre.players.clothes[xPlayer.identifier][id] = nil
            TriggerClientEvent("Voltre:recieveclientsidevetement", xPlayer.source, voltre.players.clothes[xPlayer.identifier])
            TriggerClientEvent("Voltre:recieveclientsidevetement", tPlayer.source, voltre.players.clothes[tPlayer.identifier])
            xPlayer.showNotification(" Vous avez donné votre tenue ")
            tPlayer.showNotification(" Vous avez reçu une tenue ")
            MySQL.Async.execute("UPDATE vclothes set identifier = @identifier WHERE id = @id", {
                ["@identifier"] = tPlayer.identifier,
                ["@id"] = id
            })
            MySQL.Async.execute("DELETE FROM vclothes WHERE id = @id and identifier = @identifier", {
                ["@identifier"] = xPlayer.identifier,
                ["@id"] = id
            })
        end
    end
end)

RegisterNetEvent('Voltre:RenameTenue', function(id, NewLabel)
    local xPlayer = ESX.GetPlayerFromId(source)
    if voltre.players.clothes[xPlayer.identifier][id] then
        if voltre.players.clothes[xPlayer.identifier][id].identifier == xPlayer.identifier then
            xPlayer.showNotification('Vous avez renommer votre tenue (~g~'..voltre.players.clothes[xPlayer.identifier][id].label..'~s~)')
            voltre.players.clothes[xPlayer.identifier][id].label = NewLabel
            TriggerClientEvent("Voltre:recieveclientsidevetement", xPlayer.source, voltre.players.clothes[xPlayer.identifier])
            MySQL.Async.execute("UPDATE vclothes set name = @name WHERE id = @id", {
                ["@name"] = tostring(NewLabel),
                ["@id"] = id
            })
        else
            --ExecuteCommand("ban " .. source .. " 0 Tentative de triche vêtement (0)")
            return
        end
    end
end)

RegisterNetEvent('Voltre:deletetenue', function(id, NewLabel)
    local xPlayer = ESX.GetPlayerFromId(source)
    if voltre.players.clothes[xPlayer.identifier][id] then
        if voltre.players.clothes[xPlayer.identifier][id].identifier == xPlayer.identifier then
            xPlayer.showNotification('Vous avez supprimer votre tenue (~g~'..voltre.players.clothes[xPlayer.identifier][id].label..'~s~)')
            voltre.players.clothes[xPlayer.identifier][id] = nil
            TriggerClientEvent("Voltre:recieveclientsidevetement", xPlayer.source, voltre.players.clothes[xPlayer.identifier])
            MySQL.Async.execute("DELETE FROM vclothes WHERE id = @id", {
                ["@id"] = id
            })
        else
            --ExecuteCommand("ban " .. source .. " 0 Tentative de triche vêtement (1)")
            return
        end
    end
end)

RegisterNetEvent("Voltre:tenuegarderobe", function(typee, id)
    local xPlayer = ESX.GetPlayerFromId(source)
    if voltre.players.clothes[xPlayer.identifier][id] then
        if voltre.players.clothes[xPlayer.identifier][id].identifier == xPlayer.identifier then
            if typee == "equip" then 
                voltre.players.clothes[xPlayer.identifier][id].equip = "y"
                xPlayer.showNotification('Vous avez équiper votre tenue (~g~'..voltre.players.clothes[xPlayer.identifier][id].label..'~s~)')
                TriggerClientEvent("Voltre:recieveclientsidevetement", xPlayer.source, voltre.players.clothes[xPlayer.identifier])
                MySQL.Async.execute("UPDATE vclothes set equip = @equip WHERE id = @id", {
                    ["@id"] = id,
                    ["@equip"] = tostring("y")
                })
            elseif typee == "deposit" then 
                voltre.players.clothes[xPlayer.identifier][id].equip = "n"
                MySQL.Async.execute("UPDATE vclothes set equip = @equip WHERE id = @id", {
                    ["@id"] = id,
                    ["@equip"] = "n"
                })
                xPlayer.showNotification('Vous avez déposer votre tenue (~g~'..voltre.players.clothes[xPlayer.identifier][id].label..'~s~)')
                TriggerClientEvent("Voltre:recieveclientsidevetement", xPlayer.source, voltre.players.clothes[xPlayer.identifier])
            end
        else
            -- ExecuteCommand("ban " .. source .. " 0 Tentative de triche vêtement (2)")
        end
    end
end)

RegisterNetEvent("RecieveVetement", function()
    local xPlayer = ESX.GetPlayerFromId(source)
    if (not xPlayer) then return end
    if not voltre.players.clothes[xPlayer.identifier] then 
        voltre.players.clothes[xPlayer.identifier] = {}
        TriggerClientEvent("Voltre:recieveclientsidevetement", xPlayer.source, nil)
    else
        TriggerClientEvent("Voltre:recieveclientsidevetement", xPlayer.source, voltre.players.clothes[xPlayer.identifier])
    end
end)

RegisterNetEvent('Voltre:charCreator:finish')
AddEventHandler('Voltre:charCreator:finish', function(data)   
    local src = source

    local xPlayer = ESX.GetPlayerFromId(source)
    if not xPlayer then 
        voltre.DebugPrint('[CharCreator Server] ERROR: xPlayer is nil for source', src)
        return 
    end
    
    local firstname = data.firstName
    local lastname = data.lastName
    local dateofbirth = data.birthdate
    local sex = data.gender == "m" and 0 or 1
    local Taille = data.height or 180
    
    MySQL.Async.execute("UPDATE users SET firstname = @firstname, lastname = @lastname, dateofbirth = @dateofbirth, sex = @sex, height = @height WHERE identifier = @identifier", {
        ['@firstname'] = firstname,
        ['@lastname'] = lastname,
        ['@dateofbirth'] = dateofbirth,
        ['@sex'] = sex,
        ['@identifier'] = xPlayer.identifier,
        ["@height"] = Taille
        
    }, function(affected) 
        if affected then
            xPlayer.firstname = firstname
            xPlayer.lastname = lastname
            xPlayer.dateofbirth = dateofbirth
            xPlayer.sex = sex
            xPlayer.name = firstname .. " " .. lastname

            ESX.ScheduleAdminRefresh(src)

            TriggerClientEvent("esx:charCreator:finish", src)
            
            if Config.Tutorial and Config.Tutorial.enabled then
                Citizen.SetTimeout(2000, function()
                    MySQL.Async.fetchScalar('SELECT tutorial_completed FROM users WHERE identifier = @identifier', {
                        ['@identifier'] = xPlayer.identifier
                    }, function(result)
                        local needsTutorial = (result == false or result == 0 or result == nil)
                        if needsTutorial then
                            local jobCenterCoords = Config.Tutorial.jobCenter.coords
                            if not jobCenterCoords and Config.FreeJobs and Config.FreeJobs.Agence and Config.FreeJobs.Agence.InteractionCoords then
                                local ic = Config.FreeJobs.Agence.InteractionCoords
                                jobCenterCoords = vector3(ic.x, ic.y, ic.z)
                            end
                            
                            TriggerClientEvent('voltre:tutorial:started', src, {
                                jobCenterCoords = jobCenterCoords,
                            })
                        else
                            --voltre.DebugPrint('[CharCreator Server] Player does not need tutorial (already completed)')
                        end
                    end)
                end)
            else
                --voltre.DebugPrint('[CharCreator Server] Tutorial is disabled in config')
            end
        else
            voltre.DebugPrint('[CharCreator Server] ERROR: DB update failed, affected =', affected)
        end
    end)
end)