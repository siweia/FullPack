# BagSync

## [v19.5](https://github.com/Xruptor/BagSync/tree/v19.5) (2023-03-25)
[Full Changelog](https://github.com/Xruptor/BagSync/compare/v19.4...v19.5) [Previous Releases](https://github.com/Xruptor/BagSync/releases)

- Connected Realm Guild Fix  
    * Fixed for an issue where Blizzard is returning the wrong Realm Name for Guilds on Connected Realms.  This causes a duplication bug for affected guilds because the realm names are not being matched properly.  In order to compensate, I've had to do Realm name fixes and checks to ensure the correct Realm is used.  (Fixes #285)  
    * Updated the BagSync FixDB to remove unused realm data as well.  