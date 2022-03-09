# <DBM> World Bosses (Shadowlands)

## [9.2.5](https://github.com/DeadlyBossMods/DBM-Retail/tree/9.2.5) (2022-03-09)
[Full Changelog](https://github.com/DeadlyBossMods/DBM-Retail/compare/9.2.4...9.2.5) [Previous Releases](https://github.com/DeadlyBossMods/DBM-Retail/releases)

- ready new release now that LFR updated, changed bosses updated, and last 3 updated. :)  
- Updated timers on guardian, skolex and xymox for LFR difficulty  
- it would be easier though if it could find mor than one at a time  
- not where I expected the errors :D  
- Jailer live update from normal WCL logs. these timers may not be accurate on heroic, but no public data yet. Fortunately the mod restructuring will make plugging heroic timers in a breeze if they do differ.  
- typo fix  
- Rygelon updated to live data minus one spel since it has no event in combat log yet.  
- Update Lihuvim for march 8th hotfixes  
    (forgot I hadn't pushed this)  
- Imagine how much time that could be saved if luacheck could find more than 1 error at a time.  
- Fix bad WCL copy/paste  
- Push finished lords of dread mod. well mostly finished, will tweak it after some hotfixes  
- extend auto marking for adds to mythic overseers s well on Xymox  
- Ah lua can be fickle sometimes, fix a lua error in commented code, because why not. Closes #742  
- Update hakkar timers to 9.1.5 behavior (thanks for someone finally reporting this :D)  
- flag anduins hope marking as friendly allowed, so it actually works  
- Update localization.fr.lua (#79)  
- support up to 8 boss unit ids, apparently 6-8 were added in 9.2?  
- fix lua error and fix antispam IDs  
- prep for upcoming combat log changes. Once they are actually live I'll review the mods and update timers accordingly now that it'll be possible to do without transcriptor logs  
- Update localization.cn.lua (#82)  
- Add support for ring casts now that they are in combat log :D  
- Fix wrong spell ID in times table  
- bump alpha, again  
