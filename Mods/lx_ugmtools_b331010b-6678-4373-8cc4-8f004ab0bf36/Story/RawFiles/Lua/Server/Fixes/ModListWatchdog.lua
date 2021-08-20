-------- Mod list watchdog
--- This service stores the mod list of the savegame and check the new one when a session is being loaded
--- The purpose is to prevent GMs to accidently not having main menu mod list unmatching the one from the save file, which
--- leads to critical issues which were never fixed by Larian.

-- Ext.RegisterOsirisListener("GameStarted", 2, "before", function(map, isEditor)
Ext.RegisterListener("GameStateChanged", function(fromState, toState)
    if not (fromState == "Sync" and toState == "Running") then return end
    TimerLaunch("LX_GM_CheckModList_Delay", 3000)
end)

local function CheckModList(timer)
    if timer ~= "LX_GM_CheckModList_Delay" then return end
    Ext.Print("Posting message to host...")
    if PersistentVars.ModList ~= nil then
        Ext.PostMessageToUser(Ext.GetCharacter(CharacterGetHostCharacter()).UserID, "LX_GM_CheckModList", Ext.JsonStringify(PersistentVars.ModList))
    else
        local lists = {
            modList = {},
            infos = {},
            firstTime = true
        }
        Ext.PostMessageToUser(Ext.GetCharacter(CharacterGetHostCharacter()).UserID, "LX_GM_CheckModList", Ext.JsonStringify(lists))
    end
end

Ext.RegisterOsirisListener("TimerFinished", 1, "before", CheckModList)
Ext.RegisterNetListener("LX_GM_CheckModList_Denied", function()
    TimerLaunch("LX_GM_CheckModList_Delay", 3000)
end)

Ext.RegisterNetListener("LX_GM_StoreModList", function(channel, payload, ...)
    Ext.Print("Received Mod List from client")
    if payload ~= nil and payload ~= "" then
        PersistentVars.ModList = Ext.JsonParse(payload)
    end
end)