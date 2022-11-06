---@class ToolButton
---@field Name string
---@field Icons table
---@field Size integer
---@field UI string
---@field BarIndex integer
---@field ButtonIndex integer
---@field Special DraggingEffect|nil
---@field Tooltips table
ToolButton = {
    Name = "",
    Icons = {},
    Size = 64,
    UI = "",
    BarIndex = 0,
    ButtonIndex = 0,
    Special = nil,
    Tooltips = {},
    Indexes = {}
}

ToolButton.__index = ToolButton

--- @param bar integer
--- @param button integer
--- @param ui string
--- @param name string
--- @param size integer
--- @param icons table
--- @param special DraggingEffect
--- @param tooltips table
function ToolButton:Create(bar, button, parent, ui, name, size, icons, special, tooltips)
    -- Ext.Print(bar, ui, name, size, icons, special)
    local this = {
        Parent = parent,
        Name = name,
        Icons = icons,
        Size = size or 64,
        UI = ui,
        BarIndex = bar,
        ButtonIndex = button,
        Tooltips = tooltips,
        Special = special,
    }
    setmetatable(this, self)
    -- ui:GetRoot().toolbar_mc.addButton(name)
    -- ui:GetRoot().toolbarHolder_mc.addButtonToBar(bar, name)
    this:SetupIcon()
    -- Ext.RegisterUICall(ui, "toolbar_"..name, function(...)
    --     this:Press()
    -- end)
    this:ChangeTooltip(this.CurrentIcon)
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
                    Ext.UI.GetByName(this.UI):SetCustomIcon(name, icons[this.CurrentIcon], size, size)
                    this:ChangeTooltip(this.CurrentIcon)
                elseif event.EventId == 219 and event.Release then
                    this.CurrentIcon = this.CurrentIcon + 1 <= # icons and this.CurrentIcon + 1 or 1
                    Ext.UI.GetByName(this.UI):SetCustomIcon(name, icons[this.CurrentIcon], size, size)
                    this:ChangeTooltip(this.CurrentIcon)
                end
            end
        end)
    end
    Ext.RegisterUICall(Ext.UI.GetByName(this.UI), "toolbar_over_"..name, function(...)
        local ui = Ext.UI.GetByName(this.UI)
        local root = ui:GetRoot()
        local flashObject = this:GetFlashObject()
        ui:ExternalInterfaceCall("showTooltip", this.Tooltips[this.CurrentIcon], flashObject.x + root.x + (this.BarIndex-1)*(175 + 6*64) + 855.5 - string.len(this.Tooltips[this.CurrentIcon])*3.5, flashObject.y + flashObject.parent.y + 40, 0, 100, "right", true)
    end)
    Ext.RegisterUICall(Ext.UI.GetByName(this.UI), "toolbar_out_"..name, function(...)
        local ui = Ext.UI.GetByName(this.UI)
        ui:ExternalInterfaceCall("hideTooltip")
    end)
    return this
end

function ToolButton:SetupIcon()
    Ext.UI.GetByName(self.UI):SetCustomIcon(self.Name, self.Icons[1], self.Size, self.Size)
    self.CurrentIcon = 1
end

function ToolButton:OnPress()
    if #self.Icons > 1 and not self.Special then
        self.CurrentIcon = self.Icons[self.CurrentIcon+1] and self.CurrentIcon + 1 or 1
        Ext.UI.GetByName(self.UI):SetCustomIcon(self.Name, self.Icons[self.CurrentIcon], self.Size, self.Size)
        self:ChangeTooltip(self.CurrentIcon)
    end
    -- Ext.Print(self.Name, "pressed!")
    if not self.Special then
        Ext.PostMessageToServer("UGMT_ToolbarPress", self.Name)
    else
        self.OnUse = true
        self.Special()
    end
end

function ToolButton:ChangeTooltip(index)
    local root = Ext.UI.GetByName(self.UI):GetRoot()
    -- _D(self.Tooltips)
    -- TODO "dse::ecl::lua::SetFlashValue(): Can't convert Lua type 'nil' to Flash!"
    root.toolbarHolder_mc.toolbar_Array[self.BarIndex-1].buttonArray[self.ButtonIndex-1].tooltipString = self.Tooltips[index]
end

function ToolButton:GetFlashObject()
    local root = Ext.UI.GetByName(self.UI):GetRoot()
    return root.toolbarHolder_mc.toolbar_Array[self.BarIndex-1].buttonArray[self.ButtonIndex-1]
end

Classes.ToolButton = ToolButton
