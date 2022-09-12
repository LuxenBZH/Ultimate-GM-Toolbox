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
    Humans = RaceVisuals:Create(),
}

CharacterVisualResources.Humans.Female.Hair = {
    Humans_Female_Hair_A = "f6f04b2b-8a37-4507-ad89-64ae8ef57846",
    Humans_Female_Hair_B = "5c944367-a977-40be-865d-2c1d45de8d4d",
    Humans_Female_Hair_C = "9b82aba9-ccab-4f3b-8e86-c431a266b638",
    Humans_Female_Hair_D = "bd0f78c0-f8f5-40fb-b44b-b266b65e80df",
    Humans_Female_Hair_E = "dbf4638d-279e-4d07-80ea-636e7ffe102b",
    Humans_Female_Hair_F = "6b269e65-7aa6-435c-8ea5-a39c9f0bf6fc",
    Humans_Female_Hair_K = "331bb12d-75f3-40f0-8b56-f14e5b385af9",
    Humans_Female_Hair_Lohse = "65575ad1-d44f-43b6-8695-17ef7b503000",
    Humans_Female_Hair_N = "f5201bef-b314-4296-af39-0650b7c08585",
    Humans_Female_Hair_Rich_A = "3e2e1b42-253c-436f-8b1e-cb12c8f38c2e",
    Humans_Female_Hair_O = "ef13d5b0-4101-481b-91f1-b496ae263547",
    Humans_Female_Hair_P = "39f50c05-59f8-4a36-b78d-216bf91486ba",
    Humans_Female_Hair_R = "2a583f89-4d43-4cb4-8ef2-1761bd336611",
    Humans_Female_Hair_S = "0194a8d7-e2cc-4192-b941-838073300ebf",
    Humans_Female_Hair_T = "804127d0-92ac-4bca-bdad-5dd6729ae1a4",
    Humans_Female_Hair_U = "3d0b67ae-b6a4-40b7-9fa0-332a55f6a2d7",
    Humans_Female_Hair_V = "ac717478-ca3b-45ef-898a-0db0bfdeaa1e",
}

