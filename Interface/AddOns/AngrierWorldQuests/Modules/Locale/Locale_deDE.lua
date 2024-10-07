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
local L = LibStub("AceLocale-3.0"):NewLocale(addonName, "deDE")
if not L then return end

--[[Translation missing --]]
L["CONDUIT_ITEMS"] = "Conduit items"
L["config_characterConfig"] = "Charakterspezifische Konfiguration"
--[[Translation missing --]]
L["config_colorWarbandBonus"] = "Color World Quests with Warband bonus blue"
L["config_enableDebugging"] = "Enable debugging (requires DebugLog addon installed)"
L["config_enabledFilters"] = "Aktivierte Filter"
--[[Translation missing --]]
L["config_enableTaintWorkarounds"] = "Enable taint workarounds - Reloads UI (might have unknown effects)"
L["config_hideFilteredPOI"] = "Verberge gefiltere Worldquest Symbole auf der Weltkarte"
L["config_hideQuestList"] = "Hide World Quests in the quest log"
L["config_hideUntrackedPOI"] = "Verberge nicht verfolgte Worldquest Symbole auf der Weltkarte"
L["config_lootFilterUpgrades"] = "Zeige nur Verbesserungen für den Lootfilter"
L["config_lootUpgradesLevel"] = "Lootfilter zeigt Verbesserungen"
L["config_lootUpgradesLevelValue"] = "Bis zu %d Gegenstandsstufen weniger"
L["config_lootUpgradesLevelValue1"] = "Nur höhrere Gegenstandsstufe"
L["config_lootUpgradesLevelValue2"] = "Bis zur gleichen Gegenstandsstufe"
L["config_onlyCurrentZone"] = "Zeige nur Worldquests aus der aktuellen Zone"
L["config_saveFilters"] = "Speichere Filter zwischen Sitzungen"
L["config_showAtTop"] = "Zeige oben im Quest Log"
L["config_showContinentPOI"] = "Zeige Worldquestsymbole auf der Kontinent-Karte"
L["config_showHoveredPOI"] = "Zeige Worldquest Symbole immer, wenn unter der Maus"
L["config_sortMethod"] = "Sortiere Weltquests nach"
L["config_sortMethod_1"] = "NAME"
L["config_sortMethod_2"] = "CLOSES_IN"
L["config_sortMethod_3"] = "ZONE"
L["config_sortMethod_4"] = "FACTION"
L["config_sortMethod_5"] = "REWARDS"
L["config_timeFilterDuration"] = "Dauer für \"Verbleibende Zeit\" Filter"
L["CURRENT_ZONE"] = "Aktuelle Zone"
L["UPGRADES"] = "Verbesserungen"
