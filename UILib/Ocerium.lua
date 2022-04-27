--> Made by https://github.com/slf0Dev
local TweenService = game:GetService("TweenService")
local InputService = game:GetService("UserInputService")
local ms = game.Players.LocalPlayer:GetMouse()
local Library = {}

function Library.Main(Text,keycode)
	pcall(function()
		for i,v in next,game.CoreGui:GetChildren() do
			if v.Name == "LibraryUI" then
				v:Destroy()
			end
		end
	end)
	local Categories = 0
	local LibraryUI = Instance.new("ScreenGui")
	local Topbar = Instance.new("Frame")
	local Main = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local smh = Instance.new("Frame")
	local FoldersDisplay = Instance.new("Frame")
	local UIPageLayout = Instance.new("UIPageLayout")
	local HomeFolder = Instance.new("Frame")
	local Folders = Instance.new("Frame")
	local UIGridLayout = Instance.new("UIGridLayout")
	local FindComponentsBox = Instance.new("Frame")
	local TextBox = Instance.new("TextBox")
	local UICorner_2 = Instance.new("UICorner")
	local ImageLabel = Instance.new("ImageLabel")
	local UICorner_3 = Instance.new("UICorner")
	local smh_2 = Instance.new("Frame")
	local NameLabel = Instance.new("TextLabel")
	local ImageButton = Instance.new("ImageButton")
	local UICorner_4 = Instance.new("UICorner")
	local DropFrame = Instance.new("Frame")
	local Drop = Instance.new("ScrollingFrame")
	local Corner = Instance.new("UICorner")
	local FindListLaout = Instance.new("UIListLayout")

	LibraryUI.Name = "LibraryUI"
	LibraryUI.Parent = game.CoreGui
	LibraryUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	LibraryUI.ResetOnSpawn = false

	Topbar.Name = "Topbar"
	Topbar.Parent = LibraryUI
	Topbar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	Topbar.BorderSizePixel = 0
	Topbar.Position = UDim2.new(0.189116865, 0, 0.068217054, 0)
	Topbar.Size = UDim2.new(0, 700, 0, 37)

	Main.Name = "Main"
	Main.Parent = Topbar
	Main.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	Main.BorderSizePixel = 0
	Main.Position = UDim2.new(0, 0, 1, 0)
	Main.Size = UDim2.new(1, 0, -1.75555551, 444)

	UICorner.Parent = Main

	smh.Name = "smh"
	smh.Parent = Main
	smh.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	smh.BorderSizePixel = 0
	smh.Position = UDim2.new(0, 0, -0.0018427372, 0)
	smh.Size = UDim2.new(1, 0, 0, 9)

	FoldersDisplay.Name = "FoldersDisplay"
	FoldersDisplay.Parent = Main
	FoldersDisplay.AnchorPoint = Vector2.new(0.5, 0.5)
	FoldersDisplay.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	FoldersDisplay.BackgroundTransparency = 1.000
	FoldersDisplay.BorderSizePixel = 0
	FoldersDisplay.Position = UDim2.new(0.5, 0, 0.5, 0)
	FoldersDisplay.Size = UDim2.new(1, 0, 1, 0)
	FoldersDisplay.ClipsDescendants = true

	UIPageLayout.Parent = FoldersDisplay
	UIPageLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIPageLayout.VerticalAlignment = Enum.VerticalAlignment.Center
	UIPageLayout.EasingStyle = Enum.EasingStyle.Quint
	UIPageLayout.EasingDirection = Enum.EasingDirection.Out
	UIPageLayout.GamepadInputEnabled = false
	UIPageLayout.ScrollWheelInputEnabled = false
	UIPageLayout.TouchInputEnabled = false
	UIPageLayout.TweenTime = 0.300

	HomeFolder.Name = "HomeFolder"
	HomeFolder.Parent = FoldersDisplay
	HomeFolder.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	HomeFolder.BorderSizePixel = 0
	HomeFolder.Size = UDim2.new(1, 0, 1, 0)

	Folders.Name = "Folders"
	Folders.Parent = HomeFolder
	Folders.AnchorPoint = Vector2.new(0.5, 0.5)
	Folders.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Folders.BackgroundTransparency = 1.000
	Folders.BorderSizePixel = 0
	Folders.Position = UDim2.new(0.5, 0, 0.565955341, 0)
	Folders.Size = UDim2.new(0.899999976, 0, 0.768089354, 0)

	UIGridLayout.Parent = Folders
	UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIGridLayout.VerticalAlignment = Enum.VerticalAlignment.Center

	FindComponentsBox.Name = "FindComponentsBox"
	FindComponentsBox.Parent = HomeFolder
	FindComponentsBox.AnchorPoint = Vector2.new(0.5, 0)
	FindComponentsBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	FindComponentsBox.BackgroundTransparency = 1.000
	FindComponentsBox.BorderSizePixel = 0
	FindComponentsBox.Position = UDim2.new(0.5, 0, 0.0379999988, 0)
	FindComponentsBox.Size = UDim2.new(0, 221, 0, 31)

	local FindBoxStroke = Instance.new("UIStroke")
	FindBoxStroke.Parent = FindComponentsBox
	FindBoxStroke.LineJoinMode = "Round"
	FindBoxStroke.Color = Color3.fromRGB(68,68,68)

	local DropStroke = Instance.new("UIStroke")
	DropStroke.Parent = DropFrame
	DropStroke.LineJoinMode = "Round"
	DropStroke.Color = Color3.fromRGB(68,68,68)
	DropStroke.Transparency = 1

	TextBox.Parent = FindComponentsBox
	TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextBox.BackgroundTransparency = 1.000
	TextBox.BorderSizePixel = 0
	TextBox.Position = UDim2.new(0.0407239832, 0, 0, 0)
	TextBox.Size = UDim2.new(0.959276021, 0, 1, 0)
	TextBox.Font = Enum.Font.SourceSansBold
	TextBox.PlaceholderColor3 = Color3.fromRGB(115, 115, 115)
	TextBox.PlaceholderText = "What do you want to find?"
	TextBox.Text = ""
	TextBox.TextColor3 = Color3.fromRGB(190, 190, 190)
	TextBox.TextSize = 14.000
	TextBox.TextXAlignment = Enum.TextXAlignment.Left
	TextBox.FocusLost:Connect(function()
		wait(0.1)
		Drop.Visible = false
		TweenService:Create(DropStroke,TweenInfo.new(0.3),{Transparency = 1}):Play()
		spawn(function()
			if TextBox.Text ~= "" then
				for i,v in next,FoldersDisplay:GetDescendants() do
					if v.Name:lower() == TextBox.Text:lower() and v.Parent and v.Parent.Name == "Components" then
						for c,d in next,v.Parent:GetChildren() do
							if d.Name == "Pagess" then
								d:JumpTo(v)
								UIPageLayout:JumpTo(v.Parent.Parent)
							end
						end
					end
				end
			end
		end)
		DropFrame:TweenSize(UDim2.new(1,0,0,0),"Out","Quad",0.2,true,nil)
		for i,v in next,Drop:GetChildren() do
			if v:IsA("TextButton") then
				v.Visible = true
			end
		end
	end)
	TextBox.Focused:Connect(function()
		DropFrame:TweenSize(UDim2.new(1,0,0,100),"Out","Quad",0.2,true,nil)
		Drop.Visible = true
		TweenService:Create(DropStroke,TweenInfo.new(0.3),{Transparency = 0}):Play()
	end)

	TextBox.Changed:Connect(function(Property)
		if Property == "Text" then
			for i,v in next,Drop:GetChildren() do
				if v:IsA("TextButton") then
					if v.Name:lower():find(TextBox.Text:lower()) then
						v.Visible = true
					else
						v.Visible = false
					end
				end
			end
		end
	end)

	Drop.Name = "Drop"
	Drop.Parent = DropFrame
	Drop.Active = true
	Drop.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	Drop.BackgroundTransparency = 1
	Drop.BorderSizePixel = 0
	Drop.Position = UDim2.new(0, 0, 0, 0)
	Drop.Size = UDim2.new(1, 0, 0, 100)
	Drop.BottomImage = "rbxassetid://5614579544"
	Drop.CanvasSize = UDim2.new(0, 0, 0, 0)
	Drop.MidImage = "rbxassetid://5614579544"
	Drop.ScrollBarImageTransparency = 0.7
	Drop.ScrollBarThickness = 6
	Drop.TopImage = "rbxassetid://5614579544"
	Drop.AutomaticCanvasSize = Enum.AutomaticSize.Y
	Drop.ClipsDescendants = true
	Drop.ZIndex = 2

	DropFrame.Name = "DropFrame"
	DropFrame.Parent = FindComponentsBox
	DropFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	DropFrame.BorderSizePixel = 0
	DropFrame.Position = UDim2.new(0, 0, 1.09677422, 0)
	DropFrame.Size = UDim2.new(1, 0, 0, 0)
	DropFrame.ClipsDescendants = true

	Corner.Parent = DropFrame

	FindListLaout.Name = "FindListLaout"
	FindListLaout.Parent = Drop
	FindListLaout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	FindListLaout.SortOrder = Enum.SortOrder.LayoutOrder

	spawn(function()
		local object = {}
		for i,v in next,FoldersDisplay:GetDescendants() do
			if v.Parent and v.Parent.Name == "Components"  then
				for c,d in next,v.Parent:GetChildren() do
					if d.Name ~= "Pagess" then
						object[d] = d.Parent
					end
				end
			end
		end
		for c,d in next,object do
			if c ~= "Pagess" then
				local SelectButton = Instance.new("TextButton")

				SelectButton.Name = c.Name
				SelectButton.Parent = Drop
				SelectButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SelectButton.BackgroundTransparency = 1
				SelectButton.Size = UDim2.new(0.949999988, 0, 0, 35)
				SelectButton.Font = Enum.Font.SourceSansSemibold
				SelectButton.TextColor3 = Color3.fromRGB(152, 152, 152)
				SelectButton.TextSize = 16.000
				SelectButton.Text = c.Name
				SelectButton.MouseButton1Click:Connect(function()
					for i,v in next,FoldersDisplay:GetDescendants() do
						if v.Name == SelectButton.Text and v.Parent and v.Parent.Name == "Components" then
							for c,d in next,v.Parent:GetChildren() do
								if d.Name == "Pagess" then
									d:JumpTo(v)
									UIPageLayout:JumpTo(v.Parent.Parent)
								end
							end
						end
					end
				end)

				SelectButton.MouseEnter:Connect(function()
					TweenService:Create(SelectButton,TweenInfo.new(0.3),{BackgroundTransparency = 0.97}):Play()
				end)
				SelectButton.MouseLeave:Connect(function()
					TweenService:Create(SelectButton,TweenInfo.new(0.3),{BackgroundTransparency = 1}):Play()
				end)
			end
		end
	end)

	UICorner_2.Parent = FindComponentsBox

	ImageLabel.Parent = FindComponentsBox
	ImageLabel.AnchorPoint = Vector2.new(0, 0.5)
	ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabel.BackgroundTransparency = 1.000
	ImageLabel.BorderSizePixel = 0
	ImageLabel.Position = UDim2.new(0.889999986, 0, 0.5, 0)
	ImageLabel.Size = UDim2.new(0, 20, 0, 20)
	ImageLabel.Image = "rbxassetid://3926305904"
	ImageLabel.ImageColor3 = Color3.fromRGB(165, 165, 165)
	ImageLabel.ImageRectOffset = Vector2.new(964, 324)
	ImageLabel.ImageRectSize = Vector2.new(36, 36)

	UICorner_3.Parent = Topbar

	smh_2.Name = "smh"
	smh_2.Parent = Topbar
	smh_2.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	smh_2.BorderSizePixel = 0
	smh_2.Position = UDim2.new(0, 0, 0.795454562, 0)
	smh_2.Size = UDim2.new(1, 0, 0, 9)

	NameLabel.Name = "NameLabel"
	NameLabel.Parent = Topbar
	NameLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	NameLabel.BackgroundTransparency = 1.000
	NameLabel.BorderSizePixel = 0
	NameLabel.Position = UDim2.new(0.042857144, 0, 0, 0)
	NameLabel.Size = UDim2.new(0, 195, 0, 29)
	NameLabel.Font = Enum.Font.SourceSansBold
	NameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	NameLabel.TextSize = 14.000
	NameLabel.TextXAlignment = Enum.TextXAlignment.Left
	NameLabel.Text = Text

	ImageButton.Parent = Topbar
	ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageButton.BackgroundTransparency = 1.000
	ImageButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
	ImageButton.BorderSizePixel = 0
	ImageButton.Position = UDim2.new(0.949999988, 0, 0, 0)
	ImageButton.Size = UDim2.new(0, 29, 0, 29)
	ImageButton.AutoButtonColor = false
	ImageButton.Image = "http://www.roblox.com/asset/?id=9444423916"
	ImageButton.ScaleType = Enum.ScaleType.Fit
	local IsOpened = true
	ImageButton.MouseButton1Click:Connect(function()
		if IsOpened then
			IsOpened = false
			Main:TweenSize(UDim2.new(0,0,0,0),"Out","Quad",0.2,true,nil)
			smh:TweenSize(UDim2.new(0,0,0,0),"Out","Quad",0.2,true,nil)
			smh_2:TweenSize(UDim2.new(0,0,0,0),"Out","Quad",0.2,true,nil)
			Topbar:TweenSize(UDim2.new(0,50,0,50),"Out","Quad",0.2,true,nil)
			Topbar:TweenPosition(UDim2.new(0.5,0,0.85,0),"Out","Quad",0.3,true,nil)
			ImageButton:TweenPosition(UDim2.new(0,0,0,0),"Out","Quad",0.3,true,nil)
			ImageButton:TweenSize(UDim2.new(1, 0, 1, 0),"Out","Quad",0.3,true,nil)
			NameLabel.Visible = false
		else
			IsOpened = true
			Main:TweenSize(UDim2.new(1, 0, -1.75555551, 444),"Out","Quad",0.2,true,nil)
			smh:TweenSize(UDim2.new(1, 0, 0, 9),"Out","Quad",0.2,true,nil)
			smh_2:TweenSize(UDim2.new(1, 0, 0, 9),"Out","Quad",0.2,true,nil)
			Topbar:TweenSize(UDim2.new(0, 700, 0, 37),"Out","Quad",0.2,true,nil)
			Topbar:TweenPosition(UDim2.new(0.189116865, 0, 0.068217054, 0),"Out","Quad",0.3,true,nil)
			ImageButton:TweenPosition(UDim2.new(0.949999988, 0, 0, 0),"Out","Quad",0.3,true,nil)
			ImageButton:TweenSize(UDim2.new(0, 29, 0, 29),"Out","Quad",0.3,true,nil)
			NameLabel.Visible = true
		end
	end)

	game:GetService("UserInputService").InputBegan:Connect(function(key,isTyping)
		if not isTyping and key.KeyCode == Enum.KeyCode[keycode] then
			if IsOpened then
				IsOpened = false
				Main:TweenSize(UDim2.new(0,0,0,0),"Out","Quad",0.2,true,nil)
				smh:TweenSize(UDim2.new(0,0,0,0),"Out","Quad",0.2,true,nil)
				smh_2:TweenSize(UDim2.new(0,0,0,0),"Out","Quad",0.2,true,nil)
				Topbar:TweenSize(UDim2.new(0,50,0,50),"Out","Quad",0.2,true,nil)
				Topbar:TweenPosition(UDim2.new(0.5,0,0.85,0),"Out","Quad",0.3,true,nil)
				ImageButton:TweenPosition(UDim2.new(0,0,0,0),"Out","Quad",0.3,true,nil)
				ImageButton:TweenSize(UDim2.new(1, 0, 1, 0),"Out","Quad",0.3,true,nil)
				NameLabel.Visible = false
			else
				IsOpened = true
				Main:TweenSize(UDim2.new(1, 0, -1.75555551, 444),"Out","Quad",0.2,true,nil)
				smh:TweenSize(UDim2.new(1, 0, 0, 9),"Out","Quad",0.2,true,nil)
				smh_2:TweenSize(UDim2.new(1, 0, 0, 9),"Out","Quad",0.2,true,nil)
				Topbar:TweenSize(UDim2.new(0, 700, 0, 37),"Out","Quad",0.2,true,nil)
				Topbar:TweenPosition(UDim2.new(0.189116865, 0, 0.068217054, 0),"Out","Quad",0.3,true,nil)
				ImageButton:TweenPosition(UDim2.new(0.949999988, 0, 0, 0),"Out","Quad",0.3,true,nil)
				ImageButton:TweenSize(UDim2.new(0, 29, 0, 29),"Out","Quad",0.3,true,nil)
				NameLabel.Visible = true
			end
		end
	end)

	UICorner_4.Parent = ImageButton

	local dragging
	local dragInput
	local dragStart
	local startPos
	local off = Vector3.new(0,0,0)


	local function update(input)
		local delta = input.Position - dragStart
		pcall(function()
			Topbar:TweenPosition(UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y),"Out","Quad",0.1,true,nil)
		end)
	end
	Topbar.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = Topbar.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	Topbar.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input

		end
	end)

	InputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)



	local InsideMain = {}

	function InsideMain.Category(Text,imageId,ScaleType,imgTransparency)

		local FolderSwap = Instance.new("Frame")
		local FolderSwapButton = Instance.new("TextButton")
		local UICorner = Instance.new("UICorner")
		local FolderImage = Instance.new("ImageLabel")
		local ImageCorner = Instance.new("UICorner")

		local Folder = Instance.new("Frame")
		local SubFolders = Instance.new("Frame")
		local CategoryName = Instance.new("TextLabel")
		local List = Instance.new("ScrollingFrame")
		local UIListLayout = Instance.new("UIListLayout")
		local HomeButton = Instance.new("TextButton")
		local HomeImage = Instance.new("ImageLabel")
		local Components = Instance.new("ScrollingFrame")

		Folder.Name = "Folder"
		Folder.Parent = FoldersDisplay
		Folder.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
		Folder.BorderSizePixel = 0
		Folder.ClipsDescendants = true
		Folder.Size = UDim2.new(1, 0, 1, 0)

		SubFolders.Name = "SubFolders"
		SubFolders.Parent = Folder
		SubFolders.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
		SubFolders.BorderSizePixel = 0
		SubFolders.Position = UDim2.new(0, 0, 0.181910664, 0)
		SubFolders.Size = UDim2.new(0.341428578, 0, 0.818089366, 0)

		CategoryName.Name = "CategoryName"
		CategoryName.Parent = Folder
		CategoryName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		CategoryName.BackgroundTransparency = 1.000
		CategoryName.BorderSizePixel = 0
		CategoryName.Position = UDim2.new(0.01, 0,0.11, 10)
		CategoryName.Size = UDim2.new(0, 204, 0, 27)
		CategoryName.Font = Enum.Font.SourceSansSemibold
		CategoryName.TextColor3 = Color3.fromRGB(134, 134, 134)
		CategoryName.TextSize = 21.000
		CategoryName.TextXAlignment = Enum.TextXAlignment.Left
		CategoryName.Text = " " .. Text

		List.Name = "List"
		List.Parent = SubFolders
		List.Active = true
		List.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		List.BackgroundTransparency = 1
		List.BorderSizePixel = 0
		List.Position = UDim2.new(0, 0, 0, 15)
		List.Size = UDim2.new(0, 239, 0,295)
		List.BottomImage = "rbxassetid://5614579544"
		List.CanvasSize = UDim2.new(0, 0, 0, 0)
		List.MidImage = "rbxassetid://5614579544"
		List.ScrollBarThickness = 4
		List.TopImage = "rbxassetid://5614579544"
		List.ScrollBarImageTransparency = 0.7
		List.AutomaticCanvasSize = Enum.AutomaticSize.Y

		UIListLayout.Parent = List
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

		HomeButton.Name = "HomeButton"
		HomeButton.Parent = Folder
		HomeButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		HomeButton.BackgroundTransparency = 1.000
		HomeButton.BorderSizePixel = 0
		HomeButton.Size = UDim2.new(0, 239, 0, 45)
		HomeButton.Font = Enum.Font.SourceSansSemibold
		HomeButton.Text = "             Home"
		HomeButton.TextColor3 = Color3.fromRGB(200, 200, 200)
		HomeButton.TextSize = 19.000
		HomeButton.TextWrapped = true
		HomeButton.TextXAlignment = Enum.TextXAlignment.Left
		HomeButton.MouseButton1Click:Connect(function()
			UIPageLayout:JumpTo(HomeFolder)
		end)

		HomeButton.MouseEnter:Connect(function()
			TweenService:Create(HomeButton,TweenInfo.new(0.3),{BackgroundTransparency = 0.97}):Play()
		end)

		HomeButton.MouseLeave:Connect(function()
			TweenService:Create(HomeButton,TweenInfo.new(0.3),{BackgroundTransparency = 1}):Play()
		end)

		HomeImage.Name = "Home Image"
		HomeImage.Parent = HomeButton
		HomeImage.AnchorPoint = Vector2.new(0, 0.5)
		HomeImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		HomeImage.BackgroundTransparency = 1.000
		HomeImage.BorderSizePixel = 0
		HomeImage.Position = UDim2.new(0, 15, 0.5, 0)
		HomeImage.Size = UDim2.new(0, 20, 0, 20)
		HomeImage.Image = "rbxassetid://3926305904"
		HomeImage.ImageColor3 = Color3.fromRGB(200, 200, 200)
		HomeImage.ImageRectOffset = Vector2.new(964, 204)
		HomeImage.ImageRectSize = Vector2.new(36, 36)

		Components.Name = "Components"
		Components.Parent = Folder
		Components.Active = true
		Components.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Components.BackgroundTransparency = 1.000
		Components.BorderSizePixel = 0
		Components.Position = UDim2.new(0.340999991, 0, 0, 0)
		Components.Size = UDim2.new(0, 461, 0, 379)
		Components.BottomImage = "rbxassetid://5614579544"
		Components.CanvasSize = UDim2.new(0, 0, 0, 0)
		Components.MidImage = "rbxassetid://5614579544"
		Components.ScrollBarThickness = 4
		Components.TopImage = "rbxassetid://5614579544"


		FolderSwap.Name = "FolderSwap"
		FolderSwap.Parent = Folders
		FolderSwap.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
		FolderSwap.BackgroundTransparency = 1.000
		FolderSwap.BorderSizePixel = 0
		FolderSwap.Size = UDim2.new(0, 100, 0, 100)

		local FolderSwapStroke = Instance.new("UIStroke")
		FolderSwapStroke.Parent = FolderSwap
		FolderSwapStroke.LineJoinMode = "Round"
		FolderSwapStroke.Color = Color3.fromRGB(255,255,255)
		FolderSwapStroke.Transparency = 0.95

		FolderImage.Name = "FolderImage"
		FolderImage.Parent = FolderSwap
		FolderImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		FolderImage.BackgroundTransparency = 1.000
		FolderImage.BorderSizePixel = 0
		FolderImage.Size = UDim2.new(1, 0, 1, 0)
		FolderImage.ScaleType = Enum.ScaleType[ScaleType] or Enum.ScaleType.Crop
		FolderImage.Image = "rbxassetid://" .. tostring(imageId) or ""
		FolderImage.ImageTransparency = imgTransparency or 0

		FolderSwapButton.Name = "FolderSwapButton"
		FolderSwapButton.Parent = FolderSwap
		FolderSwapButton.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
		FolderSwapButton.BackgroundTransparency = 1.000
		FolderSwapButton.BorderSizePixel = 0
		FolderSwapButton.Size = UDim2.new(1, 0, 1, 0)
		FolderSwapButton.AutoButtonColor = false
		FolderSwapButton.Font = Enum.Font.SourceSansBold
		FolderSwapButton.LineHeight = 1.560
		FolderSwapButton.TextColor3 = Color3.fromRGB(200, 200, 200)
		FolderSwapButton.TextSize = 14.000
		FolderSwapButton.TextYAlignment = Enum.TextYAlignment.Bottom
		FolderSwapButton.Text = Text
		FolderSwapButton.MouseButton1Click:Connect(function()
			UIPageLayout:JumpTo(Folder)
		end)

		UICorner.Parent = FolderSwap
		ImageCorner.Parent = FolderImage

		FolderSwapButton.MouseEnter:Connect(function()
			TweenService:Create(FolderSwapStroke,TweenInfo.new(0.3),{Transparency = 0.85}):Play()
			TweenService:Create(FolderSwapButton,TweenInfo.new(0.3),{TextColor3 = Color3.fromRGB(255,255,255)}):Play()
		end)

		FolderSwapButton.MouseLeave:Connect(function()
			TweenService:Create(FolderSwapStroke,TweenInfo.new(0.3),{Transparency = 0.95}):Play()
			TweenService:Create(FolderSwapButton,TweenInfo.new(0.3),{TextColor3 = Color3.fromRGB(200,200,200)}):Play()
		end)

		local UIPageLayout = Instance.new("UIPageLayout")


		UIPageLayout.Name = "Pagess"
		UIPageLayout.Parent = Components
		UIPageLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIPageLayout.VerticalAlignment = Enum.VerticalAlignment.Center
		UIPageLayout.FillDirection = Enum.FillDirection.Vertical
		UIPageLayout.EasingStyle = Enum.EasingStyle.Quint
		UIPageLayout.GamepadInputEnabled = false
		UIPageLayout.Padding = UDim.new(0, 0)
		UIPageLayout.ScrollWheelInputEnabled = false
		UIPageLayout.TouchInputEnabled = false
		UIPageLayout.TweenTime = 0.3

		local InsideCategory = {}
		function InsideCategory.Folder(Text)

			local FolderDisplay = Instance.new("Frame")
			local UIListLayout = Instance.new("UIListLayout")
			local FolderButton = Instance.new("TextButton")
			local FoldersComponents = Instance.new("ScrollingFrame")
			local empty = Instance.new("Frame")

			FolderDisplay.Name = Text
			FolderDisplay.Parent = Components
			FolderDisplay.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			FolderDisplay.BackgroundTransparency = 1
			FolderDisplay.BorderSizePixel = 0
			FolderDisplay.Size = UDim2.new(0, 461, 0, 379)
			FolderDisplay.ClipsDescendants = true

			FoldersComponents.Name = "FolderComponents"
			FoldersComponents.Parent = FolderDisplay
			FoldersComponents.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			FoldersComponents.BackgroundTransparency = 1
			FoldersComponents.BorderSizePixel = 0
			FoldersComponents.Position = UDim2.new(0.1,0,0,0)
			FoldersComponents.Size = UDim2.new(0.9, 0, 1, -20)
			FoldersComponents.AutomaticCanvasSize = Enum.AutomaticSize.Y
			FoldersComponents.ScrollBarThickness = 4
			FoldersComponents.ScrollBarImageTransparency = 0.7
			FoldersComponents.CanvasSize = UDim2.new(0, 0, 0, 0)
			FoldersComponents.ClipsDescendants = false

			empty.Name = "empty"
			empty.Parent = FoldersComponents
			empty.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			empty.BackgroundTransparency = 1
			empty.BorderSizePixel = 0
			empty.Position = UDim2.new(0.1,0,0,0)
			empty.Size = UDim2.new(0, 0, 0, 0)


			UIListLayout.Parent = FoldersComponents
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Top
			UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left
			UIListLayout.Padding = UDim.new(0,10)

			FolderButton.Name = Text
			FolderButton.Parent = List
			FolderButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			FolderButton.BackgroundTransparency = 1.000
			FolderButton.BorderSizePixel = 0
			FolderButton.Size = UDim2.new(0, 239, 0, 45)
			FolderButton.Font = Enum.Font.SourceSansSemibold
			FolderButton.Text = "      " .. Text
			FolderButton.TextColor3 = Color3.fromRGB(200, 200, 200)
			FolderButton.TextSize = 19.000
			FolderButton.TextWrapped = true
			FolderButton.TextXAlignment = Enum.TextXAlignment.Left
			FolderButton.MouseButton1Click:Connect(function()
				UIPageLayout:JumpTo(FolderDisplay)
			end)

			FolderButton.MouseEnter:Connect(function()
				TweenService:Create(FolderButton,TweenInfo.new(0.3),{BackgroundTransparency = 0.97}):Play()
			end)

			FolderButton.MouseLeave:Connect(function()
				TweenService:Create(FolderButton,TweenInfo.new(0.3),{BackgroundTransparency = 1}):Play()
			end)
			local InsideFolder = {}

			function InsideFolder.Label(Text)
				local Label = Instance.new("TextLabel")

				Label.Parent = FoldersComponents
				Label.Name = "Label"
				Label.Size = UDim2.new(0,300,0,35)
				Label.BackgroundColor3 = Color3.fromRGB(255,255,255)
				Label.BackgroundTransparency = 1
				Label.Text = Text
				Label.Font = Enum.Font.SourceSansBold
				Label.TextSize = 18
				Label.TextColor3 = Color3.fromRGB(225, 225, 225)
				Label.TextXAlignment = Enum.TextXAlignment.Left
				return Label;
			end
			function InsideFolder.Button(Text,callback)

				local ButtonFrame = Instance.new("Frame")
				local ButtonLib = Instance.new("TextButton")
				local ButtonCorner = Instance.new("UICorner")

				ButtonFrame.Name = "ButtonFrame"
				ButtonFrame.Parent = FoldersComponents
				ButtonFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
				ButtonFrame.BackgroundTransparency = 1
				ButtonFrame.BorderSizePixel = 0
				ButtonFrame.Position = UDim2.new(0.312734097, 0, 0.334841639, 0)
				ButtonFrame.Size = UDim2.new(0, 300, 0, 35)

				ButtonLib.Name = "ButtonLib"
				ButtonLib.Parent = ButtonFrame
				ButtonLib.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ButtonLib.BackgroundTransparency = 1
				ButtonLib.BorderSizePixel = 0
				ButtonLib.Position = UDim2.new(0, 0, 0, 0)
				ButtonLib.Size = UDim2.new(0, 300, 0, 35)
				ButtonLib.Font = Enum.Font.SourceSansBold
				ButtonLib.Text = Text
				ButtonLib.TextColor3 = Color3.fromRGB(200, 200, 200)
				ButtonLib.TextSize = 15
				ButtonLib.AutoButtonColor = false

				ButtonCorner.Name = "ButtonCorner"
				ButtonCorner.Parent = ButtonFrame

				local ButtonStroke = Instance.new("UIStroke")
				ButtonStroke.Parent = ButtonFrame
				ButtonStroke.LineJoinMode = "Round"
				ButtonStroke.Color = Color3.fromRGB(255,255,255)
				ButtonStroke.Transparency = 0.95

				local IsPressed = false

				ButtonLib.MouseEnter:Connect(function()
					TweenService:Create(ButtonStroke,TweenInfo.new(0.1),{Transparency = 0.9}):Play()
					TweenService:Create(ButtonLib,TweenInfo.new(0.1),{TextColor3 = Color3.fromRGB(255,255,255)}):Play()
				end)

				ButtonLib.MouseLeave:Connect(function()
					TweenService:Create(ButtonStroke,TweenInfo.new(0.1),{Transparency = 0.95}):Play()
					TweenService:Create(ButtonLib,TweenInfo.new(0.1),{TextColor3 = Color3.fromRGB(200,200,200)}):Play()
				end)

				ButtonLib.MouseButton1Down:Connect(function()
					IsPressed = true
					TweenService:Create(ButtonLib,TweenInfo.new(0.1),{TextSize = 12}):Play()
					TweenService:Create(ButtonStroke,TweenInfo.new(0.1),{Transparency = 0.85}):Play()
					TweenService:Create(ButtonLib,TweenInfo.new(0.1),{TextColor3 = Color3.fromRGB(255,255,255)}):Play()
					repeat wait() until not IsPressed
					TweenService:Create(ButtonLib,TweenInfo.new(0.1),{TextSize = 15}):Play()
					TweenService:Create(ButtonStroke,TweenInfo.new(0.1),{Transparency = 0.97}):Play()
					TweenService:Create(ButtonLib,TweenInfo.new(0.1),{TextColor3 = Color3.fromRGB(200,200,200)}):Play()
				end)

				ButtonLib.MouseButton1Up:Connect(function()
					IsPressed = false
				end)
				ButtonLib.MouseButton1Click:Connect(function()
					spawn(function() callback() end)
				end)
				return ButtonLib
			end

			function InsideFolder.Toggle(Text,callback,statement)
				local Toggle = Instance.new("TextButton")
				local ToggleCorner = Instance.new("UICorner")
				local OuterBorder = Instance.new("Frame")
				local Corner = Instance.new("UICorner")
				local Circle = Instance.new("Frame")
				local CircleCorner = Instance.new("UICorner")
				local ToggleStroke = Instance.new("UIStroke")
				local OuterBorderStroke = Instance.new("UIStroke")

				Toggle.Name = "Toggle"
				Toggle.Parent = FoldersComponents
				Toggle.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
				Toggle.BorderSizePixel = 0
				Toggle.Position = UDim2.new(0.312734097, 0, 0.334841639, 0)
				Toggle.Size = UDim2.new(0, 300, 0, 35)
				Toggle.AutoButtonColor = false
				Toggle.Font = Enum.Font.SourceSansBold
				Toggle.Text = "    " .. Text
				Toggle.TextColor3 = Color3.fromRGB(200, 200, 200)
				Toggle.TextSize = 15.000
				Toggle.TextXAlignment = Enum.TextXAlignment.Left

				local IsToggled = statement
				local IsPressed = false

				Toggle.MouseButton1Down:Connect(function()
					IsPressed = true
					TweenService:Create(Toggle,TweenInfo.new(0.3),{TextColor3 = Color3.fromRGB(255,255,255)}):Play()
					TweenService:Create(ToggleStroke,TweenInfo.new(0.3),{Transparency = 0.85}):Play()
				end)

				Toggle.MouseButton1Up:Connect(function()
					IsPressed = false
					TweenService:Create(ToggleStroke,TweenInfo.new(0.3),{Transparency = 0.90}):Play()
				end)

				Toggle.MouseButton1Click:Connect(function()
					spawn(function() callback(IsToggled) end)
					if IsToggled then
						IsToggled = false
						Circle:TweenPosition(UDim2.new(0.08,0,0.5,0),"Out","Quad",0.3,true,nil)
						TweenService:Create(Circle,TweenInfo.new(0.3),{BackgroundColor3 = Color3.fromRGB(255,255,255)}):Play()
						TweenService:Create(Circle,TweenInfo.new(0.3),{BackgroundTransparency = 0.8}):Play()
						TweenService:Create(OuterBorder,TweenInfo.new(0.3),{BackgroundColor3 = Color3.fromRGB(255,255,255)}):Play()
						TweenService:Create(OuterBorder,TweenInfo.new(0.3),{BackgroundTransparency = 1}):Play()
						TweenService:Create(Toggle,TweenInfo.new(0.3),{TextColor3 = Color3.fromRGB(200,200,200)}):Play()
					else
						IsToggled = true
						TweenService:Create(OuterBorder,TweenInfo.new(0.3),{BackgroundColor3 = Color3.fromRGB(37, 150, 255)}):Play()
						TweenService:Create(OuterBorder,TweenInfo.new(0.3),{BackgroundTransparency = 0}):Play()
						TweenService:Create(Circle,TweenInfo.new(0.3),{BackgroundTransparency = 0}):Play()
						TweenService:Create(Toggle,TweenInfo.new(0.3),{TextColor3 = Color3.fromRGB(255,255,255)}):Play()
						Circle:TweenPosition(UDim2.new(0.64,0,0.5,0),"Out","Quad",0.3,true,nil)
					end
				end)

				Toggle.MouseEnter:Connect(function()
					TweenService:Create(ToggleStroke,TweenInfo.new(0.3),{Transparency = 0.9}):Play()
					if not IsToggled then
						TweenService:Create(Toggle,TweenInfo.new(0.3),{TextColor3 = Color3.fromRGB(255,255,255)}):Play()
					end
				end)
				Toggle.MouseLeave:Connect(function()
					TweenService:Create(ToggleStroke,TweenInfo.new(0.3),{Transparency = 0.95}):Play()
					if not IsToggled then
						TweenService:Create(Toggle,TweenInfo.new(0.3),{TextColor3 = Color3.fromRGB(200,200,200)}):Play()
					end
				end)

				ToggleCorner.Name = "ToggleCorner"
				ToggleCorner.Parent = Toggle

				ToggleStroke.Parent = Toggle
				ToggleStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				ToggleStroke.LineJoinMode = "Round"
				ToggleStroke.Color = Color3.fromRGB(255,255,255)
				ToggleStroke.Transparency = 0.95


				OuterBorder.Name = "OuterBorder"
				OuterBorder.Parent = Toggle
				OuterBorder.AnchorPoint = Vector2.new(0, 0.5)
				OuterBorder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				OuterBorder.BackgroundTransparency = 1.000
				OuterBorder.BorderSizePixel = 0
				OuterBorder.Position = UDim2.new(0.793000102, 0, 0.5, 0)
				OuterBorder.Size = UDim2.new(0, 49, 0, 22)

				OuterBorderStroke.Parent = OuterBorder
				OuterBorderStroke.LineJoinMode = "Round"
				OuterBorderStroke.Color = Color3.fromRGB(255,255,255)
				OuterBorderStroke.Transparency = 0.9

				Corner.CornerRadius = UDim.new(0, 5000)
				Corner.Name = "Corner"
				Corner.Parent = OuterBorder

				Circle.Name = "Circle"
				Circle.Parent = OuterBorder
				Circle.AnchorPoint = Vector2.new(0, 0.5)
				Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Circle.BackgroundTransparency = 0.800
				Circle.BorderSizePixel = 0
				Circle.Position = UDim2.new(0.0799999982, 0, 0.5, 0)
				Circle.Size = UDim2.new(0, 14, 0, 14)

				CircleCorner.CornerRadius = UDim.new(0, 5000)
				CircleCorner.Name = "CircleCorner"
				CircleCorner.Parent = Circle
				if not statement then
					Circle:TweenPosition(UDim2.new(0.08,0,0.5,0),"Out","Quad",0.3,true,nil)
					TweenService:Create(Circle,TweenInfo.new(0.3),{BackgroundColor3 = Color3.fromRGB(255,255,255)}):Play()
					TweenService:Create(Circle,TweenInfo.new(0.3),{BackgroundTransparency = 0.8}):Play()
					TweenService:Create(OuterBorder,TweenInfo.new(0.3),{BackgroundColor3 = Color3.fromRGB(255,255,255)}):Play()
					TweenService:Create(OuterBorder,TweenInfo.new(0.3),{BackgroundTransparency = 1}):Play()
					TweenService:Create(Toggle,TweenInfo.new(0.3),{TextColor3 = Color3.fromRGB(200,200,200)}):Play()
				else
					spawn(function() callback(true) end)
					TweenService:Create(OuterBorder,TweenInfo.new(0.3),{BackgroundColor3 = Color3.fromRGB(37, 150, 255)}):Play()
					TweenService:Create(OuterBorder,TweenInfo.new(0.3),{BackgroundTransparency = 0}):Play()
					TweenService:Create(Circle,TweenInfo.new(0.3),{BackgroundTransparency = 0}):Play()
					TweenService:Create(Toggle,TweenInfo.new(0.3),{TextColor3 = Color3.fromRGB(255,255,255)}):Play()
					Circle:TweenPosition(UDim2.new(0.64,0,0.5,0),"Out","Quad",0.3,true,nil)
				end
				return Toggle;
			end
			function InsideFolder.Slider(Text,min,max,callback,defaultValue,precise)

				local Slider = Instance.new("TextLabel")
				local SliderBase = Instance.new("Frame")
				local UICorner = Instance.new("UICorner")
				local SliderProgress = Instance.new("Frame")
				local UICorner_2 = Instance.new("UICorner")
				local TextLabel = Instance.new("TextLabel")
				local SliderBorder = Instance.new("UIStroke")
				local SliderCorner = Instance.new("UICorner")
				--Properties:

				Slider.Name = "Slider"
				Slider.Parent = FoldersComponents
				Slider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Slider.BackgroundTransparency = 1
				Slider.BorderSizePixel = 0
				Slider.Position = UDim2.new(0.1835206, 0, 0.248868778, 0)
				Slider.Size = UDim2.new(0, 300, 0, 35)
				Slider.Font = Enum.Font.SourceSansBold
				Slider.TextColor3 = Color3.fromRGB(200, 200, 200)
				Slider.TextSize = 15.000
				Slider.TextXAlignment = Enum.TextXAlignment.Left
				Slider.Text =  "    " .. Text

				SliderCorner.Parent = Slider

				SliderBorder.Parent = Slider
				SliderBorder.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				SliderBorder.LineJoinMode = "Round"
				SliderBorder.Color = Color3.fromRGB(255,255,255)
				SliderBorder.Transparency = 0.95

				SliderBase.Name = "SliderBase"
				SliderBase.Parent = Slider
				SliderBase.AnchorPoint = Vector2.new(0, 0.5)
				SliderBase.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SliderBase.BackgroundTransparency = 0.9
				SliderBase.BorderSizePixel = 0
				SliderBase.Position = UDim2.new(0.49000001, 0, 0.557142854, 0)
				SliderBase.Size = UDim2.new(0, 145, 0, 6)

				UICorner.CornerRadius = UDim.new(0, 9999)
				UICorner.Parent = SliderBase

				SliderProgress.Name = "SliderProgress"
				SliderProgress.Parent = SliderBase
				SliderProgress.BackgroundColor3 = Color3.fromRGB(255,255,255)
				SliderProgress.BorderSizePixel = 0
				SliderProgress.Size = UDim2.new(0, 0, 1, 0)
				SliderProgress.BackgroundTransparency = 0.85

				UICorner_2.CornerRadius = UDim.new(0, 9999)
				UICorner_2.Parent = SliderProgress

				TextLabel.Parent = SliderProgress
				TextLabel.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
				TextLabel.BackgroundTransparency = 1.000
				TextLabel.BorderSizePixel = 0
				TextLabel.Position = UDim2.new(0.5, 0, -2, 0)
				TextLabel.Size = UDim2.new(0, 37, 0, 11)
				TextLabel.Font = Enum.Font.SourceSansBold
				TextLabel.Text = defaultValue
				TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
				TextLabel.TextSize = 13.000


				local Sliding,Dragging = false
				local RealValue = defaultValue
				local value
				local function move(Pressed)
					Sliding = true;
					local pos = UDim2.new(math.clamp((Pressed.Position.X - SliderBase.AbsolutePosition.X) / SliderBase.AbsoluteSize.X, 0, 1), 0, 1, 0)
					local size = UDim2.new(math.clamp((Pressed.Position.X - SliderBase.AbsolutePosition.X) / SliderBase.AbsoluteSize.X, 0, 1), 0, 1, 0)
					SliderProgress:TweenSize(size, "Out", "Sine", 0.1, true,nil);
					RealValue = (((pos.X.Scale * max) / max) * (max - min) + min)
					value = (precise and string.format("%.1f", tostring(RealValue))) or (math.floor(RealValue))
					TextLabel.Text = tostring(value)
					callback(value)
				end

				Slider.InputBegan:Connect(function(Pressed)
					if Pressed.UserInputType == Enum.UserInputType.MouseButton1 then
						Dragging = true
						Sliding = false 
						TweenService:Create(SliderBorder,TweenInfo.new(0.3),{Transparency = 0.85}):Play()
						TweenService:Create(SliderProgress,TweenInfo.new(0.3),{BackgroundTransparency = 0}):Play()
						TweenService:Create(SliderProgress,TweenInfo.new(0.3),{BackgroundColor3 = Color3.fromRGB(37, 150, 255)}):Play()
						TweenService:Create(TextLabel,TweenInfo.new(0.3),{TextColor3 = Color3.fromRGB(255,255,255)}):Play()
						move(Pressed)
					end
				end)

				Slider.InputEnded:Connect(function(Pressed)
					if Pressed.UserInputType == Enum.UserInputType.MouseButton1 then
						Dragging = false
						Sliding = false
						TweenService:Create(TextLabel,TweenInfo.new(0.3),{TextColor3 = Color3.fromRGB(200,200,200)}):Play()
						TweenService:Create(SliderBorder,TweenInfo.new(0.3),{Transparency = 0.95}):Play()
						TweenService:Create(SliderProgress,TweenInfo.new(0.3),{BackgroundTransparency = 0.85}):Play()
						TweenService:Create(SliderProgress,TweenInfo.new(0.3),{BackgroundColor3 = Color3.fromRGB(255,255,255)}):Play()
						move(Pressed)
					end
				end)

				game:GetService("UserInputService").InputChanged:Connect(function(Pressed)
					if Dragging and Pressed.UserInputType == Enum.UserInputType.MouseMovement then
						move(Pressed)
					end
				end)

				Slider.MouseEnter:Connect(function()
					if not Dragging then
						TweenService:Create(TextLabel,TweenInfo.new(0.3),{TextColor3 = Color3.fromRGB(255,255,255)}):Play()
						TweenService:Create(SliderBorder,TweenInfo.new(0.3),{Transparency = 0.9}):Play()
						TweenService:Create(SliderProgress,TweenInfo.new(0.3),{BackgroundTransparency = 0}):Play()
						TweenService:Create(SliderProgress,TweenInfo.new(0.3),{BackgroundColor3 = Color3.fromRGB(37, 150, 255)}):Play()
						TweenService:Create(Slider,TweenInfo.new(0.3),{TextColor3 = Color3.fromRGB(255,255,255)}):Play()
					end
				end)
				Slider.MouseLeave:Connect(function()
					if not Dragging then
						TweenService:Create(TextLabel,TweenInfo.new(0.3),{TextColor3 = Color3.fromRGB(200,200,200)}):Play()
						TweenService:Create(SliderBorder,TweenInfo.new(0.3),{Transparency = 0.95}):Play()
						TweenService:Create(Slider,TweenInfo.new(0.3),{TextColor3 = Color3.fromRGB(200,200,200)}):Play()
						TweenService:Create(SliderProgress,TweenInfo.new(0.3),{BackgroundTransparency = 0.85}):Play()
						TweenService:Create(SliderProgress,TweenInfo.new(0.3),{BackgroundColor3 = Color3.fromRGB(255,255,255)}):Play()
					end
				end)
				return Slider;
			end
			function InsideFolder.TextBox(placeholder,callback)
				local TextBox = Instance.new("TextBox")
				local UICorner = Instance.new("UICorner")
				local SearchIcon = Instance.new("ImageLabel")
				local BoxStroke = Instance.new("UIStroke")

				TextBox.Parent = FoldersComponents
				TextBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
				TextBox.BorderSizePixel = 0
				TextBox.Position = UDim2.new(0.290262163, 0, 0.303167433, 0)
				TextBox.Size = UDim2.new(0, 300, 0, 35)
				TextBox.Font = Enum.Font.SourceSansSemibold
				TextBox.PlaceholderText = placeholder
				TextBox.Text = ""
				TextBox.TextColor3 = Color3.fromRGB(200, 200, 200)
				TextBox.TextSize = 19.000

				UICorner.Parent = TextBox

				BoxStroke.Parent = TextBox
				BoxStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				BoxStroke.Color = Color3.fromRGB(255,255,255)
				BoxStroke.LineJoinMode = Enum.LineJoinMode.Round
				BoxStroke.Thickness = 1
				BoxStroke.Transparency = 0.95

				SearchIcon.Name = "SearchIcon"
				SearchIcon.Parent = TextBox
				SearchIcon.AnchorPoint = Vector2.new(0, 0.5)
				SearchIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SearchIcon.BackgroundTransparency = 1.000
				SearchIcon.BorderSizePixel = 0
				SearchIcon.Position = UDim2.new(0.889999986, 0, 0.5, 0)
				SearchIcon.Size = UDim2.new(0, 20, 0, 20)
				SearchIcon.Image = "rbxassetid://3926305904"
				SearchIcon.ImageColor3 = Color3.fromRGB(165, 165, 165)
				SearchIcon.ImageRectOffset = Vector2.new(164, 684)
				SearchIcon.ImageRectSize = Vector2.new(36, 36)

				local IsTextBoxActing = false

				TextBox.MouseEnter:Connect(function()
					if not IsTextBoxActing then
						TweenService:Create(BoxStroke,TweenInfo.new(0.3),{Transparency = 0.9})
					end
				end)

				TextBox.MouseLeave:Connect(function()
					if not IsTextBoxActing then
						TweenService:Create(BoxStroke,TweenInfo.new(0.3),{Transparency = 0.95})
					end
				end)
				TextBox.Focused:Connect(function()
					IsTextBoxActing = true
					TweenService:Create(BoxStroke,TweenInfo.new(0.3),{Transparency = 0.85})
					TweenService:Create(TextBox,TweenInfo.new(0.3),{TextColor3 = Color3.fromRGB(255,255,255)})
				end)

				TextBox.FocusLost:Connect(function()
					IsTextBoxActing = false
					if not TextBox.MouseEnter then
						TweenService:Create(BoxStroke,TweenInfo.new(0.3),{Transparency = 0.95})
					else
						TweenService:Create(BoxStroke,TweenInfo.new(0.3),{Transparency = 0.90})
					end
					TweenService:Create(TextBox,TweenInfo.new(0.3),{TextColor3 = Color3.fromRGB(255,255,255)})
					if TextBox.Text ~= "" then
						spawn(function() callback(TextBox.Text) end)
					end
				end)

				return TextBox;
			end
			function InsideFolder.Dropdown(placeholder)
				local Dropdown = Instance.new("TextBox")
				local DropdownFrame = Instance.new("Frame")
				local UICorner = Instance.new("UICorner")
				local SearchIcon = Instance.new("ImageLabel")
				local BoxStroke = Instance.new("UIStroke")
				local UICorner_10 = Instance.new("UICorner")
				local DropFrameStroke = Instance.new("UIStroke")
				local DropDownListFrame = Instance.new("ScrollingFrame")
				local UIListLayout = Instance.new("UIListLayout")


				Dropdown.Parent = DropdownFrame
				Dropdown.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
				Dropdown.BorderSizePixel = 0
				Dropdown.AnchorPoint = Vector2.new(0.5,0)
				Dropdown.Position = UDim2.new(0.5, 0, 0, 0)
				Dropdown.Size = UDim2.new(0, 299, 0, 34)
				Dropdown.Font = Enum.Font.SourceSansSemibold
				Dropdown.PlaceholderText = placeholder
				Dropdown.Text = ""
				Dropdown.TextColor3 = Color3.fromRGB(200, 200, 200)
				Dropdown.TextSize = 16.000

				UICorner_10.Parent = DropdownFrame
				UICorner_10.CornerRadius = UDim.new(0,8)

				BoxStroke.Parent = DropdownFrame
				BoxStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				BoxStroke.Color = Color3.fromRGB(255,255,255)
				BoxStroke.LineJoinMode = Enum.LineJoinMode.Round
				BoxStroke.Thickness = 1
				BoxStroke.Transparency = 0.95

				SearchIcon.Name = "SearchIcon"
				SearchIcon.Parent = Dropdown
				SearchIcon.AnchorPoint = Vector2.new(0, 0.5)
				SearchIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SearchIcon.BackgroundTransparency = 1.000
				SearchIcon.BorderSizePixel = 0
				SearchIcon.Position = UDim2.new(0.889999986, 0, 0.5, 0)
				SearchIcon.Size = UDim2.new(0, 20, 0, 20)
				SearchIcon.Image = "rbxassetid://3926305904"
				SearchIcon.ImageColor3 = Color3.fromRGB(165, 165, 165)
				SearchIcon.ImageRectOffset = Vector2.new(4, 44)
				SearchIcon.ImageRectSize = Vector2.new(36, 36)

				DropDownListFrame.Name = "DropDownListFrame"
				DropDownListFrame.Parent = Dropdown
				DropDownListFrame.Active = true
				DropDownListFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				DropDownListFrame.BackgroundTransparency = 1
				DropDownListFrame.BorderSizePixel = 0
				DropDownListFrame.Position = UDim2.new(0, 0, 1, 0)
				DropDownListFrame.Size = UDim2.new(1, 0, 0, 0)
				DropDownListFrame.CanvasSize = UDim2.new(0,0,0,0)
				DropDownListFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
				DropDownListFrame.ScrollBarThickness = 6
				DropDownListFrame.ScrollBarImageTransparency = 0.7


				DropdownFrame.Name = "DropdownFrame"
				DropdownFrame.Parent = FoldersComponents
				DropdownFrame.Active = true
				DropdownFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				DropdownFrame.BackgroundTransparency = 1
				DropdownFrame.BorderSizePixel = 0
				DropdownFrame.Position = UDim2.new(0, 0, 0, 0)
				DropdownFrame.Size = UDim2.new(0, 300, 0, 35)
				DropdownFrame.ClipsDescendants = true


				UIListLayout.Parent = DropDownListFrame
				UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
				UIListLayout.Padding = UDim.new(0, 0)

				local IsTextBoxActing = false

				DropdownFrame.MouseEnter:Connect(function()
					if not IsTextBoxActing then
						DropDownListFrame:TweenSize(UDim2.new(1,0,0,100),"Out","Quad",0.3,true,nil)
						DropdownFrame:TweenSize(UDim2.new(0,300,0,135),"Out","Quad",0.3,true,nil)
						TweenService:Create(BoxStroke,TweenInfo.new(0.3),{Transparency = 0.9})
					end
				end)

				DropdownFrame.MouseLeave:Connect(function()
					if not IsTextBoxActing then
						DropDownListFrame:TweenSize(UDim2.new(1,0,0,0),"Out","Quad",0.3,true,nil)
						DropdownFrame:TweenSize(UDim2.new(0,300,0,35),"Out","Quad",0.3,true,nil)
						TweenService:Create(BoxStroke,TweenInfo.new(0.3),{Transparency = 0.95})
					end
				end)
				Dropdown.Focused:Connect(function()
					IsTextBoxActing = true
					DropDownListFrame:TweenSize(UDim2.new(1,0,0,100),"Out","Quad",0.3,true,nil)
					DropdownFrame:TweenSize(UDim2.new(0,300,0,135),"Out","Quad",0.3,true,nil)
					TweenService:Create(BoxStroke,TweenInfo.new(0.3),{Transparency = 0.85})
					TweenService:Create(Dropdown,TweenInfo.new(0.3),{TextColor3 = Color3.fromRGB(255,255,255)})
				end)

				Dropdown.FocusLost:Connect(function()
					IsTextBoxActing = false
					DropDownListFrame:TweenSize(UDim2.new(1,0,0,0),"Out","Quad",0.3,true,nil)
					DropdownFrame:TweenSize(UDim2.new(0,300,0,35),"Out","Quad",0.3,true,nil)
					if not DropdownFrame.MouseEnter then
						TweenService:Create(BoxStroke,TweenInfo.new(0.3),{Transparency = 0.95})
					else
						TweenService:Create(BoxStroke,TweenInfo.new(0.3),{Transparency = 0.90})
					end
					TweenService:Create(Dropdown,TweenInfo.new(0.3),{TextColor3 = Color3.fromRGB(255,255,255)})
				end)
				local InsideDropdown = {}
				function InsideDropdown.Choice(Text,callback)
					local SelectButton = Instance.new("TextButton")

					SelectButton.Name = Text
					SelectButton.Parent = DropDownListFrame
					SelectButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					SelectButton.BackgroundTransparency = 1
					SelectButton.Size = UDim2.new(1, 0, 0, 35)
					SelectButton.Font = Enum.Font.SourceSansSemibold
					SelectButton.TextColor3 = Color3.fromRGB(152, 152, 152)
					SelectButton.TextSize = 16.000
					SelectButton.Text = Text
					SelectButton.MouseButton1Click:Connect(function()
						callback()
					end)

					SelectButton.MouseEnter:Connect(function()
						TweenService:Create(SelectButton,TweenInfo.new(0.3),{BackgroundTransparency = 0.97}):Play()
					end)
					SelectButton.MouseLeave:Connect(function()
						TweenService:Create(SelectButton,TweenInfo.new(0.3),{BackgroundTransparency = 1}):Play()
					end)
				end
				return InsideDropdown,Dropdown;
			end
			return InsideFolder;
		end
		return InsideCategory;
	end
	return InsideMain;
end
return Library;
