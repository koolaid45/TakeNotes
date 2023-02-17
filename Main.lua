-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextBox = Instance.new("TextBox")
local save = Instance.new("ImageButton")
local upload = Instance.new("ImageButton")
local confirm = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local clear = Instance.new("ImageButton")
local check = Instance.new("ImageButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BackgroundTransparency = 0.400
Frame.Position = UDim2.new(0.762592435, 0, 0.253718972, 0)
Frame.Size = UDim2.new(0, 493, 0, 437)

UICorner.Parent = Frame

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(232, 0, 0)
TextBox.BackgroundTransparency = 0.700
TextBox.Position = UDim2.new(0.0106066158, 0, 0.0702027902, 0)
TextBox.Size = UDim2.new(0, 481, 0, 400)
TextBox.ClearTextOnFocus = false
TextBox.Font = Enum.Font.Code
TextBox.TextColor3 = Color3.fromRGB(255, 136, 0)
TextBox.TextSize = 29.000
TextBox.TextWrapped = true
TextBox.TextXAlignment = Enum.TextXAlignment.Left
TextBox.TextYAlignment = Enum.TextYAlignment.Top

save.Name = "save"
save.Parent = Frame
save.BackgroundTransparency = 1.000
save.Position = UDim2.new(0.00924921036, 0, 0.0123721063, 0)
save.Size = UDim2.new(0, 25, 0, 25)
save.ZIndex = 2
save.Image = "rbxassetid://6764432408"
save.ImageRectOffset = Vector2.new(100, 100)
save.ImageRectSize = Vector2.new(50, 50)

upload.Name = "upload"
upload.Parent = Frame
upload.BackgroundTransparency = 1.000
upload.LayoutOrder = 2
upload.Position = UDim2.new(0.0586231053, 0, 0.0119276941, 0)
upload.Size = UDim2.new(0, 25, 0, 25)
upload.ZIndex = 2
upload.Image = "rbxassetid://6764432293"
upload.ImageRectOffset = Vector2.new(0, 900)
upload.ImageRectSize = Vector2.new(100, 100)

confirm.Name = "confirm"
confirm.Parent = ScreenGui
confirm.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
confirm.BackgroundTransparency = 0.400
confirm.Position = UDim2.new(0.463543475, 0, 0.394214869, 0)
confirm.Size = UDim2.new(0, 320, 0, 134)
confirm.Visible = false

UICorner_2.Parent = confirm

TextLabel.Parent = confirm
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.0500000007, 0, 0.0970149264, 0)
TextLabel.Size = UDim2.new(0, 287, 0, 59)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Clear all and load last save?"
TextLabel.TextColor3 = Color3.fromRGB(255, 2, 2)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

clear.Name = "clear"
clear.Parent = confirm
clear.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
clear.LayoutOrder = 3
clear.Position = UDim2.new(0.671875, 0, 0.485074639, 0)
clear.Size = UDim2.new(0, 60, 0, 62)
clear.ZIndex = 2
clear.Image = "rbxassetid://3926305904"
clear.ImageRectOffset = Vector2.new(924, 724)
clear.ImageRectSize = Vector2.new(36, 36)

check.Name = "check"
check.Parent = confirm
check.BackgroundColor3 = Color3.fromRGB(4, 255, 0)
check.Position = UDim2.new(0.126093045, 0, 0.483594418, 0)
check.Size = UDim2.new(0, 60, 0, 62)
check.ZIndex = 2
check.Image = "rbxassetid://3926305904"
check.ImageRectOffset = Vector2.new(312, 4)
check.ImageRectSize = Vector2.new(24, 24)

-- Scripts:

local function ONZVNSV_fake_script() -- save.LocalScript 
	local script = Instance.new('LocalScript', save)

	script.Parent.MouseButton1Click:Connect(function()
		writefile("notes.txt",script.Parent.Parent.TextBox.Text)
	end)
	
end
coroutine.wrap(ONZVNSV_fake_script)()
local function HWNHO_fake_script() -- upload.LocalScript 
	local script = Instance.new('LocalScript', upload)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.confirm.Visible = true
	end)
	
end
coroutine.wrap(HWNHO_fake_script)()
local function RNYLCK_fake_script() -- clear.LocalScript 
	local script = Instance.new('LocalScript', clear)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Visible = false
	end)
	
end
coroutine.wrap(RNYLCK_fake_script)()
local function SWSNPR_fake_script() -- check.LocalScript 
	local script = Instance.new('LocalScript', check)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(readfile('Notes.txt'))
		script.Parent.Parent.Visible = false
	end)
	
end
coroutine.wrap(SWSNPR_fake_script)()
