local ADDON, Addon = ...
local Mod = Addon:NewModule('ProgressTracker')
Mod.playerDeaths = {}

local lastQuantity
local lastDied
local lastDiedName
local lastDiedTime
local lastAmount
local lastAmountTime
local lastQuantity

local REAPING_AFFIX_ID = 117

local progressPresets = {
	[141283] = 4,
	[138281] = 6,
	[144286] = 0,
	[141284] = 4,
	[129599] = 3,
	[130653] = 4,
	[137516] = 4,
	[134514] = 9,
	[141285] = 4,
	[150547] = 1,
	[130909] = 4,
	[150292] = 5,
	[133685] = 4,
	[129600] = 3,
	[150165] = 5,
	[135474] = 4,
	[139626] = 1,
	[139946] = 6,
	[126918] = 4,
	[129601] = 4,
	[133943] = 0,
	[130400] = 6,
	[137521] = 4,
	[126919] = 4,
	[137713] = 1,
	[129602] = 6,
	[139949] = 4,
	[127111] = 6,
	[150297] = 4,
	[144293] = 6,
	[134137] = 9,
	[144294] = 4,
	[133436] = 5,
	[144295] = 4,
	[155090] = 4,
	[134331] = 6,
	[127879] = 4,
	[134012] = 6,
	[144296] = 5,
	[131585] = 4,
	[131586] = 4,
	[136249] = 36,
	[130435] = 5,
	[128455] = 6,
	[144298] = 6,
	[136186] = 9,
	[136250] = 4,
	[151325] = 0,
	[144299] = 4,
	[155094] = 4,
	[130404] = 4,
	[151773] = 4,
	[128967] = 4,
	[144300] = 0,
	[134144] = 18,
	[144301] = 1,
	[135167] = 4,
	[135231] = 8,
	[138489] = 8,
	[134338] = 9,
	[131847] = 4,
	[144303] = 4,
	[151649] = 4,
	[128969] = 8,
	[135234] = 3,
	[129640] = 4,
	[131849] = 4,
	[131402] = 1,
	[135235] = 4,
	[141495] = 1,
	[131850] = 4,
	[130024] = 1,
	[134150] = 36,
	[127757] = 4,
	[135365] = 16,
	[137473] = 4,
	[134024] = 1,
	[134599] = 4,
	[135366] = 6,
	[150249] = 4,
	[134600] = 4,
	[129802] = 0,
	[135239] = 4,
	[138369] = 0,
	[150250] = 4,
	[136006] = 0,
	[135048] = 4,
	[130026] = 6,
	[129547] = 4,
	[135240] = 2,
	[133835] = 4,
	[150251] = 4,
	[133963] = 1,
	[135049] = 2,
	[134602] = 4,
	[135241] = 4,
	[151657] = 4,
	[133836] = 4,
	[141565] = 1,
	[130027] = 7,
	[129548] = 4,
	[122969] = 4,
	[141566] = 1,
	[135562] = 2,
	[134157] = 4,
	[131666] = 4,
	[151659] = 4,
	[131858] = 4,
	[135052] = 1,
	[130028] = 7,
	[134158] = 6,
	[122970] = 4,
	[136139] = 12,
	[139269] = 4,
	[135245] = 8,
	[134990] = 4,
	[136076] = 6,
	[161243] = 7,
	[131669] = 1,
	[122971] = 4,
	[134991] = 6,
	[161244] = 7,
	[131670] = 6,
	[127315] = 0,
	[140038] = 2,
	[155432] = 0,
	[122972] = 4,
	[150195] = 4,
	[137484] = 6,
	[155433] = 7,
	[138187] = 4,
	[137485] = 4,
	[128434] = 4,
	[129552] = 6,
	[134739] = 10,
	[122973] = 4,
	[137486] = 4,
	[138061] = 0,
	[137614] = 0,
	[137487] = 4,
	[128435] = 1,
	[151476] = 8,
	[129553] = 10,
	[138255] = 4,
	[134423] = 1,
	[138064] = 0,
	[133593] = 5,
	[131677] = 6,
	[161124] = 7,
	[134616] = 2,
	[138002] = 1,
	[134617] = 1,
	[135192] = 4,
	[144071] = 4,
	[136470] = 4,
	[127799] = 4,
	[137940] = 4,
	[127480] = 1,
	[135258] = 1,
	[134364] = 4,
	[134173] = 1,
	[150142] = 4,
	[136665] = 7,
	[134174] = 5,
	[150143] = 4,
	[131492] = 4,
	[134686] = 4,
	[136347] = 1,
	[133345] = 5,
	[129526] = 4,
	[131685] = 4,
	[150146] = 4,
	[130485] = 12,
	[129527] = 4,
	[139799] = 9,
	[127488] = 7,
	[131445] = 9,
	[135254] = 4,
	[135706] = 3,
	[130025] = 7,
	[127482] = 4,
	[127497] = 9,
	[139800] = 9,
	[131112] = 6,
	[135329] = 10,
	[127485] = 3,
	[150276] = 5,
	[130582] = 0,
	[137029] = 5,
	[135699] = 7,
	[134691] = 4,
	[127381] = 3,
	[127477] = 6,
	[133912] = 6,
	[134284] = 4,
	[131587] = 5,
	[133852] = 4,
	[133663] = 4,
	[128551] = 4,
	[133463] = 12,
	[136353] = 10,
	[131818] = 4,
	[130635] = 4,
	[133990] = 1,
	[137969] = 6,
	[134629] = 6,
	[135204] = 4,
	[150253] = 6,
	[135846] = 2,
	[131819] = 4,
	[150254] = 4,
	[131436] = 6,
	[134139] = 10,
	[151658] = 4,
	[134005] = 1,
	[133432] = 5,
	[129370] = 4,
	[129699] = 4,
	[136295] = 13,
	[130488] = 4,
	[134232] = 4,
	[127486] = 7,
	[161241] = 7,
	[139422] = 6,
	[131821] = 0,
	[138464] = 4,
	[133482] = 1,
	[136297] = 9,
	[136643] = 12,
	[132126] = 4,
	[127119] = 0,
	[150154] = 4,
	[138465] = 4,
	[138019] = 4,
	[130437] = 2,
	[130521] = 1,
	[129366] = 4,
	[126497] = 0,
	[137478] = 6,
	[122984] = 6,
	[133430] = 8,
	[135975] = 0,
	[126928] = 4,
	[137989] = 1,
	[134418] = 9,
	[150293] = 4,
	[134251] = 4,
	[129372] = 4,
	[136934] = 4,
	[129367] = 4,
	[130436] = 1,
	[130011] = 4,
	[152009] = 5,
	[139425] = 4,
	[129550] = 4,
	[68819] = 12,
	[137716] = 0,
	[150168] = 6,
	[138247] = 1,
	[150169] = 4,
	[129788] = 4,
	[134041] = 4,
	[137830] = 4,
	[129373] = 4,
	[133870] = 4,
	[137511] = 4,
	[129369] = 8,
	[130012] = 4,
	[129529] = 4,
	[137517] = 4,
	[130661] = 4,
	[131812] = 6,
	[127106] = 6,
	[133935] = 8,
	[138254] = 1,
	[132530] = 0,
	[129879] = 0,
	[134417] = 12,
	[129928] = 0,
	[150160] = 5,
	[129371] = 4,
	[127124] = 0,
	[139110] = 11,
	[155434] = 7,
	[141282] = 1,
	[134994] = 1,
	[129598] = 0,
	[137474] = 6,
	[136214] = 36,
	[129559] = 4,
	[129374] = 4,
	[132532] = 0,
	[130522] = 2,
}

