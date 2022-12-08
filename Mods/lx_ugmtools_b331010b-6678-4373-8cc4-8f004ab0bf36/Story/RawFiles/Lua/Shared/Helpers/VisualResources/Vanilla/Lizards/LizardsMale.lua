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
    Lizards_Male_Body_Naked_A_Hair_A = "52cb19cf-d2f5-4715-ac2e-3417fe7c1f3c",
    Lizards_Male_Body_Naked_A_Hair_B = "6572ca3b-e2b2-40f3-9996-2e529f9fd38b",
    Lizards_Male_Body_Naked_A_Hair_C = "19b608a8-cc7c-404e-94ed-04c77b697add",
    Lizards_Male_Body_Naked_A_Hair_D = "29f6e5c5-2a36-4b9a-ac35-e94250ef0564",
    Lizards_Male_Body_Djinn_Hair_D = "5a2aa37d-14c9-4073-b939-5bf8bff23714",
    Lizards_Male_Body_Naked_A_Hair_E = "00f53c49-01d9-4204-b27d-d49d44f2c4db",
    Lizards_Male_Body_Naked_A_Hair_F = "b9fef897-6830-4025-af3b-08cb1201b33c",
    Lizards_Male_Body_Naked_A_Hair_G = "992e36ec-1964-4cd3-8ff0-04986cbcaf5c",
    Lizards_Male_Body_Naked_A_Hair_H = "508a5588-094d-4c49-9d00-fa3384b6bcd4",

    Lizards_Male_Skeleton_A_Hair_A = "78fafbe5-5364-4827-be43-58e5d2d6379b",
    Lizards_Male_Skeleton_A_Hair_B = "760a46cf-bf4c-43d5-afa5-8e17f26873f7",
    Lizards_Male_Skeleton_A_Hair_C = "6ed203bf-557a-48d6-a3a0-55ab913a5aaa",
    Lizards_male_Skeleton_A_Hair_D = "fe72d5de-0741-4c0e-a7cf-5e57c0ebe926",

    Creatures_Ghoul_Body_Naked_A_Hair_A = "9fb9c83a-4671-487f-8726-689328dd4dbb",
}

CharacterVisualResources.Lizards.Male.Helmet = {
    Lizards_Male_Armor_Platemail_A_Helmet_A = "b2ad0583-b45b-45c4-95f4-58157ff14157",
    Lizards_Male_Armor_Platemail_A_Helmet_B = "a16e9c46-3494-4954-a458-9d3213497544",
    Lizards_Male_Armor_Platemail_A_Helmet_C = "71f0ed6c-f75a-4382-8056-8d6ee25d1a3e",
    Lizards_Male_Armor_Chainmail_A_Helmet_A = "fd33b8ed-beb8-41e0-ace7-72e8a092235c",
    Lizards_Male_Armor_Chainmail_A_Helmet_B = "b029ce59-91be-4a7a-9a97-e77e0c25b338",
    Lizards_Male_Armor_Chainmail_A_Helmet_C = "b4469675-fdbc-4712-b84e-62fd2ce8fe0e",
    Lizards_Male_Armor_Scalemail_A_Helmet_A = "932ec2be-38a8-4b40-9168-44b0dd4d51b3",
    Lizards_Male_Armor_Scalemail_A_Helmet_B = "e8e5387c-87e9-45ac-bb97-8b26fa4e2f3c",
    Lizards_Male_Armor_Scalemail_A_Helmet_C = "d8e20fba-b1da-40e8-ba0f-0f53fcf7ed35",
    Lizards_Male_Armor_Leather_A_Helmet_A = "a8cb0a86-2133-44db-abf2-5617b9def2b7",
    Lizards_Male_Armor_Leather_A_Helmet_B = "82394cb9-9e0a-409a-9bf7-3e8bada2b3d1",
    Lizards_Male_Armor_Leather_A_Helmet_C = "4bc7fe8f-4e44-436f-b9db-fc594deabab6",
    Lizards_Male_Armor_StarterChainmail_A_Helmet_A = "a5924453-7938-45b9-8a84-1a949005517b",    
    Lizards_Male_Armor_StarterLeather_A_Helmet_A = "6dbf6735-2da3-4496-8627-326cd47aaa02",
    Lizards_Male_Armor_Dreamer_A_Helmet_A = "9b881949-e72e-490c-a9e2-baa7a21c07b4",
    Lizards_Male_Armor_Mage_A_Helmet_A = "a7768a0c-c57a-4cc8-babc-d722468f353f",
    Lizards_Male_Armor_Mage_C_Helmet_A = "9067af54-4d7e-43dd-a078-fdc99803c476",
    Lizards_Male_Clothing_A_Noble_Hat_Helmet_A = "21dc716c-232b-46f0-abe5-54b2fcacdd82",
    Lizards_Male_Clothing_Civilian_A_Helmet_A = "0f1b3c36-c454-4363-aeea-01d6c2ee7051",
    Lizards_Male_Clothing_Civilian_B_Helmet_A = "721290ae-65a6-4975-a559-4e9a4ee7d449",
    Lizards_Male_Clothing_Civilian_C_Helmet_A = "ef0c4963-d655-472d-be9b-9d61757e4605",
    Lizards_Male_Clothing_Civilian_Elite_A_Helmet_A = "bc546b4f-1b7b-4aea-8aa0-93de604d2a9c",
    Lizards_Male_Clothing_Civilian_H_Helmet_A = "fa1ff080-7398-4d2c-ba32-fb5d1981dbfd",
    Lizards_Male_Clothing_Civilian_Rich_A_Helmet_A = "8c511c19-91f6-429b-9436-a0f6dc08e1a6",
    Lizards_Male_Robe_Purge_A_Helmet_A = "a55dc735-ec0b-4169-a31c-440d9d338739",
    Lizards_Male_Robe_Purge_A_Helmet_B = "f3380f86-19d5-4030-ac0e-5be0e90c6449",
    Lizards_Male_Robe_Purge_A_Helmet_C = "5ac46b0c-aea8-43ad-91ef-04a4274c3e35",
    Lizards_Male_Robe_Purge_A_Helmet_D = "e2264d66-1945-4334-87d4-b855a20a0d30",
    Lizards_Male_Skeleton_Robe_Purge_A_Helmet_C = "4c1dca1c-c08d-46c4-92a0-011c529666f9",
    Lizards_Male_Beast_Helmet_A = "3c28f1c9-86a3-402d-9b86-22729ac953cb",
    Lizards_Male_Shapeshifter_Mask_A = "83a85d86-e30c-4dc4-8845-9041975aaae9",
    Lizards_Male_Shapeshifter_Mask_B = "3e878558-b4f0-4db7-9310-287cbe0fb123",
    Lizards_Male_Armor_FUR_Bucket_A = "e1afdf4f-de60-44f8-84ce-2d683e366c06",
    Lizards_Male_Armor_FUR_Kitchen_Pot_F = "87798e4f-42bf-4cb2-9532-c5092863c2d0",

    Creatures_Ghoul_Armor_Platemail_A_Helmet_A = "6969ac84-885f-4334-8e09-d44795c755bd",
}

