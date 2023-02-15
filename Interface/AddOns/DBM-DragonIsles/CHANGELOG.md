# <DBM> World Bosses (Dragonflight)

## [10.0.24](https://github.com/DeadlyBossMods/DBM-Retail/tree/10.0.24) (2023-02-14)
[Full Changelog](https://github.com/DeadlyBossMods/DBM-Retail/compare/10.0.23...10.0.24) [Previous Releases](https://github.com/DeadlyBossMods/DBM-Retail/releases)

- pre new core tags  
- adjust first intermission timer for heroic to match normal and LFR (assumed).  
- Update the \"isvalidWarning\" object  
- Fix DBT:ResetSkin not applying to current skin.  
- Update zhTW (GUI) (#185)  
- Update zhTW (Core) (#186)  
- Mini dragon patch 1 (#187)  
- tweak delay on wildfire watch step voice  
- Update localization.ru.lua (#184)  
- Update localization.ru.lua (#183)  
- Update koKR (#182)  
- fix lua errors  
- tweak code to handle not just solo raids, but also non solo raids with only 1 alive player  
- fixed lua errors with pointer references  
- Don't send sync if not needed In addition, notify user if a sync is received  
- another text fix.  
- tweak defaults  
- text fix  
- Fix render issue  
- tweaks  
- Additional section  
- fix extra word  
- further refinement  
- grammar  
- fix gui alignment issues  
- why luacheck didn't report that first two times...sigh  
- Update media options for event sounds for wrath classic  
- Fix guild combat message still showing for group you're in when you're not in instance at time of receipt (classic basically, it lets you release during a wipe). Sadly this breaks showing messages when you're sitting out which kinda sucks but #nochanges allows releasing during a wipe, have to filter that.  
- tweak  
- even better  
- Also add this, just in case  
- tweaks to last  
- Add more strings for more features being worked on  
- Update koKR (#181)  
- Update localization.ru.lua (#180)  
- Fix another potential problem  
- missed unschedule  
- refactor kurog and council sorted icon methods to externalize sorting from icon method, that way it can accurately be applied to player yells/warnings without secondary checks and ugliness  
- Fix last  
- Change absolute zero on kurog to use tank > melee > ranged > roster index sort priority, to match BW behavior and improve icon/yell compatability  
- fix language used on bedrock  
- Throttle adds and boss casting same ability at same time on kurog mythic  
- set difficultyIndex to 8 on challenge mode reset, otherwise the value remains 0 because it was only set on entering dungeon. Should hopefully fix M+ autologging.  
- fix option clarification  
- This got missed somehow  
- Further refine global disables and filters into more sub categories.  
- Fixed a bug where Kurog had empty category in GUI  
    Sennarth options will now group Wrapped in Webs and Sticky webbing sub abilities to parent ability Enveloping Webs in GUI  
    Fixed a bug where Infused Fallout showed up twice in GUI for Terros  
- Remove more unused  
- bump alpha  
