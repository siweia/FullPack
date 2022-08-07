# <DBM> World Bosses (Shadowlands)

## [9.2.28](https://github.com/DeadlyBossMods/DBM-Retail/tree/9.2.28) (2022-08-07)
[Full Changelog](https://github.com/DeadlyBossMods/DBM-Retail/compare/9.2.27...9.2.28) [Previous Releases](https://github.com/DeadlyBossMods/DBM-Retail/releases)

- pre new retail tag  
- Update localization.ru.lua (#147)  
- Sennarth drycode for Vault of Incarnates.  
- Few timer tweaks from fated Castle Nathria  
- Add ability to block mods from engaging if another boss is already engaged  
- Fix affix spell IDs used as table keys (#800)  
- Update zhTW (#145)  
- Upd localization.ru.lua (#146) Add Wago word.  
- Fix lua error in initial timers  
- Update koKR (#144)  
- forgot to disable extender on AI timer for now  
- last api update for night  
- update kael api usage  
- of all the things to fail in last commit...  
- This is most convoluted hack job I've ever had to put together for a single mod. Raid affixes are a nightmare. Needless to say, following updates applied  
     - Timers should be far more accurat accouning for the various hacky ways blizzard stops and restarts or pauses or ICDs affix abilities on a per boss basis.  
- yet another api revision  
- Revise affix api for niche cases  
- upgrade callback to fit more conditions  
- Start hooking up module callbacks  
- create an affix event callback that affix mods can use to stop/restart affix timers without registering their own events.  
- Add more zoneID's to pvpZones  
- bump alpha  
