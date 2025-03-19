local emptyFunc = function() end
local cons = gui.cons
local tabs = {
    Player = true,
    Server = true,
    Items = true,
    Extra = true
}

for i, v in tabs do
    tabs[i] = gui:CreateTab(i)
end

local plrs : Players = cloneref(game:GetService("Players"))
local starGui : StarterGui = cloneref(game:GetService("StarterGui"))
local starPlr : StarterPlayer = cloneref(game:GetService("StarterPlayer"))
local rStor : ReplicatedStorage = cloneref(game:GetService("ReplicatedStorage"))
local runServ : RunService = cloneref(game:GetService("RunService"))
local Teams = game:GetService("Teams")

local lplr = plrs.LocalPlayer
local pStats = lplr:WaitForChild("stats")

local getGun = function()
    local res = lplr.Backpack:FindFirstChild("Gun", true) or lplr.Character:FindFirstChild("Gun", true)
    return ((res and res.Parent) or nil)
end

local getKnife = function()
    local res = lplr.Backpack:FindFirstChild("SecondaryEquipment", true) or lplr.Character:FindFirstChild("SecondaryEquipment", true)
    return ((res and res.Parent) or nil)
end

do
    local blacklistedScripts = {
        "States",
        "Anti-Exploits"
    }

    if lplr.Character then
        for _, v in blacklistedScripts do
            if lplr.Character:FindFirstChild(v) then
                lplr.Character[v]:Destroy()
            end
        end
    end
    table.insert(cons, lplr.CharacterAdded:Connect(function(chr)
        for _, v in blacklistedScripts do
            chr:WaitForChild(v):Destroy()
        end
    end))
end

tabs.Player:CreateButton("Destroy Zones", function()
    for _, v in {starGui:FindFirstChild("PlayerLocalScripts(ReOnSp)"), lplr.PlayerGui:FindFirstChild("PlayerLocalScripts(ReOnSp)")} do
        if v then
            for _, v in v:GetChildren() do
                if v.ClassName == "LocalScript" then
                    v:Destroy()
                end
            end
        end
    end

    workspace.AntiGlitch:Destroy()
    workspace.ZombieBlockers:Destroy()
    workspace["Map Wall"].BaseWalls:Destroy()
end)

tabs.Player:CreateButton("Walkspeed Bypass", function()
    for _, c in getconnections(lplr.Character.Humanoid:GetPropertyChangedSignal("WalkSpeed")) do
        c:Disable()
    end
end)

do
    local godGun = {
        FireRate = 0.03,
        Auto = true,
        AmmoPerClip = math.huge,
        ReloadTime = 0,
        BaseDamage = 999,
        HeadshotDamageMultiplier = 999,
        Spread = 0,
        CameraShakingEnabled = false,
        BulletSpeed = 9e9,
        Piercing = 1
    }
    local spamGun = table.clone(godGun)
    spamGun.Auto = false
    spamGun.FireRate = 0

    local modGun = function(conf)
        local gun = getGun()
        assert(gun, "You dont have a gun")

        local mod = gun:FindFirstChild("Setting")
        assert(mod, "Your gun is broken")
        mod = require(mod)

        for i, v in conf do
            mod[i] = v
        end

        if gun.Parent == lplr.Character then
            lplr.Character.Humanoid:UnequipTools()
            lplr.Character.Humanoid:EquipTool(gun)
        end
    end

    tabs.Player:CreateButton("Spam Gun", modGun, spamGun)
    tabs.Player:CreateButton("God Gun", modGun, godGun)
end

local itemFuncs = {
    Virus = emptyFunc,
    Cure = emptyFunc
}
do
    local itemRemotes = {
        Virus = game:GetService("ReplicatedStorage").Remotes.GiveVirus,
        Cure = game:GetService("ReplicatedStorage").Remotes.GiveCure
    }

    for i, v in itemRemotes do
        tabs.Items:CreateButton("Give " .. i, v.FireServer, v)

        itemFuncs[i] = function()
            -- if not plrs.LocalPlayer.Backpack:FindFirstChild(i) then
                v.FireServer(v)
            -- end
            local res = plrs.LocalPlayer.Backpack:WaitForChild(i, 1)
            if res then
                plrs.LocalPlayer.Backpack[i].Name ..= "_used"
                res:WaitForChild("UseSelf"):FireServer()
            else
                itemFuncs[i]()
            end
        end
        tabs.Player:CreateButton("Use " .. i, itemFuncs[i])
    end

    local tCons = {}
    tabs.Extra:CreateToggle("Cure Autofarm", function(callback)
        if callback then
            local changed = true
            table.insert(tCons, pStats.Credits:GetPropertyChangedSignal("Value"):Connect(function()
                changed = true
            end))

            table.insert(tCons, runServ.PreRender:Connect(function()
                if changed then
                    changed = false
                    itemFuncs.Cure()
                end
            end))

            for _, v in tCons do
                table.insert(cons, v)
            end
        elseif #tCons > 0 then
            for _, v in tCons do
                v:Disconnect()
            end
            table.clear(tCons)
        end
    end)
