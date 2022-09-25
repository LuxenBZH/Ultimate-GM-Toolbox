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
    Lizards_Female_Body_Naked_A_Hair_A = "2b7fe728-db11-4a62-9bca-3a79afbd6ca2",
    Lizards_Female_Body_Naked_A_Hair_B = "f2c31096-3eff-4a0c-a3cb-1a0e17eab252",
    Lizards_Female_Body_Naked_A_Hair_C = "e3b45b04-e4ea-4d26-8249-4e3431ee6327",
    Lizards_Female_Body_Naked_A_Hair_D = "e5d0ba34-5df6-4350-89b1-c091cbd37c73",
    Lizards_Female_Body_Naked_A_Hair_E = "20856cef-98f9-4e3f-9c4a-d71706f140ab",
    Lizards_Female_Body_Naked_A_Hair_F = "1d9ab349-92dc-4247-b554-7a291429e9c1",
    Lizards_Female_Body_Naked_A_Hair_G = "b10081ff-6252-4931-9c5d-4bcadfcf23d3",
    Lizards_Female_Body_Naked_A_Hair_H = "4ace10d4-02d4-4e84-ab21-ef5e0718aaa2",
    Lizards_Female_Body_Naked_A_Hair_I = "2ecfc925-9fd8-4438-8223-e8a0022a9b88",

    Lizards_Female_Skeleton_A_Hair_A = "132616c5-7d57-47ea-9acc-672adc1b9e4d",
    Lizards_Female_Skeleton_A_Hair_B = "d71a993a-074f-4866-98f7-b1df8da6a929",
    Lizards_Female_Skeleton_A_Hair_C = "8730abe1-585f-424e-9e9d-097e422c47cd",
    Lizards_Female_Skeleton_A_Hair_D = "703919f1-ec55-4ca0-8d20-b3a1608f16b3",
}

CharacterVisualResources.Lizards.Female.Helmet = {
    Lizards_Female_Armor_Platemail_A_Helmet_A = "4cfe4557-ad3c-43d0-856a-74121b3e9a3a",
    Lizards_Female_Armor_Platemail_A_Helmet_C = "9b3e5201-afd6-424f-a4a1-59162e5f11ec",
    Lizards_Female_Armor_Chainmail_A_Helmet_A = "d60f0fb2-1333-4b83-bfba-59a2e9391c96",
    Lizards_Female_Armor_Chainmail_A_Helmet_B = "b8e9e96e-e394-45f6-a989-f1b49bf3f88d",
    Lizards_Female_Armor_Chainmail_A_Helmet_C = "e9362bc6-1028-44c2-b180-082991b1deac",
    Lizards_Female_Armor_Scalemail_A_Helmet_A = "8d37115a-5358-485f-945e-43377fa4f5e9",
    Lizards_Female_Armor_Scalemail_A_Helmet_B = "b1808dd4-7a7a-4a5b-a916-97381dccb448",
    Lizards_Female_Armor_Leather_A_Helmet_A = "1b1c3609-ecb0-476f-b11c-53230b946477",
    Lizards_Female_Armor_Leather_A_Helmet_B = "8e55f8a8-d213-4a08-a852-dcb318a0c6e4",
    Lizards_Female_Armor_Leather_A_Helmet_C = "8b4849b3-4e18-4b3f-94f7-8f9255882ea9", 
    Lizards_Female_Armor_StarterChainmail_A_Helmet_A = "069c6ece-9ea2-4530-9c1f-9d468dd0c28f",
    Lizards_Female_Armor_StarterLeather_A_Helmet_A = "42400d3c-9a10-4a7a-8e1c-9427c8392da5",  
    Lizards_Female_Armor_Dreamer_A_Helmet_A = "ac340cab-b4aa-423f-90a4-321583912bd2",
    Lizards_Female_Armor_Dreamer_A_Helmet_B = "5ff3eb33-bbdd-4c28-9df2-eac1aedccb90",
    Lizards_Female_Armor_Mage_A_Helmet_A = "09080c1f-cb5d-41dd-b755-32cbcdc08029",
    Lizards_Female_Armor_Mage_C_Helmet_A = "2d7f2b2f-cc95-4dac-9714-a1f60c4896ac",
    Lizards_Female_Clothing_A_Noble_Hat_Helmet_A = "f27829bd-b8e7-4055-b1e0-e207473bd65f",
    Lizards_Female_Clothing_Civilian_A_Helmet_A = "83d38673-34b5-4bb9-9310-8f09984a5bc9",
    Lizards_Female_Clothing_Civilian_B_Helmet_A = "d32c9a62-e679-47a7-a76b-122d8dbf43eb",
    Lizards_Female_Clothing_Civilian_C_Helmet_A = "2381ab70-692a-4fd7-a067-0011597bdc96",
    Lizards_Female_Clothing_Common_A_Helmet_A = "8fa9bc8d-4b33-4fcc-8c5f-ca545b4b460a",
    Lizards_Female_Meistr_Digraced_Helmet_A = "8f1666cf-9323-4f9a-9daf-f3ab45520cf8",
    Lizards_Female_Robe_Purge_A_Helmet_A = "74f10a14-acde-4c2b-9801-32508a767471",
    Lizards_Female_Robe_Purge_A_Helmet_B = "5dacaf38-819a-4a6f-bb53-7675f75e76ba",
    Lizards_Female_Robe_Purge_A_Helmet_C = "15c46deb-c059-4efb-a663-926836568302",
    Lizards_Female_Robe_Purge_A_Helmet_D = "b6a19652-d2f5-4436-bc1f-b79164cf35e8",
    Lizards_Female_Skeleton_Robe_Purge_A_Helmet_C = "21838580-2bb5-4b36-9019-ee28d9733487",
    Lizards_Female_Beast_Helmet_A = "41c6fcc5-3391-4fa5-833e-27fcd341f746",
}

