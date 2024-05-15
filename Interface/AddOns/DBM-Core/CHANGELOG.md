# <DBM Mod> Raids (DF)

## [10.2.40](https://github.com/DeadlyBossMods/DeadlyBossMods/tree/10.2.40) (2024-05-14)
[Full Changelog](https://github.com/DeadlyBossMods/DeadlyBossMods/compare/10.2.39...10.2.40) [Previous Releases](https://github.com/DeadlyBossMods/DeadlyBossMods/releases)

- Prep new tag to get fixes for Cataclysm classic, and new API for pandaria remix (in case it's needed)  
- Support for running multiple tests with one command  
- Add shaman interrupts for classic  
- Fixup recorded player name/uid vs. current player  
- Cleanup test reports  
    * Report spell ID mismatches  
    * Add spell names  
    * Summarize AntiSpam filtered events  
    * Fix some sorting determinism problems  
    * Detect combat end from different events  
    * Filter generic sounds  
- Tests: support icons  
- Tests: enable all timers/warnings/etc  
- Filter transcriptor logs more aggressively  
- Add test result importer  
- Avoid lua error on nymue if person DCs or reloads mid fight and variable recovery has not completed yet (or it failed)  
- corrected logic in core that assumed if journal exists, ALL of it exists. Cata classic chose to exclude journal for vanilla tbc and wrath so DBM was attempting to use journal names for bosses instead of manually translated ones, and resulted in all names being nil.  
    New code logic now doesn't assume journal is complete and instead validates it before using it, else returns the manually localized boss names.  
    In english, vanilla tbc and wrath bosses will show their boss names again.  
- Config and test updates/fixes (#1080)  
- Split .pkgmeta by release type (#1081)  
- Update nag for TBC mods (#1082)  
- Add time warping for tests  
    For example, run /dbm test <test> 10x to run a test at 10x speed.  
- Add more flexible system for hooking locals in tests  
- Fix error when warnings overflow in tests  
- Cleanup unused variables  
- Further refine voice schedulers to now validate for invalid voice files when scheduling (and it already caught 1)  
- Further class and annotate up the timer object, which found quite a few obscure bugs, including one right here on retail where kurogs add enrage timer didn't correctly show inline icon  
- Further annotate and define announce constructors (especially for non auto localized objects that have some niche args that needed docs)  
- Push drycodes for both War within world bosses  
- Add test framework for boss mods (#1074)  
    Add a test framework that can replay Transcriptor logs and record how mods behave.  
    This currently only works for simple mods, example: DeadlyBossMods/DBM-BCVanilla#143  
- just remove status checks on prefixes, in all the years since it was introduced in cataclysm, i have NEVER seen the status be anything other than success, so just assume it's always successful and call it a day. Closes https://github.com/DeadlyBossMods/DeadlyBossMods/issues/1078  
- Improve GroupInCombat error checking (which has no errors ATM but to avoid em in future)  
- bump alpha  
