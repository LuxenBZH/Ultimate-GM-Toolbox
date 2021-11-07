Ext.RegisterNetListener("UGM_ContextMenu", function(call, payload)
    local infos = Ext.JsonParse(payload)
    infos.Character = Ext.GetCharacter(infos.Character)
    if infos.Context == "ToggleBoss" then
        if IsBoss(infos.Character.MyGuid) == 1 then
            SetIsBoss(infos.Character.MyGuid, 0)
        else
            SetIsBoss(infos.Character.MyGuid, 1)
        end
    elseif infos.Context == "Respec" then
        RespecCharacter(infos.Character.MyGuid)
    end
end)