CharacterVisualResources.Lizards.Female.Head = {    
    Lizards_Female_Body_Naked_A_Head_A = "488ced8f-3f98-4cb9-aad9-78f08c5d4447",
    Lizards_Female_Body_Naked_A_Head_B = "cf4c354f-eef1-49ec-b09c-f5d486b8beb1",
    Lizards_Female_Body_Naked_A_Head_C = "2ca056ac-1185-4398-a21d-971a049b36e1",
    Lizards_Female_Body_Naked_A_Head_D = "395c5b96-1f8a-466f-b2b7-920e39699066",
    Lizards_Female_Body_Naked_A_Head_E = "4f5762d9-3d0c-4cc0-afa1-6f3488d89b8c",
    Lizards_Female_Body_Naked_A_Head_F = "e828d39f-07e1-47d2-b18b-995d06b99d35",
    Lizards_Female_Body_Naked_A_Head_G = "8b3b47d6-fe71-49d3-b4b6-ca97a8e7014c",
    Lizards_Female_Body_Naked_A_Head_H = "7723a138-ff2b-44aa-b440-313f6d7d4d52",
    Lizards_Female_Body_Naked_A_Head_I = "4afe5c9b-55eb-4d4e-9604-e22c80c2b64d",

    Lizards_Female_Skeleton_A_Head_A = "6c3158aa-232f-4a9c-902b-d0c33c0a72a3",
    Lizards_Female_Skeleton_A_Head_B = "d1667b14-e70d-49e0-a9dc-3651eb67e90d",
    Lizards_Female_Skeleton_A_Head_C = "1d5fb95a-4b33-4204-be53-5f543eb4c214",
    Lizards_Female_Skeleton_A_Head_D = "d04bf15f-766c-4706-b886-8a75e4c290d5",
    Lizards_Female_Skeleton_A_Head_E = "56fbc684-504d-4d67-b087-5ecb57604aff",
    Lizards_Female_Skeleton_A_Head_F = "762345ad-7374-4fbb-b252-983e59877e54",    
    Lizards_Female_Skeleton_A_Head_G = "6ff69a7b-72aa-479b-8f66-628359b1989e",
}

