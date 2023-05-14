# Premade Groups Filter

## [3.8.3](https://github.com/0xbs/premade-groups-filter/tree/3.8.3) (2023-05-14)
[Full Changelog](https://github.com/0xbs/premade-groups-filter/compare/3.8.2...3.8.3) [Previous Releases](https://github.com/0xbs/premade-groups-filter/releases)

- Sort dungeon groups by mprating and rated PvP by pvprating by default (fixes #170)  
    PGF is now always active even if there is no filter or sorting expression.  
    Default sorting is now:  
    1. isApplication desc  
    2. partyfit desc  
    3. friends desc  
    4. mprating or pvprating desc  
    5. warmode  
- Allow sorting by booleans (false < true)  
