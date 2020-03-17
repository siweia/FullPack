# Deadly Boss Mods Core

## [8.3.17](https://github.com/DeadlyBossMods/DeadlyBossMods/tree/8.3.17) (2020-03-11)
[Full Changelog](https://github.com/DeadlyBossMods/DeadlyBossMods/compare/8.3.16...8.3.17)

- Carapace of Nzoth Update  
     - Updated all timers for carapace for LFR difficulty.  
     - Added debug collection code for remaining timers that simply cannot be updated without special logs from transcriptor (or this debug). It'll work similar ot harvester collection code does. if DBM prints any timers out during carapace, please report it in DBM's discord or @deadlybossmods on twitter.  
     - Added timer auto correction to heroic carapace at true start of phase 2 (fury reaching P2 position) that'll attempt to correct the initial Phase 2 timers that start on application of synthesis (not true phase 2 start, just most practical place to start timers). This will improve initial timer accuracy while still providing the earlier triggered estimates still. this is a behavior that mythic version off fight already did.  
- Updated Nzoth timer data with launch of LFR.  
     - Normal and LFR should now have Glare/beam timers.  
     - Heroic (based on parallel to normal/LFR) should have one additional beam timer  
     - Arrows and directions for glares should now be present in LFR, Normal, and Heroic (hopefully correct, if not, report it).  
- Remove Paranoia Yell restriction in LFR. players need all the help they can get in LFR  
- Update localization.cn.lua (#160)  