CharacterVisualResources.Humans.Female.Helmet = {
    Humans_Female_Armor_Guard_A_Helmet_A = "df91d206-1842-4829-8043-00b5a0096993",
    Humans_Female_Armor_Platemail_A_Helmet_A = "196cb47f-391a-476c-9b6d-351feb487b3e",
    Humans_Female_Armor_Platemail_A_Helmet_B = "9ed564c4-e6bc-4cb6-9b87-5eb7eed0ff7f",
    Humans_Female_Armor_Platemail_A_Helmet_C = "20d15c18-0d3a-48ce-9e19-04a316343dc4",
    Humans_Female_Armor_Platemail_A_Helmet_D = "1b622320-ce61-4dfb-a969-bb9e6c481ded",
    Humans_Female_Paladin_A_Helmet_A = "41b73059-aaf6-4420-a6ec-8b6068f234f4",
    Humans_Female_Paladin_A_Helmet_B = "0e5e6d38-4e0a-4790-a6a8-6a00e7476acb",
    Humans_Female_Paladin_A_Helmet_C = "61d7e8c8-37a7-408a-ad23-bee862fbb493",
    Humans_Female_Armor_Chainmail_A_Helmet_A = "b95930af-3807-4130-a507-0ad7cc63a894",
    Humans_Female_Armor_Chainmail_A_Helmet_B = "50ff6f5b-d762-4e4e-a3fd-8b60f6cc7d56",
    Humans_Female_Armor_Scalemail_A_Helmet_A = "f23783b4-4564-4999-84c3-5c76bef7a5b1",
    Humans_Female_Armor_Scalemail_A_Helmet_B = "a1fe92f9-8188-425d-8c44-6afb24657485",
    Humans_Female_Armor_StarterChainmail_A_Helmet_A = "f5b66f96-9718-4c8f-b2a0-96beaf27df5a",
    Humans_Female_Armor_Leather_A_Helmet_A = "d448c4c8-698d-4827-9595-2b60e4f49802",
    Humans_Female_Armor_Leather_A_Helmet_B = "3f781cc1-4c09-413a-b29a-6b3f149cdedd",
    Humans_Female_Armor_StarterLeather_A_Helmet_A = "402f38ee-1d91-41e1-8c74-c9af3d1dcfa9",
    Humans_Female_Paladin_Ranger_A_Helmet_A = "d4cd4578-526d-4224-b976-66ff24818ed4",
    Humans_Female_Armor_Mage_A_Helmet_A = "4f8271b3-5a17-414a-addc-6416e67deebf",
    Humans_Female_Armor_Mage_B_Helmet_A = "a7999e9c-d597-4dda-bd4b-825e08750eca",
    Humans_Female_Armor_Mage_C_Helmet_A = "75f83eb8-3f9b-4732-a427-c5f8764a9a71",
    Humans_Female_Armor_Paladin_Priest_A_Helmet_A = "90548207-b35c-4f2f-9a25-fa33fd559506",
    Humans_Female_Paladin_Warlock_A_Helmet_A = "71aa400a-6e7e-4d81-8436-ad2fd15ed87b",
    Humans_Female_Clothing_A_Noble_Hat_Helmet_A = "89eac104-dcef-46ef-9f27-6e2c244f0e4d",
    Humans_Female_Clothing_Civilian_Rich_A_Helmet_A_Hair_A = "4f82dc1b-af2e-4ee6-9b30-45faad56b7fa",
    Humans_Female_Clothing_Worker_Blacksmith_A_Helmet_A = "02530e24-ae2e-4700-9f6a-8bf3375b91f0",
    Humans_Female_Clothing_Worker_Maid_A_Helmet_A = "201360c1-aca5-4afc-96ae-aedcbcac56e0",
    Humans_Female_Clothing_Worker_Maid_B_Helmet_A = "1e797aba-1d8f-48fc-9d84-4713b1036791",
    Humans_Female_Clothing_Worker_Merchant_A_Helmet_A = "573bf0d3-978e-4871-8300-0feed755ffe6",
    Humans_Female_Robe_Purge_A_Helmet_A = "58f2a8a3-00f2-47eb-83eb-537e7061d82d",
    Humans_Female_Robe_Purge_A_Helmet_B = "fc028965-97ce-4f69-99d6-bec0506fa125",
    Humans_Female_Robe_Purge_A_Helmet_C = "d015af20-88d4-4366-a057-a8286789efef",
    Humans_Female_Robe_Purge_A_Helmet_D = "03a8999e-697e-41a5-8172-2266a9d5e2c7",
    Humans_Female_Armor_Blackring_A_Helmet_A = "092d044f-af95-4f5a-b99c-d1f5813ae298",
    Humans_Female_Armor_PlaguesMask_A_Helmet_B = "56575810-281e-4c6d-a286-564c247d2d0e",
    Humans_Female_Beast_Helmet_A = "ede0475d-d6d2-4b7b-913b-80f690d36e3b",
    Humans_Female_Blackring_Witch_A_Helmet_A = "003ee965-598e-46bc-a475-21ae70011776",
    Humans_Female_RedFaction_Grunt_A_Helmet_A = "8101210d-a3fe-447f-8683-a3692872f11c",
    Humans_Female_RedFaction_Grunt_A_Helmet_B = "5afc5331-5726-4ffd-b07a-b4dc4f2e80c5",
    Humans_Female_Redfaction_Inquisitor_A_Helmet_A = "42e31d58-4101-4a33-a84c-fd3d11dc7118",
    Humans_Female_RedFaction_Priest_A_Helmet_A = "c1b05a1c-fea7-42aa-903a-49e9870150ba",
    Humans_Female_RedFaction_Ranger_A_Helmet_A = "98712243-3190-4671-b61b-47f737f94f6a",
    Humans_Female_RedFaction_Ranger_A_Helmet_B = "d23be6f3-707b-4839-8100-2d774d704404",
    Humans_Female_Skeleton_Robe_Purge_A_Helmet_C = "09cc500a-e1eb-46f8-b915-ab948d116df4",
    Humans_Female_Skeleton_Ataraxian_A_Helmet_A = "f03bbf36-9db3-4497-b6c3-eba3ace8ecc7",
    Humans_Female_Skeleton_Ataraxian_B_Helmet_A = "2af81318-32ca-41fe-af32-3891cab492e4",
    Humans_Female_Shapeshifter_Mask_A = "c625fd26-8fd1-4cc7-b7b9-8ea50290f60b",
    Humans_Female_Shapeshifter_Mask_B = "79e9c446-62e4-45f7-af6c-b565e4c6f38e",
    Humans_Female_Armor_FUR_Bucket_A = "11d6cd06-82c2-426f-aa0f-7c81d8a3e920",
    Humans_Female_Armor_FUR_Kitchen_Pot_F = "f442bf25-4487-4f23-9975-24978a5ee09b",
}

