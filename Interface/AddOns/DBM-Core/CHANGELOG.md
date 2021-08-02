# Deadly Boss Mods Core

## [9.1.8](https://github.com/DeadlyBossMods/DeadlyBossMods/tree/9.1.8) (2021-08-02)
[Full Changelog](https://github.com/DeadlyBossMods/DeadlyBossMods/compare/9.1.7...9.1.8) [Previous Releases](https://github.com/DeadlyBossMods/DeadlyBossMods/releases)

- oh yeah tweak a couple of these too for outdoor boss  
- Fixed number one complaint about KT mod (missing tank swap warning). The tank stuff has been reworked/fixed to be more meaningful/useful  
    Changed icons used on Nerzhul orb marking slightly to be more compatible with recent BW changes.  
    Disabled debug prints for now on encounters that have iffy timers. It's like consumption rare spawn, enough time have hopefully passed that the explanation shouldn't need spamming anymore, but we'll see.  
- Miner timer tweaks for normal and LFR to soulrender  
- Fix a potential issue where DBT is loaded and DBM-Core isn't (#634)  
- Update zhTW (#633)  
- Pushed improvements to nerzhuls timer update code that make it work more accurately, including LFR  
    Also pushed timer updates to raznal for LFR and normal.  
- Fixed two bugs  
    1. Malevolence timer update code was failing on phase change do to missing count variable  
    2. phase change timer updates were also supposed to update on cast finish, not cast start, since an orb can spawn during cast start.  
- Forgot this one in the update all function  
- This time you're being too fickle luacheck.  
- significant timer correction code to nerzhul to make timers far more accurate via dynamic updating to phase changes and ICD triggers. not perfect but should make timers have a level of usefulness now. needs testing.  
- Pushing Updated KT (mostly cleanup as 4 of the 5 timer variations could be pruned now that boss is always 100 mana on phasing)  
- Change up link system for a better cancelling (#631)  
    Using `garrmission:` prefix means that blizzard handles it on their side cancelling it out, preventing taint inside of DBM  
- Added strikes chat bubble to afront of challengers  
- Attempt to address an issue where KT icons didn't work do to icon setter not being in same phase as the mobs that need marking (since it's a raid split kinda fight).  
    This mod will now ignore elect feature and let EVERYONE who has icon option enabled mark things, this is compatible in certain situations that use GUID marking like this mod so it only makes sense to reduce chance of problem this way. Problem will still occur if every single promoted icon marker is out of phase with mobs though.  
- bump alpha revision  
