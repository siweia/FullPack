# BagSync

## [v17.9](https://github.com/Xruptor/BagSync/tree/v17.9) (2022-11-28)
[Full Changelog](https://github.com/Xruptor/BagSync/compare/v17.8...v17.9) [Previous Releases](https://github.com/Xruptor/BagSync/releases)

-   
    Version number update.  
-   
    - Added a new option to sort the BagSync tooltips by total rather than alphabetically. (Fixes #209)  
    - Updated BagSync debugging for Bag Spam Queues.  
    - Fixed an issue where the KEYRING bag was not properly being scanned and stored.  
    - Added support for the new Profession Inventory Tool Slots found in Dragonflight.  It will now display as equipped. (Fixes #210)  
    -Added a spacing in the BagSync tooltip for totals and itemid display options.  
- Enhanced the spam checks for BAG\_UPDATE.  
    Updated the StartupScan spam check and removed the timer.  Now will parse only once during login and before the new BAG\_UPDATE spam checks.  
    Changed equipment scan check from UNIT\_INVENTORY\_CHANGED to PLAYER\_EQUIPMENT\_CHANGED to reduce spam.  
    Cleaned up the Bag Checking function to make it a bit more streamlined.  
- Fixes an issue where old bag data was being shown because of the recent changes to the bagID for Dragonflight.  (Fixes #208)  
    New startup scan for bag changes will only occur during login or reload.  
- Improving the new BagSync debugging functions.  
- Merge pull request #206 from BlueNightSky/patch-2  
    Update zhTW  
- Update zhTW  
- Merge pull request #205 from nanjuekaien1/patch-20  
    Update zhCN.lua  
- Update zhCN.lua  