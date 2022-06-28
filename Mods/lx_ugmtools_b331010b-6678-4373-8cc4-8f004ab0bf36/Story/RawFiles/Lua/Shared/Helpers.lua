function GetTableSize(table)
    if table == nil then return 0 end
    local i = 0
    for j,k in pairs(table) do
        i = i + 1
    end
    return i
end

function ShiftTable(t)
    local temp = CopyTable(t)
    for i,content in pairs(t) do
        local j = i+1
        if j > GetTableSize(t) then j = 1 end
        t[i] = temp[j]
    end
    return t
end

function CopyTable(t)
    local newTable = {}
    for i,j in pairs(t) do
        newTable[i] = j
    end
    return newTable
end

function TableConcatNoIndice(t1,t2)
    for i,j in pairs(t2) do
        t1[i] = j
    end
    return t1
end

function SubtractCoordinates(t, t2)
    if not t.x then
        return {t[1] - t2[1], t[2] - t2[2], t[3] - t2[3]} 
    else
        return {x = t.x - t2.x, y = t.y - t2.y, z = t.z - t2.z}
    end
end

function AddCoordinates(t, t2)
    if not t.x then
        return {t[1] + t2[1], t[2] + t2[2], t[3] + t2[3]}
    else
        return {x = t.x + t2.x, y = t.y + t2.y, z = t.z + t2.z}
    end
end

function string.startswith(String,Start)
    return string.sub(String,1,string.len(Start))==Start
 end

 function ClosestHalf(number)
    local negative = 0 > number
    local int = math.floor(math.abs(number))
    local decimal = math.abs(number)-int
    local higher = false
    local half = 0.5
    if decimal > half then
        higher = true
        decimal = decimal - half
    end
    if negative then 
        int = -int
        half = -half
    end
    if math.abs(decimal) < math.abs(decimal-0.5) then
        if higher then
            return int+half
        else
            return int
        end
    else
        return int+2*half
    end
 end

attributes = { 
    Strength = true,
    Finesse = true,
    Intelligence = true,
    Constitution = true,
    Memory = true,
    Wits
}

abilities = {
    AirSpecialist = true,
    DualWielding = true,
    EarthSpecialist = true,
    FireSpecialist = true,
    Leadership = true,
    MagicArmorMastery = true,
    Necromancy = true,
    Perseverance = true,
    PhysicalArmorMastery = true,
    Polymorph = true,
    Ranged = true,
    RangerLore = true,
    PainReflection = true,
    Reflexes = true,
    RogueLore = true,
    Runecrafting = true,
    Shield = true,
    SingleHanded = true,
    Sourcery = true,
    Summoning = true,
    TwoHanded = true,
    VitalityMastery = true,
    Wand = true,
    WarriorLore = true,
    WaterSpecialist = true,
}

civilAbilities = {
    Barter = true,
    Loremaster = true,
    Luck = true,
    Persuasion = true,
    Pickpocket = true,
    Reason = true,
    Repair = true,
    Sneaking = true,
    Telekinesis = true,
    Thievery = true,
    Intimidate = true,
    Brewmaster = true,
    Charm = true,
    Crafting = true,
}

equipmentSlots = {
    "Amulet",
    "Belt",
    "Boots",
    "Breast",
    "Gloves",
    "Helmet",
    "Horns",
    "Leggings",
    "Overhead",
    "Ring",
    "Ring2",
    "Shield",
    "Weapon",
    "Wings",
}