CharacterVisualResources.Lizards.Male.Head = {
    Lizards_Male_Body_Naked_A_Head_A = "44835770-01a0-44bb-a6ef-f405454b44c7",
    Lizards_Male_Body_Naked_Dreamer_A_Head_A = "b7a8760f-a307-4e91-92cf-95b2fcb9bbe1",
    Lizards_Male_Body_Naked_A_Head_B = "3e3d59bf-a83e-4d50-bdb7-9c45dc4da860",
    Lizards_Male_Body_Naked_A_Head_B_Dragon_Knight = "6d1e47bf-c852-4b3e-9226-0ae92a3c0b7b",
    Lizards_Male_Body_Naked_A_Head_C = "597b063f-bd59-48e8-9aff-889a6e8ce268",
    Lizards_Male_Body_Djinn_Head_C = "7ba694a4-eb05-4f1a-b6b9-ec28a8e9c676",
    Lizards_Male_Body_Naked_A_Head_D = "72187db6-3c5f-4a0e-bdfd-66a15b1e5ede",
    Lizards_Male_Body_Naked_A_Head_E = "9e9ca6b4-3afd-4aa9-85d3-22c4e673da80",
    Lizards_Male_Body_Naked_A_Head_F = "624ec87f-29cf-47a0-a70c-c9c88c1348c9",
    Lizards_Male_Body_Naked_A_Head_G = "cfdc0ab1-5e39-4a32-983f-522ef61dcb13",
    Lizards_Male_Body_Naked_A_Head_H = "c2ec435d-0ba4-4620-8bfa-bbf4618948dc",
    Lizards_Male_Body_Naked_A_Head_I = "83fd902c-555d-4ba8-b486-343d5a68ffa2",
    
    Lizards_Male_Skeleton_A_Head_A = "aa082715-c5ec-4473-88da-abdad26325a9",
    Lizards_Male_Skeleton_A_Head_B = "a96443e2-f411-4e27-bc29-e2d80c0cdda8",
    Lizards_Male_Skeleton_A_Head_C = "c99ae962-d1f1-4bbc-8651-b289b859d181",
    Lizards_Male_Skeleton_A_Head_D = "168a1da5-43a3-4026-9697-d4a9e269d85c",
    Lizards_Male_Skeleton_A_Head_E = "2b1e75fb-1ceb-40fb-878e-01addb1950b9",
    Lizards_Male_Skeleton_A_Head_F = "d1c3e0f0-6888-4f12-8c0b-540c7a6baa8f",
    Lizards_Male_Skeleton_A_Head_G = "adb334de-3fcd-48a4-a33d-e63fa6ecfda0",
    Lizards_Male_Skeleton_DeathFigure_A = "1cfd7846-70de-4b14-8b1c-f272fbc43fc1",

    Creatures_Ghoul_Body_Naked_A = "2cc25d0f-68df-42d7-83f1-9fdadabd7088",
    Creatures_Ghoul_Body_Naked_B = "de436567-9168-4d95-9c0f-fbaf41379d34",
    Creatures_Ghoul_Body_Naked_C = "69fc8c75-48eb-4913-ad4f-e9d394c7a324",
}

