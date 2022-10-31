# BagSync

## [v17.2](https://github.com/Xruptor/BagSync/tree/v17.2) (2022-10-30)
[Full Changelog](https://github.com/Xruptor/BagSync/compare/v17.1...v17.2) [Previous Releases](https://github.com/Xruptor/BagSync/releases)

- Fixed an issue where Bank and Bag slots were not being properly scanned and saved into the BagSync DB. (Fixes #189)  
    Added support for the new Dragonflight Reagents Bag and updated the code to support the new BagID numbering sequence used in Retail.  (https://wowpedia.fandom.com/wiki/BagID)  
    Updated the code to properly detail the bag counts based on Game Version (Retail, Classic, WOTLK, etc...)  
    Fixed an issue where the crafting scanner was still saving the previous scanned information and sometimes messing up the item count.  
