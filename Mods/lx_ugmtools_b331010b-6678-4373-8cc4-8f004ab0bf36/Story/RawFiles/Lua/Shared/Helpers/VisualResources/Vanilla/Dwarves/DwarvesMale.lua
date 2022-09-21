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
    Dwarves = RaceVisuals:Create(),
}

CharacterVisualResources.Dwarves.Male.Hair = {
    Dwarves_Male_Hair_A = "90e1f663-9d7c-43f0-a8d6-8bcfa02e2f0f",
    Dwarves_Male_Hair_B = "68a188ad-4a79-4b97-967a-e0719cdd41e1",
    Dwarves_Male_Hair_C = "53d5c2fa-7a87-4ac5-a5c8-fbdafa303b0b",
    Dwarves_Male_Hair_D = "582b7c88-31be-4656-bbf3-d4b16153b1ac",
    Dwarves_Male_Hair_E = "cb4e902e-a52f-441e-bd64-7312b3500746",
    Dwarves_Male_Hair_F = "ccacf37a-85e1-4fce-b479-d7e9f09a8353",
    Dwarves_Male_Hair_G = "02056fed-aaf7-4d8c-9d3b-a7bdd34bf767",
    Dwarves_Male_Hair_H = "c8808bdb-84a9-41b3-8e0c-6daeb0736c2b",
    Dwarves_Male_Hair_I = "778066e7-b7ef-4aac-af20-8570eb9ffb7a",
    Dwarves_Male_Armor_Mage_A_Hair_A = "11bfb869-95ae-4583-a300-94f2e8e9886a",

    Dwarves_Male_Skeleton_A_Hair_A = "ae2ea0bc-7140-4179-a6c6-8f9e3121326c",
    Dwarves_Male_Skeleton_A_Hair_B = "d61a8688-3526-4b2e-8c68-3b7acb1a0636",
    Dwarves_Male_Skeleton_A_Hair_C = "c6c6e31f-2a4b-478c-b1d7-c1cece9fb087",
    Dwarves_Male_Skeleton_A_Hair_D = "46fcd0ae-69a8-44b0-9655-ff0e25a86deb",
    Dwarves_Male_Skeleton_Hair_G = "4015751b-0d6b-4344-8dd5-867e299d0f59",

}

CharacterVisualResources.Dwarves.Male.Helmet = {
    Dwarves_Male_Armor_Platemail_A_Helmet_A = "e10920f0-e9c3-4c8d-9956-d5da0972a7dd",
    Dwarves_Male_Armor_Platemail_A_Helmet_C = "761e34c9-9c31-4bd4-9acc-d9da9edd7300",
    Dwarves_Male_Armor_Chainmail_A_Helmet_A = "b68367e2-fa2b-4c4c-9ed5-6df4f3959397",
    Dwarves_Male_Armor_Chainmail_A_Helmet_B = "ed435cd2-56eb-435b-98f1-98ce65e8a8a2",
    Dwarves_Male_Armor_Scalemail_A_Helmet_A = "c84f4629-400d-465f-945a-4c0d328e8d4d",
    Dwarves_Male_Armor_Scalemail_A_Helmet_B = "96b117d6-f652-4d2c-9583-8ee5bcd18326",
    Dwarves_Male_Armor_StarterChainmail_A_Helmet_A = "df48568c-f495-40b0-aa97-0c2a6c15ba49",
    Dwarves_Male_Armor_Leather_A_Helmet_A = "aa0825be-36de-45f9-9928-7f29f9305c18",
    Dwarves_Male_Armor_Leather_A_Helmet_B = "cb491497-9aa3-437e-b69e-bbfcd24deeb8",
    Dwarves_Male_Armor_StarterLeather_A_Helmet_A = "344e49a2-b907-4326-b801-9aa8863cfba0",
    Dwarves_Male_Armor_Mage_A_Helmet_A = "24982865-617a-43b9-a9fb-05c96c34c331",
    Dwarves_Male_Armor_Mage_B_Helmet_A = "690eb283-d638-4530-9b1e-3d2f2e8e6584",
    Dwarves_Male_Armor_Mage_C_Helmet_A = "a92c3e87-5fa8-404f-9043-13001d7e7877",
    Dwarves_Male_Clothing_A_Noble_Hat_Helmet_A = "64a8171c-1613-4353-927b-97926d1cce72",
    Dwarves_Male_Clothing_Civilian_Normal_A_Helmet_A = "003ba18a-4f40-4fd4-ba1f-9d431ccb558a",
    Dwarves_Male_Clothing_Civilian_Rich_Mayor_A_Helmet_A = "60c9388b-1853-41cf-8c2c-c9981abd7364",
    Dwarves_Male_Clothing_Civilian_Rich_Merchant_A_Helmet_A = "55b703fa-706f-4c40-a45b-cf33e0168deb",
    Dwarves_Male_Robe_Purge_A_Helmet_A = "419f02c3-80f6-44a0-8c26-b55873f28ea3",
    Dwarves_Male_Robe_Purge_A_Helmet_B = "ca2d0d9c-9bb1-4310-bb9f-f5b54ae23739",
    Dwarves_Male_Robe_Purge_A_Helmet_C = "b8dc4c22-78fc-4e52-a71c-9d9ed14ba6db",
    Dwarves_Male_Robe_Purge_A_Helmet_D = "77ff9384-240a-4e5e-817c-4e0ccc90429b",
    Dwarves_Male_Skeleton_Robe_Purge_A_Helmet_C = "959ac99c-6c1e-460a-b0b2-8697096c9461",
    Dwarves_Male_Body_Naked_A_Beast_Helmet_A = "640263c2-2787-4462-baf7-ecd20007b9f4",
    Dwarves_Male_Clothing_Bandit_A_Helmet_A = "08ca2fb6-f6b2-40e3-b36f-49225d9372ac",
    Dwarves_Male_Utopian_A_Helmet_A = "0b33f273-77a5-4b2e-b24b-974c630fd05b",
    Dwarves_Male_Shapeshifter_Mask_A = "f2954a37-3ba4-44f8-b956-87ddfcddbc07",
    Dwarves_Male_Shapeshifter_Mask_B = "68124256-9460-4168-bc76-0fa0f91ff255",
    Dwarves_Male_Armor_FUR_Bucket_A = "<10bbe001-014c-4903-90bb-a86bb133df73>",
    Dwarves_Male_Armor_FUR_Kitchen_Pot_F = "<6830c867-6e9b-47a9-ae3e-2ce531a9afb4>",

    Humans_Male_Fat_BlackRing_Brute_A_Helmet_A = "ee4a07f8-a3ce-43f3-9e56-cc19f2fc7cfa",
}

