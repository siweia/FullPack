# Deadly Boss Mods Core

## [8.3.30](https://github.com/DeadlyBossMods/DeadlyBossMods/tree/8.3.30) (2020-08-05)
[Full Changelog](https://github.com/DeadlyBossMods/DeadlyBossMods/compare/8.3.29...8.3.30) [Previous Releases](https://github.com/DeadlyBossMods/DeadlyBossMods/releases)

- Also, clean this garbage up, it's for the old deleted mechanic  
    Prep for new release  
- Updated spellnames for Artificer Xy'Mox with tonights journal update  
    Added two additional spellIds to Lady Inerva Darkvein for Concentrate anima do to fact that new IDs were added (likely related to the rank 2 root mechanics)  
- Added initial drycode for Artificer Xy'Mox, will be reviewed again after build goes out  
    Did some icon tweaks to Hungering Destroyer for compatiblity with BW, as well as ensuring no overlaps with possible number of mythic debuffs going out  
    Updated Impale and Fatal Finesse to also use icons and icon SAY bubbles on Sire Denathrius  
- Cleaned up invalid event in hungering destroyer  
    Removed useless and non wrking icon option for ooze auto marking on ilgynoth  
    Finished heroic Sire Denathrius drycode  
- Fix dum dum mistake. (#285)  
- Update koKR (#284)  
    * KR Update  
- Small tweaks to infoframe columns  
    Enable full 30 by default for all non LFR difficulties, and set LFR to 10, which will be enough to let LFRs also test 2 colums in a 5 by 5  
- Cleanup some complaining  
- Sync up some work in progress stuff (that's not quite done)  
- InfoFrame updates (#283)  
- Updated discord urls to non partner link  
- Remove 192 unneeded calls to SetZone, as it's already called in NewMod object. SetZone should only be called at mod level if the default values are actually changing.  
    re-added zones filter to event handler, which will fix a few mods that don't use RegisterEventsInCombat() such as Trash mods firing where they shouldn't  
- Push a change to auto logging to allow M+ to be flagged as non trivial, since it's not trivial.  
- Standard game font will now be applied far more inteligently so that it's always set to correct one even if user swaps languages. Basically, the font itself is no longer saved in the option (when using one of standard game fonts) just a variable that says to apply standardFont font, to whatever it SHOULD be based on clients locales setting this session. So no more ????? warnings/timers when you change your language after DBMs initial setup (well, unless you are using a non standard font that doesn't support new language, can't do too much about that besides telling you to try other non default fonts til one works in your language)  
- Added missing warning for dance ending on council of blood  
    Updated Shriekwing from heroic tested  
    Updated Stoneborne Generals from heroic testing  
- Update localization.cn.lua (#281)  
    Co-authored-by: Adam <MysticalOS@users.noreply.github.com>  
- Update localization.cn.lua (#282)  
    Co-authored-by: Adam <MysticalOS@users.noreply.github.com>  
- Fixed a bug in DBM core where countdown yells could get scheduled with 0 or even negative numbers if a debuff duration is shorter than max announces (generally this shouldn't happen because debuffs that short don't use countdowns, but has happened in event blizz hotfixes something from 4 seconds to 2 seconds like case was during raid testing today)  
    Updated Council of Blood post testing  
- Another rapid fix  
- More fixes  
- Couple quick fixes to range check and generals  
- Fixed a bug where legacy mods calling StartCombat without an event type could throw errors  
    Fixed a bug with profile drop downs throwing a lua error  
- Push finished Altimor mod from testing  
- sync download info to retail  
