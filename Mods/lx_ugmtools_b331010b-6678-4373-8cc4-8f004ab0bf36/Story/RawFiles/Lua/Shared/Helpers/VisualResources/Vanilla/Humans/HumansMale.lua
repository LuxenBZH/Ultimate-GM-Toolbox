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
    Shoulders = {},
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
    Humans = RaceVisuals:Create(),
}

CharacterVisualResources.Humans.Male.Hair = {
    Humans_Male_Hair_A = "43431d1f-3aa4-44e5-b397-e2f3adb60c01",    
    Humans_Male_Hair_B = "d88f4566-6775-40b0-8ae0-c85afae44fad",
    Humans_Male_Hair_C = "d70017c1-1713-48ed-b56d-f898858659ac",
    Humans_Male_Hair_D = "d2c4cfc9-6977-497d-a68d-cfc842184ee8",
    Humans_Male_Hair_E = "1539b103-7b0f-4c8e-93cd-aaf7da4426f8",
    Humans_Male_Hair_F = "c158c2c9-b466-44f3-bb55-411f2bc8df44",
    Humans_Male_Hair_G = "d09434c7-e6b5-42f5-9568-87aba282174d",
    Humans_Male_Hair_H = "741494c7-966c-4521-8a22-2cd0d37b2ab1",
    Humans_Male_Hair_I = "93f5ae82-5518-492a-8aeb-ddbaa3dc0485",   
    Humans_Male_Hair_J = "78990e84-453b-4c90-a43e-38be3333fef1",
    Humans_Male_Hair_K = "711ea5be-b696-493f-8e98-14c3e44da467",
    Humans_Male_Hair_L = "71749caa-16d5-4b4b-940c-845a4aca2080",
    Humans_Male_Hair_M = "0ed3e45b-af58-466b-8190-d500367f78f0",
    Humans_Male_Hair_N = "9dec757d-4b1c-4684-a5f5-6ebcb5f61bf4",
    Humans_Male_Hair_O = "76d2b4dc-afae-4a50-8125-83c4d721b028",
    Humans_Male_Hair_P = "8c48ff0a-1f38-488f-b9d1-56bb29340b05",
    Humans_Male_Hair_R = "4e1b022f-7d7b-4c2a-aa3a-87aced8656bd",
    Humans_Male_Hair_S = "d2bd0c8a-e602-4e81-b545-f78b3df19899",
    Humans_Male_Hair_T = "96ffaca0-557b-416a-96b6-1f51c8aa9071",
    Humans_Male_Hair_U = "7e45fc80-1cb8-4528-89ca-e2de256f1685",
    Humans_Male_Hair_V = "f9982fab-22e9-4378-bb3b-703de52f97a7",
    Humans_Male_Hair_Arhu = "1810fbe2-3e34-4693-afc5-5d7c8f1a02ab",
    Humans_Male_Hair_Gareth_A = "0e819b45-ab05-440a-b5fa-0c1029cf53e3",
    Humans_Male_Hair_Ifan_A = "36298519-eee1-4167-b097-843c6d834ab8",
}

