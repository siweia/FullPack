local addonName = ... ---@type string "Glider"
local ns = select(2,...) ---@class (partial) ns
local API = ns.API
---@class (partial) Glider : Frame
local Glider = CreateFrame("Frame", "GliderAddOn", UIParent)
ns.GliderUI = Glider

Glider:SetSize(64, 64)
Glider:SetAlpha(0)
Glider:SetFlattensRenderLayers(true)
Glider:Hide()

local pulseTexture = Glider:CreateTexture(nil, "BACKGROUND", nil, 1)
pulseTexture:SetAlpha(0)
pulseTexture:SetTexture("Interface/AddOns/Glider/Media/Atlas")
pulseTexture:SetTexelSnappingBias(0) ---@diagnostic disable-line
pulseTexture:SetSnapToPixelGrid(false)
pulseTexture:SetAllPoints()
pulseTexture:SetVertexColor(1, 0.85, 0, 0)
Glider.Pulse = pulseTexture

local backgroundTexture = Glider:CreateTexture(nil, "BACKGROUND", nil, 2)
backgroundTexture:SetTexture("Interface/AddOns/Glider/Media/Atlas")
backgroundTexture:SetAllPoints()
Glider.Background = backgroundTexture

local flashTexture = Glider:CreateTexture(nil, "OVERLAY")
flashTexture:SetAlpha(0)
flashTexture:SetTexture("Interface/AddOns/Glider/Media/Atlas")
flashTexture:SetTexelSnappingBias(0) ---@diagnostic disable-line
flashTexture:SetSnapToPixelGrid(false)
flashTexture:SetAllPoints()
Glider.Flash = flashTexture

local secondWindCharge = CreateFrame("Cooldown", nil, Glider, "CooldownFrameTemplate") ---@diagnostic disable-line
secondWindCharge:SetHideCountdownNumbers(true)
secondWindCharge:SetDrawEdge(false)
secondWindCharge:SetDrawBling(false)
secondWindCharge:SetReverse(true)
secondWindCharge:SetFrameLevel(0)
secondWindCharge:SetUsingParentLevel(true)
secondWindCharge.noCooldownCount = true
secondWindCharge:SetSwipeTexture("Interface/AddOns/Glider/Media/Atlas") ---@diagnostic disable-line
Glider.secondWindCharge = secondWindCharge

local vigorCharge = CreateFrame("Cooldown", nil, Glider, "CooldownFrameTemplate") ---@diagnostic disable-line
vigorCharge:SetHideCountdownNumbers(true)
vigorCharge:SetDrawEdge(false)
vigorCharge:SetDrawBling(false)
vigorCharge:SetReverse(true)
vigorCharge:SetFrameLevel(0)
vigorCharge:SetUsingParentLevel(true)
vigorCharge.noCooldownCount = true
Glider.VigorCharge = vigorCharge

vigorCharge:SetSwipeTexture("Interface/AddOns/Glider/Media/Atlas") ---@diagnostic disable-line
vigorCharge:SetEdgeTexture("Interface/AddOns/Glider/Media/VigorEdge") ---@diagnostic disable-line

local speedDisplay = CreateFrame("Frame", nil, Glider)
speedDisplay:SetUsingParentLevel(true)
speedDisplay:SetAllPoints()
Glider.SpeedDisplay = speedDisplay

local speedCooldown = CreateFrame("Cooldown", nil, speedDisplay, "CooldownFrameTemplate") ---@diagnostic disable-line
speedCooldown:SetDrawEdge(false)
speedCooldown:SetFrameLevel(0)
speedCooldown:SetHideCountdownNumbers(true)
speedCooldown:SetReverse(true)
speedCooldown:SetUsingParentLevel(true)
speedCooldown:SetSize(64, 64)
speedCooldown:SetPoint("CENTER", speedDisplay, "CENTER")
speedCooldown:SetRotation(-117 * (math.pi/180))
speedCooldown.noCooldownCount = true
Glider.SpeedDisplay.Speed = speedCooldown

local textDisplay = CreateFrame("Frame", nil, Glider)
textDisplay:Hide()
textDisplay:SetUsingParentLevel(true)
textDisplay:SetFrameLevel(1)
textDisplay:SetSize(36, 18)
Glider.TextDisplay = textDisplay

local textBackground = textDisplay:CreateTexture(nil, "BACKGROUND")
textBackground:SetAllPoints()
textBackground:SetTexture("Interface/AddOns/Glider/Media/Atlas")
textBackground:SetTexelSnappingBias(0) ---@diagnostic disable-line
textBackground:SetSnapToPixelGrid(false)
Glider.TextDisplay.TextBackground = textBackground

local textFontString = textDisplay:CreateFontString(nil, "OVERLAY")
textFontString:SetFontObject("GameFontHighlight")
textFontString:SetJustifyV("MIDDLE")
textFontString:SetJustifyH("CENTER")
textFontString:SetWordWrap(false)
textFontString:SetPoint("TOPLEFT", textDisplay, "TOPLEFT", -5, 0)
textFontString:SetPoint("BOTTOMRIGHT", textDisplay, "BOTTOMRIGHT", 5, 0)
Glider.TextDisplay.Text = textFontString

