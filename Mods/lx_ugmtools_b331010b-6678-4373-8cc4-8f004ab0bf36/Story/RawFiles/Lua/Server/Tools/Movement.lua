function RegisterPatrolBeacon(object, event)
    if event ~= "GM_Place_Patrol_Beacon" then return end
    for char,x in pairs(SelectionManager:GetSelectedCharacters()) do
        local beacons = PersistentVars[currentLevel].patrols[char]
        if beacons == nil then beacons = {} end
        local x,y,z = GetPosition(object)
        local size = GetTableSize(beacons)
        beacons[size+1] = {x,y,z}
        PersistentVars[currentLevel].patrols[char] = beacons
        Ext.Print("Added patrol point at ",x,y,z)
    end
end

Ext.RegisterOsirisListener("StoryEvent", 2, "before", RegisterPatrolBeacon)

function StartPatrol(object, event)
    if event ~= "GM_Start_Multipatrol" then return end
    for char,x in pairs(SelectionManager:GetSelectedCharacters()) do
        if GetTableSize(PersistentVars[currentLevel].patrols[char]) < 2 then return end
        local pos = PersistentVars[currentLevel].patrols[char][1]
        CharacterMoveToPosition(char, pos[1], pos[2], pos[3], 0, "UGM_Loop_Patrol")
        ApplyStatus(char, "GM_PATROLING", -1.0)
    end
end

Ext.RegisterOsirisListener("StoryEvent", 2, "before", StartPatrol)

local function LoopPatrol(char, event)
    if event ~= "UGM_Loop_Patrol" then return end
    local shiftedBeacons = ShiftTable(PersistentVars[currentLevel].patrols[char])
    local pos = shiftedBeacons[1]
    CharacterMoveToPosition(char, pos[1], pos[2], pos[3], 0, "UGM_Loop_Patrol")
    PersistentVars[currentLevel].patrols[char] = shiftedBeacons
    --Ext.Print(Ext.JsonStringify(PersistentVars[currentLevel].patrols[char]))
end

Ext.RegisterOsirisListener("StoryEvent", 2, "before", LoopPatrol)

local function ClearPatrol(char, status, causee)
    if Ext.GetGameState() ~= "Running" then return end
    if status ~= "GM_PATROLING" then return end
    CharacterPurgeQueue(char)
    PersistentVars[currentLevel].patrols[char] = nil
end

Ext.RegisterOsirisListener("CharacterStatusRemoved", 3, "before", ClearPatrol)

-- Regroup
local function Regroup(object, event)
    if event ~= "GM_Regroup" then return end
    if target == nil then return end
    local tx, ty, tz = GetPosition(target)
    local grid = {}
    for char, x in pairs(selected) do
        if char ~= target then
            
        end
    end
end

-- Move
local function GetClosest(item)
    local closest = nil
    local chosen = nil
    for char,x in pairs(SelectionManager:GetSelectedCharacters()) do
        local dist = GetDistanceTo(char, item)
        if closest == nil or closest > dist then closest = dist; chosen = char end
    end
    return chosen
end

function ClassicMove(object, event)
    if event ~= "GM_Move_Run" and event ~= "GM_Move_Walk" then return end
    local closest = GetClosest(object)
    local vx,vy,vz = GetPosition(object)
    local itemPos = {x = vx, y = vy, z = vz}
    --Ext.Print(Ext.JsonStringify(itemPos))
    vx, vy, vz = Osi.GetPosition(closest)
    local closestPos = {x = vx, y = vy, z = vz}
    local vector = SubtractCoordinates(itemPos, closestPos)
    for char,x in pairs(SelectionManager:GetSelectedCharacters()) do
        if HasActiveStatus(char, "GM_MOVING") == 1 then
            CharacterPurgeQueue(char)
        end
        vx, vy, vz = GetPosition(char)
        local pos = {x = vx, y = vy, z = vz}
        local destination = AddCoordinates(pos, vector)
        if event == "GM_Move_Run" then
            CharacterMoveToPosition(char, destination.x, destination.y, destination.z, 1, "NPC_Move_Done")
        elseif event == "GM_Move_Walk" then
            CharacterMoveToPosition(char, destination.x, destination.y, destination.z, 0, "NPC_Move_Done")
        end
        if HasActiveStatus(char, "GM_MOVING") == 0 then
            ApplyStatus(char, "GM_MOVING", -1.0, 1)
        end
    end
