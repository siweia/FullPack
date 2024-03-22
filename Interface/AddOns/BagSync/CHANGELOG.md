# BagSync

## [v19.31](https://github.com/Xruptor/BagSync/tree/v19.31) (2024-03-20)
[Full Changelog](https://github.com/Xruptor/BagSync/compare/v19.30...v19.31) [Previous Releases](https://github.com/Xruptor/BagSync/releases)

- Currency Window Update  
    * Small adjustment to Currency Window.  (Fixes #328)  
- Small Localized Currency Fix  
    * There is an issue where if a user switches language clients, it could duplicate the currencies shown in BagSync Currency.  To prevent this a small redundancy check has been added to only allow the currency to display once.  Note, BagSync wasn't built to swap between language clients constantly.  So you may see some weird stuff occasionally happen. LOL  (Fixes #328)  
