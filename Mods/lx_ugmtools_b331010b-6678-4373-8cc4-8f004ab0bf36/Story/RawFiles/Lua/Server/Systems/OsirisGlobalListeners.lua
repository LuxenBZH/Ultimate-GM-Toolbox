---@class OsirisHandler
local OsirisHandler = {
    Listeners = {}
}

OsirisHandler.__index = OsirisHandler

---@class OsirisListener
local OsirisListener = {
    Call = "",
    Arity = 0,
    Event = "before",
    Handlers = {},
    Wrapper = function(...)
        local params = {...}
        Ext.Print("TESTCLASS")
        Ext.Dump(self)
        for i,func in pairs(self.Handlers) do
            func(table.unpack(params))
        end
    end
}

OsirisListener.__index = OsirisListener

function OsirisListener:Create(call, arity, event, handler)
    local this = {
        Call = call,
        Arity = arity,
        Event = event,
        Handlers = {handler},
        Wrapper = function(...)
            local params = {...}
            for i,func in pairs(self.Handlers) do
                func(table.unpack(params))
            end
        end
    }
    setmetatable(this, self)
    return this
end

function OsirisHandler:RegisterListener(call, arity, event, handler)
    Ext.Print("Registering Osiris handler...")
    Ext.Dump(self.Listeners)
    for i,listener in pairs(self.Listeners) do
        if listener.Call == call and listener.Event == event then
            table.insert(listener.Handlers, handler)
            return
        end
    end
    local newListener = OsirisListener:Create(call, arity, event, handler)
    Ext.Print("Created new listener")
    table.insert(self.Listeners, newListener)
    Ext.RegisterOsirisListener(call, arity, event, newListener.Wrapper)
    Ext.Print("Registered Osiris listener")
end

Classes.OsirisHandler = OsirisHandler