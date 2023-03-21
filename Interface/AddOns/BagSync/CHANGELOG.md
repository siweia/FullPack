# BagSync

## [v19.2](https://github.com/Xruptor/BagSync/tree/v19.2) (2023-03-21)
[Full Changelog](https://github.com/Xruptor/BagSync/compare/v19.1...v19.2) [Previous Releases](https://github.com/Xruptor/BagSync/releases)

- Options Cleanup & Cache Fix  
    * Several options have been reset and cleaned up in the code.  They were a bit confusing to people and it's been made clearer to understand.  
    * Fix for the login cache check.  It should not properly iterate through all items and cache them appropriately.  
- Merge pull request #278 from nanjuekaien1/patch-46  
    Update zhCN.lua  
- Update zhCN.lua  
- Update zhCN.lua  
- Connected Realms Confusion  
    In order to prevent confusion, I have renamed all instances of Cross-Realm to Connected Realms.  Since in reality it's Connected Realm characters that are being displayed and not Cross-Realm.  That is something entirely different.  If you want to show characters from other realms other then a Connected Realm, then you must select the Battle.Net option instead from BagSync Config.  
    Connected Realms are servers that are linked together but share the same data between them.  Cross-Realm is when a character joins your server from a realm other then your Connected Realms.  
    The XR tag has been renamed to CR instead to go along with this change.  
- Tooltip Tag Fixes and Connected Realm Guild fix  
    * Fixed an issue where Connected Realm Guilds were being displayed improperly based on Account Wide settings in BagSync.  They should now properly display if you have both BNET and Connected Realms disabled.  These special guilds are denoted with a [+] in the front to let you know it's a Connected Realm Guild your character is part of.  (Fixes #277)  
    * Added Battle Pet quality coloring to the BagSync Details window.  The word "Level" will now change color based on the quality of the Battle Pet.  
    * All BNET, CR, and BagSync Tag settings should now be be inherited properly applied to all BagSync windows and tooltips.  There were situations where player selected settings were being overwritten.  
    * Fixed an issue where Classic servers were still processing Guild and Currency alerts even with tracking disabled.  