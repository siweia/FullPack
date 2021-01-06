# Deadly Boss Mods Core

## [9.0.16](https://github.com/DeadlyBossMods/DeadlyBossMods/tree/9.0.16) (2021-01-06)
[Full Changelog](https://github.com/DeadlyBossMods/DeadlyBossMods/compare/9.0.15...9.0.16) [Previous Releases](https://github.com/DeadlyBossMods/DeadlyBossMods/releases)

- Prep new release  
- Fix stupid  
- Castle Nathria Update  
     - Updated all Kael add timers to support LFR (which has totally different timers than other difficulties)  
     - Fixed bug on kael where scheduled timers may activate while shade is up if the adds spawned AS shade came out. A more strict check is used in scheduler now to prevent this  
     - Expanded vile ocultists to also use backup scheduling since it's clear blizzard is never going to fix combat log on kael. this will make vile timers more consistent  
     - Fixed bug where initial add timers could be wrong on mythic, heroic, and normal if darithos died very early. Wrong values were in the early start timers  
     - Updated all Council of Blood timers for LFR, which generally has all abilities come at a closer pace than normal/heroic mode has them.  
- And force reset that sound option  
- Fix Mortanis, which I failed to do last time it was up  
- PT security improvement  
- Fixed a bug with the definition of "Opt in".  
- Luacheck needs to report line numbers/errors correctly  
- Improved altimor timer accuracies quite a bit by understanding some of the ability interactions that trigger ICDs on other abilities  
- Apparently the main consensus on shades is not to kill them like journal suggests, just infinitely CC them, so the swtich to kill message now off by default, since guiding any pug in instruction that's not uniforn causes bad actors  
- Fix nil error (Closes #465) (#466)  
    If they never managed to get a cast off, then they're never inserted into the table, and therefor were killed very fast indeed :)  
- Check if prefix is registered. (#463)  
- Fix typo (Closes #461) (#462)  
- Switched charged anima blast to emote instead of target scanning, since it's more efficinet/reliable.  
- Don't start boss encounter music for modules that don't initilize stats/combat messages. This will prevent battle music from playing for hacky mods that are for trash mobs and such  
    Scenarios will now use dungeon music instead of battle music, since these are also hacky mods that register combat for entire zone instead of a single boss.  
    Lastly, Cinematic and movie cut scenes will hard abort custom DBM music (pretty sure this was happening anyways since hiding UIParent seemed to kill it anyways, but added for extra measure.  
- Changed icon elect feature to also initiate two backups, in case the higher revision in raid turns icon marking off. Too often guilds have this thing where they have everyone turn options off except like one person, but that one person doesn't keep mods up to date so they end up with no icons being set during fights. Now, DBM will permit up to 3 assists with highet revision in raid to set icons, provided they still have at minimum, the latest release revision. This might introduce rare cases where icon conflicts occur if an alpha uses different icons than a release version, which is what elect feature set to solve in first place, but I feel like this middle ground is needed because the no icon at all issue happens more often than icon conflicts.  
- Fix a cosmetic bug  
- Fix expected stacks for sire  
- Changed countdown default for lady. Timers not reliable enough for that default.  
    Added extra check to altimor because of one user report of phase 2 and 3 triggering at same time?  
    Fixed artificer glyph duration on normal (and LFR?)  
- Fixed bug with chain slam double counting  
- remove old debug  
- Bump alpha  
