local API_ENDPOINT = "https://api.voltre.fr"

local Figlet = require('lib/figlet')

local function PrintServer()
    local fontPath = GetResourcePath(GetCurrentResourceName()) .. "/lib/fonts/Big.flf"
    Figlet.readfont(fontPath)
    local asciiArt = Figlet.getString(string.upper(voltre.getConvarKey("serverName")), true, true)
    print("")
    print("")
    print("")
    print(voltre.getConvarKey("jsColor")..asciiArt.."^7") -- Affiche dans la console serveur
    print("")
    print("     [^5AUTHOR^7] Base developped by Voltre, Veqta, Maisto and Nykz")
    print("     [^5DISCORD^7] " .. (voltre.getConvarKey("serverDiscord") or "osnium FA") .. " ^7")
    print("")
    print("")
    printStat(ESX.Table.SizeOf(SaveData.Players.Offline.List), "Joueur(s)", SaveData.Players.Offline.Loaded ~= false)
    printStat(ESX.Table.SizeOf(SaveData.Admin.Staffs.List), "Staff(s)", SaveData.Admin.Staffs.Load ~= false)
    printStat(ESX.Table.SizeOf(SaveData.SafeZone.List), "SafeZone(s)", SaveData.SafeZone.Load ~= false)
    printStat(ESX.Table.SizeOf(SaveData.World.Props), "Prop(s) (Monde)", SaveData.World.Props ~= nil)
    printStat(ESX.Table.SizeOf(SaveData.World.Vehicles), "Vehicule(s) (Monde)", SaveData.World.Vehicles ~= nil)
    printStat(ESX.Table.SizeOf(SaveData.json.owned_vehicles), "Vehicule(s) (Garage)", SaveData.json.owned_vehicles ~= nil)
    print("")
    print("")
    voltre.auth.visual = true
end

exports("showLicense", function()
    while (not voltre.auth.authorized) do Wait(10) end
    if not voltre.auth.authorized then return end

    voltre.auth.visual = false

    local success, err = pcall(function()
        PrintServer()
    end)
    if not success then
        voltre.DebugPrint("[Auth] Error while printing server info: "..tostring(err))
        return false
    end
    return true
end)