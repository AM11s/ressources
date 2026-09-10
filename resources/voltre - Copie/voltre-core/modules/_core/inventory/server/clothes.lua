while not _G.InventoryTransfersLoaded do
    Wait(0)
end

local Clothes = {}

local ClothesCache = {}

function Clothes.GetAll(identifier)
    if ClothesCache[identifier] then
        return ClothesCache[identifier]
    end
    return {}
end

function Clothes.SetCache(identifier, clothes)
    ClothesCache[identifier] = clothes
end

function Clothes.ClearCache(identifier)
    ClothesCache[identifier] = nil
end

function Clothes.Load(playerId, cb)
    local xPlayer = ESX.GetPlayerFromId(playerId)
    if not xPlayer then return cb({}) end
    
    local identifier = xPlayer.identifier
    
    if ClothesCache[identifier] then
        return cb(ClothesCache[identifier])
    end
    
    MySQL.Async.fetchAll('SELECT * FROM vclothes WHERE identifier = @identifier', {
        ['@identifier'] = identifier
    }, function(result)
        local clothes = {}
        
        for _, row in ipairs(result or {}) do
            local clotheData = row.clothe or row.data or row.skin
            if type(clotheData) == "string" then
                clotheData = json.decode(clotheData) or {}
            end
            clotheData = clotheData or {}
            
            table.insert(clothes, {
                id = row.id,
                type = row.type,
                name = row.name,
                label = row.label or row.name,
                clothe = clotheData,
            })
        end
        
        ClothesCache[identifier] = clothes
        cb(clothes)
    end)
end

-- SQL Migration: add label column to vclothes if it doesn't exist
MySQL.ready(function()
    MySQL.Async.execute([[
        ALTER TABLE `vclothes` 
        ADD COLUMN IF NOT EXISTS `label` VARCHAR(255) DEFAULT NULL AFTER `name`;
    ]], {}, function()
        --print("[Clothes] SQL migration complete - label column added")
    end)
end)

function Clothes.Add(playerId, clotheType, name, label, clotheData, cb)
    local xPlayer = ESX.GetPlayerFromId(playerId)
    if not xPlayer then 
        return cb(false) 
    end
    
    local identifier = xPlayer.identifier
    
    -- Store both name and label
    MySQL.Async.insert('INSERT INTO vclothes (identifier, type, name, label, data) VALUES (@identifier, @type, @name, @label, @data)', {
        ['@identifier'] = identifier,
        ['@type'] = clotheType,
        ['@name'] = name,
        ['@label'] = label,
        ['@data'] = json.encode(clotheData)
    }, function(insertId)
        if insertId and insertId > 0 then
            Clothes.ClearCache(identifier)
            cb(true, insertId)
        else
            cb(false)
        end
    end)
end

function Clothes.Remove(playerId, clotheId, cb)
    local xPlayer = ESX.GetPlayerFromId(playerId)
    if not xPlayer then return cb(false) end
    
    local identifier = xPlayer.identifier
    
    -- First check if it's a bag in vbackpacks
    if _G.InventoryBackpacks then
        MySQL.Async.fetchScalar('SELECT COUNT(*) FROM vbackpacks WHERE clothe_id = @id AND identifier = @identifier', {
            ['@id'] = clotheId,
            ['@identifier'] = identifier
        }, function(bagCount)
            if bagCount and bagCount > 0 then
                -- It's a bag, delete from vbackpacks
                _G.InventoryBackpacks.DeleteBackpack(identifier, clotheId)
                cb(true)
            else
                -- Not a bag, delete from vclothes
                MySQL.Async.execute('DELETE FROM vclothes WHERE id = @id AND identifier = @identifier', {
                    ['@id'] = clotheId,
                    ['@identifier'] = identifier
                }, function(rowsChanged)
                    if rowsChanged > 0 then
                        Clothes.ClearCache(identifier)
                    end
                    cb(rowsChanged > 0)
                end)
            end
        end)
    else
        -- Backpack system not loaded, delete from vclothes
        MySQL.Async.execute('DELETE FROM vclothes WHERE id = @id AND identifier = @identifier', {
            ['@id'] = clotheId,
            ['@identifier'] = identifier
        }, function(rowsChanged)
            if rowsChanged > 0 then
                Clothes.ClearCache(identifier)
            end
            cb(rowsChanged > 0)
        end)
    end
end

function Clothes.Rename(playerId, clotheId, newName, cb)
    local xPlayer = ESX.GetPlayerFromId(playerId)
    if not xPlayer then return cb(false) end
    
    local identifier = xPlayer.identifier
    
    MySQL.Async.execute('UPDATE vclothes SET name = @name WHERE id = @id AND identifier = @identifier', {
        ['@id'] = clotheId,
        ['@name'] = newName,
        ['@identifier'] = identifier
    }, function(rowsChanged)
        if rowsChanged > 0 then
            Clothes.ClearCache(identifier)
        end
        cb(rowsChanged > 0)
    end)
