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
    Fullbody = {},
    Cape = {},
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
        Cape = {},
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
    Elves = RaceVisuals:Create(),
}

CharacterVisualResources.Elves.Male.Hair = {
    Elves_Male_Hair_A = "a35e8d4e-2647-4731-b7a0-7deddbe40b25",
    Elves_Male_Hair_B = "d6ca7c31-4385-4b8d-9e5a-b64ae6b9f70f",
    Elves_Male_Hair_C = "ce07367d-b9b2-45e1-9e82-83dbcbef1039",
    Elves_Male_Hair_D = "9d6c1212-2d28-4575-acfc-75d56eb3272a",
    Elves_Male_Hair_E = "e7371377-3417-442d-8e69-4d86df6463fa",
    Elves_Male_Hair_S = "6e6d0ceb-4d9c-4d50-b037-a5fef25f71ca",
    Elves_Male_Hair_O = "b3d4c7d5-8a5d-4690-a962-2f093bdc1bf2",
    Elves_Male_Hair_P = "dbc1c1bf-2257-4393-9adb-c6b3ccfe466e",
    Elves_Male_Hair_R = "12b285cb-28cd-4632-8b58-2cc4e6882a6c",
}

CharacterVisualResources.Elves.Male.Helmet = {
    Elves_Male_Armor_Platemail_A_Helmet_A = "55723d45-0b91-42f9-ab7c-b8258af6f3eb",
    Elves_Male_Armor_Platemail_B_Helmet_A = "c1fa02cb-2464-4bcc-9fe3-bf53f6605553",
    Elves_Male_Armor_Chainmail_A_Helmet_A = "f35ebbab-44f4-4a05-bdb5-54344b742633",
    Elves_Male_Armor_Chainmail_A_Helmet_B = "05d3dee1-4991-46ed-af05-940decc728d6",
    Elves_Male_Armor_Scalemail_A_Helmet_A = "185f0d7b-fcba-4283-8a22-8de85d6ace53",
    Elves_Male_Armor_Scalemail_A_Helmet_B = "8f9c236d-62f9-4afe-b489-b5355e8a5e45",
    Elves_Male_Armor_StarterChainmail_A_Helmet_A = "efb70b3a-8c61-483b-a730-e9d5495b0d3b",
    Elves_Male_Armor_Leather_A_Helmet_A = "7067928b-acc6-4874-b6f8-c420c910a092",
    Elves_Male_Armor_Leather_B_Helmet_A = "6d1d0ff1-0461-4b26-8d51-1073ec50b4ca",
    Elves_Male_Armor_StarterLeather_A_Helmet_A = "6ae5f6ef-ce75-4246-94bb-ec2b1d845967",
    Elves_Male_Armor_Mage_A_Helmet_A = "871207ab-f429-4662-a9d5-4d3e1e03611b",
    Elves_Male_Armor_Mage_B_Helmet_A = "d8b679c3-e4bd-4c61-a35b-1153f97b0289",
    Elves_Male_Armor_Mage_C_Helmet_A = "293568d4-ec61-462f-8da4-3e69c0c6eeb5",
    Elves_Male_Clothing_A_Noble_Hat_Helmet_A = "affea291-2802-4428-83a3-1bcbe01be739",
    Elves_Male_Clothing_Civilian_Normal_A_Helmet_A = "39b2b7e7-cc30-4770-ad35-65ed8afd7591",
    Elves_Male_Clothing_Civilian_Normal_B_Helmet_A = "506e4e54-24e9-4bd1-a50d-d7d6b126ecef",
    Elves_Male_Clothing_Civilian_Rich_A_Helmet_A = "aeb35a6a-1f4a-46c6-a405-8286480e4530",
    Elves_Male_Robe_Purge_A_Helmet_A = "9b9f1048-5626-4773-8cff-aa372304f180",
    Elves_Male_Robe_Purge_A_Helmet_B = "3f19493d-5ff1-49f9-9550-54e6e8251529",
    Elves_Male_Robe_Purge_A_Helmet_C = "38026889-1c2f-4a1b-979d-ed075dab4080",
    Elves_Male_Robe_Purge_A_Helmet_D = "7be0c3f4-2ee9-4d99-957c-f7a9c79c0787",
    Elves_Male_Skeleton_Robe_Purge_A_Helmet_C = "60d8b5a8-0349-44a6-89b4-60e85904adf9",
    Elves_Male_Beast_Helmet_A = "76c43c6b-bf9f-470d-bfd4-196cc468ea23",
    Elves_Male_ExMagister_A_Helmet_A = "7bdc957b-a795-463a-b536-725dee0f4eb1",
    Elves_Male_Spirit_Helmet_A = "23cb312b-a876-4517-a983-ff92bb8d51f7",
    Elves_Male_Spirit_Helmet_Autumn = "88ee1a46-47c0-4718-be74-cc22d06232d5",
    Elves_Male_Spirit_Helmet_Spring = "ce856390-be5a-499d-8c63-806da6f8a187",
    Elves_Male_Spirit_Helmet_Winter = "78f4c304-4772-4bb4-a9c8-463f8df989e9",
    Elves_Male_Shapeshifter_Mask_A = "6208cf44-8927-459c-81d4-eea41d7be854",
    Elves_Male_Shapeshifter_Mask_B = "b40fa9b9-3995-4820-b2da-6e99a4531ece",
    Elves_Male_Armor_FUR_Kitchen_Pot_F = "093ccf50-318b-47c9-98db-08a0ee506c13",
    Elves_Male_Armor_FUR_Bucket_A = "b1a92c8e-064e-4df7-9f34-dcf28ce8974f",
}


