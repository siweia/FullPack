# <DBM> Dungeons (Dragonflight)

## [r54](https://github.com/DeadlyBossMods/DBM-Dungeons/tree/r54) (2022-12-30)
[Full Changelog](https://github.com/DeadlyBossMods/DBM-Dungeons/compare/r53...r54) [Previous Releases](https://github.com/DeadlyBossMods/DBM-Dungeons/releases)

- Hook up azure vault book auto gossips  
- Hookup algether Academy buff gossips  
- Fix last  
- Begin templating more auto gossip options.  
- Fixed a bug on Hackclaws Warband in Brackenhide Hollow where Greater Healing rapids and Hexricck Totem timers were overwriting each other and causing neither to work right.  
    Fixed a bug in Vault of Wardens where NIghtmares target announce was saying "torment" instead.  
- Completed auto gossip for halls of valor  
    Also fixed a bug where blast of light only alerted tank, this ability targets random player and should alert everyone  
    Also fixed a bug where Harlan sweete (in freehold) black powder alert didn't work  
    And fixed a bug where Both decimate and coalesced void CD timers were broken on Zuraal in Seat of Triumvirate  
- Add Melandrus RP timer  
- Small fix to last  
- Code cleanup and further improvements to spy helper with a header that shows clues progress  
- Fixed bug in new spyhelper code where it'd keep triggering off ones that are already done.  
- Update localization.ru.lua (#80)  
- Update localization.ru.lua (#79)  
- Allow found to be exact match as well, not sure what all localizations did.  
- fix option order  
- Closing brackets are hard  
- luacheck  
- One too many )  
- Scope HoV and CoS trash mods to only run in those specific zone Ids  
    CoS completely redone to use Gossip IDs and no longer require any text translations for Spy Helper  
    Auto gossip options also added for boat and disguise dialogs  
    Auto close reworked to be a selectable option, and have a 0.5 second delay so it doesn't screw up WAs and LWs from also getting a chance to parse the gossip data  
- Add Option Text  
- WIP stuffs  
- Fix two errors in CoS  
- add OdynRP trigger for deDE (#78)  
    Co-authored-by: Adam <MysticalOS@users.noreply.github.com>  
- Fix blazing rush  
- Apparently i'm so  stupid i forgot to hit save before commiting.  
- Fix overwrite  
- Display local message that spy was found and by whom  
    Don't close gossip dialog automatically so funky is happy  
- Redo CoS to send numbers instead of strings over comms that match LW behavior so a remapping table can be eliminated from both DBM and LW  
    Added minsync to just block comms from out of date DBM to avoid conflicts with remapping.  
