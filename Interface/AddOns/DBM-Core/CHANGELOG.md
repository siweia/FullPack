# Deadly Boss Mods Core

## [8.3.28](https://github.com/DeadlyBossMods/DeadlyBossMods/tree/8.3.28) (2020-07-21)
[Full Changelog](https://github.com/DeadlyBossMods/DeadlyBossMods/compare/8.3.27...8.3.28) [Previous Releases](https://github.com/DeadlyBossMods/DeadlyBossMods/releases)

- Allow localized special warnings to finally assign icons  
    Updated Tedova as best as possible without transcriptor logs. Timers are still a mess do to spell queuing as well as not being able to update them based off energy (because no transcriptor logs)  
- Behind schedule getting 4th dungeon finished tonight sadly. Mistcaller and Maloch updated, but last boss I will try to finish as best I can tomorrow then have a late tuesday tag for beta. Process is slow as molasses crawling through WCL and not having transcriptor logs. :\  
- Added a transcriptoir print on combat start and end for Margrave Stradama. that mod cannot be finished without it. the phase changes are not in combat log so I can't get that data from WCLs  
    Improved Domina bu actually adding personal warnings to ambush and prey, instead of relying entirely on generic target warning  
- Full pass on Halls of atonement  
     - Eshelon leap should now attempt target scanning and warning who it's on. Creature Id Fixed  
     - Halkias timers updated but still needs further data to improve them. Creature Id Fixed  
     - Aleez Fixate warning is no longer filtered target warning. Slight timer tweak. Creature Id Fixed  
     - Lord Chamberlain timer updated but still need further data to improve them. Telekinetic Onslaught warning fixed, Telekinetic Toss warning added  
- Fixed bug with Kael that'd cause add count to always be 0  
    Fixed a bug on Maut that caused add count to always be 0  
    Fixed a bug on Lady Inerva Darkvein that'd cause add count to always be 0  
    Updated warnings and timers on Amarth from beta dungeon logs  
    Updated Blightbone warnings and timers from beta dungeon logs  
    Updated Nalthor warnings and timers from beta dungeon logs  
    Updated Surgeon Stichflesh warnings and timers from beta dungeon logs  
    Added two trash warnings to Necrotic Wake trash mods  
- Flash improvements for optimization (#275)  
- Added preliminary trash warnings to plaguefall based on recommendations.  
- Unused, at least for now  
- Really didn't get much done on the coding side but took a lot of notes from watching streams doing M+ with mods so I have some good notes for what to work on over weekend. Here are 3 small dungeon fixes though.  
- Fixed a bug that caused flash on beta to look like a flashbang going off  
- Completely redid doctor Ickus mod since blizzard completely threw old fight out window and redid it  
- Sync  
- Revert "Fix strFromTime not being DBM namespaced (#273)"  
- Fix strFromTime not being DBM namespaced (#273)  
    This is required for speed clears (e.g. AQ40)  
- Kill off beam arrows on nzoth normal and heroic. This feature wil only be supported on LFR and Mythic. Other difficulties will just not show an arrow or text for this.  
- Fixed a logic bug where people not in raid were still shown if not mythic and user turned hide dead off. Same zone check should be explicite check and not tied to other conditions being true.  
- Update laucheck and remove compat line  
- Add speed clear object, which I forgot to port to retail even though all locales and variable hacks were already ported for it  
