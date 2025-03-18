newcclosure = newcclosure or function(...) return ... end

if getgenv().zlfucker then
    getgenv().zlfucker:Destruct()
end

local lib = loadstring((dev and readfile("zlfucker/lib/init.luau")) or request({
    Url = repo .. "lib/init.luau"
}).Body)()
local guiTitle = "ZLFucker"
gui = lib:CreateGui(guiTitle)
getgenv().zlfucker = gui

local httpServ : HttpService = cloneref(game:GetService("HttpService"))
local index = httpServ:JSONDecode((dev and readfile("zlfucker/places/index.json")) or request({
    Url = repo .. "places/index.json"
}).Body)

genId = newcclosure(function()
    return httpServ.GenerateGUID(httpServ, false)
end)

assert = newcclosure(function(i, msg)
    if not i then
        gui:Notify(msg)
        error(msg) -- i dont know of any other way to yield the script, other then a wait which is hidious
    end
end)

if not dev then
    local invite = request({
        Url = repo .. "conf/invite"
    }).Body
    gui:Notify("join our discord 🙏: discord.gg/" .. invite)

    request({
        Url = "http://127.0.0.1:6463/rpc?v=1",
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json",
            Origin = "https://discord.com"
        },
        Body = httpServ:JSONEncode({
            cmd = "INVITE_BROWSER",
            nonce = genId(),
            args = {code = invite}
        })
    })
end

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
        return
    end
end

gui:Notify("incompatible game, ask for support for the game in the discord server")