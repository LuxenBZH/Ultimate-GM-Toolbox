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
        Arms = {},
        Legs = {},
        Boots = {},
        Beard = {},
        Fullbody = {},
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
    Lizards = RaceVisuals:Create(),
}

CharacterVisualResources.Lizards.Female.Hair = {

}

CharacterVisualResources.Lizards.Female.Helmet = {

}

CharacterVisualResources.Lizards.Female.Head = {

}

CharacterVisualResources.Lizards.Female.Torso = {

}

CharacterVisualResources.Lizards.Female.Arms = {

}

CharacterVisualResources.Lizards.Female.Legs = {

}

CharacterVisualResources.Lizards.Female.Boots = {

}

CharacterVisualResources.Lizards.Female.Beard = {

}

CharacterVisualResources.Lizards.Female.Fullbody = {

}

CharacterVisualResources.Lizards.Female.Cape = {

}

CharacterVisualResources.Lizards.Female.Shoulder = {

}

CharacterVisualResources.Lizards.Female.Misc = {

}