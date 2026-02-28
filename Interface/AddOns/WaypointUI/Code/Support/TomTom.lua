local env = select(2, ...)
local L = env.L
local Config = env.Config
local LazyTimer = env.WPM:Import("wpm_modules\\lazy-timer")
local MapPin = env.WPM:Import("@\\MapPin")
local Support = env.WPM:Import("@\\Support")
local Support_TomTom = env.WPM:New("@\\Support\\TomTom")
local function IsModuleEnabled() return Config.DBGlobal:GetVariable("TomTomSupportEnabled") == true end

local lastClickTime = nil
local lastSetCrazyArrowTime = nil
local lastQuestInfo = { time = nil, questID = nil }
local TomTomWaypointInfo = { name = nil, mapID = nil, x = nil, y = nil }

Support_TomTom.ignoredWaypoint = { mapID = nil, x = nil, y = nil }


local function HandleAccept()
    Support_TomTom.PlaceWaypointAtSession()
end

local REPLACE_PROMPT_INFO = {
    text         = L["TomTom - ReplacePrompt"],
    options      = {
        {
            text     = L["TomTom - ReplacePrompt - Yes"],
            callback = HandleAccept
        },
        {
            text     = L["TomTom - ReplacePrompt - No"],
            callback = nil
        }
    },
    hideOnEscape = true,
    timeout      = 10
}


function Support_TomTom.PlaceWaypointAtSession()
    if not TomTomWaypointInfo or not TomTomWaypointInfo.mapID or not TomTomWaypointInfo.x or not TomTomWaypointInfo.y then return end
    if not Support_TomTom.IsWaypointIgnored(TomTomWaypointInfo.mapID, TomTomWaypointInfo.x, TomTomWaypointInfo.y) then
        MapPin.NewUserNavigation(TomTomWaypointInfo.name, TomTomWaypointInfo.mapID, TomTomWaypointInfo.x, TomTomWaypointInfo.y, "TomTom_Waypoint")
    end
end

function Support_TomTom.IsUserSetCrazyArrow()
    if lastSetCrazyArrowTime == lastClickTime then
        return true
    end
    return false
end

function Support_TomTom.IsQuestConflictWithTomTomWaypoint()
    if lastSetCrazyArrowTime == lastQuestInfo.time then
        return true
    end
    return false
end

function Support_TomTom.IgnoreWaypoint(mapID, x, y)
    Support_TomTom.ignoredWaypoint.mapID = mapID
    Support_TomTom.ignoredWaypoint.x = x
    Support_TomTom.ignoredWaypoint.y = y
end

function Support_TomTom.IsWaypointIgnored(mapID, x, y)
    if Support_TomTom.ignoredWaypoint.mapID == mapID and
        math.floor(Support_TomTom.ignoredWaypoint.x) == math.floor(x) and
        math.floor(Support_TomTom.ignoredWaypoint.y) == math.floor(y) then
        return true
    end
    return false
end

local HandleCrazyArrowTimer = LazyTimer.New()
HandleCrazyArrowTimer:SetAction(function()
    if Support_TomTom.IsQuestConflictWithTomTomWaypoint() then
        return
    end

    -- Skip prompt if auto-replace is enabled or already tracking a TomTom waypoint
    if Config.DBGlobal:GetVariable("TomTomAutoReplaceWaypoint") == true or (not C_SuperTrack.IsSuperTrackingAnything() or (MapPin.IsUserNavigationFlagged("TomTom_Waypoint"))) then
        Support_TomTom.PlaceWaypointAtSession()
        return
    elseif Support_TomTom.IsUserSetCrazyArrow() then -- Show prompt only for explicit TomTom waypoint tracking
        WUISharedPrompt:Open(REPLACE_PROMPT_INFO, TomTomWaypointInfo.name)
    end
end)

local function OnSetCrazyArrow(_, uid, _, title)
    if not IsModuleEnabled() then return end
    if uid and uid.corpse then return end

    TomTomWaypointInfo.name = title
    TomTomWaypointInfo.mapID = uid[1]
    TomTomWaypointInfo.x = uid[2] * 100
    TomTomWaypointInfo.y = uid[3] * 100

    lastSetCrazyArrowTime = GetTime()
    HandleCrazyArrowTimer:Start(0.016)
end

local function OnClearCrazyArrow()
    if not IsModuleEnabled() then return end
    if MapPin.IsUserNavigationFlagged("TomTom_Waypoint") then
        MapPin.ClearUserNavigation()
    end
end

local function OnAddonLoad()
    local f = CreateFrame("Frame")
    f:RegisterEvent("USER_WAYPOINT_UPDATED")
    f:RegisterEvent("SUPER_TRACKING_CHANGED")
    f:RegisterEvent("GLOBAL_MOUSE_UP")
    f:SetScript("OnEvent", function(self, event, ...)
        if event == "SUPER_TRACKING_CHANGED" then
            local questID = C_SuperTrack.GetSuperTrackedQuestID()
            if questID then
                lastQuestInfo.time = GetTime()
                lastQuestInfo.questID = questID
            end
        end

        if event == "GLOBAL_MOUSE_UP" then
            lastClickTime = GetTime()
        end
    end)

    hooksecurefunc(TomTom, "SetCrazyArrow", OnSetCrazyArrow)
    TomTomCrazyArrow:HookScript("OnHide", OnClearCrazyArrow)

    local UnloadEvent = CreateFrame("Frame")
    UnloadEvent:RegisterEvent("ADDONS_UNLOADING")
    UnloadEvent:SetScript("OnEvent", function()
        if MapPin.IsUserNavigationFlagged("TomTom_Waypoint") then
            MapPin.ClearUserNavigation()
        end
    end)
end

Support.Add("TomTom", OnAddonLoad)