CharacterVisualResources.Dwarves.Male.Head = {
    Dwarves_Male_Body_Naked_A_Head_A = "ab1cc882-cb4e-4fc9-9a50-a98e434c011d",
    Dwarves_Male_Body_Naked_A_Head_B = "6c6b74df-9e50-4191-8964-66950c5393d1",
    Dwarves_Male_Body_Naked_A_Head_C = "ed55b8b8-308f-4d37-900a-d25ce583c868",
    Dwarves_Male_Body_Naked_A_Head_D = "5a71df29-175d-4cdd-9f41-3430ed561719",
    Dwarves_Male_Body_Naked_A_Head_E = "a511a88e-d59c-4cd2-9255-ea5d059bd305",
    Dwarves_Male_Body_Naked_A_Head_F = "bd24e310-2b48-475d-b1c1-ab5ad754a8bd",
    Dwarves_Male_Body_Naked_A_Head_G = "75db7acc-64be-4355-b2a8-9743a55ad885",
    Dwarves_Male_Body_Naked_A_Head_H = "bcce3122-0c88-48aa-907b-71a361b2ed7c",
    Dwarves_Male_Body_Naked_A_Head_I = "8d1859d8-8cc8-4b15-a8a8-92d3fa3ec303",
    Dwarves_Male_Body_Naked_A_Head_J = "21fc8e92-b501-468f-ad85-cd7ce7b951fa",
    Dwarves_Male_Body_Naked_A_Beast_Head_A = "56fd64cd-fdc3-4d50-a7a6-f35c170e1848",
    Dwarves_Male_Body_Naked_A_Head_Silentmonk_A = "8facdb34-eea2-417c-a38b-e430e3e84c82",

    Dwarves_Male_Skeleton_A_Head_A = "8e934bde-8de0-4da8-aa2b-49f5cb1a8ad3",
    Dwarves_Male_Skeleton_A_Head_B = "fbad55a2-d963-49a4-a893-5967b8b901c7",
    Dwarves_Male_Skeleton_A_Head_C = "90bed2e7-ddcd-40a1-b7de-6a267af7e4c9",
    Dwarves_Male_Skeleton_A_Head_D = "998f4344-159f-4438-9d6e-81d78c599593",
    Dwarves_Male_Skeleton_A_Head_F = "5ec189ab-9d25-4424-8542-2a44b958eb2e",
    Dwarves_Male_Skeleton_A_Head_G = "607be0c0-50a3-4e0f-ab88-0a637b283e0f",
    Dwarves_Male_Skeleton_DeathFigure_A = "<e56d37f9-51cd-477b-a258-9587d8ab6762>",

    Humans_Male_Fat_BlackRing_Brute_A_Head_A = "84fd5e25-3833-448c-a543-c9eb4f56fe9a",
}

