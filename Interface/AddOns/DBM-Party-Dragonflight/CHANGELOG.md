# <DBM> Dungeons (Dragonflight)

## [r55](https://github.com/DeadlyBossMods/DBM-Dungeons/tree/r55) (2023-01-01)
[Full Changelog](https://github.com/DeadlyBossMods/DBM-Dungeons/compare/r54...r55) [Previous Releases](https://github.com/DeadlyBossMods/DBM-Dungeons/releases)

- Fix clue helper rewrite breaking spectral sight. can't just parse clue and not advance dialog, else clue progress by zone isn't flagged. This will now parse gossip ID then still advance dialog before losing it so spectral sight turns on after all 5 clues discovered  
- Added RP timer to Vexamus  
- fixed warning text and voice alert on Deafening screech during crawth to be more clear  
- Fixed a bug that caused overgrown ancient Rp timer not to start  
    Fixed a bug that caused Malandrus rp timer not to start  
- Fix dumb dumb so solution actually does what it's supposed to, :D  
- fix last  
- use same solution as LittleWigs to prevent other addons or WAs from breaking DBMs spy helper  
- Fix bad ru odyn rp string  
- better fix  
- apparently it's possible to have an invalid player name in the chat message. filter it if it's broken I guess Closes #87  
- Update localization.ru.lua (#86)  
- Change sha of doubt back to success for debuff timer since it was re-enabled  
    Add Geyser alert to wise mari  
- Update koKR (#83)  
- Update localization.ru.lua (#82)  
- Update localization.ru.lua (#81)  
- Also include english text in chat messages. closes #84  
- Fixed a bug where waking bane interrupt warning didn't work correctly  
    While at it, added non interrrupt alert to it if interrupt is on CD for extra redundancy. Sleeping tanks or healers are bad.  
