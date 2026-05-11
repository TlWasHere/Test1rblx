-- CUSTOM KEY SYSTEM
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

local CORRECT_KEY = "slimerngkey"
local KEY_LINK = "https://link-center.net/5694943/GnzLumDBUiZA"

-- ScreenGui
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "KeySystemGui"
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = PlayerGui

-- Background Blur Feel (Frame)
local Overlay = Instance.new("Frame")
Overlay.Size = UDim2.new(1, 0, 1, 0)
Overlay.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Overlay.BackgroundTransparency = 0.4
Overlay.BorderSizePixel = 0
Overlay.Parent = ScreenGui

-- Main Window
local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 420, 0, 300)
MainFrame.Position = UDim2.new(0.5, -210, 0.5, -150)
MainFrame.BackgroundColor3 = Color3.fromRGB(10, 10, 15)
MainFrame.BorderSizePixel = 0
MainFrame.Parent = ScreenGui

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 16)
MainCorner.Parent = MainFrame

-- Purple glow border stroke
local Stroke = Instance.new("UIStroke")
Stroke.Color = Color3.fromRGB(160, 80, 255)
Stroke.Thickness = 2
Stroke.Transparency = 0.2
Stroke.Parent = MainFrame

-- Top accent bar
local TopBar = Instance.new("Frame")
TopBar.Size = UDim2.new(1, 0, 0, 48)
TopBar.BackgroundColor3 = Color3.fromRGB(30, 10, 50)
TopBar.BorderSizePixel = 0
TopBar.Parent = MainFrame

local TopBarCorner = Instance.new("UICorner")
TopBarCorner.CornerRadius = UDim.new(0, 16)
TopBarCorner.Parent = TopBar

-- Fix bottom corners of top bar
local TopBarFix = Instance.new("Frame")
TopBarFix.Size = UDim2.new(1, 0, 0.5, 0)
TopBarFix.Position = UDim2.new(0, 0, 0.5, 0)
TopBarFix.BackgroundColor3 = Color3.fromRGB(30, 10, 50)
TopBarFix.BorderSizePixel = 0
TopBarFix.Parent = TopBar

-- Title
local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 1, 0)
Title.BackgroundTransparency = 1
Title.Text = "🔐  Slime Hub — Key System"
Title.TextColor3 = Color3.fromRGB(210, 170, 255)
Title.TextSize = 17
Title.Font = Enum.Font.GothamBold
Title.Parent = TopBar

-- Subtitle
local Subtitle = Instance.new("TextLabel")
Subtitle.Size = UDim2.new(1, -40, 0, 24)
Subtitle.Position = UDim2.new(0, 20, 0, 58)
Subtitle.BackgroundTransparency = 1
Subtitle.Text = "Enter your key to access the hub"
Subtitle.TextColor3 = Color3.fromRGB(180, 150, 220)
Subtitle.TextSize = 13
Subtitle.Font = Enum.Font.Gotham
Subtitle.TextXAlignment = Enum.TextXAlignment.Left
Subtitle.Parent = MainFrame

-- Text Box container
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
BoxStroke.Thickness = 1.5
BoxStroke.Parent = BoxContainer

-- TextBox
local KeyInput = Instance.new("TextBox")
KeyInput.Size = UDim2.new(1, -20, 1, 0)
KeyInput.Position = UDim2.new(0, 10, 0, 0)
KeyInput.BackgroundTransparency = 1
KeyInput.PlaceholderText = "Paste your key here..."
KeyInput.PlaceholderColor3 = Color3.fromRGB(120, 90, 160)
KeyInput.Text = ""
KeyInput.TextColor3 = Color3.fromRGB(230, 210, 255)
KeyInput.TextSize = 14
KeyInput.Font = Enum.Font.Gotham
KeyInput.ClearTextOnFocus = false
KeyInput.Parent = BoxContainer

-- Status label
local StatusLabel = Instance.new("TextLabel")
StatusLabel.Size = UDim2.new(1, -40, 0, 20)
StatusLabel.Position = UDim2.new(0, 20, 0, 144)
StatusLabel.BackgroundTransparency = 1
StatusLabel.Text = ""
StatusLabel.TextColor3 = Color3.fromRGB(255, 100, 100)
StatusLabel.TextSize = 12
StatusLabel.Font = Enum.Font.Gotham
StatusLabel.TextXAlignment = Enum.TextXAlignment.Left
StatusLabel.Parent = MainFrame

-- Submit Button
local SubmitBtn = Instance.new("TextButton")
SubmitBtn.Size = UDim2.new(0, 175, 0, 44)
SubmitBtn.Position = UDim2.new(0, 20, 0, 175)
SubmitBtn.BackgroundColor3 = Color3.fromRGB(120, 50, 220)
SubmitBtn.Text = "Submit Key"
SubmitBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
SubmitBtn.TextSize = 14
SubmitBtn.Font = Enum.Font.GothamBold
SubmitBtn.BorderSizePixel = 0
SubmitBtn.Parent = MainFrame

local SubmitCorner = Instance.new("UICorner")
SubmitCorner.CornerRadius = UDim.new(0, 10)
SubmitCorner.Parent = SubmitBtn

-- Get Key Button
local GetKeyBtn = Instance.new("TextButton")
GetKeyBtn.Size = UDim2.new(0, 175, 0, 44)
GetKeyBtn.Position = UDim2.new(0, 225, 0, 175)
GetKeyBtn.BackgroundColor3 = Color3.fromRGB(30, 15, 50)
GetKeyBtn.Text = "🔑  Get Key"
GetKeyBtn.TextColor3 = Color3.fromRGB(200, 160, 255)
GetKeyBtn.TextSize = 14
GetKeyBtn.Font = Enum.Font.GothamBold
GetKeyBtn.BorderSizePixel = 0
GetKeyBtn.Parent = MainFrame

