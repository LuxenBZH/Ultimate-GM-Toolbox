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
    Elves = RaceVisuals:Create(),
}

CharacterVisualResources.Elves.Female.Hair = {
    Elves_Female_Body_Naked_A_Hair_A = "31235098-f43e-4bba-be8d-750312f660a9",
    Elves_Female_Hair_B = "6046901c-8132-4334-b6df-1a31f3f487ec",
    Elves_Female_Hair_C = "37845c9b-6d0f-4a53-898d-2d8798007255",
    Elves_Female_Hair_D = "084aa24b-9c8a-4281-9d7a-2f699f86bcb8",
    Elves_Female_Hair_E = "cde3bbb5-ea5e-4920-9573-dad2c724a7b7",
    Elves_Female_Hair_F = "9b2df182-84f3-4837-8bb8-f1b7fada0261",
    Elves_Female_Hair_G = "133da702-0805-43e7-bec4-a3eaa023ac7a",
    Elves_Female_Hair_H = "258ed66d-fc54-4fe1-8fba-4ee121a4a8ef",
    Elves_female_Hair_P = "905c2611-8a73-4613-b9a8-92b2bf3766cf",
    Elves_Female_Hair_O = "5ab9b2a6-26cc-43c1-8b25-304fafab8d9a",
    Elves_Female_Hair_S = "04ef1ac7-7be8-4ba6-889f-413293b8d052",
    Elves_Female_Hair_R = "241e4198-df9f-4d9f-8bb9-e36d201c0a8c",

    Elves_Female_Skeleton_Hair_S = "654e5e50-7558-4e5c-b556-84e2343fc0ca",
    Elves_Female_Skeleton_Hair_P = "82a08915-a35d-44b4-aee8-00ba9f256ac1",
}

CharacterVisualResources.Elves.Female.Helmet = {
    Elves_Female_Armor_Platemail_A_Helmet_A = "c04bf055-d2e6-41d1-b302-7e182cf9c1fa",
    Elves_Female_Armor_Platemail_B_Helmet_A = "3a4ff287-6535-45dd-94eb-ba2960b53180",
    Elves_Female_Armor_Chainmail_A_Helmet_A = "eeb63a09-3073-4eb4-b0b0-b55ac389db22",
    Elves_Female_Armor_Chainmail_A_Helmet_B = "99203e2a-2d17-48e5-b4f5-61f9ad27cfa0",
    Elves_Female_Armor_Scalemail_A_Helmet_A = "770a329c-d56a-4d22-8d02-11671917a7a4",
    Elves_Female_Armor_Scalemail_A_Helmet_B = "64640319-7efa-43cd-83f4-bf20c23f03a8",
    Elves_Female_Armor_Leather_A_Helmet_A = "7ff863f1-1956-4c6d-84c9-a496de47fdfc",
    Elves_Female_Armor_Leather_B_Helmet_A = "03ec300f-7e45-401e-904b-74a304058051",
    Elves_Female_Armor_StarterChainmail_A_Helmet_A = "28c6bad4-af8c-4d39-a1f8-253a309dd287",
    Elves_Female_Armor_StarterLeather_A_Helmet_A = "70103156-e67d-4eb4-bcfd-3c73b2f5239e",
    Elves_Female_Armor_Mage_A_Helmet_A = "49b5e67d-fbb9-40e1-b4cc-f8daaa1f7d6f",
    Elves_Female_Armor_Mage_B_Helmet_A = "270a6b1a-9f41-44c4-8dea-73a0edca5403",
    Elves_Female_Armor_Mage_C_Helmet = "6f06eb77-88a4-4ba7-b408-3e3fdae71e28",
    Elves_Female_Clothing_A_Noble_Hat_Helmet_A = "083249d3-87e1-47ef-8225-7055012eb648",
    Elves_Female_Clothing_Civilian_Normal_A_Helmet_A = "c456e280-6624-4430-bae2-4042ae081153",
    Elves_Female_Clothing_Civilian_Normal_B_Helmet_A = "e36bae9d-3c55-4f0d-a70e-7b88ade7dcf7",
    Elves_Female_Robe_Purge_A_Helmet_A = "64421393-b968-4d24-a9d7-1d1b281703cc",
    Elves_Female_Robe_Purge_A_Helmet_B = "5c720658-42f4-4731-b329-2046d38f29f2",
    Elves_Female_Robe_Purge_A_Helmet_C = "1c452b7e-5096-488d-ac18-22ff49ebe150",
    Elves_Female_Robe_Purge_A_Helmet_D = "6561cf4f-64f1-4eb8-b3b3-6b91947deb16",
    Elves_Female_Skeleton_Robe_Purge_A_Helmet_C = "6b127aa9-29c5-467a-bbe4-e5c4de9aa0df",
    Elves_Female_Armor_Malady_Helmet = "33fc19ef-d1cd-4fc4-86cd-bf69e91e1c49",
    Elves_Female_Beast_Helmet_A = "6da2f755-26c8-490f-a30d-75144831790c",
    Elves_Female_Shapeshifter_Mask_A = "26e70b19-2bd2-49bf-91bf-1828f8a044bf",
    Elves_Female_Shapeshifter_Mask_B = "c65e6d40-529b-4ac0-8da7-ca05537d79c2",
    Elves_Female_Armor_FUR_Bucket_A = "4230cc84-9e51-4d8d-bdd2-5c8c8fd06e5f",
    Elves_Female_Armor_FUR_Kitchen_Pot_F = "802787f7-f2d3-4d17-911b-6c7af60712f1",
}