CharacterVisualResources.Humans.Male.Helmet = {
    Humans_Male_Armor_Platemail_A_Helmet_A = "a1f449c1-18ea-4863-a705-903c2e7da214",
    Humans_Male_Armor_Platemail_A_Helmet_B = "71c17400-1034-43a0-903a-fa28ae23e46f",
    Humans_Male_Armor_Platemail_A_Helmet_C = "3e2bd936-2c8e-4716-8e23-c9a35df349f2",
    Humans_Male_Armor_Guard_A_Helmet_A = "55aac0ec-3ee6-49ca-9172-ad0c51074829",
    Humans_Male_Armor_Paladin_A_Helmet_A = "9bc5f218-bc40-4eea-9fef-e5a82819bff0",
    Humans_Male_Armor_Paladin_A_Helmet_B = "e41c8583-25eb-4a42-9cf0-509c1dfb43ad",
    Humans_Male_Armor_Paladin_A_Helmet_C = "4b3992d8-4f8e-4164-8bb3-bd36728dc664",
    Humans_Male_Armor_Scalemail_A_Helmet_A = "08b12820-25f0-4977-9e33-c1ac5598675e",
    Humans_Male_Armor_Scalemail_A_Helmet_B = "f2c0c746-0dd4-48f7-a5ad-c62f5a9d645e",
    Humans_Male_Armor_Chainmail_A_Helmet_A = "a7e671f5-b71a-4524-a4ad-2c32cb39fa8d",
    Humans_Male_Armor_Chainmail_A_Helmet_B = "73e99d1d-779c-49cd-a58c-2c25e92d89d6",
    Humans_Male_Armor_Leather_A_Helmet_A = "6b4bcb9f-a872-408a-bc23-220abfc2d97c",
    Humans_Male_Armor_Leather_A_Helmet_B = "20896578-9e65-4280-83d2-060b45018b6a",
    Humans_Male_Armor_StarterChainmail_A_Helmet_A = "9474e588-54af-476f-a5bf-c6c38a77f68e",
    Humans_Male_Armor_StarterLeather_A_Helmet_A = "bf68cc8e-f68e-49c2-90a3-0ac4c31bca68",
    Humans_Male_Paladin_Ranger_A_Helmet_A = "f795e972-151e-40c3-bf99-876031bc15ed",
    Humans_Male_Armor_Paladin_Priest_A_Helmet_A = "b7fec987-29d9-46a9-bce7-038b7cb1e3a4",
    Humans_Male_Paladin_Warlock_A_Helmet_A = "c1a54b7a-cd68-45fc-9a23-e839dcf26515",
    Humans_Male_Armor_Mage_A_Helmet_A = "3a5556d5-3593-4c09-b852-581850aa4776",
    Humans_Male_Armor_Mage_B_Helmet_A = "dd61a4d3-7792-43f2-92c0-c79e583c92c4",
    Humans_Male_Armor_Mage_C_Helmet_A = "b43c6b80-c03d-4313-8412-ec8162d260c7",
    Humans_Male_Armor_PlaguesMask_A_Helmet_A = "dc63a2f1-7949-45d9-8d23-81c431753309",
    Humans_Male_Armor_PlaguesMask_A_Helmet_B = "f89af16b-0f2d-401f-b0cb-865119bb5a10",
    Humans_Male_Armor_Bandit_A_Helmet_A = "64b09a84-18c7-4039-8ab6-41bd5af37c8b",
    Humans_Male_Armor_Blackring_A_Helmet_A = "cb9e348b-1c01-4cac-94a5-80ca4406f4ca",
    Humans_Male_Armor_Alexandar_Helmet_A = "081bfe08-ffc6-4673-9e51-8b2ba5979853",
    Humans_Male_Armor_Braccus_Helmet_A = "7c565709-53ec-4738-8183-8f09d4fd6b31",
    Humans_Male_Armor_Braccus_Cape_A = "c3b9908b-0992-4013-aeba-3a26dde8c30e",
    Humans_Male_Beast_Helmet_A = "d5d7231b-7842-4cd0-b619-e9c4a737dc09",
    Humans_Male_Blackring_Grunt_A_Helmet_A = "f44663dd-796c-4318-a886-47a9c3d6ef2c",
    Humans_Male_Blackring_Wizard_A_Helmet_A = "8244e4ea-b967-4129-bdeb-1114d38681ca",
    Humans_Male_RedFaction_Brute_A_Helmet_A = "b6198207-1a40-43fe-8980-aa418275556e",
    Humans_Male_RedFaction_Grunt_A_Helmet_A = "b475abe5-9820-4119-92cb-1216d82cd553",
    Humans_Male_RedFaction_Grunt_A_Helmet_B = "d735d888-bcbd-4c49-8857-f58b4676e229",
    Humans_Male_RedFaction_Grunt_A_Helmet_C = "33aa622a-6103-427c-a632-bbc3d4200b2f",
    Humans_Male_RedFaction_Inquisitor_A_Helmet_A = "b0277e78-fc82-4149-a421-64c27297c2a8",
    Humans_Male_RedFaction_Priest_A_Helmet_A = "fb77dd80-6315-4624-b874-72a6cbda404d",
    Humans_Male_RedFaction_Ranger_A_Helmet_A = "1d17bc53-9e27-4fea-944f-92a23e2c449b",
    Humans_Male_RedFaction_Ranger_A_Helmet_B = "3a2c06c4-b916-4f83-a2cf-a164137a7bb4",
    Humans_Male_Weaponised_Purged_A_Helmet_A = "49f7fa63-7dd5-42ba-9b90-2cf565192d19",
    Humans_Male_Clothing_A_Helmet_A = "d2c3ef8d-4433-4a8c-9af0-6f583d624d4d",
    Humans_Male_Clothing_B_Helmet_A = "427446ea-3318-4f07-8b42-da5b554383fa",
    Humans_Male_Clothing_H_Helmet_A = "480b69c1-40c8-428c-ba9f-7a5cd148c502",
    Humans_Male_Robe_Purge_A_Helmet_A = "f3b8c2cc-0103-4ab7-9390-db63b732c998",
    Humans_Male_Robe_Purge_A_Helmet_B = "3945aaec-be04-416c-86dd-c63c052dfc9b",
    Humans_Male_Robe_Purge_A_Helmet_C = "de7eea6e-1558-4997-9231-bf1ca871df90",
    Humans_Male_Robe_Purge_A_Helmet_D = "0be5c954-f315-4ee3-878b-2ff0e1de6b6b",
    Humans_Male_Shapeshifter_Mask_B = "775a7aed-7d75-4e6e-aeda-c4edc995f0b8",
    Humans_Male_Shapeshifter_Mask_A = "c322117e-ce78-4095-bd66-bba0738786aa",
    Humans_Male_Armor_FUR_Bucket_A = "d53f1ab6-c57d-4e74-9b48-adebd627309b",
    Humans_Male_Armor_FUR_Kitchen_Pot_F = "80057fa8-e752-478e-883c-a87778063047",
}


