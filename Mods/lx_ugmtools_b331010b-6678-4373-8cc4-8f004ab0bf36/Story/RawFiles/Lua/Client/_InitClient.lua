-- Ext.AddPathOverride("Public/Game/GUI/GM/GMPanelHUD.swf", "Public/lx_ugmtools_b331010b-6678-4373-8cc4-8f004ab0bf36/Game/GUI/GM/GMPanelHUD.swf")

local function SetCharacterScale(call, data)
    local character = string.gsub(data, "%:.*", "")
    local value = string.gsub(data, ".*%:", "")
    local char = nil
    local b,err = xpcall(function()
        char = Ext.GetCharacter(tonumber(character))
        local check = char.DisplayName
    end, debug.traceback)
    if not b then return end
    if char == nil then return end
    char:SetScale(tonumber(value))
    -- print("Set scale to",value)
end

Ext.RegisterNetListener("UGM_SetCharacterScale", SetCharacterScale)


-- Quick Selection feature
local function UI_QuickSelect(ui, call, ...)
    local params = {...}
    if params[2] == 0.0 then
        local targetBar = Ext.GetBuiltinUI("Public/Game/GUI/GM/GMPanelHUD.swf")
        local handle = Ext.DoubleToHandle(targetBar:GetValue("targetHandle", "number"))
        if Ext.Utils.IsValidHandle(handle) then
            local char = Ext.GetCharacter(handle)
            Ext.PostMessageToServer("UGM_QuickDeselection", Ext.Json.Stringify({
                ShiftMod = shiftModifier,
                Character = char.NetID,
            }))
        end
    else
        local handle = Ext.DoubleToHandle(params[2])
        if Ext.Utils.IsValidHandle(handle) then
            local char = Ext.GetCharacter(handle)
            Ext.PostMessageToServer("UGM_QuickSelection", Ext.Json.Stringify({
                ShiftMod = shiftModifier,
                Character = char.NetID,
            }))
        end
    end
    local root = Ext.GetBuiltinUI("Public/Game/GUI/GM/GMPanelHUD.swf"):GetRoot()
    --Ext.Print(root.GMButtonArray)
end

local function UGM_SetupUI()
    local targetBar = Ext.GetBuiltinUI("Public/Game/GUI/GM/GMPanelHUD.swf")
    if targetBar ~= nil then
        Ext.RegisterUIInvokeListener(targetBar, "showTargetBar", UI_QuickSelect)
    else
        Ext.PrintError("Failed to register calls!!")
    end
end

Ext.RegisterListener("SessionLoaded", UGM_SetupUI)

shiftModifier = false
capslockModifier = false



Ext.Require("Client/Tools/ShroudManager.lua")
Ext.Require("Client/Tools/SessionLoaded.lua")
Ext.Require("Client/Tools/Visuals.lua")
Ext.Require("Client/Setup/FXReplacements.lua")
Ext.Require("Client/Setup/MessageBox.lua")

Ext.Require("Client/Tools/CharacterSheet/ContextMenu.lua")
Ext.Require("Client/Tools/WorldContextMenu.lua")
Ext.Require("Client/Systems/InputBox.lua")
-- Ext.Require("Cleint/Topbar/Topbar_management.lua")

Ext.Require("Client/UI/Classes/ToolButton.lua")
Ext.Require("Client/UI/Classes/DraggingEffect.lua")

Ext.Require("Client/UI/System/ToolBar.lua")
-- Ext.Require("Client/Tools/SelectionFX.lua")

-- Ext.Require("Client/ClickingState.lua")
-- Ext.Require("Client/CustomStatsTooltipFix.lua")

Ext.RegisterListener("SessionLoaded", function(...)
    Ext.RegisterListener("InputEvent", function(event)
        if event.EventId == 2 and event.Release then
            local root = Ext.GetBuiltinUI("Public/Game/GUI/GM/GMPanelHUD.swf"):GetRoot()
            if root.visible then
                local cursor = Ext.GetPickingState()
                if cursor and not cursor.HoverCharacter and not cursor.HoverItem and capslockModifier then
                    if tm.Bars[1].ugmt_moveto.CurrentIcon == 2 then
                        cursor.Run = 1
                        Ext.PostMessageToServer("UGMT_RightClickMove", Ext.Json.Stringify(cursor))
                    else
                        cursor.Run = 0
                        Ext.PostMessageToServer("UGMT_RightClickMove", Ext.Json.Stringify(cursor))
                    end
                end
            end
        elseif event.EventId == 285 then
            shiftModifier = event.Press
            tm.Bars[1].ugmt_lock_select:OnPress()
        elseif event.EventId == 269 then
            capslockModifier = event.Press
        end
    end)
    -- Ext.RegisterNetListener("UGM_ClickMoveConfirmed", function(...)
    --     local cursor = Ext.GetPickingState()
    --     if cursor then
    --         local visual = Ext.ClientVisual.Create(cursor.WalkablePosition)
    --     end
    -- end)
end)