CharacterVisualResources.Elves.Female.Head = {
    Elves_Female_Body_Naked_A_Head_A = "99b0ab0c-f46c-4af4-863e-c54614a57194",
    Elves_Female_Body_Naked_A_Head_B = "3ffd1793-f8bc-453a-a4eb-85b58a2a8488",
    Elves_Female_Body_Naked_A_Head_C = "2a9c1f09-9fe0-4f01-9e8f-1a16ae04e2de",
    Elves_Female_Body_Naked_A_Head_D = "0f79dc31-db9f-4dd1-bf7b-23cfc36406c7",
    Elves_Female_Body_Naked_A_Head_E = "50987f4f-f514-4181-8c60-d21ef71a427c",
    Elves_Female_Body_Naked_A_Head_F = "6c244043-41aa-438d-8d4e-019082d3b894",
    Elves_Female_Body_Naked_A_Head_G = "386c69e9-a40e-49c7-98b8-3570eba2cfcc",
    Elves_Female_Body_Naked_A_Head_M = "280232b8-d406-4071-b3a6-b7c84af2d9ee",
    Elves_Female_Body_Naked_A_Head_O = "5cf4db73-5659-4652-a5ee-6bb99e142a3e",
    Elves_Female_Body_Naked_A_Head_N = "be27e9c3-cc05-4800-818c-6c04137f44ce",
    Elves_Female_Body_Naked_A_Head_P = "e28813d3-497e-4d84-95ae-389d48787087",
    Elves_Female_Body_Naked_Head_Sebille = "0bb03f4c-18ff-45fd-8015-200883b0d8bc",
    Elves_Female_Body_Naked_A_Head_Malady = "b0d83356-80c3-4610-9a19-af635e1cf20d",
    Elves_Female_Body_Naked_A_Head_Malady_Horrorsleep = "02d3e030-e6da-417b-83a4-3acfdcdc0c35",
    Elves_Female_Body_Naked_A_Head_Silentmonk_A = "d78e3e12-dd1c-4aa2-b833-4cf5ff2fe580",

    Elves_Female_Skeleton_A_Head_A = "236d108e-8c52-471e-918c-045eff154938",
    Elves_Female_Skeleton_A_Head_B = "53255f48-3ee0-49d1-b18b-2821b54b9bb4",
    Elves_Female_Skeleton_A_Head_C = "c6d1caab-ac49-426c-bb44-c51e9cb7a72f",
    Elves_Female_Skeleton_A_Head_D = "636a68a0-0259-4a58-ab25-7b3cfaeed51d",
    Elves_Female_Skeleton_A_Head_F = "c7c38fb6-6211-46ce-a605-81d30a23ceba",
    Elves_Female_Skeleton_A_Head_G = "c09ce741-1200-4b7a-9b77-fe30dc83f3d1",
}