local function ProcessLasts()
	if lastDied and lastDiedTime and lastAmount and lastAmountTime then
		if abs(lastAmountTime - lastDiedTime) < 0.1 then
			if not AngryKeystones_Data.progress[lastDied] then AngryKeystones_Data.progress[lastDied] = {} end
			if AngryKeystones_Data.progress[lastDied][lastAmount] then
				AngryKeystones_Data.progress[lastDied][lastAmount] = AngryKeystones_Data.progress[lastDied][lastAmount] + 1
			else
				AngryKeystones_Data.progress[lastDied][lastAmount] = 1
			end
			lastDied, lastDiedTime, lastAmount, lastAmountTime, lastDiedName = nil, nil, nil, nil, nil
		end
	end
end

function Mod:COMBAT_LOG_EVENT_UNFILTERED()
	local timestamp, event, hideCaster, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags, spellID, spellName, spellSchool, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10 = CombatLogGetCurrentEventInfo()
	if event == "UNIT_DIED" then
		if bit.band(destFlags, COMBATLOG_OBJECT_TYPE_NPC) > 0
				and bit.band(destFlags, COMBATLOG_OBJECT_CONTROL_NPC) > 0
				and (bit.band(destFlags, COMBATLOG_OBJECT_REACTION_HOSTILE) > 0 or bit.band(destFlags, COMBATLOG_OBJECT_REACTION_NEUTRAL) > 0) then
			local type, zero, server_id, instance_id, zone_uid, npc_id, spawn_uid = strsplit("-", destGUID)
			lastDied = tonumber(npc_id)
			lastDiedTime = GetTime()
			lastDiedName = destName
			ProcessLasts()
		end
		if bit.band(destFlags, COMBATLOG_OBJECT_TYPE_PLAYER) > 0 then
			if UnitIsFeignDeath(destName) then
				-- Feign Death
			elseif Mod.playerDeaths[destName] then
				Mod.playerDeaths[destName] = Mod.playerDeaths[destName] + 1
			else
				Mod.playerDeaths[destName] = 1
			end
			--Addon.ObjectiveTracker:UpdatePlayerDeaths()
		end
	end
