--- @class GenderVisuals
--- @field Hair table
--- @field Helmet table
--- @field Head table
--- @field Torso table
--- @field Arms table
--- @field Legs table
--- @field Boots table
--- @field Beard table
--- @field Fullbody table
--- @field Cape table
--- @field Shoulder table
--- @field Misc table
GenderVisuals = {
    Hair = {},
    Helmet = {},
    Head = {},
    Torso = {},
    Arms = {},
    Legs = {},
    Boots = {},
    Beard = {},
    Fullbody = {},
    Cape = {},
    Shoulder = {},
    Misc = {}
}

GenderVisuals.__index = GenderVisuals

function GenderVisuals:Create()
    local this = {
        Hair = {},
        Helmet = {},
        Head = {},
        Torso = {},
        Amrs = {},
        Legs = {},
        Boots = {},
        Beard = {},
        Cape = {},
        Shoulder = {},
        Misc = {}
    }
    setmetatable(this, self)
    return this
end

--- @class RaceVisuals
--- @field Female GenderVisuals
RaceVisuals = {
    Female = GenderVisuals:Create(),
}

RaceVisuals.__index = RaceVisuals

function RaceVisuals:Create()
    local this = {
        Female = GenderVisuals:Create(),
    }
    setmetatable(this, self)
    return this
end

CharacterVisualResources = {
    Dwarves = RaceVisuals:Create(),
}

CharacterVisualResources.Dwarves.Female.Hair = {

}

CharacterVisualResources.Dwarves.Female.Helmet = {

}

CharacterVisualResources.Dwarves.Female.Head = {

}

CharacterVisualResources.Dwarves.Female.Torso = {

}

CharacterVisualResources.Dwarves.Female.Arms = {

}

CharacterVisualResources.Dwarves.Female.Legs = {

}

CharacterVisualResources.Dwarves.Female.Boots = {

}

CharacterVisualResources.Dwarves.Female.Beard = {

}

CharacterVisualResources.Dwarves.Female.Fullbody = {

}

CharacterVisualResources.Dwarves.Female.Cape = {

}

CharacterVisualResources.Dwarves.Female.Shoulder = {

}

CharacterVisualResources.Dwarves.Female.Misc = {

}