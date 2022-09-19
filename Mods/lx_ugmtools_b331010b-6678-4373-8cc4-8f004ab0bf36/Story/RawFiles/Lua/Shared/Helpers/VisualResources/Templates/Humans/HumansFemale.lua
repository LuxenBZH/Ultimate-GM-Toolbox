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
    Humans = RaceVisuals:Create(),
}

CharacterVisualResources.Humans.Female.Hair = {

}

CharacterVisualResources.Humans.Female.Helmet = {

}

CharacterVisualResources.Humans.Female.Head = {

}

CharacterVisualResources.Humans.Female.Torso = {

}

CharacterVisualResources.Humans.Female.Arms = {

}

CharacterVisualResources.Humans.Female.Legs = {

}

CharacterVisualResources.Humans.Female.Boots = {

}

CharacterVisualResources.Humans.Female.Beard = {

}

CharacterVisualResources.Humans.Female.Fullbody = {

}

CharacterVisualResources.Humans.Female.Cape = {

}

CharacterVisualResources.Humans.Female.Shoulder = {

}

CharacterVisualResources.Humans.Female.Misc = {

}