end

function Mod:SCENARIO_CRITERIA_UPDATE()
	local scenarioType = select(10, C_Scenario.GetInfo())
	if scenarioType == LE_SCENARIO_TYPE_CHALLENGE_MODE then
		local numCriteria = select(3, C_Scenario.GetStepInfo())
		for criteriaIndex = 1, numCriteria do
			local criteriaString, criteriaType, _, quantity, totalQuantity, _, _, quantityString, _, _, _, _, isWeightedProgress = C_Scenario.GetCriteriaInfo(criteriaIndex)
			if isWeightedProgress then
				local currentQuantity = quantityString and tonumber( strsub(quantityString, 1, -2) )
				if lastQuantity and currentQuantity < totalQuantity and currentQuantity > lastQuantity then
					lastAmount = currentQuantity - lastQuantity
					lastAmountTime = GetTime()
					ProcessLasts()
				end
				lastQuantity = currentQuantity
			end
		end
	end
end

local function StartTime()
	Mod:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
	local numCriteria = select(3, C_Scenario.GetStepInfo())
	for criteriaIndex = 1, numCriteria do
		local criteriaString, criteriaType, _, quantity, totalQuantity, _, _, quantityString, _, _, _, _, isWeightedProgress = C_Scenario.GetCriteriaInfo(criteriaIndex)
		if isWeightedProgress then
			local quantityString = select(8, C_Scenario.GetCriteriaInfo(criteriaIndex))
			lastQuantity = quantityString and tonumber( strsub(quantityString, 1, -2) )
		end
	end
end

local function StopTime()
	Mod:UnregisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
end

local function CheckTime(...)
	for i = 1, select("#", ...) do
		local timerID = select(i, ...)
		local _, elapsedTime, type = GetWorldElapsedTime(timerID)
		if type == LE_WORLD_ELAPSED_TIMER_TYPE_CHALLENGE_MODE then
			local mapID = C_ChallengeMode.GetActiveChallengeMapID()
			if mapID then
				StartTime()
				return
			end
		end
	end
	StopTime()
end

local function OnTooltipSetUnit(tooltip)
	local scenarioType = select(10, C_Scenario.GetInfo())
	if scenarioType == LE_SCENARIO_TYPE_CHALLENGE_MODE and Addon.Config.progressTooltip then
		local name, unit = tooltip:GetUnit()
		local guid = unit and UnitGUID(unit)
		if guid then
			local type, zero, server_id, instance_id, zone_uid, npc_id, spawn_uid = strsplit("-", guid)
			npc_id = tonumber(npc_id)
			local info = AngryKeystones_Data.progress[npc_id]
			local preset = progressPresets[npc_id]
			if info or preset then
				local numCriteria = select(3, C_Scenario.GetStepInfo())
				local total
				local progressName
				for criteriaIndex = 1, numCriteria do
					local criteriaString, _, _, quantity, totalQuantity, _, _, quantityString, _, _, _, _, isWeightedProgress = C_Scenario.GetCriteriaInfo(criteriaIndex)
					if isWeightedProgress then
						progressName = criteriaString
						total = totalQuantity
					end
				end

				local value, valueCount
				if info then
					for amount, count in pairs(info) do
						if not valueCount or count > valueCount or (count == valueCount and amount < value) then
							value = amount
							valueCount = count
						end
					end
				end
				if preset and (not value or valueCount == 1) then
					value = preset
				end
				if value and total then
					local forcesFormat = format(" - %s: %%s", progressName)
					local text
					if Addon.Config.progressFormat == 1 or Addon.Config.progressFormat == 4 then
						text = format( format(forcesFormat, "+%.2f%%"), value/total*100)
					elseif Addon.Config.progressFormat == 2 or Addon.Config.progressFormat == 5 then
						text = format( format(forcesFormat, "+%d"), value)
					elseif Addon.Config.progressFormat == 3 or Addon.Config.progressFormat == 6 then
						text = format( format(forcesFormat, "+%.2f%% - +%d"), value/total*100, value)
					end

					if text then
						local matcher = format(forcesFormat, "%d+%%")
						for i=2, tooltip:NumLines() do
							local tiptext = _G["GameTooltipTextLeft"..i]
							local linetext = tiptext and tiptext:GetText()

							if linetext and linetext:match(matcher) then
								tiptext:SetText(text)
								tooltip:Show()
							end
						end
					end
				end
			end
		end
	end
