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
local L = LibStub("AceLocale-3.0"):NewLocale(addonName, "zhCN")
if not L then return end

L["CONDUIT_ITEMS"] = "导灵器"
L["config_characterConfig"] = "为角色进行独立的配置"
L["config_enableDebugging"] = "Enable debugging (requires DebugLog addon installed)"
L["config_enabledFilters"] = "启用过滤"
--[[Translation missing --]]
L["config_enableTaintWorkarounds"] = "Enable taint workarounds - Reloads UI (might have unknown effects)"
L["config_hideFilteredPOI"] = "在世界地图上隐藏被过滤的任务"
L["config_hideQuestList"] = "Hide World Quests in the quest log"
L["config_hideUntrackedPOI"] = "在世界地图上隐藏未被追踪的任务"
L["config_lootFilterUpgrades"] = "在物品过滤里仅显示更高装等的物品任务"
L["config_lootUpgradesLevel"] = "可升级物品装等过滤"
L["config_lootUpgradesLevelValue"] = "最多相差%d装等"
L["config_lootUpgradesLevelValue1"] = "仅显示更高装等"
L["config_lootUpgradesLevelValue2"] = "显示最高同等级"
L["config_onlyCurrentZone"] = "仅显示当前区域的任务列表"
L["config_saveFilters"] = "自动保存最后选择的过滤"
L["config_showAtTop"] = "将任务列表置于任务日志顶部"
L["config_showContinentPOI"] = "在大陆上显示世界任务图标"
L["config_showHoveredPOI"] = "总是显示鼠标悬停的世界任务"
L["config_sortMethod"] = "任务列表排序"
L["config_sortMethod_1"] = "名字"
L["config_sortMethod_2"] = "剩余时间"
L["config_sortMethod_3"] = "区域"
L["config_sortMethod_4"] = "声望"
--[[Translation missing --]]
L["config_sortMethod_5"] = "Rewards"
L["config_timeFilterDuration"] = "剩余时间过滤时长"
L["CURRENT_ZONE"] = "当前区域"
L["UPGRADES"] = "可升级"
