voltreGF = {
    zoneGf = {},
    myZoneGF = {},
    isLoad = false,
    InZone = false,
    CountPlayers = 0,
    myStats = {kills = 0,deaths = 0},
    allStats = {},
}

Citizen.CreateThread(function()
    TriggerServerEvent("voltre:zonegf:getallzone")
end)

RegisterNetEvent('voltre:zonegf:initzonegf')
AddEventHandler('voltre:zonegf:initzonegf', function(result)
    voltreGF.zoneGf = result
    voltreGF.isLoad = true
end)

RegisterNetEvent('voltre:zonegf:editOpen')
AddEventHandler('voltre:zonegf:editOpen', function(id, bool)
    voltreGF.zoneGf[id].isOpen = bool
end)
 
RegisterNetEvent('voltre:zonegf:leave')
AddEventHandler('voltre:zonegf:leave', function()
    quitteZoneGF()
    HideInfo() 
end)

RegisterNetEvent('voltre:zonegf:refreshStats')
AddEventHandler('voltre:zonegf:refreshStats', function(type, value)
    if type == "death" then
        voltreGF.myStats.deaths = voltreGF.myStats.deaths + 1
    elseif type == "kill" then
        voltreGF.myStats.kills = voltreGF.myStats.kills + 1
    end
end)

RegisterCommand('gunfight', function()
    if voltreGF.myZoneGF ~= nil then
        if voltreGF.zoneGf[voltreGF.myZoneGF] ~= nil then
            local playerPed = PlayerPedId()
            local coords = GetEntityCoords(playerPed, false)
        
            local configPosGF = voltreGF.zoneGf[voltreGF.myZoneGF].position
            if #(configPosGF.xy - coords.xy) < 500 then
                quitteZoneGF()
                HideInfo()
            else
                ESX.ShowNotification("Vous n\'êtes pas en zone GunFight")
            end
        end
    end
end)

function enterZoneGF()
    showMenu()
end

function getInZoneGF()
    return voltreGF.InZone
end

exports("getInZoneGF", function()
    return voltreGF.InZone
end)

function quitteZoneGF()
    ESX.TriggerServerCallback('voltre:zonegf:join', function(result) 
        voltreGF.zoneGf[voltreGF.myZoneGF].nbrPlayers = result
        voltreGF.CountPlayers = result
    end, voltreGF.myZoneGF, 'Leave')
    voltreGF.InZone = false
    HideInfo()
    RageUI.CloseAll()
end


