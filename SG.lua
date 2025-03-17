if not game.Loaded then
    game.Loaded:Wait()
end

if game.PlaceId == 8426538932 and game.PlaceId ~= 6741970382 then
    if getgenv().ESG then
        getgenv().ESG:Destroy()
        getgenv().ESG = nil 
    end
    
    local UserInputService = game:GetService("UserInputService")
    local ESG = Instance.new("ScreenGui")
    local Main = Instance.new("Frame")
    local Name = Instance.new("TextLabel")
    local UICorner = Instance.new("UICorner")
    local GuiSections = Instance.new("Frame")
    local UICorner_2 = Instance.new("UICorner")
    local Teams = Instance.new("Frame")
    local UICorner_3 = Instance.new("UICorner")
    local BecomeScientist = Instance.new("TextButton")
    local UICorner_4 = Instance.new("UICorner")
    local BecomeZombie = Instance.new("TextButton")
    local UICorner_5 = Instance.new("UICorner")
    local Bypasses = Instance.new("Frame")
    local UICorner_6 = Instance.new("UICorner")
    local AntiCheatBypass = Instance.new("TextButton")
    local UICorner_7 = Instance.new("UICorner")
    local FunStuff = Instance.new("Frame")
    local UICorner_8 = Instance.new("UICorner")
    local GodGun = Instance.new("TextButton")
    local UICorner_9 = Instance.new("UICorner")
    local NotFinishedIA = Instance.new("TextButton")
    local UICorner_10 = Instance.new("UICorner")
    local Teleports = Instance.new("Frame")
    local UICorner_11 = Instance.new("UICorner")
    local ScientistSpawn = Instance.new("TextButton")
    local UICorner_12 = Instance.new("UICorner")
    local ZombieSpawn = Instance.new("TextButton")
    local UICorner_13 = Instance.new("UICorner")
    local OutSide = Instance.new("TextButton")
    local UICorner_14 = Instance.new("UICorner")
    local BreakerBox = Instance.new("TextButton")
    local UICorner_15 = Instance.new("UICorner")
    local ListBox = Instance.new("Frame")
    local UICorner_16 = Instance.new("UICorner")
    local BypassesButton = Instance.new("TextButton")
    local UICorner_17 = Instance.new("UICorner")
    local TeleportsButton = Instance.new("TextButton")
    local UICorner_18 = Instance.new("UICorner")
    local TeamsButton = Instance.new("TextButton")
    local UICorner_19 = Instance.new("UICorner")
    local FunStuffButton = Instance.new("TextButton")
    local UICorner_20 = Instance.new("UICorner")
    local RemoveGui = Instance.new("TextButton")
    local UICorner_21 = Instance.new("UICorner")
    local ignore = Instance.new("TextLabel")
    local UICorner_22 = Instance.new("UICorner")
    local UIStroke = Instance.new("UIStroke")
    local UIStroke_2 = Instance.new("UIStroke")
    
    ESG.Name = "ESG"
    ESG.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    ESG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    ESG.ResetOnSpawn = false
    
    Main.Name = "Main"
    Main.Parent = ESG
    Main.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
    Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Main.BorderSizePixel = 0
    Main.Position = UDim2.new(0.34, 0,0.265, 0)
    Main.Size = UDim2.new(0, 610, 0, 377)
    Main.Active = true
    Main.Draggable = true
    
    Name.Name = "Name"
    Name.Parent = Main
    Name.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
    Name.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Name.BorderSizePixel = 0
    Name.Position = UDim2.new(0, 0, 0.0160854347, 0)
    Name.Size = UDim2.new(0, 610, 0, 25)
    Name.Font = Enum.Font.SourceSans
    Name.Text = "    Elite Shitty Gui"
    Name.TextColor3 = Color3.fromRGB(255, 255, 255)
    Name.TextSize = 20.000
    Name.TextXAlignment = Enum.TextXAlignment.Left
    Name.TextYAlignment = Enum.TextYAlignment.Top
    
    UICorner.Parent = Main
    
    UIStroke.Parent = GuiSections 
    UIStroke.ApplyStrokeMode = "Border"
    UIStroke.Color = Color3.fromRGB(62, 62, 62)
    GuiSections.Name = "GuiSections"
    GuiSections.Parent = Main
    GuiSections.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    GuiSections.BackgroundTransparency = 1.000
    GuiSections.BorderColor3 = Color3.fromRGB(0, 0, 0)
    GuiSections.BorderSizePixel = 0
    GuiSections.Position = UDim2.new(0.189999998, 0, 0.100000001, 2)
    GuiSections.Size = UDim2.new(0, 488, 0, 326)
    
    UICorner_2.Parent = GuiSections
    
    Teams.Name = "Teams"
    Teams.Parent = GuiSections
    Teams.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Teams.BackgroundTransparency = 1.000
    Teams.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Teams.BorderSizePixel = 0
    Teams.Size = UDim2.new(0, 488, 0, 326)
    Teams.Visible = false
    
    UICorner_3.Parent = Teams
    
    BecomeScientist.Name = "BecomeScientist"
    BecomeScientist.Parent = Teams
    BecomeScientist.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
    BecomeScientist.BorderColor3 = Color3.fromRGB(0, 0, 0)
    BecomeScientist.BorderSizePixel = 0
    BecomeScientist.Position = UDim2.new(0.001, 5,0.016, 0)
    BecomeScientist.Size = UDim2.new(0, 475, 0, 28)
    BecomeScientist.Font = Enum.Font.SourceSans
    BecomeScientist.Text = "Become Scientist"
    BecomeScientist.TextColor3 = Color3.fromRGB(255, 255, 255)
    BecomeScientist.TextSize = 15.000
    BecomeScientist.MouseButton1Down:connect(function()
        local PP = game.workspace.Outside.Escape.Respawn.ProximityPrompt
        local HRP = game.Players.LocalPlayer.Character.HumanoidRootPart
        HRP.CFrame = game.workspace.Outside.Escape.EscapePod:GetChildren()[2].Model.Part.CFrame
        task.wait(0.25)
        fireproximityprompt(PP)
    end)
    
    UICorner_4.Parent = BecomeScientist
    
    BecomeZombie.Name = "BecomeZombie"
    BecomeZombie.Parent = Teams
    BecomeZombie.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
    BecomeZombie.BorderColor3 = Color3.fromRGB(0, 0, 0)
    BecomeZombie.BorderSizePixel = 0
    BecomeZombie.Position = UDim2.new(0.001, 5,0.11, 2)
    BecomeZombie.Size = UDim2.new(0, 475, 0, 28)
    BecomeZombie.Font = Enum.Font.SourceSans
    BecomeZombie.Text = "Become Zombie"
    BecomeZombie.TextColor3 = Color3.fromRGB(255, 255, 255)
    BecomeZombie.TextSize = 15.000
    BecomeZombie.MouseButton1Down:connect(function()
        local HRP = game.Players.LocalPlayer.Character.HumanoidRootPart
        firetouchinterest(HRP, game.workspace.Zombie, 0)
    end)
    
    UICorner_5.Parent = BecomeZombie
    
    Bypasses.Name = "Bypasses"
    Bypasses.Parent = GuiSections
    Bypasses.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Bypasses.BackgroundTransparency = 1.000
    Bypasses.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Bypasses.BorderSizePixel = 0
    Bypasses.Size = UDim2.new(0, 488, 0, 326)
    Bypasses.Visible = false
    
    UICorner_6.Parent = Bypasses
    
    AntiCheatBypass.Name = "AntiCheatBypass"
    AntiCheatBypass.Parent = Bypasses
    AntiCheatBypass.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
    AntiCheatBypass.BorderColor3 = Color3.fromRGB(0, 0, 0)
    AntiCheatBypass.BorderSizePixel = 0
    AntiCheatBypass.Position = UDim2.new(0.001, 5,0.016, 0)
    AntiCheatBypass.Size = UDim2.new(0, 475, 0, 28)
    AntiCheatBypass.Font = Enum.Font.SourceSans
    AntiCheatBypass.Text = "AntiCheat Bypass"
    AntiCheatBypass.TextColor3 = Color3.fromRGB(255, 255, 255)
    AntiCheatBypass.TextSize = 15.000
    AntiCheatBypass.MouseButton1Down:connect(function()
        local Damage = game:GetService("ReplicatedStorage").AC.Damage
        local ObtainTool = game:GetService("ReplicatedStorage").AC.ObtainTool
        local BrickObtainTool;
    
        BrickObtainTool = hookmetamethod(game, "__namecall", function(self, ...)
            local GetNameCall = getnamecallmethod()
            if self == ObtainTool and GetNameCall == "FireServer" then return nil end
        return BrickObtainTool(self, ...)
        end)
    
        local BrickDamage;
    
        BrickDamage = hookmetamethod(game, "__namecall", function(self, ...)
            local GetNameCall = getnamecallmethod()
            if self == BrickDamage and GetNameCall == "FireServer" then return nil end
        return BrickDamage(self, ...)
        end)
    end)
    
    UICorner_7.Parent = AntiCheatBypass
    
    FunStuff.Name = "FunStuff"
    FunStuff.Parent = GuiSections
    FunStuff.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    FunStuff.BackgroundTransparency = 1.000
    FunStuff.BorderColor3 = Color3.fromRGB(0, 0, 0)
    FunStuff.BorderSizePixel = 0
    FunStuff.Size = UDim2.new(0, 488, 0, 326)
    FunStuff.Visible = false
    
    UICorner_8.Parent = FunStuff
    
    GodGun.Name = "GodGun"
    GodGun.Parent = FunStuff
    GodGun.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
    GodGun.BorderColor3 = Color3.fromRGB(0, 0, 0)
    GodGun.BorderSizePixel = 0
    GodGun.Position = UDim2.new(0.001, 5,0.016, 0)
    GodGun.Size = UDim2.new(0, 475, 0, 28)
    GodGun.Font = Enum.Font.SourceSans
    GodGun.Text = "God Gun"
    GodGun.TextColor3 = Color3.fromRGB(255, 255, 255)
    GodGun.TextSize = 15.000
    GodGun.MouseButton1Down:connect(function()
        local FindSetting = game:GetService("Players").LocalPlayer.Backpack
    
        function RequireSetting(RS)
            if RS:FindFirstChild("Setting") then
                local Modify = require(RS.Setting)
                Modify.FireRate = 0.03
                Modify.Auto = true
                Modify.AmmoPerClip = math.huge
                Modify.ReloadTime = 0
                Modify.BaseDamage = 999
                Modify.HeadshotDamageMultiplier = 999
                Modify.Spread = 0
                Modify.CameraShakingEnabled = false
                Modify.BulletSpeed = 9e9
                Modify.Clips = math.huge
                Modify.MaxClip = math.huge
                Modify.Lifesteal = 100
    
            end
        end
    
        for _, RS in next, FindSetting:GetChildren() do
            RequireSetting(RS)
        end
        FindSetting.ChildAdded:Connect(function(RS)
            RequireSetting(RS)
        end)
    end)
    
    UICorner_9.Parent = GodGun
    
    NotFinishedIA.Name = "NotFinishedIA"
    NotFinishedIA.Parent = FunStuff
    NotFinishedIA.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
    NotFinishedIA.BorderColor3 = Color3.fromRGB(0, 0, 0)
    NotFinishedIA.BorderSizePixel = 0
    NotFinishedIA.Position = UDim2.new(0.001, 5,0.11, 2)
    NotFinishedIA.Size = UDim2.new(0, 475, 0, 28)
    NotFinishedIA.Font = Enum.Font.SourceSans
    NotFinishedIA.Text = "Not Finished"
    NotFinishedIA.TextColor3 = Color3.fromRGB(255, 255, 255)
    NotFinishedIA.TextSize = 15.000
    NotFinishedIA.MouseButton1Down:connect(function()
        warn("Not Finished")
    end)
    
    UICorner_10.Parent = NotFinishedIA
    
    Teleports.Name = "Teleports"
    Teleports.Parent = GuiSections
    Teleports.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Teleports.BackgroundTransparency = 1.000
    Teleports.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Teleports.BorderSizePixel = 0
    Teleports.Size = UDim2.new(0, 488, 0, 326)
    Teleports.Visible = false
    
    UICorner_11.Parent = Teleports
    
    ScientistSpawn.Name = "ScientistSpawn"
    ScientistSpawn.Parent = Teleports
    ScientistSpawn.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
    ScientistSpawn.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ScientistSpawn.BorderSizePixel = 0
    ScientistSpawn.Position = UDim2.new(0.001, 5,0.016, 0)
    ScientistSpawn.Size = UDim2.new(0, 475, 0, 28)
    ScientistSpawn.Font = Enum.Font.SourceSans
    ScientistSpawn.Text = "Human Spawn"
    ScientistSpawn.TextColor3 = Color3.fromRGB(255, 255, 255)
    ScientistSpawn.TextSize = 15.000
    ScientistSpawn.MouseButton1Down:connect(function()
        local HRP = game.Players.LocalPlayer.Character.HumanoidRootPart
        HRP.CFrame = game.workspace.Scientist.CFrame
    end)
    
    UICorner_12.Parent = ScientistSpawn
    
    ZombieSpawn.Name = "ZombieSpawn"
    ZombieSpawn.Parent = Teleports
    ZombieSpawn.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
    ZombieSpawn.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ZombieSpawn.BorderSizePixel = 0
    ZombieSpawn.Position = UDim2.new(0.001, 5,0.11, 2)
    ZombieSpawn.Size = UDim2.new(0, 475, 0, 28)
    ZombieSpawn.Font = Enum.Font.SourceSans
    ZombieSpawn.Text = "Zombie Spawn"
    ZombieSpawn.TextColor3 = Color3.fromRGB(255, 255, 255)
    ZombieSpawn.TextSize = 15.000
    ZombieSpawn.MouseButton1Down:connect(function()
        local HRP = game.Players.LocalPlayer.Character.HumanoidRootPart
        HRP.CFrame = game.workspace.Zombie.CFrame
    end)
    
    UICorner_13.Parent = ZombieSpawn
    
    OutSide.Name = "OutSide"
    OutSide.Parent = Teleports
    OutSide.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
    OutSide.BorderColor3 = Color3.fromRGB(0, 0, 0)
    OutSide.BorderSizePixel = 0
    OutSide.Position = UDim2.new(0.001, 5,0.3,6, 9)
    OutSide.Size = UDim2.new(0, 475, 0, 28)
    OutSide.Font = Enum.Font.SourceSans
    OutSide.Text = "Outside"
    OutSide.TextColor3 = Color3.fromRGB(255, 255, 255)
    OutSide.TextSize = 15.000
    OutSide.MouseButton1Down:connect(function()
        local HRP = game.Players.LocalPlayer.Character.HumanoidRootPart
        HRP.CFrame = game.workspace.Outside.Exit:GetChildren()[11].CFrame
    end)
    
    UICorner_14.Parent = OutSide
    
    BreakerBox.Name = "BreakerBox"
    BreakerBox.Parent = Teleports
    BreakerBox.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
    BreakerBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
    BreakerBox.BorderSizePixel = 0
    BreakerBox.Position = UDim2.new(0.001, 5,0.21, 3)
    BreakerBox.Size = UDim2.new(0, 475, 0, 28)
    BreakerBox.Font = Enum.Font.SourceSans
    BreakerBox.Text = "Breaker Box"
    BreakerBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    BreakerBox.TextSize = 15.000
    BreakerBox.MouseButton1Down:connect(function()
        local HRP = game.Players.LocalPlayer.Character.HumanoidRootPart
        HRP.CFrame = game.workspace.Map.Electrical.PowerModule.PowerModule.CFrame
    end)
    
    UICorner_15.Parent = BreakerBox
    
    UIStroke_2.Parent = ListBox 
    UIStroke_2.ApplyStrokeMode = "Border"
    UIStroke_2.Color = Color3.fromRGB(62, 62, 62)
    ListBox.Name = "ListBox"
    ListBox.Parent = Main
    ListBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ListBox.BackgroundTransparency = 1.000
    ListBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ListBox.BorderSizePixel = 0
    ListBox.Position = UDim2.new(0, 5, 0.100000031, 2)
    ListBox.Size = UDim2.new(0, 107, 0, 326)
    
    UICorner_16.Parent = ListBox
    
    BypassesButton.Name = "BypassesButton"
    BypassesButton.Parent = ListBox
    BypassesButton.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
    BypassesButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    BypassesButton.BorderSizePixel = 0
    BypassesButton.Position = UDim2.new(0.0409999378, 0, 0.0755950361, 15)
    BypassesButton.Size = UDim2.new(0, 98, 0, 28)
    BypassesButton.Font = Enum.Font.SourceSans
    BypassesButton.Text = "Bypasses"
    BypassesButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    BypassesButton.TextSize = 17.000
    BypassesButton.TextWrapped = true
    BypassesButton.MouseButton1Down:connect(function()
        Teams.Visible = false
        Bypasses.Visible = true
        FunStuff.Visible = false
        Teleports.Visible = false
    end)
    
    UICorner_17.Parent = BypassesButton
    
    TeleportsButton.Name = "TeleportsButton"
    TeleportsButton.Parent = ListBox
    TeleportsButton.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
    TeleportsButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TeleportsButton.BorderSizePixel = 0
    TeleportsButton.Position = UDim2.new(0.0409999378, 0, 0.31559509, 4)
    TeleportsButton.Size = UDim2.new(0, 98, 0, 28)
    TeleportsButton.Font = Enum.Font.SourceSans
    TeleportsButton.Text = "Teleports"
    TeleportsButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    TeleportsButton.TextSize = 17.000
    TeleportsButton.MouseButton1Down:connect(function()
        Teams.Visible = false
        Bypasses.Visible = false
        FunStuff.Visible = false
        Teleports.Visible = true
    end)
    
    UICorner_18.Parent = TeleportsButton
    
    TeamsButton.Name = "TeamsButton"
    TeamsButton.Parent = ListBox
    TeamsButton.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
    TeamsButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TeamsButton.BorderSizePixel = 0
    TeamsButton.Position = UDim2.new(0.0409999378, 0, 0.0155951381, 0)
    TeamsButton.Size = UDim2.new(0, 98, 0, 28)
    TeamsButton.Font = Enum.Font.SourceSans
    TeamsButton.Text = "Teams"
    TeamsButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    TeamsButton.TextSize = 17.000
    TeamsButton.MouseButton1Down:connect(function()
        Teams.Visible = true
        Bypasses.Visible = false
        FunStuff.Visible = false
        Teleports.Visible = false
    end)
    
    UICorner_19.Parent = TeamsButton
    
    FunStuffButton.Name = "FunStuffButton"
    FunStuffButton.Parent = ListBox
    FunStuffButton.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
    FunStuffButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    FunStuffButton.BorderSizePixel = 0
    FunStuffButton.Position = UDim2.new(0.0409999378, 0, 0.175595149, 16)
    FunStuffButton.Size = UDim2.new(0, 98, 0, 28)
    FunStuffButton.Font = Enum.Font.SourceSans
    FunStuffButton.Text = "Fun Stuff"
    FunStuffButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    FunStuffButton.TextSize = 17.000
    FunStuffButton.MouseButton1Down:connect(function()
        Teams.Visible = false
        Bypasses.Visible = false
        FunStuff.Visible = true
        Teleports.Visible = false
    end)
    
    UICorner_20.Parent = FunStuffButton
    
    RemoveGui.Name = "RemoveGui"
    RemoveGui.Parent = Main
    RemoveGui.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
    RemoveGui.BorderColor3 = Color3.fromRGB(0, 0, 0)
    RemoveGui.BorderSizePixel = 0
    RemoveGui.Position = UDim2.new(0.948000014, 0, 0.00999999978, 0)
    RemoveGui.Size = UDim2.new(0, 25, 0, 24)
    RemoveGui.Font = Enum.Font.SourceSans
    RemoveGui.Text = "X"
    RemoveGui.TextColor3 = Color3.fromRGB(255, 255, 255)
    RemoveGui.TextSize = 20.000
    RemoveGui.TextYAlignment = Enum.TextYAlignment.Bottom
    RemoveGui.MouseButton1Down:connect(function()
        game.Players.LocalPlayer.PlayerGui.ESG:Destroy()
    end)
    
    UICorner_21.Parent = RemoveGui
    
    ignore.Name = "ignore"
    ignore.Parent = Main
    ignore.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
    ignore.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ignore.BorderSizePixel = 0
    ignore.Size = UDim2.new(0, 610, 0, 6)
    ignore.Font = Enum.Font.SourceSans
    ignore.Text = ""
    ignore.TextColor3 = Color3.fromRGB(0, 0, 0)
    ignore.TextSize = 14.000
    
    UICorner_22.Parent = ignore
    
    local main = Main
    local Opened = true
    
    local PositionClosed = UDim2.new(0.34, 0,1, 5)
    local PositionOpened = UDim2.new(0.34, 0,0.265, 0)
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
    
    getgenv().ESG = ESG
