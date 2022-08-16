local answers = {
    ["ugmt_unselect"]       = {handle = function() SelectionManager:ClearSelectionAndTarget() end},
    ["ugmt_lock_select"]    = {handle = function() SelectionManager:ToggleLock() end},
    ["ugmt_follow"]         = {handle = LuaFollowTarget},
    ["ugmt_bark_mode"]      = {handle = ToggleBark},
    ["ugmt_story_freeze"]   = {handle = StoryFreeze},
    ["ugmt_unsheath"]       = {handle = ToggleCombatMode},
    ["ugmt_shroud"]         = {handle = function() Ext.BroadcastMessage("UGM_Shroud_Manager", "Regenerate", nil) end},
    ["ugmt_fade"]           = {handle = FadeSelection},
    ["ugmt_randomvisuals"]  = {handle = RandomizeVisualSet, args = {"", "GM_RandomizeVisuals"}},
    ["ugmt_transform"]      = {handle = TransformCharacter, args = {"", "GM_Transform"}},
    ["ugmt_bossify"]        = {handle = Bossify, args = {"", "GM_Bossify"}},
    ["ugmt_makeplayer"]     = {handle = ManagePlayable, args = {"", "GM_MakePlayer"}},
    ["ugmt_makenpc"]        = {handle = ManagePlayable, args = {"", "GM_MakeNPC"}},
    ["ugmt_togglefollower"] = {handle = ManageFollower}
    -- ["ugmt_confiscateweapons"]
}

Ext.Print("server-side ready")

Ext.RegisterNetListener("UGMT_ToolbarPress", function(channel, message)
    -- print(message)
    answer = answers[message]
    -- Ext.Dump(answer)
    if answer.args then
        answer.handle(table.unpack(answer.args))
    else
        answer.handle()
    end
end)

Timer = Mods.LeaderLib.Timer

local draggingFunctions = {
    ["WalkTo"]    = {handle = function(entity) ClassicMove(entity, "GM_Move_Walk") end},
    ["RunTo"]     = {handle = function(entity) ClassicMove(entity, "GM_Move_Run") end},
    ["Select2m"]  = {handle = function(entity) SelectAroundPosition(entity, 2) end},
    ["Select5m"]  = {handle = function(entity) SelectAroundPosition(entity, 5) end},
    ["Select10m"] = {handle = function(entity) SelectAroundPosition(entity, 10) end},
    ["PlacePatrolBeacon"] = {handle = function(entity) RegisterPatrolBeacon(entity, "GM_Place_Patrol_Beacon") end},
    ["StartPatrol"]       = {handle = function(entity) StartPatrol(entity, "GM_Start_Multipatrol") end},
    ["ItemRemove"]        = {handle = function(entity) ItemRemoveTool(entity, "GM_Destroy_Item") end}
}

Ext.RegisterNetListener("UGM_StartDraggingEffect", function(channel, payload)
    if Ext.GetGameState() == "Running" then
        local infos = Ext.JsonParse(payload)
        -- Ext.Dump(infos)
        local tracker = CreateItemTemplateAtPosition(infos.Template, infos.Position[1], infos.Position[2], infos.Position[3])
        if infos.Status then
            ApplyStatus(tracker, infos.Status, -1.0, 1)
        end
        -- print(Ext.GetItem(tracker).NetID)
        Timer.StartOneshot("UGM_DragLag", 30, function()
            Ext.PostMessageToClient(CharacterGetHostCharacter(), infos.Message, tostring(Ext.GetItem(tracker).NetID))
        end)
    end
end)

Ext.RegisterNetListener("UGM_KillDraggingEffect", function(channel, payload)
    ItemRemove(Ext.GetItem(tonumber(payload)).MyGuid)
end)

Ext.RegisterNetListener("UGM_TriggerDraggingEffectFunction", function(channel, payload)
    local infos = Ext.JsonParse(payload)
    infos.Entity = Ext.GetItem(tonumber(infos.Entity))
    TeleportToPosition(infos.Entity.MyGuid, infos.X, infos.Y, infos.Z, "", 0)
    draggingFunctions[infos.Func].handle(infos.Entity.MyGuid)
end)