# Premade Groups Filter

## [3.1.4](https://github.com/0xbs/premade-groups-filter/tree/3.1.4) (2022-11-13)
[Full Changelog](https://github.com/0xbs/premade-groups-filter/compare/3.1.3...3.1.4) [Previous Releases](https://github.com/0xbs/premade-groups-filter/releases)

- Set version to 3.1.4  
- Try to avoid some UI taint with StaticPopup  
- Fix GetDungeonScoreRarityColor sometimes returning nil  
    C\_ChallengeMode.GetDungeonScoreRarityColor sometimes does not return a value but nil, resulting in a bunch of nil pointer errors for some players (reported via CurseForge comment 766).  