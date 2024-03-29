GM Tools : Ultimate GM Toolbox Changelog

# 0.12.12.23
Fixes
* LoseControl and Dominate Mind fix shall now be more accurate. It shouldn't make players triggering Dominate Mind keeping the UI of the victim when it's their turn anymore. /!\ WARNING /!\ : there is still an issue. A character victim of Charm cannot be charmed a second time, unless you go back to the GM view and give briefly the control to AI before possessing again.
* The GM can now go back to the GM view when possessing a summon or a follower. It will avoid situations where the GM is stuck in a possessed character and cannot go back without reloading the save.
* The fix above shall also make so the AI or players doesn't randomly take control of possessed characters

New
* REQUIRE LeaderLib (load order : above UGMT): Attributes and abilities now have a context menu to set the boost, base stat, give points and reset the boost. You have now more powers on the stats of the characters and one of the biggest advantage of using the context menu is that it doesn't reset the HP/armours during combat if you change stats through the context menu

# 0.11.11.21
Fix
* Added a missing line for the faction relation fixer

# 0.11.11.20
New
* Included a host mod list modification warning. That way, people that don't know about the lack of sync between client and server mod list introduced by Gift Bag 2 won't be screwed by it
* Included a base GM faction fixer, since something is sometimes causing relations between factions to change

# 0.11.10.19
New
* Included an experimental fix for LoseControl statuses when the GM is possessing the characters
* Included a new tool to randomize visual sets
* Included a new tool to fade the screens of the players (still lack some feedback, will work on it in the future)

# 0.10.9.16
New
* Included a new tool to remove (destroyed) items
* Added a new command to do a stat search

# 0.10.9.15
Fixes
* Selection isn't bugged after using Transform tool anymore
* The whole selection system isn't broken anymore after deleting a targeted character

# 0.10.8.13
New
* Selected and Targeted now have a new FX that is visible by the GM only.

# 0.10.7.12
New
* Added a Respec command for quick respec of a PC without the need of going into Party Reroll and have the Polymorph issue

Fixes
* Animations should now linger through map reloads

Misc
* Project files re-organized for better clarity

# 0.10.5.10
New
* Added additionnal buttons on the top bar
* Added Animations support (see https://docs.larian.game/Standard_Character_Animations for knowing which animations you can set)
* Added Scaling support
* Added some common Osiris commands as easy console commands

Fixes
* Shroud manager should now work correctly

Known issues
* The status manager still have naming issues and might not synchronize with client corectly yet
