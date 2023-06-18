# Details! Damage Meter

## [Details.20230520.11023.151-21-ga2c5e92](https://github.com/Tercioo/Details-Damage-Meter/tree/a2c5e926c9c5e5b070ef4001d0bc7b84c5977000) (2023-06-14)
[Full Changelog](https://github.com/Tercioo/Details-Damage-Meter/compare/Details.20230520.11023.151...a2c5e926c9c5e5b070ef4001d0bc7b84c5977000) 

- More bug fixes for destroyed combats; TimeData code modernizations  
- More fixes for the "Report to Discord" bugs; Implementations to show plugins in the breakdown window;  
- Overhall on the script for Damage Taken by Spell, now it uses modern Details API  
- fixed plugins\_statusbar error  
- Code cleanups, Bug Fixes, Show plugins in the breakdown window, added damage taken and friendly fire tp breakdown  
- Split the window\_playerbreakdown\_spells.lua into three more files  
- Time Machine overhaul  
- When destroying a combat, it'll call DestroyActor to destroy each actor on each actorContainer  
- Fixed activity time not working when the user uses effective time  
- Code Cleanup  
- Code Revamp; Fixed plugins\_statusbar.lua:664: attempt to call method 'GetCombatTime' (a nil value)  
- container\_segments 424 error: now it is ensuring to wipe the combatObject that got removed from containerSegments  
- classic toc rename  
- Merge branch 'master' of https://github.com/Tercioo/Details-Damage-Meter  
- Framework Update and Code improvements  
- Merge pull request #545 from Flamanis/AddIcons  
    Add IconTexture directive to the TOCs  
- Add IconTexture directive to the TOCs  
    Uses the Minimap icon. If a plugin is installed without the base Details it will show a blank icon.  
- Disabled time captures for spellTables, this should be done by a plugin  
- Fixing stuff from latest alpha and more development  
- Replacing table.wipe with Details:Destroy()  
- Renamed variables, code cleanup  
