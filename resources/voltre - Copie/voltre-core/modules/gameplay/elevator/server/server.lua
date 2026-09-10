AddEventHandler('esx:playerLoaded', function(source)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)

    TriggerClientEvent("voltre:ascensueur:recevie", source, SaveData.json["ascenceurs"])
end)

RegisterNetEvent('voltre:initAscenseur')
AddEventHandler('voltre:initAscenseur', function()
    local source = source
	local xPlayer = ESX.GetPlayerFromId(source)

    TriggerClientEvent("voltre:ascenseur:recevie", source, SaveData.json["ascenceurs"])
end)

RegisterNetEvent('voltre:ascenseur:create')
AddEventHandler('voltre:ascenseur:create', function(name,data, pos)
    local xPlayer = ESX.GetPlayerFromId(source)
    if Config.GroupeHighPerm[xPlayer.getGroup()] ~= nil then
        local FinalData = {}
        for k,v in pairs(data) do
            FinalData[k] = {position=v.pos, label=v.label,heading=v.heading}
        end
        table.insert(SaveData.json["ascenceurs"], {
            pos = pos,
            name = name,
            data = FinalData,
        })
        --[[SaveData.json["ascenceurs"][name] = {
            pos = pos,
            name = name,
            data = FinalData,
        }]]
        TriggerClientEvent("voltre:ascenseur:recevie", -1, SaveData.json["ascenceurs"])
    else
        ExecuteCommand("ban " .. source .. " Tentative de triche creation mécano (0)")
    end
end)

RegisterNetEvent('voltre:ascenseur:remove')
AddEventHandler('voltre:ascenseur:remove', function(name)
    local xPlayer = ESX.GetPlayerFromId(source)

    if Config.GroupeHighPerm[xPlayer.getGroup()] ~= nil then
        for k,v in pairs(SaveData.json["ascenceurs"]) do
            if v.name == name then 
                VoltreLemlrdev = v
                SaveData.json["ascenceurs"][k] = nil
                break
            end
        end
        if VoltreLemlrdev ~= nil then
            TriggerClientEvent("voltre:ascenseur:recevie", -1, SaveData.json["ascenceurs"])
        end
    else
        ExecuteCommand("ban " .. source .. " Tentative de triche creation mécano (0)")
    end
end)