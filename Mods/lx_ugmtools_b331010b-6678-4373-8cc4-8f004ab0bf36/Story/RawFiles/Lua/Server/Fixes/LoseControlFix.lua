-- --- @param character EsvCharacter
-- local function GiveControlToAI(character)
--     if not character:HasTag("GM_LoseControlFixActive") then
--         local hostID = CharacterGetReservedUserID(CharacterGetHostCharacter())
--         Ext.Print("Fixing GM LoseControl")
--         -- CharacterRemoveFromParty(character.MyGuid)
--         -- if character.IsPossessed then
--         --     SetTag(character.MyGuid, "GM_LoseControlWasPossessed")
--         -- end
--         Ext.Print("----------------")
--         Ext.Print(character.DisplayName, character.IsPlayer, character.IsPossessed)
--         local isPlayerCharacter = false
--         for i,player in pairs(Osi.DB_IsPlayer:Get(nil)) do
--             if character.MyGuid == GetUUID(player[1]) then
--                 isPlayerCharacter = true
--                 break
--             end
--         end
--         -- Condition below match when it's a character controlled by the GM
--         if character.IsPlayer and not isPlayerCharacter then
--         -- if character.ReservedUserID == hostID or character.ReservedUserID == 65537 then
--             -- CharacterRemoveFromParty(character.MyGuid)
--             -- CharacterMakeNPC(character.MyGuid)
--             character.IsPossessed = false
--             -- Ext.Print(character.MyGuid, character.IsPossessed)
            
--             SetTag(character.MyGuid, "GM_LoseControlFixActive")
--         end
--         -- CharacterMakeNPC(character.MyGuid)
--     end
-- end

-- local engineStatuses = {
--     CHARMED = true,
--     FEAR = true
-- }

-- Ext.RegisterOsirisListener("ObjectTurnStarted", 1, "before", function(object)
--     if HasActiveStatus(object, "CHARMED") == 1 then
--         Ext.GetCharacter(object).IsPossessed = false
--     end
--     -- Just in case...
--     if ObjectIsCharacter(object) then
--         local character = Ext.GetCharacter(object)
--         local host = Ext.GetCharacter(CharacterGetHostCharacter())
--         if character.IsPossessed and character.IsPlayer and character.ReservedUserID ~= host.ReservedUserID then
--             CharacterAssignToUser(host.ReservedUserID, object)
--         end
--     end
-- end)

-- Ext.RegisterOsirisListener("NRD_OnStatusAttempt", 4, "before", function(target, statusId, handle, causee)
--     _P(statusId, target)
--     if ObjectIsCharacter(target) == 1 and (NRD_StatExists(statusId) or engineStatuses[statusId]) then
--         target = Ext.GetCharacter(target)
--         if engineStatuses[statusId] then
--             GiveControlToAI(target)
--             return
--         end
--         local pass,status = pcall(Ext.GetStat, statusId)
--         if not pass then return end
--         -- Ext.Print(status.LoseControl == "Yes", not (status.Name == "POLYMORPHED"))
--         if status.LoseControl == "Yes" and not (status.StatusType == "POLYMORPHED") then
--             -- Ext.Print("TEST")
--             GiveControlToAI(target)
--         end
--     end
-- end)

-- Ext.RegisterOsirisListener("CharacterStatusRemoved", 3, "before", function(character, statusId, causee)
--     -- Ext.Print(IsTagged(character, "GM_LoseControlFixActive"), NRD_StatExists(statusId) or engineStatuses[statusId])
--     if IsTagged(character, "GM_LoseControlFixActive") == 1 and (NRD_StatExists(statusId) or engineStatuses[statusId]) then
--         ClearTag(character "GM_LoseControlFixActive")
--         CharacterAssignToUser(65537, character)
--         if not engineStatuses[statusId] then
--             local pass,status = pcall(Ext.GetStat, statusId)
--             if not pass or status == nil then return end
--             if status.LoseControl == "No" then return end
--         end    
--         local character = Ext.GetCharacter(character)
--         local statuses = character:GetStatuses()
--         local stillLost = false
--         for i,sts in pairs(statuses) do
--             if NRD_StatExists(sts) then
--                 local pass,substs = pcall(Ext.GetStat, sts)
--                 if pass and substs.LoseControl == "Yes" then 
--                     stillLost = true
--                     break
--                 end
--             end
--             if engineStatuses[sts] then
--                 stillLost = true
--                 break
--             end
--         end 

--         Ext.Print("STILLLOST?", stillLost)
--         if not stillLost then
--             Ext.Print("Recovering fix from", statusId)
--             local chars = Ext.GetCharactersAroundPosition(character.WorldPos[1], character.WorldPos[2], character.WorldPos[3], 30)
--             -- Re-possess the character only if the GM is currently controling characters around
--             local possession = false
--             for i,char in pairs(chars) do
--                 if Ext.GetCharacter(char).IsPossessed then
--                     possession = true
--                 end
--             end
--             if possession and CharacterIsInCombat(character.MyGuid) then
--                 character.IsPossessed = true
--                 local host = Ext.GetCharacter(CharacterGetHostCharacter())
--                 CharacterAssignToUser(host.ReservedUserID, character.MyGuid)
--             else
--                 character.IsPossessed = false
--             end

--             -- if IsTagged(character, "GM_LoseControlWasPossessed") == 1 then
--                 -- character.IsPossessed = true
--             -- end
--             -- CharacterMakePlayer(character)
--             -- ClearTag(character.MyGuid, "GM_LoseControlFixActive")
--             -- ClearTag(character.MyGuid, "GM_LoseControlWasPossessed")
--         end
--     end
-- end)
-- Ext.Osiris.RegisterListener("NRD_OnStatusAttempt", 4, "before", function(target, statusId, handle, instigator)
--     if Osi.ObjectIsCharacter(target) == 1 then
--         if statusId == "CHARMED" then
--             local target = Ext.ServerEntity.GetCharacter(target)
--             if target.Stats.CurrentMagicArmor > 0  and not target.Stats.CharmImmunity and not target:GetStatus("CLEAR_MINDED") then
--                 target.AI.GameObject.CharacterControl = false
--             end
--         end
--     end
-- end)