CharacterVisualResources.Lizards.Male.Torso = {
    Lizards_Male_Body_Naked_A_Upperbody_A = "75b8598c-bc3f-4974-9334-7a837b0fd7ca",
    Lizards_Male_Body_Naked_Dreamer_A_Upperbody_A = "1141faa2-fbcd-45cc-8ccc-b9fd49f83efd",
    Lizards_Male_Armor_Platemail_A_Upperbody_A = "172607b8-1213-400a-80d6-7ca461a9fc92",
    Lizards_Male_Armor_Platemail_A_Upperbody_B = "1d9e51fb-4e8f-419f-ae13-359706d7a5e9",
    Lizards_Male_Armor_Platemail_A_Upperbody_C = "63aa009c-c278-4dc5-8749-a4db7dbb99b9",
    Lizards_Male_Armor_Platemail_A_Upperbody_D = "ab1ee72b-d89d-4207-9654-40b6845207af",
    Lizards_Male_Armor_Platemail_A_Upperbody_E = "8b94fa9f-3b9d-4bf5-a75e-62b4dd395a27",
    Lizards_Male_Armor_Platemail_A_Upperbody_F = "12c6f3c7-08bc-4af5-bff1-2f02af3641e5",
    Lizards_Male_Armor_Platemail_A_Upperbody_RedPrince = "1ddef298-16dc-456b-8e2d-c2e945217edb",
    Lizards_Male_Armor_Chainmail_A_Upperbody_A = "e533145c-6dbc-479e-9b41-2b4d3fa69c40",
    Lizards_Male_Armor_Chainmail_A_Upperbody_B = "32d71b63-1162-4299-99db-25b0652ab282",
    Lizards_Male_Armor_Chainmail_A_Upperbody_C = "ad808a10-2bbc-4957-8316-c7e76ce65aa3",
    Lizards_Male_Armor_Chainmail_A_Upperbody_D = "f4e12f62-3c13-4aad-af32-640f94f8d3fd",
    Lizards_Male_Armor_Chainmail_A_Upperbody_E = "a16021c4-11b8-4859-9b0e-838b7ae028f8",
    Lizards_Male_Armor_Chainmail_A_Upperbody_F = "84816728-abb9-4b9d-bd35-267e203f66bd",
    Lizards_Male_Armor_Scalemail_A_Upperbody_A = "c8c5b1cb-f798-41c0-aa33-b68cb3ca0e23",
    Lizards_Male_Armor_Scalemail_A_Upperbody_B = "4c9cd4fd-ecdd-407a-b1d2-5a89ccbf5cd0",
    Lizards_Male_Armor_Scalemail_A_Upperbody_C = "2a7d976f-5844-4ded-a4bd-df36f93fa11e",
    Lizards_Male_Armor_Scalemail_A_Upperbody_D = "e64ad265-1f4d-46a6-8868-f2f93253c064",
    Lizards_Male_Armor_Scalemail_A_Upperbody_E = "d3ebc80d-b27c-47f4-bb52-a059d3164ae8",
    Lizards_Male_Armor_Scalemail_A_Upperbody_F = "e322aa65-0b18-44d1-b644-17852b13e48b",
    Lizards_Male_Armor_Leather_A_Upperbody_A_Cape = "33ca3ae1-e6d8-4e43-a57f-c245796fc7c9",
    Lizards_Male_Armor_Leather_A_Upperbody_A = "bb083b01-fa9b-4f85-8b6f-0789c6156769",
    Lizards_Male_Armor_Leather_A_Upperbody_B = "9129c55a-12fe-4e7b-a2b9-0b6c24f98a8c",
    Lizards_Male_Armor_Leather_A_Upperbody_C = "a893c150-5919-4db1-9ad4-056f769cf3fa",
    Lizards_Male_Armor_Leather_A_Upperbody_D = "f5d9449b-c562-4fa7-8a5f-0d79a343973e",
    Lizards_Male_Armor_Leather_A_Upperbody_E = "2ba0da4f-1fac-49e6-94ed-c25708034d6b",
    Lizards_Male_Armor_Leather_A_Upperbody_F = "4ebe4da4-fb52-493f-9d4e-77953a81d3a4",
    Lizards_Male_Armor_StarterChainmail_A_Upperbody_A = "2373cc52-6393-4280-af6e-9bfbdcb1bb5a",
    Lizards_Male_Armor_StarterChainmail_A_Upperbody_B = "680846ea-59e2-4aef-a7d3-5ab05550f357",    
    Lizards_Male_Armor_StarterLeather_A_Upperbody_A = "44c2beba-c6a3-4575-a367-ac0f073980d3",
    Lizards_Male_Armor_StarterLeather_A_Upperbody_B = "035b23d9-e024-48d2-9fa0-dfd8b9001236",
    Lizards_Male_Armor_Dreamer_A_Upperbody_A = "cd582599-6669-48be-9ff7-64598743f033",
    Lizards_Male_Armor_Mage_A_Upperbody_A = "7920bb70-80fa-4b0d-9176-b6e7910f8304",
    Lizards_Male_Armor_Mage_C_Upperbody_A = "3e34c7a6-ceb6-4659-90d3-872157b9e7a2",
    Lizards_Male_Robe_Mage_A_Upperbody_A = "1227edf9-db27-439b-baa6-a2c800e2362b",
    Lizards_Male_Robe_Mage_B_Upperbody_A = "e19f8a98-f9d5-403b-86d9-504db749a94a",
    Lizards_Male_Clothing_Civilian_A_Upperbody_A = "2c6a4353-9ae8-4e55-9c13-b096327437ed",
    Lizards_Male_Djinn_Upperbody_A = "63d2cd50-20f8-41ca-9728-f504d5fc4e10",
    Lizards_Male_Clothing_Civilian_B_Upperbody_A = "4a5c4f82-27da-46f2-8250-dbb75d7c9955",
    Lizards_Male_Clothing_Civilian_Elite_A_Upperbody_A = "7f66cbaa-afe1-4f1c-98e9-c8abbece181e",
    Lizards_Male_Clothing_Civilian_H_Upperbody_A = "5666f529-2df2-4284-a5c4-23b9b5fc71c8",
    Lizards_Male_Clothing_Civilian_Rich_A_Upperbody_A = "7d661bcf-64d3-4a47-83fa-f1e83a66384e",
    Lizards_Male_Robe_Purge_A_Upperbody_A = "ad3e5da9-efa1-4d07-9e4c-e9d761cf5054",
    Lizards_Male_Robe_Purge_A_Upperbody_B = "15c43c59-2551-4c4d-af53-6cf956f46f00",    
    
    Lizards_Male_Skeleton_Armor_Platemail_A_Upperbody_A = "6c9f8627-66d2-47e3-8e62-266f112c0f16",
    Lizards_Male_Skeleton_Armor_Platemail_A_Upperbody_B = "a357db1a-e347-44c8-a84a-ce41c4db0813",
    Lizards_Male_Skeleton_Armor_Platemail_A_Upperbody_C = "5dc152b7-8730-4357-8a1c-387c8fdb959c",
    Lizards_Male_Skeleton_Armor_Platemail_A_Upperbody_D = "f2feab4c-9dc9-41b5-bb6e-0073d2957f9b",
    Lizards_Male_Skeleton_Armor_Platemail_A_Upperbody_E = "2bdf6a6e-1e25-4c91-8a51-b6b6e5524556",
    Lizards_Male_Skeleton_Armor_Platemail_A_Upperbody_F = "186dfccb-773b-4c35-9a20-76c5940c381e",
    Lizards_Male_Skeleton_Armor_Chainmail_A_Upperbody_A = "a090c633-b633-4535-bc79-9de2353038ed",
    Lizards_Male_Skeleton_Armor_Chainmail_A_Upperbody_B = "f3a7d031-7a3e-48df-a8b2-50d4e97d2824",
    Lizards_Male_Skeleton_Armor_Chainmail_A_Upperbody_C = "4f0750be-0664-43dc-8423-64c4296d3ce0",
    Lizards_Male_Skeleton_Armor_Chainmail_A_Upperbody_D = "5cf97087-b0ca-48eb-abcb-c3ec50124d68",
    Lizards_Male_Skeleton_Armor_Chainmail_A_Upperbody_E = "c2194aa2-fde0-4f6f-884e-94a906149a87",
    Lizards_Male_Skeleton_Armor_Chainmail_A_Upperbody_F = "68ca3fed-c829-46f0-b681-1e6ca9537968",
    Lizards_Male_Skeleton_Armor_Scalemail_A_Upperbody_A = "448831d9-7faf-47b6-9b47-a5ab7ada25bf",
    Lizards_Male_Skeleton_Armor_Scalemail_A_Upperbody_B = "cb63b42c-17e8-48e1-968c-b8dbdefaa61e",
    Lizards_Male_Skeleton_Armor_Scalemail_A_Upperbody_C = "60cdbf47-1d92-4638-abc5-3d0b931a1998",
    Lizards_Male_Skeleton_Armor_Scalemail_A_Upperbody_D = "999c9631-8e57-4615-83a3-9c93a0ddbf33",
    Lizards_Male_Skeleton_Armor_Scalemail_A_Upperbody_E = "ea3e3a0e-74a5-4ee6-bd93-86fc5d7af721",
    Lizards_Male_Skeleton_Armor_Scalemail_A_Upperbody_F = "0638d3c6-5bfa-40a8-86b1-cf8d7dc68c63",
    Lizards_Male_Skeleton_Armor_Leather_A_Upperbody_A_Cape = "1f49cdde-ef13-47d8-8106-4a7b4265161c",
    Lizards_Male_Skeleton_Armor_Leather_A_Upperbody_A = "2806bfd9-5d94-40d8-bf45-baa7d846cba7",
    Lizards_Male_Skeleton_Armor_Leather_A_Upperbody_B = "d37f226a-4885-467c-beac-33c505ac781a",
    Lizards_Male_Skeleton_Armor_Leather_A_Upperbody_C = "bc7f5240-84a1-4f05-a9f3-6523c3a1b81f",
    Lizards_Male_Skeleton_Armor_Leather_A_Upperbody_D = "1e27502b-c818-4d20-ad4c-880942aafd60",
    Lizards_Male_Skeleton_Armor_Leather_A_Upperbody_E = "d7653f12-f0f0-4dca-bf4d-187ea85fef98",
    Lizards_Male_Skeleton_Armor_Leather_A_Upperbody_F = "f9280b5d-bdc1-4fee-8d16-b6f130b28d1f",
    Lizards_Male_Skeleton_Armor_StarterChainmail_A_Upperbody_A = "b6dcbaec-0cb6-4f33-be0c-e21bdc0e7d94",
    Lizards_Male_Skeleton_Armor_StarterChainmail_A_Upperbody_B = "4e80fc69-99c8-43e8-8dfa-4abaf44d6c8d",    
    Lizards_Male_Skeleton_Armor_StarterLeather_A_Upperbody_A = "bdf4fdd8-0bdc-41fe-a873-bd78876e94a4",
    Lizards_Male_Skeleton_Armor_StarterLeather_A_Upperbody_B = "f105dc40-12f0-4b74-b62f-c79ad3248998",
    Lizards_Male_Skeleton_Armor_Dreamer_A_Upperbody_A = "451c1d7b-4c10-4b4d-afe2-27d9f8b71d37",
    Lizards_Male_Skeleton_Armor_Mage_A_Upperbody_A = "5b6c11c5-fdee-43ce-af6d-a05b09b34430",
    Lizards_Male_Skeleton_Armor_Mage_C_Upperbody_A = "388c3130-e058-4c8f-a576-09b703af4e3e",
    Lizards_Male_Skeleton_Robe_Mage_A_Upperbody_A = "b9d72250-f8cb-44a2-91ab-4e1903325856",
    Lizards_Male_Skeleton_Robe_Mage_B_Upperbody_A = "3236b3b3-4329-4160-af37-b3c18d9374e5",
    Lizards_Male_Skeleton_Clothing_A_Upperbody_A = "97459c30-b8d5-4fdb-b1f2-2af0be414e54",
    Lizards_Male_Skeleton_Clothing_Civilian_A_Upperbody_A = "96b82026-4ac6-440b-86de-d80e63686bbd",
    Lizards_Male_Skeleton_Clothing_Civilian_B_Upperbody_A = "2fe57116-829e-4ee4-af6e-534e8d7a4190",
    Lizards_Skeleton_Male_Clothing_Civilian_Elite_A_Upperbody_CC = "fc2604b9-266c-48c6-b70f-36358ed83f71",
    Lizards_Male_Skeleton_Robe_Purge_A_Upperbody_B = "ec1ce60c-2009-43f3-9832-65605340242b",
    Lizards_Male_Skeleton_Robe_Purge_A_Upperbody_C = "d9bbfba4-0082-446d-bc50-6aa866a7ef6c",

    Creatures_Ghoul_Armor_Leather_A_Upperbody_A = "622b8803-bd10-495d-851f-786f6512e294",
    Creatures_Ghoul_Armor_Platemail_A_Upperbody_A = "aeaa76af-4d05-4177-932d-7307279c4dc3",
}

