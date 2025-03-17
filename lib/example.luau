if getgenv().exampleLib then
    getgenv().exampleLib:Destruct()
end

local lib = loadstring((dev and readfile("zlfucker/lib/init.luau")) or request({
    Url = "https://raw.githubusercontent.com/osukfcdays/zlfucker/refs/heads/main/lib/init.luau"
}).Body)()
local gui = lib:CreateGui("example gui")
getgenv().exampleLib = gui

for i = 1, 10 do
    local tab = gui:CreateTab(string.sub("tab example", 1, i))
    for i = 1, math.random(1, 10) do
        local btn = tab:CreateButton(string.sub("button example", 1, i), function()
            print("this really is ONLY a button")
        end)
    end
end