CharacterVisualResources.Lizards.Female.Torso = {
    Lizards_Female_Body_Naked_A_Upperbody_A = "90a6f5b1-6cc5-467c-acf0-8579e7aa828d",
    
    Lizards_Female_Armor_Platemail_A_Upperbody_A = "966d6388-8a01-4847-a8a5-cccf78da9b4c",
    Lizards_Female_Armor_Platemail_A_Upperbody_B = "ed00a114-087f-4062-aeef-6a6129f15c8e",
    Lizards_Female_Armor_Platemail_A_Upperbody_C = "03b845f2-06c3-49f1-9ab2-4555b490f7ee",
    Lizards_Female_Armor_Platemail_A_Upperbody_D = "5b03427c-dbaf-455e-9596-687ed5d1a6e4",
    Lizards_Female_Armor_Platemail_A_Upperbody_E = "7c5f17ce-8e46-495b-a975-09e2cc07af98",
    Lizards_Female_Armor_Platemail_A_Upperbody_F = "4f038b2a-87d9-49ec-947a-42796708f004",
    Lizards_Female_Armor_Chainmail_A_Upperbody_A = "3013f281-0ae3-48f7-a6e5-b4f382a13a46",
    Lizards_Female_Armor_Chainmail_A_Upperbody_B = "625c28ea-218c-4582-941d-286e81dd58a0",
    Lizards_Female_Armor_Chainmail_A_Upperbody_C = "aac50d29-5d9b-4ff6-92be-031d3af36d8a",
    Lizards_Female_Armor_Chainmail_A_Upperbody_D = "8412cfb9-a7c2-4b98-95b1-55d9ef165bce",
    Lizards_Female_Armor_Chainmail_A_Upperbody_E = "af29ba16-9d3a-4282-8de4-3e70f2e2dafe",
    Lizards_Female_Armor_Chainmail_A_Upperbody_F = "9b252aba-7aa1-4828-83a0-cab6711eac37",
    Lizards_Female_Armor_Scalemail_A_Upperbody_A = "e48e8aef-39de-458c-b7ee-5db6b185be24",
    Lizards_Female_Armor_Scalemail_A_Upperbody_B = "0098f4ae-c5d0-49aa-b4cb-91a741b1e2e0",
    Lizards_Female_Armor_Scalemail_A_Upperbody_C = "eaa5d933-7194-4a12-a2fd-51a50b849eab",
    Lizards_Female_Armor_Scalemail_A_Upperbody_D = "a4c60376-e7db-4697-8168-29bec905fd1c",
    Lizards_Female_Armor_Scalemail_A_Upperbody_E = "f63ee738-61b1-45a1-a172-02b46ef436f7",
    Lizards_Female_Armor_Scalemail_A_Upperbody_F = "a7dfd5f6-80ee-4946-bda6-7f01d48e9e87",
    Lizards_Female_Armor_Leather_A_Upperbody_A_Cape = "299a5e69-cc93-46d5-8832-91803628fa52",
    Lizards_Female_Armor_Leather_A_Upperbody_A = "75e464d8-8d06-4006-8a99-0e8e557f54c6",
    Lizards_Female_Armor_Leather_A_Upperbody_B = "e5ffdb84-74c5-4f51-8426-8ef2cf80761b",
    Lizards_Female_Armor_Leather_A_Upperbody_C = "a3e233ed-8f25-4193-8728-48241de2de96",
    Lizards_Female_Armor_Leather_A_Upperbody_D = "023e2868-d035-4bf8-a78a-def9e484c7b3",
    Lizards_Female_Armor_Leather_A_Upperbody_E = "e49feb78-d078-4bd2-b153-fb42e315a40d",
    Lizards_Female_Armor_Leather_A_Upperbody_F = "38d3716f-98fd-4c79-a0c3-b92abb21f2fb",
    Lizards_Female_Armor_StarterChainmail_A_Upperbody_A = "45af268c-9943-406a-bf5d-130d73b77eaf",
    Lizards_Female_Armor_StarterChainmail_A_Upperbody_B = "36c93784-f9ca-48af-aa71-c76103ae4f4c",
    Lizards_Female_Armor_StarterLeather_A_Upperbody_A = "165b71bf-a728-4baa-aeac-ac9ba12401e7",
    Lizards_Female_Armor_StarterLeather_A_Upperbody_B = "c8ea604d-5589-4c67-8edd-6e5aaa5afee1",
    Lizards_Female_Armor_Dreamer_A_Upperbody_A = "7b62718e-868b-44ba-bb27-3dae747bb1bd",
    Lizards_Female_Armor_Mage_A_Upperbody_A = "82fc54f3-638b-49c6-b00f-7f6cce3e83ec",
    Lizards_Female_Armor_Mage_C_Upperbody_A = "6f6d8f28-7801-4bef-90d2-c97c45ac5326",
    Lizards_Female_Robe_Mage_A_Upperbody_A = "65231a88-56ee-4ce4-a851-70da7c773ec8",
    Lizards_Female_Robe_Mage_B_Upperbody_A = "f3c4da07-4256-4816-ba68-166380a7b1f1",
    Lizards_Female_Clothing_Civilian_A_Upperbody_A = "417bd5ef-d379-409f-a324-ec5a24a8b432",
    Lizards_Female_Clothing_Civilian_B_Upperbody_A = "fdfb9bcd-6d08-4a03-9b80-d39a9817bcd3",
    Lizards_Female_Clothing_Civilian_C_Upperbody_A = "7544d49d-7bd0-4141-9b59-4d5bc08db870",
    Lizards_Female_Meistr_Digraced_Upperbody_A = "c5eb7cbf-70fb-4f2e-b955-ca2d33c3cda6",
    Lizards_Female_Robe_Purge_A_Upperbody_A = "1793d032-7dc6-4e99-88b8-ed0e83595228",
    Lizards_Female_Robe_Purge_A_Upperbody_B = "144ed11d-4c7d-40d8-9abc-e23f2a5998ed",

    Lizards_Female_Skeleton_Armor_Platemail_A_Upperbody_A = "a87895c1-3e39-41ab-b62e-96ae985c2759",
    Lizards_Female_Skeleton_Armor_Platemail_A_Upperbody_B = "4b14f407-0745-4aa8-bd3d-24539aba7a4b",
    Lizards_Female_Skeleton_Armor_Platemail_A_Upperbody_C = "1023ec9a-e9f7-4d5a-8a45-64201ec3a2f2",
    Lizards_Female_Skeleton_Armor_Platemail_A_Upperbody_D = "25ca2c54-283b-4d3e-a17e-0e9c3d882066",
    Lizards_Female_Skeleton_Armor_Platemail_A_Upperbody_E = "73e9a5f0-8423-4085-a547-ab9a48dde516",
    Lizards_Female_Skeleton_Armor_Platemail_A_Upperbody_F = "b9ad18ea-9676-40dc-b1a8-81d41089a58f",
    Lizards_Female_Skeleton_Armor_Chainmail_A_Upperbody_A = "cf5a2450-736c-4c95-a999-2dd05eb07e7e",
    Lizards_Female_Skeleton_Armor_Chainmail_A_Upperbody_B = "e7f41204-0483-4085-9937-f87d13e1794b",
    Lizards_Female_Skeleton_Armor_Chainmail_A_Upperbody_C = "441ec4ab-b308-404d-b00c-a69629a2be7c",
    Lizards_Female_Skeleton_Armor_Chainmail_A_Upperbody_D = "d8c4011e-f2c2-4061-80ea-64e2bc33818b",
    Lizards_Female_Skeleton_Armor_Chainmail_A_Upperbody_E = "5ebe2459-5e66-42c2-8799-e148d8371ce9",
    Lizards_Female_Skeleton_Armor_Chainmail_A_Upperbody_F = "8d960ea1-4299-446b-9cb2-260772f6f1bd",
    Lizards_Female_Skeleton_Armor_Scalemail_A_Upperbody_A = "9dcf3098-eeea-4594-b1a4-da4f48846007",
    Lizards_Female_Skeleton_Armor_Scalemail_A_Upperbody_B = "e62012f0-8eaf-4eca-b8d1-1f2c3f334fe2",
    Lizards_Female_Skeleton_Armor_Scalemail_A_Upperbody_C = "cf0565ed-2e5f-4d6d-8c4e-21d65f25311c",
    Lizards_Female_Skeleton_Armor_Scalemail_A_Upperbody_D = "9b5f0fa0-4e2f-4191-ae81-9b3c8a84547d",
    Lizards_Female_Skeleton_Armor_Scalemail_A_Upperbody_E = "72fd388b-8665-4f50-b7bd-ce87d2365fbb",
    Lizards_Female_Skeleton_Armor_Scalemail_A_Upperbody_F = "7f5f2e88-5d3a-4900-925e-60bfe532b1d7",
    Lizards_Female_Skeleton_Armor_Leather_A_Upperbody_A_Cape = "b7236a74-957b-4688-928b-64189d2ca5b8",
    Lizards_Female_Skeleton_Armor_Leather_A_Upperbody_A = "06c67c3a-d331-4f40-9663-7456b420955e",
    Lizards_Female_Skeleton_Armor_Leather_A_Upperbody_B = "419cd2e8-d148-4e96-a945-1234d6007738",
    Lizards_Female_Skeleton_Armor_Leather_A_Upperbody_C = "3efe23ff-700f-4cf8-b26e-4f616847e176",
    Lizards_Female_Skeleton_Armor_Leather_A_Upperbody_D = "22716e91-ccf8-4489-8f3d-a655f0c97263",
    Lizards_Female_Skeleton_Armor_Leather_A_Upperbody_E = "d92b4d76-60db-4dee-afa0-117a7b3ed4b7",
    Lizards_Female_Skeleton_Armor_Leather_A_Upperbody_F = "f5b9988c-3f04-44ea-a259-f8d0c2264e5c",
    Lizards_Female_Skeleton_Armor_StarterChainmail_A_Upperbody_A = "c25ae2a9-0500-426e-ae8c-e6e16eea8301",
    Lizards_Female_Skeleton_Armor_StarterChainmail_A_Upperbody_B = "4160d3c8-e40f-4ab9-bb5e-ffc4ff0fcc2a",
    Lizards_Female_Skeleton_Armor_StarterLeather_A_Upperbody_A = "79f34ce8-dc08-4a5f-b742-588a9fcb700a",
    Lizards_Female_Skeleton_Armor_StarterLeather_A_Upperbody_B = "ee629d7b-2f5a-4151-9b19-639990e22d09",
    Lizards_Female_Skeleton_Armor_Dreamer_A_Upperbody_A = "6dae84b9-d5f1-438c-a614-8ef3917fa1b5",
    Lizards_Female_Skeleton_Armor_Mage_A_Upperbody_A = "621cda4e-04d0-4936-9a7c-feb95daa809c",
    Lizards_Female_Skeleton_Robe_Mage_A_Upperbody_A = "17ad2f9b-c60e-48d8-b001-b155aa8e7a9f",
    Lizards_Female_Skeleton_Robe_Mage_B_Upperbody_A = "246dff88-4d91-45b6-a91f-a8afc6badb6f",
    Lizards_Female_Skeleton_Clothing_A_Upperbody_A = "d2b80da7-445c-42e0-a81b-f5c723134655",
    Lizards_Female_Skeleton_Clothing_Civilian_A_Upperbody_A = "8c89f326-cbf7-4957-8564-f99b31ceb52d",
    Lizards_Female_Skeleton_Clothing_Civilian_B_Upperbody_A = "8281a169-fabf-47e0-a3da-45c738dc017b",
    Lizards_Female_Skeleton_Robe_Purge_A_Upperbody_B = "8d4100ca-d77f-4150-8fd6-6f611b5763f7",
    Lizards_Female_Skeleton_Robe_Purge_A_Upperbody_C = "3e12dcb8-ef2e-4cc6-bee1-2320fdd35b8d",
}