CharacterVisualResources.Lizards.Male.Arms = {
    Lizards_Male_Body_Naked_A_Arms_A = "4dc63a1b-9fc5-4349-9581-ad34267fabfb",
    Lizards_Male_Body_Naked_Dreamer_A_Arms_A = "f55d4383-58d8-4b3c-9ea1-b42447a45a20",
    Lizards_Male_Body_Djinn_Arms_A = "1dc8c00b-8ca2-4286-bc65-9850a6164ddd",
    Lizards_Male_Armor_Platemail_A_Arms_A = "290be74f-f34c-4aad-9f53-6164652cd5ef",
    Lizards_Male_Armor_Chainmail_A_Arms_A = "fa3754ad-eeed-4772-a0df-e7b2d34b30fa",
    Lizards_Male_Armor_Scalemail_A_Arms_A = "a28f9ba3-fca7-4320-91ed-da1ca8a84559",
    Lizards_Male_Armor_Leather_A_Arms_A = "97833584-1cb0-42d4-ae37-ae338b2a5e46",
    Lizards_Male_Armor_StarterChainmail_A_Arms_A = "4172c654-4f1a-4918-84b3-cd83f05562fa",    
    Lizards_Male_Armor_StarterLeather_A_Arms_A = "ccf1d601-aec4-4e04-85b6-d15188a40fb7",
    Lizards_Male_Armor_Dreamer_A_Arms_A = "4b64f93e-e7ce-4235-bca4-638d34832bed",
    Lizards_Male_Armor_Mage_A_Arms_A = "1ed1de56-d330-4dc9-a882-2f62312b8e39",
    Lizards_Male_Armor_Mage_C_Arms_A = "a3bc9927-73c2-4dd8-95d3-2c8438af1aa5",
    Lizards_Male_Robe_Purge_A_Arms_C = "ea327eac-a253-4650-8e15-c1ec7ac19dbe",
    
    Lizards_Male_Skeleton_Armor_StarterChainmail_A_Arms_A = "d2cd2181-4408-400b-895d-9d285611ce73",
    Lizards_Male_Skeleton_Armor_StarterLeather_A_Arms_A = "bd7616a7-9212-48e3-aedc-778f14826643",
    Lizards_Male_Skeleton_Armor_Dreamer_A_Arms_A = "439cb437-6abe-4c95-b597-dfe8be18c397",
    Lizards_Male_Skeleton_Armor_Mage_A_Arms_A = "1b64f065-6ca5-470a-a34d-877acbe9fa11",
    Lizards_Male_Skeleton_Armor_Mage_C_Arms_A = "62aafff6-02a5-495a-a31a-28cce242d5e7",
    Lizards_Male_Skeleton_Robe_Purge_A_Arms_C = "0624534b-6c28-4f4e-8266-46f324433ccb",

    Creatures_Ghoul_Body_Naked_A_Arms_A = "46177d57-d514-473c-b21e-915f2107cbae",
    Creatures_Ghoul_Body_Naked_B_Arms_A = "6616d5b9-804e-496f-96d5-3d926c875e2c",
    Creatures_Ghoul_Body_Naked_C_Arms_A = "0eecf163-aae8-49ab-af61-e33d384575d2",
    Creatures_Ghoul_Armor_Platemail_A_Arms_A = "ad8a8a26-8e79-4a23-975f-a9a510298342",
}

