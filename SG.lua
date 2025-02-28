local UserInputService = game:GetService("UserInputService")
local SG = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local CloseGui = Instance.new("TextButton")
local ListBox = Instance.new("Frame")
local GiveItemsButton = Instance.new("TextButton")
local BypassesButton = Instance.new("TextButton")
local GamepassesButton = Instance.new("TextButton")
local FunStuffButton = Instance.new("TextButton")
local GuiSections = Instance.new("Frame")
local GiveItems = Instance.new("Frame")
local GiveCure = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local GiveVirus = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local Gamepasses = Instance.new("Frame")
local GiveCurePass = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local GiveVirusPass = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local Bypasses = Instance.new("Frame")
local RemoveAG = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local RemoveAntiExploits = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local WalkspeedBypass = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local FunStuff = Instance.new("Frame")
local GodGun = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local Infectall = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local LagServer = Instance.new("TextButton")
local UICorner_10 = Instance.new("UICorner")
local AntiInfect = Instance.new("TextButton")
local UICorner_11 = Instance.new("UICorner")
--local AutoCure = Instance.new("TextButton") -- havent finished this yet, its really easy but im lazy asf.
local UICorner_12 = Instance.new("UICorner")
local UIStroke = Instance.new("UIStroke")
local UIStroke_2 = Instance.new("UIStroke")
local UIStroke_3 = Instance.new("UIStroke")
local UIStroke_4 = Instance.new("UIStroke")
local UIStroke_5 = Instance.new("UIStroke")
local UIStroke_6 = Instance.new("UIStroke")
local UIStroke_7 = Instance.new("UIStroke")
local UIStroke_8 = Instance.new("UIStroke")
local UIStroke_9 = Instance.new("UIStroke")
local UIStroke_10 = Instance.new("UIStroke")
local UIStroke_11 = Instance.new("UIStroke")
local UIStroke_12 = Instance.new("UIStroke")
local UIStroke_13 = Instance.new("UIStroke")
local UIStroke_14 = Instance.new("UIStroke")

SG.Name = "SG"
SG.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
SG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
SG.ResetOnSpawn = false

Main.Name = "Main"
Main.Parent = SG
Main.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Main.BackgroundTransparency = 0.100
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.338, 0,0.285, 0)
Main.Size = UDim2.new(0, 625, 0, 370)
Main.Draggable = true
Main.Active = true

Title.Name = "Title"
Title.Parent = Main
Title.BackgroundColor3 = Color3.fromRGB(68, 68, 68)
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0, 0, -0.000352519273, 0)
Title.Size = UDim2.new(0, 625, 0, 25)
Title.Font = Enum.Font.SourceSans
Title.Text = "    Shitty Gui"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 20.000
Title.TextXAlignment = Enum.TextXAlignment.Left

CloseGui.Name = "CloseGui"
CloseGui.Parent = Main
CloseGui.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CloseGui.BackgroundTransparency = 1.000
CloseGui.BorderColor3 = Color3.fromRGB(0, 0, 0)
CloseGui.BorderSizePixel = 0
CloseGui.Position = UDim2.new(0.964999974, 0, 0.00499999989, 0)
CloseGui.Size = UDim2.new(0, 20, 0, 20)
CloseGui.Font = Enum.Font.SourceSans
CloseGui.Text = "X"
CloseGui.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseGui.TextSize = 20.000
CloseGui.MouseButton1Down:connect(function()
    game.Players.LocalPlayer.PlayerGui.SG:Destroy()
end)

UIStroke.Parent = ListBox 
UIStroke.ApplyStrokeMode = "Border"
UIStroke.Color = Color3.fromRGB(115, 115, 115)
ListBox.Name = "ListBox"
ListBox.Parent = Main
ListBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ListBox.BackgroundTransparency = 1.000
ListBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
ListBox.BorderSizePixel = 0
ListBox.Position = UDim2.new(0.00960000046, 0, 0.0861339644, 0)
ListBox.Size = UDim2.new(0, 109, 0, 332)

