# Deadly Boss Mods Core

## [8.3.8](https://github.com/DeadlyBossMods/DeadlyBossMods/tree/8.3.8) (2020-01-29)
[Full Changelog](https://github.com/DeadlyBossMods/DeadlyBossMods/compare/8.3.7...8.3.8)

- Fixed bug where enforcer counter didn't reset between pulls on Vexiona  
    Added timer/warning support to Stage 3 mythic Vexiona Twlight Decimator  
- Update GUI zhTW (#126)  
- Add chain lightning yell and warnings using target scan  
    Changed how Throws of Dismemberment works on Drestagath since other method wasn't working do to obfuscation. besides if other way HAD been working it probably would have been spammy.  
- Re-enable the nameplate aura. even though it doesn't work, it should be there, in case it does work one day. :D  
- adjusted muttering timer back up to 50, until i see that elusive 46 again on live.  
- Fixed lua error in vexiona trash and lowered throttle for brutal smash  
- Push the mythic hivemind timers.  
- Code cleanup xanesh  
- Scrapped nameplate aura on Drestagath for now. Every entity still has same GUID. yes the aura could work purely off nameplate..i unitIDs but there'd be reliablity issues if IDs change do to moving in and out of range of various plates. Blizz clearly obfuscated the GUIDs of tentacles for a reason as well so it's safe to assume they do not want auto marking or auras above these tentacles.  
    Fixed mythic add marking on Xanesh  
    Fixed tank swap warnings on mythic Xanesh  
    Fixed a few timers on Mythic Xanesh  
    Removed Summon Ritual Obelisk timer. For one, it's not that useful and 2 it's annoying to update on all difficulties since it's not in combat log.  
- Fixed mismatching variable names on mythic Ra-den  
    Updated mythic ra-den darkness icon marking code to match vita icon marking code behavior  
    Enabled the Chain Lightning timer on Ra-den  
    Made Void Woken icon option off by default on Xanesh  
- Redid tanking code on Shadhar to account for 3 casts on heroic and mythic. It'll basically never tell anyone to taunt first cast, and 2nd or 3rd cast it'll tell you to taunt if you do not have debuff and not already tanking.  
    Fixed the fixate timer on mythic Shadhar  
    More fixes to shadhar breath timer (still untested). Difficult issue to nail down not being in raid myself.  
    Updated initial Xanesh timers from live changes  
- Fix error  
- Shorten end countdown too  
- Fix ancient curse applied yell, only countdown one is needed by default. I thought I had done this already, sorry about the spam :D  
- Fixed mythic incineration timers, only cast twice, not 3x, with diff timing on Wrathion  
    Fixed Burning Madness so mythic version is announced, gets icons, and shows on infoframe for Wrathion  
- Vuklaz update  
- Update Nyalotha zhTW (#124)  
- KR Update (#125)  
    * KR Update  
- Add new interupt filter option to just ALWAYS filter them period, for those that might just want to globally squelch interrupt type warnings  
- Update zhTW (#123)  
- KR Update (#122)  
    * KR Update  