end

function Mod:GeneratePreset()
	local ret = {}
	for npcID, info in pairs(AngryKeystones_Data.progress) do
		local value, valueCount
		for amount, count in pairs(info) do
			if not valueCount or count > valueCount or (count == valueCount and amount < value) then
				value = amount
				valueCount = count
			end
		end
		ret[npcID] = value
	end
	AngryKeystones_Data.preset = ret
	return ret
end

function Mod:PLAYER_ENTERING_WORLD(...) CheckTime(GetWorldElapsedTimers()) end
function Mod:WORLD_STATE_TIMER_START(...) local timerID = ...; CheckTime(timerID) end
function Mod:WORLD_STATE_TIMER_STOP(...) local timerID = ...; StopTime(timerID) end
function Mod:CHALLENGE_MODE_START(...) CheckTime(GetWorldElapsedTimers()) end
function Mod:CHALLENGE_MODE_RESET(...) wipe(Mod.playerDeaths) end

local function ProgressBar_SetValue(self, percent)
	if self.criteriaIndex then
		local _, _, _, _, totalQuantity, _, _, quantityString, _, _, _, _, _ = C_Scenario.GetCriteriaInfo(self.criteriaIndex)
		local currentQuantity = quantityString and tonumber( strsub(quantityString, 1, -2) )
		if currentQuantity and totalQuantity then
			if Addon.Config.progressFormat == 1 then
				self.Bar.Label:SetFormattedText("%.2f%%", currentQuantity/totalQuantity*100)
			elseif Addon.Config.progressFormat == 2 then
				self.Bar.Label:SetFormattedText("%d/%d", currentQuantity, totalQuantity)
			elseif Addon.Config.progressFormat == 3 then
				self.Bar.Label:SetFormattedText("%.2f%% - %d/%d", currentQuantity/totalQuantity*100, currentQuantity, totalQuantity)
			elseif Addon.Config.progressFormat == 4 then
				self.Bar.Label:SetFormattedText("%.2f%% (%.2f%%)", currentQuantity/totalQuantity*100, (totalQuantity-currentQuantity)/totalQuantity*100)
			elseif Addon.Config.progressFormat == 5 then
				self.Bar.Label:SetFormattedText("%d/%d (%d)", currentQuantity, totalQuantity, totalQuantity - currentQuantity)
			elseif Addon.Config.progressFormat == 6 then
				self.Bar.Label:SetFormattedText("%.2f%% (%.2f%%) - %d/%d (%d)", currentQuantity/totalQuantity*100, (totalQuantity-currentQuantity)/totalQuantity*100, currentQuantity, totalQuantity, totalQuantity - currentQuantity)
			end
		end

		local isReapingActive = false
		local _, affixes, _ = C_ChallengeMode.GetActiveKeystoneInfo()
		if affixes then
			for i = 1, #affixes do
				if affixes[i] == REAPING_AFFIX_ID then
					isReapingActive = true
				end
			end
		end

		if isReapingActive and currentQuantity < totalQuantity then
			if not self.ReapingFrame then
				local reapingFrame = CreateFrame("Frame", nil, self)
				reapingFrame:SetSize(56, 16)
				reapingFrame:SetPoint("BOTTOMRIGHT", self, "TOPRIGHT", 0, 0)
		
				reapingFrame.Icon = CreateFrame("Frame", nil, reapingFrame, "ScenarioChallengeModeAffixTemplate")
				reapingFrame.Icon:SetPoint("LEFT", reapingFrame, "LEFT", 0, 0)
				reapingFrame.Icon:SetSize(14, 14)
				reapingFrame.Icon.Portrait:SetSize(12, 12)
				reapingFrame.Icon:SetUp(REAPING_AFFIX_ID)

				reapingFrame.Text = reapingFrame:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
				reapingFrame.Text:SetPoint("LEFT", reapingFrame.Icon, "RIGHT", 4, 0)

				self.ReapingFrame = reapingFrame

				self:HookScript("OnShow", function(self) self.ReapingFrame:Show(); self.ReapingFrame.Icon:Show() end )
				self:HookScript("OnHide", function(self) self.ReapingFrame:Hide(); self.ReapingFrame.Icon:Hide() end )
			end
			local threshold = totalQuantity / 5
			local current = currentQuantity
			local value = threshold - current % threshold
			local total = totalQuantity
			if Addon.Config.progressFormat == 1 or Addon.Config.progressFormat == 4 then
				self.ReapingFrame.Text:SetFormattedText("%.2f%%", value/total*100)
			elseif Addon.Config.progressFormat == 2 or Addon.Config.progressFormat == 5 then
				self.ReapingFrame.Text:SetFormattedText("%d", ceil(value))
			elseif Addon.Config.progressFormat == 3 or Addon.Config.progressFormat == 6 then
				self.ReapingFrame.Text:SetFormattedText("%.2f%% - %d", value/total*100, ceil(value))
			else
				self.ReapingFrame.Text:SetFormattedText("%d%%", value/total*100)
			end
			self.ReapingFrame:Show()
			self.ReapingFrame.Icon:Show()
		elseif self.ReapingFrame then
			self.ReapingFrame:Hide()
			self.ReapingFrame.Icon:Hide()
		end
	end