GiveItemsButton.Name = "GiveItemsButton"
GiveItemsButton.Parent = ListBox
GiveItemsButton.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
GiveItemsButton.BackgroundTransparency = 0.700
GiveItemsButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
GiveItemsButton.BorderSizePixel = 0
GiveItemsButton.Position = UDim2.new(0, 0, 0.0301204827, 0)
GiveItemsButton.Size = UDim2.new(0, 109, 0, 35)
GiveItemsButton.Font = Enum.Font.SourceSans
GiveItemsButton.Text = "Items"
GiveItemsButton.TextColor3 = Color3.fromRGB(255, 255, 255)
GiveItemsButton.TextSize = 15.000
GiveItemsButton.MouseButton1Down:connect(function()
    GiveItems.Visible = true
    Bypasses.Visible = false
    Gamepasses.Visible = false
    FunStuff.Visible = false
end)

BypassesButton.Name = "BypassesButton"
BypassesButton.Parent = ListBox
BypassesButton.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
BypassesButton.BackgroundTransparency = 0.700
BypassesButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
BypassesButton.BorderSizePixel = 0
BypassesButton.Position = UDim2.new(0, 0, 0.159638554, 0)
BypassesButton.Size = UDim2.new(0, 109, 0, 35)
BypassesButton.Font = Enum.Font.SourceSans
BypassesButton.Text = "Bypasses"
BypassesButton.TextColor3 = Color3.fromRGB(255, 255, 255)
BypassesButton.TextSize = 15.000
BypassesButton.MouseButton1Down:connect(function()
    GiveItems.Visible = false
    Bypasses.Visible = true
    Gamepasses.Visible = false
    FunStuff.Visible = false
end)

GamepassesButton.Name = "GamepassesButton"
GamepassesButton.Parent = ListBox
GamepassesButton.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
GamepassesButton.BackgroundTransparency = 0.700
GamepassesButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
GamepassesButton.BorderSizePixel = 0
GamepassesButton.Position = UDim2.new(0, 0, 0.289156616, 0)
GamepassesButton.Size = UDim2.new(0, 109, 0, 35)
GamepassesButton.Font = Enum.Font.SourceSans
GamepassesButton.Text = "Gamepasses"
GamepassesButton.TextColor3 = Color3.fromRGB(255, 255, 255)
GamepassesButton.TextSize = 15.000
GamepassesButton.MouseButton1Down:connect(function()
    GiveItems.Visible = false
    Bypasses.Visible = false
    Gamepasses.Visible = true
    FunStuff.Visible = false
end)

FunStuffButton.Name = "FunStuffButton"
FunStuffButton.Parent = ListBox
FunStuffButton.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
FunStuffButton.BackgroundTransparency = 0.700
FunStuffButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
FunStuffButton.BorderSizePixel = 0
FunStuffButton.Position = UDim2.new(0, 0, 0.418674707, 0)
FunStuffButton.Size = UDim2.new(0, 109, 0, 35)
FunStuffButton.Font = Enum.Font.SourceSans
FunStuffButton.Text = "Fun Stuff"
FunStuffButton.TextColor3 = Color3.fromRGB(255, 255, 255)
FunStuffButton.TextSize = 15.000
FunStuffButton.MouseButton1Down:connect(function()
    GiveItems.Visible = false
    Bypasses.Visible = false
    Gamepasses.Visible = false
    FunStuff.Visible = true
end)

UIStroke_2.Parent = GuiSections
UIStroke_2.ApplyStrokeMode = "Border"
UIStroke_2.Color = Color3.fromRGB(115, 115, 115)
GuiSections.Name = "GuiSections"
GuiSections.Parent = Main
GuiSections.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GuiSections.BackgroundTransparency = 1.000
GuiSections.BorderColor3 = Color3.fromRGB(0, 0, 0)
GuiSections.BorderSizePixel = 0
GuiSections.Position = UDim2.new(0.198400006, 0, 0.0864864886, 0)
GuiSections.Size = UDim2.new(0, 492, 0, 332)

