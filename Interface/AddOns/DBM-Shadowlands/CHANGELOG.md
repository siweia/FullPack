# <DBM> World Bosses (Shadowlands)

## [9.2.36](https://github.com/DeadlyBossMods/DBM-Retail/tree/9.2.36) (2022-10-07)
[Full Changelog](https://github.com/DeadlyBossMods/DBM-Retail/compare/9.2.35...9.2.36) [Previous Releases](https://github.com/DeadlyBossMods/DBM-Retail/releases)

- prep new tags for wrath and retail/dragonflight beta  
- Fixed a bug where wrong spellid as used for Sticky webbing, also lowered stack count for it to match more recent changes  
    Added mythic mechanic to Terros, but not sure what to do with icons yet until number of targets known. if it's everyone then icons will need asci art.  
- Standardize function names, which also upgrades many old mods to use newer function automatically.  
- yay for fixing more classic blizzard bugs. Allow mods to hard code ignoring ENCOUNTER\_START if another boss is already engaged. This way when drakes land on sarth (and fire bad ENCOUNTER\_START events when they do), DBM won't think another boss is being pulled.  
- - Further optimized DBMs GetEnemyUnitIdByGUID function allow boss only token checks as needed, as well as made it not return useless string when it fails, it should nil out instead like a normal function. - Fixed a bug where isTanking function returned true for all targets, even when \"onlyRequested\" was passed - Fixed some bad code in isTanking hat was literally taking an already known token, changing it to guid, then requesting the token again and doing a target scan for literally no reason, just for a simple target of target check - Cleaned up a lot of redundant duplicate code by using DBMs GetEnemyUnitIdByGUID function directly - Cleaned up a lot of redundant duplicate code in the GetBossTarget/targetscanner code to also make use of GetEnemyUnitIdByGUID  
- fix bad copy paste  
- Optimize IsTanking check in dragonflight when passing enemy guid instead of token (usually done for council boss fights or boss adds that can't gaurentee unit is always boss1 while at it, improved comments and arg names so someone other than me can understand that function a little better :D  
- disable debug for affixes displaying for everyone. make it debug only.  
- Kurog update, still a lot more to do but no means to do it now (the entire altar detection isn't even possible with existing code, need blizzard to add some events). for now timers won't display active alter spell icons or spell names, just empty strings and generic icons, timers will be accurate though.  
- Update localization.ru.lua (#810)  
- make artemis happy  
- Mod is still far from ready, but pushing locales now  
- Push mostly finished broodkeeper. This mod may get more tweaks  
- Release completed Dathea mod  
- Fix typos  
- make rock blast icon marking off by default  
    Added (also off by default) optional marking of awakened earth targets  
- fix error  
- Update Terros from testing  
- fix dumb  
- Push eranog post testing mod  
- bump alpha  
- Don't forward blank or nil raid boss whispers, especially since blizzard has ignored the bug with blank syncs causing disconnects since january (https://github.com/Stanzilla/WoWUIBugs/issues/216) This will resolve dalaran disconnect  
- works better if you define it as a function  
- Fix dropdowns on beta  
- Fix DBM GUI Tabs  
- Add a couple missed things  
- bump alphas  
