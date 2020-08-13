# Deadly Boss Mods Core

## [8.3.31](https://github.com/DeadlyBossMods/DeadlyBossMods/tree/8.3.31) (2020-08-12)
[Full Changelog](https://github.com/DeadlyBossMods/DeadlyBossMods/compare/8.3.30...8.3.31) [Previous Releases](https://github.com/DeadlyBossMods/DeadlyBossMods/releases)

- Bump version and will tag release whenever things are functioning again.  
- Fix error local check found  
- Mythic prep for Altimor, Sludgefist, and Blood Council  
- Fully revert infoframe back to DBM 8.3.29 code.  
- Some updates to Kael to prep for mythic testing  
- change how tear timer behavior works. it's still far from done, but it's a little closer to accurrate. I need more logs to figure out how the AddTime works but it's clear the ability has a base CD of 25  
- Some tweaks to Hungering, post mythic testing  
- Short term bandaid to one issue at least  
- Update luacheck  
- Few more API changes (#290)  
- Sire Denathrius updated from heroic testing  
    Lady Inerva Darkvein updated from mythic testing (this mod will likely be changing a lot as blizzard is still playing with energy/timers  
- Fixed sap warning to be off by default, it's spammy. changed when it starts too  
    Fixed volatile icon to be on by default and fixed it so it clears icon automatically after 6 seconds.  
- Fix bug that Myst found :) (#289)  
- Changes to interrupt/add marking to exclude tank adds/interrupts. That's not interruptable despite journals information.  
    Added a new generic warning for 2 second cast for tank casts that's only on by default for tanks so they can be aware they aren't close enough to add  
- Infobox v2 (#288)  
- push couple small updates to todays mythic tests  
- Push the slightly more complete Artificer Xymox mod. this mod is going to need a few weeks of data to become closer to done, and may never actually be 100% done.  
- Fix phase 3 trigger  
- Also fixed Creature ID and Command Massacre  
- Also fix impale timer  
- Fixed impale not working  
    Fixed Hunter icon not resetting  
- Fix possible lua error if attempting to log something before a difficulty check is run. Closes #286  
- Quick fix spam  
- Prep a new alpha series  