CharacterVisualResources.Humans.Female.Head = {
    Humans_Female_Body_Naked_A_Head_A = "53ced147-fdbb-4379-9b57-56faa761d6c6",
    Humans_Female_Body_Naked_A_Head_B = "d8bc59de-6743-42f1-8d0c-91330357f601",
    Humans_Female_Body_Naked_A_Head_C = "497c8646-b399-45a6-8ceb-c1949dd5539c",
    Humans_Female_Body_Naked_A_Head_D = "ad9fa21f-c71a-499b-af76-03a4cf5b67eb",
    Humans_Female_Body_Naked_A_Head_E = "bdf8b9d9-599c-4dc7-bb89-5659e964ec4f",
    Humans_Female_Body_Naked_A_Head_F = "aa50fdda-0722-465c-b4ff-419ea18c1558",
    Humans_Female_Body_Naked_A_Head_G = "54d12827-6032-4a48-991c-58557d3dcce4",
    Humans_Female_Body_Naked_A_Head_H = "fde28724-bcd5-4e6c-89a0-4449332ac3de",
    Humans_Female_Body_Naked_A_Head_I = "c33ad17d-89b8-4a72-a8c6-fb2ab3469b9f",
    Humans_Female_Body_Naked_A_Head_J = "29ffe280-447c-4751-b322-73a4af763056",
    Humans_Female_Body_Naked_A_Head_K = "c5d98076-caf2-44e3-8189-4fed6694bb81",
    Humans_Female_Body_Naked_A_Head_L = "7bc3ffd5-b86e-4a72-bb2b-81a0809d2b7f",
    Humans_Female_Body_Naked_A_Head_M = "75f43090-de82-4c1d-b30a-ee9d47218281",
    Humans_Female_Body_Naked_A_Head_N = "b121f675-5424-4919-9e8f-65f645ed31a5",
    Humans_Female_Body_Naked_A_Head_O = "b4fa2123-bf3c-4a81-a520-52a5f0cf46be",
    Humans_Female_Body_Naked_A_Head_P = "205c9c8c-b47a-4e62-97b3-af1e217d2647",
    Humans_Female_Body_Naked_A_Head_R = "57734ab8-6c2b-44b3-b496-8bad225f05f9",
    Humans_Female_Body_Naked_Head_Lohse = "2de20ce9-cf62-4648-bf7a-59238b19a076",
    Humans_Female_Body_Naked_Head_Silentmonk_A = "a56e33b3-ced1-4194-8af4-8f2771fa7939",
    Humans_Female_Body_Naked_Skinny_A_Head_A = "cd639189-e5fb-45af-81f3-80137e0c071a",
    Humans_Female_Body_Naked_Skinny_A_Head_Silentmonk_A = "a20c0224-dfc3-4588-8529-7b58e5ee3f70",
}

