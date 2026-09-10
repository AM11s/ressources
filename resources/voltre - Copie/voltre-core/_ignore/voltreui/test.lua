-- --[[
--     VoltreUI - Test Menu
--     Menu de démonstration avec commande /voltreuitest
-- ]]

-- -- Variables du menu de test (globales pour permettre les submenus inter-fichiers)
-- VoltreUI.TestMenu = nil
-- local TestSubMenu = nil
-- local SettingsMenu = nil
-- local ExternalSubMenu = nil  -- Submenu créé depuis un autre fichier

-- -- États des items
-- local StyleIndex = 2
-- local CheckboxValue = false
-- local ListIndex = 1
-- local SliderValue = 50
-- local ColorIndex = 1
-- local ProgressValue = 50
-- local BrightnessValue = 50
-- local SoundValue = 75

-- local StyleNames = { "Dark", "Modern", "Classic" }
-- local ColorOptions = { "Rouge", "Vert", "Bleu", "Jaune", "Violet" }

-- --[[
--     ============================================
--     CRÉATION DES MENUS
--     ============================================
-- ]]

-- CreateThread(function()
--     Wait(1000)  -- Attendre que VoltreUI soit chargé
    
--     -- Menu principal (global)
--     VoltreUI.TestMenu = VoltreUI.CreateMenu("", "Menu de démonstration")
--     --VoltreUI.TestMenu:SetRectangleBanner(30, 30, 30, 255)
    
--     -- Sous-menu
--     TestSubMenu = VoltreUI.CreateSubMenu(VoltreUI.TestMenu, "", "Sous-menu de test")
    
--     -- Menu paramètres
--     SettingsMenu = VoltreUI.CreateSubMenu(VoltreUI.TestMenu, "", "Paramètres")
    
--     -- Charger le style sauvegardé
--     StyleIndex = VoltreUI.GetStyleIndex()
    
--     print('[VoltreUI Test] ^2Menus created^7 - Use /voltreuitest')
-- end)

-- --[[
--     ============================================
--     BOUCLE DE RENDU
--     ============================================
-- ]]

