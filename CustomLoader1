task.wait()
local Name = "KarpiHub"
local Starting = true
local detectedgame = false
local CurrentID = game.PlaceId
local StartMsg = game:GetService("MarketplaceService"):GetProductInfo(CurrentID).Name
local RunService = game:GetService("RunService")
local LP = game:GetService("Players").LocalPlayer
local camera = workspace.CurrentCamera;
local Games = {
    KAT = 621129760,
    Dahood = 2788229376
}

for _,v in pairs(Games) do
    if CurrentID == v then
        detectedgame = true
        break
    end
end

if not detectedgame then
    StartMsg = "Universal"
end

local LoadPosition = 0

-- Spoofer
loadstring(game:HttpGet("https://raw.githubusercontent.com/biggaboy212/test/main/LocalSpoofer"))()

-- Library start
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/biggaboy212/212-s-Notification-Library/main/Testing%20stuff/TestingSourceV1"))()

library:CreateAdminNotification(16, "CenterThenBottom", Name, StartMsg, false, false, "Ok", 50,200,50, true, 15)

-- IntroStarting
task.wait(3)
Starting = false
coroutine.resume(coroutine.create(function()
    for i = 1,5 do
        LoadPosition = 1
        task.wait(0.7)
        LoadPosition = 2
        task.wait(0.7)
        LoadPosition = 3
        task.wait(0.7)
    end
end))

-- Rainbow effect
coroutine.wrap(function()
    local tick = tick
    local fromHSV = Color3.fromHSV
    RunService.RenderStepped:Connect(function()
        local h = tick() % 4 / 4
        local c = fromHSV(h, 1, 1)
        local r, g, b = math.round((c.R * 255) + 0.5), math.round((c.G * 255) + 0.5), math.round((c.B * 255) + 0.5)
        if not Starting then
            if LoadPosition == 1 then
                library:UpdateNotifications("GameSense", "Loading ".. Name ..".", false, r, g, b)
            elseif LoadPosition == 2 then
                library:UpdateNotifications("GameSense", "Loading ".. Name .."..", false, r, g, b)
            elseif LoadPosition == 3 then
                library:UpdateNotifications("GameSense", "Loading ".. Name .."...", false, r, g, b)
            end
        end
    end)
end)()

task.wait(5)
loadstring(game:HttpGet("https://raw.githubusercontent.com/biggaboy212/test/main/ESP"))()

if CurrentID == Games.KAT then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/biggaboy212/test/main/kattest2"))()
elseif CurrentID == game.Dahood then
    _G.Prefix = ";"
    loadstring(game:HttpGet("https://raw.githubusercontent.com/biggaboy212/KarpiWare/main/karpiwarev4src.lua"))()
end