CharacterVisualResources.Lizards.Female.Arms = {
    Lizards_Female_Body_Naked_A_Arms_A = "a77abd6a-e22f-45a2-875e-c22fc2c8a9a4",
    Lizards_Female_Armor_Platemail_A_Arms_A = "e9cabbff-6f70-4ef5-9459-c91fa882260c",
    Lizards_Female_Armor_Chainmail_A_Arms_A = "071333da-1acd-416e-a285-6b7925a12473",
    Lizards_Female_Armor_Scalemail_A_Arms_A = "ec2c12c2-21d5-4385-af41-796c4cc48f68",
    Lizards_Female_Armor_Leather_A_Arms_A = "ffc61c55-b5b9-456f-9765-3808f13aefd6",
    Lizards_Female_Armor_StarterChainmail_A_Arms_A = "9a848bfe-7780-4605-a238-f14868c2fa50",
    Lizards_Female_Armor_StarterLeather_A_Arms_A = "82c20e4f-2423-4021-8b40-226ab066085b",
    Lizards_Female_Armor_Dreamer_A_Arms_A = "81c54fac-440c-4f43-a94f-adab338a7d40",
    Lizards_Female_Armor_Mage_A_Arms_A = "c7600f57-22fc-4ef4-84a1-27bf34ab030e",
    Lizards_Female_Armor_Mage_C_Arms_A = "4e057c39-f486-48f3-9732-1d66dfb50666",
    Lizards_Female_Robe_Purge_A_Arms_C = "26d216cf-85ef-49a9-b942-48ccc305723f",

    Lizards_Female_Skeleton_Armor_StarterChainmail_A_Arms_A = "f1e08695-a4c1-4d4b-bd16-e5be97b703f0",
    Lizards_Female_Skeleton_Armor_StarterLeather_A_Arms_A = "0a78ea74-aa39-41ab-bed3-5087822389e8",
    Lizards_Female_Skeleton_Armor_Dreamer_A_Arms_A = "5fc144cf-9315-44de-820d-b398ef5ad7e6",
    Lizards_Female_Skeleton_Armor_Mage_A_Arms_A = "f0a50d9c-d7f2-4637-aaa8-51b9ce4a4395",
    Lizards_Female_Skeleton_Robe_Purge_A_Arms_C = "c2cd401f-69b2-4475-9073-6e300a21f0ab",
}

