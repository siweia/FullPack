local addonName = ... ---@type string # Glider
---@class (partial) ns
---@field AtlasInfo table
---@field API SkyAPI
local ns = select(2,...)

local abs = math.abs
---@class (partial) Glider
local Glider = ns.GliderUI
local API = ns.API

local defaultPosition = {
  point = 'CENTER',
  x = 0,
  y = 170,
}

---@class fixedSizeFrame : Frame
---@field Center table
---@field Label table
---@field Selection table
local anchorFrame = CreateFrame("Frame", nil, UIParent)
anchorFrame:SetSize(110, 110)
anchorFrame:SetPoint(defaultPosition.point, defaultPosition.x, defaultPosition.y)
anchorFrame.editModeName = "Glider"
ns.anchorFrame = anchorFrame
Glider:SetPoint("CENTER", anchorFrame)

---@class GliderConfiguration
---@field updateSpeedRate number
---@field updateVigorRate number
---@field vigorWidgetSetID number
---@field percentageMulti table<number, number>
---@field rotations table<number, number>
---@field SecretAuras number
---@field SecretCooldowns number
local Configuration = {
  updateSpeedRate = 0.02,
  updateVigorRate = 0.0167,
  vigorWidgetSetID = 283,
  percentageMulti = {
    [1] = 0.1666,
    [2] = 0.3333,
    [3] = 0.4998,
    [4] = 0.6664,
    [5] = 0.8330,
    [6] = 1.0
  },
  rotations = {
    [1] = 0.0,
    [2] = 5.23598776,
    [3] = 4.18879021,
    [4] = 3.14159265,
    [5] = 2.0943951,
    [6] = 1.04719755,
  },
}

local MutableData = {
  lastFill = 100,
  lastNumFullFrames = 0,
  elapsedSpeed = 0,
  elapsedVigor = 0,
  adjustedPercentage = 0,
  isRefreshingVigor = false,
  IsThrill = false,
  justShown = false,
  noDisplayText = false,
  numFullFrames = 0,
  prevPerc = 0,
  prevSpeed = 0,
  lastRandomColorName = "",
  previousCharges = 6,
  hideWhenGroundedAndFull = false,
  mutedSounds = false,
}
ns.MutableData = MutableData

local function DebugPrint(...)
  if GetCVarBool("DebugLogArc") then
    print("Glider: ",...)
  end
end

-- localize maybe for that tiny extra gain in the onupdate where it's used
local FrameDeltaLerp = FrameDeltaLerp

function Glider:GetAddOnAtlasInfo(atlasName, returnTable)
  local data = ns.AtlasInfo[atlasName]
  if returnTable then
    return {
      w = data[1],
      h = data[2],
      leftTexCoord = data[3],
      rightTexCoord = data[4],
      topTexCoord = data[5],
      bottomTexCoord = data[6],
    }
  else
    return data[3], data[4], data[5], data[6]
  end
end

function Glider:SetupTextures()
  self.Background:SetTexCoord(self:GetAddOnAtlasInfo("Background"))   ---@diagnostic disable-line
  self.Pulse:SetTexCoord(self:GetAddOnAtlasInfo("Pulse"))   ---@diagnostic disable-line
  self.Flash:SetTexCoord(self:GetAddOnAtlasInfo("Flash"))   ---@diagnostic disable-line
  self.TextDisplay.TextBackground:SetTexCoord(self:GetAddOnAtlasInfo("TextBackground")) ---@diagnostic disable-line
  self.SurgePill:SetTexCoord(self:GetAddOnAtlasInfo("SurgePill")) ---@diagnostic disable-line
  self.SurgeArc:SetTexCoord(self:GetAddOnAtlasInfo("SurgeGlow")) ---@diagnostic disable-line
end

---@param elapsed number
function Glider:RefreshVigor(elapsed)
  MutableData.elapsedVigor = MutableData.elapsedVigor + elapsed
  if (MutableData.elapsedVigor < Configuration.updateVigorRate) then return end
  MutableData.elapsedVigor = 0

  local prevPerc = MutableData.prevPerc or MutableData.adjustedPercentage
  local newPerc = FrameDeltaLerp(prevPerc, MutableData.adjustedPercentage, 0.2)
  self:SetCooldownPercentage(self.VigorCharge, newPerc);
  self.VigorCharge:SetDrawEdge(newPerc ~= 1 and newPerc ~= 0)
  MutableData.prevPerc = newPerc
  if newPerc > 0.99 then
    self.VigorCharge:SetDrawEdge(false)
    self:SetCooldownPercentage(self.VigorCharge, 1);
    self:SetScript("OnUpdate", nil)
    MutableData.isRefreshingVigor = false
  end
