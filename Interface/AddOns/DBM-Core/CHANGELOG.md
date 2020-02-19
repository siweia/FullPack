# Deadly Boss Mods Core

## [8.3.14](https://github.com/DeadlyBossMods/DeadlyBossMods/tree/8.3.14) (2020-02-18)
[Full Changelog](https://github.com/DeadlyBossMods/DeadlyBossMods/compare/8.3.13...8.3.14)

- Prep Tag, since there been a few fixes since then  
- Prevent GetSpellInfo from being queried on phase announces, to eliminate false debug reports  
- Some minor sync code cleanup, no changes  
- Further optimize guild communication by no longer sending version information in guild comms if our version is out of date (since guild version comms are ONLY used by update notification). This is miniscule at best, but it's still a better practice.  
    Fixed a bug where mod hotfix notification never actually notified that a newer RELEASE was available with mod fixes, it only ever notified alpha  
- Fix another shadhar lua error  
- harvester spawn data tweaks  
- Fix a nil error (#153)  
    Another lowercase start :P  
- Attempt to fix black volley, gaze, and cataclysmic flames timers continuing when a psychus phase has ended with additional blocks from the timers starting if a CLEU occures after psychus death.  
    Moved flash checkbox over 10 pixels in special warning GUI so it's less likely to be slightly covered when users have long file name sounds installed  
- Fix error on nil value (#152)  
- One last attempt to fix shadhar taunt warnings. If this still doesn't work I'll be removing the taunt warnings since I can't personally get into raid and run debug code myself on it.  
- Fix lua error on ra-den  
- Cleaned up hivemind now that it's confirmed LFR timers are in fact identical to normal. Fight only has 3 energy rates, not 4  
- Re-Add more heroic harvester timer data  
- KR Update (#151)  
    * KR Update  
- Improved logic for Annihilation on Vexiona  
     - If you are tanking the mob casting it, dbm will no longer incorrectly tell you to dodge it. Instead it'll show you defensive warning instead.  
     - If you are the player CASTING it, dbm will no longer tell you to dodge it, because obviously you're the caster. you need no warning for that.  
- Update GUI zhTW.lua (#150)  
- Added interrupt rotation control to Xanesh to allow raiders to control how many people they want in reach rotation  
- Added icon marking option for Thought Harvesters, using same icons as corruptors earlier in fight.  
    Finished cleaning up dungeons of unused stuff.  
- Add more normal harvester data  
- Fix vexiona's creature Id so boss health reporting works  
- Reverted second thought harvester timer on phase 3 mythic back to old timer, the wierd 82 timer was a fluke and the 76.9 feels more accurate.  
    Fixed missing stage 2 paranoia timer that accidentally got removed when managing mod in offline mode  
    Began dungeon mod cleanup of unused stuff, starting with shrine of the storms  
