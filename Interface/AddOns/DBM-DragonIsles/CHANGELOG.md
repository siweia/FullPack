# <DBM> World Bosses (Dragonflight)

## [10.1.11](https://github.com/DeadlyBossMods/DBM-Retail/tree/10.1.11) (2023-05-30)
[Full Changelog](https://github.com/DeadlyBossMods/DBM-Retail/compare/10.1.10...10.1.11) [Previous Releases](https://github.com/DeadlyBossMods/DBM-Retail/releases)

- prep new tag  
- Update koKR (Retail) (#901)  
- minor tweak  
- Deemphasize fixate warnings so they're less crowded  
- expects count arg  
- fix duplicate object name  
- Detect skipped incorp casts and start timer for next cast when it happens. this solves one of two issues it had. unfortunately the pause/unpause code is pretty much hosed if incorp overlaps with vengeful  
    Enable Zskarn berserk on all difficulties instead of just mythic  
    Added wall breaker mythic strat yells to echo of neltharian  
- change option default to reduce spam  
- Don't set skull mark on "Null Glimmer" adds in p3 (Aberrus - Sarkareth Mythic) (#899)  
- small tweak  
- Fix mythic ability timers on assault since the abilities are actually happening again.  
- Add couple high priority trash warnings to Aberrus  
- Update localization.ru.lua (#224)  
- Update zhTW (GUI) (#225)  
- Update zhTW (Core) (#226)  
- Update koKR (#223)  
- Update localization.ru.lua (#222)  
- Update banned mods  
- Fixed couple bugs  
- Updaet zskarn for may 25th hotfixes  
- prepare localizers for some future options that won't be deployed just yet  
- update banned list  
- Comment these out too.  
- add experimental Incorporeal timer for testing  
- update banned mods for latest culling/migrations  
- timer tweak  
- slide timer adjustment  
- Fixed logic bug that caused one invalid timer on normal and LFR magmorax  
    Updated Phase 3 darkness timers on echo of neltharian for May 23rd hotfixes that were undocumented that seem to have added an extra darkness cast to boss in between stage change and original first darkness cast  
- Fixed a bug wehre void fracture alert went off during P1 to P2 transition. that ID seems to be applied to whole raid  
- Fixed a bug where the respawn timer fallback never actually started a respawn timer. Now it should start the default 29-30 second respawn timer on all bosses and then if it's wrong it'll be easier to get reports about it and fix.  
- Fixed a bug where Blazing spear could show multiple alerts/yells if multiple mobs target you with it at once on Assault  
    Turned interrupt Cd for stream off by default on Sarkareth due to spam  
    Fixed a bug wehre volatile spew played no voice pack alert on Forgotten Experiments.  