CharacterVisualResources.Humans.Male.Heads = {
    Humans_Male_Body_Naked_A_Head_A = "f72b6f7f-b12f-40ce-9560-44457acbbcb4",
    Humans_Male_Body_Naked_A_Head_B = "395eaf1b-c144-490a-8375-bf81190a37d3",
    Humans_Male_Body_Naked_A_Head_C = "355b7b7a-0201-45e8-a373-5bf8bf4c8b7b",
    Humans_Male_Body_Naked_A_Head_D = "e356a4fa-ad9b-48e6-8864-f8a8d58014f5",
    Humans_Male_Body_Naked_A_Head_E = "62d6c8bc-c8d6-45b4-a3fb-f8405468bb7b",
    Humans_Male_Body_Naked_A_Head_F = "cf5c974b-a217-4743-97c4-706f21238ac5",
    Humans_Male_Body_Naked_A_Head_G = "39883535-5dc2-4e7c-8c30-610d55ec415c",
    Humans_Male_Body_Naked_A_Head_H = "bccb3021-a58d-443e-8c31-33dfdf560025",
    Humans_Male_Body_Naked_A_Head_I = "3b56ca38-eec0-4d8a-994a-0baf06d7d6c0",
    Humans_Male_Body_Naked_A_Head_J = "e67de906-3e9d-4370-a5d9-661c32b95808",
    Humans_Male_Body_Naked_A_Head_K = "22dacc4e-d997-4d7d-a462-ece21d699cb9",
    Humans_Male_Body_Naked_A_Head_L = "426e67f3-62cb-49e1-afae-c70d69c4e45d",
    Humans_Male_Body_Naked_A_Head_M = "0c254562-d717-40c9-b045-6eff13aeaf51",
    Humans_Male_Body_Naked_A_Head_N = "5ec61382-369d-4a35-86a6-ea0bfd19fbcd",
    Humans_Male_Body_Naked_A_Head_O = "a028f6b5-2253-4174-8caf-f5a2f75f9116",
    Humans_Male_Body_Naked_A_Head_P = "5e26953d-40c4-4ed8-a29f-3c5b20607ccf",
    Humans_Male_Body_Naked_A_Head_R = "d31e4462-1f4e-4f75-aa95-e4d159539fa3",
    Humans_Male_Body_Naked_A_Head_S = "1ec67bbc-f925-4ab3-a585-2ab48643434c",
    Humans_Male_Body_Naked_A_Head_T = "a32eb5f9-5889-4225-8e6e-213a472ceb96",
    Humans_Male_Body_Naked_A_Head_U = "f3358435-ef4c-4f63-ba8b-d2d42b6e1164",
    Humans_Male_Body_Naked_A_Head_Alexandar_A = "bdacbde3-ebf8-4a64-8562-b6226efd2b7a",
    Humans_Male_Body_Naked_A_Head_Arhu_A = "dfc61fe6-dc7b-4c48-bc95-4ce61bc1d6fa",
    Humans_Male_Body_Naked_A_Head_Ifan_A = "f588044d-ecd2-4ac9-abf5-6a1a52f7a33f",
    Humans_Male_Body_Naked_A_Head_Lucian_A = "baf686d1-a176-4cdd-a564-926d2c4dbbe2",
    Humans_Male_Body_Naked_A_Head_Tarquin_A = "4c5727c1-0e54-4c58-9f6f-75f7cf766e31",
}

