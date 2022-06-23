local Action = Mods.LeaderLib.Classes.ContextMenuAction
local UI = Mods.LeaderLib.UI
-- Mods.LeaderLib.UI.ContextMenu.Register.Action(Action:Create({
--     ID = "UGM_Assign",
--     DisplayName = "Assign to",
--     Tooltip = "Assign this character to a specific user.",
--     Icon = "",
--     Callback = function (contextMenu, ui, id, actionID, handle)
        
--     end,
--     ShouldOpen = function (contextMenu, x, y)
--         return true
--     end,
--     Children = {
--         Action:Create({
--             ID = "LLHotbarExt_LayoutTestSave",
--             DisplayName = "Save",
--             Callback = function (...)
--                 print("Save Layouts?")
--             end
--         }),
--         Action:Create({
--             ID = "LLHotbarExt_LayoutTestLoad",
--             DisplayName = "Load",
--             Callback = function (...)
--                 print("Load Layouts?")
--             end
--         }),
--     }
-- }))

UI.ContextMenu.Register.BuiltinOpeningListener(function(contextMenu)
    local character = Ext.ClientUI.GetPickingState().HoverCharacter
    if not character then return end
    if not Ext.GetCharacter(character).IsPlayer then return end
    local children = {}
    Ext.Dump(Users)
    for user,info in pairs(Users) do
        table.insert(children, Action:Create({
            ID = "UGM_AssignCharacter"..user,
            DisplayName = info.UserName,
            Callback = function(...)
                Ext.ClientNet.PostMessageToServer("UGM_AssignCharacterToUser", Ext.Json.Stringify({
                    Character = Ext.GetCharacter(character).NetID,
                    User = user
                }))
            end
        }))
    end
    -- contextMenu:AddBuiltinEntry("UGM_AssignCharacter", function() end, "Assign to", nil, true, false, true, nil, children)
    for i,child in pairs(children) do
        contextMenu:AddBuiltinEntry(child.ID, child.Callback, "Assign to "..child.DisplayName)
    end
end)