CharacterVisualResources.Dwarves.Male.Torso = {
    Dwarves_Male_Body_Naked_A_UpperBody_A = "a7561a81-2010-42f0-b5ff-6a841dc124ca",
    Dwarves_Male_Armor_Platemail_A_Upperbody_A = "9644759c-9220-437f-ab77-3654634aae10",
    Dwarves_Male_Armor_Platemail_A_Upperbody_B = "aa766132-9b49-4c37-a2dc-bdc2deb15dca",
    Dwarves_Male_Armor_Platemail_A_Upperbody_C = "8b700e14-dd0f-47df-a963-c50a6d1beaa1",
    Dwarves_Male_Armor_Platemail_A_Upperbody_D = "c2d0aec1-67fa-4ecf-8c3c-0517af033b85",
    Dwarves_Male_Armor_Platemail_A_Upperbody_E = "179bf359-6d48-43b0-aa75-46a3700bdace",
    Dwarves_Male_Armor_Platemail_A_Upperbody_F = "376449ff-f0cd-487f-b53c-0d73d7e6c3c8",
    Dwarves_Male_Armor_Chainmail_A_Upperbody_A = "cda5ea93-6f46-4d2d-861a-34d49a173455",
    Dwarves_Male_Armor_Chainmail_A_Upperbody_B = "62b06f2f-6877-4044-83fb-c7110f0d0484",
    Dwarves_Male_Armor_Chainmail_A_Upperbody_C = "4476f29d-bdf3-42b9-805c-1bd45d3406e6",
    Dwarves_Male_Armor_Chainmail_A_Upperbody_D = "7414cdc1-7c78-4a03-b3f8-98f485016afd",
    Dwarves_Male_Armor_Chainmail_A_Upperbody_E = "2d1e8a46-b59f-489f-9d0b-9918b4b9bbcb",
    Dwarves_Male_Armor_Chainmail_A_Upperbody_F = "46761626-ce2c-4b80-822c-875047c1022c",
    Dwarves_Male_Armor_Scalemail_A_Upperbody_A = "a68f985e-a8cb-445a-b08f-4c5c0b3ae1ee",
    Dwarves_Male_Armor_Scalemail_A_Upperbody_B = "69450396-6495-4998-975c-f692df4d8e27",
    Dwarves_Male_Armor_Scalemail_A_Upperbody_C = "60089832-9959-406a-910c-856cb463bb4e",
    Dwarves_Male_Armor_Scalemail_A_Upperbody_D = "749376e3-a64b-4c57-96d0-a80c4441739d",
    Dwarves_Male_Armor_Scalemail_A_Upperbody_E = "aa8c880c-9933-4e21-b3cb-d9d5a662eb8a",
    Dwarves_Male_Armor_Scalemail_A_Upperbody_F = "69c00a05-e4be-487e-8c51-38c24bfc4032",
    Dwarves_Male_Armor_StarterChainmail_A_Upperbody_A = "7c9ba3c0-7153-4b0f-8353-0e56afaa3325",
    Dwarves_Male_Armor_StarterChainmail_A_Upperbody_B = "bba641f9-8d9f-434d-b175-f4404f29e824",
    Dwarves_Male_Armor_Leather_A_Upperbody_A_Cape = "ec43586b-2f6f-4fc6-bb00-3de0c09f6532",
    Dwarves_Male_Armor_Leather_A_Upperbody_A = "93a4db82-2b04-441d-aad0-cb3d3cbaa79b",
    Dwarves_Male_Armor_Leather_A_Upperbody_B = "ce9c5085-d76e-40fa-8826-1b615ea07f5b",
    Dwarves_Male_Armor_Leather_A_Upperbody_C = "b5ca6723-ac30-4737-8e57-b10d944f1b30",
    Dwarves_Male_Armor_Leather_A_Upperbody_D = "513be75f-3126-46f7-b0f3-a4321a23adb0",
    Dwarves_Male_Armor_Leather_A_Upperbody_E = "31bdfb4c-ea14-4c03-93b4-ff8f90d96124",
    Dwarves_Male_Armor_Leather_A_Upperbody_F = "75e61c38-009e-4695-8e14-c2b994ec2ab1",
    Dwarves_Male_Armor_StarterLeather_A_Upperbody_A = "032e89db-5750-4c93-88b3-8a6a9d0e6686",
    Dwarves_Male_Armor_StarterLeather_A_Upperbody_B = "ab26174d-b955-4ec6-8b28-fb24e1167025",
    Dwarves_Male_Armor_Mage_B_Upperbody_A = "e720f40b-1001-4461-8cec-2dcd0a95ebb8",
    Dwarves_Male_Armor_Mage_C_Upperbody_A = "41f19700-e9f5-4a2c-9a9f-db650fba35fb",
    Dwarves_Male_Robe_Mage_A_Upperbody_A = "76dafcd1-f533-4d5c-bb44-63f4a0901d5f",
    Dwarves_Male_Robe_Mage_B_Upperbody_A = "07a687ff-c946-4456-b9fc-cdbad9795f29",
    Dwarves_Male_Clothing_Civilian_Normal_A_Upperbody_A = "9911a9df-baaa-4d83-bc4c-6dfdc18c3b0c",
    Dwarves_Male_Clothing_Civilian_Normal_B_Upperbody_A = "0d296371-3094-4f92-87a3-997d9ad49cea",
    Dwarves_Male_Clothing_Civilian_Rich_A_Upperbody_A = "937642e1-1519-466e-afde-8fd923a52c14",
    Dwarves_Male_Clothing_Civilian_Rich_Merchant_A_Upperbody_A = "6cff4456-8928-4a8a-b3f4-e8c15058c3cc",
    Dwarves_Male_Clothing_Worker_A_Upperbody_A = "59644b91-8720-41b6-bd30-7fd95d848a2a",
    Dwarves_Male_Clothing_Worker_B_Upperbody_A_Beast_A = "a6c6d598-4a27-4d41-ba2c-7d9fab59210e",
    Dwarves_Male_Clothing_Worker_B_Upperbody_A = "4f1d9967-ad57-49bb-b721-333a7594f37b",
    Dwarves_Male_Robe_Purge_A_Upperbody_A = "304f0e03-20ef-4bcf-bbd3-503d4b949974",
    Dwarves_Male_Robe_Purge_A_Upperbody_B = "2b1a7996-3d68-4014-afac-b371f22db124",
    Dwarves_Male_Clothing_Bandit_A_Upperbody_A = "b862e99e-ebd1-418f-b70e-e0648b6909fb",

    Dwarves_Male_Skeleton_Armor_Platemail_A_Upperbody_A = "dfc87fd8-2e42-4040-a39e-01c5a9958943",
    Dwarves_Male_Skeleton_Armor_Platemail_A_Upperbody_B = "e858081f-799c-4260-a789-262d43263e66",
    Dwarves_Male_Skeleton_Armor_Platemail_A_Upperbody_C = "8e738aa1-ad5d-4ba9-89c8-98a3abb2ac12",
    Dwarves_Male_Skeleton_Armor_Platemail_A_Upperbody_D = "aae628df-e462-4359-92b4-6a97c3384db5",
    Dwarves_Male_Skeleton_Armor_Platemail_A_Upperbody_E = "17d59db8-4dd0-4241-bdd8-74ca3e4c7d53",
    Dwarves_Male_Skeleton_Armor_Platemail_A_Upperbody_F = "2d883f8d-8cbd-4169-8939-9e378c0925dd",
    Dwarves_Male_Skeleton_Armor_Chainmail_A_Upperbody_A = "6276b29d-355d-4262-a83e-21f2db1c92c4",
    Dwarves_Male_Skeleton_Armor_Chainmail_A_Upperbody_B = "b5f33e8c-8def-4750-aae0-193893b6c066",
    Dwarves_Male_Skeleton_Armor_Chainmail_A_Upperbody_C = "cd31507a-8df0-4ff9-ab31-4b670ac8aa1d",
    Dwarves_Male_Skeleton_Armor_Chainmail_A_Upperbody_D = "2fbc3308-ee93-47e2-a7fb-531a28bb2656",
    Dwarves_Male_Skeleton_Armor_Chainmail_A_Upperbody_E = "31f54880-13c6-4062-9bda-e6a6604a9eb7",
    Dwarves_Male_Skeleton_Armor_Chainmail_A_Upperbody_F = "d759fe48-d0fe-4923-bcfb-28a7f8d8c613",
    Dwarves_Male_Skeleton_Armor_Scalemail_A_Upperbody_A = "6b7a4200-233a-4faf-8c39-d2ffd881ae49",
    Dwarves_Male_Skeleton_Armor_Scalemail_A_Upperbody_B = "b342d478-955b-4864-9286-f8b5df742e07",
    Dwarves_Male_Skeleton_Armor_Scalemail_A_Upperbody_C = "ce2b491c-1f94-43fc-95aa-73c4858861e2",
    Dwarves_Male_Skeleton_Armor_Scalemail_A_Upperbody_D = "cdc8683f-4e1c-430f-a015-abe4bb06229e",
    Dwarves_Male_Skeleton_Armor_Scalemail_A_Upperbody_E = "bdd67c27-1cd0-429d-a568-da846304e54d",
    Dwarves_Male_Skeleton_Armor_Scalemail_A_Upperbody_F = "bd0c45e6-51cb-4bc8-b314-cd719e905f44",
    Dwarves_Male_Skeleton_Armor_Leather_A_Upperbody_A_Cape = "ee21adf5-7583-4426-b1b9-1370f8826ac5",
    Dwarves_Male_Skeleton_Armor_Leather_A_Upperbody_A = "07926553-c4fa-4612-adde-1676eeff3147",
    Dwarves_Male_Skeleton_Armor_Leather_A_Upperbody_B = "c3c2480f-296e-42f9-92d8-1c6e5c6cae2c",
    Dwarves_Male_Skeleton_Armor_Leather_A_Upperbody_C = "2908410b-e789-4242-9b55-48a0101a9b0f",
    Dwarves_Male_Skeleton_Armor_Leather_A_Upperbody_D = "379a1002-3dc0-48eb-bfd1-7503ca129109",
    Dwarves_Male_Skeleton_Armor_Leather_A_Upperbody_E = "e2c478ad-fad1-49c5-bb83-9f7c2e52eccc",
    Dwarves_Male_Skeleton_Armor_Leather_A_Upperbody_F = "a6612538-0b9a-4e3a-8a6f-413616789e36",
    Dwarves_Male_Skeleton_Armor_Mage_B_Upperbody_A = "7ea9d7ac-f797-46ed-b213-cf5e74f4d1f9",
    Dwarves_Male_Skeleton_Armor_Mage_C_Upperbody_A = "5dfd71e5-212b-4f03-8fc4-6305f8104834",
    Dwarves_Male_Skeleton_Robe_Mage_A_Upperbody_A = "cd85a267-afd0-459e-befa-c02a1191a79e",
    Dwarves_Male_Skeleton_Robe_Mage_B_Upperbody_A = "552ed44b-b48d-43fb-85d7-9f3753773ca3",
    Dwarves_Male_Skeleton_Clothing_A_Upperbody_A = "e2be0103-da27-47fc-99b3-0dccacd761b2",
    Dwarves_Male_Skeleton_Clothing_Civilian_Normal_A_Upperbody_A = "aa4d369e-27cd-4007-8f5d-7d080213d965",
    Dwarves_Male_Skeleton_Clothing_Civilian_Normal_B_Upperbody_A = "b8d781f1-d88f-400c-96af-034e4cb9f32d",
    Dwarves_Male_Skeleton_Robe_Purge_A_Upperbody_A = "3539f221-ba4b-4ab1-8b2c-a95cd4227574",
    Dwarves_Male_Skeleton_Robe_Purge_A_Upperbody_B = "61e97aed-56ee-4f5d-9df2-e136279d3d85",
    Dwarves_Male_Skeleton_Robe_Purge_A_Upperbody_C = "6a99ed11-975c-4388-9dbe-6aed056f0538",

    Humans_Male_Fat_BlackRing_Brute_A_Upperbody_A = "82d65d9e-b159-4a68-921b-59fbab1452fd",
    Humans_Male_RedFaction_Fat_Torturer_Upperbody_B = "e3027338-2126-4584-b8cf-2590f7eb90cf",
}

