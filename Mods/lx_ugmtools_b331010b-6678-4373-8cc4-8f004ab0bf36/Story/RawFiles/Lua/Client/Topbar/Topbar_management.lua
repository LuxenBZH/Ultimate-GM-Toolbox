

-- Ext.CreateUI("Test", "Public/lx_ugmtools_b331010b-6678-4373-8cc4-8f004ab0bf36/Game/GUI/GM/ugmt_toolbar.swf", 9)
-- ui = Ext.GetUI("Test")
-- ui:GetRoot().toolbar_mc.addButton("smth")

-- local function UGM_SetupUI()
--     local targetBar = Ext.GetBuiltinUI("Public/Game/GUI/GM/GMPanelHUD.swf")
--     local monsterPanel = Ext.GetBuiltinUI("Public/Game/GUI/GM/monstersSelection.swf")
--     local possessionBar = Ext.GetBuiltinUI("Public/Game/GUI/GM/possessionBar.swf")
--     if targetBar ~= nil then
--         Ext.RegisterUIInvokeListener(targetBar, "showTargetBar", UI_QuickSelect)
--         Ext.RegisterUINameInvokeListener("initActionSlots", UI_Test)
--         Ext.RegisterUICall(targetBar, "buttonCallback_50", UI_TopbarFunctions)
--         Ext.RegisterUICall(targetBar, "buttonCallback_51", UI_TopbarFunctions)
--         Ext.RegisterUICall(targetBar, "buttonCallback_52", UI_TopbarFunctions)
--         Ext.RegisterUICall(targetBar, "buttonCallback_53", UI_TopbarFunctions)
--         Ext.RegisterUICall(targetBar, "buttonCallback_54", UI_TopbarFunctions)
--         Ext.RegisterUICall(targetBar, "buttonCallback_55", UI_TopbarFunctions)
--         --Ext.RegisterUICall(monsterPanel, "selectForSpawn", UI_Test2)
--         -- Ext.RegisterUICall(monsterPanel, "selectForSpawn", UI_MonstersSelection)
--         -- Ext.RegisterUIInvokeListener(monsterPanel, "updateAll", UI_GetItemsID)
--     else
--         Ext.PrintError("Failed to register calls!!")
--     end

--     --local root = targetBar:GetRoot()
--     -- root.secActionList.x = -100
--     -- root.stickiesBar_mx.x = -100
-- end

-- Ext.RegisterListener("SessionLoaded", UGM_SetupUI)