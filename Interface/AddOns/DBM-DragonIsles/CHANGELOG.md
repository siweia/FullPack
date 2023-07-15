# <DBM> World Bosses (Dragonflight)

## [10.1.16](https://github.com/DeadlyBossMods/DBM-Retail/tree/10.1.16) (2023-07-15)
[Full Changelog](https://github.com/DeadlyBossMods/DBM-Retail/compare/10.1.15...10.1.16) [Previous Releases](https://github.com/DeadlyBossMods/DBM-Retail/releases)

- Dungeon update requires a core update for retail  
- fix one timer on mythic Zaqali  
- Added support for hotswapping spell keys on timers and announce objects. This will how swapping the callback Id and text of timer/alert on fly as needed without altering option key. This solves two problems 1. If we need to match a BW key in future, we can enable ID swaps without killing user options (granted the swap would have to stay in mod forever but that's fair tradeoff) 2. niche bosses that use diff name per faction, in situations where that faction depends on group leader and not yourself, can now functionally use correct Id and name on the fly and still not mess with users option keys which will still stay locked to OWN faction.  
- bump alpha  