end

Ext.RegisterOsirisListener("StoryEvent", 2, "before", ClassicMove)

local function StopMove(char, status, causee)
    if status ~= "GM_MOVING" then return end
    CharacterPurgeQueue(char)
end

Ext.RegisterOsirisListener("CharacterStatusRemoved", 3, "before", StopMove)

local function MoveCompleted(object, event)
    if event ~= "NPC_Move_Done" then return end
    RemoveStatus(object, "GM_MOVING")
end

Ext.RegisterOsirisListener("StoryEvent", 2, "before", MoveCompleted)

-- Follow
function FollowTarget(item, event)
    if event ~= "GM_Start_Follow" then return end
    if SelectionManager.CurrentTarget == nil then print("No target!"); return end
    for char,x in pairs(SelectionManager:GetSelectedCharacters()) do
        Osi.ProcCharacterFollowCharacter(char, SelectionManager.CurrentTarget)
        ApplyStatus(char, "GM_FOLLOW", -1.0, 1)
        PersistentVars.Followers[char] = SelectionManager.CurrentTarget
    end
end

function LuaFollowTarget()
    FollowTarget(nil, "GM_Start_Follow")
end

Ext.RegisterOsirisListener("StoryEvent", 2, "before", FollowTarget)

local function StopFollow(char, status, causee)
    if status ~= "GM_FOLLOW" then return end
    Osi.ProcCharacterStopFollow(char)
    CharacterPurgeQueue(char)
    PersistentVars.Followers[char] = nil
end

Ext.RegisterOsirisListener("CharacterStatusRemoved", 3, "before", StopFollow)

-- Classes.OsirisHandler:RegisterListener("ObjectEnteredCombat", 2, "before", function(object, combatID)
--     Ext.Print("OSIRISTEST")
--     if ObjectIsCharacter(object) == 1 and HasActiveStatus(object, "GM_PATROLING") == 1 then
--         RemoveStatus(object, "GM_PATROLING")
--         Ext.Print("TEST")
--     end
-- end)

Ext.RegisterOsirisListener("ObjectEnteredCombat", 2, "before", function(object, combatID)
    if ObjectIsCharacter(object) == 1 and HasActiveStatus(object, "GM_PATROLING") == 1 then
        RemoveStatus(object, "GM_PATROLING")
    end
end)

local function GetClosestToPosition(pos)
    local closest = nil
    local chosen = nil
    for char,x in pairs(SelectionManager:GetSelectedCharacters()) do
        local dist = Ext.Math.Distance(Ext.GetCharacter(char).WorldPos, pos)
        if closest == nil or closest > dist then closest = dist; chosen = char end
    end
    return chosen
end

Ext.RegisterNetListener("UGMT_RightClickMove", function(call, payload, ...)
    if #SelectionManager.CurrentSelection == 0 then return end
    local infos = Ext.Json.Parse(payload)
    local closest = GetClosestToPosition(infos.WalkablePosition)
    local vector = SubtractCoordinates(infos.WalkablePosition, Ext.GetCharacter(closest).WorldPos)
    for char,x in pairs(SelectionManager:GetSelectedCharacters()) do
        if HasActiveStatus(char, "GM_MOVING") == 1 then
            CharacterPurgeQueue(char)
        end
        local destination = AddCoordinates(Ext.GetCharacter(char).WorldPos, vector)
        CharacterMoveToPosition(char, destination[1], destination[2], destination[3], tonumber(infos.Run), "NPC_Move_Done")
        if HasActiveStatus(char, "GM_MOVING") == 0 then
            ApplyStatus(char, "GM_MOVING", -1.0, 1)
        end
    end
    Ext.PostMessageToClient(CharacterGetHostCharacter(), "UGM_ClickMoveConfirmed", "")
end)