CharacterVisualResources.Lizards.Male.Legs = {
    Lizards_Male_Body_Naked_A_Lowerbody_A = "43151954-d00b-4931-9b3d-942e460e5d9e",
    Lizards_Male_Body_Naked_Dreamer_A_Lowerbody_A = "be436f71-e744-4a6b-9a5c-cd79f22a2228",
    Lizards_Male_Armor_Platemail_A_Lowerbody_A = "a4d07a00-5b7c-4736-a704-dc5c87f17bde",
    Lizards_Male_Armor_Platemail_A_Lowerbody_RedPrince = "a38c573b-14cc-45b7-ad56-fe5953bfd227",
    Lizards_Male_Armor_Chainmail_A_Lowerbody_A = "a0acf7e1-12aa-46fc-8860-a89dcdcb470d",
    Lizards_Male_Armor_Scalemail_A_Lowerbody_A = "3f3822eb-85b9-4363-b940-72ab8882ee56",
    Lizards_Male_Armor_Leather_A_Lowerbody_A = "33aeb42c-8a4c-490b-8eec-8342fd5444ae",
    Lizards_Male_Armor_StarterChainmail_A_Lowerbody_A = "3eff3927-f617-46a2-9db0-ccc0e20d29f8",    
    Lizards_Male_Armor_StarterLeather_A_Lowerbody_A = "1dcb0983-2fd8-450d-b6c2-1d4bb7709c60",
    Lizards_Male_Armor_Dreamer_A_Lowerbody_A = "5f1e7fe9-670e-49ee-8f94-312079bd2742",
    Lizards_Male_Armor_Mage_A_Lowerbody_A = "8c4b32bd-c515-4f18-802e-bced2d577cb6",
    Lizards_Male_Armor_Mage_C_Lowerbody_A = "b4bade10-fd8c-4674-a56d-ac56986f96ee",
    Lizards_Male_Robe_Mage_A_Lowerbody_A = "249e6b42-60e0-4194-9567-590c76ebe67f",
    Lizards_Male_Robe_Mage_B_Lowerbody_A = "26b5f532-cb55-4d80-8686-1a9109ab7fa5",
    Lizards_Male_Clothing_Civilian_A_Lowerbody_A = "fb0a7a4b-d903-44e2-8b40-3a12890cad8b",    
    Lizards_Male_Clothing_Civilian_B_Lowerbody_A = "f6d58c8a-1275-4855-9914-f2a4a337ba11",
    Lizards_Male_Clothing_Civilian_B_Dreamer_Lowerbody_A = "ffee4867-d9b8-436a-a732-a10306741040",
    Lizards_Male_Djinn_LowerBody_A = "ecd4fa30-4014-47a0-a2b5-66f8be47f021",
    Lizards_Male_Clothing_Civilian_Elite_A_Lowerbody_A = "f930ef5a-c4a4-4f63-95c2-d4cd99b5b449",
    Lizards_Male_Clothing_Civilian_Dreamer_Lowerbody_A = "aed60b2a-7e9a-46cb-8be1-091b3cf166f8",
    Lizards_Male_Clothing_Civilian_H_Lowerbody_A = "3ffe33df-dda2-479b-ab30-8fd79ccee00d",
    Lizards_Male_Clothing_Civilian_Rich_A_Lowerbody_A = "05a56880-0be4-4bb6-8a0a-d870983d0d73",
    Lizards_Male_Robe_Purge_A_Lowerbody_A = "b6e260fd-ed5f-458a-882d-e3794ec33303",
    Lizards_Male_Robe_Purge_A_Lowerbody_B = "aad0ac24-7408-4d85-a5d2-3d1935067d68",

    Lizards_Male_Skeleton_Armor_Platemail_A_Lowerbody_A = "9fc0bed6-75eb-4dee-96da-652e84319504",
    Lizards_Male_Skeleton_Armor_Chainmail_A_Lowerbody_A = "27e74810-5d65-4185-9df4-d986c2f0cb1b",
    Lizards_Male_Skeleton_Armor_Scalemail_A_Lowerbody_A = "a2827d33-0aaf-45bb-af72-742a500197ba",
    Lizards_Male_Skeleton_Armor_Leather_A_Lowerbody_A = "511037cb-64bb-46b0-b13c-018286cf3d63",
    Lizards_Male_Skeleton_Armor_StarterChainmail_A_Lowerbody_A = "93a196f3-2816-42a4-9ffb-02f60e9eb37a",
    Lizards_Male_Skeleton_Armor_StarterLeather_A_Lowerbody_A = "56f96db6-658d-4b5f-a76c-b707aa076963",
    Lizards_Male_Skeleton_Armor_Dreamer_A_Lowerbody_A = "273b36c7-cc4d-4e55-8c4f-09d2dc6cf55e",
    Lizards_Male_Skeleton_Armor_Mage_A_Lowerbody_A = "d1c4bab6-e684-4b41-863b-405edd96dfdf",
    Lizards_Male_Skeleton_Armor_Mage_C_Lowerbody_A = "8362804b-89c1-4693-a602-60060653cfe5",
    Lizards_Male_Skeleton_Robe_Mage_A_Lowerbody_A = "66689ac6-e8c1-4648-b33f-2c733eb60600",
    Lizards_Male_Skeleton_Robe_Mage_B_Lowerbody_A = "465d01f9-eb03-412f-937f-e41ad9aa6ca6",
    Lizards_Male_Skeleton_Clothing_A_Lowerbody_A = "1c3dd55c-97a3-4f70-9644-cb2f2bed94bd",
    Lizards_Male_Skeleton_Clothing_Civilian_A_Lowerbody_A = "474b8d56-4011-425c-93b8-bf1e8ac23a68",
    Lizards_Male_Skeleton_Clothing_Civilian_B_Lowerbody_A = "29a9bbb9-3b3e-41f6-ab61-2f915c855d73",
    Lizards_Male_Skeleton_Clothing_Civilian_Dreamer_Lowerbody_A = "6179481d-a193-491b-9d08-a313cd635450",
    Lizards_Male_Skeleton_Robe_Purge_A_Lowerbody_B = "0dfa04a5-a3a6-49d5-9eb8-979f6b2a85e0",
    Lizards_Male_Skeleton_Robe_Purge_A_Lowerbody_C = "1fe0a821-218b-4ec3-a486-f7ce06bf35af",

    Creatures_Ghoul_Armor_Leather_A_Lowerbody_A = "5a97fa67-13a4-4183-82b5-bee92128f369",
    Creatures_Ghoul_Armor_Platemail_A_Lowerbody_A = "3c130c5d-7213-42ee-97ea-d7cbeab54ba4",
    Creatures_Ghoul_Body_Naked_A_Cloth_A = "bafecaa7-1a82-48a2-bc0a-79339eeb4f2d",
}

