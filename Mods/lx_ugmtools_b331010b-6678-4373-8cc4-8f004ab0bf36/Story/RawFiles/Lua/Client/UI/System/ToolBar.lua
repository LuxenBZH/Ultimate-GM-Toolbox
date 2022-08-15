local toolbars = {
    [1] = {
        ["ugmt_select"]         = {{"ugmt_select_zone_1",  "ugmt_select_zone_2", "ugmt_select_zone_3"}, DraggingEffect:Create({"9a0c0892-64ff-4e2c-9137-322efe4946c2", "9a0c0892-64ff-4e2c-9137-322efe4946c2", "9a0c0892-64ff-4e2c-9137-322efe4946c2"}, {"Select2m", "Select5m", "Select10m"}, 1, {"GM_CIRCLE2M", "GM_CIRCLE5M", "GM_CIRCLE10M"})},
        ["ugmt_unselect"]       = {{"ugmt_unselect"}},
        ["ugmt_lock_select"]    = {{"ugmt_lock_select_deactivated", "ugmt_lock_select"}},
        ["ugmt_moveto"]         = {{"ugmt_walkto", "ugmt_runto"}, DraggingEffect:Create({"9a0c0892-64ff-4e2c-9137-322efe4946c2", "9a0c0892-64ff-4e2c-9137-322efe4946c2"}, {"WalkTo", "RunTo"}, 1, {"GM_BLUEARROW", "GM_REDARROW"})},
        ["ugmt_patrol"]         = {{"ugmt_beaconpatrol", "ugmt_startpatrol"}, DraggingEffect:Create({"9a0c0892-64ff-4e2c-9137-322efe4946c2", "9a0c0892-64ff-4e2c-9137-322efe4946c2"}, {"PlacePatrolBeacon", "StartPatrol"}, 1, {"GM_GREENARROW", "GM_REDARROW"})},
        -- ["ugmt_follow"]         = {{"ugmt_follow"}},
        ["ugmt_bark_mode"]      = {{"ugmt_bark_mode_deactivated", "ugmt_bark_mode"}},
        ["ugmt_story_freeze"]   = {{"ugmt_story_freeze"}},
        ["ugmt_unsheath"]       = {{"ugmt_unsheath"}},
        ["ugmt_shroud"]         = {{"ugmt_shroud"}},
        ["ugmt_fade"]           = {{"ugmt_fade"}},
        ["ugmt_clearitems"]     = {{"ugmt_clearitems"}, DraggingEffect:Create({"9a0c0892-64ff-4e2c-9137-322efe4946c2"}, {"ItemRemove"}, 1, {"GM_CIRCLE2M"})},
    },
    [2] = {
        ["ugmt_randomvisuals"]  = {{"ugmt_visualrandomize"}},
        ["ugmt_transform"]      = {{"ugmt_transform"}},
        ["ugmt_setrarity"]      = {{"Item_ToVend", "Item_Uncommon", "Item_Rare","Item_Epic"}},
        ["ugmt_armor"]          = {{"ugmt_armormage","ugmt_armorfinesse", "ugmt_armorheavy", "Item_Unknown"}},
        -- ["ugmt_bossify"]        = {{"ugmt_toggleboss"}},
        -- ["ugmt_makeplayer"]     = {{"ugmt_makepc"}},
        ["ugmt_makenpc"]        = {{"ugmt_makenpc"}},
        ["ugmt_togglefollower"] = {{"ugmt_togglefollower"}},
        -- ["ugmt_confiscate"]     = {{"ugmt_confiscateweapons", "ugmt_confiscateinventory"}}
    },
    -- [3] = {
    --     ["ugmt_setrarity"]      = {{"Item_ToVend", "Item_Uncommon", "Item_Rare","Item_Epic"}},
    --     ["ugmt_armor"]          = {{"ugmt_armormage","ugmt_armorfinesse", "ugmt_armorheavy", "Item_Unknown"}}
    -- }
}