CharacterVisualResources.Elves.Male.Head = {
    Elves_Male_Body_Naked_A_Head_A = "c3118c8d-5ba0-45f7-a283-4c6c2c088fe0",
    Elves_Male_Body_Naked_A_Head_B = "cab0d925-1c02-4e8f-8886-8e30d96f171d",
    Elves_Male_Body_Naked_A_Head_C = "a40f13f7-4c97-488d-b39a-9e9000544b2f",
    Elves_Male_Body_Naked_A_Head_D = "c294dfde-dd85-42d3-8ab6-799b2614fc03",
    Elves_Male_Body_Naked_A_Head_E = "f6094262-7174-496f-9720-dbdcdf38b31b",
    Elves_Male_Body_Naked_A_Head_F = "5246881a-1410-45b7-8155-785f1eb80341",
    Elves_Male_Body_Naked_A_Head_Silentmonk_A = "fd22e301-0ec6-4506-977d-adfb77224f27",
    Elves_Male_Body_Naked_A_Head_P = "0a4414b1-6f44-4496-9c8f-6c3b2cdad0ff",
    Elves_Male_Body_Naked_A_Head_M = "d83bf2a2-9649-44c5-a054-ef3cc7a663ee",
    Elves_Male_Body_Naked_A_Head_O = "eb897b5e-2aab-4bc2-84e3-98f010efdd83",
    Elves_Male_Body_Naked_A_Head_N = "66f84336-baf0-4873-9502-7e65acbe4d5e",
    Elves_Male_ExMagister_Head_A = "7854f6fb-249c-4955-b68d-1eae5c8cd17c",

    Elves_Male_Skeleton_A_Head_A = "c974972a-33db-4b3c-bfe7-5d5011d3907f",
    Elves_Male_Skeleton_A_Head_B = "8cc4f6af-576a-42b9-9ea8-095d808a52b7",
    Elves_Male_Skeleton_A_Head_C = "e8af0369-bfc3-468e-b11f-0d586f84187e",
    Elves_Male_Skeleton_A_Head_D = "c1cbfc80-52ba-4850-b303-6839e116e259",
    Elves_Male_Skeleton_A_Head_F = "97fd9319-4a9f-4dde-adbd-ddf4074c6747",
    Elves_Male_Skeleton_A_Head_G = "382e2913-d5f1-4094-a188-3bca04336b43",
    Elves_Male_Skeleton_DeathFigure_A = "eb4f34b1-64e0-4ab4-868c-34a809d6e48e",
}