CharacterVisualResources.Lizards.Male.Boots = {
    Lizards_Male_Body_Naked_A_Legs_A = "9cb2ba00-d755-40a6-bebe-847881109ba0",
    Lizards_Male_Body_Naked_Dreamer_A_Legs_A = "5fa94800-d4c9-4646-9bf6-e522ee0b001d",
    Lizards_Male_Armor_Platemail_A_Legs_A = "21375171-b012-4b9c-ac28-ecf7725b9f18",
    Lizards_Male_Armor_Chainmail_A_Legs_A = "316348de-5346-445c-aad7-b3d32e40fee5",
    Lizards_Male_Armor_Scalemail_A_Legs_A = "9cf156af-274d-4394-a15f-8d16989a74c5",
    Lizards_Male_Armor_Leather_A_Legs_A = "4c0739cb-c96f-4eb0-b79e-89f38a6de442",
    Lizards_Male_Armor_StarterChainmail_A_Legs_A = "8758617f-aae5-4a44-9a0f-778ff2fb0eeb",    
    Lizards_Male_Armor_StarterLeather_A_Legs_A = "4c158664-fe7c-458a-bb60-c1c873d1e410",
    Lizards_Male_Armor_Dreamer_A_Legs_A = "efc1c8b9-524b-4df0-b3a7-2a738f0c17a6",
    Lizards_Male_Armor_Mage_A_Legs_A = "ae72ba46-a405-4eff-992d-8f685509c506",
    Lizards_Male_Armor_Mage_C_Legs_A = "ea274587-e7c5-44eb-98b7-e75e27ef25e3",
    Lizards_Male_Clothing_Civilian_A_Legs_A = "985baed1-af31-484d-8fa4-c358abfd49d1",
    Lizards_Male_Clothing_Civilian_B_Legs_A = "e18276bb-8760-425a-98a8-90e42e828f5b",
    Lizards_Male_Clothing_Civilian_Elite_A_Legs_A = "322a68b7-04e9-4f4f-ad5f-85fc726601c9",
    Lizards_Male_Clothing_Civilian_H_Legs_A = "ad206012-fde2-48c7-916c-1515ed9b3bb0",
    Lizards_Male_Clothing_Civilian_Rich_Legs_A = "07d7d301-0b68-4126-8d35-b8b72e517ab0",
    Lizards_Male_Robe_Purge_A_Legs_C = "9fff1ed1-8532-4fb0-9e7a-378a540fa1c8",

    Lizards_Male_Skeleton_Armor_Platemail_A_Legs_A = "70f6ed35-9414-41e3-bdbd-a1ead3c38214",
    Lizards_Male_Skeleton_Armor_Chainmail_A_Legs_A = "ada3c629-05a0-4ca5-87a4-b5bc9c73953d",
    Lizards_Male_Skeleton_Armor_Scalemail_A_Legs_A = "ef2deff1-c02d-4987-9828-c0cd8ee1e9c0",
    Lizards_Male_Skeleton_Armor_Leather_A_Legs_A = "f71429ad-e00d-4696-8523-49323b47762a",
    Lizards_Male_Skeleton_Armor_StarterChainmail_A_Legs_A = "08cb654b-8731-4622-a62a-1d1807d7de4c",
    Lizards_Male_Skeleton_Armor_StarterLeather_A_Legs_A = "cc82798e-0cca-47bc-ac3b-509538745e1b",
    Lizards_Male_Skeleton_Armor_Dreamer_A_Legs_A = "c6a4b066-e28a-4126-94ab-fcf425cd03a4",
    Lizards_Male_Skeleton_Armor_Mage_A_Legs_A = "0e3fe291-00f9-47b2-9622-3ff7152dc947",
    Lizards_Male_Skeleton_Armor_Mage_C_Legs_A = "90520b6d-1fd1-447a-985c-ad18aa848522",
    Lizards_Male_Skeleton_Clothing_Civilian_A_Legs_A = "c1ee7680-619e-4f02-bf6a-b159e381c49d",
    Lizards_Male_Skeleton_Clothing_Civilian_B_Legs_A = "464df8fd-8448-49c6-9e56-b54736b94d94",
    Lizards_Male_Skeleton_Robe_Purge_A_Legs_C = "ac212497-d112-48a8-9f82-513ddfee6d78",

    Creatures_Ghoul_Armor_Leather_A_Legs_A = "d6bb8942-038c-43ca-9e8a-33496b7a5fce",
    Creatures_Ghoul_Armor_Platemail_A_Legs_A = "5c1020dc-0209-4b60-aefc-cb6c4c631319",
}

