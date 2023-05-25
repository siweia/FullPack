# <DBM> World Bosses (Dragonflight)

## [10.1.10](https://github.com/DeadlyBossMods/DBM-Retail/tree/10.1.10) (2023-05-23)
[Full Changelog](https://github.com/DeadlyBossMods/DBM-Retail/compare/10.1.9...10.1.10) [Previous Releases](https://github.com/DeadlyBossMods/DBM-Retail/releases)

- prep new tags for wrath classic and retail  
- LFR timers reviewed and verified are unchanged. just minor tweaks  
- Ooh, fix a bug where vanilla onyxia is rejected on classic era. this culling only applies to wrath for now.  
- banned mods update  
- Add astral formation bar  
- Update koKR (#221)  
- Update core for wrath culling  
- Prep core for culling phase 1  
- Default filter timers when using plater nameplate CD icon auras Add additional filter control for regular global timer disables for those not using plater who stll want to shut off specifically boss or trash timers only.  
- Add combat check to onsync handlers for event bosses  
- Merge branch 'master' of https://github.com/DeadlyBossMods/DBM-Retail  
- Don't load M+ affixes in S1 dungeons anymore  
- Update localization.ru.lua (#219)  
- Sync Bugfixes: - Fixed a bug where combat rules were applied globally to syncs, causing many trash mods, and boss RP syncs to never actually sync in first place, defeating entire purpose in many cases of why syncs exist in first place. This should fix MANY rp timers. caveat, it might also cause mods that aren't correctly checking IsInCombat in their OnSync handlers to start showing stuff out of combat (this has to be fixed on a per mod level) - Fixed a bug where player syncs were given no restriction on whether or not they should be trusted. There is a reason minsyncrevision exists and an out of date players DBM shouldn't be allowed to ignore that. This code originally existed so a player in a solo raid wouldn't have broken comms entirely, but that's now handled correctly in the sendSync function which automatically passes player comms to sync handler without check if there is no one else in group with them, so all the hacky exclusion checks in RecieveSync are no longer needed.  
- Add dawn of the infinite to instace ID table  
- Update koKR (#218)  
- Forgot to hookup reset button  
- Entangled timer will now only play countdown sounds in combat, timer will continue out of combat but it'll be silent unless in combat  
- support in legacy object too  
- Add tech to auto disable countdowns based on combat status, if the object calls for it  
- Fix private auras without voicepack + minor voicepack selection issues (#217)  
- Fix VPVersion and forceDisable handling in version sync (#216)  
- bump alpha  
