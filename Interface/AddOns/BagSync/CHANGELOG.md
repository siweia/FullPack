# BagSync

## [v17.7](https://github.com/Xruptor/BagSync/tree/v17.7) (2022-11-24)
[Full Changelog](https://github.com/Xruptor/BagSync/compare/v17.6...v17.7) [Previous Releases](https://github.com/Xruptor/BagSync/releases)

- Added a new option to always show the BagSync Advanced Search window.  (Fixed #199)  
- Fixed an issue where the keybind key was bring printed in the BagSync Search window if the Focus option was enabled.  (Fixes #200)  
    This occurs because the key is being press or held while the BagSync Window opens and gains focus.  To alleviate this a bit, I added a short half a second delay before the focus is given to the search bar.  
- Added some additional checks to prevent spamming of certain BagSync scanning functions during login.  (Fixes #196) .  This is just a preventive measure to help with potential slow loading during login.  
    Fixed an issue where the LibItemSearch library was causing quite a bit of start delay.  (Fixes #196).  Have added additional code to disable the issue if detected just in case.  
    Delayed the startup scans by BagSync by 4 seconds to allow Blizzard client and other addons breath before doing any scans.  (Fixes #196)  
    Added some checks to make sure that BagSyncs StartupScan() only gets fired once per login/reload. (Fixes #196)  
    Added some debugging lines for myself to allow me to debug things a bit easier in the future.  I highly recommend you don't turn this on unless you have tekDebug installed.  
    Updated the minimap radius code so it's a little closer now to the Retail Minimap circle.  You can still drag the button where ever you wish though on your screen.  
    Removed some redundant code from ages ago back when BagSync had multiple DB variables.  
    Cleaned up the tooltip code a bit and added some additional checks to prevent possible errors.  
