local function convertCraftsToRecipes(crafts)
    local recipes = {}
    if not crafts then return recipes end
    for key, craft in pairs(crafts) do
        local reqs = {}
        if craft.Requirements then
            for _, req in pairs(craft.Requirements) do
                table.insert(reqs, {
                    itemName = req.ItemName,
                    label = req.Label,
                    amount = req.Amount or 1,
                })
            end
        end
        table.insert(recipes, {
            id = string.lower(key),
            label = craft.Label or key,
            item = string.lower(craft.Item or key),
            type = "item",
            time = craft.Time or 5,
            category = craft.Category or "nourriture",
            description = craft.Description or craft.Label or "",
            requirements = reqs,
        })
    end
    return recipes
end

local function syncRestaurantCraftTables()
    while not Config.Crafting do Wait(0) end
    Config.Crafting.Tables = Config.Crafting.Tables or {}

    local cleaned = {}
    for _, t in ipairs(Config.Crafting.Tables) do
        if not t._isRestaurant then
            table.insert(cleaned, t)
        end
    end
    Config.Crafting.Tables = cleaned
    if SaveData.json and SaveData.json["entreprises"] and SaveData.json["entreprises"]["Restaurant"] then
        for name, data in pairs(SaveData.json["entreprises"]["Restaurant"]) do
            local coords = nil
            if data.PosRecolte then
                coords = vector3(data.PosRecolte.x, data.PosRecolte.y, data.PosRecolte.z)
            end
            table.insert(Config.Crafting.Tables, {
                id = "restaurant_" .. name,
                label = "Cuisine - " .. (data.label or name),
                coords = coords,
                conditions = { job = name },
                recipes = convertCraftsToRecipes(data.crafts),
                _isRestaurant = true,
            })
        end
    end
end

RegisterNetEvent('Voltre:DeleteRestaurant', function(value)
	local xPlayer = ESX.GetPlayerFromId(source)
	if Config.GroupeHighPerm[xPlayer.getGroup()] ~= nil then
		if SaveData.json["entreprises"]["Restaurant"][value] then
			SaveData.json["entreprises"]["Restaurant"][value] = nil
            Cache.SaveOne('entreprises')
            syncRestaurantCraftTables()
            TriggerClientEvent("voltre:restaurant:recevieData", -1, SaveData.json["entreprises"]["Restaurant"])
        else
            print("Tentative de suppression d'une entreprise inexistante ("..value..")")
		end
	end
end)

-- NOTE: restaurant branding is now handled by the generic
-- "voltre:entreprise:updateBrand" event (see modules/jobs/society/server/server.lua)

RegisterNetEvent("voltre:restaurant:updateOrderPoints", function(namejob, orderPoints)
    local xPlayer = ESX.GetPlayerFromId(source)
    if Config.GroupeHighPerm[xPlayer.getGroup()] == nil then return end
    local data = SaveData.json["entreprises"]["Restaurant"][namejob]
    if not data then return end
    local clean = {}
    if type(orderPoints) == "table" then
        for _, p in pairs(orderPoints) do
            local x, y, z = p.x or p[1], p.y or p[2], p.z or p[3]
            if x and y and z then
                table.insert(clean, { x = x, y = y, z = z })
            end
        end
    end
    data.orderPoints = clean
    TriggerClientEvent("voltre:restaurant:recevieData", -1, SaveData.json["entreprises"]["Restaurant"])
end)

RegisterNetEvent("voltre:editRestaurant", function(namejob, craft)
    local xPlayer = ESX.GetPlayerFromId(source)
    if Config.GroupeHighPerm[xPlayer.getGroup()] == nil then return end
    if SaveData.json["entreprises"]["Restaurant"][namejob] == nil then return end
    SaveData.json["entreprises"]["Restaurant"][namejob].crafts = craft
    for k,v in pairs(craft) do
        voltre.fct.sql.CheckItemAndCreate(v.Item, v.Label)
    end
    syncRestaurantCraftTables()
    TriggerClientEvent("voltre:restaurant:recevieData", -1, SaveData.json["entreprises"]["Restaurant"])
end)

