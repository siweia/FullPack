-- Guild Achievements Fix
-- Author: fang2hou
-- Discord: https://discord.gg/CMDsBmhvyW

-- Why Blizzard not fix this!!!!!!!!!!!!!!!!!!!!!!!!

local _G = _G
local gsub = gsub
local pairs = pairs
local strmatch = strmatch
local tonumber = tonumber

local AchievementAlertSystem = AchievementAlertSystem
local AchievementAlertSystem_AddAlert = AchievementAlertSystem.AddAlert
local ChatFrame_AddMessageEventFilter = ChatFrame_AddMessageEventFilter
local CreateFrame = CreateFrame
local GenerateClosure = GenerateClosure
local MuteSoundFile = MuteSoundFile
local UnmuteSoundFile = UnmuteSoundFile

local C_Timer_After = C_Timer.After

--------------------------------------
-- Debug
--------------------------------------
local function noop()
end

local debug = _G.MYLUA and _G.MYLUA.print or noop

--------------------------------------
-- Archivement List
--------------------------------------
local allianceAchievements = {
	-- https://www.wowhead.com/achievements/guild-achievements#0-2+7;side=Alliance
	4912, -- 公會等級25
	5014, -- 北裂境地城公會英雄
	5031, -- 部落殺手
	5111, -- 英雄:勇士試煉公會團
	5126, -- 地城外交官
	5129, -- 大使
	5130, -- 外交手段
	5131, -- 艾澤拉斯戰爭
	5151, -- 人類職業狂
	5152, -- 優異表現
	5153, -- 夜精靈職業狂
	5154, -- 地精職業狂
	5155, -- 矮人職業狂
	5156, -- 德萊尼職業狂
	5157, -- 狼人職業狂
	5167, -- 獸人殺手
	5168, -- 牛頭人殺手
	5169, -- 不死族殺手
	5170, -- 食人妖殺手
	5171, -- 血精靈殺手
	5172, -- 哥布林殺手
	5195, -- 主城攻擊好手
	5432, -- 公會指揮官
	5434, -- 公會元帥
	5436, -- 公會戰場元帥
	5438, -- 公會總元帥
	5441, -- 公會戰鬥大師
	5812, -- 聯合國
	6532, -- 熊貓人殺手
	6624, -- 全職的熊貓人
	6644, -- 熊貓人大使館
	7448, -- 事件總結
	13320 -- 達薩亞洛之戰公會團
}

local hordeAchievements = {
	-- https://www.wowhead.com/achievements/guild-achievements#0-2+7;side=Horde
	5110, -- 英雄:勇士試煉公會團
	5124, -- 北裂境地城公會英雄
	5128, -- 艾澤拉斯戰爭
	5145, -- 地城外交官
	5158, -- 優異表現
	5160, -- 獸人職業狂
	5161, -- 牛頭人職業狂
	5162, -- 食人妖職業狂
	5163, -- 血精靈職業狂
	5164, -- 不死族職業狂
	5165, -- 哥布林職業狂
	5173, -- 人類殺手
	5174, -- 夜精靈殺手
	5175, -- 矮人殺手
	5176, -- 地精殺手
	5177, -- 德萊尼殺手
	5178, -- 狼人殺手
	5179, -- 聯盟殺手
	5194, -- 主城攻擊好手
	5433, -- 公會勇士
	5435, -- 公會將軍
	5437, -- 公會督軍
	5439, -- 公會高階督軍
	5440, -- 公會戰鬥大師
	5492, -- 公會等級25
	5892, -- 聯合國
	6533, -- 熊貓人殺手
	6625, -- 全職的熊貓人
	6664, -- 熊貓人大使館
	7449, -- 事件總結
	7843, -- 外交手段
	7844, -- 大使
	13319 -- 達薩亞洛之戰公會團
}

local achievements = {}

for _, id in pairs(allianceAchievements) do
	achievements[id] = "A"
end

for _, id in pairs(hordeAchievements) do
	achievements[id] = "H"
end

local function checkAchievement(str)
	local match = strmatch(str, "|Hachievement:(%d+):")
	local id = match and tonumber(match)
	debug(id, id and achievements[id])
	return id and achievements[id] and true
end

--------------------------------------
-- Chat
--------------------------------------
ChatFrame_AddMessageEventFilter(
	"CHAT_MSG_GUILD_ACHIEVEMENT",
	function(_, _, msg, ...)
		debug("CHAT_MSG_GUILD_ACHIEVEMENT", gsub(msg, "|", "||"))
		if checkAchievement(msg) then
			return true
		end
		return false, msg, ...
	end
)

--------------------------------------
-- Achievement Alert
--------------------------------------
AchievementAlertSystem.AddAlert = function(...)
	local id = select(2, ...)
	if id and achievements[id] then
		return false
	end
	return AchievementAlertSystem_AddAlert(...)
end

--------------------------------------
-- Mute Sound
--------------------------------------
local muteFrame = CreateFrame("Frame")
function muteFrame:Mute()
	self.eventID = (self.eventID and self.eventID + 1) or 1

	if not self.isMuted then
		self.isMuted = true
		MuteSoundFile(569143)
		debug("Mute Sound")
	end

	return self.eventID
end

function muteFrame:Unmute(eventID)
	if eventID ~= self.eventID then
		return
	end

	if self.isMuted then
		self.isMuted = false
		UnmuteSoundFile(569143)
		debug("Unmute Sound")
	end
end

muteFrame:SetScript(
	"OnEvent",
	function(self, event, id)
		if event == "ACHIEVEMENT_EARNED" and id and achievements[id] then
			C_Timer_After(1, GenerateClosure(self.Unmute, self, self:Mute()))
		end
	end
)

muteFrame:RegisterEvent("ACHIEVEMENT_EARNED")
