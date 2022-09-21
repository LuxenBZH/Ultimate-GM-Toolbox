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
    Dwarves = RaceVisuals:Create(),
}

CharacterVisualResources.Dwarves.Female.Hair = {
    Dwarves_Female_Hair_A = "7d739d71-0ec7-49ab-8230-07da3902f470",
    Dwarves_Female_Skeleton_Hair_A = "a640418d-6356-4dbf-9ba5-f43153ea72c5",
    Dwarves_Female_Hair_B = "b4e61d56-ab1c-4d9c-ad8c-d692323d49ac",
    Dwarves_Female_Skeleton_Hair_B = "ec2e7214-79cf-41ce-8ed1-b7f84fb84d87",
    Dwarves_Female_Hair_C = "57d4a72c-cc07-4dab-ada4-5f43fe863db8",
    Dwarves_Female_Skeleton_Hair_C = "d75090db-0c6a-4a82-84b6-68a3bd5fa3d3",
    Dwarves_Female_Hair_D = "5402b7ac-541b-41ac-872d-00ff24d5f11b",
    Dwarves_Female_Skeleton_Hair_D = "5a2982ed-10c4-415c-b9de-aa0db8eedc0e",
    Dwarves_Female_Hair_E = "306ae666-040b-4fc8-a840-457e4f3fcc92",
    Dwarves_Female_Skeleton_Hair_E = "5b1fb063-afcd-4cb4-a80b-60005f3f75ac",
    Dwarves_Female_Hair_J = "c1a047f0-a0e6-4b84-a477-48290b137012",
    Dwarves_Female_Skeleton_Hair_J = "7b6e4d9a-2e53-465d-927b-0599dbc85509",
    Dwarves_Female_Hair_O = "01a8e83c-9d5b-422b-a4d3-27f31a74c342",
    Dwarves_Female_Skeleton_Hair_O = "1c2242bb-3003-433f-ab80-78098cc3751a",
    Dwarves_Female_Hair_P = "bb29d267-f04c-46a8-bfdd-04e17320d065",
    Dwarves_Female_Skeleton_Hair_P = "c4c720b7-2c23-4dbb-87bf-cfe77bf91a45",
    Dwarves_Female_Hair_R = "725738ca-9392-4af8-b1a4-f129f9a4abfd",
    Dwarves_Female_Hair_S = "da881df5-f454-4269-acaa-1d08311141c9",
    Dwarves_Female_Armor_Mage_A_Hair_A = "c92c0001-68fe-4993-b279-cbd6661da766",
}

