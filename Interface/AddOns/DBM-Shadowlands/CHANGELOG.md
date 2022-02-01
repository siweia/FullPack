# <DBM> World Bosses (Shadowlands)

## [9.1.27](https://github.com/DeadlyBossMods/DBM-Retail/tree/9.1.27) (2022-02-01)
[Full Changelog](https://github.com/DeadlyBossMods/DBM-Retail/compare/9.1.26...9.1.27) [Previous Releases](https://github.com/DeadlyBossMods/DBM-Retail/releases)

- slightly darken gui to improve readability of it. prep new tags  
- fine, no count3  
- Fix args for UnitAura/UnitBuff/UnitDebuff  
- wait, why is that up there.  
- Update localization.cn.lua (#65) Co-authored-by: Adam <MysticalOS@users.noreply.github.com>  
- Update localization.ru.lua (#66)  
- Not sure how that got removed  
- Create localization.ru.lua (#725)  
    Add file localization.ru.lua  
- Update DBM-Sepulcher.toc (#726)  
    Add  localization.ru.lua  
- Update localization.ru.lua (#724)  
    Minor fixes.  
- Update localization.ru.lua (#63) Add phrase.  
- Update localization.cn.lua (#64)  
- Update koKR (#60)  
- Update localization.ru.lua (#62) Minor fixes.  
- Update zhTW (GUI) (#61)  
- further clarify this option isn't for ALL raid leaders, just niche Raid leading situations.  
- Fix 4 onsync checks  
- catch more spellid call failures in a more friendly error  
- Add advanced Voice pack option to disable the mute filter (this causes alerts to play both the original sound and voice pack sound, an atypical preference some apparently liked from the old configuration so it was brought back as advanced optoin)  
- Update localization.ru.lua (#723)  
- Update localization.ru.lua (#59)  
- Update localization.ru.lua (#722)  
    Minor fixes.  
- Update localization.ru.lua (#721)  
    Missing phrases and minor fixes.  
- Cleaner syntax for DBM:AddMsg frame check Also fixed range frame not hiding properly.  
- Update localization.ru.lua (#719)  
    Missing phrases and their translation.  
- Update commonlocal.ru.lua (#58) Missing phrases and their translation.  
- restructure mod layouts for 9.2 and 9.1 raids to better fit upcoming gui  
- factor in that all descriptions don't use html (pretty sure lines don't, not sure what else)  
- Fix html parsing errors if spell names contain & in them  
- Update koKR (#57) Co-authored-by: Adam <MysticalOS@users.noreply.github.com>  
- Update localization.cn.lua (#56) Co-authored-by: Mini Dragon <projecteurs@gmail.com>  
- Update zhTW (GUI) (#54)  
- Make VEM on by default only in english speaking locale  
- Pull even better revision of VEM  
- update comment (also to force push vem update to alphas  
- Drycoded some updates to Hal with new mechanics that were added post teseting. unclear how timers will be affected with how much fight changed though.  
- Update commonlocal.cn.lua (#53)  
- Since blizzard is making 5 stage fights the new norm, make it so AI timers can now be supported for up to 5 stages instead of only 4  
- tweak option default, really do think by default it should replace all (but custom). All tested and working great though. This will give some knobs to work with.  
- better  
- acftually still miss the pre commit hook.  
- Update commonlocal.tw.lua (#52)  
- Update zhTW (GUI) (#51)  
- Update koKR (#50)  
- Fixed 3 direct calls to SetRaidTarget, it bypasses the global disable.  
- Fix Pepega  
- Update README to remove VEM from soundpacks and update support link to demo  
- tweak set icon method so it honors solo raid when using unitId (of course this also means seticon still not a valid method for brawlers guild)  
- Fix naming on SWFilterDisabled  
- Forgot to bump SWFilterDisabed  
- bump alphas for next cycle  
