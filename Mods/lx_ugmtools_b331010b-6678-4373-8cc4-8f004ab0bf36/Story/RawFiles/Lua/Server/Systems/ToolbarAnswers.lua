local answers = {
    ["ugmt_unselect"]       = {handle = ClearSelectionAndTarget},
    ["ugmt_lock_select"]    = {handle = ToggleSelectionLock},
    ["ugmt_follow"]         = {handle = LuaFollowTarget},
    ["ugmt_bark_mode"]      = {handle = ToggleBark},
    ["ugmt_story_freeze"]   = {handle = StoryFreeze},
    ["ugmt_unsheath"]       = {handle = ToggleCombatMode},
    ["ugmt_shroud"]         = {handle = function() Ext.BroadcastMessage("UGM_Shroud_Manager", "Regenerate", nil) end},
    ["ugmt_fade"]           = {handle = FadeSelection}
}

Ext.Print("server-side ready")

Ext.RegisterNetListener("UGMT_ToolbarPress", function(channel, message)
    answers[message].handle()
end)

Timer = Mods.LeaderLib.Timer

local draggingFunctions = {
    ["WalkTo"]    = {handle = function(entity) ClassicMove(entity, "GM_Move_Walk") end},
    ["RunTo"]     = {handle = function(entity) ClassicMove(entity, "GM_Move_Run") end},
    ["Select2m"]  = {handle = function(entity) SelectAroundPosition(entity, 2) end},
    ["Select5m"]  = {handle = function(entity) SelectAroundPosition(entity, 5) end},
    ["Select10m"] = {handle = function(entity) SelectAroundPosition(entity, 10) end},
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
    Ext.Print(draggingFunctions[infos.Func])
    TeleportToPosition(infos.Entity.MyGuid, infos.X, infos.Y, infos.Z, "", 0)
    draggingFunctions[infos.Func].handle(infos.Entity.MyGuid)
end)