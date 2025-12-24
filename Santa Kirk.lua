--// SERVICES
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TweenService = game:GetService("TweenService")

--// REMOTE
local RollFunction = ReplicatedStorage
    :WaitForChild("Functions")
    :WaitForChild("RollFunction")

--// TOGGLE
_G.Toggle = false

--// PLAYER
local player = Players.LocalPlayer

--// GUI
local gui = Instance.new("ScreenGui")
gui.Name = "ChristmasSpamGui"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.fromScale(0.26, 0.22)
frame.Position = UDim2.fromScale(0.37, 0.35)
frame.BackgroundColor3 = Color3.fromRGB(60, 25, 95)
frame.BorderSizePixel = 0
frame.Parent = gui
Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 22)

--// Gradient
local grad = Instance.new("UIGradient", frame)
grad.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(160, 100, 230)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(80, 40, 130))
}
grad.Rotation = 45

--// Title
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1,0,0.25,0)
title.BackgroundTransparency = 1
title.Text = "🎄 SANTA ROLL 🎄"
title.Font = Enum.Font.GothamBold
title.TextSize = 22
title.TextColor3 = Color3.fromRGB(245,235,255)
title.Parent = frame

--// BUTTON
local button = Instance.new("TextButton")
button.Size = UDim2.fromScale(0.75, 0.3)
button.Position = UDim2.fromScale(0.125, 0.6)
button.Text = "OFF 🎅"
button.Font = Enum.Font.GothamBold
button.TextSize = 18
button.TextColor3 = Color3.fromRGB(255,255,255)
button.BackgroundColor3 = Color3.fromRGB(155,80,205)
button.BorderSizePixel = 0
button.Parent = frame
Instance.new("UICorner", button).CornerRadius = UDim.new(0,14)

frame.Active = true
frame.Draggable = true

--// ❄️ SNOW PARTICLES
task.spawn(function()
    while true do
        local snow = Instance.new("ImageLabel")
        snow.Size = UDim2.fromOffset(math.random(6,10), math.random(6,10))
        snow.Position = UDim2.new(math.random(),0,-0.1,0)
        snow.BackgroundTransparency = 1
        snow.Image = "rbxassetid://3926305904"
        snow.ImageTransparency = 0.15
        snow.ImageColor3 = Color3.fromRGB(240,235,255)
        snow.Parent = frame

        TweenService:Create(
            snow,
            TweenInfo.new(math.random(4,7), Enum.EasingStyle.Linear),
            {Position = UDim2.new(snow.Position.X.Scale,0,1.2,0), Rotation = math.random(-180,180)}
        ):Play()

        task.delay(8, function()
            snow:Destroy()
        end)

        task.wait(0.12)
    end
end)

--// 🎅 SANTA + SLEIGH ANIMATION
local santa = Instance.new("ImageLabel")
santa.Size = UDim2.fromScale(0.6, 0.35)
santa.Position = UDim2.new(-0.7,0,0.15,0)
santa.BackgroundTransparency = 1
santa.Image = "rbxassetid://15118814809" -- Santa sleigh + reindeer
santa.ImageColor3 = Color3.fromRGB(200,170,255)
santa.Parent = frame

task.spawn(function()
    while true do
        santa.Position = UDim2.new(-0.7,0,0.15,0)
        TweenService:Create(
            santa,
            TweenInfo.new(8, Enum.EasingStyle.Linear),
            {Position = UDim2.new(1.2,0,0.15,0)}
        ):Play()
        task.wait(10)
    end
end)

--// ⚡ FAST BUT SAFE SPAM LOOP
-- Capped per frame to avoid total server meltdown
local INVOKES_PER_FRAME = 300

RunService.Heartbeat:Connect(function()
    if not _G.Toggle then return end
    for i = 1, INVOKES_PER_FRAME do
        RollFunction:InvokeServer()
    end
end)

--// TOGGLE
button.MouseButton1Click:Connect(function()
    _G.Toggle = not _G.Toggle
    if _G.Toggle then
        button.Text = "ON ❄️"
        button.BackgroundColor3 = Color3.fromRGB(185,110,235)
    else
        button.Text = "OFF 🎅"
        button.BackgroundColor3 = Color3.fromRGB(155,80,205)
    end
end)
