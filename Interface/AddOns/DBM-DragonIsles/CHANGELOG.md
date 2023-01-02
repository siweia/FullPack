# <DBM> World Bosses (Dragonflight)

## [10.0.15](https://github.com/DeadlyBossMods/DBM-Retail/tree/10.0.15) (2023-01-01)
[Full Changelog](https://github.com/DeadlyBossMods/DBM-Retail/compare/10.0.14...10.0.15) [Previous Releases](https://github.com/DeadlyBossMods/DBM-Retail/releases)

- Prep new tag  
- Update commonlocal.tw.lua (#172)  
- slow down aggregation for meteor axes, seeing the icons and messsages get split  
- cleanup magnetic charge, its only 1 person so no need for elaborate icon stuff in says and anounces.  
- BroodKeeper Fixes:  
     - Fix adds timer and alerts having broken on broodkeeper since encounter spawn was disabled for applied events.  
     - Fix egg counter to not assume egg total and only give egg remaining since total can vary across difficulties  
- lowered blizzard stack warning from 8 to 7  
- Update localization.ru.lua (#848)  
- And of course, the one boss I didn't get to pull had bugs in it too.  
     - Terros:  
       - Fixed a bug where tank stack warning used wrong spellId so description and alert text was wrong.  
       - Fixed a bug where non tanks getting hit by tank cone got alerted. I need to pay more attention to tank abilities that are cones and not direct casts on tanks.  
- Revert bad change. Moving this check into code that only runs if you have mods installed, made check worthless.  
- Bump alpha  
