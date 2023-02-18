# <DBM> World Bosses (Dragonflight)

## [10.0.27](https://github.com/DeadlyBossMods/DBM-Retail/tree/10.0.27) (2023-02-18)
[Full Changelog](https://github.com/DeadlyBossMods/DBM-Retail/compare/10.0.26...10.0.27) [Previous Releases](https://github.com/DeadlyBossMods/DBM-Retail/releases)

- Tag new release now that M+ fixes verified and to get guild version bugfix out, plus sennarth bugfixes on retail  
- Fix bad count logic on thundering clear  
- wipe newest version table on group join, so out of date notice will show again any time you join a new group even if it was already triggered by guild comms So now it'll basically trigger On login if recieve enough guild comms On group join if enough comms from newer versions even if guild alert had previously occured (only new alert) On group leave because it'll trigger guild comms alert again.  
- cleanup  
- fix bug in guild version check sync handler that was causing false update notifications by incorrectly parsing version in guild comms  
- attempt to fix a bogus nil error  
- not actually using this arg  
- test another method of fixing affix clearing  
- Fix regression from 3 weeks ago that broke all phase 1 timers on sennarth. why it took 3 weeks to get reported I don't know. Sorry about this. This can be blamed on artemis.  
- rebump alphas  
