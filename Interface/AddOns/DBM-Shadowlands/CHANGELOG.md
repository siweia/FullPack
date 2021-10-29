# <DBM> World Bosses (Shadowlands)

## [9.1.19](https://github.com/DeadlyBossMods/DBM-Retail/tree/9.1.19) (2021-10-27)
[Full Changelog](https://github.com/DeadlyBossMods/DBM-Retail/compare/9.1.18...9.1.19) [Previous Releases](https://github.com/DeadlyBossMods/DBM-Retail/releases)

- prepare new releases  
- Optiimze the custom onupdate handler for sub mods to better cache zone Id by inteligently letting core change it only when it actually changes.  
- This got reverted by mistake, fix lua error  
- Fix a tiny bug that has apparently been there a while, where custom onmodupdate scheduler could still start scheduler even if it failed to provide a function, since no mods obviously do that (it'd have to be broken), this bug was never caught.  
- this should pass prototype, not self  
- Fix wrong spell ID on Touch of Slime (#687)  
- Optimise use cases of sub calling :len()  
- Fix unregistering case  
- Update icons and target scanning to work with last commit  
- Module RegisterEvents supports unitID's  
- Fix another error  
- disable event registering for now  
- Work on fixing some load error problems  
- Split dev tools into their own module, moving 2 more event registers out of core that don't need to be registered all the time  
- slight overhead reduction.  
- Seems even non scheduled functions inhert mod automatically from mystery location.  
- fixed bugs in unit target scanner, other ones not tested yet  
- Take 2:  
    *Modules  
    - Added a function to perform cleanup on EndCombat that allows sub modules to store more tables locally and avoid fillingg private up with a bunch of tables that are literally temp storage. these tables can now be local in each module and auto cleaned up when this cleanup function is called.  
    - Decided to mod naming after all for unified structure between modules, since that is effectively what bossModPrototype is.  
    *Icons Module  
    - Localized storage table for GUIDs  
    - Moved local group sort function into more efficient placement  
    *Target scanning module  
    - Moved all target scaning functions out of core and did tons of code tidying and optimizing.  
    - Fixed some bugs that were found when doing above such as impoper use of self in BossUnitTargetScannerAbort method that have probably been broken for quite some time.  
- Bail out of executeMarking on expired scans (#16)  
- Micro opptimize icons code  
- tweak debug  
- Cleanup some code duplication. no functionality change, just tidyness one  
- bump alphas  
