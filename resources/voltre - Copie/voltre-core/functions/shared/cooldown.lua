voltre.cooldown = false

function voltre.fct.cooldown(time)
    voltre.cooldown = true
    Citizen.SetTimeout(time,function()
        voltre.cooldown = false
    end)
end