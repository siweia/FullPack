# Premade Groups Filter

## [4.2.0](https://github.com/0xbs/premade-groups-filter/tree/4.2.0) (2023-09-06)
[Full Changelog](https://github.com/0xbs/premade-groups-filter/compare/4.1.0...4.2.0) [Previous Releases](https://github.com/0xbs/premade-groups-filter/releases)

- Fix error message on rio*kills  
    RIO table contains nil entries if boss not yet defeated. Meta table was unable to work because table was copied by reference.  
    Reported by skob97 on CurseForge  
- Bump TOC to 10.1.7  
- Guard against nil reference (fixes #205)  
    In some rare cases (joining a group) the returned class seems to be invalid or nil.  
- Change keywords gala to fall and muro to rise  
    As discussed with Raider.io in GitHub issue.  