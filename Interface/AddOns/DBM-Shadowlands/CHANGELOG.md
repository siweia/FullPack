# <DBM> World Bosses (Shadowlands)

## [9.1.25](https://github.com/DeadlyBossMods/DBM-Retail/tree/9.1.25) (2022-01-18)
[Full Changelog](https://github.com/DeadlyBossMods/DBM-Retail/compare/9.1.24...9.1.25) [Previous Releases](https://github.com/DeadlyBossMods/DBM-Retail/releases)

- prep new tags  
- bump bcc tocs  
- Update localization.cn.lua (#715)  
- Update localization.ru.lua (#43) Minor edits and phrase translation.  
- Update koKR (#714)  
- A fun new \"way\" of pushing some stuff  
- Update localization.ru.lua (#41)  
    Co-authored-by: Adam <MysticalOS@users.noreply.github.com>  
- Update localization.ru.lua (#42)  
- Update koKR (#39)  
- Fix ROOM\_EDGE -> EDGE (Matching en locale)  
    Also clean up some erranous spaces instead of tabs  
- Fix DAMAGER\_ICON -> DAMAGE\_ICON  
- Update localization.ru.lua (#40)  
    Few corrections. Also some untranslated phrases.  
- Add conflict notes  
- Add auto localized text for icon options that can be used to label ones that may conflict with other ones  
- Prune backwards compat. all release versions are updated, if anyone gets lua errors, it's because they need to update old mods.  
- Fix missed COMMON L update  
- Support extending in infoframe and announce objects  
- Update localization.tw.lua (#36)  
- Update commonlocal.tw.lua (#37)  
- Update localization.tw.lua (GUI) (#38)  
- Forgot to push this fix  
- actually, without a doubt, I shouldn't use extended ones here, but probably add more drop down options tumorrow to use alt ones in more ways  
- Update pantheon from mythic testing with updated mythic timers and a icon refactring/extention  
- Tweaks to allow niche icon options that have extended icons but also non extended icons, that way we cn allow icon option to be visible, but just not show the extended ones.  
- Add a free to use custom RaidTargetingIcons file for the extended icons feature (still requires manual install)  
- Fix stupid  
- Update koKR (#35)  
- Update koKR (#713)  
    Co-authored-by: Artemis <QartemisT@gmail.com>  
- Forgot to update header  
- Some post mythic xymox tweaks  
    Updated Lihuvim to reflect that most of timers changed in LFR too, so it's safe to assume these are new timers in all difficulties, minus mythics early adds phase  
    Gave panthon the first experimental extended icon option.  
- Also update common locals  
- Kill off short text option and just make it the norm, eliminating a lot of duplication  
- Fix potential bugs with last  
- Added support for extending the icon setting api. This allows advaned users to enable usage of up to 16 raid icons if they add a custom texture file to game.  
    Important Notes:  
    1. Even if you install custom texture and enable option, others won't SEE icons unless they also install texture (they don't need to enable extended option in DBM if they aren't setting any icons though  
    2. icons set on players using icons 9-16 will not appear over players or creatures heads. They only appear on nameplates and raid/target/unit frames  
    3, Icons will not work in SAY messages so they will not be used there.  
- Add full mythic timer support to Lihuvim  
- Prep next alpha cycles  
