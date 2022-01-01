local toolbars = {
    Toolbar1 = {},
    Toolbar2 = {},
    Toolbar3 = {}
}

if Mods.LeaderLib then
    Timer = Mods.LeaderLib.Timer
end

Ext.RegisterListener("SessionLoaded", function()
    if Ext.GameVersion() == "v3.6.51.9303" then return end
    Ext.CreateUI("UGMT_Toolbar", "Public/lx_ugmtools_b331010b-6678-4373-8cc4-8f004ab0bf36/Game/GUI/GM/ugmt_toolbar.swf", 15)
    local toolbar = Ext.GetUI("UGMT_Toolbar")
    toolbar:GetRoot().toolbar_mc.lBorder_mc.visible = false
    toolbar:GetRoot().visible = false
    toolbars.Toolbar1 = {
        ["ugmt_select"]         = ToolButton:Create(toolbar, "ugmt_select", 46, {"Skill_Source_SpiritVision",  "Skill_Air_Condensation", "Skill_Air_Vaporize"}, DraggingEffect:Create({"9a0c0892-64ff-4e2c-9137-322efe4946c2", "9a0c0892-64ff-4e2c-9137-322efe4946c2", "9a0c0892-64ff-4e2c-9137-322efe4946c2"}, {"Select2m", "Select5m", "Select10m"}, 1, {"GM_CIRCLE2M", "GM_CIRCLE5M", "GM_CIRCLE10M"})),
        ["ugmt_unselect"]       = ToolButton:Create(toolbar, "ugmt_unselect", 46, {"ugmt_unselect"}),
        ["ugmt_lock_select"]    = ToolButton:Create(toolbar, "ugmt_lock_select", 46, {"ugmt_lock_select_deactivated", "ugmt_lock_select"}),
        ["ugmt_moveto"]         = ToolButton:Create(toolbar, "ugmt_moveto", 46, {"ugmt_unselect", "ugmt_follow"}, DraggingEffect:Create({"9a0c0892-64ff-4e2c-9137-322efe4946c2", "9a0c0892-64ff-4e2c-9137-322efe4946c2"}, {"WalkTo", "RunTo"}, 1, {"GM_BLUEARROW", "GM_REDARROW"})),
        ["ugmt_follow"]         = ToolButton:Create(toolbar, "ugmt_follow", 46, {"ugmt_follow"}),
        ["ugmt_bark_mode"]      = ToolButton:Create(toolbar, "ugmt_bark_mode", 46, {"ugmt_bark_mode_deactivated", "ugmt_bark_mode"}),
        ["ugmt_story_freeze"]   = ToolButton:Create(toolbar, "ugmt_story_freeze", 46, {"ugmt_story_freeze"}),
        ["ugmt_unsheath"]       = ToolButton:Create(toolbar, "ugmt_unsheath", 46, {"ugmt_unsheath"}),
        ["ugmt_shroud"]         = ToolButton:Create(toolbar, "ugmt_shroud", 46, {"ugmt_shroud"}),
        ["ugmt_fade"]           = ToolButton:Create(toolbar, "ugmt_fade", 46, {"ugmt_fade"}),
    }
    
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
            Timer.StartOneshot("UGMT_ResizeUIClient", 30, function(...)
                local height = tonumber(toolbar:GetRoot().screenHeight)
                local x = Ext.Round(-0.887*height + 944.28)
                toolbar:SetPosition(x, 0)
            end)
            -- toolbar:GetRoot().x = x
        end)
    end
    -- Ext.RegisterListener("InputEvent", function(event)
    --     Ext.Dump(event)
    -- end)
end)