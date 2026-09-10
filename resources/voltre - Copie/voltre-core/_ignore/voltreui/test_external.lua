-- --[[
--     VoltreUI - Test External SubMenu
--     Test de submenu créé depuis un fichier externe
-- ]]

-- -- Submenu externe (créé après le menu principal)
-- local ExternalSubMenu = nil

-- -- Créer le submenu après que le menu principal soit prêt
-- CreateThread(function()
--     -- Attendre que VoltreUI.TestMenu soit créé
--     while not VoltreUI.TestMenu do
--         Wait(100)
--     end
    
--     Wait(500)  -- Petit délai supplémentaire
    
--     -- Créer le submenu externe
--     ExternalSubMenu = VoltreUI.CreateSubMenu(VoltreUI.TestMenu, "", "Submenu Externe")
    
--     print('[VoltreUI Test External] ^2External submenu created^7')
-- end)

-- -- Boucle de rendu pour le submenu externe
-- CreateThread(function()
--     while true do
--         Wait(0)
        
--         if ExternalSubMenu and VoltreUI.Visible(ExternalSubMenu) then
--             VoltreUI.IsVisible(ExternalSubMenu, function()
--                 VoltreUI.Separator("Submenu Externe")
                
--                 VoltreUI.Button("Item Externe 1", "Cet item vient d'un autre fichier", {}, true, function()
--                     print("[External] Item 1 cliqué!")
--                 end)
                
--                 VoltreUI.Button("Item Externe 2", "Test inter-fichier réussi!", {}, true, function()
--                     print("[External] Item 2 cliqué!")
--                 end)
                
--                 VoltreUI.Checkbox("Option Externe", "Checkbox depuis fichier externe", false, nil, {
--                     onSelected = function(checked)
--                         print("[External] Checkbox: " .. tostring(checked))
--                     end
--                 })
--             end)
--         end
--     end
-- end)

-- -- Fonction pour obtenir le submenu (appelable depuis test.lua)
-- function VoltreUI.GetExternalSubMenu()
--     return ExternalSubMenu
-- end
