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
local L = LibStub("AceLocale-3.0"):NewLocale(addonName, "koKR")
if not L then return end

--[[Translation missing --]]
L["CONDUIT_ITEMS"] = "Conduit items"
L["config_characterConfig"] = "캐릭터 개별 설정"
--[[Translation missing --]]
L["config_colorWarbandBonus"] = "Color World Quests with Warband bonus blue"
L["config_enableDebugging"] = "Enable debugging (requires DebugLog addon installed)"
L["config_enabledFilters"] = "사용할 필터 선택"
--[[Translation missing --]]
L["config_enableTaintWorkarounds"] = "Enable taint workarounds - Reloads UI (might have unknown effects)"
L["config_hideFilteredPOI"] = "세계지도에 필터링한 전역퀘스트 아이콘을 표시합니다"
L["config_hideQuestList"] = "Hide World Quests in the quest log"
L["config_hideUntrackedPOI"] = "세계지도에 추적중인 전역퀘스트 아이콘을 표시합니다"
L["config_lootFilterUpgrades"] = "전리품 필터를 통해 나온 결과물 중에, 현재 장비보다 좋은 항목만을 표시합니다"
L["config_lootUpgradesLevel"] = "전리품 업그레이드 필터"
L["config_lootUpgradesLevelValue"] = "%d등급 낮은 전리품"
L["config_lootUpgradesLevelValue1"] = "높은 등급 전리품"
L["config_lootUpgradesLevelValue2"] = "동일한 등급 전리품"
L["config_onlyCurrentZone"] = "퀘스트 목록창에 현재 지역에 있는 전역 퀘스트만 표시합니다"
L["config_saveFilters"] = "활성화된 필터목록을 저장하여 다음 접속까지 유지"
L["config_showAtTop"] = "퀘스트 목록창의 상단에 표시합니다"
L["config_showContinentPOI"] = "부서진 섬 지도에 전역퀘스트 아이콘을 표시합니다"
L["config_showHoveredPOI"] = "퀘스트 목록창에 있는 전역 퀘스트들의 아이콘을 항상 표시합니다"
L["config_sortMethod"] = "전역 퀘스트 정렬 기준"
L["config_sortMethod_1"] = "이름"
L["config_sortMethod_2"] = "마감 시한"
L["config_sortMethod_3"] = "지역"
L["config_sortMethod_4"] = "사절 및 세력"
--[[Translation missing --]]
L["config_sortMethod_5"] = "Rewards"
L["config_timeFilterDuration"] = "마감 시한 필터의 기준 시간"
L["CURRENT_ZONE"] = "현재 지역"
L["UPGRADES"] = "업그레이드"
