# Details! Damage Meter

## [Details.20230720.11718.155](https://github.com/Tercioo/Details-Damage-Meter/tree/Details.20230720.11718.155) (2023-07-20)
[Full Changelog](https://github.com/Tercioo/Details-Damage-Meter/compare/Details.20230713.11701.154...Details.20230720.11718.155) 

- Added .total\_extra for damage actors, when above zero, a secondary statusbar is shown in the player bar  
- Fixed overall data only showing Augmented Evokers  
- LibOpenRaid Update  
    - Fixed an issue with the rename InstaciaCallFunction to InstanceCallDetailsFunc.  
- Add the evoker predicted damage to overall data  
- Checking for windows using a combat which got destroyed while transfering the current combat to the segmentsTable  
- Renamed InstaciaCallFunction to InstanceCallDetailsFunc  
- General BugFixes and Changes  
    - Renamed damageActor.extra\_bar to damageActor.total\_extra  
    - Added: Details:ShowExtraStatusbar(barLineObject, amount, amountPercent, extraAmount)  
    - If any damage actor has 'total\_extra' bigger than 0, the extra bar is shown.  
    - List of spec names for spec tooltip detection now load at Startup not at lua compiling.  
    - Fixes on Encounter Details plugin.  
    - Fixed an issue of clicking in a plugin icon in the title bar of Details! but the plugin not open.  
- Bug Fixed  
- Another fix for FindBuffDuration  
- Fixed Details:FindDebuffDuration(unitId, spellId, casterName) which wasn't taking the casterName in consideration  
- Merge branch 'master' of https://github.com/Tercioo/Details-Damage-Meter  
- Fixed things about the Real Time DPS; Open Raid Lib Update  
- Merge pull request #565 from Flamanis/NeltharusWeapons  
    Add individual bar for Neltharus Weapons. Weapons on final boss and t…  
- Add individual bar for Neltharus Weapons. Weapons on final boss and the Burning Chain  