CharacterVisualResources.Elves.Female.Torso = {
    Elves_Female_Body_Naked_A_UpperBody_A = "ff483798-e1c0-4c31-9cbe-90adcf5c5d28",
    Elves_Female_Armor_Platemail_A_Upperbody_A = "b56393fd-b6ce-4b6f-afa6-bcc42ac56b00",
    Elves_Female_Armor_Platemail_A_Upperbody_B = "74c7becd-4255-4997-9311-d3015f30c108",
    Elves_Female_Armor_Platemail_A_Upperbody_C = "1cc48b65-e3fa-46c5-b392-4e33b5507a42",
    Elves_Female_Armor_Platemail_A_Upperbody_D = "5d74f926-fa4d-489c-b862-05b92d713fac",
    Elves_Female_Armor_Platemail_A_Upperbody_E = "9953c2fa-1519-4601-984c-dd7b97ce1d31",
    Elves_Female_Armor_Platemail_A_Upperbody_F = "804f0e36-d542-41c0-8cd5-5f73192c3706",
    Elves_Female_Armor_Chainmail_A_Upperbody_A = "fb3a2b8e-6e7f-4a4e-9533-bd20780cc0f8",
    Elves_Female_Armor_Chainmail_A_Upperbody_B = "95e9b902-9693-463b-a761-a0a1a003d7a6",
    Elves_Female_Armor_Chainmail_A_Upperbody_C = "97bf421c-24dc-4ebe-a33c-ffbb93299d17",
    Elves_Female_Armor_Chainmail_A_Upperbody_D = "8bbf0a90-6d7a-42e4-a496-33ff5429b608",
    Elves_Female_Armor_Chainmail_A_Upperbody_E = "e7969bfe-0069-478e-a3e9-5e3c60c31f3a",
    Elves_Female_Armor_Chainmail_A_Upperbody_F = "9fcdc5b1-3075-4eb9-8508-bd196088de3b",
    Elves_Female_Armor_Scalemail_A_Upperbody_A = "6131e1cf-05a2-4ce2-ac80-01c586d383b2",
    Elves_Female_Armor_Scalemail_A_Upperbody_B = "cd5c2faa-761b-4c34-b0ff-ba84e2783268",
    Elves_Female_Armor_Scalemail_A_Upperbody_C = "7f875a03-0fef-42dd-9eb6-b688e7363679",
    Elves_Female_Armor_Scalemail_A_Upperbody_D = "8272b9da-4b82-43c9-9bf9-96f76f780ec6",
    Elves_Female_Armor_Scalemail_A_Upperbody_E = "3cdf67a3-0f4f-4572-b25c-0676ce7c6358",
    Elves_Female_Armor_Scalemail_A_Upperbody_F = "30a57f6b-b0b0-4bcd-80dc-5f1c35fa5ec1",
    Elves_Female_Armor_Leather_A_Upperbody_A_Cape = "8f26287a-be77-4e8e-8aac-7a66ebe1cf74",
    Elves_Female_Armor_Leather_A_Upperbody_A = "a411d73e-0176-4e43-ab7a-c0afb26b0f29",
    Elves_Female_Armor_Leather_A_Upperbody_B = "31fe6d3a-0c0a-46af-abc9-f81dbd81a5fd",
    Elves_Female_Armor_Leather_A_Upperbody_C = "be699c40-b7af-4371-b711-3dd6c04f34c1",
    Elves_Female_Armor_Leather_A_Upperbody_D = "dc1a3532-aa87-462e-825c-953421f096db",
    Elves_Female_Armor_Leather_A_Upperbody_E = "8ff6ae62-9a0f-409f-b878-3ed3088e4935",
    Elves_Female_Armor_Leather_A_Upperbody_F = "b40cf06a-cf20-4cbf-a280-0c637ae6de76",
    Elves_Female_Armor_StarterChainmail_A_Upperbody_A = "f29ddffa-fee9-421d-be25-e20ebfa79466",
    Elves_Female_Armor_StarterChainmail_A_Upperbody_B = "4ae68a71-721a-4dd2-a532-803bec09ee3f",
    Elves_Female_Armor_StarterLeather_A_Upperbody_A = "1ec87ad7-9bc8-4a08-bb86-1bf2e0de60f7",
    Elves_Female_Armor_StarterLeather_A_Upperbody_B = "f20fd324-ca70-45e4-9032-e25e8ec220b2",
    Elves_Female_Armor_Mage_A_Upperbody_A = "7f15527b-863a-4eb6-a5b3-abbc59ea3495",
    Elves_Female_Armor_Mage_B_Upperbody_A = "e150b27d-4da8-40c4-85ff-5c3c334f872b",
    Elves_Female_Armor_Mage_C_Upperbody_A = "8af1020d-bb53-45eb-a7c4-3219ae0fab66",
    Elves_Female_Robe_Mage_A_Upperbody_A = "dd5a1eb8-3703-4920-87a0-0769857b7715",
    Elves_Female_Robe_Mage_B_Upperbody_A = "1cc64eeb-fbe4-486c-9657-f14c305f90f1",
    Elves_Female_Clothing_Civilian_Common_A_Upperbody_A = "f5d63830-e861-4af7-ac71-fc97aa364b81",
    Elves_Female_Clothing_Civilian_Common_A_Upperbody_Sebille = "e77b1fe9-81a8-4224-98ac-6d817930e65f",
    Elves_Female_Clothing_Civilian_Normal_A_Upperbody_A = "78ba9fa3-6ee7-433e-bf7a-79bca0e99209",
    Elves_Female_Clothing_Civilian_Normal_B_Upperbody_A = "a6aacd39-077d-4d23-bed0-4a4ea76ceeb1",
    Elves_Female_Robe_Purge_A_Upperbody_A = "481eccce-35db-4638-a2a8-053b722dcd08",
    Elves_Female_Robe_Purge_A_Upperbody_B = "530d03b6-3e94-4ea6-a031-f3fe329ef2fc",
    Elves_Female_Armor_Malady_Upperbody = "47f42f55-5b5b-4afa-893a-599c58577385",

    Elves_Female_Skeleton_Armor_Platemail_A_Upperbody_A = "0d108aaf-05c8-46a7-8e7c-8f17e2be7c70",
    Elves_Female_Skeleton_Armor_Platemail_A_Upperbody_B = "4e58942d-0e2e-46d8-ac0b-acc797dc329e",
    Elves_Female_Skeleton_Armor_Platemail_A_Upperbody_C = "e95299e4-1dec-4939-8555-d7b7143030e2",
    Elves_Female_Skeleton_Armor_Platemail_A_Upperbody_D = "a4cef458-08cf-478e-a109-5c629c16e1b3",
    Elves_Female_Skeleton_Armor_Platemail_A_Upperbody_E = "57a5c8c2-e0cc-4dc5-a8a3-b3f6126f9e16",
    Elves_Female_Skeleton_Armor_Platemail_A_Upperbody_F = "39c775bc-648e-490d-b875-1f3536bec340",
    Elves_Female_Skeleton_Armor_Chainmail_A_Upperbody_A = "e9d687b4-0817-4ec6-984e-16cb640b781d",
    Elves_Female_Skeleton_Armor_Chainmail_A_Upperbody_B = "e37d9865-1117-4a5d-a100-8cec0c78931c",
    Elves_Female_Skeleton_Armor_Chainmail_A_Upperbody_C = "03c0f1d3-31c7-4293-b0bf-3824c0ba4519",
    Elves_Female_Skeleton_Armor_Chainmail_A_Upperbody_D = "748386e4-6337-465c-98e1-a017b87be987",
    Elves_Female_Skeleton_Armor_Chainmail_A_Upperbody_E = "5de2e31c-e4f0-427e-8522-5f4198c95020",
    Elves_Female_Skeleton_Armor_Chainmail_A_Upperbody_F = "bd21ecac-de8e-471d-ae3b-ca01e6b9ec53",
    Elves_Female_Skeleton_Armor_Scalemail_A_Upperbody_A = "9f0802a2-8908-4860-b60f-50fd917a072a",
    Elves_Female_Skeleton_Armor_Scalemail_A_Upperbody_B =  "968e9e6e-9701-45b5-8373-793d7a5ff401",
    Elves_Female_Skeleton_Armor_Scalemail_A_Upperbody_C = "33909ab5-0b3a-4405-95db-9b1366b9ce90",
    Elves_Female_Skeleton_Armor_Scalemail_A_Upperbody_D = "c8b75b69-5018-442c-b47a-c13600bc7836",
    Elves_Female_Skeleton_Armor_Scalemail_A_Upperbody_E = "c80c3552-2fcf-4315-a95d-e4d09f6bedc3",
    Elves_Female_Skeleton_Armor_Scalemail_A_Upperbody_F = "b769e0e5-74fe-450b-b601-53ef50e1f6a7",
    Elves_Female_Skeleton_Armor_Leather_A_Upperbody_A_Cape = "d97d49be-7815-4535-9117-2c604413b5e8",
    Elves_Female_Skeleton_Armor_Leather_A_Upperbody_A = "082de9e5-733e-4060-85d5-9ea3401b70c3",
    Elves_Female_Skeleton_Armor_Leather_A_Upperbody_B_Cape = "c47f27f2-6127-4645-b260-fd2c8afcc161",
    Elves_Female_Skeleton_Armor_Leather_A_Upperbody_B = "1a28bfaf-2c6f-4642-8432-0036bbf50667",
    Elves_Female_Skeleton_Armor_Leather_A_Upperbody_C = "e69a0111-298c-4b1b-b66f-288a87b066a7",
    Elves_Female_Skeleton_Armor_Leather_A_Upperbody_D = "49cbc034-2612-477a-a8b7-28dcc8af8654",
    Elves_Female_Skeleton_Armor_Leather_A_Upperbody_E = "542545af-e84b-4582-87a7-47199b76e231",
    Elves_Female_Skeleton_Armor_Leather_A_Upperbody_F = "66b82f86-5424-4ba0-a5d4-1a5514761882",
    Elves_Female_Skeleton_Armor_StarterChainmail_A_Upperbody_A = "c393c06b-de13-4ac3-8734-f7d75eda1a46",
    Elves_Female_Skeleton_Armor_StarterChainmail_A_Upperbody_B = "96e4107a-75d0-4d84-a8a7-36581b597be8",
    Elves_Female_Skeleton_Armor_StarterLeather_A_Upperbody_A = "f140f0a5-9af3-4b7f-873d-fb20fec60ea2",
    Elves_Female_Skeleton_Armor_StarterLeather_A_Upperbody_B = "4b6b2e00-496a-41e7-8b1c-517900684acf",
    Elves_Female_Skeleton_Armor_Mage_A_Upperbody_A = "18f802f3-760d-4bb2-8485-bf9fe36a9cc3",
    Elves_Female_Skeleton_Armor_Mage_B_Upperbody_A = "adc681bb-0246-4b9a-9a7d-edcd14fa0695",
    Elves_Female_Skeleton_Armor_Mage_C_Upperbody_A = "ee2d972d-6fe3-4ce9-b862-8ee77c779cb2",
    Elves_Female_Skeleton_Robe_Mage_A_Upperbody_A = "74c2b28f-aff6-480c-b099-9ef83b08108c",
    Elves_Female_Skeleton_Robe_Mage_B_Upperbody_A = "b94a71fc-369e-4acd-a4d7-b087f4ae6cc1",
    Elves_Female_Skeleton_Clothing_A_Upperbody_A = "5958d6b2-f8b1-4156-aece-6eb6a1a3aece",
    Elves_Female_Skeleton_Clothing_Civilian_Common_A_Upperbody_A = "91a227b6-3452-48a9-95dd-b3896a4910ba",
    Elves_Female_Skeleton_Clothing_Civilian_Normal_A_Upperbody_A = "98e399fc-8988-4610-95c7-7b24409dd248",
    Elves_Female_Skeleton_Clothing_Civilian_Normal_B_Upperbody_A = "42581087-dd33-43d0-9ea9-b8f0dd4b833d",
    Elves_Female_Skeleton_Robe_Purge_A_Upperbody_B = "0ffe62f6-e17e-4361-9f32-06812be8c012",
    Elves_Female_Skeleton_Robe_Purge_A_Upperbody_C = "312aeceb-46e2-4412-9f23-b390f16eb4ab",
}