end

local textDisplayWidthHalf = Glider.TextDisplay:GetWidth() / 2

---@param forwardSpeed number
function Glider:UpdateSpeedText(forwardSpeed)
  if not MutableData.noDisplayText then
    local TextDisplay = self.TextDisplay
    if forwardSpeed <= 0 then
      if TextDisplay:IsShown() and not TextDisplay.textDisplayAnimHide:IsPlaying() then
        TextDisplay.textDisplayAnimHide:Play()
      end
    else
      if not TextDisplay:IsShown() and not TextDisplay.textDisplayAnimShow:IsPlaying() then
        TextDisplay.textDisplayAnimShow:Play()
      end
    end

    TextDisplay.Text:SetText((forwardSpeed > 0) and string.format(" %d ", forwardSpeed) or "")
    local stringWidth = floor(TextDisplay.Text:GetUnboundedStringWidth())
    TextDisplay.Text:SetPoint("LEFT", textDisplayWidthHalf - (stringWidth / 2), 0)
  end
end

---@param elapsed number
function Glider:RefreshSpeedDisplay(elapsed)
  MutableData.elapsedSpeed = MutableData.elapsedSpeed + elapsed
  if not (MutableData.elapsedSpeed > Configuration.updateSpeedRate) then return end
  MutableData.elapsedSpeed = 0

  if not API:IsAdvFlying() then
    MutableData.prevSpeed = 0
    self:UpdateSpeedText(0)
    MutableData.prevSpeed = 0
    CooldownFrame_SetDisplayAsPercentage(self.SpeedDisplay.Speed, 0)
    self.SpeedDisplay:SetScript("OnUpdate", nil)
  end

  local forwardSpeed = API:GetAdvFlyingForwardSpeed()
  self:UpdateSpeedText(forwardSpeed * 14.285)
  if abs(MutableData.prevSpeed - forwardSpeed) < 0.0001 then
    return
  end
  local speed = forwardSpeed * MutableData.getRidingAbroadReciprocal
  local prevSpeed = MutableData.prevSpeed or speed

  local newSpeed = FrameDeltaLerp(prevSpeed, speed, 0.2)
  CooldownFrame_SetDisplayAsPercentage(self.SpeedDisplay.Speed, newSpeed)
  if MutableData.IsThrill then
    self.SpeedDisplay.Speed:SetSwipeColor(0.47, 0.97, 0.514, 1)   -- 0.47,0.97,0.514,1
  else
    self.SpeedDisplay.Speed:SetSwipeColor(0.894, 0.227, 0.278, 1) -- 0.902,0.376,0.388,1
  end
  MutableData.prevSpeed = newSpeed
end

function Glider:HideAnim()
  if not ns.LEM:IsInEditMode() and self:IsShown() and not self.animHide:IsPlaying() then
    self.animShow:Stop()
    self.animHide:Play()
    MutableData.isRefreshingVigor = false
    MutableData.IsThrill = false
  end
end

function Glider:ShowAnim()
  if not (self:IsShown() or self.animShow:IsPlaying()) then
    MutableData.justShown = true
    if MutableData.isRandomColor then
      self:SetRandomColor()
    end
    C_Timer.After(0.2, function() MutableData.justShown = false end)
    self.animShow:Play()
  end
end

function Glider:ProcessWidgets()
  local isShown = 0
  for _, widget in pairs(UIWidgetPowerBarContainerFrame.widgetFrames) do
    if widget then
      if widget.widgetType == 24 and widget.widgetSetID == 283 then
      local info = C_UIWidgetManager.GetFillUpFramesWidgetVisualizationInfo(widget.widgetID)
      if info then
        -- here we just assume if we still run into bugged widgets, numTotalFrames is 0 but i can't tell if this bug is still around
        isShown = bit.bor(isShown, (info.shownState == 1 and info.numTotalFrames > 0) and 1 or 0)
        MutableData.widgetID = (info.shownState == 1 and info.numTotalFrames > 0) and widget.widgetID or 4460
      end
      widget:Hide()
      end
    end
  end
  MutableData.isWidgetShown = isShown