local surgeArc = Glider:CreateTexture(nil, "OVERLAY", nil, 1)
surgeArc:SetSize(36, 12)
surgeArc:SetPoint("CENTER", Glider, "CENTER", 0, -22)
surgeArc:SetTexture("Interface/AddOns/Glider/Media/Atlas")
surgeArc:SetTexelSnappingBias(0) ---@diagnostic disable-line
surgeArc:SetSnapToPixelGrid(false)
surgeArc:Hide()
Glider.SurgeArc = surgeArc

local surgePill = Glider:CreateTexture(nil, "OVERLAY", nil, 1)
surgePill:SetSize(20, 5)
surgePill:SetPoint("CENTER", Glider, "CENTER", -0.5, -27)
surgePill:SetTexture("Interface/AddOns/Glider/Media/Atlas")
surgePill:SetTexelSnappingBias(0) ---@diagnostic disable-line
surgePill:SetSnapToPixelGrid(false)
surgePill:Hide()
Glider.SurgePill = surgePill

textDisplay.textDisplayAnimShow = API:CreateAnimationGroupFromConfig(textDisplay, {
  setToFinalAlpha = true,
  onPlay = function(self) self:GetParent():Show() end,

  animations = {
    { type = "Alpha", fromAlpha = 0, toAlpha = 1, duration = 0.2, smoothing = "IN" }
  }
})

textDisplay.textDisplayAnimHide = API:CreateAnimationGroupFromConfig(textDisplay, {
  setToFinalAlpha = true,
  onFinished = function(self) self:GetParent():Hide() end,
  animations = {
    { type = "Alpha", fromAlpha = 1, toAlpha = 0, duration = 0.2, smoothing = "IN" }
  }
})

Glider.animShow = API:CreateAnimationGroupFromConfig(Glider, {
  setToFinalAlpha = true,
  onPlay = function(self)
    local frame = self:GetParent()
    frame:Show();
  end,
  animations = {
    { type = "Alpha", fromAlpha = 0, toAlpha = 1, duration = 0.45, smoothing = "OUT" },
    { type = "Alpha", fromAlpha = 0, toAlpha = 1, duration = 0.8, smoothing = "OUT", childKey = "VigorCharge" }
  }
})

Glider.animHide = API:CreateAnimationGroupFromConfig(Glider, {
  setToFinalAlpha = true,
  onFinished = function(self)
    local frame = self:GetParent()
    frame.Pulse:SetAlpha(0)
    frame.Pulse:SetScale(1)
    frame.pulseAnim:Stop()
    frame:SetScript("OnUpdate", nil)
    frame.SpeedDisplay:SetScript("OnUpdate", nil)
    C_Timer.After(0, function() frame:Hide() end)
  end,
  animations = {
    { type = "Alpha", fromAlpha = 1, toAlpha = 0, duration = 0.8, smoothing = "OUT" },
    { type = "Alpha", fromAlpha = 1, toAlpha = 0, duration = 0.7, smoothing = "OUT", childKey = "VigorCharge" }
  }
})

Glider.pulseAnim = API:CreateAnimationGroupFromConfig(pulseTexture, {
  looping = "REPEAT",
  setToFinalAlpha = true,
  onStop = function(self)
    local frame = self:GetParent():GetParent()
    frame.Pulse:SetAlpha(0)
    frame.Pulse:SetScale(1)
  end,
  animations = {
    { type = "Alpha", fromAlpha = 0, toAlpha = 1, duration = 1, smoothing = "IN", order = 1},
    { type = "Scale", fromScaleX = 1.05, fromScaleY = 1.05, toScaleX = 1, toScaleY = 1, duration = 0.3, smoothing = "OUT", order = 2},
    { type = "Alpha", fromAlpha = 1, toAlpha = 0, duration = 0.8, smoothing = "OUT", order = 2},
  }
})

Glider.flashAnim = API:CreateAnimationGroupFromConfig(flashTexture, {
  setToFinalAlpha = true,
  animations = {
    { type = "Alpha", fromAlpha = 0, toAlpha = 1, duration = 0.5, smoothing = "IN_OUT", order = 1 },
    { type = "Scale", fromScaleX = 1, fromScaleY = 1, toScaleX = 1.25, toScaleY = 1.25, duration = 0.5, smoothing = "IN_OUT", order = 1 },
    { type = "Alpha", fromAlpha = 1, toAlpha = 0, duration = 0.7, smoothing = "IN_OUT", order = 2 },
    { type = "Scale", fromScaleX = 1, fromScaleY = 1, toScaleX = 0.8, toScaleY = 0.8, duration = 0.5, smoothing = "IN_OUT", order = 2 }
  }
})