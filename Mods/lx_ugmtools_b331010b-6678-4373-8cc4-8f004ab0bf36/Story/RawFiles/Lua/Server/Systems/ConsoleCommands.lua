-- Console commands
local debugCommands = {
    Wipe = {"", "Wipe persistent vars table.", handle = function(params) PersistentVars = {}; LoadVars() end},
    PrintVars = {"", "Print persistent vars table", handle = function(params) Ext.Print(Ext.JsonStringify(PersistentVars)) end},
}

local utilityCommands = {
    ugm_shroudr = {"", "Regenerate entirely the level shroud. NOTE: only works in levels where shroud is activated.", handle = function() Ext.BroadcastMessage("UGM_Shroud_Manager", "Regenerate", nil) end},
    ugm_slock = {"", "Lock/Unlock the selections. A locked selection mean that the character won't be unselected after a tool use.", handle = function () ManageLock(nil, "GM_Lock_Switch") end},
    ugm_sswitch = {"", "Switch the selection type. In normal mode, you'll see an 'S' on the top of selected characters. In discreet mode, it's only shown in the console.", handle = function() SwitchSelectionType() end},
    ugm_setscale = {"<float>", "Set the character scale to the float value. Normal scale is 1.0, but it can vary. Not saved to templates, only on instances.", 
        handle = function(params)
            for character, s in pairs(SelectionManager:GetSelectedCharacters()) do
                Ext.BroadcastMessage("UGM_SetCharacterScale", Ext.GetCharacter(character).NetID..":"..tostring(params[1]), nil)
                PersistentVars[currentLevel].scale[character] = params[1]
            end
        end},
}

local statsCommands = {
    ugm_statabilityset = {"<ability> <value>", "Set the base ability of the character to the value. Use ability engine names.", handle = function(params) CharacterSetAbility(params[1], params[2]) end},
    ugm_statabilitygivepoint = {"<value>", "Give ability point(s) to the selected character(s).", handle = function(params) CharacterAddAbilityPoints(params[1]) end},
    ugm_statattributeset = {"<attribute> <value>", "Set the base attribute of the character to the value.", handle = function(params) CharacterSetAttribute(params[1], params[2]) end},
    ugm_statattributegivepoint = {"<value>", "Give attribute point(s) to the selected character(s).", handle = function(params) CharacterAddAbilityPoints(params[1]) end},
    ugm_stattalentset = {"<talent> <boolean>", "Give the talent as base (1 = yes, 0 = no)", handle = function(params) CharacterEnableTalent(params[1], params[2]) end},
    ugm_stattalentgivepoint = {"<value>", "Give talent point(s) to the selected character(s)", handle = function(params) CharacterAddTalentPoints(params[1]) end},
    ugm_statgiveskill = {"<skill>", "Give the skill to the selected character(s). Use engine names.", handle = function(params) CharacterGiveSkill(params[1]) end},
    ugm_statcheckskills = {"", "List all the skills the character possess.", handle = function(params) CharacterCheckSkills() end},
    ugm_statrespec = {"", "Respec the selected player characters", handle = function(params) Respec() end},
    ugm_statsearch = {"<mode> <type> <input>", "Search through all stats of the given type. Mode: e for looking through engine names, d to look into english display name. Type: Character, Weapon, Shield, Armor, SkillData, StatusData, Potion", handle = function(params) for i,j in pairs(UGM_StatSearchName(params[1], params[2], params[3])) do print(i.." "..j) end end}
}

local statusCommands = {
    ugm_showstatuses = {"", "Display the engine names of the visible statuses of the character in the console.", handle= function(params) UGM_ShowVisibleStatuses() end},
    ugm_setupstatus = {"<template> <name>", "Setup a new status ased on the template specified.", handle = function(params) CreateStatusFromTemplate(params[1], params[2]) end},
    ugm_setupstatusfinish = {"<keep>", "Finish the status setup. If keep = 1, the status will be saved. If keep = 0, the status will disappear upon reload.", handle = function(params) FinishStatusFromTemplate(params[1]) end},
    ugm_setstatusattribute = {"<attribute> <fixedBonus>", "Set the base bonus of the current status setup to provide the final bonus you input, instead of doing it manually. Works only for attributes.", handle = function(params) ModifyStatusAttributeBonus(params[1], params[2]) end},
    ugm_statusapply = {"<status> <duration>", "Apply status to the selected characters with the duration specified in turns. The status name should be the engine name, can be lowercase.",
        handle = function(params) UGM_ApplyStatus(params[1], params[2]) end},
}

local animationCommands = {
    ugm_talk = {"", "Toggle anim-on-click.", handle = function(params) ToggleBark() end},
    ugm_talktype = {"<type>", "Change talk type. Can be : normal, angry, sad, thankful, ignore.", handle = function(params) SetBarkType(params[1]) end},
    ugm_talkloop = {"<type>", "/!\\ EXPERIMENTAL /!\\ Make the character loop randomly in the talking animations of the specified type.", handle = function(params) StartTalkingAnimationLoop(params[1]) end},
    ugm_animate = {"<anim1> <anim2> ...", "/!\\ EXPERIMENTAL /!\\ Make the character loop randomly between the specified animations. Can be a single one, or multiple animations.", handle = function(params) StartCharacterAnimation(params) end},
    ugm_animloop = {"<animation>", "Make the character continuously loop on the specified animation.", handle = function(params) StartCharacterAnimationLoop(params[1]) end},
    ugm_animstop = {"", "Stop animations.", handle = function(params) StopAnimationLoop() end},
}

local categories = {
    animation = animationCommands,
    utility = utilityCommands,
    stats = statsCommands,
    status = statusCommands,
    debug = debugCommands
}

local allCommands = {}
for i,j in pairs(categories) do
    allCommands = TableConcatNoIndice(allCommands, j)
end

local UGM_consoleCommands = {
    Helpugm = {"", "Display this help", handle = function(params) return nil end},
}

-- local UGM_commandKeys = {}
-- for key, desc in pairs(UGM_consoleCommands) do
--     table.insert(UGM_commandKeys, key)
-- end
-- table.sort(UGM_commandKeys)

local function UGM_DisplayHelp(category)
    local commandList = {Helpugm = {"", "Display this help", handle = function(params) return nil end}}
    if category == "All" then
        commandList = allCommands
        table.sort(commandList)
    elseif category == nil then
        print("-------------- Ultimate GM Toolbox console help --------------")
        print("Use Helpugm to display help, with an argument for specific parts.")
        print("Categories : All, Animation, Utility, Stats, Status, Debug")
        print()
        return
    else
        commandList = categories[category]
    end
    if commandList == nil then return end
    print("-------------- Ultimate GM Toolbox console help --------------")
    for command, desc in pairs(commandList) do
        local desc = commandList[command]
        print(" - "..command.." "..desc[1])
        print("         "..desc[2])
    end
    print()
end

local function UGM_consoleCmd(cmd, ...)
	local params = {...}
	for i=1,10,1 do
		local par = params[i]
		if par == nil then break end
		if type(par) == "string" then
			par = par:gsub("&", " ")
			par = par:gsub("\\ ", "&")
			params[i] = par
		end
    end
    for command,desc in pairs(allCommands) do
        if cmd == command then desc.handle(params) end
    end
    if cmd == "Helpugm" then UGM_DisplayHelp(params[1]) end
end

-- Create console commands
for command,desc in pairs(allCommands) do
    Ext.RegisterConsoleCommand(command, UGM_consoleCmd)
end