CharacterVisualResources.Dwarves.Male.Arms = {
    Dwarves_Male_Body_Naked_A_Arms_A = "1d5c8b36-4eb6-4013-9551-3f6010fe38cc",
    Dwarves_Male_Armor_Platemail_A_Arms_A = "fe09feb9-4b06-431f-a25a-c8a989a3646e",
    Dwarves_Male_Armor_Chainmail_A_Arms_A = "0c28985e-4303-46e0-88b2-51617b8fe826",
    Dwarves_Male_Armor_Scalemail_A_Arms_A = "d0f0885e-1dd5-43da-a58b-a97ed4591999",
    Dwarves_Male_Armor_StarterChainmail_A_Arms_A = "d720f57f-c384-4804-8a42-b832b8fde535",
    Dwarves_Male_Armor_Leather_A_Arms_A = "ef70dc24-2f7a-4cac-a1c1-d297e69c5354",
    Dwarves_Male_Armor_StarterLeather_A_Arms_A = "48c8468c-a69a-48af-95d9-b32a2bf4c3f5",
    Dwarves_Male_Armor_Mage_A_Arms_A = "e5b78b18-9804-4fa2-830c-76b7f2a85a29",
    Dwarves_Male_Armor_Mage_B_Arms_A = "e52c115e-b821-41a0-88d4-6c7405058349",
    Dwarves_Male_Armor_Mage_C_Arms_A = "fa56f970-ebd4-46c2-9293-df88f8507f75",
    Dwarves_Male_Clothing_Civilian_Normal_B_Arms_A = "93114a92-0d5f-463d-b813-1ca4f12c8aab",
    Dwarves_Male_Clothing_Civilian_Rich_A_Arms_A = "62e67de2-8647-416f-a59f-a9fb367eeabb",
    Dwarves_Male_Clothing_Worker_A_Arms_A = "bc839da3-1936-466d-9188-e01623ce19ba",
    Dwarves_Male_Clothing_Bandit_A_Arms_A = "5c97b250-365d-4ad1-a281-b082cfc4b30f",

    Dwarves_Male_Skeleton_Armor_Platemail_A_Arms_A = "da95258c-e180-4241-990a-ed3f5e20fbd6",
    Dwarves_Male_Skeleton_Armor_Chainmail_A_Arms_A = "e6f38389-97f4-4cf6-91c1-6d597a163fca",
    Dwarves_Male_Skeleton_Armor_Scalemail_A_Arms_A = "eb1105c2-3d0e-4177-b717-5cd637068f0e",
    Dwarves_Male_Skeleton_Armor_StarterChainmail_A_Arms_A = "ae0c1401-58a5-4fbe-9769-ec0b7df21b8a",
    Dwarves_Male_Skeleton_Armor_StarterLeather_A_Arms_A = "130d283e-8026-4abb-84b6-a94fb6261c35",
    Dwarves_Male_Skeleton_Armor_Leather_A_Arms_A = "6d8dd9be-7a19-4f8c-a30d-55208910d786",
    Dwarves_Male_Skeleton_Armor_Mage_A_Arms_A = "cff8420c-ea72-4f88-8707-520e98d48e44",
    Dwarves_Male_Skeleton_Armor_Mage_B_Arms_A = "cf2d2d1c-7134-4233-959c-d9e6928a4784",
    Dwarves_Male_Skeleton_Armor_Mage_C_Arms_A = "1952a460-54a8-4061-beff-55f27a41fc07",
    Dwarves_Male_Skeleton_Clothing_Civilian_Rich_A_Arms_A = "63430d1f-6f6e-4ceb-a71a-7457a2d30f1c",
    Dwarves_Male_Skeleton_Robe_Purge_A_Arms_C = "c72a2b62-3c29-47a2-897f-17dac920ce41",
}