CharacterVisualResources.Humans.Male.Torso = {
    Humans_Male_Body_Naked_A_UpperBody_A = "7d1372aa-dc37-4d6f-af1f-3f4026b3350d",
    Humans_Male_Body_Naked_A_UpperBody_Jahan = "782e5b6e-939f-42b8-9680-fa91aaf03c13",
    Humans_Male_Body_Naked_Skinny_A_Upperbody_A = "4c675eb8-5f81-4ce0-913e-578c7ac87101",
    Humans_Male_Armor_Platemail_A_Upperbody_A = "372f255d-5706-4b56-9657-5d255dc9863c",
    Humans_Male_Armor_Platemail_A_Upperbody_B = "a27b9ab1-76da-4812-b6b0-0152c09ea33b",
    Humans_Male_Armor_Platemail_A_Upperbody_C = "e8fc5e64-8e0c-42a7-86e0-01f71e3fcabe",
    Humans_Male_Armor_Platemail_A_Upperbody_D = "e5f27314-25ea-42c8-919c-fbc15cc194ae",
    Humans_Male_Armor_Platemail_A_Upperbody_E = "ab25040c-0a28-4e0a-b464-280bd90a7591",
    Humans_Male_Armor_Platemail_A_Upperbody_F = "3360bc43-d128-494a-a857-678afdc3806a",
    Humans_Male_Armor_Guard_A_UpperBody_A = "fc8ffc5f-b26a-496f-bb9c-411f6c824a10",
    Humans_Male_Armor_Gareth_Upperbody_A = "7cfd3480-4a75-4810-bef1-e7b7b3152088",
    Humans_Male_Armor_Paladin_A_Upperbody_A = "58e900af-ff3e-4b43-a163-e12489ea9260",
    Humans_Male_Armor_Paladin_A_Upperbody_B = "302807dd-f39a-45b7-adf7-1f02224cd0f7",
    Humans_Male_Armor_Paladin_A_Upperbody_C = "a7e5e168-a422-4d85-842e-29378a635570",
    Humans_Male_Armor_Paladin_A_Upperbody_D = "05b0d64e-4b65-49b5-8d3c-99392ef85046",
    Humans_Male_Armor_Scalemail_A_Upperbody_A = "b9a804b4-1d53-4c13-812b-fdf6578154f4",
    Humans_Male_Armor_Scalemail_A_Upperbody_B = "3494fb65-65a3-48b5-9aa4-c5f0fffa9d2b",
    Humans_Male_Armor_Scalemail_A_Upperbody_C = "f9ea8da8-217d-4092-8b7f-cc5a346ca6b5",
    Humans_Male_Armor_Scalemail_A_Upperbody_D = "1cb4fde8-a251-4cea-9614-53a82ed1a869",
    Humans_Male_Armor_Scalemail_A_Upperbody_E = "3925479f-0aba-4fc0-911e-d768d5e1bcde",
    Humans_Male_Armor_Scalemail_A_Upperbody_F = "4fdde153-adfc-45d5-9914-0adb537c658c",
    Humans_Male_Armor_Chainmail_A_Upperbody_A = "b465211a-4a8d-4e2a-b3ae-654c67391c39",
    Humans_Male_Armor_Chainmail_A_Upperbody_B = "300bd860-54e8-48c8-97e4-0f62d6d8c25f",
    Humans_Male_Armor_Chainmail_A_Upperbody_C = "5f404aa4-9c08-4829-b394-c9125358b4ef",
    Humans_Male_Armor_Chainmail_A_Upperbody_D = "b679fe61-e80e-4510-affd-d04f7f0bbf3a",
    Humans_Male_Armor_Chainmail_A_Upperbody_E = "46d21bf8-d2f6-4eaa-a27a-0050a4d72d45",
    Humans_Male_Armor_Chainmail_A_Upperbody_F = "ef3421d6-a771-42c2-a61b-be1896273ee8",
    Humans_Male_Armor_Leather_A_Upperbody_A_Cape = "7d845ca2-0713-4ab7-9b76-80a6abbb8cfb",
    Humans_Male_Armor_Leather_A_UpperBody_A = "74b9b970-aa49-4135-a8eb-08b07e5f4dc3",
    Humans_Male_Armor_Leather_A_Upperbody_B = "5e8430e4-4ce4-457b-8139-5a776f15089a",
    Humans_Male_Armor_Leather_A_Upperbody_C = "77558027-c661-4162-83ec-1e605dad4886",
    Humans_Male_Armor_Leather_A_Upperbody_D = "95c729b6-a5b4-40cf-ad60-12d67e4aa78d",
    Humans_Male_Armor_Leather_A_Upperbody_E = "444535c6-4c61-49e1-a223-7930bd42e668",
    Humans_Male_Armor_Leather_A_Upperbody_F = "285b8680-49cd-4774-80af-8ddd64238742",
    Humans_Male_Armor_StarterChainmail_A_Upperbody_A = "040e4968-ee70-4be0-a9fb-14a7cd4ce278",
    Humans_Male_Armor_StarterChainmail_A_Upperbody_B = "c03d188f-4a51-42d3-a215-30455684fee1",
    Humans_Male_Armor_StarterLeather_A_Upperbody_A = "b1ee9db6-7c96-47b7-8aa5-722c8d0b85c6",
    Humans_Male_Armor_StarterLeather_A_Upperbody_B = "e3013372-3b71-49a0-8d45-ff7e5b1448fa",
    Humans_Male_Paladin_Ranger_A_Upperbody_A = "c3d79024-674f-469e-a866-aef8e7271a16",
    Humans_Male_Paladin_Ranger_A_Upperbody_B = "126f9a19-7c50-4f5d-ae38-01c5fe297c07",
    Humans_Male_Armor_Mage_A_Upperbody_A = "612546c7-e842-4356-9c7e-30cad06900df",
    Humans_Male_Armor_Mage_B_Upperbody_A = "577ef928-56fa-450b-b8d3-59206ad30c89",
    Humans_Male_Armor_Mage_B_Upperbody_B = "15b4b102-1e97-4846-aedb-1f9aa902bb88",
    Humans_Male_Armor_Mage_C_Upperbody_A = "70964053-b6e8-4ef1-8364-392caa2844ef",
    Humans_Male_Armor_Paladin_Priest_A_Upperbody_A = "1e9d401c-a1c7-4cea-a8a1-8b608ec6641f",
    Humans_Male_Paladin_Warlock_A_Upperbody_A = "43589d33-5129-4f6c-ad62-1c20d6f14ae4",
    Humans_Male_Paladin_Warlock_A_Upperbody_B = "d5ca49a3-b040-4daf-ac2a-368306fb0f27",
    Humans_Male_Robe_Mage_A_Upperbody_A = "d442522c-28e0-477b-a7ca-d90c41fcf20c",
    Humans_Male_Robe_Mage_B_Upperbody_A = "f78180eb-fd1a-4623-9c2d-bbb27703647c",
    Humans_Male_Robe_Undead_A_Upperbody_A = "06346b99-e460-456e-b9e9-7c1fb8b03db5",
    Humans_Male_Armor_Bandit_A_Upperbody_A = "1a545bde-a0b8-4f52-b6e8-0fd9e9fa27f7",
    Humans_Male_Armor_Blackring_A_Upperbody_A = "62eda0fe-e7b2-4d7e-b95b-6b21f7e2c97f",
    Humans_Male_Armor_Blackring_A_Upperbody_B = "ff840dfd-1918-4fd2-901b-5638f9f85285",
    Humans_Male_Armor_Braccus_Upperbody_A = "910c8794-9996-480e-a4a0-3106fe170e70",
    Humans_Male_Armor_Arhu_Upperbody_A = "54a03b04-57dd-4e87-838f-18dc01a9003d",
    Humans_Male_Jahan_Upperbody_A = "35bbd575-c34c-467f-b662-fb8eda9fdb00",
    Humans_Male_RedFaction_Brute_A_Upperbody_A = "1eee33c3-2ef8-458b-81be-781985a9e56e",
    Humans_Male_RedFaction_Grunt_A_Upperbody_A = "148b278c-5841-4e2c-abe8-d12ae2bdf1cc",
    Humans_Male_RedFaction_Inquisitor_A_Upperbody_A = "869786e4-62b4-4e03-b5f7-96e1cc9ad0cb",
    Humans_Male_RedFaction_Inquisitor_A_Upperbody_B = "f03be5ec-34f9-4090-83e1-e82c934a081a",
    Humans_Male_RedFaction_Priest_A_Upperbody_A = "d95acd05-19e5-45cc-9811-c7b9dc8a7842",
    Humans_Male_RedFaction_Ranger_A_Upperbody_A = "b7e925a0-414d-47cb-a546-f1d6497c3f22",
    Humans_Male_Robe_Tarquin_Upperbody_A = "06f08126-ccee-4655-aff9-2167667add1b",
    Humans_Male_Weaponised_Purged_A_Upperbody_A = "d5dec422-5311-44e7-bfdd-5e419c4a1c22",
    Humans_Male_Clothing_A_Upperbody_A = "5f5644d4-010f-4463-aff6-7575140b8ed1",
    Humans_Male_Clothing_B_Upperbody_A = "18ed73c2-ff96-4ac5-a00f-2a1d7854425d",
    Humans_Male_Clothing_C_Upperbody_A = "b714f18a-2433-479f-8689-3a102bf562bb",
    Humans_Male_Clothing_D_Upperbody_A = "1083b8d2-6053-42db-b492-fe65db9d4617",
    Humans_Male_Clothing_E_Upperbody_A = "8fed0545-ea2e-400f-992a-885f143e94c2",
    Humans_Male_Clothing_F_Upperbody_A = "ac51abe5-e6ea-472f-b23e-01d1d6759bff",
    Humans_Male_Clothing_G_Upperbody_A = "da899b28-08b7-43bc-a5c0-ead14f73bf45",
    Humans_Male_Clothing_H_Upperbody_A = "de56d7f0-2956-4211-a54f-df1887365993",
    Humans_Male_Clothing_I_Upperbody_A = "ecb3aa80-480e-4f6b-bf17-fbac862745ee",
    Humans_Male_Robe_Purge_A_Upperbody_A = "07213cc1-2cfe-499e-bd7d-ac8769eb38c1",
    Humans_Male_Robe_Purge_A_Upperbody_B = "7f23b9d9-db8a-4b20-b317-134302c40c0f",
    Humans_Male_Robe_Rich_A_Upperbody_A = "1b7f9abf-8015-437f-9c32-3b512ee245fb",
    Humans_Male_Robe_Rich_B_Upperbody_A = "22165092-9457-432d-9327-db4a3fbd53f6",
}

