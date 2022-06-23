--- @param character EsvCharacter
local function GiveControlToAI(character)
    if not character:HasTag("GM_LoseControlFixActive") then
        local hostID = CharacterGetReservedUserID(CharacterGetHostCharacter())
        Ext.Print("Fixing GM LoseControl")
        -- CharacterRemoveFromParty(character.MyGuid)
        -- if character.IsPossessed then
        --     SetTag(character.MyGuid, "GM_LoseControlWasPossessed")
        -- end
        Ext.Print("----------------")
        Ext.Print(character.DisplayName, character.IsPlayer, character.IsPossessed)
        local isPlayerCharacter = false
        for i,player in pairs(Osi.DB_IsPlayer:Get(nil)) do
            if character.MyGuid == GetUUID(player[1]) then
                isPlayerCharacter = true
                break
            end
        end
        if character.IsPlayer and not isPlayerCharacter then
        -- if character.ReservedUserID == hostID or character.ReservedUserID == 65537 then
            -- CharacterRemoveFromParty(character.MyGuid)
            -- CharacterMakeNPC(character.MyGuid)
            character.IsPossessed = false
            Ext.Print(character.MyGuid, character.IsPossessed)
            
            SetTag(character.MyGuid, "GM_LoseControlFixActive")
        end
        -- CharacterMakeNPC(character.MyGuid)
    end
end

local engineStatuses = {
    CHARMED = true,
    FEAR = true
}

Ext.RegisterOsirisListener("ObjectTurnStarted", 1, "before", function(object)
    if HasActiveStatus(object, "CHARMED") == 1 then
        Ext.GetCharacter(object).IsPossessed = false
    end
end)

Ext.RegisterOsirisListener("CharacterStatusApplied", 3, "before", function(target, statusId, causee)
    if ObjectIsCharacter(target) == 1 and (NRD_StatExists(statusId) or engineStatuses[statusId]) then
        target = Ext.GetCharacter(target)
        if engineStatuses[statusId] then
            GiveControlToAI(target)
            return
        end
        local pass,status = pcall(Ext.GetStat, statusId)
        if not pass then return end
        -- Ext.Print(status.LoseControl == "Yes", not (status.Name == "POLYMORPHED"))
        if status.LoseControl == "Yes" and not (status.StatusType == "POLYMORPHED") then
            -- Ext.Print("TEST")
            GiveControlToAI(target)
        end
    end
end)

Ext.RegisterOsirisListener("CharacterStatusRemoved", 3, "before", function(character, statusId, causee)
    if IsTagged(character, "GM_LoseControlFixActive") == 1 and (NRD_StatExists(statusId) or engineStatuses[statusId]) then
        CharacterAssignToUser(65537, character)
        if not engineStatuses[statusId] then
            local pass,status = pcall(Ext.GetStat, statusId)
            if not pass or status == nil then return end
            if status.LoseControl == "No" then return end
        end    
        local character = Ext.GetCharacter(character)
        local statuses = character:GetStatuses()
        local stillLost = false
        for i,sts in pairs(statuses) do
            if NRD_StatExists(sts) then
                local pass,substs = pcall(Ext.GetStat, sts)
                if pass and substs.LoseControl == "Yes" then 
                    stillLost = true
                    break
                end
            end
            if engineStatuses[sts] then
                stillLost = true
                break
            end
        end 

        Ext.Print("STILLLOST?", stillLost)
        if not stillLost then
            Ext.Print("Recovering fix from", statusId)
            local chars = Ext.GetCharactersAroundPosition(character.WorldPos[1], character.WorldPos[2], character.WorldPos[3], 30)
            -- Re-possess the character only if the GM is currently controling characters around
            local possession = false
            for i,char in pairs(chars) do
                if Ext.GetCharacter(char).IsPossessed then
                    possession = true
                end
            end
            if possession and CharacterIsInCombat(character.MyGuid) then
                character.IsPossessed = true
            else
                character.IsPossessed = false
            end

            -- if IsTagged(character, "GM_LoseControlWasPossessed") == 1 then
                -- character.IsPossessed = true
            -- end
            -- CharacterMakePlayer(character)
            ClearTag(character.MyGuid, "GM_LoseControlFixActive")
            -- ClearTag(character.MyGuid, "GM_LoseControlWasPossessed")
        end
    end
end)