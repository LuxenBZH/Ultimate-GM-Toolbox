
---@class InputBoxAnswers
InputBoxAnswers = {}

-- InputBoxAnswers.__index = InputBoxAnswers
-- InputBoxAnswers.__call = function(_, id, func)
--     self[id] = func
--     Ext.BroadcastMessage("UGM_InitInputBoxClient", Ext.JsonStringify(self))
-- end

-- Ext.RegisterNetListener("UGM_InitInputBoxClient", function(channel, payload)
--     Ext.PostMessageToClient(Ext.GetCharacter(tonumber(payload)).MyGuid, "UGM_InitInputBoxClient", Ext.JsonStringify(InputBoxAnswers))
-- end)
Ext.RegisterNetListener("UGM_InputBox", function(channel, payload)
    local infos = Ext.JsonParse(payload)
    infos.Character = not infos.Character or Ext.GetCharacter(infos.Character)
    -- Ext.Print(type(infos.ButtonID))
    for id, func in pairs(InputBoxAnswers) do   
        if id == infos.ButtonID then
            func(infos)
        end
    end
end)

-- statTranslations = {
--     VitalityBoost = "MaxVitality",
--     Armor = "MaxArmor",
--     MagicArmor = "MaxMagicArmor"
-- }

local baseStatTranslation = setmetatable({
    VitalityBoost = "MaxVitality",
    Armor = "MaxArmor",
    MagicArmor = "MaxMagicArmor",
    Source = "MaxMpOverride",
}, {
    __index = function(tbl, key)
        return "Base"..key
    end
})

local permaBoostTranslation = setmetatable({
    -- VitalityBoost = "MaxVitality",
    Source = "MagicPoints"
}, {
    __index = function(tbl, key)
        return key
    end
})

--- UGM input boxes
--- UGM button ID range : 4450-4500
--- 4450 : Set attribute permaboost
InputBoxAnswers[4450] = function(infos)
    if infos.Value and tonumber(infos.Value) then
        ---@type EsvCharacter
        local character = infos.Character
        if character.Stats[baseStatTranslation[infos.Context]] ~= 0
            and infos.Context ~= "VitalityBoost" and infos.Context ~= "Source" then
            local currentBonus = NRD_CharacterGetPermanentBoostInt(character.MyGuid, permaBoostTranslation[infos.Context])
            local computedBonus = infos.Value - character.Stats[baseStatTranslation[infos.Context]]
            NRD_CharacterSetPermanentBoostInt(character.MyGuid, permaBoostTranslation[infos.Context], (currentBonus+computedBonus))
        else
            NRD_CharacterSetPermanentBoostInt(character.MyGuid, permaBoostTranslation[infos.Context], tonumber(infos.Value))
        end
        CharacterAddAttribute(character.MyGuid, "Dummy", 0)
    end
end

--- 4451 : Set attribute/ability base
InputBoxAnswers[4451] = function(infos)
    if infos.Value and tonumber(infos.Value) then
        ---@type EsvCharacter
        local character = infos.Character
        if character.IsPlayer then
            if abilities[infos.Context] or civilAbilities[infos.Context] then
                NRD_PlayerSetBaseAbility(character.MyGuid, infos.Context, tonumber(infos.Value))
            else
                NRD_PlayerSetBaseAttribute(character.MyGuid, infos.Context, tonumber(infos.Value))
            end
            CharacterAddAttribute(character.MyGuid, "Dummy", 0)
            CharacterAddAttributePoint(character.MyGuid, 1)
            CharacterAddAttributePoint(character.MyGuid, -1)
        end
    end
end

--- 4452 : Add attribute points
InputBoxAnswers[4452] = function(infos)
    if infos.Value and tonumber(infos.Value) then
        ---@type EsvCharacter
        local character = infos.Character
        if character.IsPlayer then
            CharacterAddAttributePoint(character.MyGuid, tonumber(infos.Value))
        end
    end
end

--- 4453 : Reset permaboost to 0
InputBoxAnswers[4453] = function(infos)
    NRD_CharacterSetPermanentBoostInt(infos.Character.MyGuid, infos.Context, 0)
    CharacterAddAttribute(infos.Character.MyGuid, "Dummy", 0)
end

--- 4454 : Set character scale
InputBoxAnswers[4454] = function(infos)
    Ext.BroadcastMessage("UGM_SetCharacterScale", infos.Character.NetID..":"..tostring(tonumber(infos.Value)/100), nil)
    PersistentVars[currentLevel].scale[infos.Character.MyGuid] = tonumber(infos.Value)/100
end

--- 4455 : Add ability points
InputBoxAnswers[4455] = function(infos)
    if infos.Value and tonumber(infos.Value) then
        if infos.Character.IsPlayer then
            if abilities[infos.Context] then
                CharacterAddAbilityPoint(infos.Character.MyGuid, tonumber(infos.Value))
            elseif civilAbilities[infos.Context] then
                CharacterAddCivilAbilityPoint(infos.Character.MyGuid, tonumber(infos.Value))
            end
        end
    end
end