local tabs = {
    Client = true,
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
    return (res or nil)
end

local getKnife = function()
    local res = plrs.LocalPlayer.Backpack:FindFirstChild("SecondaryEquipment", true) or plrs.LocalPlayer.Character:FindFirstChild("SecondaryEquipment", true)
    return (res or nil)
end

tabs.Client:CreateButton("Disable Client Mitigations", function()
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