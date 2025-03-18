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

local getGun = function()
    local res = plrs.LocalPlayer.Backpack:FindFirstChild("Gun", true) or plrs.LocalPlayer.Character:FindFirstChild("Gun", true)
    return ((res and res.Parent) or nil)
end

local getKnife = function()
    local res = plrs.LocalPlayer.Backpack:FindFirstChild("SecondaryEquipment", true) or plrs.LocalPlayer.Character:FindFirstChild("SecondaryEquipment", true)
    return ((res and res.Parent) or nil)
end

tabs.Player:CreateButton("Disable Anticheat Mitigations", function()
    for _, c in getconnections(plrs.LocalPlayer.Character.Humanoid:GetPropertyChangedSignal("WalkSpeed")) do
        c:Disable()
    end
    
    for _, v in {starGui:FindFirstChild("PlayerLocalScripts(ReOnSp)"), plrs.LocalPlayer.PlayerGui:FindFirstChild("PlayerLocalScripts(ReOnSp)")} do
        if v then
            for _, v in v:GetChildren() do
                if v.ClassName == "LocalScript" then
                    v:Destroy()
                end
            end
        end
    end
end)

do
    local godGunConfig = {
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
    local noCoolDownGunConfig = table.clone(godGunConfig)
    noCoolDownGunConfig.Auto = false
    noCoolDownGunConfig.FireRate = 0

    local modGun = function(conf)
        local gun = getGun()
        assert(gun, "you dont have a gun")

        local mod = gun:FindFirstChild("Setting")
        assert(mod, "your gun is broken")
        mod = require(mod)

        for i, v in conf do
            mod[i] = v
        end

        if gun.Parent == plrs.LocalPlayer.Character then
            plrs.LocalPlayer.Character.Humanoid:UnequipTools()
            plrs.LocalPlayer.Character.Humanoid:EquipTool(gun)
        end
    end

    tabs.Player:CreateButton("PUTTHEGUNDOWN Gun", modGun, noCoolDownGunConfig)
    tabs.Player:CreateButton("God Gun", modGun, godGunConfig)
end

do
    local itemRemotes = {
        Virus = game:GetService("ReplicatedStorage").Remotes.GiveVirus,
        Cure = game:GetService("ReplicatedStorage").Remotes.GiveCure
    }

    for i, v in itemRemotes do
        tabs.Items:CreateButton("Give " .. i, v.FireServer, v)
    end

    for i, v in itemRemotes do
        tabs.Player:CreateButton(i .. " Me", function()
            v.FireServer(v)
            plrs.LocalPlayer.Backpack:WaitForChild(i):WaitForChild("UseSelf"):FireServer()
        end)
    end
end