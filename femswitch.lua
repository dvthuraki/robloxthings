loadstring(game:HttpGet('https://raw.githubusercontent.com/dvthuraki/robloxthings/refs/heads/main/antiadonis.lua'))()
wait(0.1)

local mt = getrawmetatable(game)
setreadonly(mt, false)

local oldIndex = mt.__index

mt.__index = function(tbl, key)
    if key == "PlaceId" then
        return 8343259840 -- write the fake ID you will show here
    end
    return oldIndex(tbl, key)
end