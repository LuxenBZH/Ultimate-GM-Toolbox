local toolbars = {
    [1] = {
        ["ugmt_select"]         = {{"ugmt_select_zone_1",  "ugmt_select_zone_2", "ugmt_select_zone_3"}, DraggingEffect:Create({"9a0c0892-64ff-4e2c-9137-322efe4946c2", "9a0c0892-64ff-4e2c-9137-322efe4946c2", "9a0c0892-64ff-4e2c-9137-322efe4946c2"}, {"Select2m", "Select5m", "Select10m"}, 1, {"GM_CIRCLE2M", "GM_CIRCLE5M", "GM_CIRCLE10M"})},
        ["ugmt_unselect"]       = {{"ugmt_unselect"}},
        ["ugmt_lock_select"]    = {{"ugmt_lock_select_deactivated", "ugmt_lock_select"}},
        ["ugmt_moveto"]         = {{"ugmt_walkto", "ugmt_runto"}, DraggingEffect:Create({"9a0c0892-64ff-4e2c-9137-322efe4946c2", "9a0c0892-64ff-4e2c-9137-322efe4946c2"}, {"WalkTo", "RunTo"}, 1, {"GM_BLUEARROW", "GM_REDARROW"})},
        ["ugmt_patrol"]         = {{"ugmt_beaconpatrol", "ugmt_startpatrol"}, DraggingEffect:Create({"9a0c0892-64ff-4e2c-9137-322efe4946c2", "9a0c0892-64ff-4e2c-9137-322efe4946c2"}, {"PlacePatrolBeacon", "StartPatrol"}, 1, {"GM_GREENARROW", "GM_REDARROW"})},
        ["ugmt_follow"]         = {{"ugmt_follow"}},
        ["ugmt_bark_mode"]      = {{"ugmt_bark_mode_deactivated", "ugmt_bark_mode"}},
        ["ugmt_story_freeze"]   = {{"ugmt_story_freeze"}},
        ["ugmt_unsheath"]       = {{"ugmt_unsheath"}},
        ["ugmt_shroud"]         = {{"ugmt_shroud"}},
        ["ugmt_fade"]           = {{"ugmt_fade"}},
        ["ugmt_clearitems"]     = {{"ugmt_clearitems"}, DraggingEffect:Create({"9a0c0892-64ff-4e2c-9137-322efe4946c2"}, {"ItemRemove"}, 1, {"Select2m"})},
    },
    [2] = {
        ["ugmt_randomvisuals"]  = {{"ugmt_visualrandomize"}},
        ["ugmt_transform"]      = {{"ugmt_transform"}},
        ["ugmt_bossify"]        = {{"ugmt_toggleboss"}},
        ["ugmt_makeplayer"]     = {{"ugmt_makepc"}},
        ["ugmt_makenpc"]        = {{"ugmt_makenpc"}},
        ["ugmt_togglefollower"] = {{"ugmt_togglefollower"}},
    },
    [3] = {
        ["ugmt_setrarity"]      = {{"Item_ToVend", "Item_Uncommon", "Item_Rare","Item_Epic"}},
        ["ugmt_armor"]          = {{"ugmt_armormage","ugmt_armorfinesse", "ugmt_armorheavy", "Item_Unknown"}}
    }
}

local buttonOrder = {
    [1] = {
        [1] = "ugmt_select",
        [2] = "ugmt_unselect",
        [3] = "ugmt_lock_select" ,
        [4] = "ugmt_moveto",
        [5] = "ugmt_patrol",
        [6] = "ugmt_follow",
        [7] = "ugmt_bark_mode",
        [8] = "ugmt_story_freeze",
        [9] = "ugmt_unsheath",
        [10] = "ugmt_shroud",
        [11] = "ugmt_fade",
        [12] = "ugmt_clearitems"
    },
    [2] = {
        [1] = "ugmt_randomvisuals",
        [2] = "ugmt_transform",
        [3] = "ugmt_bossify",     
        [4] = "ugmt_makeplayer",
        [5] = "ugmt_makenpc",
        [6] = "ugmt_togglefollower",
    },
    [3] = {
        [1] = "ugmt_setrarity",
        [2] = "ugmt_armor",
        -- [3] = "ugmt_ohweapon",
        -- [4] = "ugmt_thweapon",
        
    }
}

if Mods.LeaderLib then
    Timer = Mods.LeaderLib.Timer
end

Ext.RegisterListener("SessionLoaded", function()
    if Ext.GameVersion() == "v3.6.51.9303" then return end
    Ext.CreateUI("UGMT_Toolbar", "Public/lx_ugmtools_b331010b-6678-4373-8cc4-8f004ab0bf36/Game/GUI/GM/ugmt_toolbar.swf", 10)
    local ogBar = Ext.GetBuiltinUI("Public/Game/GUI/GM/GMPanelHUD.swf"):GetRoot()
    ogBar.stickiesBar_mc.addSticky_mc.x = -30
    ogBar.stickiesBar_mc.addSticky_mc.y = 132
    ogBar.stickiesBar_mc.openPanel_mc.x = -21
    ogBar.stickiesBar_mc.openPanel_mc.y = 105
    ogBar.stickiesBar_mc.y = -100
    ogBar.secBar_mc.x = 600
    local toolbar = Ext.GetUI("UGMT_Toolbar")
    -- toolbar:GetRoot().toolbar_mc.lBorder_mc.visible = false
    toolbar:GetRoot().visible = false
    
    for bar, buttons in pairs(toolbars) do
        for index, name in pairs(buttonOrder[bar]) do
            toolbars[bar][name] = ToolButton:Create(bar, toolbar, name, 48, table.unpack(toolbars[bar][name]))
        end
    end

    -- toolbar:GetRoot().toolbarHolder_mc.toolbar[1].reverseButtons()
    -- toolbar:GetRoot().toolbarHolder_mc.toolbar[2].reverseButtons()

    local hotbar = Ext.GetBuiltinUI("Public/Game/GUI/hotBar.swf")
    Ext.RegisterUIInvokeListener(hotbar, "setPlayerHandle", function(...)
        toolbar:GetRoot().visible = false
    end)
    local GMPanel = Ext.GetBuiltinUI("Public/Game/GUI/GM/GMPanelHUD.swf")
    Ext.RegisterUIInvokeListener(GMPanel, "showTargetBar", function(...)
        toolbar:GetRoot().visible = true
    end)
    if Mods.LeaderLib then
        Ext.RegisterUICall(toolbar, "setPosition", function(...)
            -- Timer.StartOneshot("UGMT_ResizeUIClient", 30, function(...)
                local ratio = tonumber(toolbar:GetRoot().screenWidth) / tonumber(toolbar:GetRoot().screenHeight) - 1.777777777
                local x = Ext.Round(ratio * 537)
                toolbar:GetRoot().x = x
            -- end)
            -- toolbar:GetRoot().x = x
        end)
    end
    -- Ext.RegisterListener("InputEvent", function(event)
    --     Ext.Dump(event)
    -- end)
end)