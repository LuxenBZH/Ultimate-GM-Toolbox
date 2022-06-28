local answers = {
    ["ugmt_bossify"] = {
        Callback = function(character)
            local isBoss = IsBoss(character.MyGuid)
            SetIsBoss(character.MyGuid, math.abs(isBoss-1))
        end
    },
    ["ugmt_follow"] = {
        Callback = function(character)
            for char,x in pairs(selected) do
                Osi.ProcCharacterFollowCharacter(char, character.MyGuid)
                ApplyStatus(char, "GM_FOLLOW", -1.0, 1)
                PersistentVars.Followers[char] = character.MyGuid
            end
        end
    },
    ["ugmt_togglefollower"] = {
        Callback = function(character)
            if character.PartyFollower then
                local owner = CharacterGetOwner(character.MyGuid)
                CharacterRemoveFromPlayerCharacter(character.MyGuid, owner)
            else
                for char,x in pairs(selected) do
                    Ext.Print(Ext.GetCharacter(char).PartyFollower)
                    if not Ext.GetCharacter(char).PartyFollower then
                        Ext.Print(char, GetUUID(character.MyGuid))
                        CharacterAddToPlayerCharacter(GetUUID(char), character.MyGuid)
                    end
                end
            end
        end
    },
    ["ugmt_confiscateweapons"] = {
        Callback = function(character)
            local pouch = CreateItemTemplateAtPosition("244deb74-a42b-44b3-94b1-a7fe3620b98e", character.WorldPos[1], character.WorldPos[2], character.WorldPos[3])
            CharacterMoveWeaponsToContainer(character.MyGuid, pouch)
        end

    },
    ["ugmt_confiscateinventory"] = {
        Callback = function(character)
            local pouch = CreateItemTemplateAtPosition("244deb74-a42b-44b3-94b1-a7fe3620b98e", character.WorldPos[1], character.WorldPos[2], character.WorldPos[3])
            local equipped = {}
            for i,slot in pairs(equipmentSlots) do
                local item = CharacterGetEquippedItem(character.MyGuid, slot)
                if item then
                    equipped[item] = true
                end
            end
            for i,item in pairs(character:GetInventoryItems()) do
                if not equipped[item] then
                    ItemToInventory(item, pouch, 99999, 0, 0)
                end
            end
        end
    },
    ["ugmt_toggleplayer"] = {
        Callback = function(character)
            if not character.IsPlayer then
                CharacterMakePlayer(character.MyGuid, target or "NULL_00000000-0000-0000-0000-000000000000")
            else
                CharacterMakeNPC(character.MyGuid)
                character.IsPlayer = false
            end
        end
    },
    ["ugmt_refreshtreasuretable"] = {
        Callback = function(character)
            local highestLevel = 0
            local highestLeveledCharacter = nil
            for i,player in pairs(Osi.DB_IsPlayer:Get(nil)) do
                local level = Ext.GetCharacter(player).Stats.Level
                if level > highestLevel then
                    highestLevel = level
                    highestLeveledCharacter = player
                end
            end
            GenerateItems(character.MyGuid, character.MyGuid)
        end
    }
}

Ext.RegisterNetListener("UGMT_ContextMenuAction", function(call, payload, ...)
    local infos = Ext.Json.Parse(payload)
    local character = Ext.GetCharacter(tonumber(infos.Character))
    local answer = answers[infos.Callback]
    answer.Callback(character)
end)

Ext.RegisterNetListener("UGM_InputBox", function(call, payload, ...)
    local infos = Ext.Json.Parse(payload)
    local character = Ext.GetCharacter(tonumber(infos.Character))
    if infos.ButtonID == 4501 then
        CharacterSetCustomTradeTreasure(character.MyGuid, infos.Value)
    end
end)