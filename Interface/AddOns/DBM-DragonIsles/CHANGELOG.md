# <DBM> World Bosses (Dragonflight)

## [10.0.30](https://github.com/DeadlyBossMods/DBM-Retail/tree/10.0.30) (2023-03-01)
[Full Changelog](https://github.com/DeadlyBossMods/DBM-Retail/compare/10.0.29...10.0.30) [Previous Releases](https://github.com/DeadlyBossMods/DBM-Retail/releases)

- forgot to remove debug restriction  
- Prep new tags  
- give thundering affix a valid icon in timer and announce objects  
- countdown 2 by default for thundering CD, in addition, increase audio countdown for debuffs from 4 seconds to 5  
    remove debug  
- Core Update: - Fixed a bug where a bar could get stuck/not canceled if the time on that bar had been manipulated mid fight (time added, removed, or paused) - Fixed a bug where an audio countdown might not cancel for a bar who had time removed from it that resulted in new timer being less than 0 (ie the bar was canceled but countdown was not). - Fixed a bug where timers code could potentially move a paused bar back into large bars duringa. SetElapsed call - Fixed a bug where calling stop on a puased bar that's been moved from large bars into small bars, wouldn't remove it from correct anchor due to an order of operations error (paused status set to nil before cancel call, causing it to move back to move back to large if setelapsed call runs before cancel call).  
- remove typo check that didn't hurt anything but definitely didn't do anything either :D  
- fixes  
- stop the god damn timer  
- fix a nasty bug where paused timers didn't pause countdowns  
- missed a close  
- this gets uglier and uglier but i'm gonna make this work efficiently  
- sadly the only way to cancel thundering timer, is to run the affixes mod in ALL zones. a waste of cpu, but no more than your average weak aura. heck still probably more efficient than thundering WA  
- Fix bug that would cause thundering debuff tracking to miscount remaining and fail to cancel or cancel too soon in certain cases  
- Update zhTW (#194)  
- Update localization.ru.lua (#195)  
- actually that will be used after all  
- Fix nitpick  
- Fix reverse logic causing thundering timer not to pause as intended  
    Added experimental timer correction for broodkeeper that will attempt to on fly correct timers on spell queues/ICDs triggered by other spells. Also corrects logic on staff timer going into phase transition as it's not based on P2 but number of casts (and it differs between easy and harder difficulties too)  
- fix minor cap in the thundering yells  
- Add warlock pet spells to interrupt filter  
- fix extra word  
- ugly thundering code to test tomorrow  
- that wasn't supposed to push yet  
- Fix error  
- fix warrior spec so it flags immunity clear only if specced into it. still severely flagged that these tables only generated at login so this doesn't actually intuitively recheck specs, like at all.  
- Adjust for 4 seconds between yell and debuffs, so timer expires in yell/ground effects  
- More fixes to last  
- works better with a complete statement  
- Add quaking and thundering M+ timer. quaking will work off the bat, thundering is in testing and only enabled in debug mode for now  
- Doesn't fix any bugs, but no reason for sender to be nil when sending sync to self  
- Change broodkeeper icons to match latest BW updates  
- bump alpha  