RegisterNetEvent("voltre:createrestaurant", function(namejob, labeljob, PositionRecolte, PositionBoss, PosVestiaire, blipsprite, blipcolor, craft, PosTraitement, brand)
    local xPlayer = ESX.GetPlayerFromId(source)
    if Config.GroupeHighPerm[xPlayer.getGroup()] == nil then return end
    brand = brand or {}
    SaveData.json["entreprises"]["Restaurant"][namejob] = {}
    SaveData.json["entreprises"]["Restaurant"][namejob].type = "Restaurant"
    SaveData.json["entreprises"]["Restaurant"][namejob].name = namejob
    SaveData.json["entreprises"]["Restaurant"][namejob].label = labeljob
    SaveData.json["entreprises"]["Restaurant"][namejob].PosRecolte = PositionRecolte
    SaveData.json["entreprises"]["Restaurant"][namejob].PosTraitement = PosTraitement
    SaveData.json["entreprises"]["Restaurant"][namejob].PosVestiaire = PosVestiaire
    SaveData.json["entreprises"]["Restaurant"][namejob].PosBoss = PositionBoss
    SaveData.json["entreprises"]["Restaurant"][namejob].sprite = blipsprite
    SaveData.json["entreprises"]["Restaurant"][namejob].color = blipcolor
    SaveData.json["entreprises"]["Restaurant"][namejob].crafts = craft
    SaveData.json["entreprises"]["Restaurant"][namejob].brandColor = brand.brandColor or "#e74c3c"
    SaveData.json["entreprises"]["Restaurant"][namejob].logo = brand.logo or ""
    SaveData.json["entreprises"]["Restaurant"][namejob].description = brand.description or ""
    SaveData.json["entreprises"]["Restaurant"][namejob].orderPoints = brand.orderPoints or {}
    
    for k,v in pairs(craft) do
        voltre.fct.sql.CheckItemAndCreate(v.Item, v.Label)
    end
    voltre.fct.sql.CheckJobAndCreate(namejob, labeljob)
    voltre.fct.sql.CheckSocietyAndCreate(namejob, labeljob)
    voltre.fct.sql.CheckJobGradeAndCreate(namejob, "Directeur", "boss", 4)
    voltre.fct.sql.CheckJobGradeAndCreate(namejob, "Chef de Cuisine", "chef-cuisine", 3)
    voltre.fct.sql.CheckJobGradeAndCreate(namejob, "Cuisinier", "cuisine", 2)
    voltre.fct.sql.CheckJobGradeAndCreate(namejob, "Employer", "employer", 1)
    voltre.fct.sql.CheckJobGradeAndCreate(namejob, "Stagiere", "stage", 0)
    Cache.SaveOne('entreprises')
    syncRestaurantCraftTables()
    TriggerClientEvent("voltre:restaurant:recevieData", -1, SaveData.json["entreprises"]["Restaurant"])
end)

RegisterNetEvent("voltre:addRestaurantFarm", function(namejob)
    local xPlayer = ESX.GetPlayerFromId(source)
    if Config.GroupeHighPerm[xPlayer.getGroup()] == nil then return end
    if SaveData.json["entreprises"]["Restaurant"][namejob] == nil then 
        return 
    end
    if SaveData.json["entreprises"]["Farm"][namejob] ~= nil then 
        xPlayer.showNotification("Il y a déja un point de Farm pour ce restaurant.")
        return 
    end
end)

RegisterNetEvent("voltre:restaurant:getData")
AddEventHandler('voltre:restaurant:getData', function()
    while not SaveData.cacheLoad do Wait(100) end
    local src = source
    if src == nil then return end
    syncRestaurantCraftTables()
    TriggerClientEvent("voltre:restaurant:recevieData", source, SaveData.json["entreprises"]["Restaurant"])
end)