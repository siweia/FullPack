# <DBM> World Bosses (Dragonflight)

## [10.0.25](https://github.com/DeadlyBossMods/DBM-Retail/tree/10.0.25) (2023-02-16)
[Full Changelog](https://github.com/DeadlyBossMods/DBM-Retail/compare/10.0.24...10.0.25) [Previous Releases](https://github.com/DeadlyBossMods/DBM-Retail/releases)

- Fix missed protocol update in notes share  
- prep new tags  
- refactor comms to work around blizzard bug with cross realm, restoring cross realm syncs. Downside, this breaks compatability with older versions of DBM and Bigwigs/Littlewigs  
- - DBM versions that are force disabled will no longer respond or send syncs outside of version checks, period. Comms were letting disabled versions still retain more functionality than intended. - Force disable can now run off guild comms too, not just raid comms, ensuring it'll more effectively kick in at login and not just when joining a raid. The force disable only runs for a major patch or test version of wow and needs to be aggressive. - Fixed a possible issue where force disable could actually get undone by when loading options that were only loading to report the force disable.  
- Fix bug causing axe alert to spam on council and zero alert to spam on kurog  
- fix debug  
- works better if event registered  
- push changes to affixes mod that will be tested in next alpha cycle for resolving the last thundering not getting canceled, if one of players who had it died (cause apparently if a player dies with thundering it doesn't fire spell aura removed)  
- Bump alphas  
