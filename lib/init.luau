local gitRepo = "https://raw.githubusercontent.com/osukfcdays/zlfucker/refs/heads/main/"
local httpServ = cloneref(game:GetService("HttpService"))
local genId = newcclosure(function()
    return httpServ.GenerateGUID(httpServ, false)
end)

local lib
if isfolder("zlfucker") then
    export_file = "zlfucker/lib/export.rbxm"
    lib = loadfile("zlfucker/lib/gui.luau")()
else
    local id = genId()
    writefile(id, request({
        Url = gitRepo .. "lib/export.rbxm"
    }).Body)
    export_file = id
    lib = loadstring(request({
        Url = gitRepo .. "lib/gui.luau"
    }).Body)()
    delfile(id)
end

return lib