--[[
    Voltre Core - Bridge System
    Unifie l'API voltre et ESX pour une meilleure cohérence
]]

-- Bridge: voltre namespace pointe vers ESX pour compatibilité
voltre.core = ESX

-- Aliases pour les fonctions les plus utilisées
voltre.GetPlayer = function(source)
    if IsDuplicityVersion() then
        return ESX.GetPlayerFromId(source)
    else
        return ESX.PlayerData
    end
end

voltre.GetPlayers = function()
    if IsDuplicityVersion() then
        return ESX.GetPlayers()
    end
end

voltre.GetPlayerByIdentifier = function(identifier)
    if IsDuplicityVersion() then
        return ESX.GetPlayerFromIdentifier(identifier)
    end
end

-- Utilitaires communs 
voltre.Notify = function(source, message, title)
    if IsDuplicityVersion() then
        TriggerClientEvent('esx:showNotification', source, message, title)
    else
        ESX.ShowNotification(message, title)
    end
end

-- Raccourcis pour les callbacks
voltre.RegisterCallback = function(name, cb)
    if IsDuplicityVersion() then
        ESX.RegisterServerCallback(name, cb)
    end
end

voltre.TriggerCallback = function(name, cb, ...)
    if not IsDuplicityVersion() then
        ESX.TriggerServerCallback(name, cb, ...)
    end
end

-- Système d'events typés
voltre.Events = {
    _handlers = {},
    
    On = function(self, eventName, handler)
        if not self._handlers[eventName] then
            self._handlers[eventName] = {}
        end
        table.insert(self._handlers[eventName], handler)
        
        return #self._handlers[eventName] -- Retourne l'index pour pouvoir Off()
    end,
    
    Off = function(self, eventName, index)
        if self._handlers[eventName] and self._handlers[eventName][index] then
            table.remove(self._handlers[eventName], index)
        end
    end,
    
    Emit = function(self, eventName, ...)
        if self._handlers[eventName] then
            for _, handler in ipairs(self._handlers[eventName]) do
                handler(...)
            end
        end
    end
}

-- Exports pour les autres ressources
if IsDuplicityVersion() then
    exports('GetCore', function() return ESX end)
    exports('GetVoltre', function() return voltre end)
    exports('GetPlayer', voltre.GetPlayer)
    exports('GetPlayers', voltre.GetPlayers)
    exports('Notify', voltre.Notify)
else
    exports('GetCore', function() return ESX end)
    exports('GetVoltre', function() return voltre end)
    exports('Notify', voltre.Notify)
end
