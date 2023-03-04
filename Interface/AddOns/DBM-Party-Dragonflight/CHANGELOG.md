# <DBM> Dungeons (Dragonflight)

## [r68](https://github.com/DeadlyBossMods/DBM-Dungeons/tree/r68) (2023-03-04)
[Full Changelog](https://github.com/DeadlyBossMods/DBM-Dungeons/compare/r67...r68) [Previous Releases](https://github.com/DeadlyBossMods/DBM-Dungeons/releases)

- Add shattered Resolve to jade temple trash  
- Add support for icy bindings and beastial roar to azure vault trash  
- Update localization.ru.lua (#103)  
- well, this won't fix it not announcing at 7 but at least it'll announce at 8 and 10 again.  
- timer tweaks from last nights debug  
- Forgot to register UNIT\_DIED  
- Court of Stars Update  
     - Added alert for Sound Alarm  
     - Added optional off by default interrupt alert for Fortification  
     - Added timers for most trash abilities.  
- Revert treemouth change, I meant to update overgrown Ancient  
    Overgrown Ancient:  
     - Made infoframe default on for tank and healer rolls as well (new users only, won't reset setting)  
     - Added stack announce to lasher stacks for every 8 stacks  
     - Raised personal "stack high" announce for lashers for tank roles to a minimum of 20. still 12 for non tank roles  
- Also announce orbs hitting boss on raging tempest  
    Fix spam on treemouth for disease stack alerts. it'll now warn every 8 stacks, not every 1.  
- Raging Tempest Update:  
     - Change electrical storm to a special announce with count instead of general announce. This should help make urgency of spell on high keys more apparant for healer CDs  
     - Also added GTFO for standing too close to boss so melee/tanks are more aware of taking excess unneeded damage  
