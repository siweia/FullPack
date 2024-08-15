# BagSync

## [v19.47](https://github.com/Xruptor/BagSync/tree/v19.47) (2024-08-15)
[Full Changelog](https://github.com/Xruptor/BagSync/compare/v19.46...v19.47) [Previous Releases](https://github.com/Xruptor/BagSync/releases)

- Show Blacklisted items on the current player only  
    * New option to display BagSync Blacklisted items on the current player only.  This option is not recommended and will still display a total account even if the item is blacklisted. (Fixes #353)  
- Fixed a nil bug with IsAddOnLoaded  
    * Blizzard has moved IsAddOnLoaded to C\_AddOns.IsAddOnLoaded.  This has been fixed. (Fixes #356)  
- Fixed an error when opening Guild Bank and with zero durability items  
    * Fixed an error caused by recent changes to the API by Blizzard.  SurfaceArgs was removed.  Guild Bank scanning should work again.  (Fixed #356)  
    * Changed the way Tenders are handled.  They are now considered a Warband Currency.  So as long as you have Warbands unlocked, it will display the Warband tag and symbol for the Tenders currency otherwise it will show the current player.  (Fixes #351)  
    * Fixed an issue where items with zero durability were not being counted correctly by BagSync.  (Fixes #355)  
- Fixed an issue when using Warband Bank Convergence  
    * Items were not properly being counted when using the Warband Bank Convergence.  This has been fixed.  (Fixes #355)  