CharacterVisualResources.Elves.Female.Arms = {
    Elves_Female_Body_Naked_A_Arms_A = "46c4dd3d-82da-4741-ae1a-d4331e68132b",
    Elves_Female_Armor_Platemail_A_Arms_A = "0efd0e9b-3975-4927-be05-dce6491ade66",
    Elves_Female_Armor_Chainmail_A_Arms_A = "3d73155e-c8b9-49cd-b46e-e8676512817f",
    Elves_Female_Armor_Scalemail_A_Arms_A = "6df7f72b-d478-41a3-80f1-571ad2a14fd2",
    Elves_Female_Armor_Leather_A_Arms_A = "a07ae4f9-4b1d-4783-935e-c925579e26a9",
    Elves_Female_Armor_StarterChainmail_A_Arms_A = "b21c1a09-c1d6-46d5-9e21-96b507646589",
    Elves_Female_Armor_StarterLeather_A_Arms_A = "6eff24df-c0d4-4ca2-89e6-27819d8a31c9",
    Elves_Female_Armor_Mage_A_Arms_A = "d19f1161-41fc-4f4b-a72d-c8d7ac3fcf27",
    Elves_Female_Armor_Mage_B_Arms_A = "7d70c10a-f621-4fb0-8388-870f8494952c",
    Elves_Female_Armor_Mage_C_Arms_A = "29bdfcfe-8d8d-4069-917a-51a36339a87d",
    Elves_Female_Clothing_Civilian_Common_A_Arms_A = "ba1a0b5e-12df-48ff-9e4f-e1011050aee3",
    Elves_Female_Clothing_Civilian_Common_A_Arms_Sebille = "7d8b8b4c-e370-43b5-98eb-b97b06da8604",
    Elves_Female_Clothing_Civilian_Normal_A_Arms_A = "485ead69-42c6-4b0e-a469-d85ea1bd1d8d",
    Elves_Female_Clothing_Civilian_Normal_B_Arms_A = "60e2cd7c-796c-48fa-949c-488214fe52df",

    Elves_Female_Skeleton_Armor_Platemail_A_Arms_A = "9654c1b3-cbc3-4c51-9bf7-2c7f723d8cfc",
    Elves_Female_Skeleton_Armor_Chainmail_A_Arms_A = "fc1a8121-b73b-4e65-a93e-03629b24e819",
    Elves_Female_Skeleton_Armor_Scalemail_A_Arms_A = "95d4a5ab-bcaf-4ec1-9f09-a51b37a9d0e8",
    Elves_Female_Skeleton_Armor_Leather_A_Arms_A = "5ab2d93f-1b5e-48bf-a563-402bdf2fbe41",
    Elves_Female_Skeleton_Armor_StarterChainmail_A_Arms_A = "c889c24e-983f-4911-a9b0-abdb65ebd808",
    Elves_Female_Skeleton_Armor_StarterLeather_A_Arms_A = "b0ec7375-8d29-4262-8d9d-0e7d078d17a5",
    Elves_Female_Skeleton_Armor_Mage_A_Arms_A = "35677846-1dcb-41f8-81c3-915e77fe9c09",
    Elves_Female_Skeleton_Armor_Mage_B_Arms_A = "64840524-f540-45f3-a1a2-cb0e31b2878d",
    Elves_Female_Skeleton_Armor_Mage_C_Arms_A = "35c418de-b0df-479b-b779-eabced13781e",
    Elves_Female_Skeleton_Clothing_Civilian_Common_A_Arms_A = "e5913735-9bcd-4dec-9562-138da1c60b30",
    Elves_Female_Skeleton_Clothing_Civilian_Normal_A_Arms_A = "44e1d3f1-1397-487b-bf6e-d21da4693e26",
    Elves_Female_Skeleton_Robe_Purge_A_Arms_C = "00409a6b-445a-4a90-b901-75d329f787f6",
}

