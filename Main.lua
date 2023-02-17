-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextBox = Instance.new("TextBox")
local UICorner_2 = Instance.new("UICorner")
local save = Instance.new("ImageButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
Frame.Position = UDim2.new(0.171539277, 0, 0.13884297, 0)
Frame.Size = UDim2.new(0, 774, 0, 608)

UICorner.CornerRadius = UDim.new(0, 20)
UICorner.Parent = Frame

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
TextBox.Position = UDim2.new(0.0284237731, 0, 0.0681192726, 0)
TextBox.Size = UDim2.new(0, 734, 0, 540)
TextBox.SizeConstraint = Enum.SizeConstraint.RelativeYY
TextBox.ClearTextOnFocus = false
TextBox.Font = Enum.Font.SourceSans
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(203, 10, 13)
TextBox.TextSize = 60.000
TextBox.TextWrapped = true
TextBox.TextXAlignment = Enum.TextXAlignment.Left
TextBox.TextYAlignment = Enum.TextYAlignment.Top

UICorner_2.CornerRadius = UDim.new(0, 20)
UICorner_2.Parent = TextBox

save.Name = "save"
save.Parent = Frame
save.BackgroundTransparency = 1.000
save.Position = UDim2.new(0.0273916125, 0, -0.00260440144, 0)
save.Size = UDim2.new(0, 42, 0, 42)
save.ZIndex = 2
save.Image = "rbxassetid://3926307971"
save.ImageRectOffset = Vector2.new(684, 404)
save.ImageRectSize = Vector2.new(36, 36)

-- Scripts:

local function ZURI_fake_script() -- save.LocalScript 
	local script = Instance.new('LocalScript', save)

	script.Parent.MouseButton1Click:Connect(function()
		writefile("notes.txt",script.Parent.Parent.TextBox.Text)
	end)
	
end
coroutine.wrap(ZURI_fake_script)()
local function VNXGIZT_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	script.Parent.Draggable = true
	
end
coroutine.wrap(VNXGIZT_fake_script)()
