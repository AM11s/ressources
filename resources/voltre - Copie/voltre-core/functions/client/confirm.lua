-- Voltre Confirm Functions
-- Uses the new voltre-core InteractionsUI system

voltre.fct.confirm = LPH_NO_VIRTUALIZE(function(message, title, type)
    local confirmData = {
        message = message or "Êtes-vous sûr de vouloir effectuer cette action ?",
        title = title or "Confirmation",
        type = type or "info",
        yesLabel = "Oui",
        noLabel = "Non"
    }
    
    local result = exports['voltre-core']:Confirm(confirmData)
    return result
end)

-- Alias for compatibility with voltre.fct.confirm
voltre.fct.confirmRequest = LPH_NO_VIRTUALIZE(function(message, title, type)
    return voltre.fct.confirm(message, title, type)
end)
