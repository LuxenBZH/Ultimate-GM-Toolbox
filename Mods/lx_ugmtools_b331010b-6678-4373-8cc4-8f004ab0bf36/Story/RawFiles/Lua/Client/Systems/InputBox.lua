UI = Mods.LeaderLib.UI
local answers = Classes.InputBoxAnswers
InputBoxAnswers = {}

---@param infos array[] contain all infos to transmit to the server
---@param title string
---@param message string
---@param buttonID number
function OpenInputBox(title, message, buttonID, infos)
    local ui = Ext.GetBuiltinUI("Public/Game/GUI/msgBox.swf")
    if ui then
        ui:Hide()
        local root = ui:GetRoot()
        root.popup_mc.input_mc.input_txt.htmlText = ""
        --root.addButton(3, LocalizedText.UI.Close.Value, "", "")
        root.setPopupType(1)
        -- root.setText("Roll for "..stat.ID.."<br>".."Enter a modifier (e.g. 5 for +5, -2 for -2)<br>")
        --ui:Invoke("setAnchor", 0)
        --ui:Invoke("setPos", 50.0, 50.0)
        -- ui:Invoke("setText", "Roll for "..stat.Name.."<br>".."Enter a modifier (e.g. 5 for +5, -2 for -2)<br>")
        if not buttonID then
            buttonID = 4040
        end
        ui:Invoke("removeButtons")
        ui:Invoke("addButton", buttonID, "Accept", "", "")
        ui:Invoke("addBlueButton", 4049, "Cancel")

        --ui:Invoke("addYesButton", 1)
        -- ui:Invoke("showWin")
        -- ui:Invoke("fadeIn")
        --ui:Invoke("setWaiting", true)
        -- ui:Invoke("setPopupType", 2)
        ui:Invoke("setInputEnabled", true)
        -- ui:Invoke("setTooltip", 0, stat.ID)
        -- local infos = {
        --     character = characterNetID,
        --     stat = stat.ID,
        --     rollType = rollType
        -- }
        infos.ButtonID = buttonID
        ui:Invoke("setTooltip", 1, Ext.JsonStringify(infos))
        -- root.currentDevice = characterNetID
        ui:Invoke("showPopup", title, message)
        -- root.showMsgbox()
        ui:Show()
        -- specialMessageBoxOpen = true
    end
end

local function ManageInputBoxAnswer(ui, call, buttonID, device)
    -- Ext.Print(buttonID, ui:GetRoot().popup_mc.input_mc.copy_mc.tooltip)
    local ui = Ext.GetBuiltinUI("Public/Game/GUI/msgBox.swf")
    Ext.Print(ui, call, math.floor(buttonID), device)
    if math.floor(buttonID) == 4049 then
        ui:Hide()
        return
    end
    if buttonID > 4000 and buttonID < 5000 then
        local infos = Ext.JsonParse(ui:GetRoot().popup_mc.input_mc.copy_mc.tooltip)
        infos.Value = ui:GetRoot().popup_mc.input_mc.input_txt.htmlText
        -- Ext.Dump(infos)
        Ext.PostMessageToServer("UGM_InputBox", Ext.JsonStringify(infos))
        ui:Hide()
    end
    
    -- if buttonID == 4040.0 then
    --     local input = ui:GetRoot().popup_mc.input_mc.input_txt.htmlText
    --     local mod = tonumber(input)
    --     -- Ext.Print(input, mod)
    --     if mod == nil then return end
    --     local infos = Ext.JsonParse(ui:GetRoot().popup_mc.input_mc.copy_mc.tooltip)
    --     infos["mod"] = mod
    --     Ext.PostMessageToServer("SRP_Roll", Ext.JsonStringify(infos))
    --     ui:Hide()
    -- elseif buttonID == 4041.0 then
    --     ui:Hide()
    -- end
end

local function RegisterUIListeners_SheetRoll()
    local msgBox = Ext.GetBuiltinUI("Public/Game/GUI/msgBox.swf")
    Ext.RegisterUICall(msgBox, "ButtonPressed", ManageInputBoxAnswer)
    Ext.RegisterNetListener("UGM_InitInputBoxClient", function(channel, payload)
        InputBoxAnswers = Ext.JsonParse(payload)
    end)
end

Ext.RegisterListener("SessionLoaded", RegisterUIListeners_SheetRoll)