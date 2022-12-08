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
--- @field Shoulders table
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
    Elves = RaceVisuals:Create(),
}

CharacterVisualResources.Elves.Female.Hair = {

}

CharacterVisualResources.Elves.Female.Helmet = {

}

CharacterVisualResources.Elves.Female.Head = {

}

CharacterVisualResources.Elves.Female.Torso = {

}

CharacterVisualResources.Elves.Female.Arms = {

}

CharacterVisualResources.Elves.Female.Legs = {

}

CharacterVisualResources.Elves.Female.Boots = {

}

CharacterVisualResources.Elves.Female.Beard = {

}

CharacterVisualResources.Elves.Female.Fullbody = {

}

CharacterVisualResources.Elves.Female.Cape = {

}

CharacterVisualResources.Elves.Female.Shoulder = {

}

CharacterVisualResources.Elves.Female.Misc = {

}