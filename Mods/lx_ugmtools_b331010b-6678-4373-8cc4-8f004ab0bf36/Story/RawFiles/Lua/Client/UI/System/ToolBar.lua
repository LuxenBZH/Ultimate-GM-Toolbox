local toolbars = {
    [1] = {
        ["ugmt_select"]         = {{"ugmt_select_zone_1",  "ugmt_select_zone_2", "ugmt_select_zone_3"}, DraggingEffect:Create({"9a0c0892-64ff-4e2c-9137-322efe4946c2", "9a0c0892-64ff-4e2c-9137-322efe4946c2", "9a0c0892-64ff-4e2c-9137-322efe4946c2"}, {"Select2m", "Select5m", "Select10m"}, 1, {"GM_CIRCLE2M", "GM_CIRCLE5M", "GM_CIRCLE10M"}), {"Select Area (2m)", "Select Area (5m)", "Select Area (10m)"}},
        ["ugmt_unselect"]       = {{"ugmt_unselect"}, nil, {"Clear selection"}},
        ["ugmt_lock_select"]    = {{"ugmt_lock_select_deactivated", "ugmt_lock_select"}, nil, {"Lock selection (key: Shift)"}},
        ["ugmt_moveto"]         = {{"ugmt_walkto", "ugmt_runto"}, DraggingEffect:Create({"9a0c0892-64ff-4e2c-9137-322efe4946c2", "9a0c0892-64ff-4e2c-9137-322efe4946c2"}, {"WalkTo", "RunTo"}, 1, {"GM_BLUEARROW", "GM_REDARROW"}), {"Walk to position", "Run to position"}},
        ["ugmt_patrol"]         = {{"ugmt_beaconpatrol", "ugmt_startpatrol"}, DraggingEffect:Create({"9a0c0892-64ff-4e2c-9137-322efe4946c2", "9a0c0892-64ff-4e2c-9137-322efe4946c2"}, {"PlacePatrolBeacon", "StartPatrol"}, 1, {"GM_GREENARROW", "GM_REDARROW"}), {"Place patrol beacon", "Start patroling"}},
        -- ["ugmt_follow"]         = {{"ugmt_follow"}},
        ["ugmt_bark_mode"]      = {{"ugmt_bark_mode_deactivated", "ugmt_bark_mode"}, nil, {"Toggle Bark mode"}},
        ["ugmt_story_freeze"]   = {{"ugmt_story_freeze"}, nil, {"Toggle story freeze"}},
        ["ugmt_unsheath"]       = {{"ugmt_unsheath"}, nil, {"Sheathe or Unsheathe"}},
        ["ugmt_shroud"]         = {{"ugmt_shroud"}, nil, {"Regenerate shroud"}},
        ["ugmt_fade"]           = {{"ugmt_fade"}, nil, {"Fade to black or fade back"}},
        ["ugmt_clearitems"]     = {{"ugmt_clearitems"}, DraggingEffect:Create({"9a0c0892-64ff-4e2c-9137-322efe4946c2"}, {"ItemRemove"}, 1, {"GM_CIRCLE2M"}), {"Clear items in area"}},
    },
    [2] = {
        ["ugmt_randomvisuals"]  = {{"ugmt_visualrandomize"}, nil, {"Randomize character visuals"}},
        ["ugmt_transform"]      = {{"ugmt_transform"}, nil, {"Transform selected character from the target"}},
        -- ["ugmt_setrarity"]      = {{"Item_ToVend", "Item_Uncommon", "Item_Rare","Item_Epic"}, {"Set item generation rarity"}},
        -- ["ugmt_armor"]          = {{"ugmt_armormage","ugmt_armorfinesse", "ugmt_armorheavy", "Item_Unknown"}, {"Set armor generation type"}},
        -- ["ugmt_bossify"]        = {{"ugmt_toggleboss"}},
        -- ["ugmt_makeplayer"]     = {{"ugmt_makepc"}},
        -- ["ugmt_makenpc"]        = {{"ugmt_makenpc"}},
        -- ["ugmt_togglefollower"] = {{"ugmt_togglefollower"}},
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
        [6] = "ugmt_bark_mode",
        [7] = "ugmt_story_freeze",
        [8] = "ugmt_unsheath",
        [9] = "ugmt_shroud",
        [10] = "ugmt_fade",
        [11] = "ugmt_clearitems"
    },
    [2] = {
        [1] = "ugmt_randomvisuals",
        [2] = "ugmt_transform",
        -- [3] = "ugmt_setrarity",
        -- [4] = "ugmt_armor",
        -- [5] = "ugmt_bossify",
        -- [6] = "ugmt_makeplayer",
        -- [5] = "ugmt_makenpc",
        -- [5] = "ugmt_togglefollower",
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
---@field UI string
---@field CurrentButton ToolButton
ToolBarManager = {
    Bars = {},
    UI = nil,
    CurrentButton = nil,
    OffsetX = 0,
    OffsetY = 0,
}

ToolBarManager.__index = ToolBarManager

function ToolBarManager:Create(ui)
    local this = {
        Bars = {},
        UI = ui,
        CurrentButton = nil,
        OffsetX = 0,
        OffsetY = 0,
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

function ToolBarManager:AddButton(barIndex, buttonIndex, name, size, icons, special, tooltips)
    Ext.UI.GetByName(self.UI):GetRoot().toolbarHolder_mc.addButtonToBar(barIndex, name)
    self.Bars[barIndex][name] = ToolButton:Create(barIndex, buttonIndex, self, self.UI, name, size, icons, special, tooltips)
    Ext.RegisterUICall(Ext.UI.GetByName(self.UI), "toolbar_"..name, function(...)
        self:OnPress(barIndex, name)
        Ext.UI.GetByName(self.UI):ExternalInterfaceCall("PlaySound", "UI_Gen_XButton_Click")
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
    tm = ToolBarManager:Create("UGMT_Toolbar")

    local index = 1
    while index <= GetTableSize(toolbars) do
    -- for bar, buttons in pairs(toolbars) do
        -- local buttons = toolbars[index]
        tm:AddBar(index)
        local buttonIndex = 1
        while buttonIndex <= #buttonOrder[index] do
            local name = buttonOrder[index][buttonIndex]
            if name then
                tm:AddButton(index, buttonIndex, name, 48, table.unpack(toolbars[index][name]))
                -- toolbars[bar][name] = ToolButton:Create(bar, toolbar, name, 48, table.unpack(toolbars[bar][name]))
            end
            buttonIndex = buttonIndex + 1
        end
        if index > 1 then
            -- Ext.Print("SIZE",(GetTableSize(toolbars[1])-1 - GetTableSize(toolbars[bar])))
            -- _P(GetTableSize(toolbars[1]))
            -- _P(GetTableSize(toolbars[1])-1 - GetTableSize(toolbars[index])+1)
            toolbar:GetRoot().toolbarHolder_mc.toolbar_Array[index-1].x = 175 + 6*64
            tm.OffsetX = 175 + 6*64
        end
        index = index + 1
    end
    toolbar:GetRoot().toolbarHolder_mc.toolbar_Array[0].y = -5
    toolbar:GetRoot().toolbarHolder_mc.toolbar_Array[1].visible = false
    -- toolbar:GetRoot().toolbarHolder_mc.toolbar[1].reverseButtons()
    -- toolbar:GetRoot().toolbarHolder_mc.toolbar[2].reverseButtons()

    local hotbar = Ext.GetBuiltinUI("Public/Game/GUI/hotBar.swf")
    Ext.RegisterUIInvokeListener(hotbar, "setPlayerHandle", function(...)
        Ext.GetUI("UGMT_Toolbar"):GetRoot().visible = false
    end)
    local GMPanel = Ext.GetBuiltinUI("Public/Game/GUI/GM/GMPanelHUD.swf")
    Ext.RegisterUIInvokeListener(GMPanel, "showTargetBar", function(...)
        Ext.GetUI("UGMT_Toolbar"):GetRoot().visible = true
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