CharacterVisualResources.Humans.Female.Torso = {
    Humans_Female_Body_Naked_A_Upperbody_A = "b335fd88-4401-47b7-bd96-cb66581c99d4",
    Humans_Female_Body_Naked_Skinny_A_Upperbody_A = "3b872ea9-5247-403f-8926-2f0067020187",
    Humans_Female_Armor_Guard_A_Upperbody_A = "a7bf9bce-c0ba-4b6c-948e-721e6fde80ee",
    Humans_Female_Armor_Guard_A_Upperbody_B = "cbf17166-0c8b-4fb6-b5f2-ae387e6a6051",
    Humans_Female_Armor_Platemail_A_Upperbody_A = "8dfc4384-1fb4-4cd5-addb-c5d27c5bb811",
    Humans_Female_Armor_Platemail_A_Upperbody_B = "4e4e3963-24a4-411e-bd19-f11b56169f3a",
    Humans_Female_Armor_Platemail_A_Upperbody_C = "40ce1132-901e-431f-92a1-3784d26f3dfc",
    Humans_Female_Armor_Platemail_A_Upperbody_D = "f7f24ada-23ea-46c6-bf03-6f42ccfc6b86",
    Humans_Female_Armor_Platemail_A_Upperbody_E = "474ed8fa-28bb-404f-b207-e76a68235c55",
    Humans_Female_Armor_Platemail_A_Upperbody_F = "ae2bde1d-4e48-41c7-909b-e0d234be915a",
    Humans_Female_Paladin_A_Upperbody_A = "603cf5f5-243a-4e88-bec1-63c69b3ec18b",
    Humans_Female_Paladin_A_Upperbody_B = "3f3d5634-f13a-448b-bdb7-3efd8cfcc798",
    Humans_Female_Paladin_A_Upperbody_C = "69239496-150e-4248-a5f1-918ff7a34cf9",
    Humans_Female_Armor_Chainmail_A_Upperbody_A = "b0735f3b-30c6-4f6a-b5b2-a9c7ec6f5222",
    Humans_Female_Armor_Chainmail_A_Upperbody_B = "bd87b1c2-00b7-4fe6-8df9-4d653cc25bd2",
    Humans_Female_Armor_Chainmail_A_Upperbody_C = "cb30db2c-2c8c-417f-8e54-eacff0fd7ebc",
    Humans_Female_Armor_Chainmail_A_Upperbody_D = "72be33dc-137c-4824-972b-2f42faa30455",
    Humans_Female_Armor_Chainmail_A_Upperbody_E = "a20711f4-acf3-42af-9524-7267191ade7d",
    Humans_Female_Armor_Chainmail_A_Upperbody_F = "f8249372-835a-478d-9bbc-996da08f9400",
    Humans_Female_Armor_Scalemail_A_Upperbody_A = "dac5d2ff-019a-41d3-a9a1-af123c39e862",
    Humans_Female_Armor_Scalemail_A_Upperbody_B = "0a2c2712-7f87-4365-b0b7-13bf7dc8cbf7",
    Humans_Female_Armor_Scalemail_A_Upperbody_C = "4e04b939-523b-4d40-aef4-3d7a0280076a",
    Humans_Female_Armor_Scalemail_A_Upperbody_D = "6249848c-6471-40b1-bbc7-07388224c1ab",
    Humans_Female_Armor_Scalemail_A_Upperbody_E = "107ed138-a081-4d67-a574-bc8276f0a551",
    Humans_Female_Armor_Scalemail_A_Upperbody_F = "2b035227-b6c3-49b1-a158-e5c3f297ef9d",
    Humans_Female_Armor_StarterChainmail_A_Upperbody_A = "b0aadbd5-f433-420b-b565-01f25fe686d0",
    Humans_Female_Armor_StarterChainmail_A_Upperbody_B = "d7d64df3-88b6-413d-be25-b2994c303439",
    Humans_Female_Armor_Leather_A_Upperbody_A_Cape = "eebff91e-f9fc-4242-be79-5d033c9fe343",
    Humans_Female_Armor_Leather_A_Upperbody_A = "9bcb7f8c-1f5f-4945-bbb8-34a1d5a40666",
    Humans_Female_Armor_Leather_A_Upperbody_B = "52aac319-d559-4fe1-9325-cae8a584dd82",
    Humans_Female_Armor_Leather_A_Upperbody_C = "9e302ac3-fdaf-40bf-8e8c-8d0837f4e284",
    Humans_Female_Armor_Leather_A_Upperbody_D = "fc88700e-c3fe-4382-9add-a7a24bf0ae1a",
    Humans_Female_Armor_Leather_A_Upperbody_E = "ff3ec4e4-e6b4-485e-a239-85e0cab982b2",
    Humans_Female_Armor_Leather_A_Upperbody_F = "5db101b5-5aeb-47d5-91c3-658442268cd8",
    Humans_Female_Armor_StarterLeather_A_Upperbody_A = "99243d07-1f34-43cc-94e4-1cbb60730007",
    Humans_Female_Armor_StarterLeather_A_Upperbody_B = "ac75fa7b-8ff4-451d-835d-91d2427079f0",
    Humans_Female_Paladin_Ranger_A_Upperbody_A = "3fbc701a-fec0-4610-a7bc-0046fb4acdfd",
    Humans_Female_Paladin_Ranger_A_Upperbody_B = "2b49dfd4-5ae4-4134-bd39-6a1fc730a152",
    Humans_Female_Paladin_Ranger_A_Upperbody_C = "409bb6f5-bd08-4a26-aea3-8d41868dd0c4",
    Humans_Female_Armor_Mage_A_Upperbody_A = "bdccfa44-5aec-417c-8311-48894d67e036",
    Humans_Female_Armor_Mage_B_Upperbody_A = "6b82bd31-2898-4087-984a-eca1df3ef1e4",
    Humans_Female_Armor_Mage_C_Upperbody_A = "3b6d4f69-bc58-4859-873e-6f06208fcbd2",
    Humans_Female_Armor_Paladin_Priest_A_Upperbody_A = "a5bec94d-dfae-4bca-b819-4a614bd08ec7",
    Humans_Female_Paladin_Warlock_A_Upperbody_A = "b38239c1-ed76-482f-85d5-3e7e2bf14cd2",
    Humans_Female_Paladin_Warlock_A_Upperbody_B = "66e04771-2aaa-4830-8de5-0de3d3f0b0ee",
    Humans_Female_Paladin_Warlock_A_Upperbody_C = "f4fef28e-e882-481f-a9c0-bc55b92d2f5b",
    Humans_Female_Robe_Mage_A_Upperbody_A = "61c8c417-aa3f-447a-a610-8ef1eeda34ea",
    Humans_Female_Robe_Mage_B_Upperbody_A = "c18158b7-3885-4728-9b30-245d00dd35fe",
    Humans_Female_Clothing_Civilian_Poor_A_Upperbody_A = "d38aae9f-f9d4-46c6-b5a9-19806b73da75",
    Humans_Female_Clothing_Civilian_Poor_A_Upperbody_B = "e1dc53e7-7872-41b9-8b29-1688389cfb7f",
    Humans_Female_Clothing_Civilian_Poor_B_Upperbody_A = "0dbd495e-cdb8-4acf-8531-0e369164facf",
    Humans_Female_Clothing_Civilian_Poor_C_Upperbody_A = "1f00c217-b2d4-4e01-8a2b-51cf044b476f",
    Humans_Female_Clothing_Civilian_Poor_C_Upperbody_B = "7e4124c9-c401-4686-bfe8-3e3d47418a42",
    Humans_Female_Clothing_Civilian_Poor_D_Upperbody_A = "66941eb6-cf52-42fd-9ac2-2477a3b62be4",
    Humans_Female_Clothing_Civilian_Poor_D_Upperbody_Lohse = "a6dde08a-4a49-4445-94d2-a95aea67c66b",
    Humans_Female_Clothing_Civilian_Rich_A_Upperbody_A = "fb872684-7793-4578-a838-09385093472a",
    Humans_Female_Clothing_Civilian_Rich_B_Upperbody_A = "e52a65d0-3937-4aac-9fcf-23b5df4ca4f2",
    Humans_Female_Clothing_Civilian_Rich_C_Upperbody_A = "ff15e313-26c1-48df-b2d3-840b1e355150",
    Humans_Female_Clothing_Civilian_Rich_D_Upperbody_A = "c4f81816-958d-454b-b469-200b196dd254",
    Humans_Female_Clothing_Worker_Blacksmith_A_Upperbody_A = "589f6411-2c0b-4b2b-a57a-64e1f66b220d",
    Humans_Female_Clothing_Worker_Maid_A_Upperbody_A = "1ec16b02-ea54-4e1d-a51a-108e144e943d",
    Humans_Female_Clothing_Worker_Maid_B_Upperbody_A = "18dfa038-72aa-4805-8e54-6388759e57a8",
    Humans_Female_Clothing_Worker_Merchant_A_Upperbody_A = "cbd3e490-d360-4f25-b230-48ae51b02d02",
    Humans_Female_Robe_Purge_A_Upperbody_A = "45d7c5ab-aa04-4dea-a010-325566c0577f",
    Humans_Female_Robe_Purge_A_Upperbody_B = "af67bf91-36c9-418d-9e0d-f9911c611b3a",
    Humans_Female_Armor_Blackring_A_Upperbody_A = "30ea3219-b3ed-4f86-ac9c-feb9cb6edaf2",
    Humans_Female_Armor_Blackring_A_Upperbody_B = "fe2a27e5-50de-4f4c-a28c-bb781a0e891a",
    Humans_Female_Blackring_Witch_A_Upperbody_A = "1b944916-c70c-4612-bf4f-6e2e4979a3a0",
    Humans_Female_Redfaction_Inquisitor_A_Upperbody_A = "b127091b-75eb-40b1-89b2-5a10d2323a3e",
    Humans_Female_Redfaction_Inquisitor_A_Upperbody_B = "24c4116a-b707-40f2-b25c-e36a43d62037",
    Humans_Female_Redfaction_Priest_A_UpperBody_A = "5be85962-e17a-4604-b387-1fe6657cabda",
    Humans_Female_RedFaction_Ranger_A_UpperBody_A = "0c847515-2535-46c6-9284-dd9b6d3459d7",
}

