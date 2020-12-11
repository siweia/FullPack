# Deadly Boss Mods Core

## [9.0.8](https://github.com/DeadlyBossMods/DeadlyBossMods/tree/9.0.8) (2020-12-11)
[Full Changelog](https://github.com/DeadlyBossMods/DeadlyBossMods/compare/9.0.7...9.0.8) [Previous Releases](https://github.com/DeadlyBossMods/DeadlyBossMods/releases)

- Prep new release. Some stuff may still be broken, but a lot less than before. a TON of stuff has been fixed or added  
- Fix a redundant check  
- Added experimental health tracker frame for adds in P2 Sire  
- If statement would break the fallback 32/24 alterations (#419)  
- Update koKR (#418)  
    Co-authored-by: QartemisT <QartemisT@gmail.com>  
    Co-authored-by: Adam <MysticalOS@users.noreply.github.com>  
- Always log debug events in transcriptor if they are level 1 or 2, period. I've had transcriptor logs that would have been so much better if debug was present.  
    Fixed a bug where infoframe didn't close on combat end iwth sire  
- Touch up the darkvein timers  
- Add blood price counter  
- Fix more bugs, jesus christ, I suck under pressure sometimes  
- Fix another bug with it and just add redundancy for good measure  
- Fix hand timer for real this time  
- Handle another niche condition. this time. if crystalize is off CD when bringing Grashaal down from air. the cast is dropped entirely and CD restarted. However, if timer is NOT expired when bringing him down, it continues normal behavior and is cast when coming of CD, without reset.  
- Update several different tank warnings to use more appropriate stack counts with latest data  
- Shorten miasma yell text by a lot, but also disabled that yell by default based on feedback.  
- Few minor generals updates, including a note about god awful spell queing fight has  
    Additional heroic timer data from the worst possible logs i could find on WCL  
- , are dumb  
- Fixed a rare case where hand timers could be messed up entirely of phase 3 if boss casts hand during transition  
    Fixed impale timer sequence being out of date (live doesn't match beta)  
    Improved cleansing pain timer accuracy slightly by using hard coded values for known values at least then alternating values as fallback  
    Added a feature request to Generals, timer work on generals still in progress  
- missed a 1  
- This still isn't done, more things to tweak, but just need to get something out for Sire  
- Chain slam (1) never dissapears, do an incremental counting (#417)  
- Fix error  
- Mostly finished on redoing the kael timers, but I do want to dig up more heroic timer data from some of the REALLY bad pug logs out there tomorrow.  
    Also possibly fixed hand timer/warning on sire, but i'll review that and other stuff tomorrow as well.  
    Now time to get about 5 hours of sleep before getting back to work.  
- Update koKR (#416)  
- Some timer tweaks for the changes made to altimor, as well as coding for special sinseeker condition where if it's cast during transition, the boss scripting does still start the next phases CD for it, but uses the full cd duration instead of normal transition duration.  
- Updated Hungering Destroyer with latest data  
    Made sure council and shriekwing trigger hotfix notifications and block bad data from older versions  
- Disable sludgefist chain helper yells by default  
    Added wave of blood to shriekwing, which was missing from mod entirely and combined the two shriek timer and warning objects together  
- Fixed a bug where silent mode defaulted to on for new users (because it had no defaults at all). this should finally put that issue to rest.  
- Council timers fully reworked to account for differences  between difficulties and updates made to normal and heroic.  
- Fix Lua error caused by Myst in last commit. (#414)  
- Fixed tear icon setting one icon on both tears, blizz eliminated the 2nd spellId, leaving it in mod for now because maybe mythic still uses two (or uses other one at least)  
    Updated boss order in list to match latest journal  
- Fixed lua errors on lady inerva, Hungering Destroyer  
    Fixed invalid target name on Altimor  
    Added special warning option (on by default) for earsplitting shriek, if it's turned off, it'll default to non special warning version.  
- Revert "Fix #365 (#411)"  
- Myst wanted a PR action test. (#413)  
- Update ci.yml  
- Fix #365 (#411)  
- Delete .travis.yml  
- Update CI badge  
- Create ci.yml  