CharacterVisualResources.Lizards.Female.Legs = {
    Lizards_Female_Body_Naked_A_Lowerbody_A = "85d06cde-06c5-481e-bd27-bced601b7729",
    Lizards_Female_Armor_Platemail_A_Lowerbody_A = "e9cb765d-19ec-4fb7-9349-a6e0d102352c",
    Lizards_Female_Armor_Chainmail_A_Lowerbody_A = "eaad8e5d-8696-4cd8-97c9-2304eae1ab39",
    Lizards_Female_Armor_Scalemail_A_Lowerbody_A = "19dcd37b-f1ef-4ca4-9d51-6dbdd64af028",
    Lizards_Female_Armor_Scalemail_A_Lowerbody_B = "59157167-242c-4485-8b33-8d4b91490f66",
    Lizards_Female_Armor_Leather_A_Lowerbody_A = "d14e3602-d8be-44a9-9363-9d76be7bdc99",
    Lizards_Female_Armor_Leather_A_Lowerbody_B = "8bbdc00d-9fd1-4fa7-ae4b-942c6709e150", 
    Lizards_Female_Armor_StarterChainmail_A_Lowerbody_A = "ed780769-474c-4843-a8a3-8a956aa35b61",
    Lizards_Female_Armor_StarterLeather_A_Lowerbody_A = "30523fd4-bd14-4083-999c-15b6649dbbab",   
    Lizards_Female_Armor_Dreamer_A_Lowerbody_A = "671d9f42-6379-40b1-8fc2-0ec451e2d09c",
    Lizards_Female_Armor_Mage_A_Lowerbody_A = "c49797db-304d-4e8e-b536-958190c9e784",
    Lizards_Female_Armor_Mage_C_Lowerbody_A = "c159a724-cca9-4c81-a879-bedb3c802e26",
    Lizards_Female_Robe_Mage_A_Lowerbody_A = "74a99681-aa3b-40ee-8ad1-a0b2c0525cc1",
    Lizards_Female_Robe_Mage_B_Lowerbody_A = "c663dbf1-b93e-4885-b8ec-d8dc3f2ab4a8",
    Lizards_Female_Clothing_Civilian_A_Lowerbody_A = "209e68e8-e9e4-4180-ac04-86b1c20c60fb",
    Lizards_Female_Clothing_Civilian_B_Lowerbody_A = "46268b44-4bec-4a60-8dc2-cd28c5050d5b",
    Lizards_Female_Clothing_Civilian_C_Lowerbody_A = "7d92884b-402f-4fc4-9444-084b8ab74629",
    Lizards_Female_Meistr_Digraced_Lowerbody_A = "64e0032f-8313-41c4-9ca0-295f146c7f76",
    Lizards_Female_Robe_Purge_A_Lowerbody_A = "f5a7014b-7f66-4998-839a-17570cede9f6",
    Lizards_Female_Robe_Purge_A_Lowerbody_B = "43bc8e2b-4447-4a0d-bb53-3469d931837a",

    Lizards_Female_Skeleton_Armor_Platemail_A_Lowerbody_A = "682c82ce-72d5-40db-ac06-7633e26b83fc",
    Lizards_Female_Skeleton_Armor_Chainmail_A_Lowerbody_A = "1daec03e-0005-43fc-bc00-c42799837d96",
    Lizards_Female_Skeleton_Armor_Scalemail_A_Lowerbody_A = "9d9508b4-0679-4461-aa00-6f01a845f513",
    Lizards_Female_Skeleton_Armor_Leather_A_Lowerbody_A = "234f9841-77fc-479c-b129-30eb543dff6d",
    Lizards_Female_Skeleton_Armor_StarterChainmail_A_Lowerbody_A = "3a48eccc-6eaa-4c32-86f8-117a22fbbc0d",
    Lizards_Female_Skeleton_Armor_StarterLeather_A_Lowerbody_A = "59fec7cd-d2f5-4a1a-a4d5-73fb0b914723",
    Lizards_Female_Skeleton_Armor_Dreamer_A_Lowerbody_A = "62742ac7-166c-494d-8968-829316d29aaa",
    Lizards_Female_Skeleton_Armor_Mage_A_Lowerbody_A = "fde1ee75-349c-4e09-a540-cd4be52e5a87",
    Lizards_Female_Skeleton_Robe_Mage_A_Lowerbody_A = "a7403587-9660-4391-9055-26ebf8cb3503",
    Lizards_Female_Skeleton_Robe_Mage_B_Lowerbody_A = "164e1543-cdfe-44f3-b1b7-39952cde9549",
    Lizards_Female_Skeleton_Clothing_A_Lowerbody_A = "709bfeab-16c7-451d-9e15-6debd1e88b05",
    Lizards_Female_Skeleton_Clothing_Civilian_A_Lowerbody_A = "72ba2f0b-9f2e-439b-aaf2-44f8c2ce03f3",
    Lizards_Female_Skeleton_Clothing_Civilian_B_Lowerbody_A = "c9c8e9e0-d2ee-4abe-8ccb-638b1e7a7c62",
    Lizards_Female_Skeleton_Robe_Purge_A_Lowerbody_B = "3d806096-a202-4b5a-9607-b66a79e43f92",
    Lizards_Female_Skeleton_Robe_Purge_A_Lowerbody_C = "29d039f4-9c1c-41c9-a977-60be5f66be84",
}

