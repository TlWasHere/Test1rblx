-- universal key
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

local CORRECT_KEY = "slimerngkey"
local KEY_LINK = "https://link-target.net/5694943/6OUsZqx7Ib5d"

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "KeySystemGui"
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = PlayerGui

local Overlay = Instance.new("Frame")
Overlay.Size = UDim2.new(1, 0, 1, 0)
Overlay.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Overlay.BackgroundTransparency = 0.4
Overlay.BorderSizePixel = 0
Overlay.Parent = ScreenGui

local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 420, 0, 300)
MainFrame.Position = UDim2.new(0.5, -210, 0.5, -150)
MainFrame.BackgroundColor3 = Color3.fromRGB(10, 10, 15)
MainFrame.BorderSizePixel = 0
MainFrame.Parent = ScreenGui

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 16)
MainCorner.Parent = MainFrame

local Stroke = Instance.new("UIStroke")
Stroke.Color = Color3.fromRGB(160, 80, 255)
Stroke.Thickness = 2
Stroke.Transparency = 0.2
Stroke.Parent = MainFrame

local TopBar = Instance.new("Frame")
TopBar.Size = UDim2.new(1, 0, 0, 48)
TopBar.BackgroundColor3 = Color3.fromRGB(30, 10, 50)
TopBar.BorderSizePixel = 0
TopBar.Parent = MainFrame

local TopBarCorner = Instance.new("UICorner")
TopBarCorner.CornerRadius = UDim.new(0, 16)
TopBarCorner.Parent = TopBar

local TopBarFix = Instance.new("Frame")
TopBarFix.Size = UDim2.new(1, 0, 0.5, 0)
TopBarFix.Position = UDim2.new(0, 0, 0.5, 0)
TopBarFix.BackgroundColor3 = Color3.fromRGB(30, 10, 50)
TopBarFix.BorderSizePixel = 0
TopBarFix.Parent = TopBar

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 1, 0)
Title.BackgroundTransparency = 1
Title.Text = "🔐  Hustle Hub — Key System"
Title.TextColor3 = Color3.fromRGB(210, 170, 255)
Title.TextSize = 17
Title.Font = Enum.Font.GothamBold
Title.Parent = TopBar

local Subtitle = Instance.new("TextLabel")
Subtitle.Size = UDim2.new(1, -40, 0, 24)
Subtitle.Position = UDim2.new(0, 20, 0, 58)
Subtitle.BackgroundTransparency = 1
Subtitle.Text = "Enter your key to access the script"
Subtitle.TextColor3 = Color3.fromRGB(180, 150, 220)
Subtitle.TextSize = 13
Subtitle.Font = Enum.Font.Gotham
Subtitle.TextXAlignment = Enum.TextXAlignment.Left
Subtitle.Parent = MainFrame

local BoxContainer = Instance.new("Frame")
BoxContainer.Size = UDim2.new(1, -40, 0, 44)
BoxContainer.Position = UDim2.new(0, 20, 0, 92)
BoxContainer.BackgroundColor3 = Color3.fromRGB(20, 10, 35)
BoxContainer.BorderSizePixel = 0
BoxContainer.Parent = MainFrame

local BoxCorner = Instance.new("UICorner")
BoxCorner.CornerRadius = UDim.new(0, 10)
BoxCorner.Parent = BoxContainer

local BoxStroke = Instance.new("UIStroke")
BoxStroke.Color = Color3.fromRGB(130, 60, 220)

