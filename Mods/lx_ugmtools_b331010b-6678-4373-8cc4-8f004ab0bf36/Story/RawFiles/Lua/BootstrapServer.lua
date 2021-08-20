Ext.Require("BootstrapShared.lua")
Ext.Require("Server/_InitServer.lua")

-- Ext.AddPathOverride("Mods/Story/RawFiles/Goals/__PROC.divGoal", "Mods/lx_ugmtools_b331010b-6678-4373-8cc4-8f004ab0bf36/Story/RawFiles/Override/__PROC.txt")

-- Ext.RegisterOsirisListener("DB_HostileToPlayerGroup", 2, "after", function(c1,c2)
--     local data = {
--         Event = "DB_HostileToPlayerGroup",
--         Character1 = {
--             UUID = c1,
--             Faction = GetFaction(c1),
--             Attitude = CharacterGetAttitudeTowardsPlayer(c1,c2) or 0,
--             Relation = CharacterGetRelationToCharacter(c1,c2) or 0,
--             IsPlayer = CharacterIsPlayer(c1)
--         },
--         Character2 = {
--             UUID = c2,
--             Faction = GetFaction(c2),
--             Attitude = CharacterGetAttitudeTowardsPlayer(c2,c1) or 0,
--             Relation = CharacterGetRelationToCharacter(c2,c1) or 0,
--             IsPlayer = CharacterIsPlayer(c2)
--         }
--     }
--     print(Ext.JsonStringify(data))
-- end)