end

---@param frame table
---@param perc number
function Glider:SetCooldownPercentage(frame, perc)
  if ns.LEM:IsInEditMode() then return end
  CooldownFrame_SetDisplayAsPercentage(frame, perc);
end

---@param chargeValue number
function Glider:SetFlashAndPlay(chargeValue)
  self.Flash:SetRotation(Configuration.rotations[chargeValue])
  self.flashAnim:Restart()
end

---@param shouldPulse boolean
function Glider:PlayPulseAnimation(shouldPulse)
  if shouldPulse and not self.pulseAnim:IsPlaying() then
    self.pulseAnim:Play()
  else
    -- Let the animation finish
    self.pulseAnim:SetLooping("NONE")
  end
end

function Glider:UpdateUI()
  if API:IsDerbyRacing() then return end

  local isNotSkyriding = not API:IsSkyriding()
  if isNotSkyriding then
    MutableData.previousCharges = 6
    self:HideAnim()
    return
  end

  local _, surgeDuration  = API:GetWhirlingSurgeInfo()
  local _, swCurrentCharges = API:GetSecondWindInfo()
  local isCharging, charges, maxCharges, chargeStart, chargeDuration, chargeModRate, isThrill = API:GetSharedInfo()

  local newStartTime = GetTime()
  local newDuration = 0.0
  local isActuallyCharging = false

  if maxCharges > 0 and chargeDuration > 0 then
    local shouldPulse = chargeDuration < 10
    MutableData.IsThrill = isThrill
    self:PlayPulseAnimation(shouldPulse)

    if MutableData.previousCharges < charges then
      PlaySound(201528, "SFX")
      self:SetFlashAndPlay(charges)
    end

    local now = GetTime()
    local cooldownElapsed = now - chargeStart
    local cooldownProgress = cooldownElapsed / chargeDuration
    newDuration = chargeDuration * maxCharges
    local totalElapsedChargeTime = (charges + cooldownProgress) * chargeDuration
    newStartTime = now - totalElapsedChargeTime
    isActuallyCharging = charges < maxCharges
    MutableData.previousCharges = charges
  else
    isActuallyCharging = false
  end

  MutableData.getRidingAbroadReciprocal = API:GetRidingAbroadReciprocal()

  local surgeState = GliderAddOnDB.Settings["GliderGlobalSettings"].whirlingSurgeState
  local surgeMode = GliderAddOnDB.Settings["GliderGlobalSettings"].whirlingSurgeMode
  local duration = surgeDuration

  local shouldShowSurge = false

  if surgeState == 2 then
    shouldShowSurge = (duration == 0)
  elseif surgeState ~= 0 then
    shouldShowSurge = (duration > 0)
  end

  if shouldShowSurge then
    if surgeMode == 0 then
      self.SurgeArc:Show()
      self.SurgePill:Hide()
    else
      self.SurgeArc:Hide()
      self.SurgePill:Show()
    end
  else
    self.SurgeArc:Hide()
    self.SurgePill:Hide()
  end

  if isActuallyCharging then
    if self.VigorCharge:IsPaused() then
      self.VigorCharge:Resume()
    end
    self.VigorCharge:SetCooldown(newStartTime, newDuration, chargeModRate)
    self.VigorCharge:SetDrawEdge(true)
    if GliderAddOnDB.Settings["GliderGlobalSettings"].secondWindMode == 1 then
      if not API:IsRacing() then
        CooldownFrame_SetDisplayAsPercentage(self.secondWindCharge, math.min(maxCharges, (charges + swCurrentCharges) / maxCharges))
      else
        CooldownFrame_SetDisplayAsPercentage(self.secondWindCharge, 0)
      end
    end
  else
    CooldownFrame_SetDisplayAsPercentage(self.VigorCharge, 1)
    self.VigorCharge:SetDrawEdge(false)
  end

  self.SpeedDisplay:SetScript("OnUpdate", function(_, elapsed) self:RefreshSpeedDisplay(elapsed) end)
  local shouldHideFullAndGrounded = (not API:IsAdvFlying()) and (not isActuallyCharging) and MutableData.hideWhenGroundedAndFull
  if shouldHideFullAndGrounded then
    self:HideAnim()
    return
  end
  self:ShowAnim()
end

