# <DBM Mod> World Bosses (DF)

## [10.1.24](https://github.com/DeadlyBossMods/DBM-Retail/tree/10.1.24) (2023-08-22)
[Full Changelog](https://github.com/DeadlyBossMods/DBM-Retail/compare/10.1.23...10.1.24) [Previous Releases](https://github.com/DeadlyBossMods/DBM-Retail/releases)

- Kill off a more of classic era compat code now that 1.14.4 is synced a few more things Bump toc files for Classic Era Bumped versions for new tags  
- update mythic Sarkareth berserk for next week  
- Make the guild messages easier to read with better spacing  
- Added some notes  
- appease luacheck  
- improve icon code to allow individual mods to address a race condition of just bad circomstances that can result in incorrectly set icons  
- Tweak prefix code so D5 is default for all future classic flavors (and for TBC if it ever returns). Classic era and wrath will continue using separate prefixes for now so no 3rd party addons need to make any changes.  
- tweak it further to match way others do it  
- still announce target of darkness on non mythic, but still keep wallbreaker stuff to mythic only  
- Update localization.ru.lua (#263)  
- Update localization.ru.lua (#262)  
- not a single module that exists uses \"oldOptions\" so scrap that code. Also scrap ability to turn \"group by spell\" off since that gui is just no longer supported given all current and future updates are focused on new design only.  
- Swore i had fixed this ages ago. removed invalid caveat for weak aura keys feature  
- Fix https://github.com/DeadlyBossMods/DBM-Retail/issues/921  
- DBT: Fixed a bug where dummy bars never reset their flashing state on rewstarting Fixed a bug where ANY bar resetting flashing state would not correctly set bar color back to it's correct color state if the bar refreshed before expiring completely  
- bump alphas  
