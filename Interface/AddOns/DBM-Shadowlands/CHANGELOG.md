# <DBM> World Bosses (Shadowlands)

## [9.1.22](https://github.com/DeadlyBossMods/DBM-Retail/tree/9.1.22) (2021-12-08)
[Full Changelog](https://github.com/DeadlyBossMods/DBM-Retail/compare/9.1.21...9.1.22) [Previous Releases](https://github.com/DeadlyBossMods/DBM-Retail/releases)

- Prep new tags across board  
- Jailer drycode completed  
- Infoframe update  
     - Updated all infoframes to support total absorb being unknown and be an optional arg (when not given it returns numeric value instead of percent  
     - Removed unused variable  
     - Also updated the player absorb check to work without spell input optionally to be a generic total absorb checker  
- Update localization.tw.lua (#26)  
- Update commonlocal.tw.lua (#25)  
- Fixed a bug that caused mage tower challenges to incorrectly report as scenario mods instead of solo challenges, This caused incorrect combat reporting and stats tracking.  
- Minor timer adjustments to sylvanas, Closes #699  
- Tweaks to nerzhul timers, closes #698  
- Update localization.ru.lua (#24)  
    Minor typos.  
- Update localization.ru.lua (#23)  
    Minor typos.  
- Silenced the unfinished mod throwing error  
- Just push this unfinished stuff too becuse i'm tired of stashing it  
- Fixed regression on Oryphrion  
    Adjusted some timers on first 3 bosses of sanctum. it almost feels like they tweeted Tarragrue's energy a little, or shortened duration of mist phase by about 2.6?  
- Push Skolex post testing update  
- Push finished Dausegne mod  
- Update koKR (#697)  
- Fix minor regression with infoframe headers  
- Fixed a bug on anduin I discovered while working on zovaal mod  
- Fix  
- More creature Id population  
- Oh, and his target scan is a bust, random targets but he actually clears target for cast  
- Antros CID is now known, world boss mod loading/combat is a go  
- Added Antros drycode, now that it's in journal. Non functioning until creatureID can be pulled tomorrow.  
- Add support for classic era difficulty IDs 184-186  
- Rename a boss  
- Update localization.cn.lua (#696)  
- Another day, another mod busted out. Full Lords of dread drycode  
- tweak to last  
- Optimize CheckDispelFilter to return cached value when checking multiple debuffs similtaniously to avoid calling GetSpellCooldown over 100x in a single frame in rare cases.  
- Update koKR (#695)  
- ...  
- Full anduin drycode. Mod is a bit of an overachieve with flexible options. :)  
- Fix frame Hide cases for hyperlinks nad updatereminder  
- small tweak to used icons  
- Halondrus drycode  
- Fix incorrect difficulty ID (#22)  
- Missed some renames  
- Optimize updateInfoFrame calls;  
    - Localise twipe  
    - Remove redundant floor local  
- Add zhTW (#694)  
- Of all things I'd expect to error in that last commit....  
- Changed all retail mods to use new common locals location.  
    Added another 9.2 raid mod drycode.  
- Some "the nine" adjustments  
- Move journal icons to common locals too, that way nearly 100% of smaller mods can avoid using the cores much larger locals table for any reason.  
- Split common locals out of core so mods and gui elements that only need to access these only have to read or localize a much smaller table.  
- Fix case in Hyperlinks too.  
- Fixed regressions in notes and update popups  
- Fix dway usage. (Cleaner)  
- Fix dway usage.  
- 4/11  
- Make Mitalie happy  
- Add zhCN (#693)  
    * Create localization.cn.lua  
    * Update localization.kr.lua  
    Fix GetLocale() ~= "koKR"  
    * Update DBM-Sepulcher.toc  
- 3/11  
- More modules;  
    - Migrated Commands  
    - Migrated Hyperlinks  
    - Migrated Notes Editor  
    - Cleaned up a bit of Core Lua  
- Redunant IsLatestCodebase function  
- Migrate commands into modules  
- Luacheck unused variables.  
- Fixed previous commit  
- Fixed a positioning error within the GUI  
- Remove redundant nil returns  
- Dausegne drycode  
- Revert one bad change  
- Add KR locale for Sepulcher (#692)  
- Safer usage for removing values from tables;  
    - In cases where we iterate and remove, just use twipe (table.wipe)  
    - In cases where its ipairs, use tremove (table.remove), as it's a SAFE CAST, otherwise iterating it can corrupt  
- Fixed commit signing, and bumped alphas  