function Glider:Update(widget)
  if not API:IsDerbyRacing() then return end

  if not widget or (widget.widgetSetID ~= Configuration.vigorWidgetSetID) then
    return
  end

  self:ProcessWidgets()

  if widget.widgetID ~= MutableData.widgetID then
    return
  end

  if not API:IsSkyriding() or not MutableData.isWidgetShown then
    MutableData.lastNumFullFrames = 6
    self:HideAnim()
    return
  end

  local info = C_UIWidgetManager.GetFillUpFramesWidgetVisualizationInfo(MutableData.widgetID)
  if not info then
    self:HideAnim()
    return
  end

  if not (self:IsShown() or self.animShow:IsPlaying()) and info.numTotalFrames > 0 then
    --MutableData.lastNumFullFrames = info.numFullFrames
    self:ShowAnim()
  end

  -- Widget initially returns numFullFrames with old fillValue of previous numFullFrames
  local fillValue = (info.numFullFrames + info.fillValue == 1 + MutableData.lastFill) and 0 or info.fillValue
  MutableData.lastFill = info.numFullFrames + info.fillValue

  MutableData.lastNumFullFrames = MutableData.lastNumFullFrames or info.numFullFrames
  MutableData.numFullFrames = info.numFullFrames

  local originalPercentage = info.numTotalFrames == 0 and 0 or (info.numFullFrames + fillValue / (info.fillMax + 0.0000001)) / info.numTotalFrames

  MutableData.adjustedPercentage = (Configuration.percentageMulti[info.numTotalFrames --[[@as number]]] or 0) * originalPercentage
  self.VigorCharge:SetDrawEdge(MutableData.adjustedPercentage ~= 1 and MutableData.adjustedPercentage ~= 0)

  if not MutableData.isRefreshingVigor then
    MutableData.isRefreshingVigor = true
    self:SetScript("OnUpdate", self.RefreshVigor)
  end

  self.SpeedDisplay:SetScript("OnUpdate", function(_, elapsed) self:RefreshSpeedDisplay(elapsed) end)

  MutableData.getRidingAbroadReciprocal = API:GetRidingAbroadReciprocal()
  self:PlayPulseAnimation(info.pulseFillingFrame)
  -- Widget API is returning garbage data when you first mount up after login for the first few updates
  -- so it would cause some frame to flash up
  if MutableData.justShown then
    MutableData.lastNumFullFrames = info.numFullFrames
    return
  end

  if info.numFullFrames > MutableData.lastNumFullFrames then
    self:SetFlashAndPlay(info.numFullFrames)
  end

  MutableData.lastNumFullFrames = info.numFullFrames
end

function Glider:OnEvent(e, ...)
  if e == "UPDATE_UI_WIDGET" then
    self:Update(...)
  else
    self:UpdateUI()
  end
end

function Glider:OnLoad()
  self:SetupTextures()
  self:SetClampedToScreen(true)
  self:SetFrameLevel(1000)
  self:SetScript("OnEvent", function(_, ...) self:OnEvent(...) end)
  self:RegisterEvent("ACTIONBAR_UPDATE_COOLDOWN")
  self:RegisterEvent("ACTIONBAR_UPDATE_STATE")
  self:RegisterEvent("PLAYER_IN_COMBAT_CHANGED")
  self:RegisterEvent("UPDATE_BONUS_ACTIONBAR")
  self:RegisterEvent("PLAYER_CAN_GLIDE_CHANGED")
  self:RegisterEvent("PLAYER_IS_GLIDING_CHANGED")
  self:RegisterEvent("UPDATE_UI_WIDGET")
end
Glider:OnLoad()

local function AddMessage(...) _G.DEFAULT_CHAT_FRAME:AddMessage(strjoin(" ", tostringall(...))) end;
function Glider:Help(msg)
  local fName = "|cff58C6FAGlider:|r ";
  local _, _, cmd, args = string.find(msg, "%s?(%w+)%s?(.*)");
  if not cmd or cmd == "" or cmd == "help" then
    AddMessage("|cff58C6FAGlider: /glider   /vigor|r");
    AddMessage("Settings for Glider can be found in Game Menu > Edit Mode and clicking on the Glider window");
  end
end

SLASH_GLIDER1, SLASH_GLIDER2 = "/glider", "/vigor";
function SlashCmdList.GLIDER(...)
  Glider:Help(...);
end