CharacterVisualResources.Elves.Female.Legs = {
    Elves_Female_Body_Naked_A_LowerBody_A = "fd72c7ba-6639-4a73-87f1-8da39edb3792",
    Elves_Female_Armor_Platemail_A_Lowerbody_A = "2caf4119-af02-495e-8fe9-a5c05bbc4ccc",
    Elves_Female_Armor_Chainmail_A_Lowerbody_A = "c98d0350-1e73-4ba4-bb85-fecb724f71f7",
    Elves_Female_Armor_Scalemail_A_Lowerbody_A = "dcc03eda-a9e4-4369-b497-471379314fec",
    Elves_Female_Armor_Leather_A_Lowerbody_A = "ccdf659e-c223-4f30-acef-c0c6052d294f",
    Elves_Female_Armor_StarterChainmail_A_Lowerbody_A = "0f61d9f9-de8a-43d4-bd5a-cb0f2c3c0df7",
    Elves_Female_Armor_StarterLeather_A_Lowerbody_A = "51aee84f-fcd5-4a19-8141-580fa3791abc",
    Elves_Female_Armor_Mage_A_Lowerbody_A = "6cc932d4-d491-4ced-89a1-2b99d01220dd",
    Elves_Female_Armor_Mage_B_Lowerbody_A = "ddf59967-ed96-439b-b07b-d2fec8c268c6",
    Elves_Female_Armor_Mage_C_Lowerbody_A = "429618e4-0b2d-4edb-b804-8c18b4d9d8ac",
    Elves_Female_Robe_Mage_A_Lowerbody_A = "5f98361c-3dd5-4060-827d-96d7e3f1466d",
    Elves_Female_Robe_Mage_B_Lowerbody_A = "d34f7398-5d97-4b11-b0f1-b15922a7420d",
    Elves_Female_Clothing_Civilian_Common_A_Lowerbody_A = "1fb0b992-e576-4adb-91a7-9174f3026133",
    Elves_Female_Clothing_Civilian_Common_A_Lowerbody_Sebille = "421ebf29-ecbf-4596-bb2b-1c3aa12c446c",
    Elves_Female_Clothing_Civilian_Normal_A_Lowerbody_A = "529c8929-635e-4aea-8792-c5d62dbff99c",
    Elves_Female_Clothing_Civilian_Normal_B_Lowerbody_A = "977966ce-7ea8-460c-a9f6-5cf8a69bdfa0",
    Elves_Female_Robe_Purge_A_Lowerbody_A = "61dda3d4-374c-4da5-820d-0d90b753263e",
    Elves_Female_Robe_Purge_A_Lowerbody_B = "4b4372cc-588c-4ea4-971a-6cc261cd8494",
    Elves_Female_Armor_Malady_Lowerbody = "52497a0c-d1ac-470b-a124-fd62928f234d",

    Elves_Female_Skeleton_Armor_Platemail_A_Lowerbody_A = "0e7f8dc5-3ada-4fcd-b2e3-20f9ba1e8bd0",
    Elves_Female_Skeleton_Armor_Chainmail_A_Lowerbody_A = "ac6dcf48-e5f8-420e-aef0-3fc37e24c8f6",
    Elves_Female_Skeleton_Armor_Scalemail_A_Lowerbody_A = "ec1ee497-4e33-40be-b4d1-64898fa72161",
    Elves_Female_Skeleton_Armor_Leather_A_Lowerbody_A = "379f66d8-4ac4-4e53-9881-68019ecf85e0",
    Elves_Female_Skeleton_Armor_Mage_A_Lowerbody_A = "de334afb-b5c1-427c-ab0e-64c081c75790",
    Elves_Female_Skeleton_Armor_Mage_B_Lowerbody_A = "1ec4ada1-5ada-48b9-af23-2f729c5496b7",
    Elves_Female_Skeleton_Armor_Mage_C_Lowerbody_A = "dee8e63d-459c-4f33-8e49-3a28aee553ad",
    Elves_Female_Skeleton_Robe_Mage_A_Lowerbody_A = "69a42030-fcc6-4070-9ee8-2d10c20d7947",
    Elves_Female_Skeleton_Robe_Mage_B_Lowerbody_A = "f6428fda-7191-48b2-8f87-2709cc0d9e0b",
    Elves_Female_Skeleton_Clothing_A_Lowerbody_A = "6db0d871-cf11-4c6b-87dc-c22b9ce50ebf",
    Elves_Female_Skeleton_Clothing_Civilian_Normal_A_Lowerbody_A = "d002bb44-e524-4e68-885e-7528c210efd5",
    Elves_Female_Skeleton_Clothing_Civilian_Normal_B_Lowerbody_A = "7357092c-ce15-4d54-abe2-f81c560a1edb",
    Elves_Female_Skeleton_Robe_Purge_A_Lowerbody_B = "ad3d5361-e653-4a43-9670-a58b8c0b04fc",
    Elves_Female_Skeleton_Robe_Purge_A_Lowerbody_C = "a5ffe932-b39d-4e39-9992-b4083f29e7c6",
}