CharacterVisualResources.Elves.Male.Torso = {
    Elves_Male_Body_Naked_A_UpperBody_A = "20a82528-aa97-4ca1-a1f0-504c217b775c",
    Elves_Male_Spirit_Upperbody_A = "d8d75cab-2312-4ab2-bc04-0a38a6732f6e",
    Elves_Male_Body_Spirit_UpperBody_A = "59f0c463-0eb4-4688-a8fc-cbf04953898e",
    Elves_Male_Armor_Platemail_A_Upperbody_A = "3013dbb6-5cba-46bd-97f4-b65f831d0759",
    Elves_Male_Armor_Platemail_A_Upperbody_B = "9eacd85c-75a5-4dd8-b949-ffae4c3773ec",
    Elves_Male_Armor_Platemail_A_Upperbody_C = "3d3feb91-966a-4261-ba53-b5a63f9364e3",
    Elves_Male_Armor_Platemail_A_Upperbody_D = "848afa29-725d-4b8a-bee3-c55e22a87dcf",
    Elves_Male_Armor_Platemail_A_Upperbody_E = "c6111051-1737-4823-a24b-dd6b162f8638",
    Elves_Male_Armor_Platemail_A_Upperbody_F = "a8fd037a-95d7-4f54-82c5-9a500713eaef",
    Elves_Male_Armor_Chainmail_A_Upperbody_A = "a493b0c6-ea91-4a10-b2a3-8341e83184da",
    Elves_Male_Armor_Chainmail_A_Upperbody_B = "92c65fb2-86b1-4439-b0e0-dd7187215091",
    Elves_Male_Armor_Chainmail_A_Upperbody_C = "7cec6d06-f8e8-49c1-917a-8178e2605297",
    Elves_Male_Armor_Chainmail_A_Upperbody_D = "672d576b-b633-44d5-8677-95aea867a9d7",
    Elves_Male_Armor_Chainmail_A_Upperbody_E = "65bca6fd-d88a-4b63-9960-a1c365a00b56",
    Elves_Male_Armor_Chainmail_A_Upperbody_F = "9521f8ca-0106-4449-a096-4b135767e7b5",
    Elves_Male_Armor_Scalemail_A_Upperbody_A = "42f380c7-213b-4036-ad29-c2d796dcaecc",
    Elves_Male_Armor_Scalemail_A_Upperbody_B = "26741c23-cad8-423c-8f41-3782200b1d4c",
    Elves_Male_Armor_Scalemail_A_Upperbody_C = "f1225fb1-7442-400d-a3ea-edbfe63eb6d3",
    Elves_Male_Armor_Scalemail_A_Upperbody_D = "a8915e00-1e6b-4118-9f1e-b5c3f2ea8062",
    Elves_Male_Armor_Scalemail_A_Upperbody_E = "d501988f-c466-4c83-9783-476f92a865de",
    Elves_Male_Armor_Scalemail_A_Upperbody_F = "5065f3ec-112c-406c-b78b-b78bdf8a8c0a",
    Elves_Male_Armor_StarterChainmail_A_Upperbody_A = "f9788a02-dde8-4cbc-80b3-9e18e9f350d7",
    Elves_Male_Armor_StarterChainmail_A_Upperbody_B = "d99a0aad-8ceb-460f-9e75-2dd15fed2d26",
    Elves_Male_Armor_Leather_A_Upperbody_A_Cape = "142f77a2-134c-422c-b398-58cac441cf32",
    Elves_Male_Armor_Leather_A_Upperbody_A = "cc3d7181-1637-4ce4-87d3-ba006b8ddcc9",
    Elves_Male_Armor_Leather_A_Upperbody_B_Cape = "54c79b58-dabb-4a18-94ce-75645c2e7126",
    Elves_Male_Armor_Leather_A_Upperbody_B = "4a0d4b95-7bbe-4bea-8edf-e44bac31a196",
    Elves_Male_Armor_Leather_A_Upperbody_C = "b8594121-481e-4079-ab31-aa4ed823fe3e",
    Elves_Male_Armor_Leather_A_Upperbody_D = "0b8de938-c5f5-4776-9b79-093ed2d56348",
    Elves_Male_Armor_Leather_A_Upperbody_E = "5d541555-53ae-45e1-b729-462705cf9e6c",
    Elves_Male_Armor_Leather_A_Upperbody_F = "b23ea9c2-7633-434f-97fd-6c8de4a8bf02",
    Elves_Male_Armor_StarterLeather_A_Upperbody_A = "95fca9a0-cefa-4463-8b27-55e95a4f8873",
    Elves_Male_Armor_StarterLeather_A_Upperbody_B = "d2c3d2fb-6734-45b6-8f4a-9e1c9915386f",
    Elves_Male_Armor_Mage_A_Upperbody_A = "76a78c2c-0ba7-4ef2-9534-16aae8c34a84",
    Elves_Male_Armor_Mage_B_Upperbody_A = "90d526b3-3be3-402b-85d2-7ebb8ed83f0c",
    Elves_Male_Armor_Mage_C_Upperbody_A = "8a457af2-c602-4a1c-ace4-0ab35c7c8fa5",
    Elves_Male_Robe_Mage_A_Upperbody_A = "13028ff7-78b6-4421-bc94-a393d9e05ff9",
    Elves_Male_Robe_Mage_B_Upperbody_A = "9eed0c66-bc5e-4ece-8b00-893186069879",
    Elves_Male_Clothing_Civilian_Common_A_Upperbody_A = "a049fbc0-0d99-4c10-8185-6e4d17a64b04",
    Elves_Male_Clothing_Civilian_Normal_A_Upperbody_A = "89085ff7-2bda-43bd-bfa1-f2e60833bb5a",
    Elves_Male_Clothing_Civilian_Normal_B_Upperbody_A = "29fbbbec-c7cf-41c4-bb2f-80a9da744849",
    Elves_Male_Clothing_Civilian_Rich_A_UpperBody_A = "a65a3796-25b0-4098-b5c5-46cd91933eb5",
    Elves_Male_Robe_Purge_A_Upperbody_A = "d91cc53b-4279-4842-8176-bd78d53876da",
    Elves_Male_Robe_Purge_A_Upperbody_B = "bffe8bbd-b422-46b7-a4d1-017d0b25feed",
    Elves_Male_ExMagister_A_Upperbody_A = "aa7233c0-a263-41ac-a60d-47005182cb2f",

    Elves_Male_Skeleton_Armor_Platemail_A_Upperbody_A = "503b6f7a-a880-4e86-ba08-492fb76fa785",
    Elves_Male_Skeleton_Armor_Platemail_A_Upperbody_B = "dd91bf17-3891-4165-8475-2d5076aea932",
    Elves_Male_Skeleton_Armor_Platemail_A_Upperbody_C = "64d74375-93ff-44e1-9d9e-d97d6043aa4a",
    Elves_Male_Skeleton_Armor_Platemail_A_Upperbody_D = "cd46b988-1c74-4ed6-8e4a-4cc6c15ba8b6",
    Elves_Male_Skeleton_Armor_Platemail_A_Upperbody_E = "53afa200-60c5-4b5e-a12a-c115c6c1a6f2",
    Elves_Male_Skeleton_Armor_Platemail_A_Upperbody_F = "8eb9dacc-6d84-4900-9617-b194d8050cb4",
    Elves_Male_Skeleton_Armor_Chainmail_A_Upperbody_A = "50ff3521-ccb0-436a-93b6-5bb0f353330f",
    Elves_Male_Skeleton_Armor_Chainmail_A_Upperbody_B = "6d04801e-a9b0-4a64-a51e-21238c929b66",
    Elves_Male_Skeleton_Armor_Chainmail_A_Upperbody_C = "5e897a93-0e17-4fbf-845c-a0fc67d6bf32",
    Elves_Male_Skeleton_Armor_Chainmail_A_Upperbody_D = "401117c6-f1ec-4e80-baef-debd2c222139",
    Elves_Male_Skeleton_Armor_Chainmail_A_Upperbody_E = "ad607b18-b6bf-4d70-a306-5eae1bfaf90a",
    Elves_Male_Skeleton_Armor_Chainmail_A_Upperbody_F = "aaa6be13-1e9a-42b4-8b98-bf00fef8ceaa",
    Elves_Male_Skeleton_Armor_Scalemail_A_Upperbody_A = "29366b98-ee40-40bb-a3a3-3794d3490c52",
    Elves_Male_Skeleton_Armor_Scalemail_A_Upperbody_B = "4b152e9f-6c51-40e8-a4d7-c2c17010f3d4",
    Elves_Male_Skeleton_Armor_Scalemail_A_Upperbody_C = "d249f508-f431-47ef-9acf-c588851cb5f1",
    Elves_Male_Skeleton_Armor_Scalemail_A_Upperbody_D = "2721600a-fc6f-45ab-801e-15acdd4e6cb8",
    Elves_Male_Skeleton_Armor_Scalemail_A_Upperbody_E = "0b89159a-d215-40ca-883b-2179a661fc6c",
    Elves_Male_Skeleton_Armor_Scalemail_A_Upperbody_F = "1cee8531-0963-43ff-b8e0-cdcddacc1071",
    Elves_Male_Skeleton_Armor_StarterChainmail_A_Upperbody_A = "07acd9e7-4878-44f5-87c8-b25e04e841b8",
    Elves_Male_Skeleton_Armor_StarterChainmail_A_Upperbody_B = "5b9f0db7-1f2a-4cab-a7ca-ffe29bc976a6",
    Elves_Male_Skeleton_Armor_Leather_A_Upperbody_A_Cape = "d52735f0-186a-4bf3-9ff9-c97560af8d1f",
    Elves_Male_Skeleton_Armor_Leather_A_Upperbody_A = "eb949c4b-7dcb-4427-a95c-e04288f1edd4",
    Elves_Male_Skeleton_Armor_Leather_A_Upperbody_B_Cape = "8277f1e6-5ac3-4630-95da-4be72a5d6fa9",
    Elves_Male_Skeleton_Armor_Leather_A_Upperbody_B = "85bbb98f-be7b-422a-b7d3-51f7c1fcb76b",
    Elves_Male_Skeleton_Armor_Leather_A_Upperbody_C = "d76abb29-8590-4ae3-a510-33623921c77b",
    Elves_Male_Skeleton_Armor_Leather_A_Upperbody_D = "960d7163-e377-4de9-82a9-fbd34b2520fd",
    Elves_Male_Skeleton_Armor_Leather_A_Upperbody_E = "3c69a497-eccb-4c16-ab2d-e0fff72c45a5",
    Elves_Male_Skeleton_Armor_Leather_A_Upperbody_F = "afa49f14-f2e3-48b7-9701-360409fe65be",
    Elves_Male_Skeleton_Armor_StarterLeather_A_Upperbody_A = "4af83be6-5e8e-4e37-b5c7-b2402950ebc1",
    Elves_Male_Skeleton_Armor_StarterLeather_A_Upperbody_B = "89404aba-cedc-497a-83eb-47299959304e",
    Elves_Male_Skeleton_Armor_Mage_A_Upperbody_A = "ece48c96-fd2b-49cc-b93c-196d1d294d26",
    Elves_Male_Skeleton_Armor_Mage_B_Upperbody_A = "71e36d96-8a24-4ff0-a37a-eb4cb9dc0046",
    Elves_Male_Skeleton_Armor_Mage_C_Upperbody_A = "1544695c-53e1-4661-88b5-cef070b5a158",
    Elves_Male_Skeleton_Robe_Mage_A_Upperbody_A = "7bce04fa-e444-40c0-bd7c-7c91d0694fe2",
    Elves_Male_Skeleton_Robe_Mage_B_Upperbody_A = "211bad6e-5c53-4130-9f4f-220a856eb5e8",
    Elves_Male_Skeleton_Clothing_A_Upperbody_A = "6849efd1-1cbd-4da3-a98d-139fc1fef343",
    Elves_Male_Skeleton_Clothing_Civilian_Common_A_Upperbody_A = "26a930bb-5bd1-4b70-b2b6-ab6696eb2fb0",
    Elves_Male_Skeleton_Clothing_Civilian_Normal_A_Upperbody_A = "9bc7de76-1d32-4ad4-92f4-0ff1cfc9e02d",
    Elves_Male_Skeleton_Clothing_Civilian_Normal_B_Upperbody_A = "a1cf7017-06d3-47f9-b1bd-93dd1b857566",
    Elves_Male_Skeleton_Robe_Purge_A_Upperbody_B = "e53d3a51-4de9-4a40-b5f6-80e5b6b0f4c6",
    Elves_Male_Skeleton_Robe_Purge_A_Upperbody_C = "384af90f-7d82-4972-83f0-8a760cb398ed",
}

