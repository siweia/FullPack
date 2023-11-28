# <DBM Mod> Raids (DF)

## [10.2.8](https://github.com/DeadlyBossMods/DBM-Retail/tree/10.2.8) (2023-11-28)
[Full Changelog](https://github.com/DeadlyBossMods/DBM-Retail/compare/10.2.7...10.2.8) [Previous Releases](https://github.com/DeadlyBossMods/DBM-Retail/releases)

- Prep new tag, time to push out more bug fixes before reset  
- Fixed stage 3 heroic blaze timers on Fyrak, which changed at some point  
- remove soak warning from normal larodar too, that was removed literally last week. very last minute change that was missed  
- be uniform about it.  
- Nymue Update  
     - Changed some of counts to match BW public mods  
- update some timers, closes https://github.com/DeadlyBossMods/DBM-Retail/issues/958  
- Update commonlocal.ru.lua (#318)  
- Update localization.ru.lua (#319)  
- Update koKR (Retail) (#954)  
- Update localization.ru.lua (#957)  
- Update localization.ru.lua (#956)  
- Update localization.ru.lua (#955)  
- fix typo  
- push fyrakk mythic mod  
- tweak tank swaps on Molderon to default to on for Overheated, and not on branded. branded still an option but now off by default. you can enable that if you want to do double swaps to minimize tank melee damage during the soak/brand, but the priority here willbe keeping overheated out of the soak.  
- Change default core behavior for pulling timer locals to make the short text disable work better. It shouldn't break anything, but if it does it'll be fixed case by case.  
- no code changes, just notes  
- Micro timer adjusts to last  
- Combine normal heroic tables together on larodar. they are same. Confirmed LFR also the same. extended data a little too  
- Minor Adjustments  
- Fix a stray -  
- Release tindral mythic stuff  
- Add strings for translation, mod still private for now  
- Missed a line  
- Culling of range finders  
- Add additional throttle to slam since distance filter still isn't working yet. just not gonna bother trying to fix that and hope we get a proper API for that in 10.2.5 :\  
- adjust tank warning again to avoid spam if tanks fail to swap correctly.  
- No soak in LFR Larodar  
- Fix scorchtail timers some. should be close most of the time anyways  
- small timer tweak for nymue  
- minor tweaks to fyrakk timers and fix a double start of spirits timer  
- Attempt to fix a bug that caused wrong timers to start on council, due to a logic error in special cooldown check where if the remaining time was 0 (because timer was disabled, or didn't exist) it always ran altered charge/polymorph timers  
- bump alpha  