CharacterVisualResources.Lizards.Female.Boots = {
Lizards_Female_Body_Naked_A_Legs_A = "6a5784ed-eff9-46db-b441-db4b1e975ef6",
    Lizards_Female_Armor_Platemail_A_Legs_A = "0ada5461-e634-4cc0-a99d-3a280f488d57",
    Lizards_Female_Armor_Chainmail_A_Legs_A = "559ee845-232e-49a2-8758-a3a66e648f60",
    Lizards_Female_Armor_Scalemail_A_Legs_A = "a0ec4791-a00f-44c9-b8e9-5af2918895df",
    Lizards_Female_Armor_Leather_A_Legs_A = "2f13eedc-5dd2-4da6-9547-e3edbb0d82f0", 
    Lizards_Female_Armor_StarterChainmail_A_Legs_A = "716d9ee5-a9c1-466b-9f26-f29185692b98",
    Lizards_Female_Armor_StarterLeather_A_Legs_A = "dda82385-9fa3-46d6-8489-e4d0a440cee2",
    Lizards_Female_Armor_Dreamer_A_Legs_A = "6cf4c5b3-3eee-46ad-88a9-bfbb38aece5f",
    Lizards_Female_Armor_Mage_A_Legs_A = "6c2458e1-ac87-4983-8e61-11c075bb0aa4",
    Lizards_Female_Armor_Mage_C_Legs_A = "b11a2783-9fe6-40db-aa09-aebaf9fee329",
    Lizards_Female_Clothing_Civilian_A_Legs_A = "f36342f6-db2c-4b46-bd63-e4df15c963b0",
    Lizards_Female_Clothing_Civilian_B_Legs_A = "321fa401-8abe-46e6-b526-590b56ffd321",
    Lizards_Female_Clothing_Civilian_C_Legs_A = "c8fc4cfe-cb37-48e2-bc4f-efc824182b03",
    Lizards_Female_Robe_Purge_A_Legs_C = "19d8d480-1b4b-4ff9-82e4-2c7264fa6e66",

    Lizards_Female_Skeleton_Armor_Platemail_A_Legs_A = "7a23d180-1488-4c1d-b8c2-7f9fd26ed7a2",
    Lizards_Female_Skeleton_Armor_Chainmail_A_Legs_A = "29b02141-4a17-4755-aeb3-dd4eacef0d57",
    Lizards_Female_Skeleton_Armor_Scalemail_A_Legs_A = "e0bced8d-42b6-4fd5-8c09-26dea064de28",
    Lizards_Female_Skeleton_Armor_Leather_A_Legs_A = "f7587d98-45ea-4ed2-bfa7-c241cac616b1",
    Lizards_Female_Skeleton_Armor_StarterChainmail_A_Legs_A = "4ce84dc3-978f-4c3a-9ff9-b9aee588ebe7",    
    Lizards_Female_Skeleton_Armor_StarterLeather_A_Legs_A = "f10c49b0-3902-4c4c-9402-3fd6239fdd1c",
    Lizards_Female_Skeleton_Armor_Dreamer_A_Legs_A = "14f6a235-d989-4ad0-bcf8-d7da295aeea7",
    Lizards_Female_Skeleton_Armor_Mage_A_Legs_A = "97efca02-0bdf-48ad-b562-6cb4b6d99282",
    Lizards_Female_Skeleton_Clothing_Civilian_A_Legs_A = "3aa3ef28-4513-4306-a14a-6ec2b20245a7",
    Lizards_Female_Skeleton_Clothing_Civilian_B_Legs_A = "d175850e-67d3-4746-bf8c-e11fb97af6b2",
    Lizards_Female_Skeleton_Robe_Purge_A_Legs_C = "2e918efd-8471-4fa0-be13-3c7e1f16ca17",
}