CharacterVisualResources.Dwarves.Female.Helmet = {
    Dwarves_Female_Armor_Platemail_A_Helmet_A = "5fe7d8ee-ca06-4b9a-a38e-6c70f5d59d1b",
    Dwarves_Female_Armor_Platemail_A_Helmet_C = "819a4994-864e-4a61-afa7-90130a7c13ec",
    Dwarves_Female_Armor_Chainmail_A_Helmet_A = "f03e22cd-c37c-46af-963e-2db5215a5e53",
    Dwarves_Female_Armor_Chainmail_A_Helmet_B = "79861185-4357-402d-8a02-32e50fc8c09e",
    Dwarves_Female_Armor_Scalemail_A_Helmet_A = "98174b47-7870-4cfd-b050-74e9ff38d06e",
    Dwarves_Female_Armor_Scalemail_A_Helmet_B = "b10ac682-cbe7-4b2d-afbb-87f496bdde18",
    Dwarves_Female_Armor_StarterChainmail_A_Helmet_A = "dbb21184-62e7-467e-9e83-9cb389caeac0",
    Dwarves_Female_Armor_Leather_A_Helmet_A = "4d56640a-27c3-4ac8-9bb6-a4da5ca11474",
    Dwarves_Female_Armor_Leather_A_Helmet_B = "4dd57142-c451-4c62-b3aa-90d4516d3786",
    Dwarves_Female_Armor_StarterLeather_A_Helmet_A = "55bfbe1c-6e78-4e19-bd26-df98c09cab81",
    Dwarves_Female_Armor_Mage_A_Helmet_A = "829c9198-281a-4c7d-8732-5ba3451021ae",
    Dwarves_Female_Armor_Mage_B_Helmet_A = "3bbcc0bc-6e22-470b-ade4-3d05533af038",
    Dwarves_Female_Armor_Mage_C_Helmet_A = "b2d942b6-8935-4633-bb43-b4053453c092",
    Dwarves_Female_Clothing_A_Noble_Hat_Helmet_A = "075effda-bd8d-4ff7-9575-c7500131ef3f",
    Dwarves_Female_Clothing_Civilian_Rich_C_Helmet_A = "13f5e452-b9e3-4df1-aa60-1d9228df404a",
    Dwarves_Female_Clothing_Civilian_Rich_D_Helmet_A = "468aedcf-b5f5-49f6-b421-ef4d879234e4",
    Dwarves_Female_Clothing_Civilian_Rich_E_Helmet_A = "95485991-9671-42c9-a8cb-b544c9479b02",
    Dwarves_Female_Clothing_Civilian_Rich_E_Helmet_B = "f678e42c-6e8e-4525-a3db-8a819d33a876",
    Dwarves_Female_Clothing_Worker_Maid_A_Helmet_A = "d2dd4cde-d142-4884-997e-63024b3da7e0",
    Dwarves_Female_Robe_Purge_A_Helmet_A = "8fb7efe3-fa47-41f3-8663-49410032ae36",
    Dwarves_Female_Robe_Purge_A_Helmet_B = "d79c5dc2-17c5-42c8-86c4-50dae89ca26e",
    Dwarves_Female_Robe_Purge_A_Helmet_C = "0dd62b0a-21bd-46f9-9524-0b5ad7b3c1d1",
    Dwarves_Female_Robe_Purge_A_Helmet_D = "79b43e15-183f-40a9-bb5a-f5b545203ecb",
    Dwarves_Female_Skeleton_Robe_Purge_A_Helmet_C = "a0dd1cd4-a4c5-430e-8b16-e04e8e2f9cfe",
    Dwarves_Female_Beast_Helmet_A = "a63e2d9a-c4b7-4834-80ab-29ab7ce01e9f",
    Dwarves_Female_Shapeshifter_Mask_B = "617a7c31-5acb-4e20-8dcd-83ea8d4c4d75",
    Dwarves_Female_Shapeshifter_Mask_A = "4e0de004-6d59-48c3-856f-9b658db492ab",
    Dwarves_Female_Armor_FUR_Bucket_A = "afcad5ee-d316-482b-9588-7099c2ae11c6",
    Dwarves_Female_Armor_FUR_Kitchen_Pot_F = "2c5bff6b-98c5-4beb-ad19-7f80b1178772",
}

CharacterVisualResources.Dwarves.Female.Head = {
    Dwarves_Female_Body_Naked_A_Head_A = "07dd8afe-be57-4ae4-a20b-6d653cb7483a",
    Dwarves_Female_Body_Naked_A_Head_B = "02801519-6c83-461b-89ed-5a8a46f1d41e",
    Dwarves_Female_Body_Naked_A_Head_C = "58e3e1a2-f536-461d-887d-96dbead3c40a",
    Dwarves_Female_Body_Naked_A_Head_D = "ce8a630a-0ecf-4aaa-8d85-4648ab8db548",
    Dwarves_Female_Body_Naked_A_Head_E = "f631300d-3dc1-49cb-a840-cc13d0a7c801",
    Dwarves_Female_Body_Naked_A_Head_F = "8835f930-b5ea-46a8-8507-c78c9136c8c0",
    Dwarves_Female_Body_Naked_A_Head_G = "7a437624-8fc6-4daf-b86b-e65dd14fc04e",
    Dwarves_Female_Body_Naked_A_Head_H = "7e4c635b-4504-418c-961f-731442c54d2e",
    Dwarves_Female_Body_Naked_A_Head_I = "494d4549-c210-409a-ad53-4a7cfb76a275",
    Dwarves_Female_Body_Naked_A_Head_K = "1f9c7ed3-1d02-4fac-8c3d-895686c8b843",
    Dwarves_Female_Body_Naked_A_Head_L = "902bcf24-6c7c-4e2c-96d9-181cad7a994f",
    Dwarves_Female_Body_Naked_A_Head_M = "cb3bf932-b9db-420b-85b9-dd8e91059a95",
    Dwarves_Female_Body_Naked_A_Head_N = "70cd5314-3204-4758-a795-cad627a12855",
    Dwarves_Female_Body_Naked_A_Head_Silentmonk_A = "b38cb60a-6aa7-427a-b6a0-841d236b6c5b",

    Dwarves_Female_Skeleton_A_Head_A = "9cec4705-742a-4628-920e-2f970a000c7b",
    Dwarves_Female_Skeleton_A_Head_B = "ecc63c35-b731-4491-a27f-28d65ec5fc44",
    Dwarves_Female_Skeleton_A_Head_C = "83bf61c8-d754-42dc-aac1-756a439d80f9",
    Dwarves_Female_Skeleton_A_Head_D = "b8e85b3a-6426-4d6d-b391-8868b541735d",
    Dwarves_Female_Skeleton_A_Head_F = "dd0bbb4f-72cb-4e8d-b4f6-c8310efe114d",
    Dwarves_Female_Skeleton_A_Head_G = "dd213eca-d543-4187-bb2b-909dbc964f7d",
}