GiveItems.Name = "GiveItems"
GiveItems.Parent = GuiSections
GiveItems.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
GiveItems.BackgroundTransparency = 1.000
GiveItems.BorderColor3 = Color3.fromRGB(0, 0, 0)
GiveItems.BorderSizePixel = 0
GiveItems.Position = UDim2.new(0.00203252025, 0, 0.00301204808, 0)
GiveItems.Size = UDim2.new(0, 490, 0, 330)
GiveItems.Visible = false


UIStroke_3.Parent = GiveCure
UIStroke_3.ApplyStrokeMode = "Border"
UIStroke_3.Color = Color3.fromRGB(115, 115, 115)
GiveCure.Name = "GiveCure"
GiveCure.Parent = GiveItems
GiveCure.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
GiveCure.BackgroundTransparency = 0.700
GiveCure.BorderColor3 = Color3.fromRGB(0, 0, 0)
GiveCure.BorderSizePixel = 0
GiveCure.Position = UDim2.new(0.0285714287, 0, 0.0484848469, 0)
GiveCure.Size = UDim2.new(0, 70, 0, 36)
GiveCure.Font = Enum.Font.SourceSans
GiveCure.Text = "Cure"
GiveCure.TextColor3 = Color3.fromRGB(255, 255, 255)
GiveCure.TextSize = 15.000
GiveCure.MouseButton1Down:connect(function()
    game:GetService("ReplicatedStorage").Remotes.GiveCure:FireServer()
end)

UICorner.Parent = GiveCure

UIStroke_4.Parent = GiveVirus
UIStroke_4.ApplyStrokeMode = "Border"
UIStroke_4.Color = Color3.fromRGB(115, 115, 115)
GiveVirus.Name = "GiveVirus"
GiveVirus.Parent = GiveItems
GiveVirus.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
GiveVirus.BackgroundTransparency = 0.700
GiveVirus.BorderColor3 = Color3.fromRGB(0, 0, 0)
GiveVirus.BorderSizePixel = 0
GiveVirus.Position = UDim2.new(0.189140603, 0, 0.0484848469, 0)
GiveVirus.Size = UDim2.new(0, 70, 0, 36)
GiveVirus.Font = Enum.Font.SourceSans
GiveVirus.Text = "Virus"
GiveVirus.TextColor3 = Color3.fromRGB(255, 255, 255)
GiveVirus.TextSize = 15.000
GiveVirus.MouseButton1Down:connect(function()
    game:GetService("ReplicatedStorage").Remotes.GiveVirus:FireServer()
end)

UICorner_2.Parent = GiveVirus

Gamepasses.Name = "Gamepasses"
Gamepasses.Parent = GuiSections
Gamepasses.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Gamepasses.BackgroundTransparency = 1.000
Gamepasses.BorderColor3 = Color3.fromRGB(0, 0, 0)
Gamepasses.BorderSizePixel = 0
Gamepasses.Position = UDim2.new(0.00203252025, 0, 0.00301204808, 0)
Gamepasses.Size = UDim2.new(0, 490, 0, 330)
Gamepasses.Visible = false

