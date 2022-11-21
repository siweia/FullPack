# BagSync

## [v17.5](https://github.com/Xruptor/BagSync/tree/v17.5) (2022-11-20)
[Full Changelog](https://github.com/Xruptor/BagSync/compare/v17.3...v17.5) [Previous Releases](https://github.com/Xruptor/BagSync/releases)

- Changed the way that BattlePets are scanned and stored in the DB when in the Mailbox and Guild Bank.  The old method was causing severe lag when trying to request the speciesID for the Battle Pet from the server.  The way I originally did this was to use a scanning tooltip to grab the SpeciesID.  However with the recent Dragonflight 10.0.2 changes, this has drastically increased the load time and lag when grabbing Battle Pet data.  So i've had to remove it completely and use another method that could potentially be inaccurate in rare occasions.  
    Blizzard shows Battle Pets as "Pet Cage" or itemID 82800 in Guild Banks.  This is generic and has no real way for me to get a speciesID without requesting it from the server.  So I switched to a TextureID method.  It will be slightly inaccurate but it will reduce the lag.  Nothing I can do here folks.  Again this only affects Guild Banks and Mailbox for Battle Pets ONLY.  They will work just fine anywhere else in your bags.  
    You will need to rescan ALL your characters in order to use the new Battle Pet format that I'm using in the BagSync DB.  
    Fixed an issue where the Battle Pets were not being properly stored in GuildBanks and reduced the lag.  (Fixes #195)  
- Updated the font display all over BagSync to make it more pleasing to the eyes.  
- Fixed an issue where an incorrect item count was being displayed in the tooltips if a player crafted an item outside of the bank.  (Fixes #193)  
    GetItemInfo() has a bug from Blizzard where it returns the total item accounts in addition to bag totals regardless of parameters.  This includes totaling up Reagents with Bag item totals.  A workaround was added to address this problem.  
    Fixed an issue where crafting an item while not having ReagentsBank unlocked caused an error.  (Fixes #194)  
