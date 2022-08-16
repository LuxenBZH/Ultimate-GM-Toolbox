local function ClearFromOsiUI()
    -- ClearSelectionAndTarget()
end

Ext.RegisterNetListener("UGM_Hotbar_UnselectAll", ClearFromOsiUI)

local function ManageLockUI()
    if PersistentVars.lock then 
        PersistentVars.lock = false
        print("Lock disabled")
    else 
        PersistentVars.lock = true
        print("Lock enabled")
    end
end

Ext.RegisterNetListener("UGM_Hotbar_SelectionLock", ManageLockUI)

local function ToggleAnimOnClickUI()
    if animOnClick then
        animOnClick = false
    else
        animOnClick = true
    end
end

Ext.RegisterNetListener("UGM_Hotbar_ToggleBark", ToggleAnimOnClickUI)

local function StartFollowingUI()
    FollowTarget(nil, "GM_Start_Follow")
end

Ext.RegisterNetListener("UGM_Hotbar_StartFollow", StartFollowingUI)

local function StoryFreezeUI()
    if GetTableSize(selected) < 1 then
        for char,x in pairs(SelectionManager:GetSelectedCharacters()) do
            if HasActiveStatus(char, "GM_STORYFREEZE") == 0 then
                CharacterFreeze(char)
                ApplyStatus(char, "GM_STORYFREEZE", -1.0)
            else
                CharacterUnfreeze(char)
                RemoveStatus(char, "GM_STORYFREEZE")
            end
        end
    else
        for char,x in pairs(SelectionManager:GetSelectedCharacters()) do
            if HasActiveStatus(char, "GM_STORYFREEZE") == 0 then
                CharacterFreeze(char)
                ApplyStatus(char, "GM_STORYFREEZE", -1.0)
            else
                CharacterUnfreeze(char)
                RemoveStatus(char, "GM_STORYFREEZE")
            end
        end
    end
end

Ext.RegisterNetListener("UGM_Hotbar_StoryFreeze", StoryFreezeUI)