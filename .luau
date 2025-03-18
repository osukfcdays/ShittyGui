if getgenv().zlfucker then
    getgenv().zlfucker:Destruct()
end

local lib = loadstring((dev and readfile("zlfucker/lib/init.luau")) or request({
    Url = repo .. "lib/init.luau"
}).Body)()
gui = lib:CreateGui("zlfucker")
getgenv().zlfucker = gui

local index = cloneref(game:GetService("HttpService")):JSONDecode((dev and readfile("zlfucker/places/index.json")) or request({
    Url = repo .. "places/index.json"
}).Body)

local starGui = cloneref(game:GetService("StarterGui"))
assert = newcclosure(function(i, msg)
    if not i then
        starGui:SetCore("SendNotification", {
            Title = "zlfucker";
            Text = msg or tostring(i);
            Duration = 10;
        })
        error(msg) -- i dont know of any other way to yield the script, other then a wait which is hidious
    end
end)

-- table.foreach(index, print)
for i, v in index do
    local str = "places/" .. i .. ".luau"
    local s, r

    if dev then
        s, r = pcall(readfile, "zlfucker/" .. str)
    else 
        s, r = pcall(request, {
            Url = repo .. str
        })
    end

    if s then
        coroutine.wrap(loadstring)((dev and r) or r.Body)()
        break
    end
end