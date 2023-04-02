# BagSync

## [v19.8](https://github.com/Xruptor/BagSync/tree/v19.8) (2023-04-02)
[Full Changelog](https://github.com/Xruptor/BagSync/compare/v19.7...v19.8) [Previous Releases](https://github.com/Xruptor/BagSync/releases)

- RealmKey Fixes for Guilds  
    * Fixed an issue where sometimes a guild did not have a RealmKey stored in the BagSync DB because the user hasn't scanned the Guild Bank yet.  This causes an error in a few sections of BagSync that rely on the RealmKey. (Fixes #293)  
    * Updated the Unit module to make sure the Realm Collection is collected and accurate on user login/startup.  Sometimes the realm data is invalid because it's being called too early on server login.  These changes should fix that problem by calling them only when the server is ready.  
- Updated Cache System  
    * Added an ignore system to prevent BagSync from spamming the server with the same list of invalid or broken itemID's to cache.  
- Slight Details wording change  
    * Updated the wording in the Details frame from "Bag:" to "ID:".  This should prevent hilarious scenarios like "Bags Bag:".  You know because double bags is awesome!  