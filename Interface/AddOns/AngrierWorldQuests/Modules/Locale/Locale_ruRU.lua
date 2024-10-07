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
local L = LibStub("AceLocale-3.0"):NewLocale(addonName, "ruRU")
if not L then return end

L["CONDUIT_ITEMS"] = "Предметы медиума"
L["config_characterConfig"] = "Настройки персонажа"
--[[Translation missing --]]
L["config_colorWarbandBonus"] = "Color World Quests with Warband bonus blue"
L["config_enableDebugging"] = "Enable debugging (requires DebugLog addon installed)"
L["config_enabledFilters"] = "Включенные фильтры"
--[[Translation missing --]]
L["config_enableTaintWorkarounds"] = "Enable taint workarounds - Reloads UI (might have unknown effects)"
L["config_hideFilteredPOI"] = "Скрыть отфильтрованные World Quest иконки на карте мира"
L["config_hideQuestList"] = "Hide World Quests in the quest log"
L["config_hideUntrackedPOI"] = "Скрыть неотслеживаемые World Quest иконки на карте мира"
L["config_lootFilterUpgrades"] = "Показать обновления только для Loot фильтра"
L["config_lootUpgradesLevel"] = "Фильтр добычи показывает улучшения"
L["config_lootUpgradesLevelValue"] = "На %d уровень экипировки меньше"
L["config_lootUpgradesLevelValue1"] = "Только более высокий уровень экипировки"
L["config_lootUpgradesLevelValue2"] = "До того же уровня экипировки"
L["config_onlyCurrentZone"] = "Показывать Локальные Задания только для текущей зоны"
L["config_saveFilters"] = "Сохранять активные фильтры между входами"
L["config_showAtTop"] = "Показать вверху списка квестов"
L["config_showContinentPOI"] = "Показать World Quest иконки на полной карте материка"
L["config_showHoveredPOI"] = "Всегда показывать значок World Quest"
L["config_sortMethod"] = "Сортировать Задания"
L["config_sortMethod_1"] = "Имя"
L["config_sortMethod_2"] = "Оставшееся время"
L["config_sortMethod_3"] = "Зона"
L["config_sortMethod_4"] = "Фракция"
L["config_sortMethod_5"] = "Награды"
L["config_timeFilterDuration"] = "Оставшееся время(Продолжительность)"
L["CURRENT_ZONE"] = "Текущая локация"
L["UPGRADES"] = "Обновление"
