-- Optimized Roblox Script (Cleaned Version)
-- Services (only once at top)
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Lighting = game:GetService("Lighting")

local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

-- =========================================================
-- LOOP MANAGER (Single Heartbeat Loop for all features)
-- =========================================================
local activeFeatures = {}

RunService.Heartbeat:Connect(function()
    for _, fn in pairs(activeFeatures) do
        fn()
    end
end)

local function registerFeature(name, callback)
    activeFeatures[name] = callback
end

local function unregisterFeature(name)
    activeFeatures[name] = nil
end

-- =========================================================
-- Example Feature: Anti-AFK
-- =========================================================
local AntiAFK_Enabled = false
local function AntiAFK()
    local vu = game:GetService("VirtualUser")
    if AntiAFK_Enabled then
        vu:CaptureController()
        vu:ClickButton2(Vector2.new())
    end
end

local function AntiAFK_Enable()
    if AntiAFK_Enabled then return end
    AntiAFK_Enabled = true
    registerFeature("AntiAFK", AntiAFK)
end

local function AntiAFK_Disable()
    AntiAFK_Enabled = false
    unregisterFeature("AntiAFK")
end

-- =========================================================
-- Example Feature: FullBright
-- =========================================================
local FullBright_Enabled = false
local OriginalValues = {
    ClockTime = Lighting.ClockTime,
    Brightness = Lighting.Brightness,
    Ambient = Lighting.Ambient
}

local function FullBright()
    if FullBright_Enabled then
        Lighting.Brightness = 5
        Lighting.ClockTime = 14
        Lighting.Ambient = Color3.new(1, 1, 1)
    end
end

local function FullBright_Enable()
    if FullBright_Enabled then return end
    FullBright_Enabled = true
    registerFeature("FullBright", FullBright)
end

local function FullBright_Disable()
    FullBright_Enabled = false
    unregisterFeature("FullBright")
    -- restore
    Lighting.Brightness = OriginalValues.Brightness
    Lighting.ClockTime = OriginalValues.ClockTime
    Lighting.Ambient = OriginalValues.Ambient
end

-- =========================================================
-- UI TOGGLE SAMPLE (Press K to toggle UI)
-- =========================================================
local screenGui = Instance.new("ScreenGui", PlayerGui)
screenGui.Name = "VenomHubUI"
local mainFrame = Instance.new("Frame", screenGui)
mainFrame.Size = UDim2.new(0, 400, 0, 300)
mainFrame.Position = UDim2.new(0.5, -200, 0.5, -150)
mainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 20)

UserInputService.InputBegan:Connect(function(input, processed)
    if not processed and input.KeyCode == Enum.KeyCode.K then
        mainFrame.Visible = not mainFrame.Visible
    end
end)

-- =========================================================
-- Here you can re-add other optimized features following
-- the same register/unregister pattern above.
-- =========================================================
