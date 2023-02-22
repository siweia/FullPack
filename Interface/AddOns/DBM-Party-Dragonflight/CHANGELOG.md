# <DBM> Dungeons (Dragonflight)

## [r65](https://github.com/DeadlyBossMods/DBM-Dungeons/tree/r65) (2023-02-22)
[Full Changelog](https://github.com/DeadlyBossMods/DBM-Dungeons/compare/r64...r65) [Previous Releases](https://github.com/DeadlyBossMods/DBM-Dungeons/releases)

- enable entire HoV mod to waste cpu because blizzard can't decide whether or not Solsten is a trash mob or a boss. I can't find any other explanation what so ever for why that alert still doesn't work except that solsten must still be flagged as part of hyrja and returning true for encounter in progress.  
- Fix incorrect variable name  
- Announce clues as are found, in case user has infoframe disabled and isn't reading chat.  
- Re-enable skovald RP timer, now that I remembered to actually check/do it.  
- Nokhud Trash update  
     - Improved Deathbolt volley with fallback alert if interrupt on cd  
     - Added cast announce for Rally the Clan for those with stuns or other disrupt effects  
     - Added Stormsurge cast announce  
     - Added Thunderstrike cast announce for tank role (namely for warrior spell reflect)  
     - Added desecrating Roar cast announce for those with stuns or other disrupt effects  
     - Added Rain of Arrows dodge alert since the circles can be harder to see but should still be avoided  
     - Added stormshield dispel alert for magic dispeller role  
    Jade Temple Trash  
     - Added Defiling Mist interrupt and backup cast announce  
     - Added an actual interrupt warning to tidal burst, to accompany cast announce (which is now fallback to interrupt)  
- update lua check, and fix mod category ID on retail  
- sync hybrid mekgineer mod to retail, because at some point i want mods unified and pulled from single branches  