CharacterVisualResources.Humans.Male.Arms = {
    Humans_Male_Body_Naked_A_Arms_A = "c0398bff-c98c-4b60-b217-2d90fe09f918",
    Humans_Male_Body_Naked_A_Arms_B = "a2b060ae-75e9-41c2-9749-df838af807f2",
    Humans_Male_Armor_Platemail_A_Arms_A = "80f918f9-9b4f-4a83-8d2c-f4a50f7d26db",
    Humans_Male_Armor_Guard_A_Arms_A = "4dab23ec-ab80-42a6-ac64-d7d8b2af2abe",
    Humans_Male_Armor_Paladin_A_Arms_A = "6b8323ab-3ec0-4f52-843f-a1ceb8f8aa37",
    Humans_Male_Armor_Scalemail_A_Arms_A = "af0642b2-90cc-49a2-b0af-c5ae9662436a",
    Humans_Male_Armor_Chainmail_A_Arms_A = "4aa3eaa5-4c28-4d5c-b918-7f37826f128c",
    Humans_Male_Armor_Leather_A_Arms_A = "f16410a5-c9ca-4a72-9442-a2847b19af27",
    Humans_Male_Armor_StarterChainmail_A_Arms_A = "bb6a49e5-cdea-40b2-9068-15dfead40b4b",
    Humans_Male_Armor_StarterLeather_A_Arms_A = "41e628d3-d7ba-4e45-a89e-df8b40775541",
    Humans_Male_Armor_Mage_A_Arms_A = "677e0c4a-6952-4933-be98-d9b69dcb95d9",
    Humans_Male_Armor_Mage_B_Arms_A = "26cdb8b2-a071-4836-9c9a-125a073ade93",
    Humans_Male_Armor_Mage_C_Arms_A = "c1aa1f30-20d4-4a07-9f5c-369c6f1919d3",
    Humans_Male_Armor_Bandit_A_Arms_A = "421f61a3-b540-4b7a-9ce2-c6da298cbe6c",
    Humans_Male_Armor_Blackring_A_Arms_A = "bd34c3c9-7539-4a10-a97b-a058aa60909f",
    Humans_Male_Armor_Braccus_Arms_A = "316c1cce-9e31-4868-83a2-ce41ce3fef0e",
}