CharacterVisualResources.Humans.Female.Arms = {
    Humans_Female_Body_Naked_A_Arms_A = "e1a76e4e-f16b-4773-830f-c2fee8161b4e",
    Humans_Female_Armor_Guard_A_Arms_A = "e1f7f82d-cf53-4d48-88a7-b4cb1a70b101",
    Humans_Female_Armor_Platemail_A_Arms_A = "4bc3cf29-d39f-4a46-9ea5-14d365b8e11c",
    Humans_Female_Paladin_A_Arms_A = "67c13332-aba4-4bae-b877-7ea75c8c5c7c",
    Humans_Female_Armor_Chainmail_A_Arms_A = "adb05c44-51c3-4cc7-a010-9fdbbb66ad5f",
    Humans_Female_Armor_Scalemail_A_Arms_A = "e9a73bc4-a385-40ce-9bd9-f258b2bf75d3",
    Humans_Female_Armor_StarterChainmail_A_Arms_A = "a7d34574-636f-4ef9-987f-9ee802d25a5b",
    Humans_Female_Armor_Leather_A_Arms_A = "93770735-ec3d-40e3-aa1a-13867e996f44",
    Humans_Female_Armor_StarterLeather_A_Arms_A = "e26827a0-9d62-4155-8b72-1b51ff9d20b5",
    Humans_Female_Armor_Mage_A_Arms_A = "1eb10349-c6ce-4f1e-8489-95072d31ee4f",
    Humans_Female_Armor_Mage_B_Arms_A = "b3f7dc27-5ddc-4127-b0c1-7090309e29bc",
    Humans_Female_Armor_Mage_C_Arms_A = "196cd81c-33e3-4910-acec-38ef2a3edbcf",
    Humans_Female_Clothing_Worker_Blacksmith_A_Arms_A = "89264116-fdae-4d36-9ff1-9ce01864cd5e",
    Humans_Female_Armor_Blackring_A_Arms_A = "0f0658c5-5064-4b80-ac2e-7ff69a19b046",
}

