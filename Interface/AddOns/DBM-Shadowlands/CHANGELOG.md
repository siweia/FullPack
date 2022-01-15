# <DBM> World Bosses (Shadowlands)

## [9.1.24](https://github.com/DeadlyBossMods/DBM-Retail/tree/9.1.24) (2022-01-13)
[Full Changelog](https://github.com/DeadlyBossMods/DBM-Retail/compare/9.1.23...9.1.24) [Previous Releases](https://github.com/DeadlyBossMods/DBM-Retail/releases)

- prep new tags  
- Pantheon Update  
     - Refactored the way timers are stored on prototype pantheon, since it's definitely gonna be one of those fights.  
     - Also replaced every bit of heroic timer data with latest LFR data instead, since it's likely more accurate. Does it mean these will match heroic or mythic, probably not completely, but it'll be a better starting placce for adjusting the other difficulty timers since it's likely heroic tuning at this point went out the window.  
     - All timers are also now count timers  
- Fix more copy paste  
- Fix bad copy paste  
- Prototype pantheon mythic prep  
- Set skolex threshold to not show players with dust stacks lower than 5  
- tweak wording of last so it can be used when regardless of whether threshold is descending or ascending (ie below or above threshold)  
- Improve infoframe auto text, for infoframes defining thresholds  
- Honestly, blizzard made things worse by changing p3 debuff name that's a diff mecchanic, to be same name as an earlier phase debuff that works differently.  
- Prep anduin for mythic testing  
    adding support for dire wicked star  
    Clarified the hopelessness timer in stage 3 (plus making it an ai timer for now)  
    Added infoframe to mythic to track lost soul durations on all remaining lost soul players that auto shows and hides as needed.  
- Post heroic testing vigilent guardian update AND pre mythic testing prep.  
- Update koKR (#712)  
- Factor stat inflation into trivial check, and give classic a 15 level buffer instead of 10. power inflation didn't start until mid to late wrath.  
- Rename "wormhole" to tear to match spell changes.  
- improve last  
- Add new utility function I need for a mod  
- Add requested timer for tank explosion on Dausegne  
- Further throttle rift blast, it's pretty spammy so now it's not even special announce by default, opt in only  
    Also fixed a bug where alternate name ids were in wrong field  
- Throttle rift blasts  
- Post testing tweaks to Skolex  
- Also fix rings  
- Fixed bug causing timers not to work  
- Probably gonna make this mistake every GTFO I add this tier, since i used a shitty template  
- Few areas of light prep for mythic testing  
    *Xy'mox  
     - Added counts to rings and relocation timers  
     - Added target explosion timer to relocation  
    *Dausegne  
     - Tweaked debuff check for tanks to avoid mistaunts  
    *Lihuvim  
     - Added missing phase timer for Syntesize CD  
    *Skolex  
     - Added GTFO for mythic crap on ground  
- Missed this  
- Switch anduin back to lower CPU combat log since  this bug has been fixed in next build, will leave backup method in mod (commented out) for now in case it isn't  
- Fixed some bugs in last, now it's rock solid  
- Respect the simple/BW bar behavior on small bars too, if enlarged ones are disabled  
- Fed a bug where wings off rage and reverberating refrain timers would show "unknown" instead of count when the bars restart on stage 2 mythic  
- Update zhTW (#34)  
- Update koKR (#33)  
- Post testing anduin updates, at least up to early P2, beyond that is still undone (but should be faster to add in with tables constructed  
- Improve stage debug further  
- Update localization.ru.lua (#32)  
    Added two missing phrases.  
- Update localization.ru.lua (#31)  
    Several phrases were not translated into Russian localization. I added. Perhaps they need to be properly distributed in the file somehow.  
- Update localization.ru.lua (#711)  
    Oops .. Sorry :D  
- Update DBM-Shadowlands.toc (#710)  
    Added RU localization.  
- Create localization.ru.lua (#709)  
    A bit of Russian translation.  
- Update localization.ru.lua (#708)  
    Small typo.  
- Update localization.ru.lua (#707)  
    Russian translation.  
- Update DBM-SanctumOfDomination.toc (#706)  
    Added Russian translation.  
- Create localization.ru.lua (#705)  
- Update localization.ru.lua (#704)  
    I think I forgot the line -> if GetLocale() ~= "ruRU" then return end  
    Or is she not needed ?  
- Update DBM-Party-Shadowlands.toc (#703)  
- Create localization.ru.lua (#702)  
- Fix bad check style with copy and paste from desolate host.  
- Fixed a bug where soul tracking didn't work on Anduin, do to blizzard not putting debuff in actual combat log. It has to use cpu wasting UNIT\_AURA scanning on entire raid...Hopefully an oversight.  
- Deprecated and blacklisted DBM-RaidLeadTools;  
    Its far beyond broken, and likely to never be supported again, there's far superior alternatives.  
    - Also removed the AddSliderOption, AddEditboxOption, AddButton features as they were only used by RaidLeadTools, and the main feature that's totally broken.  
- Move Brawlers and WorldEvents into other category, as it's not "shadowlands"  
- Update to last update to last  
- Update to last to fix animastorm  
- Post testing Pantheon mod.  
- small tiny improvement in /dbm whereami  
- Apply 200ms infoframe batching on bosses that apply or remove applicataions of stacks on entire raid all at once. 400ms on world bosses to account for more lag. Bosses that aren't applying or removing from entire raid all at once have no need for this. Aim of this change is to make sure there isn't even slightest amount of micro hitching that might be caused by itterating the infoframe up to 30x in a single frame (no confirmation this was even caused by DBM and not a combination of othe addons or weak auras, but non the less it's still a chance to micro cpu optimize)  
- also chang this before I forget  
- Finish the Halondrus mod post testing.  
- Fixed bug where intermission timers didn't stop when entering next stage  
- Fixed wicked star icons not being cleared  
- serioiusly fuck off with a stupid petty complaint  
- Fixed critical bug with logic on blasphamy  
- UpdateTable should also support batching for cpu saving.  
- Added yell repeater for dire hopelessness too  
    Also fixed a bug where countdown yell for wicked star would fail to cancel if debuff ended early  
- tweaked icons used by Generic anduin yell repeater to use Cross and square  
    Added a repeating yell to players who got no debuff (and players who cleared theirs) that repeats until no debuffs remain.  
- Picky  
- Few initial fixes  
- Fix dbm core treating 9.2 raid as trivial content  
- Fix phase change detection  
- Fix two more bugs  
- Fix bad copy/paste  
- Fixed a bug that may cause classic era DBM to be too aggressive with force disable do to fact I forgot to update the min interface (which is used as reference for the force disable)  
- Set alpha revisions  
