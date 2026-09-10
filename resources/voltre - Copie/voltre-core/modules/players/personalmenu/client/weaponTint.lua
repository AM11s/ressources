Citizen.CreateThread(function()
    voltre.fct.waitPlayerLoaded()
    
    local value = GetResourceKvpString("Voltre:weaponTint")

    if value == nil then
        setWeaponTint(0)
    else
        setWeaponTint(value)
    end
end)

function setWeaponTint(weaponTint)
    if weaponTint ~= nil and tonumber(weaponTint) ~= nil and tonumber(weaponTint) >= 0 then
        if weaponTint ~= 0 then
            SetResourceKvp("Voltre:weaponTint", weaponTint)
        end
        SetPedWeaponTintIndex(PlayerPedId(), PlayerState.weapon, tonumber(weaponTint))
        return GetResourceKvpString("Voltre:weaponTint")
    end
end

function getWeaponTint(name)
    return tonumber(GetResourceKvpString("Voltre:weaponTint"))
end

AddEventHandler('Voltre:utils:changeweapon', function(weaponHash)
    voltre.fct.waitPlayerLoaded()
    if weaponHash == `WEAPON_UNARMED` then return end
    if ESX.GetGrade() == "default" then return end

    local count = GetWeaponTintCount(weaponHash)

    for i = 0, count do 
        if i == getWeaponTint() then
            SetPedWeaponTintIndex(PlayerPedId(), weaponHash, i)
        end
    end
end)