local buttonOrder = {
    [1] = {
        [1] = "ugmt_select",
        [2] = "ugmt_unselect",
        [3] = "ugmt_lock_select" ,
        [4] = "ugmt_moveto",
        [5] = "ugmt_patrol",
        -- [6] = "ugmt_follow",
        [7] = "ugmt_bark_mode",
        [8] = "ugmt_story_freeze",
        [9] = "ugmt_unsheath",
        [10] = "ugmt_shroud",
        [11] = "ugmt_fade",
        [12] = "ugmt_clearitems"
    },
    [2] = {
        [5] = "ugmt_randomvisuals",
        [6] = "ugmt_transform",
        [3] = "ugmt_setrarity",
        [4] = "ugmt_armor",
        -- [3] = "ugmt_bossify",     
        -- [4] = "ugmt_makeplayer",
        [1] = "ugmt_makenpc",
        [2] = "ugmt_togglefollower",
    },
    -- [3] = {
    --     [1] = "ugmt_setrarity",
    --     [2] = "ugmt_armor",
    --     -- [3] = "ugmt_ohweapon",
    --     -- [4] = "ugmt_thweapon",
        
    -- }
}

---@class ToolBarManager
---@field Bars array[]
---@field UI ExtClient.UI
---@field CurrentButton ToolButton
ToolBarManager = {
    Bars = {},
    UI = nil,
    CurrentButton = nil
}

ToolBarManager.__index = ToolBarManager

function ToolBarManager:Create(ui)
    local this = {
        Bars = {},
        UI = ui,
        CurrentButton = nil
    }
    setmetatable(this, self)
    Ext.RegisterListener("InputEvent", function(event)
        if this.CurrentButton then
            if event.EventId == 2 and event.Release then
                this:Release()
            end
        end
    end)
    return this
end

function ToolBarManager:AddBar(index)
    self.Bars[index] = {}
end

function ToolBarManager:AddButton(barIndex, name, size, icons, special)
    self.Bars[barIndex][name] = ToolButton:Create(barIndex, self.UI, name, size, icons, special)
    self.UI:GetRoot().toolbarHolder_mc.addButtonToBar(barIndex, name)
    Ext.RegisterUICall(self.UI, "toolbar_"..name, function(...)
        self:OnPress(barIndex, name)
    end)
end

function ToolBarManager:OnPress(barIndex, name)
    -- Ext.Print("TEST", self.CurrentButton, self.CurrentButton.Special)
    -- Deactivate previous button effect if there's one button already active
    if self.CurrentButton and self.CurrentButton.Special then
        self.CurrentButton.OnUse = false
        self.CurrentButton.Special:ToggleOff()
    end
    self.CurrentButton = self.Bars[barIndex][name]
    self.Bars[barIndex][name]:OnPress()
end

function ToolBarManager:Release()
    self.CurrentButton = nil
end

if Mods.LeaderLib then
    Timer = Mods.LeaderLib.Timer
end

tm = nil

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

    tm = ToolBarManager:Create(toolbar)
    
    for bar, buttons in pairs(toolbars) do
        tm:AddBar(bar)
        for index, name in pairs(buttonOrder[bar]) do
            tm:AddButton(bar, name, 48, table.unpack(toolbars[bar][name]))
            -- toolbars[bar][name] = ToolButton:Create(bar, toolbar, name, 48, table.unpack(toolbars[bar][name]))
        end
        if bar > 1 then
            -- Ext.Print("SIZE",(GetTableSize(toolbars[1])-1 - GetTableSize(toolbars[bar])))
            toolbar:GetRoot().toolbarHolder_mc.toolbar_Array[bar-1].x = 175 + (GetTableSize(toolbars[1])-1 - GetTableSize(toolbars[bar])+2)*64
        end
    end
    toolbar:GetRoot().toolbarHolder_mc.toolbar_Array[0].y = -5
    toolbar:GetRoot().toolbarHolder_mc.toolbar_Array[1].visible = false
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