CharacterVisualResources.Lizards.Female.Beard = {}

CharacterVisualResources.Lizards.Female.Fullbody = {
    Lizards_Female_Armor_Mage_A_Fullbody_A = "52fc2f8c-709b-401d-bd80-471fb5fa6fe8",
    Lizards_Female_Clothing_Common_A_Fullbody_A = "606a2daf-3a1a-4124-b038-e10d6d3f17da",
    Lizards_Female_Redfaction_Inquisitor_A_Upperbody_A = "53cd2395-3003-4e07-9e78-f34b3e10916b",

    Lizards_Female_Skeleton_Armor_Mage_A_Fullbody_A = "2c2699d8-cfdf-4a88-84c4-f469db6293b2",
    Lizards_Female_Skeleton_Redfaction_Inquisitor_A_Upperbody_A = "130136b5-9d48-468e-9c02-2aeffb2d1a67",

    RS3_FX_SK_Lizards_Female_Armoured_01 = "7e10e226-b313-4f6f-a8e5-0829c021ceb1",
    ProxyMesh_Lizards_Hero_Female_Fullbody = "2540579a-80d6-46a6-b9b5-8b08dfe2e8a4",
}

CharacterVisualResources.Lizards.Female.Cape = {}

CharacterVisualResources.Lizards.Female.Shoulder = {}

CharacterVisualResources.Lizards.Female.Misc = {
    Lizards_Female_Clothing_UNIQUE_Blindfolds_A = "8542e963-d591-4b21-9c37-db372289ca14",

    Lizards_Female_Skeleton_ClawFinger_A = "7cdae55d-015e-4c25-b9e7-cdec78e53aef",
}