CharacterVisualResources.Elves.Male.Arms = {
    Elves_Male_Body_Naked_A_Arms_A = "c695880a-41f4-4518-b7bc-f242d5f8bb17",
    Elves_Male_Body_Spirit_Arms_A = "2660e953-0dfb-4300-a925-cd33c70c3ac2",
    Elves_Male_Armor_Platemail_A_Arms_A = "8abf09aa-944f-4763-8d09-2ad018ebfbe4",
    Elves_Male_Armor_Chainmail_A_Arms_A = "e5472507-58d4-4c40-b8e3-b92a053b9680",
    Elves_Male_Armor_Scalemail_A_Arms_A = "1ae289c8-ed20-4513-9a57-e4a01347951f",
    Elves_Male_Armor_StarterChainmail_A_Arms_A = "73702781-3044-434d-9f4d-03f89b35ed72",
    Elves_Male_Armor_Leather_A_Arms_A = "2475c352-e5fe-4807-ad6e-16782e892f4d",
    Elves_Male_Armor_StarterLeather_A_Arms_A = "3b5f032a-2b8c-49ae-b533-0b7f6f5613e9",
    Elves_Male_Armor_Mage_A_Arms_A = "be9a09eb-2318-459e-a571-df271cd8a672",
    Elves_Male_Armor_Mage_B_Arms_A = "9d5ff7a0-143d-4620-b516-b4f37e385d8d",
    Elves_Male_Armor_Mage_C_Arms_A = "4e19d74e-7a86-40f4-8e38-5f2e82e4fc21",
    Elves_Male_Clothing_Civilian_Common_A_Arms_A = "521cfeff-4c37-451f-8bce-60b4f6acb845",
    Elves_Male_Clothing_Civilian_Normal_A_Arms_A = "9f9b53ad-3ff1-4929-9c89-5d05e25eb284",
    Elves_Male_Clothing_Civilian_Normal_B_Arms_A = "4aabaafc-11d9-4094-851d-39a62fe51524",

    Elves_Male_Skeleton_Armor_Platemail_A_Arms_A = "47fcd7f0-57ca-4c1f-943e-5d9373e1fcca",
    Elves_Male_Skeleton_Armor_Chainmail_A_Arms_A = "47f123ba-efa4-4bc9-b63a-a25708d2878a",
    Elves_Male_Skeleton_Armor_Scalemail_A_Arms_A = "38b08fd4-c4d6-4b51-8b28-c14b3a70b5c7",
    Elves_Male_Skeleton_Armor_StarterChainmail_A_Arms_A = "0c2b0d7f-071e-4b1a-921d-9c2ef96f906d",
    Elves_Male_Skeleton_Armor_Leather_A_Arms_A = "698960c0-e72b-4bbc-a974-08cf66b885d7",
    Elves_Male_Skeleton_Armor_StarterLeather_A_Arms_A = "35712c45-a9be-4ebe-945f-41f6e85f73b1",
    Elves_Male_Skeleton_Armor_Mage_A_Arms_A = "4f300c14-c49b-4ca1-aa89-fff3e0ec3a13",
    Elves_Male_Skeleton_Armor_Mage_B_Arms_A = "a700764f-ad08-4cb5-bfaf-ae83daaa1169",
    Elves_Male_Skeleton_Armor_Mage_C_Arms_A = "96261a10-a939-4624-9f14-888fb81baa79",
    Elves_Male_Skeleton_Clothing_Civilian_Common_A_Arms_A = "00d787a5-796a-4a82-b7bc-c6993ec68662",
    Elves_Male_Skeleton_Clothing_Civilian_Normal_A_Arms_A = "8424203f-e0a6-491e-a287-8d5a2547e13e",
    Elves_Male_Skeleton_Robe_Purge_A_Arms_C = "1ee6fdd6-7c4e-4306-9dda-fc6b623bca6f",
}

