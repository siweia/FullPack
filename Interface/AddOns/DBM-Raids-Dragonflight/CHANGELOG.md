# <DBM Mod> Raids (DF)

## [10.2.7](https://github.com/DeadlyBossMods/DBM-Retail/tree/10.2.7) (2023-11-21)
[Full Changelog](https://github.com/DeadlyBossMods/DBM-Retail/compare/10.2.5...10.2.7) [Previous Releases](https://github.com/DeadlyBossMods/DBM-Retail/releases)

- prep new tag to fix another breaking fyrak bug  
- Fix anotehr critical bug that caused a key timer not to work at all on fyrak if you didn't one shot the boss.  
- rebump alpha  
- prep to remake 10.2.6 tag  
- Fix error on fyrak  
- bump alpha  
- prep new tag with last few days of fixes/updates  
- begin templating new dungeon difficulty type (follower). still some stats support to finalize  
- Merge Aberus raid mods into Dragonflight raids mod, completing the full transition of all modules  
- tweak option defaults for Fiery Growth to off by default.  
    Also updated UI to show it uses 4 icons on mythic (if opted into, also off by default)  
- Just give in and enable Ephemoral scheduling  
    Also, improve surging growth with initial long timer after continuum  
- further tweak last. Might need more work but should be able to spot bugs with it now with it enabled  
- Fix and enable full nameplate CD timer for flourish on larodar adds  
- Larodar Update  
     - Improve taunt tech on larodar to pre taunt during the charge cast instead of waiting for debuff after (because boss might be out of range after and cause tank out in BFE to take debuffed hits)  
     - The debuffed taunt will still fire if a taunt did not happen during the cast.  
    Nymue  
     - Fixed bug where the growth timer looped in intermission stages when it should be disabled there. Also tweaked timer by 1 second  
     - Changed lumbering slam timer to start only after successful cast, so it doesn't fire invalid debug if the target dies/fans and triggers an instant recast  
     - Added short text for surging growth to signify it's the soak mechanic.  
- Slim out checkboss distance to just be a direct forwarder and nothing more.  
- Nymue tweaks  
    Loom now uses a more appropriate voice to set it aside  
- Update commonlocal.tw.lua (#317)  
- Update koKR (#316)  
- Update localization.tw.lua (#315)  
- Minor tweaks and updates  
- Larodar mythic update  
- Update koKR (Retail) (#953)  
- fix missing ,  
- Igira Update:  
     - Updates to make it more reliable when out of weapons on heroic.  
     - Added normal and heroic mode berserk timer  
     - Added cast bar for the weapon forging aoe  
     - Fixed heartstopper timer on non mythic, which wasn't applying difficulty rules correctly for the backup timer.  
     - Improved initial weapon timers on mythic difficulty  
     - Tweaked phase transition to start timers later so that they're slightly more accurate (since using cast start may be subject to subtle variation for boss movement to center.)  
    -TSwift Update  
     - Work around blizzard bug where sometimes CAST\_START doesn't fire for transition spell by moving transition to activate on applied instead. This should fix phaes change code/timers in some cases  
     - Added stage timers for tswift flight time to new platform (note, this can still vary, i used the floor of variance)  
- add CL  
- fix anotehr typo  
- fix typo  
-  - Clarify messaging on larodar throns mechanic that you dodge first part, and soak second, NOT soak first part.  
     - Improved Tswift with some initial short names for some abilities  
     - Added Ablaze and Incarnet timers to Fyrakk  
     - Short named several abilities on fyrakk  
     - Fixed a bug that caused spirits timer/alert not to show on Fyrakk  
- typos  
- Extend tindral P3 timers on heroic by another 2+ minutes  
    Added healer alert to heal blazing roots to larodar  
    Cancel charge bar same way blosseom and bomb are once boss is interrupted on council  
- Fix regression with last timer update caused normal and LFR timers to be wrong.  
    Improvements to some niche condition timer situations, especially on mythic  
- Language fixes/clarification  
- fix bug causing range to be reverse in all modes  
- Partially restore range frame for classic only in instances and outside instances even let retail use the radar.  
- Update koKR (#313)  
- Add erternal firestorm timer to stage 3 fyrakk  
- Downgrade radial flourish warning and also make it off by default now that event is fixed for it in this update  
    Improved Burdens timer/alert code now that cast is in combat log  
- very slight larodar mythic tweaks  
- Fix stupid  
- Fix accidental commit in last that was a bugfix in progress  
- Fix several council timers that changed since PTR as well as improved specials/auto correct logic more  
- Right, forgot about that  
- Make the blaze timer functional on fyrakk using scheduling since no reliable events for it  
- Delete nearby spell check for kurog, as it'd now be within 43 yards (so completely useless)  
- Massively clean up range API to leave just the bare minimum that's still useful and fix usefulness of what's left somewhat to at least be able to check if within 43 or not and still work completely outdoors  
- Fix two cases of bad count announces  
- Bump alpha  
