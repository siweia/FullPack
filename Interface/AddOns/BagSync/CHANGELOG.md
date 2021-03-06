# BagSync

## [v14.8](https://github.com/Xruptor/BagSync/tree/v14.8) (2021-03-03)
[Full Changelog](https://github.com/Xruptor/BagSync/compare/v14.6...v14.8) 

- Advanced Search code cleanup and BagSync version bump.  
- Finalized implementation of new Advanced Search option for BagSync Search.  
    Cleaned up some table counting code across the addon.  
    Cleaned up some typos.  
    Added new localization for the Advanced Search window.  
- More work on the Advanced Search window.  
- Beginning to add code for the Advanced Search option for BagSync Search (#132)  
    Added highlight textures for the Profiles, Professions, Recipes, and Search window to better see what items are currently hovered over in the list.  
- Updated toc.  
    Fixed a slight bug that occurs when searching for an item produces a server query warning count that doesn't go away no matter how many times you refresh.  It was processing the same items over and over.  It will now properly ignore items that have already been queried by the server.  
- Updated the Keybinds for BagSync.  Now when you press a BagSync keybind, it will show or hide the window on toggle press. (Fixes #132)  
    Added all BagSync windows to the Blizzard special frames.  This means you can now close any BagSync window using the ESC key.  (Fixes #132)  
