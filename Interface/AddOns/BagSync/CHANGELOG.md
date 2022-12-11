# BagSync

## [v18.2](https://github.com/Xruptor/BagSync/tree/v18.2) (2022-12-10)
[Full Changelog](https://github.com/Xruptor/BagSync/compare/v18.1...v18.2) [Previous Releases](https://github.com/Xruptor/BagSync/releases)

-   
    - Some small additional fixes to the new BagSync Debug.  
-   
    - Fixed an issue where core DB entries were not being loaded properly before modules required them.  Moved it to the core loading process now. (Fixes #218)  
    - Added a new XR tag identifier for special cases when the new XRGuild display is being used.  This will only show if the player belongs to a guild on another server other than theirs and they have XR/BNET options disabled.  This new tag will be denoted with an asterisk next to the XR tag.  