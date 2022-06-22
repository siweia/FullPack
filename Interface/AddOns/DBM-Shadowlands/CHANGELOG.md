# <DBM> World Bosses (Shadowlands)

## [9.2.20](https://github.com/DeadlyBossMods/DBM-Retail/tree/9.2.20) (2022-06-21)
[Full Changelog](https://github.com/DeadlyBossMods/DBM-Retail/compare/9.2.19...9.2.20) [Previous Releases](https://github.com/DeadlyBossMods/DBM-Retail/releases)

- prep new tags  
- Fix /dbm hud arrow not working (arithmetic on nil) #133  
- Prevent newly added ToP warnings from firing from trash player is not engaged with, since that mob casts those abilities on other npc combatants too  
- fixed missing ,  
- Added volatile trap warning to Sanguine Depths trash  
    added searing death interrupt warning to Theatre of Pain trash  
    Fixed Draw Soul target warning to aggregate multiple targets on Kultharok in Theatre of Pain  
    whirlwind alert for trash in Theatre of Pain  
    maybe add interrupting roar too to Theatre of Pain  
    Added GTFO for Anquish in Theater of Pain since it's hard to see (red on red, come on blizzard)  
    Removed chat bubbles for debuffless on anduin since that mechanic is being removed with next maintenance  
- Update koKR (Retail) (#772)  
- Update localization.cn.lua (#771)  
- Fixed a bug where Tears of the forrest timer and alert never worked on Ingra Molach (the entirety of the expansion, too bad it wasn't reported sooner)  
    Added Spear flurry warning to Tirna Scithe trash mod  
    Added RP timer for Soazmi  
    Added Spawn timeers for Both Achillite and Venza to The Grand Menagerie encounter  
- Update zhTW (#769)  
- Update koKR (Retail) (#768)  
    Co-authored-by: Artemis <QartemisT@gmail.com>  
- Added missing GTFO throttle  
-  - Add interrupt warning to Curse of supression to sanguine depths trash mod.  
     - Changed Wrack soul interrupt to off by default to give curse of supression higher priority.  
     - Also added a dispel warning to curse of supression if cast gets off.  
- This will do for now to get affixes mod loading  
- Update localization.ru.lua (#132) Add a few phrases.  
- Update localization.ru.lua (#767)  
- Fix another error  
- really love vague lua check reports  
- Why luacheck couldn't find that in last two runs I'll never know.  
- Added support for Mythic Plus Affixes in a global trash module that will warn for following:  
     - Quake  
     - Volcanic  
     - Sanguine  
     - Force Slam  
- Dungeon Updates:  
     - Added Grim Fate trash warning to Necrotic Wake  
     - Fixed trash mod to stay loaded when going into soleah so drifting star trash warning isn't suppressed when pulled with boss  
     - Fixed stage 2 trigger for soleah triggering two needless timer refreshes before expiring  
     - Fixed power overwhelming alert so it doesn't say "unknown" in parenthesis during So'leah encounter  
     - Added warning when azules casts attenuating barrage  
     - Added warning for Crashing Strike that Forsworn Squad-Leader uses  
     - Fixed ordinance cast on Oryphron  
     - Added warnings for reaver and dark lotus in other side  
     - Improved timers on Muehzala to add clarity to danger of shatter reality by showing the 10 second cast timer with deadly icon and made the CD for ability instead act more as a phase bar.  
     - Fixed alert for death gate on Muehzala since blizzard must have removed it from combat log at some point? Now it uses scheduling to make sure it correctly warns.  
     - Changed audio for master of death on Muehzala from "watch wave" to "shockwave" to hopefully be a little more clearer it's a big ass boss frontal  
     - Added erupting torment warning that's on by default for melee to Lord Chamberlain  
     - Added alerts for Jagged spines  and enveloping webbing in plaguefall  
- Refactor GetEnemyUnitIdByGUID to be more inclusive, then use it in IsValidWarning object. This, in turn, allows filtering for units affecting combat in trash modules to be far more effective at identifying combat affecting units. Should result in far less filtereed warnings against mobs you're actually fighting in modules that use strict filtering.  
- Prevent Ricochetting target scan from running non stop and wasting cpu in theater of pain by limiting it to units affecting combat  
- Code tweak to last  
- Made unit target scanner more robust by addressing two core issues. 1. When not in a group it basically didn't work, because it failed to consider that when solo there won't actually be a target swap, you'l just always be \"the tank\". Now if not in group it'll execute \"tanks allowed\" permission on scan completion and still give a target warning (you). 2. The extra validation checks when in group, were also broken in that they only considered raids, not 5 mans. This is why dungeon mods using the better UNIT\_TARGET monitoring method never actually had working target scans. Every time a 5 man dungeon got a report of target scan not working on this better method I just swapped method believing it was a methodology problem, but I know better now and this should also be fixed and allow the better target scanning method to be more widely used in 5 man dungeons.  
- Added Anima fountain warning/timer to Aleez (not sure how this was missed)  
- Downgrade Stones call on Echelon to improve overall feel of mod during encounter. De-emphasizing this one warning makes mod feel far less spammy  
- Update localization.cn.lua (#131)  
- Update koKR (#130)  
- Update zhTW (#129)  
- Add missing localized icon text, as well as fixed bug where another one of them wasn't actually used yet.  
- Added some missing difficulty indices  
- change audio on LFR and normal difficulty jailer to not mention a knockback  
- Bump tbc alpha  
- random cleanup  
- prep new TBC tag  
- Attempt to fix some bugs with wipe detection not being fast in classic, especialy on twins.  
- over commented  
- Disable armed security timer, since it's almost always delayed by containment.  
    Also fixed interrogate timer  
- GUI: Colorized TColor dropdown (#128) Better UI/UX for TColor dropdown, since the assigned color names are not representative.  
- fix remapping bug  
- Fix https://github.com/DeadlyBossMods/DBM-Retail/issues/764  
- Fixed a bug that caused fetid gas warning/timer to never work on Blightbone  
- set new alpha cycle  
