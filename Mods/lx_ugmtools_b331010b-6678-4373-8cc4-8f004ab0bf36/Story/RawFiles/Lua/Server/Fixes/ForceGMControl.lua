Ext.RegisterOsirisListener("ObjectTurnStarted", 1, "before", function(object)
    if ObjectIsCharacter(object) == 1 then
        local char = Ext.GetCharacter(object)
        if not(char:HasTag("GM_LoseControlFixActive")) then
            if char.UserID == 65537 and char.IsPossessed == false then
                Ext.Print("Forcing GM control on character")
                char.IsPossessed = true
            end
            if Ext.GetCharacter(object).HasOwner then
                local char = Ext.GetCharacter(object)
                if Ext.GetCharacter(char.OwnerHandle).IsPossessed then
                    Ext.Print("Forcing GM control on summon")
                    char.IsPossessed = true
                end
            end
        end
    end
end)