UIStroke_5.Parent = GiveCurePass
UIStroke_5.ApplyStrokeMode = "Border"
UIStroke_5.Color = Color3.fromRGB(115, 115, 115)
GiveCurePass.Name = "GiveCurePass"
GiveCurePass.Parent = Gamepasses
GiveCurePass.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
GiveCurePass.BackgroundTransparency = 0.700
GiveCurePass.BorderColor3 = Color3.fromRGB(0, 0, 0)
GiveCurePass.BorderSizePixel = 0
GiveCurePass.Position = UDim2.new(0.0285714287, 0, 0.0484848469, 0)
GiveCurePass.Size = UDim2.new(0, 70, 0, 36)
GiveCurePass.Font = Enum.Font.SourceSans
GiveCurePass.Text = "Cure Pass"
GiveCurePass.TextColor3 = Color3.fromRGB(255, 255, 255)
GiveCurePass.TextSize = 15.000
GiveCurePass.MouseButton1Down:connect(function()
    wait(1)
    local var10 = game:GetService("TweenService")
    local var3 = game.ReplicatedStorage:WaitForChild("LocalFolder").GamepassCureMachine
    local var2 = game:GetService("MarketplaceService")
    local var1 = game.Players.LocalPlayer
    var3.Parent = workspace
    local var12 = var3.Tube
    local var11 = var3.Cure
    var2.PromptGamePassPurchaseFinished:Connect(function(arg1, arg2, arg3)
    	var3.Parent = workspace
    end)
    local var8 = var4.Size
    local var9 = var4.Position
    local var7 = var3.Button
    local var6 = false
    local var5 = false
    local var4 = var3.FakeCure
    var7.ProximityPrompt.Triggered:Connect(function()
    	var5 = true
    	var7.ProximityPrompt.MaxActivationDistance = 0
    	var4.Size = var8
    	var4.Position = var9
	    var4.Transparency = 0
	    var10:Create(var4, TweenInfo.new(180, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
		    Size = var11.Size;
	    	Position = var11.Position;
	    }):Play()
    	wait(180)
    	var11.Done:Play()
	    wait(0.3)
	    var11.Transparency = 0
	    var4.Transparency = 1
	    var12.ProximityPrompt.MaxActivationDistance = 6
	    var6 = true
	    var5 = false
    end)
    var12.ProximityPrompt.Triggered:Connect(function()
	    local var16 = nil
	    var6 = false
	    var11.Transparency = 1
	    var12.ProximityPrompt.MaxActivationDistance = 0
	    var7.ProximityPrompt.MaxActivationDistance = 4
	    game.ReplicatedStorage.Events.GiveCure:FireServer(var1)
	    return
	    game.ReplicatedStorage.Events.MessageClient:FireServer("You can have only two cures.")
    end)
end)

UICorner_3.Parent = GiveCurePass

UIStroke_6.Parent = GiveVirusPass
UIStroke_6.ApplyStrokeMode = "Border"
UIStroke_6.Color = Color3.fromRGB(115, 115, 115)
GiveVirusPass.Name = "GiveVirusPass"
GiveVirusPass.Parent = Gamepasses
GiveVirusPass.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
GiveVirusPass.BackgroundTransparency = 0.700
GiveVirusPass.BorderColor3 = Color3.fromRGB(0, 0, 0)
GiveVirusPass.BorderSizePixel = 0
GiveVirusPass.Position = UDim2.new(0.189140603, 0, 0.0484848469, 0)
GiveVirusPass.Size = UDim2.new(0, 70, 0, 36)
GiveVirusPass.Font = Enum.Font.SourceSans
GiveVirusPass.Text = "Virus Pass"
GiveVirusPass.TextColor3 = Color3.fromRGB(255, 255, 255)
GiveVirusPass.TextSize = 15.000
GiveVirusPass.MouseButton1Down:connect(function()
    wait(1)
    local var10 = game:GetService("TweenService")
    local var3 = game.ReplicatedStorage:WaitForChild("LocalFolder").GamepassVirusMachine
    local var2 = game:GetService("MarketplaceService")
    local var1 = game.Players.LocalPlayer
    var3.Parent = workspace
    local var12 = var3.Tube
    local var11 = var3.Cure
    var2.PromptGamePassPurchaseFinished:Connect(function(arg1, arg2, arg3)
        var3.Parent = workspace
    end)
    local var8 = var4.Size
    local var9 = var4.Position
    local var7 = var3.Button
    local var6 = false
    local var5 = false
    local var4 = var3.FakeCure
    var7.ProximityPrompt.Triggered:Connect(function()
        var5 = true
        var7.ProximityPrompt.MaxActivationDistance = 0
        var4.Size = var8
        var4.Position = var9
        var4.Transparency = 0
        var10:Create(var4, TweenInfo.new(180, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
            Position = var11.Position;
            Size = var11.Size;
        }):Play()
        wait(180)
        var11.Done:Play()
        wait(0.3)
        var11.Transparency = 0
        var4.Transparency = 1
        var12.ProximityPrompt.MaxActivationDistance = 6
        var6 = true
        var5 = false
    end)
    var12.ProximityPrompt.Triggered:Connect(function()
        local var16 = nil
        var6 = false
        var11.Transparency = 1
        var12.ProximityPrompt.MaxActivationDistance = 0
        var7.ProximityPrompt.MaxActivationDistance = 4
        game.ReplicatedStorage.Events.GiveVirus:FireServer(var1)
        return
        game.ReplicatedStorage.Events.MessageClient:FireServer("You can have only one virus.")
    end)   
end)

