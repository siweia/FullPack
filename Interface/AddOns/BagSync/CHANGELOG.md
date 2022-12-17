# BagSync

## [v18.3](https://github.com/Xruptor/BagSync/tree/v18.3) (2022-12-16)
[Full Changelog](https://github.com/Xruptor/BagSync/compare/v18.2...v18.3) [Previous Releases](https://github.com/Xruptor/BagSync/releases)

-   
    TOC Update  
- Merge pull request #230 from nanjuekaien1/patch-27  
    Update zhCN.lua  
- Update zhCN.lua  
-   
    - Slight fix for deDE as to how slash commands are handled.  
- Merge pull request #229 from DlargeX/master  
    deDE locals  
- Update deDE.lua  
- Merge remote-tracking branch 'upstream/master'  
-   
    - Increased the BagSync Debug screen slightly to compensate for unexpected large debug lines.  
    - Some slight Debug line changes.  
- Merge remote-tracking branch 'origin/master'  
-   
    - Optimized the Battle Pet scanning routine slightly to improve performance and try to reduce lag a bit when working with the Guild Bank and Battle pets.  Should reduce lag when switching Guild Bank tabs.  (Thanks to @MorningMistS from GitHub.) (Fixes #228)  
- Merge pull request #227 from nanjuekaien1/patch-26  
    Update zhCN.lua  
- Update zhCN.lua  
-   
    - Added a new Custom Sort Order option.  This option allows you to sort your characters how you wish them to display by a numerical ascending sort order. (Fixes #222)  
    - Fixed an issue where some servers were not properly being returned as Connected Realms due to complex long names.  Additional checks have been implemented to look for these types of servers. (Fixes #225)  
    - Updated the Unfit library to provide support for the Evoker class.  
    - Cleaned up a few options in the BagSync config menu.  
    - Added a few more Debug lines to assist with bug detections in regards to server names and characters display.  
    - Cleaned up the SpamBag routine checks for Bag Scanning spam.  
- Merge remote-tracking branch 'upstream/master'  
- Merge pull request #226 from nanjuekaien1/patch-25  
    Update zhCN.lua  
- Update zhCN.lua  
-   
    Reworked the minimap icon for BagSync and updated it to use the LibDBIcon library instead.  It's been a long time since I update that code lol.  Huzzah!!! BagSync Minimap is more friendly with other addons now. (Fixes #224)  
- Merge remote-tracking branch 'upstream/master'  
-   
    - Small error check for new tooltip cleanup I did for Classic and WOTLK.  
    - Limited the new Event parser for Debug to only focus on events we want to see.  
    - Minor TEMPORARY cosmetic fix for the AceGUI Windows widget.  On Retail it shows the close button a little off to the right on the windows that are generated.  I don't normally edit Ace3 files, but this is a minor fix until the team fixes it.  
-   
    - Significantly improved the BagSync tooltip display across the board.  It's much better on performance now and won't hammer the BagSync DB so much when viewing the same item tooltip.  
    - Improved the BagSync Tooltip cache process and it cleaned up the BagSync Extra Tooltip option as well.  
    - Modified the Extra Tooltip to show by default on the bottom left rather than the bottom right when on the right side of the screen.  
    - Fixed a slight bug with ItemID processing that may occasionally occur when viewing Battle Pets.  
    - BagSync Tooltip cache will now use the original Item Link rather than the parsed one for comparison.  
    - Cleaned up redundant code all over the place and merged a few of the older ones.  
    - Removed a few Retail checks as they weren't necessary.  
-   
    - Fixed a Blizzard server delay issue that occasionally prevented Bank and GuildBank from being properly scanned. (Fixes #220)  
    - Added a Clear button to the BagSync Debug window.  
    - Fixed an issue where deleting BagSync profiles would sometimes leave behind old Guild data.  
    - Completely reworked how events are triggered and processed in BagSync.  
    - Improved the code when scanning the Auction house on Retail.  
    - Updated BagSync Debug lines to provide more details and execute sooner.  
    - Improved performance of Guild Bank scanning.  
- Merge pull request #223 from BlueNightSky/patch-3  
    Update zhTW  
- Merge remote-tracking branch 'upstream/master'  
- Update zhTW  
-   
    - Fixed an issue where the new Tooltip Parsing API provided by Blizzard in Dragonflight was not properly passing back Pattern, Plans, Recipes, Schematic, etc.. as ItemID.  Instead it was returning the ItemID of the item being crafted.  I have compensated for this in the code and made adjustments to fix their mess.  (Fixes #221)  
    - Added some more [FINE] Debugging for bag scans to help with solving issues.  
- Update deDE.lua  
