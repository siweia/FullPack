# <DBM Mod> Raids (DF)

## [10.1.29](https://github.com/DeadlyBossMods/DBM-Retail/tree/10.1.29) (2023-10-14)
[Full Changelog](https://github.com/DeadlyBossMods/DBM-Retail/compare/10.1.28...10.1.29) [Previous Releases](https://github.com/DeadlyBossMods/DBM-Retail/releases)

- Update localization.tw.lua (#290) Co-authored-by: Adam <MysticalOS@users.noreply.github.com>  
- Update commonlocal.tw.lua (#289)  
- prep new tags for all game flavors, bump wrath one to be mandatory update since last update didn't do that and there are MANY ICC fixes that should be force pushed to all users, including the module loading itself being about 70% faster  
- Prep core for dungeon package notice for classic flavors  
- Bugfix last, there's a chance height operations can run prior to full initialization on spelldesc.  
- Re-size spelldesc area after it's finished async loading.  
- Load mod panels onclick only, rather than onload.  
- Update koKR (#288)  
- Update koKR (Retail) (#942)  
- fix last  
- Begin Nymue refactor  
    Update option key and stage timer on Gnarlroot  
- Yet another object needed for 10.2 raid  
- Update koKR (Retail) (#941)  
- Thought i pushed this already  
- improve core objects so 21532365 different modules don't all have to do a manual \"is retail\" or \"is classic\" check  
- Update koKR (#286)  
- add another option for localizing  
- Just because  
- Bump alphas for classic  
- begin gui work on upcoming built-in nameplate CDs feature - Unified nameplate options so they all also appear in nameplate options - Unhid plater only options so they are exposed in gui always - Hid handoff option since it's a power user option that shouldn't be exposed when users don't understand what it does (handoff is still default and preferred solution but a power user should still be able to toggle it with script or config editing) - Clarified language on some options - Added message if you are using plater and plater nameplate Cds option is not enabled but nameplate cds are NOT disabled in DBM. The message will not show if both are enabled or both are disabled. It's just to inform users feature is only half enabled if they're a player user.  
- bump wrath toc and preg tags for wrath and classic era  
- afk alert should be on by default on hardcore realms  
- Update koKR (#284)  
- Try to make shorttext option able to disable non spellId short texts Plus 2 more common locales  
- Update koKR (#283)  
- Update koKR (Retail) (#940)  
- Update localization.tw.lua (#282)  
- Update localization.ru.lua (#279)  
- Update commonlocal.tw.lua (#280)  
- Update commonlocal.ru.lua (#278)  
- Update zhCN (#277)  
- Update localization.cn.lua (#939)  
- more renames  
- Some renames  
- begin work on many fixes/updates to simplify timer and warning objects with short text. Plus a few bug fixes  
- Missed some core stuff  
- another object  
- improve staging timer objects  
- Further shore up common locals and make a cheat sheet for auto localized texts as well  
- And another  
- Add another CL  
- Update koKR (#275)  
- This needs to be pushed due to core changes  
- Update commonlocal.tw.lua (#273)  
- Update commonlocal.ru.lua (#274)  
- Update commonlocal.ru.lua (#272)  
- Meant to push these yesterday  
- Fix stating/events. timers held back for now  
    also cleaned up some noise  
- Fix last  
- Just a few last minute preps for mythic Tindral  
- Fixes/changes for volcoross mythic  
- personal stack announce for lingering cinder  
- Add icon marking and icon yells to volcoross for mythic  
- some laradar mythic updates  
- Update koKR (#271)  
- Support registering a private aura under a separate option ID than aura ID (basically for niche cases where you might actually need to activate alternative IDs for same mechanic)  
- Support second private aura ID for polymorph bomb  
- Add new Nymue add mechanic  
- Completely rework gnarlroot timers on all difficulties  
- bump alphas  
