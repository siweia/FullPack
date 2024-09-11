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
local L = LibStub("AceLocale-3.0"):NewLocale(addonName, "zhTW")
if not L then return end

L["CONDUIT_ITEMS"] = "靈印"
L["config_characterConfig"] = "為角色進行獨立的配置"
L["config_enableDebugging"] = "Enable debugging (requires DebugLog addon installed)"
L["config_enabledFilters"] = "啟用過濾"
--[[Translation missing --]]
L["config_enableTaintWorkarounds"] = "Enable taint workarounds - Reloads UI (might have unknown effects)"
L["config_hideFilteredPOI"] = "在世界地圖上隱藏被過濾的任務"
L["config_hideQuestList"] = "Hide World Quests in the quest log"
L["config_hideUntrackedPOI"] = "在世界地圖上隱藏未被追蹤的任務"
L["config_lootFilterUpgrades"] = "在物品過濾裏僅顯示更高裝等的物品任務"
L["config_lootUpgradesLevel"] = "可升級物品裝等過濾"
L["config_lootUpgradesLevelValue"] = "最多相差%d裝等"
L["config_lootUpgradesLevelValue1"] = "僅顯示更高裝等物品"
L["config_lootUpgradesLevelValue2"] = "顯示最高同裝等物品"
L["config_onlyCurrentZone"] = "僅顯示當前區域的任務列表"
L["config_saveFilters"] = "自動保存最後選擇的過濾"
L["config_showAtTop"] = "將任務列表置於任務日誌頂部"
L["config_showContinentPOI"] = "在大陸上顯示世界任務圖標"
L["config_showHoveredPOI"] = "總是顯示鼠標懸停的世界任務"
L["config_sortMethod"] = "任務列表排序"
L["config_sortMethod_1"] = "名字"
L["config_sortMethod_2"] = "剩餘時間"
L["config_sortMethod_3"] = "區域"
L["config_sortMethod_4"] = "聲望"
--[[Translation missing --]]
L["config_sortMethod_5"] = "Rewards"
L["config_timeFilterDuration"] = "剩餘時間過濾時長"
L["CURRENT_ZONE"] = "當前區域"
L["UPGRADES"] = "可升級"
