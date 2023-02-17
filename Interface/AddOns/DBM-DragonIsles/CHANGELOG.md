# <DBM> World Bosses (Dragonflight)

## [10.0.26](https://github.com/DeadlyBossMods/DBM-Retail/tree/10.0.26) (2023-02-17)
[Full Changelog](https://github.com/DeadlyBossMods/DBM-Retail/compare/10.0.25...10.0.26) [Previous Releases](https://github.com/DeadlyBossMods/DBM-Retail/releases)

- redo fix, with proper cancel logic  
- rebump alphas  
- roll back alpha revision temp for a new ghost tag  
- throttle break timer too for same reason  
- Add one second throttle to pull timer since mods might be sending D4 and D5 at same time for a while and we're now parsing both (ie double pull timer announcements without throttle)  
- Bump alphas  
- Further improved new comms with restored backwards compatibility (one way) with older versions of DBM, Bigwigs, and raid lead tools. This allows this version of DBM to accept timers and such from older versions, NOT older versions to accept new comms from this version. Goal is to ensure that people who update get a good experience and those that don't, well at least they aren't punishing the ones that did.  
- this should allow compat with all old comms again and fix compat with old bigwigs comms cross realm.  
- Fix bnet whisper syncs with updated protocol  
- move debug, cause i'm not seeing chat bubbles anymore which means this debug must still be erroring, until I can correct error, i need to at least make it last on execution  
- Bump alphas  