local GetKeyCorner = Instance.new("UICorner")
GetKeyCorner.CornerRadius = UDim.new(0, 10)
GetKeyCorner.Parent = GetKeyBtn

local GetKeyStroke = Instance.new("UIStroke")
GetKeyStroke.Color = Color3.fromRGB(130, 60, 220)
GetKeyStroke.Thickness = 1.5
GetKeyStroke.Parent = GetKeyBtn

-- Note at bottom
local NoteLabel = Instance.new("TextLabel")
NoteLabel.Size = UDim2.new(1, -40, 0, 20)
NoteLabel.Position = UDim2.new(0, 20, 0, 262)
NoteLabel.BackgroundTransparency = 1
NoteLabel.Text = "by Gemini  •  Slime RNG Hub"
NoteLabel.TextColor3 = Color3.fromRGB(90, 70, 120)
NoteLabel.TextSize = 11
NoteLabel.Font = Enum.Font.Gotham
NoteLabel.Parent = MainFrame

-- Hover effects
SubmitBtn.MouseEnter:Connect(function()
    SubmitBtn.BackgroundColor3 = Color3.fromRGB(150, 70, 255)
end)
SubmitBtn.MouseLeave:Connect(function()
    SubmitBtn.BackgroundColor3 = Color3.fromRGB(120, 50, 220)
end)

GetKeyBtn.MouseEnter:Connect(function()
    GetKeyBtn.BackgroundColor3 = Color3.fromRGB(50, 25, 75)
end)
GetKeyBtn.MouseLeave:Connect(function()
    GetKeyBtn.BackgroundColor3 = Color3.fromRGB(30, 15, 50)
end)

-- Get Key logic
GetKeyBtn.MouseButton1Click:Connect(function()
    setclipboard(KEY_LINK)
    GetKeyBtn.Text = "✅  Copied!"
    task.wait(2)
    GetKeyBtn.Text = "🔑  Get Key"
end)

-- Submit logic
SubmitBtn.MouseButton1Click:Connect(function()
    local entered = KeyInput.Text:gsub("%s+", ""):lower()
    if entered == CORRECT_KEY then
        StatusLabel.TextColor3 = Color3.fromRGB(100, 255, 160)
        StatusLabel.Text = "✅ Correct key! Loading hub..."
        task.wait(1)
        ScreenGui:Destroy()
        Overlay:Destroy()

        -- Load main script
        local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

        local Window = Rayfield:CreateWindow({
            Name = "Slime RNG Script",
            LoadingTitle = "Slime Hub",
            LoadingSubtitle = "by Gemini",
            ConfigurationSaving = {
                Enabled = true,
                FolderName = "SlimeRNGConfig",
                FileName = "MainHub"
            },
            KeySystem = false
        })

        local TabGeneral = Window:CreateTab("General", 4483362458)
        local TabMisc = Window:CreateTab("Misc", 4483362458)
        local TabSettings = Window:CreateTab("Settings", 4483362458)

        -- GENERAL
        local autoRollEnabled = false
        TabGeneral:CreateToggle({
            Name = "Auto Roll",
            CurrentValue = false,
            Flag = "AutoRollToggle",
            Callback = function(Value)
                autoRollEnabled = Value
                task.spawn(function()
                    while autoRollEnabled do
                        local args = {[1] = "requestRoll"}
                        game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("leifstout_networker@0.3.1").networker._remotes.RollService.RemoteFunction:InvokeServer(unpack(args))
                        task.wait(0.1)
                    end
                end)
            end,
        })

        local autoLootEnabled = false
        TabGeneral:CreateToggle({
            Name = "Auto Collect Loot",
            CurrentValue = false,
            Flag = "AutoLootToggle",
            Callback = function(Value)
                autoLootEnabled = Value
                task.spawn(function()
                    while autoLootEnabled do
                        task.wait(1)
                    end
                end)
            end,
        })

        -- MISC
        TabMisc:CreateSlider({
            Name = "Walkspeed",
            Range = {16, 70},
            Increment = 1,
            Suffix = "Speed",
            CurrentValue = 16,
            Flag = "WSlider",
            Callback = function(Value)
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
            end,
        })

        TabMisc:CreateSlider({
            Name = "Jump Height",
            Range = {50, 200},
            Increment = 1,
            Suffix = "Power",
            CurrentValue = 50,
            Flag = "JSlider",
            Callback = function(Value)
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
            end,
        })

        -- SETTINGS
        TabSettings:CreateButton({
            Name = "Anti AFK",
            Callback = function()
                game.Players.LocalPlayer.Idled:Connect(function()
                    game:GetService("VirtualUser"):CaptureController()
                    game:GetService("VirtualUser"):ClickButton2(Vector2.new())
                end)
                Rayfield:Notify({
                    Title = "Enabled",
                    Content = "Anti-AFK is now active.",
                    Duration = 5,
                    Image = 4483362458,
                })
            end,
        })

        TabSettings:CreateToggle({
            Name = "Remember Configuration",
            CurrentValue = true,
            Flag = "SaveConfig",
            Callback = function(Value)
                print("Config Auto-Save: " .. tostring(Value))
            end,
        })

    else
        StatusLabel.TextColor3 = Color3.fromRGB(255, 80, 80)
        StatusLabel.Text = "❌ Invalid key. Try again."
        KeyInput.Text = ""
    end
end)
