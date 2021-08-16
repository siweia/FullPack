# Deadly Boss Mods Core

## [9.1.9](https://github.com/DeadlyBossMods/DeadlyBossMods/tree/9.1.9) (2021-08-15)
[Full Changelog](https://github.com/DeadlyBossMods/DeadlyBossMods/compare/9.1.8...9.1.9) [Previous Releases](https://github.com/DeadlyBossMods/DeadlyBossMods/releases)

- prep new release  
- Cleaned up fatescribe mod post LFR launch and minor tweaks  
    Cleaned up guardian mod post LFR launch and minor tweaks  
    Cleaned up KT mod post lfr launch and major tweaks (LFR timers are all different and couple non lfr timers also a little more accurate too)  
- Fun DBT changes (#640)  
    This now prevents the frames from being disassociated with a bar object.  
    Since they're reused in parallel, this prevents any disassociation that cause weird glitchy stuff from occuring.  
- wracking pain doesn't always follow the alternating rule after all, the adding of 1.2 to every other cast is flawed logic, so it's removed  
- revert a bad change  
- Sync setstage multi encounter Id change  
- Tweak viel 3 and 4 in stage 3 for the "she did cast tank ability before 2nd one" variance. 2nd cast has to stay way it is though because asuming she'll always cast tank ability there is still false. it will be 56 sometimes  
- Reviewed and udpated tank warnings on Altimor, kaelthas, Council of blood, soulrender dormazain, and the nine to now show warnings faster if your debuff will fall off before next cast (as opposed to always waiting another stack in some cases because your debuff hadn't fallen off yet when current stack applied to co tank)  
- Added experimental spell queue priority support to auto update timer code to nerzhul. only enabled for debug users right now who want too test it  
- Cleanup pkgmeta a bit (#637)  
    We don't need to tag "latest" as its automatically assumed  
    Change a git:// link to https  
- Update localization.cn.lua (#636)  
- Fixed non mythic embers count.  
- Resolve possible lua error if extemporaneous fate is in combat log before P3 trigger (think they happen in same time stamp). Closes #635  
- Verify hostile bitband of enrage on Tarragrue to avoid getting dispel warnings for anima power dispels  
- bump alpha  
