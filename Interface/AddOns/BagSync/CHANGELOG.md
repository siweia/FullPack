# BagSync

## [v19.0](https://github.com/Xruptor/BagSync/tree/v19.0) (2023-03-18)
[Full Changelog](https://github.com/Xruptor/BagSync/compare/v18.22...v19.0) [Previous Releases](https://github.com/Xruptor/BagSync/releases)

- Major rework with new and redesigned features!  
    (NEW) ALL BagSync windows have been completely rewritten for improved performance and speed.  They are much more zippy than before, yay!  In addition, I redesigned the look of some of the windows and added some new elements to make it cleaner.  
    (NEW) BagSync will now automatically cache all items in the database when you login and when you utilize the search window.  No more refreshes needed and it will definitely feel a lot faster!  
    (NEW) A tooltip cache system has been implemented to improve performance across the board.  This should help out with users with slower systems or those that have a ludicrous amount of characters and items stored in the database.  
    (NEW) BagSync Gold window has been changed from a tooltip to a window frame.  There were some users with WAY too many characters that were being displayed in a tooltip that stretched across the screen.  In order to combat this, the Gold display was redesigned into a scrollable window instead.  
    (NEW) Enhanced External toolip!  You can now setup the font, size and outline of the External tooltip.  It utilized the LibSharedMedia library to grab fonts from multiple addons you have installed.  Go wild!  
    (NEW) BagSync Search help window that gives you information on how to utilize powerful search commands to help you define and narrow your search results!  
    (NEW) BagSync Search Details window!  You can now click on the Details button located to the right of an item listing to get a complete breakdown of that item.  It will display all characters and locations for the item selected.  Battle Pets will have their independent stats and levels shown in that window on a per character basis when you hover over them as well!  
    (NEW) Saved Search feature!  You can now save your complex search commands to the new BagSync Search window.  Quickly access saved search commands for faster search display!  Use the BagSync Search help window for more information.  
    (NEW) BagSync tracking options!  You can now select what modules that BagSync will track and store in the database!  Only want to track Bank items?  Just unselect everything except the Bank in the BagSync Tracking options.  This should help with users that only want to track and display specific locations in the tooltip item totals.  You can find all these options under the new Tracking category in the BagSync Config screen.  Be warned that turning off a module will prevent BagSync from tracking and storing that module in the database!  (There is a warning there for a reason.)  
    (NEW) Improved tooltip request system to minimize the amount of times data is grabbed from the database!  
    (NEW) BagSync will now track when you send mail to other characters you own. (This will only work if you logged in to the recipient character at least once.  Otherwise BagSync would never have made an entry in the database for that character.)  
    Currently logged in player item totals will now always be calculated regardless if they use items from the reagent bank remotely while crafting.  BagSync will always use the on demand amount the current player has regardless of what's stored in the BagSync database.  This algorithm has been improved from previous updates.  
    The external tooltip will now function with the Blizzard Currency window.  
    Moved the Keybindings options to their own independent category in the BagSync Config screen.  
    Changed the way the Guild Bank is scanned and saved.  It will now function just like every other addon out there.  Only the tabs that are visited will be updated and saved instead of scanning the ENTIRE guild bank every time move things across.  The only time the entire guild bank is scanned is when you first open the guild bank window, otherwise only the clicked on tabs are saved.  This should significantly improve the speed and response time of the Guild Bank when moving things around and interacting with it.  
    BattlePet stats will now be saved in the BagSync Database.  This will only work so long as the WOW client has access to BattlePet data.  You MUST have accurate BattlePets enabled in BagSync for this to work.  Blizzard does not transmit Battle Pet data unless this option is enabled.  
    BagSync Currency window and Blizzard Currency window will no longer display characters that have 0 tokens of that currency. In addition the new tenders currency has been hardcoded to be ignored as it is the same amount across all characters.  
    Removed the option to show Guild totals separately.  This was rarely used and only added to more processing time.  It was redundant to show guild totals per character, many of which where duplicates.  BagSync will now always show guild independently.  
    Removed a few redundant options that are no longer necessary from the BagSync config screen.  
    Player faction icons have been reduced in size slightly to prevent warping and distortion of the text when being displayed in tooltips and in BagSync windows.  
    Removed redundant Ace3 libraries that are no longer needed.  
- Rework Part 19  
    Had to add checks for Currency processing on Classic and WOTLK servers.  Those servers only have a partial or very limited implementation of the C\_CurrencyInfo API.  Simply checking for it does not work accurately.  
    Removed all checks for Classic servers and using API function checks instead to ensure certain features are available on particular servers.  (Example Guild Banks).  
- Merge pull request #276 from nanjuekaien1/patch-45  
    Update zhCN.lua  
- Update zhCN.lua  
    Why is there always a low -level error recently  
- Merge pull request #275 from BlueNightSky/patch-8  
    Update zhTW  
- Rework Part 18  
    Final fix for the Advanced Search cache issue.  
- Update zhTW  
- Merge pull request #274 from nanjuekaien1/patch-44  
    Update zhCN.lua  
- Update zhCN.lua  
- Rework Part 17  
    Finalized the new Saved Search feature and cleaned up the window.  
    Fixed a minor bug that was causing tooltips not to reset cache correctly when using the Advanced Search.  
- Rework Part 16  
    Forcing a Database reset after all these years to ensure compatibility with all the recent changes and to cleanup old code.  
    Removed an old Debug option that was pointless with the new BagSync Debug window.  
    The new BagSync font settings will only apply if any of the settings are changed rather forcing a new font every single time.  
- Rework Part 15  
    Item Cache is now generated when a user logins and checks when they open the Search frame.  This should definitely increase the speed in which searches are done.  
    Fixed an issue where the new Details window was not being elevated when displayed above other frames.  
    Updated the BagSync timer functions as it was deleting the previous run function before it was finished.  This uses a priority system now and will delete them as they performed.  
- Rework Part 14  
    Fixed the frameStrata issue with all the windows.  They will now stack properly.  
    Updated the Item Cache to initiate checks with Blizzards internal cache system C\_Item.  
- Rework Part 13  
    Updated LibItemScout to support spaces in commands.  Changed the Union and Intersect search options to double operators (&& and ||) instead of single.  
    Experimenting with caching items at user login instead of on the search window.  
- Rework Part 12  
    Finished implementing the new Tracking settings system.  Minimap will now respond properly based on settings in the Tracking config menu.  
- Rework Part 11  
    Moved the Keybindings options to their a separate tab in the BagSync config.  
    Added new font options for the BagSync External Tooltip.  Also separated the options to make them easier to spot and cleanup the config screen. (Fixes #267)  
    Removed some old icons that were being tested.  
- Merge pull request #273 from nanjuekaien1/patch-43  
    Update zhCN.lua  
- Update zhCN.lua  
- Rework Part 10  
    External Tooltip is now supported under the standard Blizzard Currency Tab.  
- Merge pull request #272 from BlueNightSky/patch-7  
    Update zhTW  
- Update zhTW  
- Rework Part 9  
    Had to reworked the base templates as they weren't fully supported in Classic/WOTLK servers.  Streamlined them and moved to a more custom texture format then using one of the Blizzard built in frames.  
- Merge pull request #270 from nanjuekaien1/patch-42  
    Update zhCN.lua  
- Update zhCN.lua  
- Update zhCN.lua  
- Rework Part 8  
    New Details module has been finished.  This module will open a window that displays detailed item summary for characters in the BagSync Search window.  Battlepets will have their full stats shown in tooltips as well as pet levels.  
    Changed the layer at with all BagSync modules are displayed so they play along with other addons.  
    Fixed a bug with the new Advanced Search that was displaying guild results regardless of options selected.  
    Added extra checks to prevent multiple scans during a search routine.  
- Update zhCN.lua  
- Update zhCN.lua  
- Rework Part 7  
    Work on the new Item Details window is moving along.  It will display a detailed summary of all characters and locations where a specific item is located.  In addition to providing added information.  
    Updated the new Gold Window to display only the gold values if a character has any gold on them.  If they don't they it will default back to silver and copper.  
    Small update to the Professions window to provide more information on a character in the tooltip to help distinguish between characters.  
    Reworked a bit of code to prevent some functions from being too spammy or at least being called WAY too much.  
- Rework Part 6  
    Removed the custom labels used by BagSync for AceGUI.  
    Reworked the Sort Order window and have added it to the slash commands and minimap. Reworded a few things related to it in the enUS localization.  
    Added Tooltip Cache resets for various windows and options that may affect the Tooltip display such as Blacklist, Whitelist, Profiles and Sort Order.  
    Reworked the Profiles window.  
- Rework Part 5  
    Reworked the Gold display.  It's now an independent scrolling frame instead of a tooltip.  The tooltip was causing issues with people that had a ridiculous amount of characters across multiple servers.  In addition it was distorting the tooltip and preventing it from being displayed properly.  I had to move it to it's own frame to fix this problem.  
    Whitelist Module has been reworked.  
- Rework Part 4  
    Blacklist has been reworked, added support for Battle Pets by using the FakeID.  
    Currency Frame has been reworked.  Removed player units that had 0 in a currency.  When no one has a currency but it's recorded in the database, it's now listed as None.  
    Professions frame has been reworked and cleaned up.  
    Recipe List window has been reworked and performs much faster now.  
    Fixed a bug where the guilds were not being properly checked if they were blacklisted.  
- Rework Part 3  
    Renamed some functions and streamlined a few.  
    Added more templates to continue the process of removing the dependency for AceGUI.  
    Completed the Advanced Search UI rework.  
    Completed the BagSync Search rework.  Item Summary frame still needs to be created.  
    Trying to add reliance on storing Battlet Pet stats for future use.  
    Completed the BagSync Debug rework.  Improved the Export frame to be smoother and faster.  
    Fixed a bug with Classic servers not saving the Auction expiration time properly.  (Sometimes doing these reworks is a good way to catch bugs lol).  
    Tooltip rework should be complete.  Added a multilayered cache system to improve performance on slow computers and those with ridiculous large databases (8000+ items and such)  
- Rework Part 2  
    Removed the need for AceTimer library.  
    Finished up the Advanced Search frame rework.  It's not much faster!  
    Added checks to make sure that the player Guild doesn't get cached, which would result in inaccurate counts.  
    Reverted some Guild Bank changes slightly.  The old code is back but has been optimized.  I removed the queue system and just query all the tabs when the guild bank is opened.  The only difference is that after the initial scan, only the tabs that are visited (clicked on) will be queried updated in the database.  NOTE: There is a delay and a bug on the WOW client where queried tabs don't always return the correct item count until you actually visit the tab.  No way around this.  
- Search Rework  
    Redesigned the Search window from the ground up and improved performance.  I'm not using the built in Blizzard code rather then relying on AceGUI.  
- Added caching to Search Module  
    Improved the precision and efficiency of the Search Module by adding a global cache system.  
    LibItemScout now supports passed cache tables so long as they follow a specific variable format.  
- Tooltip Cache System  
    To improve performance I've enhanced the Tooltip display and added a Cache system for already processed items.  This will be saved during the entire playing session and hopefully improve stutter and or slight hitching with users whom have over 8000 items.  
    Complete rewrote the entire Tooltip Module to improve performance across the board.  Cleaner code and efficiency.  
    Decreased the size of the Faction icons as they were causing wrapping situations with other displayed lines.  They are now the same size as the race icons.  
    Player totals will always be calculated now regardless if they use items from the Reagent Bank while crafting.  This data will NOT be cached as it will be real time item counts.  
- Major Rework of Tooltip and Search Modules  
    Removed the option to show Guild totals separately.  This was rarely used and only added to more processing time.  It was redundant to show guild totals per character, many of which where duplicates.  
    Fixed a slight calculation bug in BagSync Debug that calculates item totals.  
    Minor improvement to the Unit module.  
    Removed tooltip resets during the Scanner module.  
- Reset Tooltips on Config Change  
    Reset tooltip cache on BagSync Config changes.  
- Tooltip Cache Update  
    In order to improve performance with users that have over 8000 to 10000 items across dozens of characters, I've implemented a cache system for the tooltips.  The data will be cached while hovering over multiple items.  This cache will refresh however whenever new data is implemented into the DB.  This is just a slight stopgap performance enhancement to help alleviate some slight stutter.  
- Update for new detailed summary feature.  
    Code cleanup for BagSync default settings.  
    Fixed a bug with removing encoded opts.  
    Small cleanup to fix the Guild Banks new database storage format.  
-   
    Added a search help window to explain some more advanced search commands.  
-   
    Changed the way the Guild Bank is scanned and saved.  It will not function just like every other addon out there.  Only the tabs that are visited will be updated and saved instead of scanning the ENTIRE guild bank every time you visit.  This should significantly improve the speed and response time of the Guild Bank when moving things around and interacting with it.  The tabs you visited or changed will be updated in the BagSync DB when you close the Guild Bank window.  
    Removed the Alert window and options for Guild Bank scanning.  
    NOTE: All old Guild Bank data has been removed and you will need to individually visit the Guild Bank and click on each tab manually to update fully.  From that point on, only the tabs you visit and move stuff around will be updated in the BagSync Database.  
    BattlePet stats will now be saved in the BagSync Database.  This will only work so long as the WOW client has access to BattlePet data.  You MUST have accurate BattlePets enabled in BagSync for this to work.  
    Fixed various issues related to Searching in the BagSync window and improved Advanced Search results.  
    Rewrote parts of the Tooltip display algorithm, it should increase speed when displaying Tooltip data.  
    Fixed a bug with clicking on BattlePets in the BagSync Search window.  
- Merge pull request #264 from nanjuekaien1/patch-40  
    Update koKR.lua  
- Update koKR.lua  
-   
    Added an auto scan feature when updating the cache in the BagSync Search Window.  
-   
    Small fix for the BagSync External tooltip to play nice with other LibQTip libraries.  
-   
    BagSync will now track when you send items through the mailbox to other characters you own.  This will only work if you logged in to the recipient character at least once.  Otherwise BagSync would have never made an entry in the database for that character.  
-   
    Added a cache system for the Search window to help minimize the server requests for item data.  This should decrease the refresh requirements and increase the search speeds for those individuals that have a ludicrous (insane) amount of items and characters saved. Some of you have over 8,000 to 10,000 items saved and more than 20 characters.  That is A LOT of data for BagSync to parse/search through.  