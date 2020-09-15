# Deadly Boss Mods Core

## [8.3.34](https://github.com/DeadlyBossMods/DeadlyBossMods/tree/8.3.34) (2020-09-10)
[Full Changelog](https://github.com/DeadlyBossMods/DeadlyBossMods/compare/8.3.33...8.3.34) [Previous Releases](https://github.com/DeadlyBossMods/DeadlyBossMods/releases)

- Prep a new release ahead of testing.  
- Just some tweaks before retesting.  
- Fixed a regression that slipped through last update  
- Scrap revision based force disable code. it's been tried 3 different ways and it's always broken in some way. Instead. add a bunch of annoying messages in various places about being out of date (with no disable). exception is force disable will now ALWAYS run if PTR/Beta, because testing that with old mods is just hard no. Or a major patch. These two situations will always automatically disable DBM if it's out of date regardless of revision. All other situations, there will just be a lot of nagging with no disable. If this these chat message nags prove to be ineffective, more aggressive nags will be implimented. The force update by revision code wasn't scrapped because I believe users should ignore updates, I just couldn't get it to work the way i wanted without uglier and uglier hacky code that rarely worked right, so exploring different ways of doing it til something that isn't broken is found that gets the job done (gets users to update mods when important updates are available)  
- Update GUI: zhTW (#332)  
- Update localization.cn.lua (#330)  
- Update koKR (#331)  
- Fixed one of links  
- Fixed duplicate TabCategory\_Options entries in CN and TW  
- Fix DBM\_GUI\_L usage  
- Populate empty cat panels with guide links  
- Update localization.cn.lua (#329)  
- Update koKR (#326)  
- Update GUI: localization.tw.lua (#328)  
- Fix one invalid soundkit ID and fixed another two that were backwards. I blame Artemis  
- Fixed regression with CheckNearby when the function was called by mod via bossModPrototype  
    Also fixed  bug that's existed for quite some time if GetUnitIdFromGUID is called by bossModPrototype. The reason this bug was never caught is because this function is pretty much never used on non boss unitId targets on retail.  
- Update koKR (#324)  
- Additional cleanup  
- Fixes  
- Fixed a regression that caused font color to be untranslated  
- Naming conventions  
- Tweak alerts panel sorting  
- GUI Updates  
     - Totally re-arrange the Gui into a more organized way.  
     - Also eliminated DBM\_GUI\_Frame and DBM\_GUI\_Frames globals.  
     - Cat headers will no longer show previous tabs contents, they'll show empty for now until content is added to them.  
- Update koKR (#322)  
- Began nameplate frame stuff  
- Fixed 4 buggy usages of AddMsg that resulted in DBM just posting "Nil" instead of those messages  
    Fixed several usages of DBM that should have been self.  
- Do a pass on remaining mods using AI timers that shouldn't be (by either updating them if possible or deleting them if on retail)  
    Also updated Dealer Gexa timers from longer pull data  
- Fix setting of max values properly in override (#320)  
- Update GUI localization.tw.lua (#319)  
- Add function that BC/Vanilla mod pack will need in next update  
- Forgot one EDIT/UNDO  
- Fully update the Manstorms to properly support mythic difficulty as well as new phase change trigger that was added to combat log  
    Cleaned up a bunch of random mods making reference to AI timers, even if commented out. This helps me find mods that are still ACTUALLY using them and need updates still  
- Fix something that was unfinished in last  
- Updated final 2 bosses of ToP  
    Made timer debug more strict (1 second off instead of 2) for those that opt in. Since it's an opt in, might as well catch more of them.  
- Update koKR (#318)  
- Update localization.tw.lua (#317)  
- Add another user frontend debug feature to report invalid spell or journal Ids, also off by default  
- Swap journal Id for Stone Legion Goliath, 22705 was deleted  
- set max columns to 6 and max lines to 30 to ensure max size flexible raids are accomidated  
- Couple more boss updates for Theater of pain. just 1-2 a day while trying to recharge  
- Update zhTW (#315)  
- Allow timers to disable milliseconds down to 1 second  
- Infoframe options additions  
- Update localization.cn.lua (#313)  
- Make it easier for users to contribute bad timer data via new bug report options they can choose to opt into that's more user friendly than just asking users to run the more developer advanced debug mode. this new area will allow DBM to simply add options specifically targetting boss mod type bugs like bad timers  
    Updated first boss of Theater of Pain with latest. Didn't get to rest of dungeon yet. Still been overwhelmed over here. Hope to get to rest of dungeon tomorrow or wed.  
- Revert "- Standardised all the font type, font style, font size, font shadow, and font color locales - InfoFrame now supports options!!! - Added InfoFrame options page   - Added locked, and show self buttons (Which appear on the right click menu)   - Moved don't show button from spam to infoframe   - Added lines + cols dropdowns (Which appear on the right click menu)   - Added font type, font style, font size options for infoframe (#312)"  
- - Standardised all the font type, font style, font size, font shadow, and font color locales - InfoFrame now supports options!!! - Added InfoFrame options page   - Added locked, and show self buttons (Which appear on the right click menu)   - Moved don't show button from spam to infoframe   - Added lines + cols dropdowns (Which appear on the right click menu)   - Added font type, font style, font size options for infoframe (#312)  
- ruRU update (#311)  
- Update Council of blood, post mythic testing  
- end  
- Kill off silent mode from minimap button  
- Push updated Generals mod  
- Update koKR (#310)  
- corrected typo in English localization (#309)  
- Changed a warning in Plaguefall trash that was inappropriate for how spell works from a dodge warning to a generic healer alert  
    Fixed a bug in GUI options where & was not properly encoded as &amp;  
    Merged infoframe fixes from Classic  
    Completely overhauled entire Spires of Ascension dungeon with more accurate warnings/timers that are synced with current beta build  
- Don't throw an error here (#306)  
    Throws an error if the infoframe is disabled, when it really shouldn't.  
- Update zhTW (#304)  
- Update zhTW (#305)  
- Reworked Xy'Mox after mythic testing, also fixed bugs that'd affect normal/heroic as well  
- Fix ,  
- I'll begin actual mod work tomorow, but want to push some strings up  
- Couple fixes  
- Switched scarlet letter to unit target scanner for faster warning. changed timer to line up with start instead of success  
- Add protections to 342310 sometimes not firing  
- Niche fixes requested (#303)  
    - Right side numbers will now actually justify to the right  
    - Use one column if 5 or less entries.  
- Update Shriekwing post mythic testing  
    Small tweaks on generas icon usage, but rest of update wil come tomorrow before raid testing. taking rest of night off  
- Fixed a serious bug where wicked blade and Call shadow forces were overwriting each other. Now both timers should work correctly.  
    Fixed yells so wicked blades yell text is much shorter, and crystalize/meteor text is red  
- Fixed crystalize event for timer  
    Changed wicked blade to on by default  
    Don't cancel timers on stone forms, because bosses stay active now.  
- Fix a couple minor missing things/bugs before testing  
