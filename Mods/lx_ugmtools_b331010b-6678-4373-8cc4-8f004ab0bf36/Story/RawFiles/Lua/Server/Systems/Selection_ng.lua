--- @alias SelectionMode "Normal"|"Activated"|"Deactivated"
--- @alias GUID string

--- @class SelectionManager
--- @field CursorSelection IEoCServerObject
--- @field CurrentSelection IEoCServerObject[]
--- @field CurrentTarget IEoCServerObject
--- @field Mode SelectionMode
--- @field Lock boolean

SelectionManager = {
    CurrentSelection = {},
    Mode = "Normal",
    Lock = false
}

--- @param object GUID|IEoCServerObject|IGameObject
function SelectionManager:SetFlag(object)
    if type(object) == "string" then
        object = Ext.Entity.GetGameObject(object)
    end
    if Osi.ObjectGetFlag(object.MyGuid, "UGMT_Selected") == 1 then
        Osi.ObjectClearFlag(object.MyGuid, "UGMT_Selected", 0)
        Osi.ObjectSetFlag(object.MyGuid, "UGMT_Targeted", 1)
    elseif Osi.ObjectGetFlag(object.MyGuid, "UGMT_Targeted") == 1 then
        Osi.ObjectClearFlag(object.MyGuid, "UGMT_Targeted", 0)
        Osi.ObjectSetFlag(object.MyGuid, "UGMT_Selected", 1)
    else
        Osi.ObjectSetFlag(object.MyGuid, "UGMT_Selected", 1)
    end
end

--- @param object GUID|IEoCServerObject|IGameObject
function SelectionManager:ClearFlag(object)
    if self.Lock then return end
    if type(object) == "string" then
        object = Ext.Entity.GetGameObject(object)
    end
    Osi.ObjectClearFlag(object.MyGuid, "UGMT_Selected", 0)
end

function SelectionManager:ClearTarget()
    Osi.ObjectClearFlag(self.CurrentTarget, "UGMT_Targeted", 0)
end

function SelectionManager:UpdateSelectionEffects()
    local host = Osi.CharacterGetHostCharacter()
    Ext.ServerNet.PostMessageToClient(host, "UGMT_SetSelectionFX", Ext.Json.Stringify(self))
end

Ext.Osiris.RegisterListener("ObjectFlagSet", 3, "before", function(flag, object, dialogInstance)
    if flag == "UGMT_Selected" then
        SelectionManager.CurrentSelection[#SelectionManager.CurrentSelection+1] = Osi.GetUUID(object)
        -- Ext.Net.PostMessageToClient(Osi.CharacterGetHostCharacter(), "UGMT_SetSelectionFX", Ext.Json.Stringify({Character = Ext.ServerEntity.GetGameObject(object).NetID, Type = "Select"}))
        Osi.ApplyStatus(object, "GM_SELECTED_DISCREET", -1, 1)
    elseif flag == "UGMT_Targeted" then
        if SelectionManager.CurrentTarget then
            SelectionManager:ClearFlag(SelectionManager.CurrentTarget)
        end
        SelectionManager.CurrentTarget = Osi.GetUUID(object)
        -- Ext.Net.PostMessageToClient(Osi.CharacterGetHostCharacter(), "UGMT_SetSelectionFX", Ext.Json.Stringify({Character = Ext.ServerEntity.GetGameObject(object).NetID, Type = "Target"}))
        Osi.ApplyStatus(object, "GM_TARGETED_DISCREET", -1, 1)
    end
end)

Ext.Osiris.RegisterListener("ObjectFlagCleared", 3, "before", function(flag, object, dialogInstance)
    local object = Osi.GetUUID(object)
    if flag == "UGMT_Selected" then
        for i,selected in pairs(SelectionManager.CurrentSelection) do
            if object == selected then
                SelectionManager.CurrentSelection[i] = nil
                -- Ext.Net.PostMessageToClient(Osi.CharacterGetHostCharacter(), "UGMT_ClearSelectionFX", Ext.Json.Stringify({Character = object.NetID}))
                Osi.RemoveStatus(object, "GM_SELECTED_DISCREET")
                break
            end
        end
    elseif flag == "UGMT_Targeted" then
        SelectionManager.CurrentTarget = nil
        -- Ext.Net.PostMessageToClient(Osi.CharacterGetHostCharacter(), "UGMT_ClearSelectionFX", Ext.Json.Stringify({Character = object.NetID}))
        Osi.RemoveStatus(object, "GM_TARGETED_DISCREET")
    end
end)

--- @param object string|IEoCServerObject
function SelectionManager:AddToSelection(object)
    if type(object) == "string" then
        object = Ext.ServerEntity.GetGameObject(object)
    end
    if getmetatable(object) == "esv::Character" then
        if self.Mode == "Activated" and not object:GetStatus("DEACTIVATED") then
            self:SetFlag(object)
        elseif self.Mode == "Deactivated" and object:GetStatus("DEACTIVATED") then
            self:SetFlag(object)
        else
            self:SetFlag(object)
        end
    else
        self:SetFlag(object)
    end
end

function SelectionManager:SetCursorSelection(object, shiftMod)
    if self.CursorSelection then
        if self.CursorSelection ~= object.MyGuid and not shiftMod then
            self:ClearFlag(self.CursorSelection)
        end
    end
    self.CursorSelection = object.MyGuid
    self:AddToSelection(object)
end

-- Quick selection feature
Ext.RegisterNetListener("UGM_QuickSelection", function(call, payload)
    local infos = Ext.Json.Parse(payload)
    local object = Ext.ServerEntity.GetCharacter(tonumber(infos.Character))
    SelectionManager:SetCursorSelection(object, infos.ShiftMod)
end)

-- Quick Deselection
Ext.RegisterNetListener("UGM_QuickDeselection", function(call, payload)
    local infos = Ext.Json.Parse(payload)
    if not infos.ShiftMod then
        local object = Ext.ServerEntity.GetCharacter(tonumber(infos.Character))
        SelectionManager:ClearFlag(object)
        SelectionManager.CurrentTarget = nil
    end
    SelectionManager.CursorSelection = nil
end)

function SelectionManager:GetSelectedCharacters()
    local characters = {}
    for i,object in pairs(self.CurrentSelection) do
        if ObjectIsCharacter(object) == 1 then
            characters[object] = true
        end
    end
    return characters
end

function SelectionManager:GetSelectedItems()
    local items = {}
    for i,object in pairs(self.CurrentSelection) do
        if ObjectIsCharacter(object) == 0 then
            items[object] = true
        end
    end
    return items
end

function SelectAroundPosition(item, distance)
    if item then
        item = Ext.ServerEntity.GetItem(item)
        for i,character in pairs(item:GetNearbyCharacters(distance)) do
            SelectionManager:AddToSelection(character)
        end
    end
end

function SelectionManager:ClearSelectionAndTarget()
    if not self.Lock then
        for i,object in pairs(self.CurrentSelection) do
            if self.CursorSelection ~= object then
                self:ClearFlag(object)
            end
        end
        if self.CurrentTarget then
            self:ClearTarget()
        end
    end
end

function SelectionManager:ToggleLock()
    self.Lock = not self.Lock
end