end

local function DeathCount_OnEnter(self)
	GameTooltip:SetOwner(self, "ANCHOR_LEFT")
	GameTooltip:SetText(CHALLENGE_MODE_DEATH_COUNT_TITLE:format(self.count), 1, 1, 1)
	GameTooltip:AddLine(CHALLENGE_MODE_DEATH_COUNT_DESCRIPTION:format(SecondsToClock(self.timeLost, false)))

	GameTooltip:AddLine(" ")
	local list = {}
	local deathsCount = 0
	for unit,count in pairs(Mod.playerDeaths) do
		local _, class = UnitClass(unit)
		deathsCount = deathsCount + count
		table.insert(list, { count = count, unit = unit, class = class })
	end
	table.sort(list, function(a, b)
		if a.count ~= b.count then
			return a.count > b.count
		else
			return a.unit < b.unit
		end
	end)

	for _,item in ipairs(list) do
		local color = RAID_CLASS_COLORS[item.class] or HIGHLIGHT_FONT_COLOR
		GameTooltip:AddDoubleLine(item.unit, item.count, color.r, color.g, color.b, HIGHLIGHT_FONT_COLOR:GetRGB())
	end
	GameTooltip:Show()
end

function Mod:Blizzard_ObjectiveTracker()
	ScenarioChallengeModeBlock.DeathCount:SetScript("OnEnter", DeathCount_OnEnter)
end

function Mod:Startup()
	if not AngryKeystones_Data then
		AngryKeystones_Data = {}
	end
	if not AngryKeystones_Data.progress then
		AngryKeystones_Data = { progress = AngryKeystones_Data }
	end
	if not AngryKeystones_Data.state then AngryKeystones_Data.state = {} end
	local mapID = C_ChallengeMode.GetActiveChallengeMapID()
	if select(10, C_Scenario.GetInfo()) == LE_SCENARIO_TYPE_CHALLENGE_MODE and mapID and mapID == AngryKeystones_Data.state.mapID and AngryKeystones_Data.state.playerDeaths then
		Mod.playerDeaths = AngryKeystones_Data.state.playerDeaths
	else
		AngryKeystones_Data.state.mapID = nil
		AngryKeystones_Data.state.playerDeaths = Mod.playerDeaths
	end

	self:RegisterEvent("SCENARIO_CRITERIA_UPDATE")
	self:RegisterEvent("PLAYER_ENTERING_WORLD")
	self:RegisterEvent("WORLD_STATE_TIMER_START")
	self:RegisterEvent("WORLD_STATE_TIMER_STOP")
	self:RegisterEvent("CHALLENGE_MODE_START")
	self:RegisterEvent("CHALLENGE_MODE_RESET")
	self:RegisterAddOnLoaded("Blizzard_ObjectiveTracker")
	CheckTime(GetWorldElapsedTimers())
	GameTooltip:HookScript("OnTooltipSetUnit", OnTooltipSetUnit)

	Addon.Config:RegisterCallback('progressFormat', function()
		local usedBars = SCENARIO_TRACKER_MODULE.usedProgressBars[ScenarioObjectiveBlock] or {}
		for _, bar in pairs(usedBars) do
			ProgressBar_SetValue(bar)
		end
	end)
end

hooksecurefunc("ScenarioTrackerProgressBar_SetValue", ProgressBar_SetValue)
