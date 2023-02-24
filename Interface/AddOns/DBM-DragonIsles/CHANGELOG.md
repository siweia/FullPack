# <DBM> World Bosses (Dragonflight)

## [10.0.29](https://github.com/DeadlyBossMods/DBM-Retail/tree/10.0.29) (2023-02-24)
[Full Changelog](https://github.com/DeadlyBossMods/DBM-Retail/compare/10.0.28...10.0.29) [Previous Releases](https://github.com/DeadlyBossMods/DBM-Retail/releases)

- Push new retail tag for the cross realm fix for Azjol-Nerub, Area 52 and others.. No new classic tag as there is no cross realm there anyways.  
- Fix bug causing duplicate spells used by diff mobs to not get allowed to exist. Fixes spells like Eye of the storm on halls of valor trash  
- Update koKR (#193)  
- make luacheck happy  
- normalize other realm names too  
- Fix a bug causing comms to still not work cross realm if cross realm sender was on a realmthat had a space in the name. GetRealmName() returns spaced realm while all other apis strip it.This was causing a mismatch in cross realm comm verification.  
- Update localization.ru.lua (#192)  
- Might workb etter if i actualy add to table  
- Another fix, that obviously wasn't reported by last scan  
- bump alphas  