CharacterVisualResources.Dwarves.Female.Torso = {
    Dwarves_Female_Body_Naked_A_Upperbody_A = "d149c4a8-ace0-40e2-962b-165b96bf0c44",
    Dwarves_Female_Armor_Platemail_A_Upperbody_A = "d9b76b57-0ba6-4013-877f-7374b6f6a8a1",
    Dwarves_Female_Armor_Platemail_A_Upperbody_B = "39fb55a0-ddb9-4d0f-8807-42b966e845a0",
    Dwarves_Female_Armor_Platemail_A_Upperbody_C = "342e145b-e9b6-48ba-ad1c-f765fbfad31c",
    Dwarves_Female_Armor_Platemail_A_Upperbody_D = "9fa14db3-dda9-41ae-82ad-216375e3c59b",
    Dwarves_Female_Armor_Platemail_A_Upperbody_E = "e635ae3b-cad1-4b46-9057-893d21b83032",
    Dwarves_Female_Armor_Platemail_A_Upperbody_F = "94875bcb-edb9-435e-8060-27da220c1224",
    Dwarves_Female_Armor_Chainmail_A_Upperbody_A = "1da0aa7a-4ee9-4ab8-897f-0a9487434821",
    Dwarves_Female_Armor_Chainmail_A_Upperbody_B = "e8e8debf-7558-4224-be76-1b50217148c8",
    Dwarves_Female_Armor_Chainmail_A_Upperbody_C = "4e1f47df-3216-43ee-aaee-cb7864d8ce62",
    Dwarves_Female_Armor_Chainmail_A_Upperbody_D = "a62d0686-6642-4c6b-b45b-a9a89125d46f",
    Dwarves_Female_Armor_Chainmail_A_Upperbody_E = "cd117b99-28df-45cd-8d58-c04927f8abac",
    Dwarves_Female_Armor_Chainmail_A_Upperbody_F = "644f46f1-0856-46e4-b2d5-b343292350f0",
    Dwarves_Female_Armor_Scalemail_A_Upperbody_A = "cf7d73c5-44b0-4d09-a02c-6819ded60864",
    Dwarves_Female_Armor_Scalemail_A_Upperbody_B = "9d8f6799-ac3b-439f-b1a1-8fbf44275a76",
    Dwarves_Female_Armor_Scalemail_A_Upperbody_C = "597c32b6-528f-48ff-a70b-d6ec1a6d7e63",
    Dwarves_Female_Armor_Scalemail_A_Upperbody_D = "e00177e8-4247-4b7f-82af-54a042171811",
    Dwarves_Female_Armor_Scalemail_A_Upperbody_E = "a8699d53-8f5e-42af-aeb5-a1e69f1b6251",
    Dwarves_Female_Armor_Scalemail_A_Upperbody_F = "caec63fa-3466-4799-83e8-4ad6c8f07fc6",
    Dwarves_Female_Armor_StarterChainmail_A_Upperbody_A = "1e901ffa-9717-4f55-a95b-6d0576dcd0d9",
    Dwarves_Female_Armor_StarterChainmail_A_Upperbody_B = "3795fff4-c6c9-4f40-98ba-433a72f693b0",
    Dwarves_Female_Armor_Leather_A_Upperbody_A = "a4935a5e-1cf5-4c75-8c10-c35a7326aec4",
    Dwarves_Female_Armor_Leather_A_Upperbody_C = "5fd20a56-6cad-4532-a39c-d155f509fa10",
    Dwarves_Female_Armor_Leather_A_Upperbody_D = "12e8b2f4-e215-428a-b156-8bf0d085684e",
    Dwarves_Female_Armor_Leather_A_Upperbody_E = "81792734-897b-4201-9987-c89a7d63b036",
    Dwarves_Female_Armor_Leather_A_Upperbody_F = "a38f6bc9-9ad1-4200-8c6d-5d46f4a84fe5",
    Dwarves_Female_Armor_Leather_Upperbody_A_Cape = "7292273b-bd4e-444e-8cdd-c439f43d2854",
    Dwarves_Female_Armor_Leather_Upperbody_B = "63210cfc-7c80-4f57-a907-0e5428fb0e08",
    Dwarves_Female_Armor_StarterLeather_A_Upperbody_A = "7fcb9629-3ca6-4959-8f73-bcbd05106495",
    Dwarves_Female_Armor_StarterLeather_A_Upperbody_B = "809f7866-b396-4003-b383-a5dfae937e1a",
    Dwarves_Female_Armor_Mage_A_Upperbody_A = "46dfc9dd-6f5c-48c0-abca-1886555de5ce",
    Dwarves_Female_Armor_Mage_B_Upperbody_A = "6aa268cf-c6be-48c2-ab9b-c2b4177fa517",
    Dwarves_Female_Armor_Mage_C_Upperbody_A = "f66d199a-cd68-4394-8e9a-eb8677f0a9d6",
    Dwarves_Female_Robe_Mage_A_Upperbody_A = "c77b28b3-8b74-4c76-b24b-cb22d560bd1d",
    Dwarves_Female_Robe_Mage_B_Upperbody_A = "53dfce24-acf6-4dbd-8c94-366686515658",
    Dwarves_Female_Clothing_Civilian_Rich_B_Upperbody_A = "2deb8b05-2232-45ac-9ad4-5e8516b2f1f8",
    Dwarves_Female_Clothing_Civilian_Rich_C_Upperbody_A = "718e580d-6a04-4f37-b8bf-a8ebb125b2ba",
    Dwarves_Female_Clothing_Civilian_Rich_D_Upperbody_A = "8d4b57c7-ffec-42c6-bda5-bc5d76369baa",
    Dwarves_Female_Clothing_Civilian_Rich_E_Upperbody_A = "0caed600-e2d1-4bca-bdfb-7013cb773cd3",
    Dwarves_Female_Clothing_Worker_A_Upperbody_A = "c823ec37-1815-417d-9690-f954b0db9134",
    Dwarves_Female_Clothing_Worker_B_Upperbody_A = "d5ad6c41-6d05-4821-b97e-5d098de82b55",
    Dwarves_Female_Clothing_Worker_Maid_A_Upperbody_A = "2e75e014-8854-4481-8fc0-0b336bb79c08",
    Dwarves_Female_Robe_Purge_A_Upperbody_A = "c85cf57c-f84d-45fb-9d70-2397af830a78",
    Dwarves_Female_Robe_Purge_A_Upperbody_B = "350ac574-4a5c-4d14-9d34-3e68aaecafcc",

    Dwarves_Female_Skeleton_Armor_Platemail_A_Upperbody_A = "13b70c4c-7a5b-4075-a6d1-85906ab3e2dc",
    Dwarves_Female_Skeleton_Armor_Platemail_A_Upperbody_B = "7a7e1f8b-0ab7-473d-a207-89ccdf884d8f",
    Dwarves_Female_Skeleton_Armor_Platemail_A_Upperbody_C = "f85148b5-6f9e-4a99-88db-a12de8ad5541",
    Dwarves_Female_Skeleton_Armor_Platemail_A_Upperbody_D = "c78a5e27-9142-4924-8d1b-f5f212f92c2f",
    Dwarves_Female_Skeleton_Armor_Platemail_A_Upperbody_E = "79a822c2-7670-4ea3-85ba-ebb87024cca5",
    Dwarves_Female_Skeleton_Armor_Platemail_A_Upperbody_F = "4d05e4d4-1289-45e5-8ba5-4a98ae32107e",
    Dwarves_Female_Skeleton_Armor_Chainmail_A_Upperbody_A = "65158311-8faa-416e-9b3f-4e7bf2f5a12f",
    Dwarves_Female_Skeleton_Armor_Chainmail_A_Upperbody_B = "2018ad0d-c508-438d-b7fd-b0eea2c8e2af",
    Dwarves_Female_Skeleton_Armor_Chainmail_A_Upperbody_C = "5be9a013-b837-4a1d-bc06-6446757eb4a3",
    Dwarves_Female_Skeleton_Armor_Chainmail_A_Upperbody_D = "4eb6f445-f4c7-4d5f-9fcb-2f819770e1f8",
    Dwarves_Female_Skeleton_Armor_Chainmail_A_Upperbody_E = "ec6b2cfc-30a6-446d-9644-4b1be8e19ea8",
    Dwarves_Female_Skeleton_Armor_Chainmail_A_Upperbody_F = "8aaf294b-035d-43d8-b079-77ad7a4311a0",
    Dwarves_Female_Skeleton_Armor_Scalemail_A_Upperbody_A = "08a39b43-8bf5-40ff-9c29-66b2fb59c25a",
    Dwarves_Female_Skeleton_Armor_Scalemail_A_Upperbody_B = "35180ad8-65d6-4908-88b5-2ce725e108ae",
    Dwarves_Female_Skeleton_Armor_Scalemail_A_Upperbody_C = "d92c987d-51f4-4247-a91b-74c333d7d038",
    Dwarves_Female_Skeleton_Armor_Scalemail_A_Upperbody_D = "6e941bd4-cb20-4497-a6bd-4e95bcbe8f8f",
    Dwarves_Female_Skeleton_Armor_Scalemail_A_Upperbody_E = "ca357bc7-1303-4310-a431-7e6f06fa1b0c",
    Dwarves_Female_Skeleton_Armor_Scalemail_A_Upperbody_F = "3aa85740-a9db-4c09-869e-1d3e9867459c",
    Dwarves_Female_Skeleton_Armor_Leather_A_Upperbody_A = "449dcd52-f3b9-4fd1-80b7-99eaa6429b8f",
    Dwarves_Female_Skeleton_Armor_Leather_A_Upperbody_C = "971ee575-bf63-4e9d-ab5f-d816abbb1eb7",
    Dwarves_Female_Skeleton_Armor_Leather_A_Upperbody_D = "6ebe2e18-fec9-4506-bc93-d3bfcd0cd18b",
    Dwarves_Female_Skeleton_Armor_Leather_A_Upperbody_E = "c6275ec9-1e6c-4572-9a0d-32c1a0121662",
    Dwarves_Female_Skeleton_Armor_Leather_A_Upperbody_F = "e998253b-2b0a-4780-b377-88c38985ad5c",
    Dwarves_Female_Skeleton_Armor_Leather_Upperbody_A_Cape = "f066bdf2-04c4-46db-b860-ba2340b716dd",
    Dwarves_Female_Skeleton_Armor_Leather_Upperbody_B = "6eb2a662-1ff5-40b8-ad9c-b8adb6f29ba8",
    Dwarves_Female_Skeleton_Armor_Mage_A_Upperbody_A = "6adc0541-4218-47e9-a85b-809246f08c26",
    Dwarves_Female_Skeleton_Armor_Mage_B_Upperbody_A = "6e696aa6-14ca-4237-920f-bec6999b8999",
    Dwarves_Female_Skeleton_Armor_Mage_C_Upperbody_A = "c4b25c46-b8cc-4387-9b8e-be33045c70ec",
    Dwarves_Female_Skeleton_Robe_Mage_A_Upperbody_A = "06696a1a-9f3b-4b8b-9f69-5ce86082bc49",
    Dwarves_Female_Skeleton_Robe_Mage_B_Upperbody_A = "fff03600-07e2-44c7-96b7-214d27bc94d1",
    Dwarves_Female_Skeleton_Clothing_A_Upperbody_A = "182717ee-6c91-4dbf-9892-2c0ec23563cb",
    Dwarves_Female_Skeleton_Clothing_Worker_A_Upperbody_A = "42f82d14-35d0-4df9-bb92-fd652ab34cdf",
    Dwarves_Female_Skeleton_Clothing_Worker_B_Upperbody_A = "5296a985-e4e5-43bf-80d0-f38545706379",
    Dwarves_Female_Skeleton_Robe_Purge_A_Upperbody_A = "19dd25b1-57d4-4589-939a-16f1947998db",
    Dwarves_Female_Skeleton_Robe_Purge_A_Upperbody_B = "c0388d5f-5d6c-4f32-8195-80ee9597dfcb",
    Dwarves_Female_Skeleton_Robe_Purge_A_Upperbody_C = "59bee736-1a63-43fa-81eb-a4da36bd2f5e",
}

