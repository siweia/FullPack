# Deadly Boss Mods Core

## [8.3.6](https://github.com/DeadlyBossMods/DeadlyBossMods/tree/8.3.6) (2020-01-27)
[Full Changelog](https://github.com/DeadlyBossMods/DeadlyBossMods/compare/8.3.5...8.3.6)

- Prep new tag  
- Change harvest thoughts special warning from an instruction warning to a basic count warning. this is one of those things that really should leave instruction up to RL or own personal judgement multiple factors (current sanity, number of players alive, boss health %).  
- Added support for tentacles/shadows in Stage 3 carapace. Heroic ones are verified, normal ones are guessed to be same (please report if they are not)  
    Fixed a bug in ra-den icon code do to a typoed variable name  
    Fixed a bug on Nzoth where the ego count did not properly reset on engage, causing phase detection to be a little wonky for additional pulls after the first.  
    Completely reworked the Stage 3 timers on Nzoth to account for fact that normal and heroic are sequenced differently. This should make timers much more accurate now.  
    Began scheduling work of Stupefying Glare timers in Stage 3 Nzoth as well. Problem is, knowing heroic and normal are definitely sequenced differently, this work has only begun on heroic and not yet on normal. It's also far from complete as the vod I pulled up on fight was a very short one. If you have a video of a kill that saw multiple Stupefying glare casts (with clear view) on normal or heroic, Please reach out. Sadly since blizzard decided not put an in game event for this cast so this is only way to make timers for it.  
    Switched Nzoth Stage 3 trigger to the actual stage 3 cast. Even though it is slightly slower, it's more likely to be mythic compatible.  
- Disabled Evoke Anguish chat SAY messages by default on Nzoth, as it can feel spammy and doesn't qualify for all strats.  
    Updated Mine timer on Tussle Tonks in Mechagon dungeon with new 8.3 timer.  
    Big Nyalotha Berserk update  
     - Removed Carapace of Nzoth berserk timer, if this fight still has one, it's much higher now and not being seen yet.  
     - Added Berserk timer for Xanesh (normal and heroic confirmed same)  
     - Added Berserk timer for Drestagath normal and heroic (normal and heroic confirmed same)  
     - Added Berserk timer for Ilgynoth (normal and heroic confirmed same)  
     - Added Berserk timers for Maut (normal and heroic confirmed different, both supported)  
     - Disabled Berserk timer on Shadhar for normal. It is NOT same as heroic berserk (which is confirmed). Normal berserk is currently unknown.  
     - Added Berserk timer for Prophet Skitra (normal and heroic confirmed same). Currently berserk on this fight is undertuned and can be safely survived for several minutes (don't be surprised if they fix this later, it looks like a mistake, since boss activates ilgynoth's berserk instead of his own)  
     - Added Berserk timer for Vexiona (normal confirmed, heroic could not be confirmed. Still using confirmed normal berserk on heroic for now though since it's unlikely heroic would have a higher one than normal)  
- Play "targetchange" when lightning shield changes boss (#120)  
- Add Broadside warning to Boralus trash, closes #119  
- Update localization.tw.lua (#118)  
- Disable run out warning on Yazma if you are the tank  
- Fixed a bug on Alunza where a Demon Hunter tank would get double warnings to both dispel the boss and pop a defensive. Now, they'll only get the dispel warning since it's better of two options  
    Fixed a bug that caused Volkaal's toxic leap timer/warning to NEVER work (and somehow not a single user noticed/reported it since expansion launch, NANI?)  
    Updated Shadhar's schedule timers with latest data  
- Adjusted harvest thoughts timers from about 6 more kills worth of data  
    Fixed Shadhar breath timer, the UNIT\_SPELLCAST\_SUCCEEDED event, wasn't cast finish event. SUCCEEDED ~= SUCCESS in all cases :D  
- Notes  
- Fixed a regression from earlier where charged bonds was warning everyone by mistake instead of only affected players  
    Added Vexiona Respawn time  
    Changed InfoFrame on Wrathion to only show during mirrors phase instead of whole fight.  
- KR Update (#117)  
    * KR Update  
- Ensure the umbral loop code runs  if Umbral Mantle activates before ENCOUNTER\_START event on Shad'har  
- and bump hotfix revision  
- Fix a bug in last  
- Updated icon marking on Ra-den to be more weak aura compatible.  
    Updated Icon code on Dark inquisitor to be more interrupt compatible and to fix bugs  
- Actually, only set set icon on anchor makes most sense, so revert change of setting icons on other targets.  
- Fixed charged bonds so all players get warned, not just the anchor. Also fixed icon marking so icons get cleared and get set on all targets not just parent tether  
- Fixed hivemind darter and drone timers not showing by registering spellids I forgot to register  
    Add guessed/approx respawn time to hivemind too, it's at least 29 seconds.  
- Resolve possible conflicts between cast timers and next timers if next is stripped  
    Shorten generic adds timers too if short timer text enabled.  
- Couple vexiona timer tweaks  
- Vexiona Update  
     - Fixed missing count in twlight decimator (1)  
     - Fixed Spiteful Assault showing multiple times if multiple adds cast it. Now multiple casts within 3 seconds will be aggregated  
