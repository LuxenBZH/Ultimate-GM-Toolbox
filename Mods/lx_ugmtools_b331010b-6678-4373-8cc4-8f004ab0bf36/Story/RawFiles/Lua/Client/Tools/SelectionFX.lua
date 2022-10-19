local CharactersFX = {}

Ext.RegisterNetListener("UGMT_SetSelectionFX", function(call, payload, ...)
    local infos = Ext.Json.Parse(payload)
    local character = Ext.ClientEntity.GetCharacter(tonumber(infos.Character))
    if not CharactersFX[character.NetID] and infos.Type == "Select" then
        local visual = Ext.ClientVisual.CreateOnCharacter(character.WorldPos, character, character)
        visual:ParseFromStats("RS3_FX_UI_Icon_TriangleDown_01_Blue:Dummy_OverheadFX", "")
        CharactersFX[character.NetID] = visual.Handle
    elseif not CharactersFX[character.NetID] and infos.Type == "Target" then
        local visual = Ext.ClientVisual.CreateOnCharacter(character.WorldPos, character)
        visual:ParseFromStats("RS3_FX_UI_Icon_TriangleDown_01_Yellow:Dummy_OverheadFX", "")
        CharactersFX[character.NetID] = visual.Handle
    end
end)

Ext.RegisterNetListener("UGMT_ClearSelectionFX", function(call, payload, ...)
    local infos = Ext.Json.Parse(payload)
    local character = Ext.ClientEntity.GetCharacter(tonumber(infos.Character))
    if CharactersFX[character.NetID] then
        local fx = Ext.Visual.Get(CharactersFX[character.NetID])
        fx:Delete()
        CharactersFX[character.NetID] = nil
    end
end)

Ext.RegisterNetListener("UGMT_WipeSelectionFXTable", function(call, payload, ...)
    CharactersFX = {}
end)

Ext.Events.GameStateChanged:Subscribe(function(e)
    if e.ToState == "SwapLevel" then
        CharactersFX = {}
    end
end)