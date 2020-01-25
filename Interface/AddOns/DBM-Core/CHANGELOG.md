# Deadly Boss Mods Core

## [8.3.5](https://github.com/DeadlyBossMods/DeadlyBossMods/tree/8.3.5) (2020-01-25)
[Full Changelog](https://github.com/DeadlyBossMods/DeadlyBossMods/compare/8.3.4...8.3.5)

- Fixed a bug that caused paranoia repeat yell to never end  
- Moved Nullifying Strike to SUCCESS for timer start event to avoid issues where boss would stutter cast as ra-den is dragged arond and SPELL\_CAST\_START would fire more than once.  
    Some micro timer adjustments on Xanesh  
    Updated Gunkar and KingGobbamak timers In Mechagon Dungeon closes #45  
- Changed Abyssial timer on Xanesh to end when next cast begins instead of when next debuff is applied to tank. This helps better support 1 tank strat  
