--- @class GMTools
GMTools = {}

--- @alias ColorMode "RGB" | "HEX"
--- @alias ColorPart "ClothColor1" | "ClothColor2" | "ClothColor3" | "HairColor" | "SkinColor"

---@param character GUID
---@param part ColorPart
---@param mode ColorMode
---@param colors string
function GMTools:CharacterModifyColor(character, part, mode, colors)
    character = Ext.ServerEntity.GetCharacter(character)
    local long
    if mode == "RGB" then
        long = ((colors[1] & 0x0ff)<<16)|((colors[2] & 0x0ff)<<8)|(colors[3] & 0x0ff)
    elseif mode == "HEX" then
        long = tonumber(colors)
    else
        _P("[UGMTools:CharacterModifyColor] Unknown mode!")
        return
    end
    character.PlayerData.CustomData[part] = long
    Ext.Net.BroadcastMessage("UGMT_CharacterModifyColor", Ext.Json.Stringify({
        Character = character.NetID,
        Part = part,
        Color = long
    }))
    ApplyStatus(character.MyGuid, "DEACTIVATED", 1.0, 1)
end

-- Activate/Deactivate
local function MassActivateDeactivate(item, event)
    if event == "GM_Activate" then
        for char,x in pairs(SelectionManager:GetSelectedCharacters()) do
            RemoveStatus(char, "DEACTIVATED")
        end
    elseif event == "GM_Deactivate" then
        for char,x in pairs(SelectionManager:GetSelectedCharacters()) do
            ApplyStatus(char, "DEACTIVATED", -1.0, 1)
        end
    else return end
end

Ext.RegisterOsirisListener("StoryEvent", 2, "before", MassActivateDeactivate)

-- local function MassSheatheUnsheathe(item, event)
--     if event == "GM_Sheathe" then
--         for char,x in pairs(SelectionManager:GetSelectedCharacters()) do
--             RemoveStatus(char, PersistentVars.selectType.current)
--             RemoveStatus(char, "UNSHEATHED")
--         end
--     elseif event == "GM_Unsheathe" then
--         for char,x in pairs(SelectionManager:GetSelectedCharacters()) do
--             RemoveStatus(char, PersistentVars.selectType.current)
--             ApplyStatus(char, "UNSHEATHED", -1.0, 1)
--         end
--     else return end
--     ClearSelectionAndTarget()
-- end

-- Ext.RegisterOsirisListener("StoryEvent", 2, "before", MassSheatheUnsheathe)

function ToggleCombatMode()
    for char,x in pairs(SelectionManager:GetSelectedCharacters()) do
        if HasActiveStatus(char, "UNSHEATHED") == 1 then
            RemoveStatus(char, "UNSHEATHED")
        else
            ApplyStatus(char, "UNSHEATHED", -1.0, 1)
        end
    end
end

-- local function StoryFreezeManagement(item, event)
--     if event == "GM_Freeze_Players" then
--         if GetTableSize(selected) < 1 then
--             local players = Osi.DB_IsPlayer:Get(nil)
--             for i,player in pairs(players) do
--                 CharacterFreeze(player)
--                 ApplyStatus(player, "GM_STORYFREEZE", -1.0)
--             end
--         else
--             for char,x in pairs(SelectionManager:GetSelectedCharacters()) do
--                 CharacterFreeze(char)
--                 ApplyStatus(char, "GM_STORYFREEZE", -1.0)
--             end
--         end
--     elseif event == "GM_Unfreeze_Players" then
--         if GetTableSize(selected) < 1 then
--             local players = Osi.DB_IsPlayer(nil)
--             for i,player in pairs(players) do
--                 RemoveStatus(player, "GM_STORYFREEZE")
--             end
--         else
--             for char,x in pairs(SelectionManager:GetSelectedCharacters()) do
--                 RemoveStatus(char, "GM_STORYFREEZE")
--             end
--         end
--     else return end
--     ClearSelectionAndTarget()
-- end

-- Ext.RegisterOsirisListener("StoryEvent", 2, "before", StoryFreezeManagement)

function StoryFreeze()
    if GetTableSize(selected) < 1 then
        for char,x in pairs(SelectionManager:GetSelectedCharacters()) do
            if HasActiveStatus(char, "GM_STORYFREEZE") == 0 then
                CharacterFreeze(char)
                ApplyStatus(char, "GM_STORYFREEZE", -1.0)
            else
                CharacterUnfreeze(char)
                RemoveStatus(char, "GM_STORYFREEZE")
            end
        end
    else
        for char,x in pairs(SelectionManager:GetSelectedCharacters()) do
            if HasActiveStatus(char, "GM_STORYFREEZE") == 0 then
                CharacterFreeze(char)
                ApplyStatus(char, "GM_STORYFREEZE", -1.0)
            else
                CharacterUnfreeze(char)
                RemoveStatus(char, "GM_STORYFREEZE")
            end
        end
    end