CharacterVisualResources.Humans.Male.Legs = {
    Humans_Male_Body_Naked_A_LowerBody_A = "843e33c5-f61d-4f86-b951-0a1557fb5e2c",
    Humans_Male_Body_Naked_Skinny_A_Lowerbody_A = "2b6c0000-acbe-4947-8b4f-d5347570d33a",
    Humans_Male_Armor_Platemail_A_Lowerbody_A = "15646fbc-fb5f-4e5b-946a-d5c122bdc4ee",
    Humans_Male_Armor_Guard_A_LowerBody_A = "ceee250d-68da-4f86-ba19-2b3af4660f2a",
    Humans_Male_Armor_Gareth_Lowerbody_A = "1d25a822-ccf1-4608-b45b-3d887d33a6ff",
    Humans_Male_Armor_Paladin_A_Lowerbody_A = "ab80059b-51f2-4c0d-84ee-8b3326b7d5f8",
    Humans_Male_Armor_Paladin_A_Lowerbody_B = "aff678dc-58fe-4005-aba9-83e2bff95fdc",
    Humans_Male_Armor_Scalemail_A_Lowerbody_A = "c3b8029e-9f16-4db6-b49a-6d32e82f835d",
    Humans_Male_Armor_Chainmail_A_Lowerbody_A = "d519be3d-c5a3-4e7c-a0f4-24bc05204925",
    Humans_Male_Armor_Leather_A_LowerBody_A = "07b1d65c-fcb1-4d0d-a9de-f9ee2b1435ff",
    Humans_Male_Armor_StarterChainmail_A_Lowerbody_A = "7d9bc6c3-cef2-490e-b0d6-dc3a20ff7a57",
    Humans_Male_Armor_StarterLeather_A_Lowerbody_A = "773daf9c-499f-40da-9568-578dd2168b23",
    Humans_Male_Paladin_Ranger_A_Lowerbody_A = "5b8dea29-fc3a-4372-95b4-2a38d12f0d1d",
    Humans_Male_Armor_Mage_A_Lowerbody_A = "62464bcd-50d9-4ca7-bae8-b39a4455e5cc",
    Humans_Male_Armor_Mage_B_Lowerbody_A = "529f604b-24e8-49e7-9a45-8bfba5ea54d4",
    Humans_Male_Armor_Mage_C_Lowerbody_A = "95dbee87-670c-40c2-a7fc-b1110f1a76d1",
    Humans_Male_Armor_Paladin_Priest_A_Lowerbody_A = "eaee14ae-c8d8-4895-8e25-44f09dfba2b6",
    Humans_Male_Paladin_Warlock_A_Lowerbody_A = "1493e302-473c-4968-b53c-c22e11b0a016",
    Humans_Male_Robe_Mage_A_Lowerbody_A = "f1b6f764-7242-497a-8a8e-50d9a358a0d0",
    Humans_Male_Robe_Mage_B_Lowerbody_A = "1924196f-d654-422b-864a-6ebf4d076873",
    Humans_Male_Armor_Bandit_A_Lowerbody_A = "bf225bc5-cda3-4313-ba1d-c90786189696",
    Humans_Male_Armor_Blackring_A_Lowerbody_A = "ee3258f4-027d-4d58-8dbb-8a7eec346321",
    Humans_Male_Armor_Braccus_Lowerbody_A = "1f99074c-8902-4a24-bd1d-6e674e039dff",
    Humans_Male_Armor_Arhu_Lowerbody_A = "a7db7829-a3a8-47dd-8f3d-7cd2e129270c",
    Humans_Male_Jahan_Lowerbody_A = "f4714fef-1ffd-45f2-8dd4-0002f63127f3",
    Humans_Male_RedFaction_Brute_A_Lowerbody_A = "5d20f7f3-5245-4efc-aaee-5ba3bcff11e1",
    Humans_Male_RedFaction_Grunt_A_Lowerbody_A = "ad6cdee4-8a17-4b42-bd5a-29d2e5d12444",
    Humans_Male_RedFaction_Inquisitor_A_Lowerbody_A = "b1c6c266-91df-42db-81c6-b806acc14b34",
    Humans_Male_RedFaction_Priest_A_Lowerbody_A = "2a29deee-7ee4-44b2-94e2-0f359181ef84",
    Humans_Male_RedFaction_Ranger_A_Lowerbody_A = "f2422afe-6f23-489f-a30f-2e6251b2e8f7",
    Humans_Male_Robe_Tarquin_Lowerbody_A = "fb079b81-ab83-429a-b428-2aea08e15519",
    Humans_Male_Weaponised_Purged_A_Lowerbody_A = "3f290be7-7be4-4da8-86f9-f0b65db0b8af",
    Humans_Male_Clothing_A_Lowerbody_A = "8467f7a1-46bb-4259-82d0-d5364d554f0e",
    Humans_Male_Clothing_B_Lowerbody_A = "96be5031-3bb7-4a9e-a453-e90a92792d64",
    Humans_Male_Clothing_C_Lowerbody_A = "0f2b72f4-0710-45d1-8c3c-a625034c04b8",
    Humans_Male_Clothing_D_Lowerbody_A = "40fc954f-1032-4f2d-87b6-cdea175d8f7c",
    Humans_Male_Clothing_E_Lowerbody_A = "fc92d6ae-9e94-494c-9b30-09d0e7169f9a",
    Humans_Male_Clothing_F_Lowerbody_A = "41bb922f-1cc5-4ffe-8113-497d67e3d17a",
    Humans_Male_Clothing_G_Lowerbody_A = "4c6404b6-f9e0-4e3b-abcb-75fe5d769d47",
    Humans_Male_Clothing_H_Lowerbody_A = "ad0686ab-97a5-418f-b361-8ff7bbe14b4b",
    Humans_Male_Clothing_I_Lowerbody_A = "d9ac84fb-5dc7-4238-b1fa-4800aff2a22a",
    Humans_Male_Robe_Purge_A_Lowerbody_A = "29a85209-dd52-4945-99f0-3da391f03a80",
    Humans_Male_Robe_Purge_A_Lowerbody_B = "a7562a66-db41-44f7-b50f-cc6a28f8ee62",
}