CharacterVisualResources.Elves.Female.Boots = {
    Elves_Female_Body_Naked_A_Legs_A = "6d31a237-ebfe-4040-8ee7-3c766f23af38",
    Elves_Female_Armor_Platemail_A_Legs_A = "12bcda26-91e7-426d-aa6f-a7d3ce5abfe6",
    Elves_Female_Armor_Chainmail_A_Legs_A = "18b01cd7-5609-4988-bf16-6342f9308be9",
    Elves_Female_Armor_Scalemail_A_Legs_A = "42222991-ce74-44c4-89c4-741562754d96",
    Elves_Female_Armor_Leather_A_Legs_A = "530a2a35-a411-4c72-ab7e-f15d6c80c693",
    Elves_Female_Armor_StarterChainmail_A_Legs_A = "d5951eaa-3f1a-417d-a515-49edca689a1c",
    Elves_Female_Armor_StarterLeather_A_Legs_A = "4810694c-cf47-4cb2-821b-1bfd17f95a1b",
    Elves_Female_Armor_Mage_A_Legs_A = "51f173b4-b50e-4e89-9908-170adfe342a9",
    Elves_Female_Armor_Mage_B_Legs_A = "488beb18-85bc-4e19-b2ce-e25a9144c951",
    Elves_Female_Armor_Mage_C_Legs_A = "bd6a8837-c670-4d67-a5f9-ba66666d3df8",
    Elves_Female_Clothing_Civilian_Common_A_Legs_A = "c59154d0-ae57-4da8-a940-3f8aa1709371",
    Elves_Female_Clothing_Civilian_Common_A_Legs_Sebille = "28fa1801-91fc-4744-8418-e4a3bf82b6d7",
    Elves_Female_Clothing_Civilian_Normal_A_Legs_A = "e80de06f-64c8-4f46-afba-4091a5087a41",
    Elves_Female_Clothing_Civilian_Normal_B_Legs_A = "707b23f5-32d0-471e-8592-b5f4a4732ad2",

    Elves_Female_Skeleton_Armor_Platemail_A_Legs_A = "49023711-2886-4768-a74d-64cfec419030",
    Elves_Female_Skeleton_Armor_Chainmail_A_Legs_A = "15147d93-bcf5-41c4-bf8f-7b3ebbeabc13",
    Elves_Female_Skeleton_Armor_Scalemail_A_Legs_A = "aae8649b-667c-4f26-85f1-d601803d3b2c",
    Elves_Female_Skeleton_Armor_Leather_A_Legs_A = "ce05dace-9573-4498-88e3-943900336bfc",
    Elves_Female_Skeleton_Armor_StarterChainmail_A_Legs_A = "07151282-12f1-4be4-89f5-61534df80872",
    Elves_Female_Skeleton_Armor_StarterLeather_A_Legs_A = "ffb7afae-be95-424c-8c2f-15c6a85cf96a",
    Elves_Female_Skeleton_Armor_Mage_A_Legs_A = "383705d9-7722-4925-a7e2-7645105e046c",
    Elves_Female_Skeleton_Armor_Mage_B_Legs_A = "78c0c422-dda3-4b2f-89b3-0e51b77af94c",
    Elves_Female_Skeleton_Armor_Mage_C_Legs_A = "c3915e3c-f602-4167-a9a2-d180a2e3096b",
    Elves_Female_Skeleton_Clothing_Civilian_Common_A_Legs_A = "64c19cf0-defe-412f-a4fc-d49ef1fa8218",
    Elves_Female_Skeleton_Clothing_Civilian_Normal_A_Legs_A = "40bce380-adc5-4e5c-b95a-4b9aaa04546b",
    Elves_Female_Skeleton_Robe_Purge_A_Legs_C = "6372b72a-52bd-4ee0-9aef-fa223ff7ded8",
}

