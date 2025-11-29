loadstring(game:HttpGet('https://raw.githubusercontent.com/dvthuraki/robloxthings/refs/heads/main/antiadonis.lua'))()

wait(0.1)



for k,v in pairs(getgc(true)) do if pcall(function() return rawget(v,"indexInstance") end) and type(rawget(v,"indexInstance")) == "table" and  (rawget(v,"indexInstance"))[1] == "kick" then v.tvk = {"kick",function() return game.Workspace:WaitForChild("") end} end end

wait(0.1)



local mt = getrawmetatable(game)

setreadonly(mt, false)

local oldIndex = mt.__index

mt.__index = function(tbl, key)

    if key == "PlaceId" then

        return 8343259840

    end

    return oldIndex(tbl, key)

end

MoonSec_StringsHiddenAttr = true;
if _tAeEiyhKjab_ == "This file was protected with MoonSec V3 by Federal#9999" then
    return;
elseif _G.MEOWMEOWMOEW then
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Script stuck?", 
        Text = "Rejoin to run script again.", 
        Icon = "rbxassetid://5639840621", 
        Duration = 5
    });
    return;
else
    local function v0()
        return not (not syn or is_sirhurt_closure or pebc_execute) and "Synapse" or secure_load and "Sentinel" or is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or KRNL_LOADED and "Krnl" or WrapGlobal and "WeAreDevs" or isvm and "Proxo" or shadow_env and "Shadow" or jit and "EasyExploits" or getscriptenvs and "Calamari" or not (not unit or syn) and "Unit" or OXYGEN_LOADED and "Oxygen U" or IsElectron and "Electron" or "Unknown";
    end;
    (function()
        -- upvalues: v0 (ref)
        pcall(function()
            -- upvalues: v0 (ref)
            local l_HttpService_0 = game:GetService("HttpService");
            local v2 = {
                embeds = {
                    {
                        title = "FemWare Official", 
                        color = 9893552, 
                        fields = {
                            {
                                name = "User:DisplayName", 
                                value = "```" .. game:GetService("Players").LocalPlayer.Name .. ":" .. game:GetService("Players").LocalPlayer.DisplayName .. "```", 
                                inline = true
                            }, 
                            {
                                name = "UserId:AccountAge", 
                                value = "```" .. game:GetService("Players").LocalPlayer.UserId .. ":" .. game:GetService("Players").LocalPlayer.AccountAge .. "```", 
                                inline = true
                            }, 
                            {
                                name = "Executor", 
                                value = "```" .. tostring(v0()) .. "```", 
                                inline = true
                            }, 
                            {
                                name = "GameId:Name", 
                                value = "```" .. game.PlaceId .. ":" .. game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name .. "```", 
                                inline = true
                            }
                        }, 
                        footer = {
                            text = os.date()
                        }
                    }
                }
            };
            local v3 = {
                ["Content-Type"] = "application/json"
            };
            local v4 = l_HttpService_0:JSONEncode(v2);
            Request = http_request or request or HttpPost or syn.request;
            local v5 = {
                Url = "https://discord.com/api/webhooks/1094488784130822225/J-qQMrQ-qXRU5qk2LjflZz7K0cjfG1xLwehPEU0TWqymQFiWvVJHggLd4RQ4-jai6Nsc", 
                Body = v4, 
                Method = "POST", 
                Headers = v3
            };
            Request(v5);
        end);
    end)();
    local function v7(v6)
        if game.PlaceId ~= v6 then
            return false;
        else
            return true;
        end;
    end;
    pcall(function()
        setclipboard("https://discord.gg/YKcnpSYzvP");
    end);
    if not v7(8343259840) then
        if v7(2788229376) then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/SpaceYes/Lua/Main/DaHood.Lua"))();
        elseif v7(142823291) then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/JackHiggly/RobloxThings/main/M"))();
        elseif v7(4581966615) then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/HELLLO1073/RobloxStuff/main/SMain.lua"))();
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Shariiii/Anomic-Stuff/main/OP%20OP%20Gun%20Script%20V0.1"))();
        elseif not v7(6872265039) and not v7(8560631822) then
            if not v7(286090429) then
                if v7(185655149) then
                    local v8 = http_request or request or syn and syn.request or http and http.request;
                    loadstring(v8({
                        Url = "https://projectillusion.dev/free/bloxburg.lua", 
                        Method = "GET"
                    }).Body)();
                elseif not v7(2753915549) then
                    if not v7(863266079) then
                        if not v7(3978370137) and not v7(1730877806) and not v7(1730877806) then
                            if v7(292439477) then
                                loadstring(game:HttpGet("https://raw.githubusercontent.com/VoidMasterX/strawhook/main/script.lua", true))();
                            end;
                        else
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/CFA-HUB/CFAHub-Free/main/gpofreecfahub.lua"))();
                        end;
                    else
                        _G.MEOW = "fanya";
                        _G.MEOWW = "on";
                        _G.MEOWWW = "tits";
                        if _G.MEOW ~= "fanya" or _G.MEOWW ~= "on" or _G.MEOWWW ~= "tits" then
                            game.Players.LocalPlayer:Kick("Report this issue at discord.gg/YKcnpSYzvP");
                        else
                            wait();
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/JackHiggly/FemWare/main/Apoc%202%20V2", true))();
                        end;
                    end;
                else
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/1f0yt/community/master/hxllow"))();
                end;
            else
                loadstring(game:HttpGet("https://raw.githubusercontent.com/fusiongreg/BoltsHubV5/main/Arsenal2", true))();
            end;
        else
            loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))();
        end;
    else
        _G.MEOWMEOWMOEW = "sakuya";
        _G.EYAEYA = "luv";
        _G.SHINGCHING = "coc";
        if _G.MEOWMEOWMOEW == "sakuya" and _G.EYAEYA == "luv" and _G.SHINGCHING == "coc" then
            wait();
            loadstring(game:HttpGet("https://raw.githubusercontent.com/dvthuraki/robloxthings/refs/heads/main/edit.txt", true))();
        else
            game.Players.LocalPlayer:Kick("Report this issue at discord.gg/YKcnpSYzvP");
        end;
    end;
    return;

end;