CharacterVisualResources.Humans.Male.Boots = {
    Humans_Male_Body_Naked_A_Legs_A = "0eb1c42d-0e5e-4ef0-8370-e85eaeb66f9e",
    Humans_Male_Armor_Platemail_A_Legs_A = "00d82202-9eda-46c4-8936-afbfe7db073d",
    Humans_Male_Armor_Guard_A_Legs_A = "a0bfc5ad-b36a-413c-ae48-919a7bb109d8",
    Humans_Male_Armor_Paladin_A_Legs_A = "131f990a-ec2e-4338-b7e4-c546583b04bc",
    Humans_Male_Armor_Scalemail_A_Legs_A = "0dc628a5-03d4-4287-ae24-3fcd0a9f7b92",
    Humans_Male_Armor_Chainmail_A_Legs_A = "edaf370d-a586-44dc-900d-76c4826046b6",
    Humans_Male_Armor_Leather_A_Legs_A = "85ccf9d9-8844-4ca3-a7bf-9a53a13176a8",
    Humans_Male_Armor_StarterChainmail_A_Legs_A = "20ac1cc6-65e7-45dd-b8ed-71089e9898a4",
    Humans_Male_Armor_StarterLeather_A_Legs_A = "8bacc52e-7c4f-47ca-b362-8c1f28421dab",
    Humans_Male_Armor_Mage_B_Legs_A = "19877db0-ceb6-4149-99f3-9cb6264cf799",
    Humans_Male_Armor_Mage_C_Legs_A = "0cac5759-25e0-4a87-9a44-dd83f5c67478",
    Humans_Male_Armor_Bandit_A_Legs_A = "81e8359c-8fc2-46a3-9749-627564f54fa0",
    Humans_Male_Armor_Blackring_A_Legs_A = "30954792-21fb-4f91-a051-006ed361c199",
    Humans_Male_Clothing_A_Legs_A = "ac5600ef-87e3-4444-b6e3-9f0e8a66e86b",
    Humans_Male_Clothing_B_Legs_A = "0e484649-4f84-4017-9230-4f63d269853f",
    Humans_Male_Clothing_C_Legs_A = "db6bf6f0-e62d-4c28-9c08-c660ee940b2d",
    Humans_Male_Clothing_D_Legs_A = "5258e572-e303-435e-944b-85ec664cd32d",
    Humans_Male_Clothing_E_Legs_A = "623c2c63-e4d6-4387-b051-22960b050984",
    Humans_Male_Clothing_F_Legs_A = "dad1678c-3eee-4632-af2f-658b50825385",
    Humans_Male_Clothing_G_Legs_A = "db82174b-a04f-4b70-b6cb-2e2bf10d7ce5",
    Humans_Male_Clothing_H_Legs_A = "d251ab66-f674-4ec3-910d-ddf0bfec7083",
}

