--[[
    Copyright (C) 2024 GurliGebis

    Redistribution and use in source and binary forms, with or without
    modification, are permitted provided that the following conditions are met:

    1: Redistributions of source code must retain the above copyright notice,
       this list of conditions and the following disclaimer.

    2: Redistributions in binary form must reproduce the above copyright notice,
       this list of conditions and the following disclaimer in the documentation
       and/or other materials provided with the distribution.

    3: Neither the name of the copyright holder nor the names of its contributors
       may be used to endorse or promote products derived from this software
       without specific prior written permission.

    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS
    IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
    IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
    DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY
    DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
    (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF
    USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
    THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
    NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
    ADVISED OF THE POSSIBILITY OF SUCH DAMAGE
]]

local addonName, _ = ...
local L = LibStub("AceLocale-3.0"):NewLocale(addonName, "enUS", true, true)

L["CONDUIT_ITEMS"] = "Conduit items"
L["config_characterConfig"] = "Per-character configuration"
L["config_colorWarbandBonus"] = "Color World Quests with Warband bonus blue"
L["config_enableDebugging"] = "Enable debugging (requires DebugLog addon installed)"
L["config_enabledFilters"] = "Enabled Filters"
L["config_enableTaintWorkarounds"] = "Enable taint workarounds - Reloads UI (might have unknown effects)"
L["config_hideFilteredPOI"] = "Hide filtered World Quest POI icons on the world map"
L["config_hideQuestList"] = "Hide World Quests in the quest log"
L["config_hideUntrackedPOI"] = "Hide untracked World Quest POI icons on the world map"
L["config_lootFilterUpgrades"] = "Show only upgrades for Loot filter"
L["config_lootUpgradesLevel"] = "Loot filter shows upgrades"
L["config_lootUpgradesLevelValue"] = "Up to %d ilvls less"
L["config_lootUpgradesLevelValue1"] = "Higher ilvl only"
L["config_lootUpgradesLevelValue2"] = "Up to same ilvl"
L["config_onlyCurrentZone"] = "Only show World Quests for the current zone"
L["config_saveFilters"] = "Save active filters between logins"
L["config_showAtTop"] = "Display at the top of the Quest Log"
L["config_showContinentPOI"] = "Show World Quest POI icons on continent maps"
L["config_showHoveredPOI"] = "Always show hovered World Quest POI icon"
L["config_sortMethod"] = "Sort World Quests by"
L["config_sortMethod_1"] = "Name"
L["config_sortMethod_2"] = "Time Left"
L["config_sortMethod_3"] = "Zone"
L["config_sortMethod_4"] = "Faction"
L["config_sortMethod_5"] = "Rewards"
L["config_timeFilterDuration"] = "Time Remaining filter duration"
L["CURRENT_ZONE"] = "Current Zone"
L["UPGRADES"] = "Upgrades"
