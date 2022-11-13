# <DBM> World Bosses (Dragonflight)

## [10.0.1](https://github.com/DeadlyBossMods/DBM-Retail/tree/10.0.1) (2022-11-08)
[Full Changelog](https://github.com/DeadlyBossMods/DBM-Retail/compare/10.0.0...10.0.1) [Previous Releases](https://github.com/DeadlyBossMods/DBM-Retail/releases)

- prep new tags  
- PUsh kurog and council updates  
- Bump expected voice pack version for dragonflight content  
- Update localization.ru.lua (#166)  
- Fix some GUI positioning.  
- Fix another luacheck space -> tabs  
- Fix dropdown background...  
- block old naming  
- Fix GUI error with import/export Closes https://github.com/DeadlyBossMods/DBM-Retail/issues/819  
- Fix C Stack Overflow; This is caused by loading a mod that has a LOT of frames, it continiously attempts to re-render all of them on load, and can end up in a nice case where it's attempting to do that so much, overflows :D  
- Not sure why that countdown was on by default,, it never should have been for such a variable timer  
- Throttle horrified warning  
- random change  
- change packing from shadowlands to dragonisles. Better for changelog  
- Bump alpha revisions  
