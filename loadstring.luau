repo = "https://raw.githubusercontent.com/osukfcdays/zlfucker/refs/heads/main/"
dev = isfolder("zlfucker")
loadstring((dev and readfile("zlfucker/.luau")) or request({
    Url = repo .. ".luau"
}).Body)()