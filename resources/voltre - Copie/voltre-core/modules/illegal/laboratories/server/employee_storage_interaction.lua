-- Système d'interaction avec le stockage pour les employés
-- Gère la navigation vers le stockage, l'animation de fouille, et le retour

-- Position du stockage pour l'animation
local STORAGE_POSITION = vector3(-320.923187, -1359.961914, 24.309654)
 
-- Fonction pour faire aller l'employé au stockage, récupérer un item, et revenir
function EmployeeGoToStorage(labId, employeeId, itemName, callback)
    if not createdEmployees[labId] or not createdEmployees[labId][employeeId] then
        voltre.DebugPrint("[STORAGE] Employee not found: "..employeeId)
        if callback then callback(false) end
        return
    end
    
    local ped = createdEmployees[labId][employeeId]
    local storageId = "labo_coffre_big_"..labId
    if Config.laboratoire.debug then
        voltre.DebugPrint("[STORAGE] Employee "..employeeId.." going to storage to get "..itemName)
    end
    
    Citizen.CreateThread(function()
        -- 1. Aller au stockage
        local success = NavigatePedToPosition(ped, STORAGE_POSITION, 250)
        
        if not success then
            voltre.DebugPrint("[STORAGE] Failed to reach storage")
            if callback then callback(false) end
            return
        end
        
        --voltre.DebugPrint("[STORAGE] Arrived at storage, searching for item...")
        
        -- 2. Animation de fouille dans le coffre
        ClearPedTasks(ped)
        Wait(100)
        
        -- Animation: se pencher pour fouiller
        TaskPlayAnim(ped, "amb@prop_human_bum_bin@idle_b", "idle_d", 5.0, 5.0, 3000, 1, 0, false, false, false)
        Wait(3000)
        
        --voltre.DebugPrint("[STORAGE] Checking storage for "..itemName)
        
        -- 3. Vérifier si l'item existe dans le stockage
        local hasItem = false
        GetItemCountFromStorage(storageId, itemName, function(itemCount)
            if itemCount > 0 then
                hasItem = true
                --voltre.DebugPrint("[STORAGE] Found "..itemName.." in storage (count: "..itemCount..")")
            else
                voltre.DebugPrint("[STORAGE] No "..itemName.." in storage")
            end
        end)
        
        Wait(200) -- Attendre la callback
        
        if callback then 
            callback(hasItem)
        end
    end)
end

-- Fonction pour faire aller l'employé au stockage et déposer un item
function EmployeeDepositToStorage(labId, employeeId, itemName, quantity, callback)
    if not createdEmployees[labId] or not createdEmployees[labId][employeeId] then
        voltre.DebugPrint("[STORAGE] Employee not found: "..employeeId)
        if callback then callback(false) end
        return
    end
    
    local ped = createdEmployees[labId][employeeId]
    local storageId = "labo_coffre_big_"..labId

    Citizen.CreateThread(function()
        -- 1. Aller au stockage
        local success = NavigatePedToPosition(ped, STORAGE_POSITION, 250)
        
        if not success then
            if callback then callback(false) end
            return
        end
        
        -- 2. Animation de dépôt dans le coffre
        ClearPedTasks(ped)
        Wait(100)
        
        -- Animation: se pencher pour déposer
        TaskPlayAnim(ped, "amb@prop_human_bum_bin@idle_b", "idle_d", 5.0, 5.0, 2000, 1, 0, false, false, false)
        Wait(2000)
        
        -- 3. Ajouter l'item au stockage
        AddItemToStorage(storageId, itemName, quantity)
        voltre.DebugPrint("[STORAGE] Deposited "..quantity.."x "..itemName.." to storage")
        
        if callback then 
            callback(true)
        end
    end)
end