CharacterVisualResources.Elves.Female.Beard = {}

CharacterVisualResources.Elves.Female.Fullbody = {
    Elves_Female_Redfaction_Inquisitor_A_Upperbody_A = "6347100e-3efb-4bb9-a8f2-2eeec55a1aa8",

    Elves_Female_Skeleton_Redfaction_Inquisitor_A_Upperbody_A = "ab7b8655-2bb0-4bf4-9aa4-f9483f7d1396",

    RS3_FX_SK_Elves_Female_Armoured_01 = "80a7c0c4-1796-4cff-ad80-17f1a9d19eb2",
    RS3_FX_SK_Elves_Female_Armoured_02 = "a14aa3ae-c51c-4ca3-8078-852cd1778fe1",
    ProxyMesh_Elves_Hero_Female_Fullbody = "1a91b031-84e9-4bcc-8680-19c0bd5cf250",
}

CharacterVisualResources.Elves.Female.Cape = {}

CharacterVisualResources.Elves.Female.Shoulder = {
    Elves_Female_Armor_Leather_A_Shoulders_A = "5f4f2ccb-47e4-41d8-bcbe-85453b9e238d",
    Elves_Female_Armor_Platemail_A_Shoulders_A = "034262ff-0d85-4d72-8d31-a47e7484c09d",
}

CharacterVisualResources.Elves.Female.Misc = {
    Elves_Female_Clothing_UNIQUE_Blindfolds_A = "bb05371e-7787-4a24-ba6a-d8f6f16b8e6b",
    Elves_Female_Skeleton_ClawFinger_A = "c56e16d5-6f7f-4095-8106-d3093f38fb8c",
}