function showMenu()
    local mainMenu = RageUI.CreateMenu('GunFight', 'Que souhaitez-vous faire ?')
    local subMenu = RageUI.CreateSubMenu(mainMenu, 'Gunfight', 'Que souhaitez-vous faire ?')
    local subMenu2 = RageUI.CreateSubMenu(mainMenu, 'Gunfight', 'Que souhaitez-vous faire ?')
    local subMenu3 = RageUI.CreateSubMenu(mainMenu, 'Gunfight', 'Que souhaitez-vous faire ?')

    ESX.TriggerServerCallback('voltre:gunfight:getAll', function(result) 
        voltreGF.myStats = result
    end, 'myStats')
    ESX.TriggerServerCallback('voltre:gunfight:getAll', function(result) 
        voltreGF.allStats = result
    end, 'allStats')

    if not voltreGF.InZone then
        FreezeEntityPosition(PlayerPedId(), true)
    end

    RageUI.Visible(mainMenu, not RageUI.Visible(mainMenu))
    while mainMenu do
        Citizen.Wait(0)
        RageUI.IsVisible(mainMenu, function()
            while not voltreGF.isLoad do return RageUI.Separator("Chargement en cours..") end
            if not voltreGF.InZone then

                for k,v in pairs(voltreGF.zoneGf) do
                    RageUI.Button(v.label, nil, {RightLabel=v.nbrPlayers.."/"..v.maxPlayers}, v.isOpen, {
                        onSelected = function()
                            RageUI.CloseAll()
                            voltreGF.myZoneGF = v.id
                            ESX.TriggerServerCallback('voltre:zonegf:join', function(result) 
                                voltreGF.zoneGf[voltreGF.myZoneGF].nbrPlayers = result
                            end, v.id, 'Join')
                            Citizen.Wait(500)
                            voltreGF.InZone = true
                            PlayerInit()
                        end
                    })
                end

                RageUI.Button('Classement', nil, { RightLabel = nil }, true, {
                    onSelected = function()
                    end
                }, subMenu3)
            else
                RageUI.Button('Quitter la partie', nil, { RightLabel = ('%s~s~ Personne(s)'):format(voltreGF.zoneGf[voltreGF.myZoneGF].nbrPlayers) }, true, {
                    onSelected = function()
                        ESX.TriggerServerCallback('voltre:zonegf:join', function(result) 
                            voltreGF.zoneGf[voltreGF.myZoneGF].nbrPlayers = result
                            voltreGF.CountPlayers = result
                        end, voltreGF.myZoneGF, 'Leave')
                        voltreGF.InZone = false
                        HideInfo()
                        RageUI.CloseAll()
                    end
                })
            end
        end)
        RageUI.IsVisible(subMenu, function()
            RageUI.Button('FFA', nil, { LeftBadge = RageUI.BadgeStyle.Star, RightLabel = ('%s~s~ Personne(s)'):format(voltreGF.CountPlayers) }, true, {
                onSelected = function()
                    RageUI.CloseAll()
                    ESX.TriggerServerCallback('GF:GameMode:Party', function(result) 
                        voltreGF.CountPlayers = result
                    end, 'FFA', 'Join')
                    Citizen.Wait(500)
                    voltreGF.InZone = true
                    PlayerInit()
                end
            })
        end)

        RageUI.IsVisible(subMenu2, function()
            if not voltreGF.myStats or voltreGF.myStats == {} then
                RageUI.Separator('Vous n\'avez pas encore de stats.')
            else
                RageUI.Button('Stats Personnelles', nil, {}, true, {
                    onActive = function()
                        RageUI.Info("~y~Vos Stats~s~", {'Joueur(s) Tué(s)', 'Nombre de Mort(s)', 'Votre Ratio'}, {voltreGF.myStats.kills, voltreGF.myStats.deaths, ESX.Math.Round(voltre.fct.math.CalculateKD(voltreGF.myStats), 1)})
                    end
                })
            end
        end)

        RageUI.IsVisible(subMenu3, function()
            for k,v in ipairs(voltreGF.allStats) do
                local TopLabel = nil
                --local description = "Kill(s): "..v.kills.." Mort(s): "..v.deaths.." KD: "..ESX.Math.Round(voltre.fct.math.CalculateKD(v), 1)
                if k == 1 then
                    TopLabel = "~h~Top 1~s~"
                elseif k == 2 then
                    TopLabel = "Top 2"
                elseif k == 3 then
                    TopLabel = "Top 3"
                end
                RageUI.Button(v.name, Config.GunFightZone.label, {RightLabel=TopLabel}, true, {
                    onActive = function()
                        RageUI.Info(TopLabel == nil and v.name or TopLabel.." : "..v.name.."", {'Kill(s)', 'Mort(s)', 'KD'}, {v.kills, v.deaths, ESX.Math.Round(voltre.fct.math.CalculateKD({kills=v.kills,deaths=v.deaths}), 1)})
                    end
                })
            end
        end)

        if not RageUI.Visible(mainMenu) and not RageUI.Visible(subMenu) and not RageUI.Visible(subMenu2) and not RageUI.Visible(subMenu3) then
            mainMenu = RMenu:DeleteType("mainMenu", true)
            subMenu = RMenu:DeleteType("subMenu", true)
            subMenu2 = RMenu:DeleteType("subMenu2", true)
            subMenu3 = RMenu:DeleteType("subMenu3", true)
            if not voltreGF.InZone then
                FreezeEntityPosition(PlayerPedId(), false)
            end
            break
        end
    end
end

function DrawMissionText(msg, time)
	ClearPrints()
	BeginTextCommandPrint('STRING')
	AddTextComponentSubstringPlayerName(msg)
	EndTextCommandPrint(time, true)
end

function PlayerInit()
    local CD = false

    while not voltreGF.InZone do
        Citizen.Wait(500)
    end
    Citizen.CreateThread(function()
        while voltreGF.InZone do
            Citizen.Wait(0)
            if not voltreGF.InZone then break end
            DrawMissionText("Utilisez la commande /gunfight pour quitter la zone.", 0)
        end
    end)
    while voltreGF.InZone do
        Citizen.Wait(0)
        if not voltreGF.InZone then break end
        if voltreGF.myStats == nil then
            voltreGF.myStats = {}
            voltreGF.myStats.kills = 0
            voltreGF.myStats.deaths = 0
        end
        ShowInfo(
            "Zone GunFight",  
            {
                {left = "Kill(s)", right = (voltreGF.myStats.kills), color = "rgb(255, 255, 255)"},
                {left = "Mort(s)", right = (voltreGF.myStats.deaths), color = "rgb(255, 255, 255)"},
                {left = "KD", right = (ESX.Math.Round(voltre.fct.math.CalculateKD(voltreGF.myStats), 1)), color = "rgb(255, 255, 255)"},
            }
        )
        Citizen.Wait(500)
    end
    HideInfo()
end

RegisterNetEvent('voltre:gunfight:newStat')
AddEventHandler('voltre:gunfight:newStat', function(...)
    local Args = {...}
    if Args[1] and voltreGF.InZone then
        if voltreGF.myStats == nil then voltreGF.myStats = {kills=0, deaths=0} end
        if Args[1] == 'd' then
            local canAction = ActionCooldown("zonegf-d", 1000)
            if not canAction then return end
            voltreGF.myStats.deaths = voltreGF.myStats.deaths + 1
        elseif Args[1] == 'k' then
            local canAction = ActionCooldown("zonegf-k", 1000)
            if not canAction then return end
            voltreGF.myStats.Kills = voltreGF.myStats.Kills + 1
        elseif Args[1] == 'p' then
            voltreGF.CountPlayers = Args[2]
        end
    end
end)