UICorner_4.Parent = GiveVirusPass

Bypasses.Name = "Bypasses"
Bypasses.Parent = GuiSections
Bypasses.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Bypasses.BackgroundTransparency = 1.000
Bypasses.BorderColor3 = Color3.fromRGB(0, 0, 0)
Bypasses.BorderSizePixel = 0
Bypasses.Position = UDim2.new(0.00203252025, 0, 0.00301204808, 0)
Bypasses.Size = UDim2.new(0, 490, 0, 330)
Bypasses.Visible = false

UIStroke_7.Parent = RemoveAG
UIStroke_7.ApplyStrokeMode = "Border"
UIStroke_7.Color = Color3.fromRGB(115, 115, 115)
RemoveAG.Name = "RemoveAG"
RemoveAG.Parent = Bypasses
RemoveAG.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
RemoveAG.BackgroundTransparency = 0.700
RemoveAG.BorderColor3 = Color3.fromRGB(0, 0, 0)
RemoveAG.BorderSizePixel = 0
RemoveAG.Position = UDim2.new(0.0285714287, 0, 0.0484848469, 0)
RemoveAG.Size = UDim2.new(0, 70, 0, 36)
RemoveAG.Font = Enum.Font.SourceSans
RemoveAG.Text = "Remove AG"
RemoveAG.TextColor3 = Color3.fromRGB(255, 255, 255)
RemoveAG.TextSize = 15.000
RemoveAG.MouseButton1Down:connect(function()
    game.workspace.AntiGlitch.AntiZombie:Destroy()
    game.workspace.ZombieBlockers.Blocker:Destroy()
end)

UICorner_5.Parent = RemoveAG

UIStroke_8.Parent = RemoveAntiExploits
UIStroke_8.ApplyStrokeMode = "Border"
UIStroke_8.Color = Color3.fromRGB(115, 115, 115)
RemoveAntiExploits.Name = "RemoveAntiExploits"
RemoveAntiExploits.Parent = Bypasses
RemoveAntiExploits.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
RemoveAntiExploits.BackgroundTransparency = 0.700
RemoveAntiExploits.BorderColor3 = Color3.fromRGB(0, 0, 0)
RemoveAntiExploits.BorderSizePixel = 0
RemoveAntiExploits.Position = UDim2.new(0.189140603, 0, 0.0484848469, 0)
RemoveAntiExploits.Size = UDim2.new(0, 70, 0, 36)
RemoveAntiExploits.Font = Enum.Font.SourceSans
RemoveAntiExploits.Text = "Remove AE"
RemoveAntiExploits.TextColor3 = Color3.fromRGB(255, 255, 255)
RemoveAntiExploits.TextSize = 15.000
RemoveAntiExploits.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.PlayerGui["PlayerLocalScripts(ReOnSp)"].AntiWeaponZone:Destroy()
	game.Players.LocalPlayer.PlayerGui["PlayerLocalScripts(ReOnSp)"].HumanOnlyDoor:Destroy()
end)

UICorner_6.Parent = RemoveAntiExploits

