# <DBM> World Bosses (Dragonflight)

## [10.1.6](https://github.com/DeadlyBossMods/DBM-Retail/tree/10.1.6) (2023-05-15)
[Full Changelog](https://github.com/DeadlyBossMods/DBM-Retail/compare/10.1.5...10.1.6) [Previous Releases](https://github.com/DeadlyBossMods/DBM-Retail/releases)

- prep tag  
- More fixes  
- missed an "ore"  
- Merge branch 'master' of https://github.com/DeadlyBossMods/DBM-Retail  
    * 'master' of https://github.com/DeadlyBossMods/DBM-Retail:  
      Update localization.ru.lua (#214)  
- Push finished Sarkareth mod  
- Update localization.ru.lua (#214)  
- Some more short name texts  
- Revise private aura api slightly to be per spell option for more finite control and better option grouping.  
- Update private aura api calls  
- Merge branch 'master' of https://github.com/DeadlyBossMods/DBM-Retail  
    * 'master' of https://github.com/DeadlyBossMods/DBM-Retail:  
      Update RU locale (#213)  
      Update koKR (#212)  
      Fix layout bugs  
- Neltharian Update:  
     - Several fixes to timers (especially volcanic heart) on all difficulties using latest data as well as working around blizzard bug where sometimes the cast for heart is completely omitted from combat log  
     - Updated somet timers for Mythic that are different from other modes  
    Misc:  
     - Several generic spell names added across 4 fights to clarify ability timers/alerts. More will come as they get reviewed  
- Update RU locale (#213)  
- Update koKR (#212)  
- Fix layout bugs  
- Forgot to hit save on this one  
- Tidy up gui a little by moving nameplate feature control into own sub area  
- Switch Golem marking to guid based from CLEU using newly added Encounter Spawn event  
- Merge branch 'master' of https://github.com/DeadlyBossMods/DBM-Retail  
    * 'master' of https://github.com/DeadlyBossMods/DBM-Retail:  
      Fix voice pack logic for private auras  
- Make mythic Magmorax mod updates public  
- Fix voice pack logic for private auras  
- Merge branch 'master' of https://github.com/DeadlyBossMods/DBM-Retail  
    * 'master' of https://github.com/DeadlyBossMods/DBM-Retail:  
      Refactor objects a little. Sorry localizers  
      Didn't mean to leave that there  
      added untestable private aura tech, cause the testing auras were removed from target dummies on live :(  
      Add feature to show Plater Nameplate aura CDs on Plater nameplates without needing to actually show DBM timers on trash (bosses will always show timers due to those needing to exist for life timer updating functionality that trash mods don't ever need  
- enable private aura custom audio from DBM  
- Refactor objects a little. Sorry localizers  
- Didn't mean to leave that there  
- added untestable private aura tech, cause the testing auras were removed from target dummies on live :(  
- Add feature to show Plater Nameplate aura CDs on Plater nameplates without needing to actually show DBM timers on trash (bosses will always show timers due to those needing to exist for life timer updating functionality that trash mods don't ever need  
- remove unused variable  
- fix stupid  
- Refactor forgotten experiments timers on mythic to be calculation based using boss energy (how timers actually work). This should provide way more accurate initial timers and detectoin of inverted cast orders  
- Couple Fixes  
- Cleanup Rashok mod  
- Announce how many hidden adds remain on Nelth, which also kinda acts as an announce when one has become unhidden  
- Scale Commander Sarkareth Update:  
     - Fixed invalid object type for Howl, count was removed cause its only cast once., so object needs to not expect count  
     - Added Stage change alerts  
    Echo of Neltharian Update:  
     - Fixed Stage 3 detection, which fixes several warnings/timers  
     - Fixed Corruption timer and count in all stages  
     - Fixed Ebon Destruction safety check so it actually warns if you are unsafe  
     - Fixed Corruption target alert to correctly give count and actual player names  
     - Fixed twisted earth alert and timer  
     - Also Downgraded Twisted earth alert to general announce for now, with special alert for it being opt in.  
     - Scrapped Useless Ruptured Veil alert  
     - Added Phase change alerts to Neltharian  
    Amalgamation Chamber Update:  
     - Fixed taunt warning during Stage 2  
    Magmorax Update:  
     - Tweaked stack alerts for heat  
- tweak voice somewhat and fix stack count in option key  
- Fix missing spellId  
- Merge branch 'master' of https://github.com/DeadlyBossMods/DBM-Retail  
    * 'master' of https://github.com/DeadlyBossMods/DBM-Retail:  
      Correctly send chat on SAY channel when using :CountdownSay() (#211)  
      Prevent pformat fallback from eating closing parenthesis (#210)  
- massive extend the scalecommander timers for both normal and heroic.  
    Set mythic to just target heroic table for now instead ofa ctually cloning it. leave mythic table blank.  
- Correctly send chat on SAY channel when using :CountdownSay() (#211)  
- Prevent pformat fallback from eating closing parenthesis (#210)  
- fix another ID  
- Fix one math error in cosmic timer  
    Fix cid for neltharian  
- fix bad object type  
- Merge branch 'master' of https://github.com/DeadlyBossMods/DBM-Retail  
    * 'master' of https://github.com/DeadlyBossMods/DBM-Retail:  
      Merge branch 'master' of https://github.com/DeadlyBossMods/DBM-Unified * 'master' of https://github.com/DeadlyBossMods/DBM-Unified: Update koKR (#209)  
      Update koKR (#209)  
      Prep new tag with all the additional fixes from tonight.  
- Add note to experiments  
    Switch sarkareth to faster ID for cosmic Ascension  
- Merge branch 'master' of https://github.com/DeadlyBossMods/DBM-Unified * 'master' of https://github.com/DeadlyBossMods/DBM-Unified: Update koKR (#209)  
