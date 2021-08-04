
Ext.RegisterOsirisListener("CharacterChangedAlginmentToCharacter", 3, "before", function(char1, char2, newRelation)
    Ext.Print("UGMT:",char1,char2,"changed relation:",newRelation)
end)

---- Alignment fixer

local playerFactions = {
    "Hero Player1",
    "Hero Player2",
    "Hero Player3",
    "Hero Player4",
    "Hero Player5",
    "Hero Player6",
    "Hero Player7",
    "Hero Player8",
    "Hero Player9",
    "Hero Player10",
    "Hero Player11",
    "Hero Player12",
    "Hero Player13",
    "Hero Player14",
    "Hero Player15",
    "Hero Player16",
    "Hero Player17",
}

local relationMap = {
    ["Good NPC"] = {["Neutral NPC"] = 50, ["Evil NPC"] = 0, ["Good NPC"] = 100},
    ["Neutral NPC"] = {["Neutral NPC"] = 50, ["Evil NPC"] = 50, ["Good NPC"] = 50},
    ["Evil NPC"] = {["Neutral NPC"] = 50, ["Evil NPC"] = 100, ["Good NPC"] = 0},
}

Ext.RegisterOsirisListener("GameStarted", 2, "before", function(level, isEditor)
    Ext.Print("UGMT: Restored base GM mode aligments")
    for i,faction in pairs(playerFactions) do
        CharacterSetRelationFactionToFaction(faction, "Good NPC", 100)
        CharacterSetRelationFactionToFaction("Good NPC", faction, 100)
        CharacterSetRelationFactionToFaction(faction, faction, 100)
        CharacterSetRelationFactionToFaction(faction, "Neutral NPC", 50)
        CharacterSetRelationFactionToFaction("Neutral NPC", faction, 50)
        CharacterSetRelationFactionToFaction(faction, "Evil NPC", 0)
        CharacterSetRelationFactionToFaction("Evil NPC", faction, 0)
    end
    for faction1,map in pairs(relationMap) do
        for faction2,relation in pairs(map) do
            CharacterSetRelationFactionToFaction(faction1, faction2, relation)
            CharacterSetRelationFactionToFaction(faction2, faction1, relation)
        end
    end
end)