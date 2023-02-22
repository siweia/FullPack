# <DBM> World Bosses (Dragonflight)

## [10.0.28](https://github.com/DeadlyBossMods/DBM-Retail/tree/10.0.28) (2023-02-22)
[Full Changelog](https://github.com/DeadlyBossMods/DBM-Retail/compare/10.0.27...10.0.28) [Previous Releases](https://github.com/DeadlyBossMods/DBM-Retail/releases)

- prep new tags for reworked interrupt code and possibly other stuff i already forgot  
- Update localization.ru.lua (#190)  
- Update koKR (#191)  
- missed one  
- tweaks to interrupt filter  
- tweak language for consistency  
- Fix second header  
- rework interrupt filter code to be more clear and better configurable  
- push new locals of tonights random feature rework. :D  
- API docs were wrong. the table element is applications not charges  
- fixes  
- Update commonlocal.ru.lua (#189)  
- Send \"H\" message on old protocol instead of new for now, so we're always querying version from all DBM users  
- Also fix conditions where more than one debuff are left, but clears still aren't possible (example: two negative debuffs, 0 positive due to deaths)  
- The last thundering fix mostly works but can still fail if there is even a slight millisecond gap between first thundering going out and 2nd, because then it makes it think only 1 is left and it cancels it immediately. Try a more robust (and CPU friendly work around) by hard coded a 1 second iterator that delays 1 second before starting to make sure all party members actually have it before counting how many are left.  
- even more errors  
- fix more errors  
- no idea what's causing luacheck error but fix another error I see  
- Made add marking faster on Broodkeeper, in addition, changed used marks to be more compatable with bigwigs.  
    Also closes https://github.com/DeadlyBossMods/DBM-Retail/issues/860 now that icons don't force reset each set  
- bump alphas  
