freezeWeather = false
freezeTime = false
function _sky()
    print("sky")
    Action_Config = {
        Sky = {
            {
                Type = "checkbox",
                Label = ("Bloquer l'heure"),
                IsRestricted = true,
                Blocked = false,
                IsChecked = freezeTime,
                OnRelease = function(isChecked)
                    freezeTime = isChecked
                    TriggerServerEvent("voltre:weather:changeFreeze", freezeTime, freezeWeather)
                end,
            },
            {
                Type = "buttom-submenu",
                Blocked = false,
                Label = "Changer l'heure",
                IsRestricted = true,
                Action = {
                    {
                        'Matin', 
                        function() 
                            TriggerServerEvent("voltre:weather:changeTime", 08, 00)
                        end
                    },
                    {
                        'Après-midi', 
                        function() 
                            TriggerServerEvent("voltre:weather:changeTime", 12, 00)
                        end
                    },
                    {
                        'Soirée', 
                        function() 
                            TriggerServerEvent("voltre:weather:changeTime", 18, 00)
                        end
                    },
                    {
                        'Nuit', 
                        function() 
                            TriggerServerEvent("voltre:weather:changeTime", 22, 00)
                        end
                    },
                },
            },
            {
                Type = "buttom",
                Label = ("Changer l'heure précisement"),
                Blocked = false,
                KeepNuiFocus = true,
                OnClick = function()
                    local input = voltre.fct.input2("Définir la nouvelle Heure du Serveur", true, {
                        {type = 'number', label = 'Nouvelle Heure', default = localTime.hours, required = true, min = 0, max = 24},
                        {type = 'number', label = 'Nouvelle Minutes', default = localTime.minutes, required = true, min = 0, max = 60},
                    })
                    if input then
                        TriggerServerEvent("voltre:weather:changeTime", input[1], input[2])
                    end
                end,
            },
            {
                Type = "checkbox",
                Label = ("Bloquer la météo"),
                IsRestricted = true,
                Blocked = false,
                IsChecked = freezeWeather,
                OnRelease = function(isChecked)
                    freezeWeather = isChecked
                    TriggerServerEvent("voltre:weather:changeFreeze", freezeTime, freezeWeather)
                end,
            },
            {
                Type = "buttom-submenu",
                Blocked = false,
                Label = "Changer la météo",
                IsRestricted = true,
                Action = {
                    {
                        'Delai: +/- 5 mins', 
                        function() 
                            
                        end
                    },
                    {
                        'Dégagé', 
                        function() 
                            TriggerServerEvent("voltre:weather:changeWeather", "CLEAR", true)
                        end
                    },
                    {
                        'Dégagement', 
                        function() 
                            TriggerServerEvent("voltre:weather:changeWeather", "CLEARING", true)
                        end
                    },
                    {
                        'Nuages', 
                        function() 
                            TriggerServerEvent("voltre:weather:changeWeather", "CLOUDS", true)
                        end
                    },
                    {
                        'Ensoleillé', 
                        function() 
                            TriggerServerEvent("voltre:weather:changeWeather", "EXTRASUNNY", true)
                        end
                    },
                    {
                        'Brume', 
                        function() 
                            TriggerServerEvent("voltre:weather:changeWeather", "FOGGY", true)
                        end
                    },
                    {
                        'Nuageux', 
                        function() 
                            TriggerServerEvent("voltre:weather:changeWeather", "OVERCAST", true)
                        end
                    },
                    {
                        'Pluie', 
                        function() 
                            TriggerServerEvent("voltre:weather:changeWeather", "RAIN", true)
                        end
                    },
                    {
                        'Brumeux', 
                        function() 
                            TriggerServerEvent("voltre:weather:changeWeather", "SMOG", true)
                        end
                    },
                    {
                        'Orage', 
                        function() 
                            TriggerServerEvent("voltre:weather:changeWeather", "THUNDER", true)
                        end
                    },
                    {
                        'Noël', 
                        function() 
                            TriggerServerEvent("voltre:weather:changeWeather", "XMAS", true)
                        end
                    },
                    {
                        'Halloween', 
                        function() 
                            TriggerServerEvent("voltre:weather:changeWeather", "HALLOWEEN", true)
                        end
                    },
                },
            },
        },
    }
end