CharacterVisualResources.Dwarves.Female.Arms = {
    Dwarves_Female_Armor_Platemail_A_Arms_A = "916be717-6a7f-4963-97ac-08b0d8da9289",
    Dwarves_Female_Armor_Chainmail_A_Arms_A = "dbd24584-aca3-47df-9757-be7dd244f4b1",
    Dwarves_Female_Armor_Scalemail_A_Arms_A = "9c687503-e72b-4308-9ed3-4a06c060a388",
    Dwarves_Female_Armor_StarterChainmail_A_Arms_A = "f83a045a-ae4d-4991-898c-276fe049d72d",
    Dwarves_Female_Armor_Leather_A_Arms_A = "8f1c6181-a209-4f6d-8318-ec9f80b5d733",
    Dwarves_Female_Armor_StarterLeather_A_Arms_A = "46598e1e-1071-423f-aca2-d264d2d9c222",
    Dwarves_Female_Armor_Mage_A_Arms_A = "8dedc1a6-3ffa-4444-9f0b-b35b456d26af",
    Dwarves_Female_Armor_Mage_B_Arms_A = "316004d4-2873-4a77-a511-a93d3ec23d79",
    Dwarves_Female_Armor_Mage_C_Arms_A = "24027449-2e79-4273-b6d6-420adadc87da",
    Dwarves_Female_Clothing_Worker_A_Arms_A = "e3789ffd-107e-4778-aeb1-9b353b72b811",
    Dwarves_Female_Body_Naked_A_Arms_A = "c1c34e2a-42e2-48d8-a52e-b5af264f7791",
    Dwarves_Female_Skeleton_Armor_Platemail_A_Arms_A = "b840794b-bf09-41ab-9432-ae09907f6cfe",
    Dwarves_Female_Skeleton_Armor_Chainmail_A_Arms_A = "8106c990-2f11-4f69-b004-1a6a48cd1eab",
    Dwarves_Female_Skeleton_Armor_Scalemail_A_Arms_A = "40ee5343-5bd3-46f3-86e0-c1e166058d21",
    Dwarves_Female_Skeleton_Armor_StarterChainmail_A_Arms_A = "605cac8a-3ce5-4ada-9b1a-f419371b3ab9",
    Dwarves_Female_Skeleton_Armor_StarterLeather_A_Arms_A = "2d041751-8b9e-4e7a-a582-bd8af8343082",
    Dwarves_Female_Skeleton_Armor_Leather_A_Arms_A = "fdbf7976-ab79-4cab-a98e-5649062bf000",
    Dwarves_Female_Skeleton_Armor_Mage_A_Arms_A = "7dbe4a09-7b56-4ee3-8154-550db9fa1641",
    Dwarves_Female_Skeleton_Armor_Mage_C_Arms_A = "e6fc5bc0-f4d2-402f-8c10-951387c7f7f2",
    Dwarves_Female_Skeleton_Clothing_Worker_A_Arms_A = "5c3813dd-8ef3-4a9c-81d6-fedd1c5d8c6a",
    Dwarves_Female_Skeleton_Robe_Purge_A_Arms_C = "467186f1-d95b-4d32-b4cd-ff6e9e150be3",

}

