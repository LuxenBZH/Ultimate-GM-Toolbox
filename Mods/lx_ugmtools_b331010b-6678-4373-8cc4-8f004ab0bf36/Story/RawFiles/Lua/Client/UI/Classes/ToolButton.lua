---@class ToolButton
---@field Name
---@field Icons
---@field Size
---@field UI
ToolButton = {
    Name = "",
    Icons = {},
    Size = 64,
    UI = nil,
}

ToolButton.__index = ToolButton

--- @param bar int
--- @param ui ExtClient.UI
--- @param name string
--- @param size int
--- @param icons array[]
--- @param special DraggingEffect
function ToolButton:Create(bar, ui, name, size, icons, special)
    Ext.Print(bar, ui, name, size, icons, special)
    local this = {
        Name = name,
        Icons = icons,
        Size = size or 64,
        UI = ui,
        Special = special,
    }
    setmetatable(this, self)
    -- ui:GetRoot().toolbar_mc.addButton(name)
    -- ui:GetRoot().toolbarHolder_mc.addButtonToBar(bar, name)
    this:SetupIcon()
    -- Ext.RegisterUICall(ui, "toolbar_"..name, function(...)
    --     this:Press()
    -- end)
    if #icons > 1 then
        Ext.RegisterListener("InputEvent", function(event)
            if this.OnUse then
                if not this.CurrentIcon then
                    this.CurrentIcon = 1
                end
                if event.EventId == 2 and event.Release then
                    this.OnUse = false
                elseif event.EventId == 218 and event.Release then
                    this.CurrentIcon = this.CurrentIcon - 1 > 0 and this.CurrentIcon - 1 or #icons
                    ui:SetCustomIcon(name, icons[this.CurrentIcon], size, size)
                elseif event.EventId == 219 and event.Release then
                    this.CurrentIcon = this.CurrentIcon + 1 <= # icons and this.CurrentIcon + 1 or 1
                    ui:SetCustomIcon(name, icons[this.CurrentIcon], size, size)
                end
            end
        end)
    end
    return this
end

function ToolButton:SetupIcon()
    self.UI:SetCustomIcon(self.Name, self.Icons[1], self.Size, self.Size)
    self.CurrentIcon = 1
end

function ToolButton:OnPress()
    if #self.Icons > 1 and not self.Special then
        self.CurrentIcon = self.Icons[self.CurrentIcon+1] and self.CurrentIcon + 1 or 1
        self.UI:SetCustomIcon(self.Name, self.Icons[self.CurrentIcon], self.Size, self.Size)
    end
    Ext.Print(self.Name, "pressed!")
    if not self.Special then
        Ext.PostMessageToServer("UGMT_ToolbarPress", self.Name)
    else
        self.OnUse = true
        self.Special()
    end
end

Classes.ToolButton = ToolButton
