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
        print(APset.Autoparry)
    elseif APset.Autoparry.Enabled == true then
        APset.Autoparry.Enabled = false;
        Window:CreateNotification('KarpiWare', 'Autoparry Disabled', 3)
        print(APset.Autoparry)
    end
end)

-- Cooldown
Window:AddCommand('Cooldown', {'Amount'}, 'Min-0 Max-1 Autoparry cooldown', function(Arguments, Speaker)
    val = tonumber(Arguments[1])
    if val > 1 then
        APset.Autoparry.Debounce = 1
        Window:CreateNotification('KarpiWare', 'Cooldown changed to 1', 3)
        print(APset.Autoparry)
    elseif val < 0 then
        APset.Autoparry.Debounce = 0
        Window:CreateNotification('KarpiWare', 'Cooldown changed to 0', 3)
        print(APset.Autoparry)
    elseif val <= 1 and val >= 0 then
        APset.Autoparry.Debounce = val
        Window:CreateNotification('KarpiWare', 'Cooldown changed to '..val, 3)
        print(APset.Autoparry)
    end
end)

-- ConstantRange
Window:AddCommand('ConstantRange', {'Amount'}, 'Min-0 Max-30 Constant Range [Studs]', function(Arguments, Speaker)
    val = tonumber(Arguments[1])
    if val > 30 then
        APset.Autoparry.ConstantRange = 30
        Window:CreateNotification('KarpiWare', 'Cooldown changed to 30', 3)
        print(APset.Autoparry)
    elseif val < 0 then
        APset.Autoparry.ConstantRange = 0
        Window:CreateNotification('KarpiWare', 'Cooldown changed to 0', 3)
        print(APset.Autoparry)
    elseif val <= 30 and val >= 0 then
        APset.Autoparry.ConstantRange = val
        Window:CreateNotification('KarpiWare', 'Cooldown changed to '..val, 3)
        print(APset.Autoparry)
    end
end)

-- TimedRange
Window:AddCommand('TimedRange', {'Amount'}, 'Min-0 Max-1 Timed Range [Seconds]', function(Arguments, Speaker)
    val = tonumber(Arguments[1])
    if val > 1 then
        APset.Autoparry.Range = 1
        Window:CreateNotification('KarpiWare', 'Timed Range changed to 1', 3)
        print(APset.Autoparry)
    elseif val < 0 then
        APset.Autoparry.Range = 0
        Window:CreateNotification('KarpiWare', 'Timed Range changed to 0', 3)
        print(APset.Autoparry)
    elseif val <= 1 and val >= 0 then
        APset.Autoparry.Range = val
        Window:CreateNotification('KarpiWare', 'Timed Range changed to '..val, 3)
        print(APset.Autoparry)
    end
end)

-- Aura
Window:AddCommand('Aura', {}, 'Blatant aura, rejoin to stop', function(Arguments, Speaker)
    Window:CreateNotification('KarpiWare', 'Enabled Aura', 3)
    print(APset.Autoparry)
    local function getspeed()
        for i,v in pairs(game.Workspace.Balls:GetChildren()) do 
            if v.zoomies.VectorVelocity ~= empty then
                return v.zoomies.VectorVelocity;
            end
        end
    end
    game.Workspace.Balls.ChildAdded:Connect(function(v)
        v.Changed:Connect(function(prop)
            if getspeed().X > getspeed().Z then 
                char.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0,5,10);
            else 
                char.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(10,5,0);
            end
            cam.CameraSubject = v
            if prop == "BrickColor" and v[prop] == color then
                while v[prop] == color and v and char.Humanoid.Health ~= 0 do 
                    cnt = 0
                    hit:FireServer(0.5,cam.CFrame,{},game.Workspace.Balls:GetChildren())
                    while v.BrickColor == color and cnt ~= 20 do cnt += 1 task.wait() end
                end
                task.wait()
            end;
        end);
    end);
end)

local hitcd = false
	
	function counter()
		task.wait(APset.Autoparry.Cooldown)
		hitcd = false
	end
    game.Workspace.Balls.ChildAdded:Connect(function(v)
        v:GetPropertyChangedSignal("BrickColor"):Connect(function()
			if v.BrickColor ~= color then 
				hitcd = false
			end
		end)
		v:GetPropertyChangedSignal("Position"):Connect(function()
            if APset.Autoparry.Toggle and v["BrickColor"] == color then
				if (estimateTime(v) < APset.Autoparry.Range or getdistance(v) < APset.Autoparry.ConstantRange) and not hitcd then 
					hitcd = true
					task.spawn(counter)
					print("Hit",APset.Autoparry.Range,APset.Autoparry.ConstantRange,APset.Autoparry.Cooldown)
					hit:FireServer(0.5,CFrame.new(),{},{})
				end
			end
			task.wait()
		end)
    end)
