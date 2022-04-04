# <DBM> World Bosses (Shadowlands)

## [9.2.11](https://github.com/DeadlyBossMods/DBM-Retail/tree/9.2.11) (2022-04-04)
[Full Changelog](https://github.com/DeadlyBossMods/DBM-Retail/compare/9.2.10...9.2.11) [Previous Releases](https://github.com/DeadlyBossMods/DBM-Retail/releases)

- prep new tags to get some core fixes out  
- Fix a bug where having voice pack meant no DBM\_Announce callback would fire on special announcements (annoucements didn't have issue). This bug has existed since always but only got noticed because VEM was recently added as built in and on by default.  
- Fix spam on soleah  
- Move xymox to new timer table method  
- move to new table lookup for anduin timer tables  
- Update koKR (#94) Co-authored-by: Adam <MysticalOS@users.noreply.github.com>  
- Moved jailer mod to new table lookup and cleaned up code slightly  
- clipped m in there. that's why i hate code editor in dark mode. can't see :D  
- move hal to new table lookup. also reformated table to match conventions of other mods  
- New Timers Table Util, to handle nil's on dc/reload  
- Fixed a lua error introduced by last jailer update (when i merged the two spellids back together to clean up code)  
- Fix icon spam of biting wounds to actually use icon instead of looking like Quin's twitch chat.  
- Change exposed core behavior to be more useful  
- Lords of dread march 30th hotfixes, extend infiltration on normal (and assuming LFR as well)  
- bump alpha revisions  
