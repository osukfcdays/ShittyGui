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
    -- tabs.Player:CreateButton("Disable Client Anticheat", function()
    -- for _, c in getconnections(lplr.Character.Humanoid:GetPropertyChangedSignal("WalkSpeed")) do
    --     c:Disable()
    -- end
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

    -- end)
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
        assert(gun, "you dont have a gun")

        local mod = gun:FindFirstChild("Setting")
        assert(mod, "your gun is broken")
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
        gui:Notify("Gamepass machines are found in spawn room")
    end)
end