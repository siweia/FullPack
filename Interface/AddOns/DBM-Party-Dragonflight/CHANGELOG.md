# <DBM> Dungeons (Dragonflight)

## [r70](https://github.com/DeadlyBossMods/DBM-Dungeons/tree/r70) (2023-03-06)
[Full Changelog](https://github.com/DeadlyBossMods/DBM-Dungeons/compare/r68...r70) [Previous Releases](https://github.com/DeadlyBossMods/DBM-Dungeons/releases)

- Update localization.ru.lua (#104)  
- update luacheck  
- Full buff helper for court of stars, with complete compatability with littlewigs out of box thanks to Funky for letting me use and revise LW code to use existing platform instead of reinventing wheel  
- Push localization of in progress mod work  
- hate when I do that. I forgot to change to count object  
- improve/fix language for the icon options  
- Add count to screech timer and reset count when either goal are activated. Count will be shown in alerts and timers  
- fix option key of last and default key  
- Odyn now has a drop down with 4 configurations available for runic Brand. This allows you to choose any of the 4 following options  
       - "Gives voice alerts give icon based directions (such as using flares)",  
       - "Gives voice alerts based on cardinal directions as if entrance is south and throne is north",  
       - "Gives voice alerts based on cardinal directions based on minimap, where throne is south and entrance is north",  
       - "Gives generic voice alert that just says you're targeted. No direction indication is given"--Default  
- remove all directions from DBM  
- Re-fix ragnarok timer, which got broken since the commit it was fixed in was reverted cause other stuff in it was bad.  
- another tweak but at this point my hands are kind of up in air with inhale timer. i'm convinced it's just math.random  