CharacterVisualResources.Humans.Female.Legs = {
    Humans_Female_Body_Naked_A_Lowerbody_A = "cf469ab0-ae6b-4f0b-b616-648235b5f499",
    Humans_Female_Body_Naked_Skinny_A_Lowerbody_A = "194d1ae7-3bee-4512-99f5-3b920d314840",
    Humans_Female_Armor_Guard_A_Lowerbody_A = "57f846b2-0a1c-4f4b-b7cb-c2e106fa44bc",
    Humans_Female_Armor_Platemail_A_Lowerbody_A = "828cea22-0f5d-48ac-bf4a-a9338bb971d9",
    Humans_Female_Paladin_A_Lowerbody_A = "2b45dd21-13b2-4760-ab32-6d404e56c0b3",
    Humans_Female_Paladin_A_Lowerbody_B = "6dff73b4-8bbc-47a4-ac2c-b57d0b90d8c2",
    Humans_Female_Armor_Chainmail_A_Lowerbody_A = "0cc32dc5-d9a6-46e5-b941-807116d42fe5",
    Humans_Female_Armor_Scalemail_A_Lowerbody_A = "b3efe37f-cae2-4623-aa26-bcecac315210",
    Humans_Female_Armor_StarterChainmail_A_Lowerbody_A = "b867cc3a-6fde-4c1c-8a44-f14618234a8c",
    Humans_Female_Armor_Leather_A_Lowerbody_A = "37f2e3aa-7ce9-4985-aa83-e9e27da4fe24",
    Humans_Female_Armor_StarterLeather_A_Lowerbody_A = "26102e63-5dec-48b1-bc55-b98fa52797ac",
    Humans_Female_Paladin_Ranger_A_Lowerbody_A = "1a5772a0-954b-438d-acc5-b541752ca33b",
    Humans_Female_Armor_Mage_A_Lowerbody_A = "a40e2039-c01a-4215-bea7-dc0e2d10335f",
    Humans_Female_Armor_Mage_B_Lowerbody_A = "23c29696-9dc3-44ba-8fb8-29d3c83d429e",
    Humans_Female_Armor_Mage_C_Lowerbody_A = "2dbb573b-2a2c-4baf-be39-b6a766cd9fc4",
    Humans_Female_Armor_Paladin_Priest_A_Lowerbody_A = "10696119-fa3b-4f91-84de-aa4b843d43c1",
    Humans_Female_Paladin_Warlock_A_Lowerbody_A = "efdf53d2-66e0-4ffc-ac46-a3662b085de7",
    Humans_Female_Robe_Mage_A_Lowerbody_A = "aecb9f1d-5dae-4faa-9156-0fd17185810e",
    Humans_Female_Robe_Mage_B_Lowerbody_A = "83bc309f-13ee-495b-ae06-6d3de0874463",
    Humans_Female_Clothing_A_LowerBody_A = "f2239806-26aa-4f04-9c23-dec6376eceee",
    Humans_Female_Clothing_B_Lowerbody_A = "42fa4f68-8cfe-4498-80b1-ffd374fade13",
    Humans_Female_Clothing_Civilian_Poor_A_Lowerbody_A = "4564c74f-1018-43a6-b720-48d4d495ec4b",
    Humans_Female_Clothing_Civilian_Poor_B_Lowerbody_A = "f993e313-fc52-4684-8ad4-be05ff95cb7d",
    Humans_Female_Clothing_Civilian_Poor_C_Lowerbody_A = "d62ef117-c4bc-4ee6-ae44-0424aab67260",
    Humans_Female_Clothing_Civilian_Poor_D_Lowerbody_A = "c61b3d43-bec8-4bda-b849-6d1acc4aedeb",
    Humans_Female_Clothing_Civilian_Rich_A_Lowerbody_A = "7b5731cc-c727-4673-8eeb-e46b1a53c490",
    Humans_Female_Clothing_Civilian_Rich_B_Lowerbody_A = "ea6b6e08-c5ee-4abb-a5e0-216c8e47fd91",
    Humans_Female_Clothing_Civilian_Rich_C_Lowerbody_A = "68408c95-9c0a-4ad8-ae94-72f8e95b9446",
    Humans_Female_Clothing_Civilian_Rich_D_Lowerbody_A = "89629328-d883-45a6-8106-e893c5056b82",
    Humans_Female_Clothing_Worker_Blacksmith_A_Lowerbody_A = "cd8b1183-00f2-49c3-9e9d-1604d9d8b454",
    Humans_Female_Clothing_Worker_Maid_A_Lowerbody_A = "954aae37-45f8-4ff7-a27c-1d5e48399ce9",
    Humans_Female_Clothing_Worker_Maid_B_Lowerbody_A = "772d3cb7-e66b-4757-9897-4e85c1a9260a",
    Humans_Female_Clothing_Worker_Merchant_A_Lowerbody_A = "6ef78f13-57d8-43de-b176-c5be30bbc3ce",
    Humans_Female_Robe_Purge_A_Lowerbody_A = "963615b4-9dc4-46cd-a82f-a4891b7490e1",
    Humans_Female_Robe_Purge_A_Lowerbody_B = "a8e8fe5e-48a5-4ecd-9a54-ab9049fb4fbe",
    Humans_Female_Armor_Blackring_A_Lowerbody_A = "fc874095-8cf1-4ce3-9ee8-771c7c9c43f6",
    Humans_Female_Blackring_Witch_A_Lowerbody_A = "a03690ef-948d-4836-96e0-3016fa940292",
    Humans_Female_Redfaction_Inquisitor_A_Lowerbody_A = "ba5b2c46-daf3-42f2-87b7-4ac206ce3556",
    Humans_Female_RedFaction_Priest_A_Lowerbody_A = "e6544cd2-0279-48cc-8abd-e7ea1bd8e6ad",
    Humans_Female_RedFaction_Ranger_A_Lowerbody_A = "247e1c6c-5a7b-4096-b5b2-d91014a2dbf0",
}

