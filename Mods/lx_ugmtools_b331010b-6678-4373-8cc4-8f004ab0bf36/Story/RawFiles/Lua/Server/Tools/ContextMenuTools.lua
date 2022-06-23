Ext.RegisterNetListener("UGM_AssignCharacterToUser", function(call, payload, ...)
    local infos = Ext.Json.Parse(payload)
    CharacterAssignToUser(tonumber(infos.User), Ext.GetCharacter(infos.Character).MyGuid)
end)