---@class DraggingEffect
--- Templates and functions are corresponding by their index
DraggingEffect = {
    CurrentId = 1,
    Proxies = {},
    Functions = {},
    Statuses = {},
    Kill = false
}

DraggingEffect.__index = DraggingEffect

function DraggingEffect:Create(templates, functions, starting, statuses)
    local this = {
        CurrentId = starting or 1,
        Proxies = templates,
        Functions = functions,
        Statuses = statuses,
        CurrentEntity = nil,
        Kill = false
    }
    setmetatable(this, self)
    for i,func in pairs(functions) do
        Ext.RegisterNetListener(func, function(channel, payload)
            print(channel, payload)
            this.CurrentEntity = Ext.GetItem(tonumber(payload))
            -- Ext.Print("currentEntity",this.CurrentEntity)
            this:Drag()
        end)
    end
    Ext.Events.Tick:Subscribe(function(e) this:Drag() end)
    Ext.RegisterListener("InputEvent", function(event)
        if this.CurrentEntity then
            if event.EventId == 2 and event.Release then
                this:ToggleOff()
            end
            if event.EventId == 1 and event.Release then
                local infos = {
                    Func = functions[this.CurrentId],
                    Entity = this.CurrentEntity.NetID,
                    X = this.CurrentEntity.Translate[1],
                    Y = this.CurrentEntity.Translate[2],
                    Z = this.CurrentEntity.Translate[3],
                }
                infos = Ext.JsonStringify(infos)
                Ext.PostMessageToServer("UGM_TriggerDraggingEffectFunction", infos)
            end
            if event.EventId == 218 and event.Release then
                this:ToggleOff()
                this.CurrentId = this.CurrentId - 1 > 0 and this.CurrentId - 1 or #functions
                this:ToggleOn()
            elseif event.EventId == 219 and event.Release then
                this:ToggleOff()
                this.CurrentId = this.CurrentId + 1 <= #functions and this.CurrentId + 1 or 1
                this:ToggleOn()
                
            end
        end
    end)
    return this
end

function DraggingEffect:ToggleOn()
    local pos = Ext.GetPickingState() or {WalkablePosition = {0,0,0}}
    Ext.Net.PostMessageToServer("UGM_StartDraggingEffect", Ext.Json.Stringify({
        Template = self.Proxies[self.CurrentId],
        Message = self.Functions[self.CurrentId],
        Status = self.Statuses and self.Statuses[self.CurrentId] or nil,
        Position = pos.WalkablePosition
    }))
end

DraggingEffect.__call = DraggingEffect.ToggleOn

function DraggingEffect:ToggleOff()
    self.Kill = false
    Ext.PostMessageToServer("UGM_KillDraggingEffect", tostring(self.CurrentEntity.NetID))
    self.CurrentEntity = nil
end

function DraggingEffect:SwapEffect()
    self:ToggleOff()
    self.CurrentId = true and self.CurrentId + 1 or 1
    self:ToggleOn()
end

function DraggingEffect:Drag()
    if not self.Kill then
        -- Ext.Print("drag")
        local pos = Ext.GetPickingState()
        if self.CurrentEntity then
            self.CurrentEntity.Translate = pos.WalkablePosition
        else
            return
        end
    else
        self:ToggleOff()
    end
end

Classes.DraggingEffect = DraggingEffect
