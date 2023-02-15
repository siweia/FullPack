# <DBM> Dungeons (Dragonflight)

## [r63](https://github.com/DeadlyBossMods/DBM-Dungeons/tree/r63) (2023-02-14)
[Full Changelog](https://github.com/DeadlyBossMods/DBM-Dungeons/compare/r62...r63) [Previous Releases](https://github.com/DeadlyBossMods/DBM-Dungeons/releases)

- actuall reset account when debuff removed  
- By user Request  
    1. Added alert for Tectonic Slam  
    2. Added alert for flame dance  
    3. Improved overwhelming power on Echo of Doragosa by removing special alert that didn't even work, personal stack warning still there. Also improved audio for energy bomb so it says "spread" if you won't spawn a rift but "run out" if you will.  
- shoulder slam can be stutter cast, so move timer to success event to avoid false debug  
- Make it standard practice to justpush all trash warnings through validation function that automatically checks and filters alerts for trash mods as needed instead of doing it by case by case basis. A super catch all.  
- also allow trash mod to be active during Gerdo encounter  
- tweak one option default in court of stars trash for melee, and remove delay on that cast  
    Added alerts for subdue to trash while at it  
- Fixed a bug where energy surge dispel warning didn't show because the coded was commented out by accident. Closes #98  
- small timer tweak  
- Update koKR (#97)  
    Co-authored-by: Artemis <QartemisT@gmail.com>  
- notes  
- Fix  
- Start getting translations now  
- Add another tank ability warning to jade temple  
- Interrupt warning fires on Kokia regardless of whether add is targetted or not.  
    Added general announce for Dark Claw to jade temple  
- adjust option default on Quelling strike due to it's poor visuals and often being pulled with other mobs to point it's easy to be a hazard not just to tanks but all melee  
- fixed bug where bloodletting sweep timer didn't start again after first cast on Hymdall  
