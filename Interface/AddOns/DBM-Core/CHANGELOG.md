# Deadly Boss Mods Core

## [8.3.27](https://github.com/DeadlyBossMods/DeadlyBossMods/tree/8.3.27) (2020-07-14)
[Full Changelog](https://github.com/DeadlyBossMods/DeadlyBossMods/compare/8.3.26...8.3.27) [Previous Releases](https://github.com/DeadlyBossMods/DeadlyBossMods/releases)

- prep new retail release  
- Actually reset position with reset button  
- Fix a missing :  
- Added reset button to general announce options  
- Fixed regression that caused the major patch force disable code to never run do to incorrect placement of a nil check from a previous fi  
- Update MainFramePrototype.lua (#270)  
- Pass arg to OnCombatEnd event which can be used to tell if it's first OnCombatEnd event or second one.  
- Update koKR (#268)  
- Probably not correct fix, but works better than without it  
- Update InfoFrame from dev. (#267)  
- Removed redundant yell object  nzoth paranoia, it'll now immediately start with icons instead first doing "Paranoia" text and then starting icons 2 seconds later.  
    Full Lady Inerva Darkvein drycode  
- Removed redundant brew announces from captains within freehold. those never should have been left there, but as someone who doesn't do dungeons, i only catch bugs more than year later when watching a steam  
- Fix bad copy/paste  
- Full Kaelthas drycode  
    Changed shriekwing to use player alternate power for now, it's a better guess  
    Xanesh shouldn't open infoframe on pull, it's not needed on pull. This is now fixed.  
- Prevent mods from creating infoframe when global option is disabled, when they directly access sub functions (common for custom based infoframes or inforames using manual update calls instead of onupdate). This update supercedes #266 with slight more optimized bool check (ie only checking it if attempting to create a frame, instead of always checking it even long after frame is created)  
- Fixed two debug messages not closing the color code  
    Added a new debug to detect options that are a number for some reason  
- Removed Stone Claws from Shriekwing, this ability was deleted from game  
    Added Sanguine Curse to Shriekwing, this ability was added to replace stone claws.  
- Amarth update:  
       - BoneSpikes was deleted from game, replaced with Necrotic breath, so updated mod accordingly.  
       - A new interrupt warning was also added  
- Fixed name shortening/realm stripping on "function" (custom) based infoframes  
- Update CORE: zhTW (#265)  
- Update GUI: zhTW (#264)  
- Possibly improve Meuhzala drycode  
- Unify HudMap to be sub object of DBM instead of it's own global, like rest of modules. Old global still in place until next DBM version released since older modules won't be pushed until said release.  
- Reclassify DMF mods to other. They are expansion agnostic (they'll also be moved to tab 2 when merged since they aren't raid content either)  
    Reclassified tabs slightly because the existing ones had no place for Brawlers and DMF. With classifications even more broadened, now those 2 mods can go on tab 2  
    Reclassified plugins to Core Plugins so it's clear that tab is for plugins that enhance CORE and not just other content mods.  
- Fix some regressions in stats code that have been there since black temple introduced timewalking. the size was changed from 5 to 6 for both timewalking AND non timewalking and it should only have been changed for timewalking (black temple). when it was changed it was also changed incorrectly because title set point needs to match height  
- Improved debug for when NewAnnounce is incorrectly used  
    Removed no longer valid spellIds/abilities from Sludgefist  
    Fixed invalid object type on Council of Blood  
    Disabled no longer valid Journal Id on Kin-Tara and disabled interrupt warning for now since journal no longer mentions spell being interruptable  
- Update koKR (#262)  
- Fixed some typos in Mists of Tirna  
    Updated luacheck  
- Fix another spot  
- Fix 4 spots missing template, 2 just forgot to inherit it, other 2 are using mixin for now  
- remove unused mod  
- Add this too for good measure  
- Add another option exception from option cleanup  
- Adjusted aggregation throttle of frozen solid from all targets within 0.5 seconds to all targets within 1.5 seconds, this will cause more names to be combined into single warnings and a reduction of overall warning spam in pugs that are a little less organized than guilds were during this tier.  
- Hungering Destroyer drycode  
- Unlocks the infoframe and rangeframe when issuing `/dbm unlock` (#261)  
- Support Localized text for silent mode  
- Made brutal backhand alert available for all roles (#260)  
- Re-enabled silent mode via minimap button but require Alt modifier instead of right click. Both right and left click just open GUI, ALT right/left click is silent mode. SHould support feature without people accidentally triggering it  
- Removed ability to toggle silent mode via minimap icon. Silent mode can still be toggied via "/dbm silent" . Reason for this removal is too many users are turning it on by accident and then not understanding why DBM is making no audio.  
- Update localization.cn.lua (#258)  
- Some tweaks to Mue based on stuff I saw on stream  
- Finally push Dealer Gexa and Meuh'zala drycodes that dungeon journal is a bit more polished. Gexa still seems incomplete though? Seems more like a classic boss than a retail one with how utterly simplistic it is :D  
- Update README.md  
- Increase harvester spawn aggregation (combing) from 5 seconds to 6 seconds on mythic, in rare cases they the 2nd one from set can be a bit slow  
- Fix a bug in last, which has apparently existed in classic since launch (but never noticed because haven't gotten to any of bosses using that object yet)  
- Allow Istanking object to support units that lack a "boss..i" unit ID, since this is supported in classic, it should be supported in retail as well, which will allow this object to be called on Trash or boss adds with a unit GUID is passed.  
- Fix a bad replace that slipped through  
-  - Added protection from FastestClear being purged by the 2nd option pruner (why there are two of them is beyond me)  
     - While at it, normalized all of the temp options various features store in dbms options table so that if DBM core ever adds garbage collection to it's options tables, it's easy to exempt all the ones that use options for temporary storage.  
     - Also found an unused temp storage variable so pruned that  
- Updated Domina, Globgrog, and Margrave from logs. Doctor Ickus can't be updated because log parses of that fight seem to hang WCL at present. On top of it, blizzard managed to screw the journal all to hell for fight too.  