CharacterVisualResources.Humans.Male.Beard = {
    Humans_Male_Beard_A = "5a6c3f47-09d6-46a9-ab13-f2857deeda3e",
    Humans_Male_Beard_B = "bc77ad66-9ccc-4f1f-8d50-85fc06bd3571",
    Humans_Male_Beard_C = "671430a2-a9b8-4924-bd31-459e221c4944",
    Humans_Male_Beard_D = "246f6dd9-e24f-4c23-a272-43c3f975eb06",
    Humans_Male_Beard_E = "894f059c-c7ee-499c-9ce0-96e4f1bd7065",
    Humans_Male_Beard_F = "d69a30f4-ae96-45a3-aca9-d06467691c34",
    Humans_Male_Beard_G = "c5646dfc-222d-4cee-85de-599f7cedeae3",
    Humans_Male_Beard_H = "26888bc9-85d5-4817-ab7a-7089ad67a089",
    Humans_Male_Beard_I = "bcef7bdc-8212-4dd0-a534-7dd43888865c",
    Humans_Male_Beard_J = "5b22fbb3-738f-4bcf-b70f-e830d37e31c4",
    Humans_Male_Beard_K = "23b21c70-208a-4f7e-aeff-1594ca228768",
    Humans_Male_Beard_L = "fdc71b85-2b06-4295-b3f0-180dcd4d7771",
    Humans_Male_Beard_M = "adce533a-e03e-4a8b-81ca-3ee1bfd00578",
    Humans_Male_Beard_N = "afc511a5-caca-46f6-9eb2-0e9670dab85b",
    Humans_Male_Beard_O = "3ac9ee44-ff9e-4b56-8e63-0789b7c58ffa",
    Humans_Male_Beard_Arhu_A = "f11c150f-ebe5-4cb7-a506-bbe290dc78f4",
    Humans_Male_Beard_Ifan_A = "b8c024b4-183e-467f-966f-d0667e064846",
    Humans_Male_Beard_Jahan = "92ffda5e-ba91-48b6-9d51-0d273318b493",
}

CharacterVisualResources.Humans.Male.Fullbody = {
    Humans_Male_DeathFigure_B_01 = "b79bbc0e-286b-418d-a50d-cb7813556084",
    Humans_Male_Armor_Mage_A_Fullbody_A = "bbc05d27-62d0-4738-ad36-c2644b59d6c8",
    Humans_Male_Blackring_Grunt_A_FullBody_A = "6702594c-9535-4fd2-808d-1375df7f034e",
    Humans_Male_Blackring_Wizard_A_Fullbody_A = "9b6ca789-6d43-4580-b939-9d85af367e52",
    ProxyMesh_Humans_Hero_Male_Fullbody = "11a0f5d4-f764-4644-bbb6-585e463a88c9",
}

CharacterVisualResources.Humans.Male.Cape = {
    Humans_Male_Armor_Paladin_A_Cape_A = "f770c6d5-ef01-4cd2-be21-bb98932ba170",
    Humans_Male_Robe_Rich_A_Cape_A = "afa60e73-faf0-4c73-a6d0-92d67e8cd33f",
    Humans_Male_Robe_Rich_B_Cape_A = "fc64b39b-bf93-48de-a360-072c3775a485",
    Humans_Male_Armor_Gareth_Cape_A = "60977e4b-1f9c-4f74-81f9-ebf2f7205f61",
}

CharacterVisualResources.Humans.Male.Shoulders = {
    Humans_Male_Armor_Guard_A_Shoulders_A = "83303c51-7b7f-42fc-8143-d705df9e0701",
    Humans_Male_Armor_Gareth_Shoulders_A = "3b8b868e-db8b-41eb-bbf0-05e4134fbaa8",
    Humans_Male_Armor_Gareth_Shoulders_B = "27cc23cd-5b8b-45e0-9fc6-683f607ebdf2",
    Humans_Male_Armor_Paladin_A_Shoulders_A = "f82dea98-b31b-4bef-a662-063519e42dd1",
    Humans_Male_Armor_Paladin_A_Shoulders_B = "4fe30836-3f23-4d1d-b9eb-5758d4a9034a",
    Humans_Male_Armor_Scalemail_A_Shoulders_A = "62382ac2-96a8-457d-886f-3c6dd601fbf2",
    Humans_Male_Armor_Chainmail_A_Shoulders_A = "39fdac7b-8d54-43c0-9640-afd687ff49a2",
    Humans_Male_Armor_Leather_A_Shoulders_A = "0e4fae24-d9d0-45e5-9a7b-240b2ece1407",
    Humans_Male_Armor_Blackring_A_Shoulders_A = "975b09c6-14f4-402e-b017-c7488783b792",
    Humans_Male_RedFaction_Grunt_A_Shoulders_A = "194e681d-0285-44a3-bb88-5a10471b0a99",
}

CharacterVisualResources.Humans.Male.Misc = {
    Humans_Male_Eye_Patch = "32f8ad9f-4f07-4497-8398-9f76db8c001e",
    Humans_Male_Clothing_UNIQUE_Blindfolds_A = "10a6460f-3154-4e00-b622-59c13c97230e",
    Humans_Male_RedFaction_Priest_A_Prop_A = "bf9ae5cc-020f-4c88-8fb2-701d3eafe13b",
}