end

do
    tabs.Extra:CreateButton("Unlock Gamepass Machines", function()
        for _, v in rStor.LocalFolder:GetChildren() do
            if v.ClassName == "Model" then
                v.Parent = workspace
            end
        end
        gui:Notify("Gamepass Machines can be found in Spawn")
    end)
end

tabs.Extra:CreateToggle("Ragdoll", function()
    local Event = rStor.Remotes:FindFirstChild("ChangeState")
    Event:FireServer("Ragdoll")
end)

tabs.Server:CreateButton("Infect Humans", function()
    if lplr.Team == Teams.Zombie and not lplr.Character:FindFirstChild("Infect") then gui:Notify("Equip your Infect tool") end
    if lplr.Team == Teams.Zombie then 
        lplr.Character.Infect.Activated:Connect(function()
        for _, v in game.Players:GetPlayers() do
            if lplr ~= v and v.Character and v.Team ~= lplr.Team and v.Character.PrimaryPart then
            firetouchinterest(lplr.Character.RightHand, v.Character.PrimaryPart, 0)
            firetouchinterest(lplr.Character.RightHand, v.Character.PrimaryPart, 1)
        end
        end
        end)
    else
        gui:Notify("You need to be a Zombie")
    end
end)

tabs.Server:CreateButton("Kill all Zombies", function()
    if lplr.Team == Teams.Human then
        local remote = lplr.Backpack:FindFirstChild("InflictTarget", true) or lplr.Character:FindFirstChild("InflictTarget", true)

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
    else
        gui:Notify("You need to be Human")
end)

tabs.Server:CreateButton("Lag Server", function(callback)   
    if lplr.Team == teams.Human then
        local remotes = {}
        
        local gun = game.Players.LocalPlayer.Character:FindFirstChild("Gun", true) 
        gun = (gun and gun.Parent) or gun
        
        if not gun then gui:Notify("Equip your Gun") end
        
        for _, v in plrs:GetPlayers() do
            table.insert(remotes, v.Backpack:FindFirstChild("reload", true))
            if v.Character then
                table.insert(remotes, v.Character:FindFirstChild("reload", true))
            end
        end
        local chr = plrs.LocalPlayer.Character
        local pistol = gun
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
    else
        gui:Notify("You need to be human")
    end
end)

tabs.Server:CreateButton("God Humans", function()
    local remote = plrs:FindFirstChild("InflictTarget", true) or workspace:FindFirstChild("InflictTarget", true)

    if lplr.Team == Teams.Zombie and remote then
        for _, v in game.Players:GetPlayers() do
            if v.Character and v.Character.PrimaryPart then
                remote:FireServer(
                    v.Character.Humanoid,
                    v.Character.HumanoidRootPart,
                    tonumber("nan"),
                    Vector3.zero,
                    2,
                    0,
                    false
                )
            end
        end
    else
        gui:Notify("You need to be a Zombie")
    end
end)

tabs.Server:CreateButton("God Zombies", function()
    local remote = plrs:FindFirstChild("InflictTarget", true) or workspace:FindFirstChild("InflictTarget", true)

    if lplr.Team == Teams.Human and remote then
        for _, v in game.Players:GetPlayers() do
            if lplr ~= v and v.Character and v.Team ~= lplr.Team and v.Character.PrimaryPart then
                remote:FireServer(
                    v.Character.Humanoid,
                    v.Character.HumanoidRootPart,
                    tonumber("nan"),
                    CFrame.new((lplr.Character.Humanoid.Torso.CFrame * CFrame.new(0, 1.5, 0)).Position, v.Character.Humanoid.RootPart.Position).LookVector,
                    2,
                    0,
                    false
                )
            end
        end

        for _, v in game.workspace.Zombies:GetChildren() do
            if v.Humanoid and v.HumanoidRootPart then
                remote:FireServer(
                    v.Humanoid,
                    v.HumanoidRootPart,
                    tonumber("nan"),
                    2,
                    0,
                    false
                )
            end
        end
    else
        gui:Notify("You need to be a Human") 
    end
end)
