# <DBM Mod> Raids (DF)

## [10.2.5](https://github.com/DeadlyBossMods/DBM-Retail/tree/10.2.5) (2023-11-16)
[Full Changelog](https://github.com/DeadlyBossMods/DBM-Retail/compare/10.2.4...10.2.5) [Previous Releases](https://github.com/DeadlyBossMods/DBM-Retail/releases)

- Prep new tag  
- Seventh pass on killing range frame and distance calculation apis, may have missed some. Full deletion will occure later but right now way way too many modules directly call these apis so right now they're hacked to just return non erroring values. Modules will need hand review to remove features that no longer make sense like warning if something is near you.  
- Fixed a bug that caused bad debug data to spit out of Gnarlroot  
    Fixed a bug that caused an extra spear timer to start before first weapons  
- Slightly more mythic timer data on igira  
- bump alphas  