UIStroke_9.Parent = WalkspeedBypass
UIStroke_9.ApplyStrokeMode = "Border"
UIStroke_9.Color = Color3.fromRGB(115, 115, 115)
WalkspeedBypass.Name = "WalkspeedBypass"
WalkspeedBypass.Parent = Bypasses
WalkspeedBypass.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
WalkspeedBypass.BackgroundTransparency = 0.700
WalkspeedBypass.BorderColor3 = Color3.fromRGB(0, 0, 0)
WalkspeedBypass.BorderSizePixel = 0
WalkspeedBypass.Position = UDim2.new(0.351020396, 0, 0.0484848469, 0)
WalkspeedBypass.Size = UDim2.new(0, 70, 0, 36)
WalkspeedBypass.Font = Enum.Font.SourceSans
WalkspeedBypass.Text = "WS Bypass"
WalkspeedBypass.TextColor3 = Color3.fromRGB(255, 255, 255)
WalkspeedBypass.TextSize = 15.000
WalkspeedBypass.MouseButton1Down:connect(function()
for _, connection in getconnections(game.Players.LocalPlayer.Character.Humanoid:GetPropertyChangedSignal("WalkSpeed")) do
    connection:Disable()
end
end)

UICorner_7.Parent = WalkspeedBypass

FunStuff.Name = "FunStuff"
FunStuff.Parent = GuiSections
FunStuff.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
FunStuff.BackgroundTransparency = 1.000
FunStuff.BorderColor3 = Color3.fromRGB(0, 0, 0)
FunStuff.BorderSizePixel = 0
FunStuff.Position = UDim2.new(0.00203252025, 0, 0.00301204808, 0)
FunStuff.Size = UDim2.new(0, 490, 0, 330)

UIStroke_10.Parent = GodGun 
UIStroke_10.ApplyStrokeMode = "Border"
UIStroke_10.Color = Color3.fromRGB(115, 115, 115)
GodGun.Name = "GodGun"
GodGun.Parent = FunStuff
GodGun.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
GodGun.BackgroundTransparency = 0.500
GodGun.BorderColor3 = Color3.fromRGB(0, 0, 0)
GodGun.BorderSizePixel = 0
GodGun.Position = UDim2.new(0.0285714287, 0, 0.0484848469, 0)
GodGun.Size = UDim2.new(0, 70, 0, 36)
GodGun.Font = Enum.Font.SourceSans
GodGun.Text = "God Gun"
GodGun.TextColor3 = Color3.fromRGB(255, 255, 255)
GodGun.TextSize = 15.000
GodGun.MouseButton1Down:connect(function()
	local Faggot = game:GetService("Players").LocalPlayer.Backpack

	function ModsRapeHim(v)
		if v:FindFirstChild("Setting") then
			local NegaWatt = require(v.Setting)
			NegaWatt.FireRate = 0.03
			NegaWatt.Auto = true
			NegaWatt.AmmoPerClip = 9e9
			NegaWatt.ReloadTime = 0
			NegaWatt.BaseDamage = 999
			NegaWatt.HeadshotDamageMultiplier = 999
			NegaWatt.Spread = 0
			NegaWatt.CameraShakingEnabled = false
			NegaWatt.BulletSpeed = 9e9

		end
	end

	for _, v in next, Faggot:GetChildren() do
		ModsRapeHim(v)
	end
	Faggot.ChildAdded:Connect(function(v)
		ModsRapeHim(v)
	end)
end)

UICorner_8.Parent = GodGun

UIStroke_11.Parent = Infectall
UIStroke_11.ApplyStrokeMode = "Border"
UIStroke_11.Color = Color3.fromRGB(115, 115, 115)
Infectall.Name = "Infectall"
Infectall.Parent = FunStuff
Infectall.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Infectall.BackgroundTransparency = 0.500
Infectall.BorderColor3 = Color3.fromRGB(0, 0, 0)
Infectall.BorderSizePixel = 0
Infectall.Position = UDim2.new(0.189140603, 0, 0.0484848469, 0)
Infectall.Size = UDim2.new(0, 70, 0, 36)
Infectall.Font = Enum.Font.SourceSans
Infectall.Text = "Infect all"
Infectall.TextColor3 = Color3.fromRGB(255, 255, 255)
Infectall.TextSize = 15.000
Infectall.MouseButton1Down:connect(function()
    local lplr = game.Players.LocalPlayer

    lplr.Character.Infect.Activated:Connect(function()
    for _, v in game.Players:GetPlayers() do
        if lplr ~= v and v.Character and v.Team ~= lplr.Team and v.Character.PrimaryPart then
         firetouchinterest(lplr.Character.RightHand, v.Character.PrimaryPart, 0)
         firetouchinterest(lplr.Character.RightHand, v.Character.PrimaryPart, 1)
        end
    end
end)
end)