CharacterVisualResources.Dwarves.Female.Legs = {
    Dwarves_Female_Skeleton_Robe_Purge_A_Lowerbody_C = "b2ffe7fe-f4a9-4937-b54b-62ddadedbb55",
    Dwarves_Female_Armor_Platemail_A_Lowerbody_A = "db23a528-991b-4e73-b47b-db32ccd2d214",
    Dwarves_Female_Armor_Chainmail_A_Lowerbody_A = "1cec949e-a8f2-4b0a-91c3-c5d76b210b87",
    Dwarves_Female_Armor_Scalemail_A_Lowerbody_A = "46229fbd-bb78-489e-a499-fd82d271df00",
    Dwarves_Female_Armor_StarterChainmail_A_Lowerbody_A = "66d629d9-15f9-4162-bd5d-91840f8985d0",
    Dwarves_Female_Armor_Leather_A_Lowerbody_A = "f6274550-37c4-41a5-aae6-c60e6401993d",
    Dwarves_Female_Armor_StarterLeather_A_Lowerbody_A = "eac8b0d4-53c5-4528-a5ca-acd999781045",
    Dwarves_Female_Armor_Mage_A_Lowerbody_A = "4d1c763d-bbe9-4ad8-8c55-d7964f08f914",
    Dwarves_Female_Armor_Mage_B_Lowerbody_A = "148d4bfb-4ba9-487b-b81c-fc906d08766e",
    Dwarves_Female_Armor_Mage_C_Lowerbody_A = "f7a9deef-7fa3-46dc-807c-f82a9b460b74",
    Dwarves_Female_Robe_Mage_A_Lowerbody_A = "3fbb1b58-763c-474d-ac0b-b603d91b9d7a",
    Dwarves_Female_Robe_Mage_B_Lowerbody_A = "25f16b32-e19a-4862-b4ab-a2ec7d26e5cd",
    Dwarves_Female_Clothing_Civilian_Rich_B_Lowerbody_A = "f1215e18-1287-48d0-a229-0ba563f24231",
    Dwarves_Female_Clothing_Civilian_Rich_C_Lowerbody_A = "9c5a8328-fa07-43d0-a059-dd9d6c7e8686",
    Dwarves_Female_Clothing_Civilian_Rich_D_Lowerbody_A = "79289129-03c7-4491-b9e7-0aeeded2dde3",
    Dwarves_Female_Clothing_Civilian_Rich_E_Lowerbody_A = "289f6c01-6b57-4f4b-9660-0a2710b0d669",
    Dwarves_Female_Clothing_Worker_A_Lowerbody_A = "08dff9c3-78bd-4a8d-988a-6937106f78d4",
    Dwarves_Female_Clothing_Worker_B_Lowerbody_A = "8f861746-447d-4b87-ab72-2a456eaa325f",
    Dwarves_Female_Clothing_Worker_Maid_A_Lowerbody_A = "ab50b5d8-87c7-476e-9ac7-b7a87eefe07d",
    Dwarves_Female_Robe_Purge_A_Lowerbody_A = "e9b1ceca-ad2d-4d33-8526-5b2a5c753197",
    Dwarves_Female_Robe_Purge_A_Lowerbody_B = "611597a4-e87b-475e-87d7-36116070606d",
    Dwarves_Female_Body_Naked_A_Lowerbody_A = "77bb03e4-1a2b-48f2-a139-9b51fbb970ef",

    Dwarves_Female_Skeleton_Armor_Mage_A_Lowerbody_A = "4f48fb97-4884-4afa-97b8-e0ac3ec5aa96",
    Dwarves_Female_Skeleton_Armor_Mage_C_Lowerbody_A = "7d809d74-2976-470e-a521-2b79cdb81e58",
    Dwarves_Female_Skeleton_Robe_Mage_A_Lowerbody_A = "aba80e81-a1ec-4b73-909a-bf1826496d53",
    Dwarves_Female_Skeleton_Robe_Mage_B_Lowerbody_A = "a9cd3a88-c52d-425b-af91-94cc33b3d1c2",
    Dwarves_Female_Skeleton_Clothing_A_Lowerbody_A = "90a07379-91e1-4463-985f-4231d1ae59ab",
    Dwarves_Female_Skeleton_Robe_Purge_A_Lowerbody_A = "7c2e85a4-ee15-44e5-b537-b9568c61b4fc",
    Dwarves_Female_Skeleton_Robe_Purge_A_Lowerbody_B = "ea08ec52-736e-43f8-a4af-1099a66d5676",

}