CharacterVisualResources.Humans.Female.Boots = {
    Humans_Female_Body_Naked_A_Legs_A = "d310c174-cce5-4c40-a807-e00ed037adb1",
    Humans_Female_Armor_Guard_A_Legs_A = "0ac41748-b099-41c7-a1bc-5495c36b1577",
    Humans_Female_Armor_Platemail_A_Legs_A = "daa0d5cd-75f3-436a-be4d-fd7c1f4305f3",
    Humans_Female_Paladin_A_Legs_A = "10c31748-dfc3-45df-b9d0-c72734351983",
    Humans_Female_Armor_Chainmail_A_Legs_A = "e2324791-7af5-4c00-afa1-18fe021506bc",
    Humans_Female_Armor_Scalemail_A_Legs_A = "e03b7850-4517-44c8-be7c-8bc6e95165c9",
    Humans_Female_Armor_StarterChainmail_A_Legs_A = "b452924f-b42c-4f8c-b913-4971ca23994d",
    Humans_Female_Armor_Leather_A_Legs_A = "3359c876-f0df-4ffc-a74d-1c3d4f6187b9",
    Humans_Female_Armor_StarterLeather_A_Legs_A = "7621e9ac-2f45-4fc0-9fbe-c970d7b00299",
    Humans_Female_Armor_Mage_B_Legs_A = "62cc71e3-f59a-436e-86ee-11167ca08a6e",
    Humans_Female_Armor_Mage_C_Legs_A = "059c373b-8d70-406c-bde7-5e12e13fa909",
    Humans_Female_Clothing_Civilian_Poor_C_Legs_A = "f84a1698-fd0d-4f1e-a0fb-1cddd45db4ec",
    Humans_Female_Clothing_Civilian_Poor_D_Legs_A = "d20a848a-0cb9-489d-aa27-80f4ac4cc458",
    Humans_Female_Clothing_Worker_Blacksmith_A_Legs_A = "e99ee05a-d6a8-41a0-8430-40fed23536a2",
    Humans_Female_Clothing_Worker_Merchant_A_Legs_A = "7d853305-ee2b-4059-b9f6-19b45e245e45",
    Humans_Female_Armor_Blackring_A_Legs_A = "be6fe19a-9035-41f4-9452-49486c50e5c9",
    Humans_Female_Skeleton_Armor_StarterChainmail_A_Legs_A = "b83592b4-eae3-46be-866e-2f3fea359aac",
    Humans_Female_Skeleton_Armor_StarterLeather_A_Legs_A = "d19ea2f5-7e9c-44b1-b39d-7870cd822c72",
    Humans_Female_Skeleton_Armor_Mage_C_Legs_A = "7d878e80-991d-4c1c-ab8d-d95517e297e4",
    Humans_Female_Skeleton_Clothing_Civilian_Poor_C_Legs_A = "9d3e9036-127d-46fd-be33-507f193b82a0",
    Humans_Female_Skeleton_Clothing_Worker_Blacksmith_A_Legs_A = "24a39496-8138-4e05-ba17-7bdb7fafc5ce",
    Humans_Female_Skeleton_Clothing_Worker_Merchant_A_Legs_A = "459d3085-d0c8-4900-a5d7-0edf5a57623a",
    Humans_Female_Skeleton_Robe_Purge_A_Legs_C = "0d453c98-69a9-40dc-ad05-05543d72fc89",
}