end


local function Unfreeze(char, status, causee)
    if status ~= "GM_STORYFREEZE" then return end
    CharacterUnfreeze(char)
end

Ext.RegisterOsirisListener("CharacterStatusRemoved", 3, "before", Unfreeze)

local function FetchVisibleStatus(character)
    local char = Ext.ServerEntity.GetCharacter(character)
    local charStatuses = char:GetStatuses()
    local list = {}
    for i,status in pairs(charStatuses) do
        if Ext.GetStat(status).DisplayName:len() > 0 and status ~= PersistentVars.targetType.current then
            list:insert(status)
        end
    end
    return list
end

local function CopyRemoveStatus(item, event)
    if GetTableSize(selected) == 0 then return end
    if event == "GM_Copy_Status" then
        if SelectionManager.CurrentTarget == nil then return end
        local statuses = FetchVisibleStatus(SelectionManager.CurrentTarget)
        for char,x in pairs(SelectionManager:GetSelectedCharacters()) do
            for i,status in pairs(statuses) do
                local duration = GetStatusTurns(SelectionManager.CurrentTarget, status)
                ApplyStatus(char, status, duration, 1)
            end
        end
    elseif event == "GM_Clear_Status" then
        for char,x in pairs(SelectionManager:GetSelectedCharacters()) do
            local statuses = FetchVisibleStatus(char)
            for i,status in pairs(statuses) do
                RemoveStatus(char, status)
            end
        end
    else return end
end

Ext.RegisterOsirisListener("StoryEvent", 2, "before", CopyRemoveStatus)

-- Transform character
function TransformCharacter(item, event)
    if event ~= "GM_Transform" or SelectionManager.CurrentTarget == nil then return end
    for char,x in pairs(SelectionManager:GetSelectedCharacters()) do
        SelectionManager:ClearFlag(char) -- Since the template change, the GUID have to be removed manually
        CharacterTransformAppearanceTo(char, SelectionManager.CurrentTarget, 0, 1)
    end
end

Ext.RegisterOsirisListener("StoryEvent", 2, "before", TransformCharacter)

-- Bossifier
local function Bossify(item, event)
    if event ~= "GM_Bossify" then return end
    for char,x in pairs(SelectionManager:GetSelectedCharacters()) do
        if IsBoss(char) == 0 then
            SetIsBoss(char, 1)
        else
            SetIsBoss(char, 0)
        end
    end
end

Ext.RegisterOsirisListener("StoryEvent", 2, "before", Bossify)

-- Make PC or NPC
function ManagePlayable(item, event)
    if event == "GM_MakePlayer" then
        for char,x in pairs(SelectionManager:GetSelectedCharacters()) do
            CharacterMakePlayer(char)
            Osi.DB_IsPlayer(char)
        end
    elseif event == "GM_MakeNPC" then
        for char,x in pairs(SelectionManager:GetSelectedCharacters()) do
            CharacterMakeNPC(char)
            Osi.DB_IsPlayer:Delete(char)
            Ext.ServerEntity.GetCharacter(char).Multiplayer = false
        end
    elseif event == "GM_MakeFollower" and SelectionManager.CurrentTarget ~= nil then
        for char,x in pairs(SelectionManager:GetSelectedCharacters()) do
            if CharacterIsPlayer(SelectionManager.CurrentTarget) then
                CharacterAddToPlayerCharacter(char, SelectionManager.CurrentTarget)
                CharacterGiveSkill(char, "Shout_FollowerKeepPosition")
                CharacterGiveSkill(SelectionManager.CurrentTarget, "Shout_FollowerKeepPosition")
                
            end
            CharacterAddToPlayerCharacter(char, SelectionManager.CurrentTarget)
        end
    elseif event == "GM_UnmakeFollower" then
        for char,x in pairs(SelectionManager:GetSelectedCharacters()) do
            local owner = CharacterGetOwner(char)
            if owner ~= "" then
                CharacterRemoveFromPlayerCharacter(char, owner)
                CharacterGiveSkill(char, "Shout_FollowerKeepPosition")
                CharacterGiveSkill(SelectionManager.CurrentTarget, "Shout_FollowerKeepPosition")
            end
            CharacterRemoveFromPlayerCharacter(char, owner)
            Ext.ServerEntity.GetCharacter(char).Multiplayer = false
        end
    elseif event == "GM_AssignPlayer" and SelectionManager.CurrentTarget ~= nil then
        for char,x in pairs(SelectionManager:GetSelectedCharacters()) do
            local user = CharacterGetReservedUserID(SelectionManager.CurrentTarget)
            CharacterAssignToUser(char, user)
        end
    else return end
