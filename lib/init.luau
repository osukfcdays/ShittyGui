local gitRepo = "https://raw.githubusercontent.com/osukfcdays/zlfucker/refs/heads/main/"

export_file = writefile("temp", request({
    Url = gitRepo .. "lib/export.rbxm"
}).Body)
local lib = gitRepo .. "lib/gui.luau"
delfile("temp")

return lib