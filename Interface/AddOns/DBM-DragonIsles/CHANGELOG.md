# <DBM> World Bosses (Dragonflight)

## [10.1.2](https://github.com/DeadlyBossMods/DBM-Retail/tree/10.1.2) (2023-05-07)
[Full Changelog](https://github.com/DeadlyBossMods/DBM-Retail/compare/10.1.1...10.1.2) [Previous Releases](https://github.com/DeadlyBossMods/DBM-Retail/releases)

- prep new core tag, for final round of pre season 2 testing  
- not inverted  
- fix some option keys invalidly assigned  
- another fix  
- fix error  
- tweaks for Aberrus  
- Fix a bug that caused \"keep\" timers not to correctly stop if that timer received calls to :Update mid fight, such as SLG, or if a countdown was enabled on that timer  
- make passing guid on stop also pass boss1 guid when enabled  
- Update localization.ru.lua (#208)  
- scope last so it's only cooldown type timers and not injecting a bunch fo random target or debuff or cast timers  
- establish a default option  
- Add tech to auto populate timer callback with GUID for boss timers on a case by case basis  
- Bump alpha  