CharacterVisualResources.Dwarves.Male.Legs = {
    Dwarves_Male_Body_Naked_A_LowerBody_A = "7c1edb10-9aeb-4952-9062-1b0204f3c7ad",
    Dwarves_Male_Armor_Platemail_A_Lowerbody_A = "a4fe7459-7593-4f89-82dd-1589dfe82461",
    Dwarves_Male_Armor_Chainmail_A_Lowerbody_A = "2d81c350-68ab-40f3-b049-287b83617216",
    Dwarves_Male_Armor_Scalemail_A_Lowerbody_A = "5ff4443b-a8fb-4e90-b887-3e70e1c58f2e",
    Dwarves_Male_Armor_StarterChainmail_A_Lowerbody_A = "55e4a347-1395-45fc-8170-dd2b4e95fb7b",
    Dwarves_Male_Armor_Leather_A_Lowerbody_A = "1a12296f-aa94-4a7a-9bb1-cccb99c0c6e7",
    Dwarves_Male_Armor_StarterLeather_A_Lowerbody_A = "edd5ed07-b10f-47ed-bb2c-c1a09bdb7290",
    Dwarves_Male_Armor_Mage_B_Lowerbody_A = "f15bb17a-b05c-43d3-b8c0-0de6ba633f08",
    Dwarves_Male_Armor_Mage_C_Lowerbody_A = "d78a4c18-e6a8-48ba-bce2-79ef7ffaca26",
    Dwarves_Male_Robe_Mage_A_Lowerbody_A = "e79d0a9c-ecca-402d-b8bb-cc61acd469fa",
    Dwarves_Male_Robe_Mage_B_Lowerbody_A = "fa1bdee0-2293-4d1d-914f-db28c7c352c6",
    Dwarves_Male_Clothing_Civilian_Normal_A_Lowerbody_A = "e17e6569-fb7f-4ecc-a1bb-8b25e3b67070",
    Dwarves_Male_Clothing_Civilian_Normal_B_Lowerbody_A = "e2863cb6-63c7-4fbd-a973-b2902f816803",
    Dwarves_Male_Clothing_Civilian_Rich_A_Lowerbody_A = "7fff03f2-936e-40cd-8a5b-6259b5f6d7be",
    Dwarves_Male_Clothing_Civilian_Rich_Merchant_A_Lowerbody_A = "46f1a5e8-cd97-4fe7-be79-5e8e7c1f75f5",
    Dwarves_Male_Clothing_Worker_A_Lowerbody_A = "41687e21-7ed3-48eb-b5aa-8c9733c793c9",
    Dwarves_Male_Clothing_Worker_B_Lowerbody_A = "f940cfd6-0ec0-4e78-b2e4-569b7a17d963",
    Dwarves_Male_Robe_Purge_A_Lowerbody_A = "0071c149-5aee-43a4-ad61-b38e945de0b9",
    Dwarves_Male_Robe_Purge_A_Lowerbody_B = "5d68b74b-e287-4b76-aec8-3d5451148107",
    Dwarves_Male_Clothing_Bandit_A_Lowerbody_A = "f1678ab2-30b5-46a3-8091-7db52e6c4c37",
    Dwarves_Male_Clothing_Bandit_A_Lowerbody_Beast = "d71bba7c-6b11-45bd-a096-9d1e16a1db17",
    
    Dwarves_Male_Skeleton_Armor_Mage_C_Lowerbody_A = "9f8d3502-4e34-4655-89e4-7e0ec5d06422",
    Dwarves_Male_Skeleton_Robe_Mage_A_Lowerbody_A = "35df61bc-bcc8-4348-8b6f-ab72be476cea",
    Dwarves_Male_Skeleton_Robe_Mage_B_Lowerbody_A = "30c0c51f-6016-4f69-b58f-fdf7befb5fea",
    Dwarves_Male_Skeleton_Clothing_A_Lowerbody_A = "01b43b2f-1c34-4e1f-8819-067ccabdb34b",
    Dwarves_Male_Skeleton_Clothing_Civilian_Normal_B_Lowerbody_A = "bc94c1da-d227-4b2f-a30b-c2760202a667",
    Dwarves_Male_Skeleton_Robe_Purge_A_Lowerbody_A = "efb15eaf-ba48-4f9d-a732-0638c227976f",
    Dwarves_Male_Skeleton_Robe_Purge_A_Lowerbody_B = "bf0c6d2b-95c1-4094-bb40-1fefdb48fb97",
    Dwarves_Male_Skeleton_Robe_Purge_A_Lowerbody_C = "edc4b7e4-a007-4250-87f7-b00e5ae07be7",

    Humans_Male_Fat_BlackRing_Brute_A_Lowerbody_A = "964f0181-136a-40a0-aebe-a3dc17d9d9bd",
    Humans_Male_RedFaction_Fat_Torturer_Lowerbody_B = "f2894a95-13ef-4438-98a2-cb97462fc364",
}

