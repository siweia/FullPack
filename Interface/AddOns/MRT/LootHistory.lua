local GlobalAddonName, ExRT = ...

if ExRT.isClassic then
	return
end

local GetItemInfo, GetItemInfoInstant  = C_Item and C_Item.GetItemInfo or GetItemInfo,  C_Item and C_Item.GetItemInfoInstant or GetItemInfoInstant

local module = ExRT:New("LootHistory",ExRT.L.LootHistory)
local ELib,L = ExRT.lib,ExRT.L

module.db.allowedDiff = {
	[14] = true,	--raid normal
	[15] = true,	--raid hc
	[16] = true,	--raid mythic
	[23] = true,
	[8] = true,
}

local VMRT = nil

function module.main:ADDON_LOADED()
	VMRT = _G.VMRT
	VMRT.LootHistory = VMRT.LootHistory or {}
	VMRT.LootHistory.list = VMRT.LootHistory.list or {}
	VMRT.LootHistory.bossNames = VMRT.LootHistory.bossNames or {}
	VMRT.LootHistory.instanceNames = VMRT.LootHistory.instanceNames or {}
	
	if not VMRT.LootHistory.disable then
		module:Enable()
	end
end

function module:Enable()
  	module:RegisterEvents('ENCOUNTER_LOOT_RECEIVED','BOSS_KILL',"ENCOUNTER_END")
	if ExRT.clientVersion > 100007 then
		module:RegisterEvents('LOOT_HISTORY_UPDATE_ENCOUNTER','LOOT_HISTORY_UPDATE_DROP')
	else
		module:RegisterEvents("LOOT_HISTORY_AUTO_SHOW","LOOT_HISTORY_FULL_UPDATE","LOOT_HISTORY_ROLL_COMPLETE")
	end
end

function module:Disable()
  	module:UnregisterEvents('ENCOUNTER_LOOT_RECEIVED','BOSS_KILL',"ENCOUNTER_END")
	if ExRT.clientVersion > 100007 then
		module:UnregisterEvents('LOOT_HISTORY_UPDATE_ENCOUNTER','LOOT_HISTORY_UPDATE_DROP')
	else
		module:UnregisterEvents("LOOT_HISTORY_AUTO_SHOW","LOOT_HISTORY_FULL_UPDATE","LOOT_HISTORY_ROLL_COMPLETE")
	end
end

function module.main:BOSS_KILL(encounterID, name)
	if encounterID == 0 or not encounterID then
		return
	end
	VMRT.LootHistory.bossNames[encounterID] = name
end