CharacterVisualResources.Lizards.Male.Beard = {}

CharacterVisualResources.Lizards.Male.Fullbody = {
    Lizards_Male_Armor_Mage_A_Fullbody_A = "df2c5a4e-1639-44e6-831b-39c3a47e67e2",
    Lizards_Male_Clothing_Civilian_C_Fullbody_A = "7607e474-1298-45fa-8b5b-adbf739c55b7",
    Lizards_Male_RedFaction_Inquisitor_A_Upperbody_A = "948097a1-f6e8-41d7-9317-a7d7efbd7af3",

    Lizards_Male_Skeleton_Armor_Mage_A_Fullbody_A = "9b5823fd-3f4a-42db-86cf-038306ab1bff",
    Lizards_Male_DeathFigure_A_01 = "cdd461b5-6021-4a9f-9758-e85b55c20599",
    Lizards_Male_Skeleton_RedFaction_Inquisitor_A_Upperbody_A = "9fe14e72-8b21-4e42-a76e-a5e62a504abb",

    Creatures_Demon_Grunt_A = "991f6056-8be2-4d2a-9260-ace10f1e3649",
    RS3_FX_SK_Lizards_Male_Armoured_01 = "8247ab1c-05e9-43f1-a907-994db525a1e5",
    ProxyMesh_Lizards_Hero_Male_Fullbody = "c21e32dd-b61c-4c6d-a29d-221c1f66af10",
}

CharacterVisualResources.Lizards.Male.Cape = {}

CharacterVisualResources.Lizards.Male.Shoulder = {}

CharacterVisualResources.Lizards.Male.Misc = {
    Lizards_Male_Clothing_UNIQUE_Blindfolds_A = "1c4e1c13-f2e9-4ec2-aedf-82638e4187fb",

    Lizards_Male_Skeleton_ClawFinger_A = "88136bf6-ef3d-4a76-98cf-bd15db8b787c",

    Creatures_Ghoul_Armor_Platemail_A_Accessory_A = "852429ba-c882-41a4-ae5e-dc07be3481ff",
    Creatures_Ghoul_Body_Naked_A_Accessory_A = "0696ad7e-5f14-4ed8-89ef-6f9c66fd889d",
    Creatures_Ghoul_Body_Naked_B_Accessory_A = "f1a58f8a-30e6-4a5a-9c68-0794845c68da",
}