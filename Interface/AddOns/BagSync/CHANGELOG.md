# BagSync

## [v18.17](https://github.com/Xruptor/BagSync/tree/v18.17) (2023-02-05)
[Full Changelog](https://github.com/Xruptor/BagSync/compare/v18.16...v18.17) [Previous Releases](https://github.com/Xruptor/BagSync/releases)

-   
    * Further efficiency enhancements to the new encode/decode functions.  
    * TOC Update  
- Merge pull request #251 from nanjuekaien1/patch-33  
    Update zhCN.lua  
- Update zhCN.lua  
-   
    * Added options to display guild bank tabs in the item count tooltip. (Fixes #246)  
    * Added option to change the color of the newly implemented guild tab display info.  
-   
    * Item counts will now be in real time from the server for only the currently logged in player.  This should address issues with the item count is wrong due to crafting with items in the Reagent Bank or turning in quest items stored in the Bank.  (Fixes #250)  
    * Fixed an issue where the refresh button was not properly remembering the previous searched text.  It should now properly remember the last search entry when performing a refresh.  
    * Searches will now default to searching only item names if the user is not using any filters in the search bar, i.e name: , tooltip: , class: , quality: , etc...  Please see BagSync description on how to utilize these.  
    * Removed redundant prediction algorithms since we are now collecting player items in real time.  
    * Reverted a temporary fix for BAG\_UPDATE\_DELAYED bug caused by Blizzard on their servers for Classic, WOTLK and Retail.  
-   
    * Updated the ItemSearch library to the latest version.  
    * Removed old code that was related to a lag issue with the previous LibItemSearch scanner.  
-   
    * Improved the optional values for storing items in the BagSync Database.  It can now be expanded for future additions to item references.  
    * Added a encode/decode algorithm to allow flexibility in adding new optional values.  
    * Consolidated all the item referencing to one function instead of multiple instances.  
    * Added groundwork to display Guild Tab locations on Guild Bank items.  
- Merge pull request #248 from nanjuekaien1/patch-32  
    Update zhCN.lua  
- Update zhCN.lua  