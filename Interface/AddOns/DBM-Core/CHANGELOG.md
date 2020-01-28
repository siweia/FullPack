# Deadly Boss Mods Core

## [8.3.7](https://github.com/DeadlyBossMods/DeadlyBossMods/tree/8.3.7) (2020-01-28)
[Full Changelog](https://github.com/DeadlyBossMods/DeadlyBossMods/compare/8.3.6...8.3.7)

- Bump Hotfix revision on Shadhar and bump DBM revision. Just one final tag before mythic starts  
- Fixed option default for Mandible Slam so it's only on by default for tanks instead of everyone. Also disabled countdown on it by default since it happens pretty often.  
    Changed countdown for abyssal strike to count down from 3 instead of 4 on Xanesh  
    Changed Countdown on Volatile Seed to start counting down at 3 instead of 4 on Drestagath  
    Changed Eyes of Nzoth countdown to start counting down from 3 instead of 4 on ILgynoth  
    Changed Crush countdown to start counting down from 3 instead of 4 on Shadhar  
    Changed Echoing void to start counting dwom from 4 instead of 5 on Hivemind  
- Fixed a bug where Mandible Slam and Adaptive Membrade were overwriting each other and this is actually what was causing odd countdown behavior in Stage 1 carapace.  
- Fixed creatureID for Xanesh  
    Added new option to Ra-den to only show special warning for Charged Bonds if you are the parent point. off by default. If this option is not enabled all charged bonds get warned.  
    Fixes to Shadhar energy updater to attempt to fix the incorrect energy generation still.  
    Fixed bug where Nullification Blast timer was on for everyone by default instead of just tanks on Hivemind. Option default for this timer has been reset to push this fix.  
- Expanded Heroic Nzoth timer data from latest public logs of questionable kill times  
    Moved Thought harvester timers/spawn alerts to IEEU, however keep slower CLEU event as well just in case they have so many harvesters up at once they run out of boss unitIDs (yes I found a log like this).  
    Added debug code to help discover harvester timers based on IEEU since not everyone is gonna run transcriptor and CLEU is not as accurate.  
- Throttle annihilation casts if two of mobs casting it are up at once  
- Updated Mindwrack handling to be more in line with actual needs of spell. Showing interrupt warnings if it can be interrupted and taunt warnings if it can't be (or raid fails to do so) IF the other tank is free. If other tank is not free and it is not interrupted then show a general target warning to at least inform of increased damage. Closes #121  
- Add mauts approx respawn time (abou 20, give or take)  