CharacterVisualResources.Humans.Female.Fullbody = {
    Humans_Female_Armor_Mage_A_Fullbody_A = "3c18b048-7f77-41ae-a0ed-146649850392",
    ProxyMesh_Humans_Hero_Female_Fullbody = "87ebb53d-0496-469f-a3c4-b21fba83532b",
}

CharacterVisualResources.Humans.Female.Cape = {
    Humans_Female_Paladin_A_Cape_A = "a4549729-345a-430d-970e-96966d5a34ab",
    Humans_Female_Paladin_Warlock_A_Cape_A = "01a82c98-73b8-4d3e-90b0-9688d84c7ce7",
}

CharacterVisualResources.Humans.Female.Shoulders = {
    Humans_Female_Armor_Blackring_A_Shoulders_A = "bd1b10c0-abdc-4630-b601-7321400a0e14",
    Humans_Female_Armor_Guard_A_Shoulders_A = "b1e6cdd0-0df4-4b77-9223-3b6360d59650",
    Humans_Female_Armor_Platemail_A_Shoulders_A = "879184f4-33b3-4ed2-8640-a6def836ac6b",
    Humans_Female_Paladin_A_Shoulders_A = "01330d9e-96df-42e7-b76d-ed0521a32d59",
    Humans_Female_Armor_Chainmail_A_Shoulder_A = "6c5b340e-6c7e-4380-8206-acf9d9c9fff3",
    Humans_Female_Armor_Scalemail_A_Shoulders_A = "ad88efd2-6f79-4c14-99e1-b8fce7dbaaf7",
    Humans_Female_Armor_Leather_A_Shoulders_A = "b3dd5839-a2a8-49bd-ad6f-ed8b50bf03d3",
    Humans_Female_Paladin_Ranger_A_Shoulders_A = "e95ae70e-ac1b-40c4-8ba1-36f0165ae239",
    Humans_Female_Paladin_Warlock_A_Shoulders_A = "a7792f8e-f6ce-4905-9adf-3d86fa103eb8",
}

CharacterVisualResources.Humans.Female.Misc = {
    Humans_Female_Clothing_UNIQUE_Blindfolds_A = "ed6bb684-d29f-43f3-8782-df3b5b0179d5",
    Humans_Female_Redfaction_Priest_A_Prop_A = "47740f7c-34fb-4467-a8ae-6f0f0978ed8b",
}