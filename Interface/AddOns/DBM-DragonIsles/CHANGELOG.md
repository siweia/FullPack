# <DBM Mod> World Bosses (DF)

## [10.1.21](https://github.com/DeadlyBossMods/DBM-Retail/tree/10.1.21) (2023-08-08)
[Full Changelog](https://github.com/DeadlyBossMods/DBM-Retail/compare/10.1.20...10.1.21) [Previous Releases](https://github.com/DeadlyBossMods/DBM-Retail/releases)

- prep new tag with fixes for m+ affixes and the clickable weak aura spellids plus a behind the scene api that helps WAs addon itself in future  
- Attempt to fix countdown not being canceled when it should be by ensuring it's ALWAYS canceled on timer manipulationn even if bar ceases to exist mid execution. During M+ I repeatedly got countdowns for stale/dead timers for unknown reason.  
- Refert changes to M+ affix timers, it made them even worse.  
- Access options properly.  
- Expose colorVariables in DBT  
- Update koKR (#260)  
- remove unused  
- Update localization.ru.lua (#259)  
- furhter cleanup  
- also kill this too  
- Merge branch 'master' of https://github.com/DeadlyBossMods/DBM-Retail  
- Change how pausing logic works on afflicted and incorporeal timers. This will make the timers less accurate in some situations but more accurate in others. However it's a change that favors timer being short versus timer being too long. The pause logic of both of these affixes is extremely inconsistent to properly nail so now basically DBM isn't eve gonna attempt it anymore, just let them count down even out of combat, but pause timers at 1 sec remaining to show a cast is upcoming.  
- tweak text, so it fits better for more types of copyable content  
- Weak aura keys are now clickable in GUI for easy copying to clipboard Copy text dialog now has darker background so it's easier to read  
- Fix typo  
- bump retail alpha  