Ext.Osiris.RegisterListener("CharacterStatusApplied", 3, "before", function(character, statusId, instigator)
    if Osi.ObjectIsCharacter(character) == 1 then
        if statusId == "CHARMED" or statusId == "FEAR" or (NRD_StatExists(statusId) and Ext.Stats.Get(statusId).LoseControl == "Yes") then
            local hostID = CharacterGetReservedUserID(CharacterGetHostCharacter())
            local character = Ext.ServerEntity.GetCharacter(character)
            Ext.Print("Fixing GM LoseControl")
            Ext.Print("----------------")
            Ext.Print(character.DisplayName, character.IsPlayer, character.IsPossessed)
            local isPlayerCharacter = false
            for i,player in pairs(Osi.DB_IsPlayer:Get(nil)) do
                if character.MyGuid == GetUUID(player[1]) then
                    isPlayerCharacter = true
                    break
                end
            end
            -- Condition below match when it's a character controlled by the GM
            if character.IsPlayer and character.IsPossessed then
                character.IsPossessed = false
                -- CharacterMakeNPC(character.MyGuid)
                SetTag(character.MyGuid, "GM_LoseControlFixActive")
            end
            -- CharacterMakeNPC(character.MyGuid)
        end
    end
end)

Ext.Osiris.RegisterListener("CharacterStatusRemoved", 3, "before", function(character, statusId, instigator)
    if Osi.ObjectIsCharacter(character) == 1 and Osi.IsTagged(character, "GM_LoseControlFixActive") == 1 then
        if statusId == "CHARMED" or statusId == "FEAR" or (NRD_StatExists(statusId) and Ext.Stats.Get(statusId).LoseControl == "Yes") then
            local character = Ext.ServerEntity.GetCharacter(character)
            character.IsPossessed = true
            Osi.ClearTag(character.MyGuid, "GM_LoseControlFixActive")
            --- Don't ask why, but it works (otherwise the character controlled by the GM cannot be charmed anymore)
            CharacterAssignToUser(65537, character.MyGuid)
            CharacterAssignToUser(-65537, character.MyGuid)
            CharacterAssignToUser(65537, character.MyGuid)
        end
    end
end)


Ext.Osiris.RegisterListener("ObjectTurnStarted", 1, "before", function(object)
    if Osi.IsTagged(object, "GM_LoseControlFixActive") == 1 then
        Ext.ServerEntity.GetCharacter(object).IsPossessed = false
    end
end)

--- Prevent the player from being stuck on the charmed character
Ext.Osiris.RegisterListener("ObjectTurnEnded", 1, "before", function(object)
    if Osi.IsTagged(object, "GM_LoseControlFixActive") == 1 then
        Osi.MakePlayerActive(Osi.GetOwnerCharacter(object))
    end
end)

--- Avoid PCs to get stuck on characters they can't control because of LoseControl they applied
-- Ext.Osiris.RegisterListener("ObjectTurnEnded", 1, "before", function(object)
--     if Osi.IsTagged(object, "GM_LoseControlFixActive") == 1 then
--         local character = Ext.ServerEntity.GetCharacter(object)
--         local currentController = character.UserID
--         CharacterMakeNPC(character.MyGuid)
--         character.IsPlayer = true
--         character.IsPossessed = false
--         CharacterAssignToUser(currentController, character.MyGuid)
--     end
-- end)