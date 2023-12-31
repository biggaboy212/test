_G.Prefix = ";" --  Key to open command bar

local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/VisualRoblox/Roblox/main/UI-Libraries/Visual%20Command%20UI%20Library/Source.lua', true))()

local savedtheme = nil
local Window = Library:CreateWindow({
    Name = 'KarpiWare V4',
    IntroText = 'Proton Utilities | KarpiWare V4',
    IntroIcon = 'rbxassetid://0',
    IntroBlur = true,
    IntroBlurIntensity = 15,
    Theme =  Library.Themes.scriptware,
    Position = 'Bottom',
    Draggable = true,
    Prefix = _G.Prefix
})

local HttpService = game:GetService("HttpService");
local file = "karpi_ware_settings.txt";

function load()
	print("loading sets")
	if (readfile and isfile and isfile(file)) then
        print('file found, loading settings')
		savedtheme = HttpService:JSONDecode(readfile(file));
		Window:ChangeTheme(savedtheme)
        Window:CreateNotification('KarpiWare', 'Loaded saved theme')
	end
end

function save(tosave)
    print("saving sets")
    local json;
    if (writefile) then
    json = HttpService:JSONEncode(tosave)
    writefile(file, json);
    print("saved sets")
    else
        print("writefile function dosen't exist on this executor")
    end
end

load()

local plr = game.Players.LocalPlayer
local char = plr.Character
local hrp = char.HumanoidRootPart
local color = BrickColor.new("Really red");
local empty = Vector3.new();
local hit = game.ReplicatedStorage.Remotes.ParryAttempt;
local cam = workspace.CurrentCamera;
local APset = {
    Autoparry = {
        Enabled = false,
        Debounce = 0.1,
        Range = 0.05,
        ConstantRange = 5
    }
};

function getspeed()
    for i,v in pairs(game.Workspace.Balls:GetChildren()) do 
        if v.zoomies.VectorVelocity ~= empty then
            return v.zoomies.VectorVelocity.Magnitude;
        end
    end
end
function estimateTime(ball)
    return (getspeed() and getdistance(ball) / getspeed()) or 69 
end;

function getdistance(ball)
    return (ball.Position - hrp.Position).Magnitude
end

Window:AddCommand('ChangeTheme', {'Theme'}, 'Dark, Light, Red, Orange, Purple, Blue', function(Arguments, Speaker)
    if Arguments[1] == "Dark" then
        Window:ChangeTheme('dark')
        save('dark')
    elseif Arguments[1] == "dark" then
        Window:ChangeTheme('dark')
        save('dark')
    elseif Arguments[1] == "Light" then
        Window:ChangeTheme('light')
        save('light')
    elseif Arguments[1] == "Red" then
        Window:ChangeTheme('redandblack')
        save('redandblack')
    elseif Arguments[1] == "Orange" then
        Window:ChangeTheme('kiriot')
        save('kiriot')
    elseif Arguments[1] == "Purple" then
        Window:ChangeTheme('purple')
        save('purple')
    elseif Arguments[1] == "Blue" then
        Window:ChangeTheme('scriptware')
        save('scriptware')
    elseif Arguments[1] == "light" then
        Window:ChangeTheme('light')
        save('light')
    elseif Arguments[1] == "red" then
        Window:ChangeTheme('redandblack')
        save('redandblack')
    elseif Arguments[1] == "orange" then
        Window:ChangeTheme('kiriot')
        save('kiriot')
    elseif Arguments[1] == "purple" then
        Window:ChangeTheme('purple')
        save('purple')
    elseif Arguments[1] == "blue" then
        Window:ChangeTheme('scriptware')
        save('scriptware')
    end
end)


Window:AddCommand('Discord', {}, 'Copies discord link', function(Arguments, Speaker)
    setclipboard("https://discord.gg/sbZNGNVdE9")
    Window:CreateNotification('KarpiWare', 'Copied Discord link')
end)

-- Autoparry
Window:AddCommand('Autoparry', {}, 'Autoparry Toggle, hits the ball automatically', function(Arguments, Speaker)
    if APset.Autoparry.Enabled == false then
        APset.Autoparry.Enabled = true
        Window:CreateNotification('KarpiWare', 'Autoparry Enabled', 3)
    elseif APset.Autoparry.Enabled == true then
        APset.Autoparry.Enabled = false;
        Window:CreateNotification('KarpiWare', 'Autoparry Disabled', 3)
    end
end)

-- Cooldown
Window:AddCommand('Cooldown', {'Amount'}, 'Min-0 Max-1 Autoparry cooldown', function(Arguments, Speaker)
    if Arguments[1] > 1 then
        Window:CreateNotification('KarpiWare', '!! Min-0 Max-1 !!', 3)
    elseif Arguments[1] < 0 then
        Window:CreateNotification('KarpiWare', '!! Min-0 Max-1 !!', 3)
    elseif Arguments[1] < 1 and Arguments[1] > 0 then
        APset.Autoparry.Debounce = Arguments[1]
        Window:CreateNotification('KarpiWare', 'Cooldown changed to '..Arguments[1], 3)
    end
end)
