# <DBM Mod> World Bosses (DF)

## [10.1.23](https://github.com/DeadlyBossMods/DBM-Retail/tree/10.1.23) (2023-08-14)
[Full Changelog](https://github.com/DeadlyBossMods/DBM-Retail/compare/10.1.21...10.1.23) [Previous Releases](https://github.com/DeadlyBossMods/DBM-Retail/releases)

- Fix \"H\" syncs not sending protocol (which is required on D5, and I forgot to re-enable it when switching off D4, sorry about that) Prevent the lua error caused by users sending syncs with no protocol version.  
- Bump alphas  
- - Fixed a critical comms bug in classic that caused raid \"hi\" comms to never actually get recieved since they only ever sent to retail prefix. - While at it, move to new prefix since a suitable amount of time has passed that even out of date versions at this point should at least receive the D5 version of comms. - This update is a forced update for classic flavors due to really how crippling that comms bug would have been, on top of this core version being required for latest unified classic era modules update  
- and here  
- Create a core wrapper function to handle classic era spellid to name conversion on fly in core so mods can be unified. the overhead and annoyance of maintaining multiple versions of same mod is coming to an end  
- updatePlayerBuffStacks infoframe object now compatible with more classic flavors  
- Update koKR (Retail) (#920)  
- make it possible to use a group only ID for icon options  
- Fix regression where achievement timers were no longer parsing out the \"at\" part in the key displayed in GUI, which also resulted in bad grouping  
- Allow SetSkin(\"DBM\")  
- Fix shell script syntax in deploy workflow (#261)  
- fixes  
- fix another bad copy/paste  
- cpu optimize infoframe in experiments  
- also bring breather awareness to own high stacks as well  
- Fix bad copy/paste  
- Forgotten Experiments tank Improvements:  
     - Infoframe will now be shown for tank roles by default that shows current tank debuff stacks. Same frame will show a green yes or red no on whether or not it's safe to clear them based on raid debuff  
     - In addition when stacks are >= 6, two additional checks are performed. If other tank has 6 stacks and you have 0, you are now alerted to taunt off other tank so you start gaining stacks instead. if other tank has 6 stacks and you do have stacks as well AND it's safe to clear, you'll now be told to group up with the other tank to clear them. Both of these alerts are automated.  
     - The generalized alert that just announecs stacks every 3 stacks will now also announce them for self too, and not just other tank.  
     - there is now an alert for everyone that announces when the raid gains debuff stacks of tank explosion, so it's clearer when that damage has gone out (or if its mistakenly stacked higher than 1). This also makes it a useful weak aura hook too  
- improve timer for second shadow and flame timer to relfect that it gets delayed by 5 seconds like 95% of time.  
- bump alpha  
