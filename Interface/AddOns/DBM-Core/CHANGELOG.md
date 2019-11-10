# Deadly Boss Mods Core

## [8.2.27](https://github.com/DeadlyBossMods/DeadlyBossMods/tree/8.2.27) (2019-11-10)
[Full Changelog](https://github.com/DeadlyBossMods/DeadlyBossMods/compare/8.2.26...8.2.27)

- Significant Updates to Ra-den to reflect many abilities were removed or changed. This mod is now in sync with current version of Ra-den Fight.  
    Fixes to Shadhar to reflect the phase 3 breath was changed froma raid wide channel to an instant cast tank only ability.  
    Updated some of Shadhar's timers as well which differ on normal vs heroic vs mythic.  
    Aniversery Event updates  
- 8.3 Update  
    - Fixed InfoFrame scanning wrong unit Ids on Wrathion, Ra-den, and Xanesh. This should cause those frames to now display player information they were intended to  
    - Fixed initial Incineration timer on wrathion being 1.2 seconds slow and fixed it so first timer says 1 instead of "unknown" for count.  
    - Fixed Add timer for Vexiona so it works again, since the event for it was removed from combat log since last test. While at it, added spawn counter to the timer.  
    - Fixed first twilight decimation timer being missing from Vexiona  
    - Fixed timers not stopping when Prophet Skitra goes into projection phase. While at it, fixed it so initial shred psyche after projection phase now shows. First images of absolution timer for heroic after project phase still missing.  
    - Completely overhauled Hivemind timers to reflect that normal timers were RADICALLY different from heroic ones. The timers for fight are now sequenced to expect difficulties to have different timers. The updated normal timers are also now supported  
    - Fixed Shadhar the insatiable so it no longer has a chance to falsely warn a fixate target that isn't actually fixated. Fixate warnings are now 1 second slower as a result, but the scanning method having a chance to fail was no good.  
    - Fixed taunt warning for Decimated on Ra-den to show correct text.  
    - Fixed normal mode timers for Xanesh to reflect that on normal mode he gains energy slower.  
    - Fixed taunt warning on Xanesh to actually show swap warning at 1 stack, and not just 2+.  
    - Added Nyalotha trash mod supprting 9 abilities  
- Fixed bug that caused lich king timers to cancel when you moed to edge of his platform (for some reason the frozen throne fires ZONE\_CHANGED\_NEW\_AREA near edge  
    Added an additional pre warning for defile.  
    Fixed first meteor timer of P3 rag  
- Revise ObeliskSpawn for now to not use the hack method, since it seems to be failing on normal. this means now it'll only work in english clients  
- Fixed accessing non existant locals  
- Updated Drestagath from Heroic testing  
    Updated Ilgynoth Reborn from Mythic testing  
    Updated Shadhar from Mythic testing  
- Push considerable updates to event bosses, focusing more on cata and wrath still, since BC bosses aren't causing groups problems  
- Set wipe time to 60  
- Fix couple errors  
- Fixed premature combat end for event, do to the long period of time you leave combat between bosses.  
    Added a few chogal warnings since the health buff to him made the encounter significantly more dangerous  
- Drycoded Support for Memories of Azeroth event.  
- Completed Carapace of Nzoth mod from heroic testing  