CharacterVisualResources.Dwarves.Male.Boots = {
    Dwarves_Male_Body_Naked_A_Legs_A = "51b2c561-eb97-42ac-b23d-e42e6b96f073",
    Dwarves_Male_Armor_Platemail_A_Legs_A = "256cc917-702a-4755-9552-b745c1b9933f",
    Dwarves_Male_Armor_Chainmail_A_Legs_A = "9d50901e-499b-4819-95a7-715c7b418777",
    Dwarves_Male_Armor_Scalemail_A_Legs_A = "571912d6-41cc-41f9-af1d-cec3973738b2",
    Dwarves_Male_Armor_StarterChainmail_A_Legs_A = "ca5ba7c3-68f6-4fa1-8a4c-8674bcfd5119",
    Dwarves_Male_Armor_Leather_A_Legs_A = "17600d4e-9e41-4fa2-92d5-2c7d12d5efa5",
    Dwarves_Male_Armor_StarterLeather_A_Legs_A = "5b820262-ce1b-4cf2-b28a-febbb3623463",
    Dwarves_Male_Armor_Mage_A_Legs_A = "75ee85fe-b58f-4a9b-b870-9aad867e260f",
    Dwarves_Male_Armor_Mage_B_Legs_A = "e636e449-93fe-402c-9709-f0badad5442a",
    Dwarves_Male_Armor_Mage_C_Legs_A = "ea7c6f88-3927-46c3-9ea3-e87b21eb5978",
    Dwarves_Male_Clothing_Civilian_Normal_A_Legs_A = "c36c0d26-6326-43ed-a81f-a93e11e414e8",
    Dwarves_Male_Clothing_Civilian_Normal_B_Legs_A = "3fcd9bd5-71ef-4ef3-9a15-c3d37f0efac0",
    Dwarves_Male_Clothing_Civilian_Rich_A_Legs_A = "3f3fe898-f8dc-4ac6-8d4d-81cdaaac6e0a",
    Dwarves_Male_Clothing_Civilian_Rich_B_Legs_A = "45b22ce3-afa6-4470-94c6-b35101fe38a3",
    Dwarves_Male_Clothing_Civilian_Rich_Merchant_A_Legs_A = "b032ecce-f8a6-4096-b2c7-41ee1f8e0753",
    Dwarves_Male_Clothing_Worker_A_Legs_A = "9427c4a3-defb-47da-9b76-0baf7e92369b",
    Dwarves_Male_Clothing_Worker_B_Legs_A = "c7b7d5fb-06d1-4152-8392-272fd76cafda",
    Dwarves_Male_Clothing_Bandit_A_Legs_A = "ad8c044d-ecb8-4919-a577-afb9097f2430",

    Dwarves_Male_Skeleton_Armor_StarterChainmail_A_Legs_A = "5113fa54-75d6-40e6-9782-c2af3e17a0de",
    Dwarves_Male_Skeleton_Armor_StarterLeather_A_Legs_A = "40ee629b-0376-4d95-97bc-6af2675f68f1",
    Dwarves_Male_Skeleton_Armor_Mage_B_Legs_A = "b4c825f4-43c1-4b7e-bed6-5256168b4d04",
    Dwarves_Male_Skeleton_Robe_Purge_A_Legs_C = "b4adafc1-997b-4cb0-a343-bd8881777b08",
}

