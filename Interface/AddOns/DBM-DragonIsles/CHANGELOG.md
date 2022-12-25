# <DBM> World Bosses (Dragonflight)

## [10.0.12](https://github.com/DeadlyBossMods/DBM-Retail/tree/10.0.12) (2022-12-23)
[Full Changelog](https://github.com/DeadlyBossMods/DBM-Retail/compare/10.0.11...10.0.12) [Previous Releases](https://github.com/DeadlyBossMods/DBM-Retail/releases)

- Prep new tag  
- Update commonlocal.ru.lua (#169)  
- Update koKR (#170)  
- Update koKR (Retail) (#844)  
- thanks for finding all the errors on first run luacheck  
- Fix another error  
- remove extra bracket  
- Raszageth Update:  
     - Several bug fixes to Raszageth, such as the broken P3 detection I broke by accident when i changed it around.  
     - Try a new breath scan mechanic that doesn't require locals at all but stll detects if breath is on your side or not  
     - Full support for mythic  
     - Few non mythic timer tweaks and new timer option for breath baiting (ff by default)  
- Remove unused variable  
- Fix bad code  
- eliminte IEEU from kurog and use presence auras on big adds instead, makes it far easier to use WCL to maintain timers, it's clear summon events will ever be added (and guess don't need to be)  
    Add new string to raszageth to give localizers time to translate mod when I push it (whenever RWF ends)  
- Slow axes is normal too not just LFR  
- Very minor dathea tweaks, but for most part LFR confirmed same as normal  
- Update primalisst council timers for LFR difficulty  
- Update koKR (#842)  
- Fix variable name  
- Push broodkeeper mythic updates from days ago. :D  
- Create localization.tw.lua (#840)  
    Co-authored-by: Adam <MysticalOS@users.noreply.github.com>  
- Update zhTW (#841)  
- Raz updates  
     - Fixed bug where Raz mod gave wrong spell name fro lightning breath alert  
     - Fixed a bug where tank warning would go off for idiots in front of boss that aren't tanks. Sadly DBM can't fix them, but it can fix alerting you about them.  
     - Made polarity yell now repeat 3x (applied, 1.5 sec, and 3 sec).  
- make dathea less spammy to tanks  
- bump alpha  