CharacterVisualResources.Elves.Male.Legs = {
    Elves_Male_Body_Naked_A_LowerBody_A = "dfb98503-372f-47ea-ad0f-48a4127975b3",
    Elves_Male_Body_Spirit_LowerBody_A = "6c7f6654-f2c8-4e85-ae82-bbbb730fa7c2",
    Elves_Male_Armor_Platemail_A_Lowerbody_A = "9a07c903-2a4c-4bbc-acd3-8f18e31b8155",
    Elves_Male_Armor_Chainmail_A_Lowerbody_A = "eaaa50c5-6f72-4b3e-b8d6-085a7babf4cf",
    Elves_Male_Armor_Scalemail_A_Lowerbody_A = "f4992eb0-6236-4077-9917-6508a6836818",
    Elves_Male_Armor_StarterChainmail_A_Lowerbody_A = "318eae7c-0d0f-4a81-b302-727fb4b47589",
    Elves_Male_Armor_Leather_A_Lowerbody_A = "ff56480d-52c8-45d4-8e9f-26af6cd5b013",
    Elves_Male_Armor_StarterLeather_A_Lowerbody_A = "521072f3-212c-48fc-8158-9b6cf7d56207",
    Elves_Male_Armor_Mage_A_Lowerbody_A = "6736a096-3686-4842-a821-86038efcc272",
    Elves_Male_Armor_Mage_B_Lowerbody_A = "739c8c7a-d019-440f-a035-0c02e0764f61",
    Elves_Male_Armor_Mage_C_Lowerbody_A = "7cdf4008-05e1-498f-bc67-cf14b18a8a32",
    Elves_Male_Robe_Mage_A_Lowerbody_A = "59d6d470-537f-425c-9d2c-df8c6cdc87a0",
    Elves_Male_Robe_Mage_B_Lowerbody_A = "aeb0bbd2-cda7-4148-b4cf-3233b031ee30",
    Elves_Male_Clothing_Civilian_Common_A_Lowerbody_A = "ead0b109-0316-4ada-80a0-f8948fffed5c",
    Elves_Male_Clothing_Civilian_Normal_A_Lowerbody_A = "d12e1090-2cbe-4d96-a50d-eb08308cd166",
    Elves_Male_Clothing_Civilian_Normal_B_Lowerbody_A = "d73443cc-c0a4-4641-a9b8-be0a6aa5f5bd",
    Elves_Male_Clothing_Civilian_Rich_A_LowerBody_A = "18f3291c-cc51-4728-9cb3-b144bb4d634f",
    Elves_Male_Robe_Purge_A_Lowerbody_A = "2b96653e-2909-4155-981c-97d9ffec59a3",
    Elves_Male_Robe_Purge_A_Lowerbody_B = "72360b9e-06bb-4880-bb24-3c0519e69694",
    Elves_Male_ExMagister_A_Lowerbody_A = "9f0d9c68-60d3-4d52-b85b-f274b57f7809",
    Elves_Male_Robe_Spirit_Lowerbody_A = "ce272e02-ef16-4108-9b42-5fb6b2a9def5",
    Elves_Male_Robe_Spirit_Lowerbody_B = "5a80a511-62b7-4c94-97b0-ea9e25391fb6",

    Elves_Male_Skeleton_Armor_Platemail_A_Lowerbody_A = "e3d6a765-870a-47ed-bae0-da5882cd19a3",
    Elves_Male_Skeleton_Armor_Chainmail_A_Lowerbody_A = "f680a0c7-ced8-408c-a70f-3fde208353e5",
    Elves_Male_Skeleton_Armor_Scalemail_A_Lowerbody_A = "1ce87e11-278b-4a3d-8436-7953285ad198",
    Elves_Male_Skeleton_Armor_Leather_A_Lowerbody_A = "30ae1531-dca3-445e-8959-a7e8e3b7bcb6",
    Elves_Male_Skeleton_Armor_Mage_A_Lowerbody_A = "01eee22d-b47b-4d9c-9840-122e58ba7ec6",
    Elves_Male_Skeleton_Armor_Mage_B_Lowerbody_A = "18d64132-22af-4b7b-abee-901f51f05509",
    Elves_Male_Skeleton_Armor_Mage_C_Lowerbody_A = "b3e7611c-d327-42ed-a08c-d23cc5252221",
    Elves_Male_Skeleton_Robe_Mage_A_Lowerbody_A = "bb13e36d-484b-47dd-9fe8-cceab3a8ee46",
    Elves_Male_Skeleton_Robe_Mage_B_Lowerbody_A = "8a449ac5-6f96-42c7-b7d6-81dbae2335d4",
    Elves_Male_Skeleton_Clothing_A_Lowerbody_A = "04f319a7-2543-4b7a-8868-70ab35b62bb2",
    Elves_Male_Skeleton_Clothing_Civilian_Common_A_Lowerbody_A = "225fcaa5-6046-4f2a-aaa0-d728d81778b7",
    Elves_Male_Skeleton_Clothing_Civilian_Normal_A_Lowerbody_A = "2974006b-b6af-435a-9c0e-fd5e7c5d3da1",
    Elves_Male_Skeleton_Clothing_Civilian_Normal_B_Lowerbody_A = "dab31e60-1bb5-47f7-a949-52fe352d5e24",
    Elves_Male_Skeleton_Robe_Purge_A_Lowerbody_B = "879c0ce0-ec87-414b-9103-7ed247b37f3c",
    Elves_Male_Skeleton_Robe_Purge_A_Lowerbody_C = "d8b88301-e46a-4b6b-8ff3-76c2267d5f45",
}

