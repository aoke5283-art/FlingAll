local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local RS = game:GetService("ReplicatedStorage")

local gui = Instance.new("ScreenGui")
gui.Name = "ZainlGUI"
gui.Parent = LocalPlayer:WaitForChild("PlayerGui")

local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0,300,0,150)
frame.Position = UDim2.new(0.5,-150,0.5,-75)
frame.BackgroundColor3 = Color3.fromRGB(32, 18, 48)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true
Instance.new("UICorner", frame)

local title = Instance.new("TextLabel", frame)
title.Text = "ZainlGUI"
title.Size = UDim2.new(1,0,0,40)
title.BackgroundTransparency = 1
title.TextColor3 = Color3.fromRGB(230, 200, 255)
title.TextScaled = true
title.Font = Enum.Font.GothamBold

local btn = Instance.new("TextButton", frame)
btn.Text = "FLING OTHERS"
btn.Font = Enum.Font.GothamBold
btn.TextSize = 22
btn.Size = UDim2.new(0, 240, 0, 70)
btn.Position = UDim2.new(0.5,-120,0,60)
btn.BackgroundColor3 = Color3.fromRGB(85, 40, 130)
btn.TextColor3 = Color3.new(1,1,1)
btn.BorderSizePixel = 0
Instance.new("UICorner", btn)

btn.MouseButton1Click:Connect(function()
    RS:WaitForChild("FlingEvent"):FireServer()
end)