CharacterVisualResources.Dwarves.Female.Boots = {
    Dwarves_Female_Body_Naked_A_Legs_A = "04630c41-b4bc-405d-a45c-e44abe3d1879",
    Dwarves_Female_Armor_Platemail_A_Legs_A = "21b4dfd0-d55d-42e7-bcd1-46b06fa9ab35",
    Dwarves_Female_Armor_Chainmail_A_Legs_A = "2ad14000-f829-447c-8d24-61781b443733",
    Dwarves_Female_Armor_Scalemail_A_Legs_A = "2e313c52-170b-4d77-a33d-d1d3ea0f9f92",
    Dwarves_Female_Armor_StarterChainmail_A_Legs_A = "ceb50050-7990-49b9-b96c-c74e270621f2",
    Dwarves_Female_Armor_Leather_A_Legs_A = "5c4af696-c36c-4a1a-bf4a-24e61eb486f0",
    Dwarves_Female_Armor_StarterLeather_A_Legs_A = "59c72e8f-e335-41e5-866b-569bde04598f",
    Dwarves_Female_Armor_Mage_A_Legs_A = "f1e9f2c4-51a4-4c82-88b6-2d8df6cae939",
    Dwarves_Female_Armor_Mage_B_Legs_A = "20e1ffcc-e109-4441-ae4a-35254fd1d298",
    Dwarves_Female_Armor_Mage_C_Legs_A = "ae21eec7-32f8-4f8d-8dc2-3c32cbde321f",
    Dwarves_Female_Clothing_Worker_A_Legs_A = "a55e2058-037c-4ac7-be02-7344b30e04af",
    Dwarves_Female_Clothing_Worker_B_Legs_A = "05c5801a-80dc-4201-b1b3-34a13527c75b",
    Dwarves_Female_Clothing_Worker_Maid_A_Legs_A = "c11aab9d-686f-431b-80a5-7218aa8bc1d1",

    Dwarves_Female_Skeleton_Armor_Platemail_A_Legs_A = "12c80077-e6e0-4419-9f03-0f5e261546fa",
    Dwarves_Female_Skeleton_Armor_Scalemail_A_Legs_A = "331b292f-a687-4761-b30f-7447afb74aa6",
    Dwarves_Female_Skeleton_Armor_StarterChainmail_A_Legs_A = "4eb1ff88-9991-46e8-8239-a890fbc7d5c5",
    Dwarves_Female_Skeleton_Armor_StarterLeather_A_Legs_A = "e96eb01b-ded0-4529-a612-07271761868a",
    Dwarves_Female_Skeleton_Armor_Leather_A_Legs_A = "3f8d521b-2529-4e74-a508-0e11a8c6a2a6",
    Dwarves_Female_Skeleton_Armor_Mage_A_Legs_A = "259dc067-5212-4c54-ba79-65da191bd24b",
    Dwarves_Female_Skeleton_Armor_Mage_B_Legs_A = "28882704-5409-40a2-9b26-2f4bb4569616",
    Dwarves_Female_Skeleton_Armor_Mage_C_Legs_A = "417fcc3a-3025-4e7b-bf42-0e0f2c192dac",
    Dwarves_Female_Skeleton_Clothing_Worker_A_Legs_A = "1ca5155f-1964-45ff-84b9-466fd914ab99",
    Dwarves_Female_Skeleton_Clothing_Worker_B_Legs_A = "653ab3f7-942a-444a-b1c2-f1ba11677c4e",
    Dwarves_Female_Skeleton_Robe_Purge_A_Legs_C = "83578b54-c666-4ed8-b022-7febc0378de8",
}

