# <DBM> World Bosses (Shadowlands)

## [9.2.23](https://github.com/DeadlyBossMods/DBM-Retail/tree/9.2.23) (2022-07-26)
[Full Changelog](https://github.com/DeadlyBossMods/DBM-Retail/compare/9.2.22...9.2.23) [Previous Releases](https://github.com/DeadlyBossMods/DBM-Retail/releases)

- prep new tags of all the things  
- Fix area title not rendering.  
- Fix countdowns not working due to regression  
- err, and make artemis happy since the other parts of core do have nil checks  
- Fix test bars (and any other bar that doesn't have saved variables) so color type fallback is functional  
- Libspec still erros when trying to load it, but core will now avoid trying to access it in classic and still be fully functional  
- Revert \"Only run and register LibSpecialization for retail\" This reverts commit e62f02692217211942ac8d9edef5f3df523f6c6a.  
- Only run and register LibSpecialization for retail  
- bump wrath alpha  
- Prefer new wrath beta release  
- Fix last  
- Push finished Deios mod  
- Completed emberon mod  
- Fix challenge rendering error  
- Improve lost dwarves timer cancel handling  
- Remove blank usage.  
- Luacheck, my beautiful waifu  
- Fix title being undefined for CreateAbility  
- Fix RangeCheck for Evokers Blizzard is using warrior as placeholder, so shall we.  
- Fixed lua error on treemouth  
    More timer data on Sargha  
    Updated timer on Chargath  
    updated timer on Talondras  
- Another missed template  
- fix fallback code in applystyle  
- Full fix for test bars throwing errors on colorType 0  
- Initial basic DragonFlight support.  
- Dirtyfix for QuestWatchFrame not being in wrath.  
- Fix test bars erroring out. Check if the optionsDefault and optionName are both nil, and don't try to set a default, as it bugs out bars to think colorId is 0, and thusly, error.  
- Added zhTW (#783)  
- Fix a huge critical oversight in wrath classic, should solve mods not working/loading when playing a DK spec  
- Add support for wrath classic difficulty IDs for Heroic 10 and Heroic 25  
- special handling for instances that have diff stats type in wrath vs retail (ie Ulduar)  
- while at it, add support for dragonflight instance Ids to trivial and auto logger check  
- Fixed a bug where all special warnings were filtered in Wrath classic  
- less numpty  
- Switch to UNIT\_HEALTH\_FREQUENT in classic  
- Preliminary Talondras mod updates  
    Small data updates to Chargath and Magamatusk  
- Missed a classification  
- Evoker talent spec info  
- Fix up first two bosses in Uldaman from public logs. Lost dwarves still needs a lot more work with transcriptor to handle boat better.  
    Also fixed bad spell in trash mod for uldaman, and added 2 more spells  
- Some minor Neltharus tweaks from more log data from today, still too short. Wish these dungeons weren't so undertuned so could get better data. these updates will just trickle in for now.  
- Added several trash warnings to Uldaman  
    Finished Neltharus bosses with as much WCL data I could find from zone  
- Enable the two bosses added to journal in latest build  
- Fix template, to avoid running into that repeatedly  
-  .  
- Fixes  
- Chargath drycode pushed, working on getting other 3 out asap, even though addons disabled.  
- Push the kokia drycode, waiting on new build for other updates to avoid redundant work, since remaining fights were either WIP or NYI  
- Update koKR (DF) (#782)  
- Melidrussa Chillworn drycode  
- update party-DF zhCN (#780)  
- Fix some errors  
- Added CIDs for every dungeon and raid boss in Dragonflight except 1, most if not all of them should be right, will fix any that aren't post testing.  
    Also finished drycode for Uldaman: Legacy of Tyr  
- Don't know why I didn't do this sooner. Saves a lot of extra lines in many mods  
- Update DBM-Party-Dragonflight.toc (#776)  
- Update DBM-VaultoftheIncarnates.toc (#779)  
- Create localization.ru.lua (#778)  
- Create localization.ru.lua (#775)  
- Add KR locales for Dragonflight mods (#777)  
    Co-authored-by: Artemis <QartemisT@gmail.com>  
- Update koKR (#137)  
- Somehow put those in wrong function  
- the Lost Dwarves, all I really had time for today.  
- incerment wrath alpha revision  
- prep new wrath release with WowI re-enabled now that they support wrath classic beta  
- Fix bad templates to avoid running into same mistakes over and over  
- fucking bad template  
- Missed ,  
- Drycoded what's in journal for first dungeon, Brackenhide Hollow  
- Uniforn tocs to all use same format instead of some being one way and some being another.  
- update pkgmeta  
- Dragonflight Dungeon stubs finally complete. All 49 files  
- Last alpha bump, should be able to get back to DF now  
- wrath release, take 3  
- bump alphas again  