else if game.PlaceId == 6741970382 and game.PlaceId ~= 8426538932 then
    if getgenv().SG then
        getgenv().SG:Destroy()
        getgenv().SG = nil 
    end
    
    local UserInputService = game:GetService("UserInputService")
    local SG = Instance.new("ScreenGui")
    local Main = Instance.new("Frame")
    local Name = Instance.new("TextLabel")
    local UICorner = Instance.new("UICorner")
    local GuiSections = Instance.new("Frame")
    local UICorner_2 = Instance.new("UICorner")
    local Items = Instance.new("Frame")
    local UICorner_3 = Instance.new("UICorner")
    local GiveCure = Instance.new("TextButton")
    local UICorner_4 = Instance.new("UICorner")
    local UseCure = Instance.new("TextButton")
    local UICorner_5 = Instance.new("UICorner")
    local UseVirus = Instance.new("TextButton")
    local UICorner_6 = Instance.new("UICorner")
    local GiveVirus = Instance.new("TextButton")
    local UICorner_7 = Instance.new("UICorner")
    local GiveCureMachine = Instance.new("TextButton")
    local UICorner_8 = Instance.new("UICorner")
    local GiveVirusMachine = Instance.new("TextButton")
    local UICorner_9 = Instance.new("UICorner")
    local Bypasses = Instance.new("Frame")
    local UICorner_10 = Instance.new("UICorner")
    local WalkspeedBypass = Instance.new("TextButton")
    local UICorner_11 = Instance.new("UICorner")
    local RemoveAntiExploits = Instance.new("TextButton")
    local UICorner_12 = Instance.new("UICorner")
    local NotFinishedAGB = Instance.new("TextButton")
    local UICorner_13 = Instance.new("UICorner")
    local RemoveZSHBarriers = Instance.new("TextButton")
    local UICorner_14 = Instance.new("UICorner")
    local FunStuff = Instance.new("Frame")
    local UICorner_15 = Instance.new("UICorner")
    local GodGun = Instance.new("TextButton")
    local UICorner_16 = Instance.new("UICorner")
    local InfectAll = Instance.new("TextButton")
    local UICorner_17 = Instance.new("UICorner")
    local KillAllZombies = Instance.new("TextButton")
    local UICorner_18 = Instance.new("UICorner")
    local LagServer = Instance.new("TextButton")
    local UICorner_19 = Instance.new("UICorner")
    local NotFinishedMA = Instance.new("TextButton")
    local UICorner_20 = Instance.new("UICorner")
    local RandomShit = Instance.new("Frame")
    local UICorner_21 = Instance.new("UICorner")
    local Ragdoll = Instance.new("TextButton")
    local UICorner_22 = Instance.new("UICorner")
    local UnRagdoll = Instance.new("TextButton")
    local UICorner_23 = Instance.new("UICorner")
    local CureRandom = Instance.new("TextButton")
    local UICorner_24 = Instance.new("UICorner")
    local InfectRandom = Instance.new("TextButton")
    local UICorner_25 = Instance.new("UICorner")
    local KillYourself = Instance.new("TextButton")
    local UICorner_26 = Instance.new("UICorner")
    local ListBox = Instance.new("Frame")
    local UICorner_27 = Instance.new("UICorner")
    local BypassesButton = Instance.new("TextButton")
    local UICorner_28 = Instance.new("UICorner")
    local RandomShitButton = Instance.new("TextButton")
    local UICorner_29 = Instance.new("UICorner")
    local ItemsButton = Instance.new("TextButton")
    local UICorner_30 = Instance.new("UICorner")
    local FunStuffButton = Instance.new("TextButton")
    local UICorner_31 = Instance.new("UICorner")
    local RemoveGui = Instance.new("TextButton")
    local UICorner_32 = Instance.new("UICorner")
    local ignore = Instance.new("TextLabel")
    local UICorner_33 = Instance.new("UICorner")
    local UIStroke = Instance.new("UIStroke")
    local UIStroke_2 = Instance.new("UIStroke")
    
    SG.Name = "SG"
    SG.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    SG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    SG.ResetOnSpawn = false
    
    Main.Name = "Main"
    Main.Parent = SG
    Main.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
    Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Main.BorderSizePixel = 0
    Main.Position = UDim2.new(0.34, 0,0.265, 0)
    Main.Size = UDim2.new(0, 610, 0, 377)
    Main.Active = true
    Main.Draggable = true
    
    Name.Name = "Name"
    Name.Parent = Main
    Name.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
    Name.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Name.BorderSizePixel = 0
    Name.Position = UDim2.new(0, 0, 0.0160854347, 0)
    Name.Size = UDim2.new(0, 610, 0, 25)
    Name.Font = Enum.Font.SourceSans
    Name.Text = "       Shitty Gui"
    Name.TextColor3 = Color3.fromRGB(255, 255, 255)
    Name.TextSize = 20.000
    Name.TextXAlignment = Enum.TextXAlignment.Left
    Name.TextYAlignment = Enum.TextYAlignment.Top
    
    UICorner.Parent = Main
    
    UIStroke.Parent = GuiSections 
    UIStroke.ApplyStrokeMode = "Border"
    UIStroke.Color = Color3.fromRGB(62, 62, 62)
    GuiSections.Name = "GuiSections"
    GuiSections.Parent = Main
    GuiSections.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    GuiSections.BackgroundTransparency = 1.000
    GuiSections.BorderColor3 = Color3.fromRGB(0, 0, 0)
    GuiSections.BorderSizePixel = 0
    GuiSections.Position = UDim2.new(0.189999998, 0, 0.100000001, 2)
    GuiSections.Size = UDim2.new(0, 488, 0, 326)
    
    UICorner_2.Parent = GuiSections
    
    Items.Name = "Items"
    Items.Parent = GuiSections
    Items.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Items.BackgroundTransparency = 1.000
    Items.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Items.BorderSizePixel = 0
    Items.Size = UDim2.new(0, 488, 0, 326)
    Items.Visible = false
    
    UICorner_3.Parent = Items
    
    GiveCure.Name = "GiveCure"
    GiveCure.Parent = Items
    GiveCure.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
    GiveCure.BorderColor3 = Color3.fromRGB(0, 0, 0)
    GiveCure.BorderSizePixel = 0
    GiveCure.Position = UDim2.new(0.001, 5,0.016, 0)
    GiveCure.Size = UDim2.new(0, 475, 0, 28)
    GiveCure.Font = Enum.Font.SourceSans
    GiveCure.Text = "Give Cure"
    GiveCure.TextColor3 = Color3.fromRGB(255, 255, 255)
    GiveCure.TextSize = 15.000
    GiveCure.MouseButton1Down:connect(function()
        game:GetService("ReplicatedStorage").Remotes.GiveCure:FireServer()
    end)
    
    UICorner_4.Parent = GiveCure
    
    UseCure.Name = "UseCure"
    UseCure.Parent = Items
    UseCure.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
    UseCure.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UseCure.BorderSizePixel = 0
    UseCure.Position = UDim2.new(0.001, 5,0.11, 2)
    UseCure.Size = UDim2.new(0, 475, 0, 28)
    UseCure.Font = Enum.Font.SourceSans
    UseCure.Text = "Use Cure"
    UseCure.TextColor3 = Color3.fromRGB(255, 255, 255)
    UseCure.TextSize = 15.000
    UseCure.MouseButton1Down:connect(function()
        game:GetService("Players").LocalPlayer.Backpack.Cure.UseSelf:FireServer()
    end)
    
    UICorner_5.Parent = UseCure
    
    GiveVirus.Name = "GiveVirus"
    GiveVirus.Parent = Items
    GiveVirus.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
    GiveVirus.BorderColor3 = Color3.fromRGB(0, 0, 0)
    GiveVirus.BorderSizePixel = 0
    GiveVirus.Position = UDim2.new(0.001, 5,0.21, 3) 
    GiveVirus.Size = UDim2.new(0, 475, 0, 28)
    GiveVirus.Font = Enum.Font.SourceSans
    GiveVirus.Text = "Give Virus"
    GiveVirus.TextColor3 = Color3.fromRGB(255, 255, 255)
    GiveVirus.TextSize = 15.000
    GiveVirus.MouseButton1Down:connect(function()
        game:GetService("ReplicatedStorage").Remotes.GiveVirus:FireServer()
    end)
    
    UICorner_6.Parent = GiveVirus
    
    UseVirus.Name = "UseVirus"
    UseVirus.Parent = Items
    UseVirus.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
    UseVirus.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UseVirus.BorderSizePixel = 0
    UseVirus.Position = UDim2.new(0.001, 5,0.3,6, 9)
    UseVirus.Size = UDim2.new(0, 475, 0, 28)
    UseVirus.Font = Enum.Font.SourceSans
    UseVirus.Text = "Use Virus"
    UseVirus.TextColor3 = Color3.fromRGB(255, 255, 255)
    UseVirus.TextSize = 15.000
    UseVirus.MouseButton1Down:connect(function()
        game:GetService("Players").LocalPlayer.Backpack.Virus.UseSelf:FireServer()
    end)
    
    UICorner_7.Parent = UseVirus
    
    GiveCureMachine.Name = "GiveCureMachine"
    GiveCureMachine.Parent = Items
    GiveCureMachine.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
    GiveCureMachine.BorderColor3 = Color3.fromRGB(0, 0, 0)
    GiveCureMachine.BorderSizePixel = 0
    GiveCureMachine.Position = UDim2.new(0.001, 5,0.4, 7, 9)
    GiveCureMachine.Size = UDim2.new(0, 475, 0, 28)
    GiveCureMachine.Font = Enum.Font.SourceSans
    GiveCureMachine.Text = "Give Cure Machine"
    GiveCureMachine.TextColor3 = Color3.fromRGB(255, 255, 255)
    GiveCureMachine.TextSize = 15.000
    GiveCureMachine.MouseButton1Down:connect(function()
        game.ReplicatedStorage:WaitForChild("LocalFolder").GamepassCureMachine.Parent = workspace
    end)
    
    UICorner_8.Parent = GiveCureMachine
    
    GiveVirusMachine.Name = "GiveVirusMachine"
    GiveVirusMachine.Parent = Items
    GiveVirusMachine.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
    GiveVirusMachine.BorderColor3 = Color3.fromRGB(0, 0, 0)
    GiveVirusMachine.BorderSizePixel = 0
    GiveVirusMachine.Position = UDim2.new(0.001, 5,0.5, 7)
    GiveVirusMachine.Size = UDim2.new(0, 475, 0, 28)
    GiveVirusMachine.Font = Enum.Font.SourceSans
    GiveVirusMachine.Text = "Give Virus Machine"
    GiveVirusMachine.TextColor3 = Color3.fromRGB(255, 255, 255)
    GiveVirusMachine.TextSize = 15.000
    GiveVirusMachine.MouseButton1Down:connect(function()
        game.ReplicatedStorage:WaitForChild("LocalFolder").GamepassVirusMachine.Parent = workspace
    end)
    
    UICorner_9.Parent = GiveVirusMachine
    
    Bypasses.Name = "Bypasses"
    Bypasses.Parent = GuiSections
    Bypasses.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Bypasses.BackgroundTransparency = 1.000
    Bypasses.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Bypasses.BorderSizePixel = 0
    Bypasses.Size = UDim2.new(0, 488, 0, 326)
    Bypasses.Visible = false
    
    UICorner_10.Parent = Bypasses
    
    WalkspeedBypass.Name = "WalkspeedBypass"
    WalkspeedBypass.Parent = Bypasses
    WalkspeedBypass.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
    WalkspeedBypass.BorderColor3 = Color3.fromRGB(0, 0, 0)
    WalkspeedBypass.BorderSizePixel = 0
    WalkspeedBypass.Position = UDim2.new(0.001, 5,0.016, 0)
    WalkspeedBypass.Size = UDim2.new(0, 475, 0, 28)
    WalkspeedBypass.Font = Enum.Font.SourceSans
    WalkspeedBypass.Text = "Walkspeed Bypass"
    WalkspeedBypass.TextColor3 = Color3.fromRGB(255, 255, 255)
    WalkspeedBypass.TextSize = 15.000
    WalkspeedBypass.MouseButton1Down:connect(function()
        for _, connection in getconnections(game.Players.LocalPlayer.Character.Humanoid:GetPropertyChangedSignal("WalkSpeed")) do
            connection:Disable()
        end
    end)
    
    UICorner_11.Parent = WalkspeedBypass
    
    RemoveAntiExploits.Name = "RemoveAntiExploits"
    RemoveAntiExploits.Parent = Bypasses
    RemoveAntiExploits.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
    RemoveAntiExploits.BorderColor3 = Color3.fromRGB(0, 0, 0)
    RemoveAntiExploits.BorderSizePixel = 0
    RemoveAntiExploits.Position = UDim2.new(0.001, 5,0.11, 2)
    RemoveAntiExploits.Size = UDim2.new(0, 475, 0, 28)
    RemoveAntiExploits.Font = Enum.Font.SourceSans
    RemoveAntiExploits.Text = "Remove Anti-Exploits"
    RemoveAntiExploits.TextColor3 = Color3.fromRGB(255, 255, 255)
    RemoveAntiExploits.TextSize = 15.000
    RemoveAntiExploits.MouseButton1Down:connect(function()
        game.Players.LocalPlayer.PlayerGui["PlayerLocalScripts(ReOnSp)"].AntiWeaponZone:Destroy()
        game.Players.LocalPlayer.PlayerGui["PlayerLocalScripts(ReOnSp)"].HumanOnlyDoor:Destroy()
    end)
    
    UICorner_12.Parent = RemoveAntiExploits
    
    NotFinishedAGB.Name = "NotFinishedAGB"
    NotFinishedAGB.Parent = Bypasses
    NotFinishedAGB.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
    NotFinishedAGB.BorderColor3 = Color3.fromRGB(0, 0, 0)
    NotFinishedAGB.BorderSizePixel = 0
    NotFinishedAGB.Position = UDim2.new(0.001, 5,0.21, 3)
    NotFinishedAGB.Size = UDim2.new(0, 475, 0, 28)
    NotFinishedAGB.Font = Enum.Font.SourceSans
    NotFinishedAGB.Text = "Not Finished"
    NotFinishedAGB.TextColor3 = Color3.fromRGB(255, 255, 255)
    NotFinishedAGB.TextSize = 15.000
    NotFinishedAGB.MouseButton1Down:connect(function()
        warn("Not finished")
    end)
    
    UICorner_13.Parent = NotFinishedAGB
    
    RemoveZSHBarriers.Name = "RemoveZSHBarriers"
    RemoveZSHBarriers.Parent = Bypasses
    RemoveZSHBarriers.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
    RemoveZSHBarriers.BorderColor3 = Color3.fromRGB(0, 0, 0)
    RemoveZSHBarriers.BorderSizePixel = 0
    RemoveZSHBarriers.Position = UDim2.new(0.001, 5,0.3,6, 9)
    RemoveZSHBarriers.Size = UDim2.new(0, 475, 0, 28)
    RemoveZSHBarriers.Font = Enum.Font.SourceSans
    RemoveZSHBarriers.Text = "Remove Zombie/Human Barriers"
    RemoveZSHBarriers.TextColor3 = Color3.fromRGB(255, 255, 255)
    RemoveZSHBarriers.TextSize = 15.000
    RemoveZSHBarriers.MouseButton1Down:connect(function()
        game.workspace.AntiGlitch.AntiZombie:Destroy()
        game.workspace.ZombieBlockers.Blocker:Destroy()
    end)
    
    UICorner_14.Parent = RemoveZSHBarriers
    
    FunStuff.Name = "FunStuff"
    FunStuff.Parent = GuiSections
    FunStuff.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    FunStuff.BackgroundTransparency = 1.000
    FunStuff.BorderColor3 = Color3.fromRGB(0, 0, 0)
    FunStuff.BorderSizePixel = 0
    FunStuff.Size = UDim2.new(0, 488, 0, 326)
    FunStuff.Visible = false
    
    UICorner_15.Parent = FunStuff
    
    GodGun.Name = "GodGun"
    GodGun.Parent = FunStuff
    GodGun.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
    GodGun.BorderColor3 = Color3.fromRGB(0, 0, 0)
    GodGun.BorderSizePixel = 0
    GodGun.Position = UDim2.new(0.001, 5,0.016, 0)
    GodGun.Size = UDim2.new(0, 475, 0, 28)
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
                NegaWatt.AmmoPerClip = math.huge
                NegaWatt.ReloadTime = 0
                NegaWatt.BaseDamage = 999
                NegaWatt.HeadshotDamageMultiplier = 999
                NegaWatt.Spread = 0
                NegaWatt.CameraShakingEnabled = false
                NegaWatt.BulletSpeed = 9e9
                NegaWatt.Piercing = 1
            end
        end
    
        for _, v in next, Faggot:GetChildren() do
            ModsRapeHim(v)
        end
        Faggot.ChildAdded:Connect(function(v)
            ModsRapeHim(v)
        end)
    end)
    
    UICorner_16.Parent = GodGun
    
    InfectAll.Name = "InfectAll"
    InfectAll.Parent = FunStuff
    InfectAll.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
    InfectAll.BorderColor3 = Color3.fromRGB(0, 0, 0)
    InfectAll.BorderSizePixel = 0
    InfectAll.Position = UDim2.new(0.001, 5,0.11, 2)
    InfectAll.Size = UDim2.new(0, 475, 0, 28)
    InfectAll.Font = Enum.Font.SourceSans
    InfectAll.Text = "Infect All"
    InfectAll.TextColor3 = Color3.fromRGB(255, 255, 255)
    InfectAll.TextSize = 15.000
    InfectAll.MouseButton1Down:connect(function()
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
    
    UICorner_17.Parent = InfectAll
    
    KillAllZombies.Name = "KillAllZombies"
    KillAllZombies.Parent = FunStuff
    KillAllZombies.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
    KillAllZombies.BorderColor3 = Color3.fromRGB(0, 0, 0)
    KillAllZombies.BorderSizePixel = 0
    KillAllZombies.Position = UDim2.new(0.001, 5,0.3,6, 9)
    KillAllZombies.Size = UDim2.new(0, 475, 0, 28)
    KillAllZombies.Font = Enum.Font.SourceSans
    KillAllZombies.Text = "Kill all Zombies"
    KillAllZombies.TextColor3 = Color3.fromRGB(255, 255, 255)
    KillAllZombies.TextSize = 15.000
    KillAllZombies.MouseButton1Down:connect(function()
        local remote = game:GetService("Players").LocalPlayer.Character.Pistol.GunScript_Server.InflictTarget
        local lplr = game.Players.LocalPlayer
    
        for _, v in game.Players:GetPlayers() do
            if lplr ~= v and v.Character and v.Team ~= lplr.Team and v.Character.PrimaryPart then
                remote:FireServer(
                    v.Character.Humanoid,
                    v.Character.HumanoidRootPart,
                    9e9,
                    CFrame.new((lplr.Character.Humanoid.Torso.CFrame * CFrame.new(0, 1.5, 0)).Position, v.Character.Humanoid.RootPart.Position).LookVector,
                    2,
                    0,
                    false
                )
            end
        end
    end)
    
    UICorner_18.Parent = KillAllZombies
    
    LagServer.Name = "LagServer"
    LagServer.Parent = FunStuff
    LagServer.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
    LagServer.BorderColor3 = Color3.fromRGB(0, 0, 0)
    LagServer.BorderSizePixel = 0
    LagServer.Position = UDim2.new(0.001, 5,0.4, 7, 9)
    LagServer.Size = UDim2.new(0, 475, 0, 28)
    LagServer.Font = Enum.Font.SourceSans
    LagServer.Text = "LagServer"
    LagServer.TextColor3 = Color3.fromRGB(255, 255, 255)
    LagServer.TextSize = 15.000
    LagServer.MouseButton1Down:connect(function()
        local remotes = {}
    
        local plrs = game:GetService("Players")
        
        for _, v in plrs:GetPlayers() do
            table.insert(remotes, v.Backpack:FindFirstChild("reload", true))
            if v.Character then
                table.insert(remotes, v.Character:FindFirstChild("reload", true))
            end
        end
        
        local chr = plrs.LocalPlayer.Character
        local pistol = chr.Pistol
        local con
        
        game:GetService("NetworkClient"):SetOutgoingKBPSLimit(math.huge)
        
        while true do
            if pistol.Parent ~= chr then con:Disconnect() end
            for _, v in remotes do
                if v then
                    coroutine.wrap(function()
                        v:FireServer()
                    end)()
                end
            end
            task.wait(.03)
        end
    end)
    
    UICorner_19.Parent = LagServer
    
    NotFinishedMA.Name = "Not FinishedMA"
    NotFinishedMA.Parent = FunStuff
    NotFinishedMA.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
    NotFinishedMA.BorderColor3 = Color3.fromRGB(0, 0, 0)
    NotFinishedMA.BorderSizePixel = 0
    NotFinishedMA.Position = UDim2.new(0.001, 5,0.21, 3)
    NotFinishedMA.Size = UDim2.new(0, 475, 0, 28)
    NotFinishedMA.Font = Enum.Font.SourceSans
    NotFinishedMA.Text = "Not Finished"
    NotFinishedMA.TextColor3 = Color3.fromRGB(255, 255, 255)
    NotFinishedMA.TextSize = 15.000
    NotFinishedMA.MouseButton1Down:connect(function()
        warn("Not finished")
    end)
    
    UICorner_20.Parent = NotFinishedMA
    
    RandomShit.Name = "RandomShit"
    RandomShit.Parent = GuiSections
    RandomShit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    RandomShit.BackgroundTransparency = 1.000
    RandomShit.BorderColor3 = Color3.fromRGB(0, 0, 0)
    RandomShit.BorderSizePixel = 0
    RandomShit.Size = UDim2.new(0, 488, 0, 326)
    RandomShit.Visible = false
    
    UICorner_21.Parent = RandomShit
    
    Ragdoll.Name = "Ragdoll"
    Ragdoll.Parent = RandomShit
    Ragdoll.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
    Ragdoll.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Ragdoll.BorderSizePixel = 0
    Ragdoll.Position = UDim2.new(0.001, 5,0.016, 0)
    Ragdoll.Size = UDim2.new(0, 475, 0, 28)
    Ragdoll.Font = Enum.Font.SourceSans
    Ragdoll.Text = "Ragdoll"
    Ragdoll.TextColor3 = Color3.fromRGB(255, 255, 255)
    Ragdoll.TextSize = 15.000
    Ragdoll.MouseButton1Down:connect(function()
        game:GetService("ReplicatedStorage").Remotes.ChangeState:FireServer("Ragdoll")
    end)
    
    UICorner_22.Parent = Ragdoll
    
    UnRagdoll.Name = "UnRagdoll"
    UnRagdoll.Parent = RandomShit
    UnRagdoll.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
    UnRagdoll.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UnRagdoll.BorderSizePixel = 0
    UnRagdoll.Position = UDim2.new(0.001, 5,0.11, 2)
    UnRagdoll.Size = UDim2.new(0, 475, 0, 28)
    UnRagdoll.Font = Enum.Font.SourceSans
    UnRagdoll.Text = "UnRagdoll"
    UnRagdoll.TextColor3 = Color3.fromRGB(255, 255, 255)
    UnRagdoll.TextSize = 15.000
    UnRagdoll.MouseButton1Down:connect(function()
        game:GetService("ReplicatedStorage").Remotes.ChangeState:FireServer("Ragdoll")
    end)
    
    
    UICorner_23.Parent = UnRagdoll
    
    CureRandom.Name = "CureRandom"
    CureRandom.Parent = RandomShit
    CureRandom.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
    CureRandom.BorderColor3 = Color3.fromRGB(0, 0, 0)
    CureRandom.BorderSizePixel = 0
    CureRandom.Position = UDim2.new(0.001, 5,0.21, 3)
    CureRandom.Size = UDim2.new(0, 475, 0, 28)
    CureRandom.Font = Enum.Font.SourceSans
    CureRandom.Text = "Cure Random"
    CureRandom.TextColor3 = Color3.fromRGB(255, 255, 255)
    CureRandom.TextSize = 15.000
    CureRandom.MouseButton1Down:connect(function()
        local lplr = game.Players.LocalPlayer
    
        lplr.Character.Cure.Activated:Connect(function()
        for _, v in game.Players:GetPlayers() do
            if lplr ~= v and v.Character and v.Team == Teams.Zombie and v.Character.PrimaryPart then
             firetouchinterest(lplr.Character.Cure.Handle, v.Character.PrimaryPart, 0)
             firetouchinterest(lplr.Character.Cure.Handle, v.Character.PrimaryPart, 1)
            end
        end
    end)
    end)
    
    UICorner_24.Parent = CureRandom
    
    InfectRandom.Name = "InfectRandom"
    InfectRandom.Parent = RandomShit
    InfectRandom.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
    InfectRandom.BorderColor3 = Color3.fromRGB(0, 0, 0)
    InfectRandom.BorderSizePixel = 0
    InfectRandom.Position = UDim2.new(0.001, 5,0.3,6, 9)
    InfectRandom.Size = UDim2.new(0, 475, 0, 28)
    InfectRandom.Font = Enum.Font.SourceSans
    InfectRandom.Text = "Infect Random"
    InfectRandom.TextColor3 = Color3.fromRGB(255, 255, 255)
    InfectRandom.TextSize = 15.000
    InfectRandom.MouseButton1Down:connect(function()
        local lplr = game.Players.LocalPlayer
    
        lplr.Character.Virus.Activated:Connect(function()
        for _, v in game.Players:GetPlayers() do
            if lplr ~= v and v.Character and v.Character.PrimaryPart then
             firetouchinterest(lplr.Character.Virus.Handle, v.Character.PrimaryPart, 0)
             firetouchinterest(lplr.Character.Virus.Handle, v.Character.PrimaryPart, 1)
            end
        end
    end)
    end)
    
    UICorner_25.Parent = InfectRandom
    
    KillYourself.Name = "KillYourself"
    KillYourself.Parent = RandomShit
    KillYourself.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
    KillYourself.BorderColor3 = Color3.fromRGB(0, 0, 0)
    KillYourself.BorderSizePixel = 0
    KillYourself.Position = UDim2.new(0.001, 5,0.4, 7, 9)
    KillYourself.Size = UDim2.new(0, 475, 0, 28)
    KillYourself.Font = Enum.Font.SourceSans
    KillYourself.Text = "Kill Yourself"
    KillYourself.TextColor3 = Color3.fromRGB(255, 255, 255)
    KillYourself.TextSize = 15.000
    KillYourself.MouseButton1Down:connect(function()
        game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState(Enum.HumanoidStateType.Dead)
    end)
    
    UICorner_26.Parent = KillYourself
    
    UIStroke_2.Parent = ListBox 
    UIStroke_2.ApplyStrokeMode = "Border"
    UIStroke_2.Color = Color3.fromRGB(62, 62, 62)
    ListBox.Name = "ListBox"
    ListBox.Parent = Main
    ListBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ListBox.BackgroundTransparency = 1.000
    ListBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ListBox.BorderSizePixel = 0
    ListBox.Position = UDim2.new(0, 5, 0.100000031, 2)
    ListBox.Size = UDim2.new(0, 107, 0, 326)
    
    UICorner_27.Parent = ListBox
    
    BypassesButton.Name = "BypassesButton"
    BypassesButton.Parent = ListBox
    BypassesButton.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
    BypassesButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    BypassesButton.BorderSizePixel = 0
    BypassesButton.Position = UDim2.new(0.0409999378, 0, 0.0755950361, 15)
    BypassesButton.Size = UDim2.new(0, 98, 0, 28)
    BypassesButton.Font = Enum.Font.SourceSans
    BypassesButton.Text = "Bypasses"
    BypassesButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    BypassesButton.TextSize = 17.000
    BypassesButton.TextWrapped = true
    BypassesButton.MouseButton1Down:connect(function()
        Items.Visible = false
        Bypasses.Visible = true
        FunStuff.Visible = false
        RandomShit.Visible = false
    end)
    
    UICorner_28.Parent = BypassesButton
    
    RandomShitButton.Name = "RandomShitButton"
    RandomShitButton.Parent = ListBox
    RandomShitButton.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
    RandomShitButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    RandomShitButton.BorderSizePixel = 0
    RandomShitButton.Position = UDim2.new(0.0409999378, 0, 0.31559509, 4)
    RandomShitButton.Size = UDim2.new(0, 98, 0, 28)
    RandomShitButton.Font = Enum.Font.SourceSans
    RandomShitButton.Text = "Random Shit"
    RandomShitButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    RandomShitButton.TextSize = 17.000
    RandomShitButton.MouseButton1Down:connect(function()
        Items.Visible = false
        Bypasses.Visible = false
        FunStuff.Visible = false
        RandomShit.Visible = true
    end)
    
    UICorner_29.Parent = RandomShitButton
    
    ItemsButton.Name = "ItemsButton"
    ItemsButton.Parent = ListBox
    ItemsButton.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
    ItemsButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ItemsButton.BorderSizePixel = 0
    ItemsButton.Position = UDim2.new(0.0409999378, 0, 0.0155951381, 0)
    ItemsButton.Size = UDim2.new(0, 98, 0, 28)
    ItemsButton.Font = Enum.Font.SourceSans
    ItemsButton.Text = "Items"
    ItemsButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    ItemsButton.TextSize = 17.000
    ItemsButton.MouseButton1Down:connect(function()
        Items.Visible = true
        Bypasses.Visible = false
        FunStuff.Visible = false
        RandomShit.Visible = false
    end)
    
    UICorner_30.Parent = ItemsButton
    
    FunStuffButton.Name = "FunStuffButton"
    FunStuffButton.Parent = ListBox
    FunStuffButton.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
    FunStuffButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    FunStuffButton.BorderSizePixel = 0
    FunStuffButton.Position = UDim2.new(0.0409999378, 0, 0.175595149, 16)
    FunStuffButton.Size = UDim2.new(0, 98, 0, 28)
    FunStuffButton.Font = Enum.Font.SourceSans
    FunStuffButton.Text = "Fun Stuff"
    FunStuffButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    FunStuffButton.TextSize = 17.000
    FunStuffButton.MouseButton1Down:connect(function()
        Items.Visible = false
        Bypasses.Visible = false
        FunStuff.Visible = true
        RandomShit.Visible = false
    end)
    
    UICorner_31.Parent = FunStuffButton
    
    RemoveGui.Name = "RemoveGui"
    RemoveGui.Parent = Main
    RemoveGui.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
    RemoveGui.BorderColor3 = Color3.fromRGB(0, 0, 0)
    RemoveGui.BorderSizePixel = 0
    RemoveGui.Position = UDim2.new(0.948000014, 0, 0.00999999978, 0)
    RemoveGui.Size = UDim2.new(0, 25, 0, 24)
    RemoveGui.Font = Enum.Font.SourceSans
    RemoveGui.Text = "X"
    RemoveGui.TextColor3 = Color3.fromRGB(255, 255, 255)
    RemoveGui.TextSize = 20.000
    RemoveGui.TextYAlignment = Enum.TextYAlignment.Bottom
    RemoveGui.MouseButton1Down:connect(function()
        game.Players.LocalPlayer.PlayerGui.SG:Destroy()
    end)
    
    UICorner_32.Parent = RemoveGui
    
    ignore.Name = "ignore"
    ignore.Parent = Main
    ignore.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
    ignore.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ignore.BorderSizePixel = 0
    ignore.Size = UDim2.new(0, 610, 0, 6)
    ignore.Font = Enum.Font.SourceSans
    ignore.Text = ""
    ignore.TextColor3 = Color3.fromRGB(0, 0, 0)
    ignore.TextSize = 14.000
    
    UICorner_33.Parent = ignore
    
    local main = Main
    local Opened = true
    
    local PositionClosed = UDim2.new(0.34, 0,1, 5)
    local PositionOpened = UDim2.new(0.34, 0,0.265, 0)
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
    
    getgenv().SG = SG
return end
return end
