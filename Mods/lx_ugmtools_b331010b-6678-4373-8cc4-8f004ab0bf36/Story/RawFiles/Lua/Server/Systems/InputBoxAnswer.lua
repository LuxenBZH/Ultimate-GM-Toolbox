
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
    -- Ext.Dump(InputBoxAnswers)
    for id, func in pairs(InputBoxAnswers) do
        Ext.Print(id, type(infos.ButtonID))
        if id == infos.ButtonID then
            func(infos)
        end
    end
end)

--- UGM input boxes
--- UGM button ID range : 4450-4500
--- 4450 : Set attribute permaboost
InputBoxAnswers[4450] = function(infos)
    if infos.Value and tonumber(infos.Value) then
        ---@type EsvCharacter
        local character = infos.Character
        local currentBonus = NRD_CharacterGetPermanentBoostInt(character.MyGuid, infos.Context)
        local computedBonus = infos.Value - character.Stats["Base"..infos.Context]
        NRD_CharacterSetPermanentBoostInt(character.MyGuid, infos.Context, (currentBonus+computedBonus))
        CharacterAddAttribute(character.MyGuid, "Dummy", 0)
    end
end

--- 4451 : Set attribute base
InputBoxAnswers[4451] = function(infos)
    if infos.Value and tonumber(infos.Value) then
        ---@type EsvCharacter
        local character = infos.Character
        if character.IsPlayer then
            NRD_PlayerSetBaseAttribute(character.MyGuid, infos.Context, tonumber(infos.Value))
            CharacterAddAttributePoint(character.MyGuid, 1)
            CharacterAddAttribute(character.MyGuid, "Dummy", 0)
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