function module.main:ENCOUNTER_LOOT_RECEIVED(encounterID, itemID, itemLink, quantity, playerName, className)
	local instanceName,_,difficulty,_,_,_,_,instanceID = GetInstanceInfo()

	if not difficulty or not module.db.allowedDiff[difficulty] then
		--return
	end

	VMRT.LootHistory.instanceNames[instanceID or 0] = instanceName

	local currTime = time()

	local classID = ExRT.GDB.ClassID[className] or 0

	local itemLinkShort = itemLink:match("(item:.-)|h")

	if not itemLinkShort then
		return
	end

	local _, _, itemRarity = GetItemInfo(itemLinkShort)
	if itemRarity and itemRarity < 4 then
		return
	end

	local record = currTime.."#"..(encounterID or 0).."#"..(instanceID or 0).."#"..(difficulty or 0).."#"..playerName.."#"..classID.."#"..quantity.."#"..itemLinkShort

	VMRT.LootHistory.list[#VMRT.LootHistory.list+1] = record
end

local rollIDtoRecord = {}
function module.main:LOOT_HISTORY_FULL_UPDATE()
	local instanceName,instance_type,difficulty,_,_,_,_,instanceID = GetInstanceInfo()

	if not difficulty or not module.db.allowedDiff[difficulty] then
		--return
	end
	if instance_type ~= "raid" then
		return
	end

	local numItems = C_LootHistory.GetNumItems()
	for i=1, numItems do
		local rollID, itemLink, numPlayers, isDone, winnerIdx, isMasterLoot = C_LootHistory.GetItem(i)
		if rollID and itemLink then
			local currTime, encounterID, playerName, classID, quantity, itemLinkShort, rollType, _
			local recordID
			if rollIDtoRecord[rollID] then
				recordID = rollIDtoRecord[rollID]
				currTime, encounterID, _, _, playerName, classID, quantity, itemLinkShort = strsplit("#",VMRT.LootHistory.list[recordID])
				if itemLinkShort ~= itemLink:match("(item:.-)|h") then
					currTime, encounterID, playerName, classID, quantity, itemLinkShort = nil
					recordID = nil
				end
			end
			if isDone and winnerIdx then
				local name, class, ProllType, roll, isWinner = C_LootHistory.GetPlayerInfo(i, winnerIdx)
				if name then
					playerName = name
					classID = ExRT.GDB.ClassID[class or ""] or 0
					rollType = ProllType
				end
			end
			if not currTime then
				currTime = time()
			
				itemLinkShort = itemLink:match("(item:.-)|h")
			
				local _, _, itemRarity = GetItemInfo(itemLink)
				if itemRarity and itemRarity < 4 then
					currTime = nil
				end
				encounterID = module.db.prevEncounterID
			end
			if currTime then
				local record = currTime.."#"..(encounterID or 0).."#"..(instanceID or 0).."#"..(difficulty or 0).."#"..(playerName or "").."#"..(classID or "0").."#"..(quantity or "1").."#"..itemLinkShort..(rollType and "#"..rollType or "")

				VMRT.LootHistory.instanceNames[instanceID or 0] = instanceName

				recordID = recordID or #VMRT.LootHistory.list+1
				VMRT.LootHistory.list[recordID] = record
				rollIDtoRecord[rollID] = recordID
			end
		end
	end
end
module.main.LOOT_HISTORY_AUTO_SHOW = module.main.LOOT_HISTORY_FULL_UPDATE
module.main.LOOT_HISTORY_ROLL_COMPLETE = module.main.LOOT_HISTORY_FULL_UPDATE

local rollStateToRollType = {
	[0]=1,--NeedMainSpec	
	[1]=1,--NeedOffSpec	
	[2]=3,--Transmog	
	[3]=2,--Greed	
	[4]=0,--NoRoll	
	[5]=0,--Pass
}

local function FindInValue(t,val)
	for k,v in pairs(t) do
		if v == val then
			return k
		end
	end
end

function module.main:LOOT_HISTORY_UPDATE_ENCOUNTER(encounterID)
	local instanceName,instance_type,difficulty,_,_,_,_,instanceID = GetInstanceInfo()
	local drops = C_LootHistory.GetSortedDropsForEncounter(encounterID)
	if not drops then return end
	for _, dropInfo in ipairs(drops) do
		local lootListID = dropInfo.lootListID

		--local dropInfo = C_LootHistory.GetSortedInfoForDrop(encounterID, lootListID)

		local itemLink = dropInfo and dropInfo.itemHyperlink
		if itemLink then
			local rollID = (encounterID or "").."-"..(difficulty or 0).."-"..(lootListID or "0")

			local currTime, playerName, classID, quantity, itemLinkShort, rollType, _
			local recordID
			if not rollIDtoRecord[rollID] then
				for i=#VMRT.LootHistory.list,1,-1 do
					local t, eID, iID, dID, _, _, _, il = strsplit("#",VMRT.LootHistory.list[i])
					if eID and iID and dID and tostring(instanceID) == iID and encounterID and tostring(encounterID) == eID and dID == tostring(difficulty or "") and t and tonumber(t) and time()-tonumber(t) <= 420 then
						if type(il) == "string" and il:match("item:%d+") == itemLink:match("item:%d+") and not FindInValue(rollIDtoRecord, i) then
							rollIDtoRecord[rollID] = i
							break
						end
					else
						break
					end
				end
			end
			if rollIDtoRecord[rollID] then
				recordID = rollIDtoRecord[rollID]
				currTime, _, _, _, playerName, classID, quantity, itemLinkShort, rollType = strsplit("#",VMRT.LootHistory.list[recordID])
				if type(itemLinkShort)~='string' or itemLinkShort:match("item:%d+")~=itemLink:match("item:%d+") then
					currTime, playerName, classID, quantity, itemLinkShort = nil
					recordID = nil
				end
			end
			if dropInfo.winner then
				playerName = dropInfo.winner.playerName
				classID = ExRT.GDB.ClassID[dropInfo.winner.playerClass or ""] or 0
				if dropInfo.playerRollState then
					rollType = rollStateToRollType[ dropInfo.playerRollState ]
				end
			end
			if not currTime then
				currTime = time()
			
				itemLinkShort = itemLink:match("(item:.-)|h")
			
				local _, _, itemRarity = GetItemInfo(itemLink)
				if itemRarity and itemRarity < 4 then
					currTime = nil
				end
			end
			if currTime then
				local record = currTime.."#"..(encounterID or 0).."#"..(instanceID or 0).."#"..(difficulty or 0).."#"..(playerName or "").."#"..(classID or "0").."#"..(quantity or "1").."#"..itemLinkShort..(rollType and "#"..rollType or "")

				VMRT.LootHistory.instanceNames[instanceID or 0] = instanceName

				recordID = recordID or #VMRT.LootHistory.list+1
				VMRT.LootHistory.list[recordID] = record
				rollIDtoRecord[rollID] = recordID
			end
		end
	end
end

function module.main:LOOT_HISTORY_UPDATE_DROP(encounterID,lootListID)
	module.main:LOOT_HISTORY_UPDATE_ENCOUNTER(encounterID)
end

function module.main:ENCOUNTER_END(encounterID)
	module.db.prevEncounterID = encounterID
end

function module.options:Load()
	self:CreateTilte()

	self.decorationLine = ELib:DecorationLine(self,true,"BACKGROUND",-5):Point("TOPLEFT",self,0,-40):Point("BOTTOMRIGHT",self,"TOPRIGHT",0,-59)

	self.list = ELib:ScrollTableList(self,135,140,5,170,100,100,25,0):Size(890,575):Point("TOP",0,-60):FontSize(11):HideBorders()

	self.headertext1 = ELib:Text(self,L.LootHistoryDate):Point("LEFT",self.list,2,0):Point("TOP",self.decorationLine,0,0):Size(135,20):Left():Middle():Color():Shadow()
	self.headertext2 = ELib:Text(self,L.LootHistoryDungeonName):Point("LEFT",self.headertext1,"RIGHT",0,0):Point("TOP",self.decorationLine,0,0):Size(145,20):Left():Middle():Color():Shadow()
	self.headertext3 = ELib:Text(self,L.LootHistoryBossName):Point("LEFT",self.headertext2,"RIGHT",0,0):Point("TOP",self.decorationLine,0,0):Size(170,20):Left():Middle():Color():Shadow()
	self.headertext4 = ELib:Text(self,L.LootHistoryDifficulty):Point("LEFT",self.headertext3,"RIGHT",0,0):Point("TOP",self.decorationLine,0,0):Size(100,20):Left():Middle():Color():Shadow()
	self.headertext5 = ELib:Text(self,L.LootHistoryPlayer):Point("LEFT",self.headertext4,"RIGHT",0,0):Point("TOP",self.decorationLine,0,0):Size(125,20):Left():Middle():Color():Shadow()
	self.headertext6 = ELib:Text(self,L.LootHistoryItem):Point("LEFT",self.headertext5,"RIGHT",0,0):Point("TOP",self.decorationLine,0,0):Size(0,20):Left():Middle():Color():Shadow()

	function self.list:UpdateAdditional(val,isExtraUpdate)
		local extraUpdate = false
		for i=1,#self.List do
			local line = self.List[i]
			if line:IsShown() then
				local data = line.table
				if data and data.itemLink then
					local itemName, itemLinkQ, itemRarity, _, _, _, _, _, _, itemIcon = GetItemInfo(data.itemLink)

					if itemLinkQ then
						itemLinkQ = itemLinkQ:gsub("[%[%]]","")
					else
						itemLinkQ = "..."
						extraUpdate = true
					end

					local itemStr = (data.quantity > 1 and data.quantity.."x" or "")..itemLinkQ

					if not itemIcon then
						itemIcon = select(5,GetItemInfoInstant(data.itemLink))
					end
					itemIcon = "|T"..itemIcon..":20|t"

					line.text7:SetText(itemIcon)
					line.text8:SetText(itemStr)
				end
			end
		end
		if not isExtraUpdate and extraUpdate and not self.extraUpdateTimer then
			self.extraUpdateTimer = C_Timer.NewTimer(.5,function()
				self.extraUpdateTimer = nil
				self:UpdateAdditional(val,true)
			end)
		end
	end

	self.list.additionalLineFunctions = true
	function self.list:HoverMultitableListValue(isEnter,index,obj)
		if not isEnter then
			local line = obj.parent:GetParent()

			GameTooltip_Hide()
		else
			local line = obj.parent:GetParent()

			local data = line.table
			if index == 8 then
				GameTooltip:SetOwner(obj,"ANCHOR_CURSOR")
				GameTooltip:SetHyperlink(data.itemLink)
				GameTooltip:Show()
			elseif index == 7 then
				GameTooltip:SetOwner(obj,"ANCHOR_CURSOR")
				local img = obj.parent:GetText():gsub(":20|",":50|")
				GameTooltip:AddLine(img)
				GameTooltip:Show()
			else
				if obj.parent:IsTruncated() then
					GameTooltip:SetOwner(obj,"ANCHOR_CURSOR")
					GameTooltip:AddLine(obj.parent:GetText() )
					GameTooltip:Show()
				end
			end
		end
	end
	function self.list:ClickMultitableListValue(index,obj)
		if index == 8 then
			local data = obj:GetParent().table
			if data then
				local _, itemLink = GetItemInfo(data.itemLink)
				if itemLink then
					ExRT.F.LinkItem(nil,itemLink)
				end
			end
		elseif IsControlKeyDown() then
			local data = obj:GetParent().table
			if not data then
				return
			end
			local posI = data.posI
			if not module.options.list.ENABLE_DEL then
				StaticPopupDialogs["EXRT_LOOTHISTORY_REMOVEONE"] = {
					text = L.LootHistoryDelOne,
					button1 = L.YesText,
					button2 = L.NoText,
					OnAccept = function()
						module.options.list.ENABLE_DEL = true
						tremove(VMRT.LootHistory.list,posI)
						module.options:UpdatePage()
					end,
					timeout = 0,
					whileDead = true,
					hideOnEscape = true,
					preferredIndex = 3,
				}
				StaticPopup_Show("EXRT_LOOTHISTORY_REMOVEONE")
			else
				tremove(VMRT.LootHistory.list,posI)
				module.options:UpdatePage()
			end
		end
	end


	local RollTypeToText = ExRT.isClassic and {
		["0"] = "|r [pass]",
		["1"] = "|r [need]",
		["2"] = "|r [greed]",
		["3"] = "|r [disenchant]",
	} or {
		["0"] = "|A:lootroll-icon-pass:20:20|a",
		["1"] = "|A:lootroll-rollicon-yourolled-need:20:20|a",
		["2"] = "|A:lootroll-rollicon-yourolled-greed:20:20|a",
		["3"] = "|A:lootroll-rollicon-yourolled-transmog:20:20|a",
	}
	function self:UpdatePage()
		local result = {}

		for i=#VMRT.LootHistory.list,1,-1 do
			local timeRec,encounterID,instanceID,difficulty,playerName,classID,quantity,itemLink,rollType = strsplit("#",VMRT.LootHistory.list[i])

			local instanceName = VMRT.LootHistory.instanceNames[tonumber(instanceID)] or ""

			local dateRec = date("%d.%m.%Y %H:%M:%S",tonumber(timeRec))

			encounterID = tonumber(encounterID)
			local encounterName =  VMRT.LootHistory.bossNames[encounterID] or L.bossName[encounterID]
			if encounterID == 0 then 
				encounterName = ""
			end

			local class = ExRT.GDB.ClassList[tonumber(classID)]
			local playerNameStyle = (not ExRT.isClassic and rollType and RollTypeToText[rollType] or "")..(class and "|c"..ExRT.F.classColor(class) or "")..playerName..(ExRT.isClassic and rollType and RollTypeToText[rollType] or "")

			quantity = tonumber(quantity)
			difficulty = tonumber(difficulty)

			local diffName = GetDifficultyInfo(difficulty)

			local toAdd = true
			if module.options.search then
				for i=1,#module.options.search do
					local toAddNow = false

					local searchText = module.options.search[i]
	
					if instanceName:lower():find(searchText) then
						toAddNow = true
					elseif dateRec:gsub(" .-$",""):find(searchText) then
						toAddNow = true
					elseif encounterName:lower():find(searchText) then
						toAddNow = true
					elseif playerName:lower():find(searchText) then
						toAddNow = true
					elseif diffName and diffName:lower():find(searchText) then
						toAddNow = true
					elseif tonumber(searchText) and searchText == itemLink:match("item:(%d+)") then
						toAddNow = true
					elseif (searchText == "pass" and rollType == "0") or (searchText == "need" and rollType == "1") or (searchText == "greed" and rollType == "2") then
						toAddNow = true
					else
						local itemName = GetItemInfo(itemLink) 
						if itemName and itemName:lower():find(searchText) then
							toAddNow = true
						end
					end

					toAdd = toAdd and toAddNow
					if not toAdd then
						break
					end
				end
				
			end

			if toAdd then
				result[#result+1] = {dateRec,instanceName,"",encounterName,diffName or "",playerNameStyle,"","",itemLink = itemLink,quantity = quantity,posI = i}
			end
		end

		module.options.list.L = result
		module.options.list:Update()		
	end


	self.searchEditBox = ELib:Edit(self):Point("BOTTOM",self.decorationLine,"TOP",0,5):Point("LEFT",self,10,0):Size(250,18):AddSearchIcon():OnChange(function (self,isUser)
		if not isUser then
			return
		end
		local text = self:GetText():lower()
		if text == "" then
			text = nil
		end

		if text then
			module.options.search = {strsplit(";",text)}
			for i=#module.options.search,1,-1 do
				if module.options.search[i] == "" then
					tremove(module.options.search,i)
				end
			end
		else
			module.options.search = nil
		end

		if self.scheduledUpdate then
			return
		end
		self.scheduledUpdate = C_Timer.NewTimer(.3,function()
			self.scheduledUpdate = nil
			module.options:UpdatePage()
		end)	
	end):Tooltip(SEARCH)

	self.clearButton = ELib:Button(self,L.MarksClear):Size(100,20):Point("BOTTOM",self.decorationLine,"TOP",0,5):Point("RIGHT",self,-10,0):Tooltip(L.EncounterClear):OnClick(function() 
		StaticPopupDialogs["EXRT_LOOTHISTORY_CLEAR"] = {
			text = L.EncounterClearPopUp,
			button1 = L.YesText,
			button2 = L.NoText,
			OnAccept = function()
				table.wipe(VMRT.LootHistory.list)
				table.wipe(VMRT.LootHistory.bossNames)
				table.wipe(VMRT.LootHistory.instanceNames)
				module.options:UpdatePage()
			end,
			timeout = 0,
			whileDead = true,
			hideOnEscape = true,
			preferredIndex = 3,
		}
		StaticPopup_Show("EXRT_LOOTHISTORY_CLEAR")
	end) 

	self.chkEnable = ELib:Check(self,L.Enable,not VMRT.LootHistory.disable):Point("LEFT",self.clearButton,"LEFT",-100,0):Size(18,18):AddColorState():OnClick(function(self) 
		if self:GetChecked() then
			VMRT.LootHistory.disable = false
			module:Enable()
		else
			VMRT.LootHistory.disable = true
			module:Disable()
		end
	end)

	self.isWide = 900
	function self:OnShow()
		self:UpdatePage()	  
	end
end