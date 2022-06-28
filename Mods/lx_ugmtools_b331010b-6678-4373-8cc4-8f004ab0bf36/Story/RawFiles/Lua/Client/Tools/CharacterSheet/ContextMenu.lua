local bannedStats = {
    Gain = true,
    Experience = true,
    NextLevelExperience = true
}

local function ShouldOpenOnStat(contextMenu, x, y)
    ---@type TooltipCustomStatRequest
    local request = Game.Tooltip.GetCurrentOrLastRequest()
    if Game.Tooltip.IsOpen() then
        local root = Ext.GetBuiltinUI("Public/Game/GUI/characterSheet.swf"):GetRoot()
        if root.isGameMasterChar then
            if Game.Tooltip.LastRequestTypeEquals("Stat") or Game.Tooltip.LastRequestTypeEquals("Ability")  then
                if not (bannedStats[request.Stat]) then
                    return true
                end
            elseif Game.Tooltip.LastRequestTypeEquals("Generic") and request.Tags == "Tags" then
                return true
            end
        end
    end
end

if Mods.LeaderLib then
    local UI = Mods.LeaderLib.UI
    local ts = Mods.LeaderLib.Classes.TranslatedString
    local Action = Mods.LeaderLib.Classes.ContextMenuAction

    local statToEngineName = {
        Damage = "DamageBoost",
        -- Armor = "MaxArmor",
        -- MagicArmor = "MaxMagicArmor",
        Gain = false,
        Vitality = "VitalityBoost"
    }

    Mods.LeaderLib.UI.ContextMenu.Register.Action(Action:Create({
        ID = "UGMT_SetBaseStatTo",
        DisplayName = Ext.GetTranslatedStringFromKey("UGMT_SetBaseStatTo"),
        Icon = "",
        Callback = function (contextMenu, ui, id, actionID, handle)
            ---@type TooltipCustomStatRequest
            local request = Game.Tooltip.GetCurrentOrLastRequest()
            local characterId = request.Character.NetID
            local infos = {
                Context = request.Stat or request.Ability,
                Character = characterId
            }
            if statToEngineName[infos.Context] == false then
                return
            elseif statToEngineName[infos.Context] then
                infos.Context = statToEngineName[infos.Context]
            end
            OpenInputBox("Enter a value", "", 4451, infos)
        end,
        ShouldOpen = ShouldOpenOnStat,
    }))

    Mods.LeaderLib.UI.ContextMenu.Register.Action(Action:Create({
        ID = "UGMT_SetStatTo",
        DisplayName = Ext.GetTranslatedStringFromKey("UGMT_SetStatTo"),
        Icon = "",
        Callback = function (contextMenu, ui, id, actionID, handle)
            ---@type TooltipCustomStatRequest
            local request = Game.Tooltip.GetCurrentOrLastRequest()
            local characterId = request.Character.NetID
            local infos = {
                Context = request.Stat or request.Ability,
                Character = characterId
            }
            if statToEngineName[infos.Context] == false then
                return
            elseif statToEngineName[infos.Context] then
                infos.Context = statToEngineName[infos.Context]
            end
            OpenInputBox("Enter a value", "", 4450, infos)
        end,
        ShouldOpen = ShouldOpenOnStat,
    }))

    Mods.LeaderLib.UI.ContextMenu.Register.Action(Action:Create({
        ID = "UGMT_AddAttributePoints",
        DisplayName = Ext.GetTranslatedStringFromKey("UGMT_AddAttributePoints"),
        Icon = "",
        Callback = function (contextMenu, ui, id, actionID, handle)
            ---@type TooltipCustomStatRequest
            local request = Game.Tooltip.GetCurrentOrLastRequest()
            local characterId = request.Character.NetID
            local infos = {
                Context = request.Stat or request.Ability,
                Character = characterId
            }
            OpenInputBox("Enter a value", "", 4452, infos)
        end,
        ShouldOpen = ShouldOpenOnStat,
    }))

    Mods.LeaderLib.UI.ContextMenu.Register.Action(Action:Create({
        ID = "UGMT_AddAbilityPoints",
        DisplayName = Ext.GetTranslatedStringFromKey("UGMT_AddAbilityPoints"),
        Icon = "",
        Callback = function (contextMenu, ui, id, actionID, handle)
            ---@type TooltipCustomStatRequest
            local request = Game.Tooltip.GetCurrentOrLastRequest()
            local characterId = request.Character.NetID
            local infos = {
                Context = request.Stat or request.Ability,
                Character = characterId
            }
            OpenInputBox("Enter a value", "", 4455, infos)
        end,
        ShouldOpen = ShouldOpenOnStat,
    }))

    Mods.LeaderLib.UI.ContextMenu.Register.Action(Action:Create({
        ID = "UGMT_ResetStatBoost",
        DisplayName = Ext.GetTranslatedStringFromKey("UGMT_ResetStatBoost"),
        Icon = "",
        Callback = function (contextMenu, ui, id, actionID, handle)
            ---@type TooltipCustomStatRequest
            local request = Game.Tooltip.GetCurrentOrLastRequest()
            local characterId = request.Character.NetID
            local infos = {
                Context = request.Stat or request.Ability,
                Character = characterId
            }
            infos.ButtonID = 4453
            Ext.PostMessageToServer("UGM_InputBox", Ext.JsonStringify(infos))
        end,
        ShouldOpen = ShouldOpenOnStat,
    }))

    -- UI.ContextMenu.Register.ShouldOpenListener(function(contextMenu, x, y)
    --     local request = Game.Tooltip.GetCurrentOrLastRequest()
    --     -- Ext.Dump(request)
    --     if Game.Tooltip.IsOpen() then
    --         local root = Ext.GetBuiltinUI("Public/Game/GUI/characterSheet.swf"):GetRoot()
    --         if root.isGameMasterChar then
    --             if Game.Tooltip.LastRequestTypeEquals("Stat") or Game.Tooltip.LastRequestTypeEquals("Ability")  then
    --                 if not (bannedStats[request.Stat]) then
    --                     return true
    --                 end
    --             elseif Game.Tooltip.LastRequestTypeEquals("Generic") and request.Tags == "Tags" then
    --                 return true
    --             end
    --         end
    --     end
    -- end)

    -- UI.ContextMenu.Register.OpeningListener(function(contextMenu, x, y)
    --     if Game.Tooltip.IsOpen() then
    --         ---@type TooltipCustomStatRequest
    --         local request = Game.Tooltip.GetCurrentOrLastRequest()
    --         local statID = request.Stat
    --         local characterId = request.Character.NetID
    --         local infos = {
    --             Context = request.Stat or request.Ability,
    --             Character = characterId
    --         }
    --         -- Ext.Dump(request)
    --         if statToEngineName[infos.Context] == false then
    --             return
    --         elseif statToEngineName[infos.Context] then
    --             infos.Context = statToEngineName[infos.Context]
    --         end
    --         local char = request.Character
    --         local root = Ext.GetBuiltinUI("Public/Game/GUI/characterSheet.swf"):GetRoot()
    --         if (Game.Tooltip.RequestTypeEquals("Stat") or Game.Tooltip.LastRequestTypeEquals("Ability")) then
    --             contextMenu:AddEntry("UGMT_SetStatTo", function(cMenu, ui, id, actionID, handle)
    --                 OpenInputBox("Enter a value", "", 4450, infos)
    --             end, Ext.GetTranslatedStringFromKey("UGMT_SetStatTo"))
    --             -- Ext.Print(char.PlayerCustomData.Name)
    --             -- Ext.Print(attributes[request.Stat] or abilities[request.Ability] or civilAbilities[request.Ability])
    --             if char.PlayerCustomData.Name ~= "" and (attributes[request.Stat] or abilities[request.Ability] or civilAbilities[request.Ability]) then 
    --                 contextMenu:AddEntry("UGMT_SetBaseStatTo", function(cMenu, ui, id, actionID, handle)
    --                     OpenInputBox("Enter a value", "", 4451, infos)
    --                 end, Ext.GetTranslatedStringFromKey("UGMT_SetBaseStatTo"))
    --                 if attributes[request.Stat] then
    --                     contextMenu:AddEntry("UGMT_AddAttributePoints", function(cMenu, ui, id, actionID, handle)
    --                         OpenInputBox("Enter a value.", "Can be negative to subtract points.", 4452, infos)
    --                     end, Ext.GetTranslatedStringFromKey("UGMT_AddAttributePoints"))
    --                 elseif abilities[request.Ability] or civilAbilities[request.Ability] then
    --                     contextMenu:AddEntry("UGMT_AddAbilityPoints", function(cMenu, ui, id, actionID, handle)
    --                         OpenInputBox("Enter a value.", "Can be negative to subtract points.", 4455, infos)
    --                     end, Ext.GetTranslatedStringFromKey("UGMT_AddAbilityPoints"))
    --                 end
    --             end
    --             contextMenu:AddEntry("UGMT_ResetStatBoost", function(cMenu, ui, id, actionID, handle)
    --                 infos.ButtonID = 4453
    --                 Ext.PostMessageToServer("UGM_InputBox", Ext.JsonStringify(infos))
    --             end, Ext.GetTranslatedStringFromKey("UGMT_ResetStatBoost"))
    --         elseif Game.Tooltip.LastRequestTypeEquals("Generic") and request.Tags == "Tags" then
    --             contextMenu:AddEntry("UGMT_AddTag", function(cMenu, ui, id, actionID, handle)
    --                 OpenInputBox("UGMT_AddTag", statData, characterId, "Enter the tag name", "")
    --             end, "UGMT_AddTag")
    --         end
    --     end
    -- end)

    -- UI.ContextMenu.Register.BuiltinOpeningListener(function(contextMenu, ui, this, buttonArr, buttons)
    --     local cursor = Ext.GetPickingState()
    --     Ext.Print("cursor",cursor)
    --     if cursor then
    --         local target = GameHelpers.TryGetObject(cursor.HoverCharacter or cursor.HoverItem)
    --         Ext.Print(target)
    --         if target then
    --             local request = Game.Tooltip.GetCurrentOrLastRequest()
    --             local infos = {
    --                 Character = target.NetID
    --             }
    --             contextMenu:AddBuiltinEntry("UGMT_SetScale", function(contextMenu, ui, id, actionID, handle)
    --                 infos.Context = "SetScale"
    --                 OpenInputBox("Enter a value en percentage", "", 4454, infos)
    --             end, "UGMT_SetScale", true, true, false, true, 0)   
    --             if target.PlayerCustomData.Name ~= "" then
    --                 contextMenu:AddBuiltinEntry("UGMT_Respec", function(contextMenu, ui, id, actionID, handle)
    --                     infos.Context = "Respec"
    --                     Ext.PostMessageToServer("UGM_ContextMenu", Ext.JsonStringify(infos))
    --                 end, "UGMT_Respec", true, true, false, true, 0)
    --             end
    --         end
    --     end
    -- end)

    -- if Ext.IsDeveloperMode() then
    --     Mods.LeaderLib.RegisterListener("BeforeLuaReset", function()
    --         CombatLog.RemoveFilter("SSRolls")
    --     end)
    -- end
end