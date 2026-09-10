voltre.players.afk = {}
ListeJoueursSleepy = {}

RegisterNetEvent("voltre:afk:join", function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local afk = xPlayer.getAfk()
    voltre.players.afk[xPlayer.getIdunique()] = {
        idunique = xPlayer.getIdunique(),
        source = source,
        point = afk.point,
        time = afk.time,
        ostime = os.time(),
    }
    SetEntityCoords(GetPlayerPed(source), 482.894348, 4811.361328, -58.382843)
    TriggerClientEvent("voltre:afk:init", source)
end)

RegisterNetEvent("voltre:afk:exit", function()
    local xPlayer = ESX.GetPlayerFromId(source)
    if voltre.players.afk[xPlayer.getIdunique()] == nil then return end
    xPlayer.setAfk(voltre.players.afk[xPlayer.getIdunique()].time, voltre.players.afk[xPlayer.getIdunique()].point)
    voltre.players.afk[xPlayer.getIdunique()] = nil
    SetEntityCoords(GetPlayerPed(source), 218.774261, -808.359192, 30.707996)
    TriggerClientEvent("voltre:afk:init", source)
end) 

RegisterNetEvent("voltre:afk:gettimer", function()
    local xPlayer = ESX.GetPlayerFromId(source)
    if voltre.players.afk[xPlayer.getIdunique()] == nil then return end
    xPlayer.setAfk(voltre.players.afk[xPlayer.getIdunique()].time, voltre.players.afk[xPlayer.getIdunique()].point)
    TriggerClientEvent("voltre:afk:refresh", source, voltre.players.afk[xPlayer.getIdunique()].time, voltre.players.afk[xPlayer.getIdunique()].point)
end)

RegisterNetEvent("voltre:afk:shopbuy")
AddEventHandler('voltre:afk:shopbuy', function(product)
    local xPlayer = ESX.GetPlayerFromId(source)
    if voltre.players.afk[xPlayer.getIdunique()] == nil then return end
    if Config.Afk.Invest.Lot[product] == nil then return end
    xPlayer.setAfk(voltre.players.afk[xPlayer.getIdunique()].time, voltre.players.afk[xPlayer.getIdunique()].point)
    local afk = xPlayer.getAfk()
    if afk.point < Config.Afk.Invest.Lot[product].price then return end

    xPlayer.setAfk(voltre.players.afk[xPlayer.getIdunique()].time, voltre.players.afk[xPlayer.getIdunique()].point-Config.Afk.Invest.Lot[product].price)
    xPlayer.addInventoryItem(Config.Afk.Invest.Lot[product].itemtogive, 1)

    local afk = xPlayer.getAfk()
    voltre.players.afk[xPlayer.getIdunique()].point = afk.point
    TriggerClientEvent("voltre:afk:refresh", source, voltre.players.afk[xPlayer.getIdunique()].time, voltre.players.afk[xPlayer.getIdunique()].point)
end)


RegisterNetEvent("voltre:afk:iamafk:sleep")
AddEventHandler('voltre:afk:iamafk:sleep', function(data)
    local src = source
    if ListeJoueursSleepy[src] ~= nil then return end
    ListeJoueursSleepy[src] = {
        time = (12*15),
        coords = vec3(data.x, data.y, data.z-0.80)
    }
    TriggerClientEvent("voltre:afk:sleep:recevieplayers", -1, ListeJoueursSleepy)
end)

RegisterNetEvent("voltre:afk:iamafk:sleep:udapte")
AddEventHandler('voltre:afk:iamafk:sleep:udapte', function(data)
    local src = source
    if ListeJoueursSleepy[src] == nil then return end
    voltre.DebugPrint(ListeJoueursSleepy[src].time, data/60)
    ListeJoueursSleepy[src].time = data/60
    TriggerClientEvent("voltre:afk:sleep:recevieplayers", -1, ListeJoueursSleepy)
end)

RegisterNetEvent("voltre:afk:iamnotafk:sleep")
AddEventHandler('voltre:afk:iamnotafk:sleep', function()
    local src = source
    if ListeJoueursSleepy[src] == nil then return end
    ListeJoueursSleepy[src] = nil
    TriggerClientEvent("voltre:afk:sleep:recevieplayers", -1, ListeJoueursSleepy)
end)

AddEventHandler('esx:playerDropped', function(eventSrc, xPlayer)
    if ListeJoueursSleepy[src] ~= nil then 
        ListeJoueursSleepy[src] = nil
    end
    
    if voltre.players.afk[xPlayer.getIdunique()] ~= nil then
        xPlayer.setAfk(voltre.players.afk[xPlayer.getIdunique()].time, voltre.players.afk[xPlayer.getIdunique()].point)
        voltre.players.afk[xPlayer.getIdunique()] = nil
    end
end)

Citizen.CreateThread(LPH_NO_VIRTUALIZE(function()
    while true do
        for k,v in pairs(voltre.players.afk) do
            local xPlayer = ESX.GetPlayerFromId(v.source)
            if xPlayer == nil then
                voltre.players.afk[v.idunique] = nil
            else
                voltre.players.afk[v.idunique].time = voltre.players.afk[v.idunique].time + 1
                voltre.players.afk[v.idunique].point = voltre.players.afk[v.idunique].point + 0.5
                TriggerClientEvent("esx:showNotification", voltre.players.afk[v.idunique].source, "Vous avez gagner 0.5 point afk.")
                xPlayer.setAfk(voltre.players.afk[xPlayer.getIdunique()].time, voltre.players.afk[xPlayer.getIdunique()].point)                
            end
            TriggerClientEvent("voltre:afk:refresh", xPlayer.source, voltre.players.afk[xPlayer.getIdunique()].time, voltre.players.afk[xPlayer.getIdunique()].point)
        end
        Wait(60000)
    end
end))
