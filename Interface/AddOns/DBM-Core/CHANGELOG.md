# Deadly Boss Mods Core

## [9.1.6](https://github.com/DeadlyBossMods/DeadlyBossMods/tree/9.1.6) (2021-07-21)
[Full Changelog](https://github.com/DeadlyBossMods/DeadlyBossMods/compare/9.1.5...9.1.6) [Previous Releases](https://github.com/DeadlyBossMods/DeadlyBossMods/releases)

- Bump version (forgot to entire alpha cycle), prep for release.  
- Switched the nine to use new cast events for remaining two valks, eliminating need of yells and localisation  
    Sylvanas Update  
     - Fixed a bug that caused death knives timer and warnings and say messages not to work  
     - Disabled banshees blades and banshees heartseeker timers on P3 mythic since the boss having both mechanics tied to banshees weapons and having her not be consistent between using it at 3 stacks vs 4 makes both timers inconsisent  
     - Improved P2 timer accuracy in all difficulties (still not perfect, probably never will be)  
     - Improved P3 timer accuracy in mythic (still not totally complete but "good enough" for a kill. accuracy will be further improved when multiple data sources exist to fine tune it)  
     - Increased window of time banshees bane aggregates warnings to reduce chance of multiple messages spammed when soaking up multiple puddles  
- Preliminary sync of mythic sylvanas stuff. more stuff is WIP.  Mostly just bug fixes, and missing P2 timers and add timers  
- Added support for 60 mana KT phase  
    Fixed bug on guardian  
- Fix core bug/regression  
- Do to replacements, this code never worked way it was supposed to. Changed logic slightly so the code trying too detect on revisioned mods, actually can check for unrevisioned mods and fix them now  
- Fixed logic/lua error on kohkalo  
- Update zhTW (#625)  
- Update koKR (#624)  
    Co-authored-by: QartemisT <QartemisT@gmail.com>  
    Co-authored-by: Adam <MysticalOS@users.noreply.github.com>  
- Update guardian timers to be more accurate in all difficulties now that mythic was out to confirm the theories previously discussed with JW.  
    Fixed a bug on sylvanas where rage nameplate aura didn't clear  
- Sylvanas Update  
     - Added target bars for arrow debuffs to make it clearer when arrows going off  
     - Added cast bar for Death Knives  
     - Filled in most of the P3 mythic timers outside of tank abilities  
     - Fixed lua error with curse of lthargy announce  
- tweak transcripor logging to permit logging level 3 debug, if the user has it set to 3, otherwise it'll still log only levels 1 and 2 (ignoring users setting)  
- Improve fatescribe timer data  
- Sylvanas respawn timer is 29 seconds. (#623)  
- Preliminary P3 support for Mythic sylvanas  
- Push p1 mythic timers  
- Update koKR (#622)  
    Co-authored-by: QartemisT <QartemisT@gmail.com>  
    Co-authored-by: Adam <MysticalOS@users.noreply.github.com>  
- enable nerzhul berserk  
- P3 mythic support. Mod should be good enough for limits of world at least. people with lower dps and need longer phases will need more timer data to be added  
- Update zhTW (#621)  
- Update zhTW (#620)  
- *Fatescribe update  
     - Added warnings and timers for Despair during intermission. Warnings will adjust based on mythic vs not mythic to say interrupt or run out. run out warning will even check distance to caster and downgrade to weaker warning if safe distance  
     - Big adds will now auto mark during intermission/fate  
     - Updated Mythic timers from live streams  
     - Added general probe announce if you are tanking the boss when it is cast  
     - Added icon option to call of eternity (bombs) and icons to say bubbles  
     - Enabled twist fate fimer for all roles by default  
     - Added timer for when grim portent is about to go off  
     - Added timer for when beams are about to go off  
     - Enabled respawn timer  
    *Guardian Update  
     - Enabled respawn timer  
- Fixed bug with adds counting  
    Improved stage 3 trap timer for mythic a little  
- Add a hard reset function, for when a profile becomes "hyper weird" (#619)  
- Raznal Update  
     - Reset weapon timers to enforce a color bar by type swap to 5. color bar by type is only good if it's used properly and this initial mod didn't really use it properly (every timer was same color)  
     - Reset spiked balls timer option to reset its color too, which is now 1 (adds) since it's better classification for it as well as helps diversify mods color by type options  
     - Added announce when all mythic adds defeated in intermission  
     - Improved intermission timers for embers and add spawns  
     - Added cast timer for final scream that adds do  
     - Fixed nameplate aura to show correct cast time for final scream  
     - Removed useless infoframe  
     - Tweaked/fixed some timers with real data (since original ones setup using twitch streams)  
     - Fixed bug where icons were still not clearing at right time for chains (or at all)  
    Tiny Guardian timer tweak (for most part it looked like timers for heroic will work on mythic, outside of initial threat cast, which was already mostly right. Will still review it more later.  
- More short name tweaks  
- Push some short names to guardian  
    Also fixed two usages of "laser" which apparently is only english localized in wow client, Beam is localized in all languages so it'll be used instead  
- Added better support for spreading Misery mechanic (personal announce, SAYs)  
- remove chains icon on other debuff  
- tweaks  
- Raznal Update  
     - Vod based mythic raznal timers. might be off a second here and there but should be workable until logs avail themselves  
     - Added target announces and timers for tank weapons so rest of raid is more aware of them  
     - Added embers and adds timers for intermission.  
