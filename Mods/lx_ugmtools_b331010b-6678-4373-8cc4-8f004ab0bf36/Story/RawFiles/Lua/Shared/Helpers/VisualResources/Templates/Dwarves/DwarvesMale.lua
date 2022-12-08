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
--- @field Male GenderVisuals
RaceVisuals = {
    Male = GenderVisuals:Create(),
}

RaceVisuals.__index = RaceVisuals

function RaceVisuals:Create()
    local this = {
        Male = GenderVisuals:Create(),
    }
    setmetatable(this, self)
    return this
end

CharacterVisualResources = {
    Dwarves = RaceVisuals:Create(),
}

CharacterVisualResources.Dwarves.Male.Hair = {

}

CharacterVisualResources.Dwarves.Male.Helmet = {

}

CharacterVisualResources.Dwarves.Male.Head = {

}

CharacterVisualResources.Dwarves.Male.Torso = {

}

CharacterVisualResources.Dwarves.Male.Arms = {

}

CharacterVisualResources.Dwarves.Male.Legs = {

}

CharacterVisualResources.Dwarves.Male.Boots = {

}

CharacterVisualResources.Dwarves.Male.Beard = {

}

CharacterVisualResources.Dwarves.Male.Fullbody = {

}

CharacterVisualResources.Dwarves.Male.Cape = {

}

CharacterVisualResources.Dwarves.Male.Shoulder = {

}

CharacterVisualResources.Dwarves.Male.Misc = {

}