CharacterVisualResources.Dwarves.Male.Beard = {
    Dwarves_Male_Beard_A = "95ea158e-03f0-480e-b30b-f4318fa09427",
    Dwarves_Male_Beard_B = "0d8417b5-b7d1-4656-ab30-da6076c0aa32",
    Dwarves_Male_Beard_C = "2fb8d012-6c69-4f14-976a-bc7fb1ac9363",
    Dwarves_Male_Beard_D = "997680a5-5a2e-41ae-8ce4-11698d983c61",
    Dwarves_Male_Skeleton_Beard_D = "d5856bf1-6232-454c-b774-5b0126e53350",
    Dwarves_Male_Beard_E = "da203ea1-25f8-4013-a1f0-7306c78e8d5f",
    Dwarves_Male_Skeleton_Beard_E = "cd07f45d-070b-46a6-9881-2195daba3b48",
    Dwarves_Male_Beard_F = "4133b2ac-f841-400a-8a20-98be9faa719a",
    Dwarves_Male_Body_Naked_A_Beast_Beard_A = "fa329ac0-5564-4f99-a02d-8d270e9ee1a6",
    Dwarves_Male_Beard_G = "b07c610c-46ef-466c-a806-da51740b2a8c",
    Dwarves_Male_Skeleton_Beard_G = "4957f76b-971f-4b98-b2c6-f81cba7269dd",
    Dwarves_Male_Beard_H = "4a7f8a6c-084b-4e59-84b8-a02345218689",
    Dwarves_Male_Skeleton_Beard_H = "8eac3189-3fbb-43c6-8417-9d4dacf2963e",
    Dwarves_Male_Beard_I = "0716fc89-9d46-4486-8bf8-71c5b83dac01",
    Dwarves_Male_Skeleton_Beard_I = "00474350-abd2-4cce-9b2c-c4e652db22a9",
    Dwarves_Male_Beard_J = "935b6fe3-92f5-4877-b742-66f0d0afaefa",
    Dwarves_Male_Skeleton_Beard_J = "15da6292-92c6-47dc-a68d-2d8c6f09c129",

    Dwarves_Male_Skeleton_Beard_A = "94b773bb-2a83-40d7-b191-ab5101664fee",
    Dwarves_Male_Skeleton_Beard_B = "59cd1302-5de9-4416-8fea-ae1bd808d8d9",
    Dwarves_Male_Skeleton_Beard_C = "61fd1b9b-a8eb-4b80-80c3-0787eda6a5a2",
}