CharacterVisualResources.Elves.Male.Boots = {
    Elves_Male_Body_Naked_A_Legs_A = "61a5417e-4071-40fd-b796-a5a636e1fa4b",
    Elves_Male_Body_Spirit_Legs_A = "ee62f4df-c04c-49c7-9a09-791e4ebc46b1",
    Elves_Male_Armor_Platemail_A_Legs_A = "b76e700c-75ed-457f-ab8e-a58b8fde3e61",
    Elves_Male_Armor_Chainmail_A_Legs_A = "4f059df6-c837-46bf-8251-0804ab83a442",
    Elves_Male_Armor_Scalemail_A_Legs_A = "5bb28d3e-aaba-41f2-b6b4-822476e4e885",
    Elves_Male_Armor_StarterChainmail_A_Legs_A = "86789118-70d6-489c-84ba-2b5f842368de",
    Elves_Male_Armor_Leather_A_Legs_A = "42f018b2-a4e5-4f2a-a465-ff3a9f52ffbe",
    Elves_Male_Armor_StarterLeather_A_Legs_A = "237e2320-6e81-4931-9750-80a99c5e0252",
    Elves_Male_Armor_Mage_A_Legs_A = "0a20c2ae-2f39-4f47-91f7-6beae3f902d8",
    Elves_Male_Armor_Mage_B_Legs_A = "caa3c64c-6995-4734-8fba-48cafae6ed0a",
    Elves_Male_Armor_Mage_C_Legs_A = "a14417b4-9fd2-4ca5-9e09-63141a12cc31",
    Elves_Male_Clothing_Civilian_Common_A_Legs_A = "d8efc61c-1c1e-471a-af4c-04a5767a944d",
    Elves_Male_Clothing_Civilian_Normal_A_Legs_A = "87472882-1d09-457f-bcdf-1be22b1846a9",
    Elves_Male_Clothing_Civilian_Normal_B_Legs_A = "a9a61085-109d-457e-8618-7a17c7dcd40d",
    Elves_Male_Clothing_Civilian_Rich_A_Legs_A = "d6adb519-f4fe-4908-9515-33fe61f747e5",

    Elves_Male_Skeleton_Armor_Platemail_A_Legs_A = "7b63637e-0153-4883-a040-286e13914f45",
    Elves_Male_Skeleton_Armor_Chainmail_A_Legs_A = "b4bf78c6-016c-4382-be71-8d76646fcc0a",
    Elves_Male_Skeleton_Armor_Scalemail_A_Legs_A = "210b41e9-15ae-4f44-acb0-4b8e4d929dfb",
    Elves_Male_Skeleton_Armor_StarterChainmail_A_Legs_A = "a1aca6f5-b2e3-449c-b89e-2947f1b61784",
    Elves_Male_Skeleton_Armor_Leather_A_Legs_A = "1f5fbf55-54ad-48ce-877d-2768ece22935",
    Elves_Male_Skeleton_Armor_StarterLeather_A_Legs_A = "9ba2f4b5-ab2d-4c71-aca5-3d3692f38a4f",
    Elves_Male_Skeleton_Armor_Mage_A_Legs_A = "b01d7178-4b11-48dc-86c1-99653569a84d",
    Elves_Male_Skeleton_Armor_Mage_B_Legs_A = "00693fa5-ccda-4529-a07b-14d98ca71c54",
    Elves_Male_Skeleton_Armor_Mage_C_Legs_A = "91ed4bd6-3cc8-4628-b628-ab62a5326430",
    Elves_Male_Skeleton_Clothing_Civilian_Common_A_Legs_A = "99eaef29-5b12-4402-b8e0-765565b745b2",
    Elves_Male_Skeleton_Clothing_Civilian_Normal_A_Legs_A = "192f1153-c85e-4024-acdd-1e3690f77115",
    Elves_Male_Skeleton_Robe_Purge_A_Legs_C = "eb72e671-b798-4794-8fb2-4ae28194c1fb",
}