CharacterVisualResources.Dwarves.Female.Beard = {

}

CharacterVisualResources.Dwarves.Female.Fullbody = {
    Dwarves_Female_Armor_Mage_A_Fullbody_A = "c24a5edf-a17d-4c7a-bf45-f4d23221a5b6",
    Dwarves_Female_Redfaction_Inquisitor_A_Upperbody_A = "82f5ec7a-7bf1-41c8-8081-749d02e1f385",

    Dwarves_Female_Skeleton_Armor_Mage_A_Fullbody_A = "7dba9e45-65e0-495a-ba14-8cb3268a5fe9",
    Dwarves_Female_Skeleton_Redfaction_Inquisitor_A_Upperbody_A = "6e190782-ae54-49dd-8539-e242e1d9cb5c",

    Creatures_SourcePuppet_A = "<ccf29c64-9559-4154-a07d-48e09aa46a5b>",
    Creatures_SourcePuppet_B = "<a825ea18-e90e-48cd-901c-10848f695f82>",
    RS3_FX_SK_Soul_Ghost_DwarfFemale_01 = "<53e36905-45e3-4dae-8816-f39829047d89>",
    RS3_FX_SK_Dwarves_Female_Armoured_01 = "<70111155-9480-4c57-bd4e-fa88ce69e1cd>",
    ProxyMesh_Dwarves_Hero_Female_Fullbody = "<ddebd965-3179-4d84-a38a-61f690f05d12>",
}

CharacterVisualResources.Dwarves.Female.Cape = {
    Dwarves_Female_Clothing_Civilian_Rich_E_Cape_A = "<8a88b776-a243-4dac-90cc-72aee380ffb2>",
}

CharacterVisualResources.Dwarves.Female.Shoulder = {

}

CharacterVisualResources.Dwarves.Female.Misc = {
    Dwarves_Female_Clothing_UNIQUE_Blindfolds_A = "86d5f658-5b93-406a-93c6-91a1966da6ff",
}