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

local function ParseVisualsCategories(tree, parentAction)
    for k,v in pairs(tree) do
        local action = Action:Create({
            ID = "UGMT_VisualCategory"..k,
            DisplayName = k
        })
        parentAction.Children[#parentAction.Children+1] = action
        if type(v) == "table" then
            action.Children = {}
            ParseVisualsCategories(v, action)
        else
            -- local fontSize = -2 -string.len(k)%10
            -- action.DisplayName = "<font size=\""..fontSize.."\">"..k.."</font>"
            action.Callback = function(...)
                _P("Visual Callback:",k,v)
            end
        end
    end
end

-- Mods.LeaderLib.UI.ContextMenu.Register.Action(Action:Create({
--     ID = "UGMT_AssignCharacter",
--     -- DisplayName = Ext.GetTranslatedStringFromKey("UGMT_ResetStatBoost"),
--     DisplayName = "Assign To",
--     Icon = "",
--     Callback = function (contextMenu, ui, id, actionID, handle)
--     end,
--     ShouldOpe
--     Children = ActionAssignTo,
-- }))

-- Ext.RegisterListener("InputEvent", function(event)
--     -- Ext.Dump(event)
--     if event.EventId == 237 then
--         local pickState = Ext.ClientUI.GetPickingState()
--         if pickState.HoverCharacter then
--             UI.ContextMenu:Open()
--         end
--     end
-- end)

Ext.RegisterListener("SessionLoaded", function()
    local _justPressed = false

    local function GetShouldOpen(contextMenu, x, y)
        if _justPressed then
            local cursor = Ext.GetPickingState()
            if cursor and Ext.Utils.IsValidHandle(cursor.HoverCharacter) then
                return true
            end
        end
    end

    local function GetShouldOpenPlayer(contextMenu, x, y)
        if _justPressed then
            local cursor = Ext.GetPickingState()
            if cursor and Ext.Utils.IsValidHandle(cursor.HoverCharacter) and Ext.GetCharacter(cursor.HoverCharacter).IsPlayer then
                return true
            end
        end
    end

    local function GetShouldOpenNpc(contextMenu, x, y)
        if _justPressed then
            local cursor = Ext.GetPickingState()
            if cursor and Ext.Utils.IsValidHandle(cursor.HoverCharacter) and not Ext.GetCharacter(cursor.HoverCharacter).IsPlayer then
                return true
            end
        end
    end

    -- Bossify
    local bossifyAction = Action:Create({
        ID = "UGMT_ToggleBoss",
        DisplayName = "Toggle Boss",
        Tooltip = "Toggle the fancy health bar border. A character set as boss will also always die normally (no explosion, ...)",
        Icon = "ugmt_toggleboss",
        Callback = nil,
        ShouldOpen = GetShouldOpen,
    })

    UI.ContextMenu.Register.Action(bossifyAction)

    -- Follow
    local followAction = Action:Create({
        ID = "UGMT_Follow",
        DisplayName = "Follow",
        Tooltip = "Make selected characters follow this one",
        Icon = "ugmt_follow",
        Callback = nil,
        ShouldOpen = GetShouldOpen,
    })

    UI.ContextMenu.Register.Action(followAction)

    -- Make Follower
    local makeFollowerAction = Action:Create({
        ID = "UGMT_MakeFollower",
        DisplayName = "Add Party Follower",
        Tooltip = "Make selected characters follow this one, as if they were summons",
        Icon = "ugmt_togglefollower",
        Callback = nil,
        ShouldOpen = GetShouldOpenPlayer,
    })

    UI.ContextMenu.Register.Action(makeFollowerAction)

    -- Make Player/NPC
    local togglePlayerAction = Action:Create({
        ID = "UGMT_TogglePlayerCharacter",
        DisplayName = "Make Player",
        Tooltip = "Make this character controlled by a player if it's a NPC, or vice-versa. A new player character will be assigned to the owner of the targeted player character. If there's no target, then it is assigned randomly.",
        Icon = "ugmt_makepc",
        Callback = nil,
        ShouldOpen = GetShouldOpen,
    })

    UI.ContextMenu.Register.Action(togglePlayerAction)

    -- Confiscate
    local confiscateAction = Action:Create({
        ID = "UGMT_Confiscate",
        DisplayName = "Confiscate",
        ShouldOpen = GetShouldOpen,
        Children = {}
    })

    UI.ContextMenu.Register.Action(confiscateAction)

    -- Assign To
    local assignAction = Action:Create({
        ID = "UGMT_AssignTo",
        DisplayName = "Assign To",
        Tooltip = "Assign character to a player",
        ShouldOpen = GetShouldOpenPlayer,
        Children = {}
    })

    UI.ContextMenu.Register.Action(assignAction)

    -- Set Treasure Table
    local treasureTableAction = Action:Create({
        ID = "UGMT_TreasureTable",
        DisplayName = "Set Treasure Table",
        Tooltip = "Assign a Treasure Table to this character. Leave empty to clear it.",
        ShouldOpen = GetShouldOpenNpc,
        Children = {},
        Callback = nil
    })

    UI.ContextMenu.Register.Action(treasureTableAction)

    -- Set Visuals
    -- local visualsAction = Action:Create({
    --     ID = "UGMT_SetVisuals",
    --     DisplayName = "Set Character Visuals",
    --     Tooltip = "Change character visuals, with options beyond the current visual set the character has.",
    --     ShouldOpen = GetShouldOpenNpc,
    --     Children = {},
    --     Callback = nil
    -- })

    -- UI.ContextMenu.Register.Action(visualsAction)

    -- local slots = {
    --     [1] = "Hairs",
    --     [2] = "Head",
    --     [3] = "Torso",
    --     [4] = "Arms",
    --     [5] = "Legs",
    --     [6] = "Boots",
    --     [7] = "Beard",
    --     [8] = "Aux 1",
    --     [9] = "Aux 2"
    -- }
    -- for i,j in pairs(slots) do
    --     local a = Action:Create({
    --         ID = "UGMT_SetVisualsOnSlot"..j,
    --         DisplayName = j,
    --         Children = {}
    --     })
    --     ParseVisualsCategories(CharacterVisualResources, a)
    --     visualsAction.Children[#visualsAction.Children+1] = a
    -- end
    

    local Input = Mods.LeaderLib.Input
    local Events = Mods.LeaderLib.Events

    Input.RegisterListener("GMNormalAlignMode", function(name, pressed, ...)
        if pressed then
            _justPressed = true
            UI.ContextMenu:OnRightClick(name, pressed, ...)
            _justPressed = false
        end
    end)

    Events.OnContextMenuOpening:Subscribe(function (e)
        if _justPressed then
            local cursor = Ext.ClientUI.GetPickingState()
            if not (cursor and Ext.Utils.IsValidHandle(cursor.HoverCharacter)) then
                return 
            end
            local character = Ext.GetCharacter(cursor.HoverCharacter)

            bossifyAction.Callback = function(...)
                Ext.PostMessageToServer("UGMT_ContextMenuAction",  Ext.Json.Stringify({
                    Callback = "ugmt_bossify",
                    Character = character.NetID
                }))
            end

            followAction.Callback = function(...)
                Ext.PostMessageToServer("UGMT_ContextMenuAction", Ext.Json.Stringify({
                    Callback = "ugmt_follow",
                    Character = character.NetID
                }))
            end

            togglePlayerAction.Callback = function(...)
                Ext.PostMessageToServer("UGMT_ContextMenuAction",  Ext.Json.Stringify({
                    Callback = "ugmt_toggleplayer",
                    Character = character.NetID
                }))
            end

            -- Confiscate
            confiscateAction.Children[#confiscateAction.Children+1] = Action:Create({
                    ID = "UGMT_ConfiscateWeapons",
                    DisplayName = "Weapons",
                    Callback = function(...)
                        Ext.PostMessageToServer("UGMT_ContextMenuAction",  Ext.Json.Stringify({
                            Callback = "ugmt_confiscateweapons",
                            Character = character.NetID
                        }))
                    end
                })
            confiscateAction.Children[#confiscateAction.Children+1] = Action:Create({
                    ID = "UGMT_ConfiscateInventory",
                    DisplayName = "Inventory",
                    Callback = function(...)
                        Ext.PostMessageToServer("UGMT_ContextMenuAction",  Ext.Json.Stringify({
                            Callback = "ugmt_confiscateinventory",
                            Character = character.NetID
                        }))
                    end
                })

            makeFollowerAction.Callback = function(...)
                Ext.PostMessageToServer("UGMT_ContextMenuAction",  Ext.Json.Stringify({
                    Callback = "ugmt_togglefollower",
                    Character = character.NetID
                }))
            end

            treasureTableAction.Children[#treasureTableAction.Children+1] = Action:Create({
                ID = "UGMT_SetTreasureTable",
                DisplayName = "Set",
                Callback = function(...)
                    OpenInputBox("Enter a valid treasure table", "", 4501, {
                        Character = character.NetID
                    })
                end
            })

            treasureTableAction.Children[#treasureTableAction.Children+1] = Action:Create({
                ID = "UGMT_GenerateTreasureTable",
                DisplayName = "Refresh",
                Callback = function(...)
                    Ext.PostMessageToServer("UGMT_ContextMenuAction", Ext.Json.Stringify({
                        Callback = "ugmt_refreshtreasuretable",
                        Character = character.NetID
                    }))
                end
            })

            if character.IsPlayer then
                togglePlayerAction.DisplayName = "Make NPC"
                togglePlayerAction.Icon = "ugmt_makenpc"
                for uuid, data in pairs(Mods.LeaderLib.SharedData.CharacterData) do
                    assignAction.Children[#assignAction.Children+1] = Action:Create({
                        ID = "UGMT_AssignTo_"..data.ID,
                        DisplayName = tostring(data.Username),
                        Callback = function(...)
                            Ext.ClientNet.PostMessageToServer("UGM_AssignCharacterToUser", Ext.Json.Stringify({
                                Character = character.NetID,
                                User = data.ID
                            }))
                        end
                    })
                end
            else
                togglePlayerAction.DisplayName = "Make Player"
                togglePlayerAction.Icon = "ugmt_makepc"
            end
        end
    end)
end)