end

function Clothes.Transfer(playerId, clotheId, targetId, cb)
    local xPlayer = ESX.GetPlayerFromId(playerId)
    local xTarget = ESX.GetPlayerFromId(targetId)
    
    if not xPlayer or not xTarget then return cb(false) end
    
    local sourceIdentifier = xPlayer.identifier
    local targetIdentifier = xTarget.identifier
    
    -- First check if it's a bag in vbackpacks
    if _G.InventoryBackpacks then
        MySQL.Async.fetchScalar('SELECT COUNT(*) FROM vbackpacks WHERE clothe_id = @id AND identifier = @identifier', {
            ['@id'] = clotheId,
            ['@identifier'] = sourceIdentifier
        }, function(bagCount)
            if bagCount and bagCount > 0 then
                -- It's a bag, check if target already has 3 bags
                _G.InventoryBackpacks.CountPlayerBackpacks(targetIdentifier, function(count)
                    if count >= 3 then
                        xPlayer.showAdvancedNotification("Informations", "Inventaire", xTarget.name .. " a déjà 3 sacs, impossible de lui en donner plus", 'CHAR_REDSIDE', 0, 7)
                        xTarget.showAdvancedNotification("Informations", "Inventaire", "Vous avez déjà 3 sacs, vous ne pouvez pas en recevoir plus", 'CHAR_REDSIDE', 0, 7)
                        return cb(false)
                    end
                    
                    -- Target can receive the bag, transfer in vbackpacks
                    MySQL.Async.execute('UPDATE vbackpacks SET identifier = @target WHERE clothe_id = @id AND identifier = @source', {
                        ['@id'] = clotheId,
                        ['@source'] = sourceIdentifier,
                        ['@target'] = targetIdentifier
                    }, function(rowsChanged)
                        cb(rowsChanged > 0)
                    end)
                end)
            else
                -- Not a bag, transfer in vclothes normally
                performTransfer(clotheId, sourceIdentifier, targetIdentifier, cb)
            end
        end)
    else
        -- Backpack system not loaded, proceed with vclothes
        performTransfer(clotheId, sourceIdentifier, targetIdentifier, cb)
    end
end

local function performTransfer(clotheId, sourceIdentifier, targetIdentifier, cb)
    MySQL.Async.execute('UPDATE vclothes SET identifier = @target WHERE id = @id AND identifier = @source', {
        ['@id'] = clotheId,
        ['@source'] = sourceIdentifier,
        ['@target'] = targetIdentifier
    }, function(rowsChanged)
        if rowsChanged > 0 then
            Clothes.ClearCache(sourceIdentifier)
            Clothes.ClearCache(targetIdentifier)
        end
        cb(rowsChanged > 0)
    end)
end

function Clothes.SaveEquipped(playerId, equippedClothes)
    local xPlayer = ESX.GetPlayerFromId(playerId)
    if not xPlayer then return end
    
    xPlayer.set("clothes_equiped", equippedClothes)
end

ESX.RegisterServerCallback('voltre:inventory:getClothes', function(source, cb)
    Clothes.Load(source, cb)
end)

RegisterNetEvent("voltre:inventory:saveEquippedClothes", function(equippedClothes)
    Clothes.SaveEquipped(source, equippedClothes)
end)

RegisterNetEvent("voltre:inventory:deleteClothes", function(clotheId)
    Clothes.Remove(source, clotheId, function(success)
        if success then
            TriggerClientEvent("inventory:sendMessage", source, "~g~Vêtement supprimé")
        end
    end)
end)

RegisterNetEvent("voltre:inventory:renameClothes", function(clotheId, newName)
    Clothes.Rename(source, clotheId, newName, function(success)
        if success then
            TriggerClientEvent("inventory:sendMessage", source, "~g~Vêtement renommé")
        end
    end)
end)

RegisterNetEvent("voltre:inventory:transferClothes", function(clotheId, targetId)
    Clothes.Transfer(source, clotheId, targetId, function(success)
        if success then
            TriggerClientEvent("inventory:sendMessage", source, "~g~Vêtement transféré")
            TriggerClientEvent("inventory:sendMessage", targetId, "~g~Vous avez reçu un vêtement")
        end
    end)
end)

AddEventHandler("esx:playerDropped", function(playerId, reason)
    local xPlayer = ESX.GetPlayerFromId(playerId)
    if xPlayer then
        Clothes.ClearCache(xPlayer.identifier)
    end
end)

_G.InventoryClothes = Clothes
_G.InventoryClothesLoaded = true

exports('ClearClothesCache', function(identifier)
    Clothes.ClearCache(identifier)
end)

return Clothes