-- CreateThread(function()
--     while true do
--         Wait(0)
        
--         -- Menu principal
--         if VoltreUI.TestMenu and VoltreUI.Visible(VoltreUI.TestMenu) then
--             local visible = VoltreUI.IsVisible(VoltreUI.TestMenu, function()
--                 VoltreUI.Info("Informations", {"Nom: John", "Age: 25"}, {"$1000", "Level 5"})
--                 -- Liste pour changer le style (premier item sélectionnable)
--                 VoltreUI.List("Style VoltreUI", StyleNames, StyleIndex, "Changer le style visuel du menu\n~b~Dark~w~: Sombre minimaliste\n~b~Modern~w~: Avec animations\n~b~Classic~w~: Style GTA", nil, true, 
--                     {
--                         onListChange = function(index, item)
--                             StyleIndex = index
--                             VoltreUI.SetTheme(index)
--                         end
--                     }
--                 )
                
--                 VoltreUI.Separator("Exemples d'Items")
                
--                 -- Bouton simple
--                 VoltreUI.Button("Bouton Simple", "Ceci est un bouton basique sans action", {}, true, function()
--                     print("[VoltreUI Test] Bouton simple cliqué!")
--                 end)
                
--                 -- Bouton avec RightLabel
--                 VoltreUI.Button("Bouton avec Label", "Ce bouton a un label à droite", { RightLabel = "~g~OK" }, true, function()
--                     print("[VoltreUI Test] Bouton avec label cliqué!")
--                 end)
                
--                 -- Bouton vers sous-menu
--                 VoltreUI.Button("Ouvrir Sous-Menu", "Accéder au sous-menu de démonstration", {}, true, nil, TestSubMenu)
                
--                 -- Checkbox
--                 VoltreUI.Checkbox("Checkbox", "Activer ou désactiver une option", CheckboxValue, nil, 
--                     {
--                         onSelected = function(checked)
--                             CheckboxValue = checked
--                             print("[VoltreUI Test] Checkbox: " .. tostring(checked))
--                         end
--                     }
--                 )
                
--                 -- Liste de couleurs
--                 VoltreUI.List("Couleur préférée", ColorOptions, ColorIndex, "Sélectionner votre couleur préférée", nil, true, 
--                     {
--                         onListChange = function(index, item)
--                             ColorIndex = index
--                             print("[VoltreUI Test] Couleur: " .. item)
--                         end
--                     }
--                 )
                
--                 VoltreUI.Progress("Volume", ProgressValue, 100, "Ajuster le volume avec ← →", true, true, 
--                     {
--                         onProgressChange = function(value)
--                             ProgressValue = value
--                         end
--                     }
--                 )
                
--                 VoltreUI.Separator("Navigation")
                
--                 -- Bouton paramètres
--                 VoltreUI.Button("Paramètres", "Ouvrir les paramètres du menu", {}, true, nil, SettingsMenu)
                
--                 -- Bouton vers submenu externe (test inter-fichier)
--                 local extMenu = VoltreUI.GetExternalSubMenu and VoltreUI.GetExternalSubMenu()
--                 if extMenu then
--                     VoltreUI.Button("Submenu Externe", "Test submenu depuis un autre fichier", {}, true, nil, extMenu)
--                 end
                
--                 -- Ligne de séparation (couleur serveur par défaut)
--                 VoltreUI.Line()
                
--                 -- Bouton fermer
--                 VoltreUI.Button("Fermer", "Fermer le menu de test", {}, true, function()
--                     VoltreUI.CloseAll()
--                 end)
                
--             end)
--         end
        
--         -- Sous-menu (Démonstration des nouveaux items)
--         if TestSubMenu and VoltreUI.Visible(TestSubMenu) then
--             VoltreUI.IsVisible(TestSubMenu, function()
                
--                 -- Panneau Stats à droite
--                 VoltreUI.StatsPanel({
--                     { label = "Force", value = 75 },
--                     { label = "Endurance", value = 50 },
--                     { label = "Vitesse", value = 90 },
--                     { label = "Chance", value = 30 },
--                 })
                
--                 VoltreUI.Separator("~y~Nouveaux Items")
                
--                 VoltreUI.Button("Item Simple", "Premier item du sous-menu", {}, true, function()
--                     print("[VoltreUI Test] Item 1 sélectionné")
--                 end)
                
--                 -- Progress/Slider
--                 local _, _, _, newProgress = VoltreUI.Progress("Luminosité", BrightnessValue or 50, 100, "Ajuster la luminosité", true, true, 
--                     {
--                         onProgressChange = function(value)
--                             BrightnessValue = value
--                         end
--                     }
--                 )
--                 BrightnessValue = newProgress
                
--                 -- Autre Progress
--                 local _, _, _, newVolume = VoltreUI.Progress("Son", SoundValue or 75, 100, "Ajuster le volume sonore", true, true, 
--                     {
--                         onProgressChange = function(value)
--                             SoundValue = value
--                         end
--                     }
--                 )
--                 SoundValue = newVolume
                
--                 VoltreUI.Separator("~b~Autres")
                
--                 -- Bouton désactivé
--                 VoltreUI.Button("Item Désactivé", "Ce bouton est désactivé", {}, false, function()
--                     -- Ne sera jamais appelé
--                 end)
                
--                 VoltreUI.Line()
                
--                 VoltreUI.Button("~o~Retour", "Retourner au menu principal", {}, true, function()
--                     VoltreUI.GoBack()
--                 end)
                
--             end)
--         end
        
--         -- Menu paramètres
--         if SettingsMenu and VoltreUI.Visible(SettingsMenu) then
--             VoltreUI.IsVisible(SettingsMenu, function()
                
--                 VoltreUI.Separator("~y~Paramètres")
                
--                 -- Style
--                 local _, _, _, styleIdx = VoltreUI.List(
--                     "Style du menu", 
--                     StyleNames, 
--                     StyleIndex, 
--                     "Modifier l'apparence du menu", 
--                     nil, 
--                     true, 
--                     {
--                         onListChange = function(index, item)
--                             StyleIndex = index
--                             VoltreUI.SetTheme(index)
--                         end
--                     }
--                 )
--                 StyleIndex = styleIdx
                
--                 VoltreUI.Separator("~y~Informations")
                
--                 VoltreUI.Button("Version", "VoltreUI 2.0.0", { RightLabel = "~g~2.0.0" }, false)
--                 VoltreUI.Button("Style actif", "Style actuellement utilisé", { RightLabel = StyleNames[StyleIndex] }, false)
                
--                 VoltreUI.Line()
                
--                 VoltreUI.Button("~o~Retour", "Retourner au menu principal", {}, true, function()
--                     VoltreUI.GoBack()
--                 end)
                
--             end)
--         end
--     end
-- end)

-- --[[
--     ============================================
--     COMMANDES
--     ============================================
-- ]]

-- RegisterCommand("voltreuitest", function()
--     if VoltreUI.TestMenu then
--         VoltreUI.Visible(VoltreUI.TestMenu, not VoltreUI.Visible(VoltreUI.TestMenu))
--     else
--         print("[VoltreUI Test] Menu not ready yet, please wait...")
--     end
-- end, false)

-- RegisterCommand("vuitest", function()
--     if VoltreUI.TestMenu then
--         VoltreUI.Visible(VoltreUI.TestMenu, not VoltreUI.Visible(VoltreUI.TestMenu))
--     end
-- end, false)

-- -- Suggestion de commande
-- TriggerEvent('chat:addSuggestion', '/voltreuitest', 'Ouvrir le menu de test VoltreUI')
-- TriggerEvent('chat:addSuggestion', '/vuitest', 'Ouvrir le menu de test VoltreUI (raccourci)')

-- print('[VoltreUI Test] ^2Commands registered^7: /voltreuitest, /vuitest')
