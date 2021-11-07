UI = Mods.LeaderLib.UI

-- local function OpenRollMessageBox(rollType, stat, characterNetID, title, message)
--     local ui = Ext.GetBuiltinUI("Public/Game/GUI/msgBox.swf")
--     if ui and stat then
--         ui:Hide()
--         local root = ui:GetRoot()
--         --root.addButton(3, LocalizedText.UI.Close.Value, "", "")
--         root.setPopupType(1)
--         -- root.setText("Roll for "..stat.ID.."<br>".."Enter a modifier (e.g. 5 for +5, -2 for -2)<br>")
--         --ui:Invoke("setAnchor", 0)
--         --ui:Invoke("setPos", 50.0, 50.0)
--         -- ui:Invoke("setText", "Roll for "..stat.Name.."<br>".."Enter a modifier (e.g. 5 for +5, -2 for -2)<br>")
--         ui:Invoke("removeButtons")
--         ui:Invoke("addButton", 4040, "Accept", "", "")
--         ui:Invoke("addBlueButton", 4041, "Cancel")

--         --ui:Invoke("addYesButton", 1)
--         -- ui:Invoke("showWin")
--         -- ui:Invoke("fadeIn")
--         --ui:Invoke("setWaiting", true)
--         -- ui:Invoke("setPopupType", 2)
--         ui:Invoke("setInputEnabled", true)
--         -- ui:Invoke("setTooltip", 0, stat.ID)
--         local infos = {
--             character = characterNetID,
--             stat = stat.ID,
--             rollType = rollType
--         }
--         ui:Invoke("setTooltip", 1, Ext.JsonStringify(infos))
--         -- root.currentDevice = characterNetID
--         ui:Invoke("showPopup", title, message)
--         -- root.showMsgbox()
--         ui:Show()
--         -- specialMessageBoxOpen = true
--     end
-- end

-- local function ManageAnswer(ui, call, buttonID, device)
--     -- Ext.Print(buttonID, ui:GetRoot().popup_mc.input_mc.copy_mc.tooltip)
--     local ui = Ext.GetBuiltinUI("Public/Game/GUI/msgBox.swf")
--     if buttonID == 4040.0 then
--         local input = ui:GetRoot().popup_mc.input_mc.input_txt.htmlText
--         local mod = tonumber(input)
--         -- Ext.Print(input, mod)
--         if mod == nil then return end
--         local infos = Ext.JsonParse(ui:GetRoot().popup_mc.input_mc.copy_mc.tooltip)
--         infos["mod"] = mod
--         Ext.PostMessageToServer("SRP_Roll", Ext.JsonStringify(infos))
--         ui:Hide()
--     elseif buttonID == 4041.0 then
--         ui:Hide()
--     end
-- end

local attributes = {
    Strength = true, --Strength
    Finesse = true, --Finesse
    Intelligence = true, --Intelligence
    Constitution = true, --Constitution
    Memory = true, --Memory
    Wits = true, --Wits
}

UI.ContextMenu.Register.ShouldOpenListener(function(contextMenu, x, y)
    local request = Game.Tooltip.GetCurrentOrLastRequest()
    Ext.Dump(request)
    if Game.Tooltip.IsOpen() then
        if Game.Tooltip.LastRequestTypeEquals("Stat") or Game.Tooltip.LastRequestTypeEquals("Ability")  then
            return true
        elseif Game.Tooltip.LastRequestTypeEquals("Generic") and request.Tags == "Tags" then
            return true
        end
    end
end)

UI.ContextMenu.Register.OpeningListener(function(contextMenu, x, y)
    if Game.Tooltip.IsOpen() then
        ---@type TooltipCustomStatRequest
        local request = Game.Tooltip.GetCurrentOrLastRequest()
        local statID = request.Stat
        local characterId = request.Character.NetID
        local infos = {
            Context = request.Stat,
            Character = characterId
        }
        local root = Ext.GetBuiltinUI("Public/Game/GUI/characterSheet.swf"):GetRoot()
        if (Game.Tooltip.RequestTypeEquals("Stat") or Game.Tooltip.LastRequestTypeEquals("Ability")) then
            contextMenu:AddEntry("UGMT_SetStatTo", function(cMenu, ui, id, actionID, handle)
                OpenInputBox("Enter a value", "", 4450, infos)
            end, "UGMT_SetStatTo")
            if root.isGameMasterChar and attributes[request.Stat] then
                contextMenu:AddEntry("UGMT_SetBaseStatTo", function(cMenu, ui, id, actionID, handle)
                    OpenInputBox("Enter a value", "", 4451, infos)
                end, "UGMT_SetBaseStatTo")
                contextMenu:AddEntry("UGMT_AddAttributePoints", function(cMenu, ui, id, actionID, handle)
                    OpenInputBox("Enter a value", "", 4452, infos)
                end, "UGMT_AddAttributePoints")
            end
            contextMenu:AddEntry("UGMT_ResetStatBoost", function(cMenu, ui, id, actionID, handle)
                infos.ButtonID = 4453
                Ext.PostMessageToServer("UGM_InputBox", Ext.JsonStringify(infos))
            end, "UGMT_ResetStatBoost")
        elseif Game.Tooltip.LastRequestTypeEquals("Generic") and request.Tags == "Tags" then
            contextMenu:AddEntry("UGMT_AddTag", function(cMenu, ui, id, actionID, handle)
                OpenInputBox("UGMT_AddTag", statData, characterId, "Enter the tag name", "")
            end, "UGMT_AddTag")
        end
    end
end)

UI.ContextMenu.Register.BuiltinOpeningListener(function(contextMenu, ui, this, buttonArr, buttons)
    local cursor = Ext.GetPickingState()
    Ext.Print("cursor",cursor)
    if cursor then
        local target = GameHelpers.TryGetObject(cursor.HoverCharacter or cursor.HoverItem)
        Ext.Print(target)
        if target then
            local request = Game.Tooltip.GetCurrentOrLastRequest()
            local infos = {
                Character = target.NetID
            }
            contextMenu:AddBuiltinEntry("UGMT_SetScale", function(contextMenu, ui, id, actionID, handle)
                infos.Context = "SetScale"
                OpenInputBox("Enter a value en percentage", "", 4454, infos)
            end, "UGMT_SetScale", true, true, false, true, 0)   
            if target.PlayerCustomData.Name ~= "" then
                contextMenu:AddBuiltinEntry("UGMT_Respec", function(contextMenu, ui, id, actionID, handle)
                    infos.Context = "Respec"
                    Ext.PostMessageToServer("UGM_ContextMenu", Ext.JsonStringify(infos))
                end, "UGMT_Respec", true, true, false, true, 0)
            end
        end
    end
end)

if Ext.IsDeveloperMode() then
    Mods.LeaderLib.RegisterListener("BeforeLuaReset", function()
        CombatLog.RemoveFilter("SSRolls")
    end)
end