CharacterVisualResources.Elves.Male.Fullbody = {
    Elves_Male_DeathFigure_A = "51ffeeb2-58d1-444f-8c5b-f84b76c24559",
    Elves_Male_Armor_Mage_A_Fullbody_A = "5ce61178-4f6b-427b-840a-cc30ce9abf79",
    Elves_Male_RedFaction_Inquisitor_A_Upperbody_A = "3ff98d3d-758c-4fa7-893d-c79ed8eb32a6",
    ProxyMesh_Elves_Hero_Male_Fullbody = "<f70e9916-de65-43cb-8952-972bfd28daad>",

    Elves_Male_Skeleton_Armor_Mage_A_Fullbody_A = "0654bb44-b2ff-429c-a76f-66bc2a2b73ed",
    Elves_Male_Skeleton_RedFaction_Inquisitor_A_Upperbody_A = "eb58a100-4d86-4af6-b204-c0f501efbc0a",
}

CharacterVisualResources.Elves.Male.Cape = {
    Elves_Male_Armor_Leather_A_Upperbody_A_Cape = "142f77a2-134c-422c-b398-58cac441cf32",
    Elves_Male_Armor_Leather_A_Upperbody_B_Cape = "54c79b58-dabb-4a18-94ce-75645c2e7126",

    Elves_Male_Skeleton_Armor_Leather_A_Upperbody_A_Cape = "d52735f0-186a-4bf3-9ff9-c97560af8d1f",
    Elves_Male_Skeleton_Armor_Leather_A_Upperbody_B_Cape = "8277f1e6-5ac3-4630-95da-4be72a5d6fa9",
}

CharacterVisualResources.Elves.Male.Misc = {
    Elves_Male_Clothing_UNIQUE_Blindfolds_A = "bf8a6336-6754-4e58-a72e-dd6c4acbc9bd",
    Elves_Male_Skeleton_ClawFinger_A = "4282cbed-4512-4a46-bf9b-40104e476380",
}