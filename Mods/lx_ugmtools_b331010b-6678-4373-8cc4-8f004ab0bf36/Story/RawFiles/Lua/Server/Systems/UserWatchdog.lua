Users = {}

Ext.RegisterOsirisListener("UserConnected", 3, "before", function(userID, userName, userProfile)
    Users[userID] = {
        UserID = userID,
        UserName = userName,
        UserProfile = userProfile,
        IsHost = userID == 65537     
    }
    Ext.PostMessageToClient(CharacterGetHostCharacter(), "UGM_ClientList", Ext.Json.Stringify(Users))
end)

Ext.RegisterOsirisListener("UserDisconnected", 3, "before", function(userID, ...)
    Users[userID] = nil
    Ext.PostMessageToClient(CharacterGetHostCharacter(), "UGM_ClientList", Ext.Json.Stringify(Users))
end)