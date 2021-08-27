# Deadly Boss Mods Core

## [9.1.11](https://github.com/DeadlyBossMods/DeadlyBossMods/tree/9.1.11) (2021-08-25)
[Full Changelog](https://github.com/DeadlyBossMods/DeadlyBossMods/compare/9.1.10...9.1.11) [Previous Releases](https://github.com/DeadlyBossMods/DeadlyBossMods/releases)

- prep new release  
- Fix lua error and finish the P3 LFR data  
- Populated LFR timer data for Sylvanas. Still need to find a longer pull to complete tables but this should be enough to cover most groups.  
    Partial revert of last timer change since it messed some stuff up.  
- fix last  
- Fixed some bugs on first boss of Tazavesh  
    Turned off Hyperlight bolt interrupt by default in tazavesh trash do to spam  
    Fixed some misc timers in De other side  
- Name can be nil in parseDescription, just nope outta there (#652)  
- Make GUI elements support $spell:id and $journal:id syntax (Fixes #593) (#650)  
- Re-enable skinning option inside of GUI (#651)  
- Few timer tweaks from debug info  
- Use debuff for timer/counter to avoid CLEU order issues that cause arrow counts to be incorrect on sylvanas  
- tweak this audio too for more clarity as well  
- Since the nine has MANY mechanics, link essence voice audio has been changed to use a different voice file from fragments, so it is clearer which mechanic you are getting as soon a you hear it.  
- Add tank add marking to KT to get another thing off checklist  
    Also fixed bug with frostbound warning never working  
- tweak at least 3 offending warnings off hand that say to run out when you only need to spread. more definitely need changing just don't remember off hand which ones NEED to be run out and which should just be spread out  
- Fixed a bug where the volatile acid target scan never worked in TirnaScithe  
    Added a target scan to throw cleaver in necrotic wave to enable a chat bubble fo rit  
- Initialise DBT and addons variable earlier (#649)  
    In cases where an addon is "no longer supported" and DBM disables, addons variable is never defined, which will cause errors to appear when a mod attempts to call NewMod  
- cleanup file packaging  
- bump alpha revision  
- Update zhTW (#644)  
