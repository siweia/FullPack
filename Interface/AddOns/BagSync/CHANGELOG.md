# BagSync

## [v14.5](https://github.com/Xruptor/BagSync/tree/v14.5) (2020-10-25)
[Full Changelog](https://github.com/Xruptor/BagSync/compare/v14.4...v14.5) 

- Removed a bunch of redundant code associated with Auction House scanning.  
    Updated how the Auction House is scanned.  It will only scan now when a user places an item up for sale or they are viewing their auctioned item list.  
    Added protections to the Auction House scanning to prevent it from interfering with any other addons or regular Auction House actions.  This means that auction scans will only occur if C\_AuctionHouse.IsThrottledMessageSystemReady() returns true and the server is ready for a query.  