CharacterVisualResources.Dwarves.Male.Fullbody = {
    Dwarves_Male_Armor_Mage_A_Fullbody_A = "ccca0539-e066-4b51-b257-5996217a309f",
    Dwarves_Male_Clothing_Civilian_Rich_B_FullBody_A = "c9049b03-c9db-4dca-b53d-79e61406c34b",
    Dwarves_Male_Clothing_Civilian_Rich_Mayor_A_Robe_A = "<14d46916-8653-403d-83d9-ba20039918b5>",
    Dwarves_Male_RedFaction_Inquisitor_A_Upperbody_A = "99ab13b9-a8c1-4035-a823-5c54aacfea23",
    Dwarves_Male_Utopian_A_Fullbody_A = "4d47b3ff-1a3b-4520-a626-884b8c21be33",

    Dwarves_Male_Skeleton_Armor_Mage_A_Fullbody_A = "2f8572a1-2c1b-4f5d-aa69-157971fb91b7",
    Dwarves_Male_Skeleton_RedFaction_Inquisitor_A_Upperbody_A = "c49ba614-0980-4f65-8a3c-571387fcc783",
    Dwarves_Male_DeathFigure_A = "<c8cd0ab5-9ade-46ef-b14a-7294a1e54155>",

    RS3_FX_SK_Dwarves_Male_Armoured_01 = "<152336f5-6a0a-4461-a2a6-da1e5ebb2f93>",
    ProxyMesh_Dwarves_Hero_Male_Fullbody = "<29663ed6-9411-4d2c-981d-458e5c826b22>",
}

CharacterVisualResources.Dwarves.Male.Cape = {
    Dwarves_Male_Clothing_Civilian_Rich_Mayor_A_Cape_A = "<9e3bc732-ebde-4422-a159-de4c08d1953e>",
}

CharacterVisualResources.Dwarves.Male.Shoulder = {
    Dwarves_Male_Armor_Platemail_A_Shoulders_A = "79a7e78f-8c11-4655-86e8-edc0f34b6ea0",
    Dwarves_Male_Armor_Chainmail_A_Shoulders_A = "5ef88a21-de0d-41ae-8ecb-be44b001c851",
    Dwarves_Male_Armor_Scalemail_A_Shoulders_A = "9fb36f22-02b3-4af1-b7c2-5973b188777a",
    Dwarves_Male_Armor_Leather_A_Shoulders_A = "42e5f6e0-4fcf-4cb3-931b-7225fb38a81d",
    Dwarves_Male_Utopian_A_Shoulders_A = "11537c5c-1de1-4130-a77f-e0ba333b686c",
}

CharacterVisualResources.Dwarves.Male.Misc = {
    Dwarves_Male_Clothing_Worker_B_Prop_A = "b12d1a43-593f-4a42-a9d3-64f7cb08b2a3",
    Dwarves_Male_Clothing_Civilian_Rich_Merchant_A_Props_A = "237fde50-c2c7-4353-97d8-60b34df067ee",
    Dwarves_Male_Clothing_Worker_A_Prop_A = "dd67dd57-e8be-4cae-9c45-a56110fbd32d",
    Dwarves_Female_Clothing_UNIQUE_Blindfolds_A = "86d5f658-5b93-406a-93c6-91a1966da6ff",
}