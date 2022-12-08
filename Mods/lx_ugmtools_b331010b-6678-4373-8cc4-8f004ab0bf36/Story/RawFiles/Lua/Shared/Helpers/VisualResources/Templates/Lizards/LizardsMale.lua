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
    Lizards = RaceVisuals:Create(),
}

CharacterVisualResources.Lizards.Male.Hair = {

}

CharacterVisualResources.Lizards.Male.Helmet = {

}

CharacterVisualResources.Lizards.Male.Head = {

}

CharacterVisualResources.Lizards.Male.Torso = {

}

CharacterVisualResources.Lizards.Male.Arms = {

}

CharacterVisualResources.Lizards.Male.Legs = {

}

CharacterVisualResources.Lizards.Male.Boots = {

}

CharacterVisualResources.Lizards.Male.Beard = {

}

CharacterVisualResources.Lizards.Male.Fullbody = {

}

CharacterVisualResources.Lizards.Male.Cape = {

}

CharacterVisualResources.Lizards.Male.Shoulder = {

}

CharacterVisualResources.Lizards.Male.Misc = {

}