end

Ext.RegisterOsirisListener("StoryEvent", 2, "before", ManagePlayable)

function ManageFollower()
    for char,x in pairs(SelectionManager:GetSelectedCharacters()) do
        if CharacterIsPlayer(SelectionManager.CurrentTarget) then
            ManagePlayable("", "GM_UnmakeFollower")
        else
            ManagePlayable("", "GM_MakeFollower")
        end
    end
end

function RespecCharacter(character)
    if not Ext.GetCharacter(character).IsPlayer then return end
    for attr,_ in pairs(attributes) do
        local basePoints = math.floor(Ext.GetCharacter(character).Stats["Base"..attr] - NRD_CharacterGetPermanentBoostInt(character, attr) - Ext.ExtraData.AttributeBaseValue)
        Ext.Print("base attributes",basePoints)
        NRD_PlayerSetBaseAttribute(character, attr, Ext.ExtraData.AttributeBaseValue)
        CharacterAddAttributePoint(character, basePoints)
        CharacterAddAttribute(character, "Dummy", 0)
    end
    for ab,_ in pairs(abilities) do
        local basePoints = math.floor(CharacterGetBaseAbility(character, ab) - NRD_CharacterGetPermanentBoostInt(character, ab))
        NRD_PlayerSetBaseAbility(character, ab, 0)
        CharacterAddAttribute(character, "Dummy", 0)
        CharacterAddAbilityPoint(character, basePoints)
    end
    for civ,_ in pairs(civilAbilities) do
        local basePoints = math.floor(CharacterGetBaseAbility(character, civ) - NRD_CharacterGetPermanentBoostInt(character, civ))
        NRD_PlayerSetBaseAbility(character, civ, 0)
        CharacterAddAttribute(character, "Dummy", 0)
        CharacterAddCivilAbilityPoint(character, basePoints)
    end
end

function Respec()
    for character,x in pairs(selected) do
        RespecCharacter(character)
    end
end
 
function UGM_ApplyStatus(status, duration)
    if duration ~= -1 then duration = duration * 6.0 end
    if NRD_StatExists(string.upper(status)) then
        for char,x in pairs(SelectionManager:GetSelectedCharacters()) do
            ApplyStatus(char, string.upper(status), duration, 1)
        end
    else
        print("This status does not exists !")
    end
end

function UGM_ShowVisibleStatuses()
    for char,x in pairs(SelectionManager:GetSelectedCharacters()) do
        print("Character: "..Ext.GetCharacter(char).DisplayName)
        local statuses = FetchVisibleStatus(char)
        for i,status in pairs(statuses) do
            print(status)
        end
    end
end

--- Perform a regex search for engine or display name of stat entries
---@param mode string can be e for engine name or d for display name
---@param type string Character, Weapon, Armor, Shield, StatusData, SkillData
---@param input string the string to look for
---@return string[]
function UGM_StatSearchName(mode, type, input)
    if mode == "d" and type ~= "StatusData" and type ~= "SkillData" then
        print("Cannot use Display mode (d) for stat entries other than StatusData and SkillData !")
        return {}
    end
    local stats = Ext.GetStatEntries(type)
    local result = {}
    for i,stat in pairs(stats) do
        if mode == "e" then
            if stat:lower():find(input:lower()) ~= nil then
                table.insert(result, stat)
            end
        elseif mode == "d" then
            if Ext.GetStat(stat).DisplayName:lower():find(input:lower()) ~= nil then
                table.insert(result, stat)
            end
        else
            print("Mode "..mode.." is incorrect !")
        end
    end
    return result
end

function ItemRemoveTool(item, event)
    if event ~= "GM_Destroy_Item" then return end
    local pos = Ext.GetItem(item).WorldPos
    local items = Ext.GetItemsAroundPosition(pos[1], pos[2], pos[3], 1.0)
    for i,j in pairs(items) do
        if j ~= item then
            ItemRemove(j)
        end
    end
end

--- Delete Items
---@param item string GUID
---@param event string Osiris event
Ext.RegisterOsirisListener("StoryEvent", 2, "after", ItemRemoveTool)

function ItemPlayEffect(item, effect)
    SetVarString(item, "UGM_ItemPlayEffect", effect)
    CharacterItemSetEvent("00000000-0000-0000-0000-000000000000", item, "UGM_ItemPlayEffect")
end