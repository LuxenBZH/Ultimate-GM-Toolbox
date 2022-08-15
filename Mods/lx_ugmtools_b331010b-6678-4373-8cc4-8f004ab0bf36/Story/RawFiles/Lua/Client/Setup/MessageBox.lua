local function OpenMessageBox(title, message, buttonText, input)
    local ui = Ext.GetBuiltinUI("Public/Game/GUI/msgBox.swf")
    if ui then
        ui:Hide()
        local root = ui:GetRoot()
        --root.addButton(3, LocalizedText.UI.Close.Value, "", "")
        root.setPopupType(1)
        -- root.setText("Roll for "..stat.ID.."<br>".."Enter a modifier (e.g. 5 for +5, -2 for -2)<br>")
        --ui:Invoke("setAnchor", 0)
        --ui:Invoke("setPos", 50.0, 50.0)
        -- ui:Invoke("setText", "Roll for "..stat.Name.."<br>".."Enter a modifier (e.g. 5 for +5, -2 for -2)<br>")
        ui:Invoke("removeButtons")
        ui:Invoke("addButton", 4242, buttonText, "", "")
        -- ui:Invoke("addBlueButton", 1846, "Cancel")

        --ui:Invoke("addYesButton", 1)
        -- ui:Invoke("showWin")
        -- ui:Invoke("fadeIn")
        --ui:Invoke("setWaiting", true)
        -- ui:Invoke("setPopupType", 2)
        ui:Invoke("setInputEnabled", input)
        -- ui:Invoke("setTooltip", 0, stat.ID)
        -- root.currentDevice = characterNetID
        ui:Invoke("showPopup", title, message)
        -- root.showMsgbox()
        ui:Show()
        -- specialMessageBoxOpen = true
    end
end

local function ManageAnswer(ui, call, buttonID, device)
    -- Ext.Print(buttonID, ui:GetRoot().popup_mc.input_mc.copy_mc.tooltip)
    local ui = Ext.GetBuiltinUI("Public/Game/GUI/msgBox.swf")
    if buttonID == 4242.0 then
        ui:Hide()
    end
end

local function RegisterUIListeners_GM_TextBox()
    local msgBox = Ext.GetBuiltinUI("Public/Game/GUI/msgBox.swf")
    Ext.RegisterUICall(msgBox, "ButtonPressed", ManageAnswer)
end

Ext.RegisterListener("SessionLoaded", RegisterUIListeners_GM_TextBox)

Ext.RegisterNetListener("LX_GM_MessageBox", function(channel, payload, ...)
    local infos = Ext.JsonParse(payload)
    OpenMessageBox("Warning!", infos)
end)

local function RefreshModList()
    local lists = {
        modList = {},
        infos = {},
        firstTime = false
    }
    for i,mod in pairs(Ext.GetModLoadOrder()) do
        lists.modList[mod] = true
        lists.infos[mod] = Ext.GetModInfo(mod).Name
    end
    Ext.PostMessageToServer("LX_GM_StoreModList", Ext.JsonStringify(lists))
end

-- Ext.RegisterOsirisListener("GameStarted", 2, "before", function()
-- Ext.RegisterListener("GameStateChanged", function(fromState, toState)
Ext.RegisterNetListener("LX_GM_CheckModList", function(channel, payload, ...)
    Ext.Print("Received GM mod list")
    if Ext.GetGameState() ~= "Running" then 
        Ext.PostMessageToServer("LX_GM_CheckModList_Denied", "") 
        return 
    end
    local lists = Ext.JsonParse(payload)
    if lists.firstTime then
        Ext.Print("Generating Mod list infos...")
        RefreshModList()
    else
        Ext.Print("Inspecting mod list...")
        
        local identical = false
        local newModList = {}
        for i,mod in pairs(Ext.GetModLoadOrder()) do
            newModList[mod] = true
        end
        local longest = {}
        local shortest = {}
        Ext.Print(GetTableSize(lists.modList), GetTableSize(newModList))
        if GetTableSize(lists.modList) > GetTableSize(newModList) then
            longest = CopyTable(lists.modList)
            shortest = CopyTable(newModList)
        elseif GetTableSize(lists.modList) < GetTableSize(newModList) then
            longest = CopyTable(newModList)
            shortest = CopyTable(lists.modList)
        else
            identical = true
            longest = CopyTable(lists.modList)
            shortest = CopyTable(newModList)
        end
        local added = {}
        local removed = {}
        local changed = {}
        for mod,b in pairs(longest) do
            if not shortest[mod] then
                identical = false
                if not lists.modList[mod] then
                    table.insert(added, mod)
                elseif not newModList[mod] then
                    table.insert(removed, mod)
                -- else
                --     table.insert(changed, {PersistentVars.CampaignModList[i], newModList[i]})
                end
            end
        end
        for mod,b in pairs(shortest) do
            if not longest[mod] then
                identical = false
                if not lists.modList[mod] then
                    table.insert(added, mod)
                end
            end
        end
        if not identical then
            local textMessage = "The current loaded mod list is not matching the one from the save file. If you voluntarily added or removed a mod, or changed the order, make sure to save after this message box and reload that new save to make sure the changes has been taken into account.<br> If not, <b>do not continue.</b> Your main menu mod list isn't matching the one of the save file. Please check again that your main menu mod list is matching the one of the save file (gear button at the bottom right).<br> You can do it easily by loading the same campaign in prepare mode (if you didn't changed the mods in the meantime) and load back to this save.<br> Unmatching mods :"
            -- Ext.Dump(added)
            for i,mod in pairs(added) do
                textMessage = textMessage.."<br>NEW: "..Ext.GetModInfo(mod).Name
            end
            -- Ext.Dump(removed)
            for i,mod in pairs(removed) do
                textMessage = textMessage.."<br>DELETED: "..lists.infos[mod]
            end
            -- for i, mods in pairs(changed) do
            --     Ext.Print(mods[1], mods[2])
            --     textMessage = textMessage.."\b ORDER CHANGED: "..PersistentVars.CampaignModListName[mods[1]].." < "..Ext.GetModInfo(mods[2])
            -- end
            local infos =
                {
                    title = "Warning",
                    message = textMessage,
                    button = "Don't panic",
                    input = false
                }
            Ext.Print("UNMATCHING TEST", host)
            -- Ext.PostMessageToUser(host, "LX_GM_MessageBox", infos)
            local buttonTexts = {
                "Don't panic",
                "Thanks Larian",
                "Got it",
                "Oooooh",
                "Yes-Yes"
            }
            local roll = math.random(1, #buttonTexts)
            OpenMessageBox(infos.title, infos.message, buttonTexts[roll], infos.input)
        end
        RefreshModList()
    end
end)