UICorner_9.Parent = Infectall

UIStroke_12.Parent = LagServer
UIStroke_12.ApplyStrokeMode = "Border"
UIStroke_12.Color = Color3.fromRGB(115, 115, 115)
LagServer.Name = "LagServer"
LagServer.Parent = FunStuff
LagServer.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
LagServer.BackgroundTransparency = 0.500
LagServer.BorderColor3 = Color3.fromRGB(0, 0, 0)
LagServer.BorderSizePixel = 0
LagServer.Position = UDim2.new(0.351020396, 0, 0.0484848469, 0)
LagServer.Size = UDim2.new(0, 70, 0, 36)
LagServer.Font = Enum.Font.SourceSans
LagServer.Text = "Lag Server"
LagServer.TextColor3 = Color3.fromRGB(255, 255, 255)
LagServer.TextSize = 15.000
LagServer.MouseButton1Down:connect(function()
    while true do
        task.wait()
        game:GetService("Players").LocalPlayer.Character.Pistol.Model.reload:FireServer()
        end
end)

UICorner_10.Parent = LagServer

UIStroke_13.Parent = AntiInfect
UIStroke_13.ApplyStrokeMode = "Border"
UIStroke_13.Color = Color3.fromRGB(115, 115, 115)
AntiInfect.Name = "AntiInfect"
AntiInfect.Parent = FunStuff
AntiInfect.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
AntiInfect.BackgroundTransparency = 0.500
AntiInfect.BorderColor3 = Color3.fromRGB(0, 0, 0)
AntiInfect.BorderSizePixel = 0
AntiInfect.Position = UDim2.new(0.511589587, 0, 0.0484848469, 0)
AntiInfect.Size = UDim2.new(0, 70, 0, 36)
AntiInfect.Font = Enum.Font.SourceSans
AntiInfect.Text = "Anti infect"
AntiInfect.TextColor3 = Color3.fromRGB(255, 255, 255)
AntiInfect.TextSize = 15.000
AntiInfect.MouseButton1Down:connect(function()
    local I = game.Players.LocalPlayer.Character.Infected

    local AI;

    AI = hookmetamethod(game, "__index", function(self, valuey)
        if not checkcaller() and self == I and valuey == "value" then return false end
        return AI(self, valuey, false) 
        end)
end)


UICorner_11.Parent = AntiInfect

--[[UIStroke_14.Parent = AutoCure
UIStroke_14.ApplyStrokeMode = "Border"
UIStroke_14.Color = Color3.fromRGB(115, 115, 115)
AutoCure.Name = "AutoCure"
AutoCure.Parent = FunStuff
AutoCure.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
AutoCure.BackgroundTransparency = 0.500
AutoCure.BorderColor3 = Color3.fromRGB(0, 0, 0)
AutoCure.BorderSizePixel = 0
AutoCure.Position = UDim2.new(0.671428561, 0, 0.0484848469, 0)
AutoCure.Size = UDim2.new(0, 70, 0, 36)
AutoCure.Font = Enum.Font.SourceSans
AutoCure.Text = "Auto Cure"
AutoCure.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoCure.TextSize = 15.000
AutoCure.MouseButton1Down:connect(function()

end)

UICorner_12.Parent = AutoCure]]

local main = Main
local Opened = true

local PositionClosed = UDim2.new(0.338, 0,1, 30)
local PositionOpened = UDim2.new(0.338, 0,0.285, 0)
UserInputService.InputBegan:connect(function(key, chat)
	if not chat and key.KeyCode == Enum.KeyCode.K then
		if Opened then
			main:TweenPosition((PositionClosed), "InOut", "Quart")
		else
			main:TweenPosition((PositionOpened), "InOut", "Quart")
		end
		Opened = not Opened
	end
end)
