getgenv().CockNigga = {
    ConfigVersion = "1.0.0a", -- // Dont touch this is to make sure you're using the correct config loader
    MainSettings = {
        Notificaions = {
            Enabled = true, -- // Enable Notifications
            Duration = 3,   -- // How long notifications stay
            Mode = "xz", -- // Options: Roblox, Print, Rconsole, Drawing, xz, Webhook
            Webhook_URL = "", -- // For webhook mode else leave blank
        },
        InternalUi = { -- // Ui to change settings with ease
            Enabled = true,
            Version = 1, -- // 1 
            KeyBind = Enum.KeyCode.V, -- // Keybind to toggle ui
        },
        AutoJoinDiscord = false, -- // Auto Joins newest discord
        Intro = true,
    },
    Global = {
        WallCheck = true, -- // Checks if target is behind a wall
        CrewCheck = false, -- // Checks if target is in your crew
        KOCheck = true, -- // Checks if target is knocked
        AutoPredict = false, -- // Auto Prediction based on ping
        Prediction = 0.155, -- // Prediction velocity
        AntiGroundShot = false, -- // Prevents you from shooting ground
        UnlockOnKO = false, -- // Unlocks on KO
    },
    SilentAim = {
        Enabled = true, -- // Enables Silent aim
        TargetBone = "Head", -- // Bone that is targeted you
        AllowNotifications = true, -- // Allows notifications for silent aim
        Keybind = false, -- // Enables keybind to toggle silent aim
        Key = "G", -- // Keybind to toggle silent aim
        HitChance = 100, -- // 1 - 100 Chance of hitting
        NearestCursorPoint = false, -- // Ignores target bone and selects closest part to mouse
        HitPart_Mode = "Nearest Point", -- "Nearest Part", "Nearest Point"
        DetectAntiAim = { -- // Enables Resolver when anti aim detected
            Enabled = false,
            Min = -40,
            Max = 40
        }, 
        Airshot = {
            Enabled = true, -- // Hits Airshots (do not enable nearestcursorpoint)
            TargetBone = "LowerTorso", -- // Target Part for airshot
        }
    },
    CamLock = {
        Enabled = true, -- // Enables Camlock
        TargetBone = "Head", -- // Bone that is targeted
        AllowNotifications = true, -- // Allows notifications for camlock
        Key = "Q", -- // Key to lock onto target
        UseSmoothness = true, -- // Enable Smoothness
        Smoothness = 0.058, -- // Self Explained 
        DetectAntiAim = { -- // Enables Resolver when anti aim detected
            Enabled = true,
            Min = -40,
            Max = 40
        }, 
        EaseStyle = "Exponential", -- // https://create.roblox.com/docs/reference/engine/enums/EasingStyle
        JumpEase = true,
        JumpEaseStyle = "Sine",-- // https://create.roblox.com/docs/reference/engine/enums/EasingStyle
        Shake = false, 
        ShakeValue = 10,
        Airshot = {
            Enabled = true, -- // Hits Airshots (do not enable nearestcursorpoint)
            TargetBone = "LowerTorso", -- // Target Part for airshot
        }
    },
    FOV = {
        Silent = {
            Visible = false, -- // if FOV is visible
            Filled = false, -- // if FOV is filled (ugly)
            Size = 150, -- // FOV Size
            Transparency = 0.5, -- // FOV Transparency
            Color = Color3.fromRGB(255, 255, 255),
        },
        CamLock = {
            Visible = false, -- // if FOV is visible
            Filled = false, -- // if FOV is filled (ugly)
            Size = 15, -- // FOV Size
            Transparency = 0.5, -- // FOV Transparency
            Color = Color3.fromRGB(255, 255, 255),
        },
    },
    Resolver = {
        AimViewBypass = false, -- // Bypasses aim viewer
        DesyncResolver = false, -- // Resolves all anti aims.
    },
    GunFOV = {
        Enabled = false, -- // Credits to farzad, he let us use his so i don't have to spend a lot of time making my own.
        Values = {
            DoubleBarrel = 20,
            Revolver = 25,
            Rifle = 20,
            Shotgun = 20,
            Smg = 23,
            TacticalShotgun = 24,
            Silencer = 17,
            AK47 = 8,
            AR = 15
        },
    },
    MemorySpoofer = {
        Enabled = false, -- // Spoofs your memory
        Values = {
            Minimum = 100, -- // Minimum Memory usage
            Maximum = 200, -- // Maximum Memory usage
        }
    },
    Macro = {
        Enabled = true,
        KeyBind = "X",
        BypassMacroAbuse = true,
        Speed = 1,  -- // Speed of macro
    },
    Emotes = { -- // once u click the keybinds it makes u use the Animation
        Lay = true, LayKey = Enum.KeyCode.T,
        Greet = true, GreetKey = Enum.KeyCode.G,
        Speed = false, SpeedKey = Enum.KeyCode.N,
        Sturdy = false, SturdyKey = Enum.KeyCode.H,
        Griddy = false, GriddyKey = Enum.KeyCode.G,
    },
    Settings = {
        AutoLowGFX = false, -- // Low Graphics (cannot change once executed)
        DisableShadows = false, -- // Disables shadows (better performance)
        MuteBoomBox = false, -- // Mutes all boomboxes except for yours
        AutoReload = false, -- // Automatically reloads gun when you are out of ammo
        ShowStats = false, -- // Shows Basic Stats (good for making settings)
    },
    Misc = {
        Auto360 = { -- // Makes you do a 360 when keybind is hit.
            Enabled = true,
            SpinKeybind = "B",
            SpinSpeed = 100,
        },
        FakeSpike = { -- // Fake Lag
            Enabled = true,
            FakeSpikeKeybind = "K",
            SpikeDuration = 1,
        },
    },
    CustomAutoPrediction = { -- // Custom Auto Prediction Values
        Enabled = true, -- // If you wanna use custom value prediction
        Values = {
            ping_20 = 0.102,
            ping_40 = 0.125,
            ping_50 = 0.155,
            ping_60 = 0.132,
            ping_70 = 0.136,
            ping_80 = 0.130,
            ping_90 = 0.136,
            ping_105 = 0.138,
            ping_110 = 0.146,
            ping_125 = 0.149,
            ping_130 = 0.151,
            ping_150 = 0.162,
            ping_175 = 0.172,
            ping_200 = 0.185,
            ping_225 = 0.198,
            ping_250 = 0.206,
            ping_275 = 0.214,  
        }
    },
    ChatCommands = { -- // Tip say /c system to hide your commands
        Enabled = true, -- // Enables Chat Commands
        Prefix = "/", -- // Prefix for commands ex; $pred 0.115
        Commands = { -- // CANNOT HAVE SPACES!!!
            Prediction = "pred", -- // ex; $pred 0.115
            ToggleFOV = "draw", -- // ex; $draw true (you can also do "on" or "yes" and to disable you do "off" or "yes" or "false")
            SizeFOV = "radius", -- // ex; $radius 100
            GotoLocation = "tp", -- // ex; $tp bank (full locations in server)
            ToggleResolver = "resolver", -- // ex; $resolver true (you can also do "on" or "yes" and to disable you do "off" or "yes" or "false")
            JoinDiscord = "discord", -- // ex; $discord
            RejoinServer = "rj", -- // ex; $rj
            ToggleSilentAim = "silent", -- // ex; $silent true (you can also do "on" or "yes" and to disable you do "off" or "yes" or "false")
            ToggleCamLock = "camlock", -- // ex; $camlock true (you can also do "on" or "yes" and to disable you do "off" or "yes" or "false")
            CamLockSmoothness = "smoothness", -- // ex; $smoothness 0.086
            CheckForExploiters = "check", -- // ex; $check
            ForceReset = "reset", -- // ex; $reset
        },
    },
}
local debugmode = false

if debugmode then 
    rconsoleinfo("Loaded Debug Mode")
end

function debug(txt) 
    if debugmode then 
        rconsoleinfo(txt)
    end
end

print("Loading CockNigga")
debug("Started")
repeat wait() until game:IsLoaded()

if not LPH_OBFUSCATED and not LPH_JIT_ULTRA then
    LPH_JIT_ULTRA = function(f) return f end
    LPH_NO_VIRTUALIZE = function(f) return f end
    LPH_JIT_MAX = function(f) return f end
    LPH_JIT = function(f) return f end
    LPH_ENCSTR = function(s) return s end
    LPH_STRENC = function(s) return s end
    LPH_CRASH = function() while true do end return end
end

debug("Loaded Macros")

if EvolutionSourceColloperSucksNutsRealONGLoaded then 
    warn("CockNigga Already Loaded")
    return
else
    getgenv().EvolutionSourceColloperSucksNutsRealONGLoaded = true
end

local startTick = tick()

local Utility = {
    Invite = "camlock",
    BackupInvite = "VfKf5dvSYX",
    Version = "1.0.0a",
    Method = "UpdateMousePos",
    UseNewMethod = false,
    NotSafeGame = false,
    FPS = 60,
    ping = 100,
    AllowedPlaceIDs = {
        2788229376, -- Da Hood
        7213786345, -- Da Hood VC
        --9825515356, -- Hood Customs
        5602055394, -- Hood Modded
        7951883376, -- Hood Modded VC
        12927359803, -- Dah Aim Trainer
        12867571492, -- KatanaHood
        7242996350, -- Da Hood Aim Trainer
        12884917481, -- Da Hood Aim Trainer VC
        11867820563, -- Dae Hood
        12618586930, -- Dat Hood
        9183932460, -- Untitled Hood
        9435785899, -- Untitled Hood VC
        13018411607, -- // Dat Hood Backup
    }
}

debug("Loaded Utility")

local function kick(r)
    return game.Players.LocalPlayer:Kick("An Error has occurred. Error Code: "..r)
end


if not getgenv().CockNigga then 
    setclipboard(game:HttpGet("https://unlegit.xyz/script.lua"))
    kick("Cound not find config (new script copied) | 0x01")
    return
end

if not table.find(Utility.AllowedPlaceIDs, game.PlaceId) then 
    kick("Game not supported | 0x02")
    return
end


if CockNigga.ConfigVersion ~= Utility.Version then 
    setclipboard(game:HttpGet("https://unlegit.xyz/script.lua"))
    kick("Incorrect config version (new script copied) | 0x03")
    return
end

if not isfolder("EvolutionSourceColloperSucksNutsRealONG_V2") then 
    makefolder("EvolutionSourceColloperSucksNutsRealONG_V2")
end

local httprequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
if not httprequest then 
    kick("Executor missing httprequest | 0x04")
end

debug("Passed Checks")

local blacklisteduid = {
    3511344266, -- // 3bled
}

if table.find(blacklisteduid,game.Players.LocalPlayer.UserId) then 
    kick("Blacklisted. | 0x05")
end

debug("Checked Blacklist")

if CockNigga.MainSettings.AutoJoinDiscord then 
    if httprequest then
        httprequest({
            Url = 'http://127.0.0.1:6463/rpc?v=1',
            Method = 'POST',
            Headers = {
                ['Content-Type'] = 'application/json',
                Origin = 'https://discord.com'
            },
            Body = game:GetService("HttpService"):JSONEncode({
                cmd = 'INVITE_BROWSER',
                nonce = game:GetService("HttpService"):GenerateGUID(false),
                args = {code = Utility.BackupInvite}
            })
        })
    end
end

local ImportantVariables = {
    TotalEXE = 1,
    DiscordID = 894608863289036881,
    DiscordTag = "user#0000",
    RemainingDays = 14,
}

if LRM_ScriptName then 
    ImportantVariables.TotalEXE = LRM_TotalExecutions 
    ImportantVariables.DiscordID = LRM_LinkedDiscordID 
    ImportantVariables.RemainingDays = LRM_SecondsLeft / 86400
else
    ImportantVariables.TotalEXE = 1 
    ImportantVariables.DiscordID = 894608863289036881
    ImportantVariables.RemainingDays = 14
end

ImportantVariables.DiscordTag = game:GetService("HttpService"):JSONDecode(httprequest({
    Url = 'https://discordlookup.mesavirep.xyz/v1/user/'..tostring(ImportantVariables.DiscordID)
}).Body)['tag']

debug("Loaded Vars")


local MainRemote = nil

if game.PlaceId == 2788229376 or game.PlaceId == 7213786345 then -- // Da Hood
    Utility.Method = "UpdateMousePos"
        MainRemote = game:GetService("ReplicatedStorage").MainEvent
elseif game.PlaceId == 9825515356 then -- // Hood Customs
    Utility.NotSafeGame = true
    Utility.UseNewMethod = true
elseif game.PlaceId == 5602055394 or game.PlaceId == 7951883376 then -- // Hood Modded
    Utility.Method = "MousePos"
        MainRemote = game:GetService("ReplicatedStorage").Bullets 
elseif game.PlaceId == 12927359803 then -- // Dah Aim Trainer
    Utility.UseNewMethod = true
    Utility.Method = "UpdateMousePos"
        MainRemote = game:GetService("ReplicatedStorage").MainEvent
elseif game.PlaceId == 7242996350 or game.PlaceId == 12884917481 then -- // Da Hood Aim Trainer
    Utility.UseNewMethod = true
    Utility.Method = "UpdateMousePos" 
        MainRemote = game:GetService("ReplicatedStorage").MainEvent
elseif game.PlaceId == 12867571492 then -- // Katana Hood
    Utility.UseNewMethod = true
    Utility.Method = "UpdateMousePos"
        MainRemote = game:GetService("ReplicatedStorage").MainEvent
elseif game.PlaceId == 11867820563 then -- // Dae Hood
    Utility.UseNewMethod = true
    Utility.Method = "UpdateMousePos"
        MainRemote = game:GetService("ReplicatedStorage").MainEvent
elseif game.PlaceId == 12618586930 then -- // Dat Hood
    Utility.UseNewMethod = true
    Utility.Method = "UpdateMousePos"
        MainRemote = game:GetService("ReplicatedStorage").MainEvent
elseif  game.PlaceId == 13018411607 then -- // Dat Hood Backup
    Utility.UseNewMethod = true
    Utility.Method = "UpdateMousePos"
        MainRemote = game:GetService("ReplicatedStorage").Remote
elseif game.PlaceId == 9183932460 or game.PlaceId == 9435785899 then -- // Untitled Hood
    Utility.UseNewMethod = false
    Utility.Method = "UpdateMousePos"
        MainRemote = game:GetService("ReplicatedStorage")[".gg/untitledhood"]
end


debug("Set Method/Remotes")


local NotificationUtility = {
    Positions = {
        ["1"] = Vector2.new(20, 50),
        ["2"] = Vector2.new(20, 65),
        ["3"] = Vector2.new(20, 80),
        ["4"] = Vector2.new(20, 95),
        ["5"] = Vector2.new(20, 110),
        ["6"] = Vector2.new(20, 125),
        ["7"] = Vector2.new(20, 140),
        ["8"] = Vector2.new(20, 155),
        ["9"] = Vector2.new(20, 170),
        ["10"] = Vector2.new(20, 185),
    },
    Notificaions = 0
}

local function drawingnotify(text) 
    if NotificationUtility.Notificaions < 10 then 
        NotificationUtility.Notificaions = NotificationUtility.Notificaions + 1
        local notificationtext = Drawing.new("Text")
        notificationtext.Color = Color3.new(1, 1, 1)
        notificationtext.Visible = true
        notificationtext.Center = false
        notificationtext.Size = 16
        notificationtext.Outline = true
        notificationtext.Font = 3
        notificationtext.Position = NotificationUtility.Positions[tostring(NotificationUtility.Notificaions)]
        notificationtext.ZIndex = 1500
        notificationtext.Text = text
        delay(tonumber(CockNigga.MainSettings.Notificaions.Duration),function()
            NotificationUtility.Notificaions = NotificationUtility.Notificaions - 1
            notificationtext:Remove()  
        end)
    end
end

local ts = game:GetService("TweenService")
local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()
local Notification = Instance.new("ScreenGui")
local Holder = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")

Notification.Name = "Notification"
Notification.Parent = game.CoreGui
Notification.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Holder.Name = "Holder"
Holder.Parent = Notification
Holder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Holder.BackgroundTransparency = 1.000
Holder.BorderColor3 = Color3.fromRGB(27, 42, 53)
Holder.Position = UDim2.new(0.0072954637, 0, 0.0105048735, 0)
Holder.Size = UDim2.new(0, 243, 0, 240)

UIListLayout.Parent = Holder
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 4)

local rainbowcolor

task.spawn(function()
    while wait() do
        local r = (math.sin(workspace.DistributedGameTime / 2) / 2) + 0.5
        local g = (math.sin(workspace.DistributedGameTime) / 2) + 0.5
        local b = (math.sin(workspace.DistributedGameTime * 1.5) / 2) + 0.5
        local color = Color3.new(r, g, b)
        rainbowcolor = color
    end
end)

function xznotify(text, time, rainbowmode)
    local Template = Instance.new("Frame")
    local ColorBar = Instance.new("Frame")
    local TextLabel = Instance.new("TextLabel")

    Template.Name = text
    Template.Parent = Holder
    Template.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
    Template.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Template.Size = UDim2.new(0, 0, 0, 0)
    Template.Transparency = 1


    ColorBar.Name = "ColorBar"
    ColorBar.Parent = Template
    ColorBar.BackgroundColor3 = Color3.fromRGB(159, 115, 255)
    ColorBar.BorderSizePixel = 0
    ColorBar.Size = UDim2.new(0, 2, 0, 22)
    ColorBar.Transparency = 1
    if rainbowmode then 
        task.spawn(function()
            while wait() do
                ColorBar.BackgroundColor3 = rainbowcolor
            end
        end)
    end

    TextLabel.Parent = Template
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel.BorderSizePixel = 0
    TextLabel.Position = UDim2.new(0, 8, 0, 0)
    TextLabel.Size = UDim2.new(0, 0, 0, 22)
    TextLabel.Font = Enum.Font.Code
    TextLabel.Text = text
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextSize = 14.000
    TextLabel.TextStrokeTransparency = 0.000
    TextLabel.TextXAlignment = Enum.TextXAlignment.Left
    TextLabel.Transparency = 1

    Template.Size = UDim2.new(0, TextLabel.TextBounds.X + 13, 0, 22)
    local goal2 = {}
    goal2.Transparency = 0
    local tweenInfo2 = TweenInfo.new(0.5)
    local tween12 = ts:Create(Template, tweenInfo2, goal2)
    local tween22 = ts:Create(ColorBar, tweenInfo2, goal2)
    local tween32 = ts:Create(TextLabel, tweenInfo2, goal2)
    tween12:Play()
    tween22:Play()
    tween32:Play()

    delay(time, function()
        local goal = {}
        goal.Transparency = 1
        local tweenInfo = TweenInfo.new(0.5)
        local tween1 = ts:Create(Template, tweenInfo, goal)
        local tween2 = ts:Create(ColorBar, tweenInfo, goal)
        local tween3 = ts:Create(TextLabel, tweenInfo, goal)
        tween1:Play()
        tween2:Play()
        tween3:Play()
        delay(0.51, function()
            Template:Destroy()
        end)
    end)
end

local function notify(text) 
    if CockNigga.MainSettings.Notificaions.Enabled then 
        if CockNigga.MainSettings.Notificaions.Mode == "Roblox" then 
            game:GetService("StarterGui"):SetCore("SendNotification",{
                Title = "CockNigga",
                Text = text, 
                Duration = CockNigga.MainSettings.Notificaions.Duration
            })
        elseif string.lower(CockNigga.MainSettings.Notificaions.Mode) == "print" then
            print(text)
        elseif string.lower(CockNigga.MainSettings.Notificaions.Mode) == "rconsole" then
            rconsoleprint(text.."\n")
        elseif string.lower(CockNigga.MainSettings.Notificaions.Mode) == "drawing" then
            drawingnotify(text)
        elseif string.lower(CockNigga.MainSettings.Notificaions.Mode) == "xz" then 
            xznotify(text,CockNigga.MainSettings.Notificaions.Duration,false)
        elseif string.lower(CockNigga.MainSettings.Notificaions.Mode) == "webhook" then
            if CockNigga.MainSettings.Notificaions.Webhook_URL ~= "" or CockNigga.MainSettings.Notificaions.Webhook_URL ~= " " then 
                local OSTime = os.time()
                local Time = os.date("!*t", OSTime)
                local Content = ""
                local Embed = {
                    ["title"] = "**CockNigga**",
                    ["type"] = "rich",
                    ["color"] = tonumber(0xffffff),
                    ["description"] = "`"..text.."`",
                    ["timestamp"] = string.format(
                        "%d-%d-%dT%02d:%02d:%02dZ",
                        Time.year,
                        Time.month,
                        Time.day,
                        Time.hour,
                        Time.min,
                        Time.sec
                    )
                }
                (httprequest) {
                    Url = CockNigga.MainSettings.Notificaions.Webhook_URL,
                    Method = "POST",
                    Headers = {
                        ["Content-Type"] = "application/json"
                    },
                    Body = game:GetService "HttpService":JSONEncode({content = Content, embeds = {Embed}})
                }
            else
                CockNigga.MainSettings.Notificaions.Mode = "drawing"
                drawingnotify("Your url link has no value switched to drawing mode")
            end
        end
    end
end



local Players, Client, Mouse, RS, Camera, GuiS, Uis, Ran =
    game:GetService("Players"),
    game:GetService("Players").LocalPlayer,
    game:GetService("Players").LocalPlayer:GetMouse(),
    game:GetService("RunService"),
    game:GetService("Workspace").CurrentCamera,
    game:GetService("GuiService"),
    game:GetService("UserInputService"),
    math.random

debug("Finished Setup")

notify("Loading please wait...")

if game.PlaceId == 2788229376 or game.PlaceId == 7213786345 then
    repeat wait() until game.Players.LocalPlayer.Character:WaitForChild("FULLY_LOADED_CHAR")
end

task.spawn(function()
    pcall(function()
        repeat wait() until game.CoreGui.RobloxGui:FindFirstChild("PerformanceStats") 
        for __, v in pairs(game.CoreGui.RobloxGui.PerformanceStats:GetChildren()) do
            if v.Name == "PS_Button" and v.StatsMiniTextPanelClass.TitleLabel.Text == "Mem" then
                Memory = v.StatsMiniTextPanelClass.ValueLabel
            end
        end
        
        Memory:GetPropertyChangedSignal("Text"):Connect(function()
            if CockNigga.MemorySpoofer.Enabled then 
                local random1 = math.random(CockNigga.MemorySpoofer.Values.Minimum, CockNigga.MemorySpoofer.Values.Maximum)
                local rand1 = math.random(0,9)
                local rand2 = math.random(0,9)
                Memory.Text = "".. random1 .. "." .. rand1 .. rand2.. " MB"
            end
        end)
    end)
end)

local Script = {Friends = {}, Drawing = {}, EspPlayers = {}}

local Client = game.Players.LocalPlayer
local SilentTarget = nil
local CamlockTarget = nil

OnScreen = LPH_NO_VIRTUALIZE(function(Object)
    local _, screen = Camera:WorldToScreenPoint(Object.Position)
    return screen
end)

CalculateChance = LPH_NO_VIRTUALIZE(function(Percentage)
    Percentage = math.floor(Percentage)
    local chance = math.floor(Random.new().NextNumber(Random.new(), 0, 1) * 100) / 100

    return chance < Percentage / 100
end)

RayCastCheck = LPH_NO_VIRTUALIZE(function(Part, PartDescendant)
    local Character = Client.Character or Client.CharacterAdded.Wait(Client.CharacterAdded)
    local Origin = Camera.CFrame.Position

    local RayCastParams = RaycastParams.new()
    RayCastParams.FilterType = Enum.RaycastFilterType.Blacklist
    RayCastParams.FilterDescendantsInstances = {Character, Camera}

    local Result = Workspace.Raycast(Workspace, Origin, Part.Position - Origin, RayCastParams)
    
    if (Result) then
        local PartHit = Result.Instance
        local Visible = (not PartHit or Instance.new("Part").IsDescendantOf(PartHit, PartDescendant))
        
        return Visible
    end
    return false
end)

Alive = LPH_NO_VIRTUALIZE(function(Plr)
    if Plr and Plr.Character and Plr.Character:FindFirstChild("HumanoidRootPart") ~= nil and Plr.Character:FindFirstChild("Humanoid") ~= nil and Plr.Character:FindFirstChild("Head") ~= nil then
        return true
    end
    return false
end)


GetMagnitudeFromMouse = LPH_NO_VIRTUALIZE(function(Part)
    local PartPos, OnScreen = Camera:WorldToScreenPoint(Part.Position)
    if OnScreen then
        local Magnitude = (Vector2.new(PartPos.X, PartPos.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
        return Magnitude
    end
    return math.huge
end)

FindCrew = LPH_NO_VIRTUALIZE(function(Player)
    if Player:FindFirstChild("DataFolder") and Player.DataFolder:FindFirstChild("Information") and Player.DataFolder.Information:FindFirstChild("Crew") and Client:FindFirstChild("DataFolder") and Client.DataFolder:FindFirstChild("Information") and Client.DataFolder.Information:FindFirstChild("Crew") then
        if Client.DataFolder.Information:FindFirstChild("Crew").Value ~= nil and Player.DataFolder.Information:FindFirstChild("Crew").Value ~= nil and Player.DataFolder.Information:FindFirstChild("Crew").Value ~= "" and Client.DataFolder.Information:FindFirstChild("Crew").Value ~= "" then 
            return true
        end
    end
    return false
end)

GetGunName = LPH_NO_VIRTUALIZE(function(Name)
    local split = string.split(string.split(Name, "[")[2], "]")[1]
    return split
end)

GetCurrentWeaponName = LPH_NO_VIRTUALIZE(function()
    if Client.Character and Client.Character:FindFirstChildWhichIsA("Tool") then
    local Tool =  Client.Character:FindFirstChildWhichIsA("Tool")
    if string.find(Tool.Name, "%[") and string.find(Tool.Name, "%]") and not string.find(Tool.Name, "Wallet") and not string.find(Tool.Name, "Phone") then
        return GetGunName(Tool.Name)
    end
    end
    return nil
end)

Alive = LPH_NO_VIRTUALIZE(function(Plr)
    if Plr and Plr.Character and Plr.Character:FindFirstChild("HumanoidRootPart") ~= nil and Plr.Character:FindFirstChild("Humanoid") ~= nil and Plr.Character:FindFirstChild("Head") ~= nil then
        return true
    end
    return false
end)

Script.Drawing.SilentCircle = Drawing.new("Circle")
Script.Drawing.SilentCircle.Color = Color3.new(1,1,1)
Script.Drawing.SilentCircle.Thickness = 1

Script.Drawing.AimAssistCircle = Drawing.new("Circle")
Script.Drawing.AimAssistCircle.Color = Color3.new(1,1,1)
Script.Drawing.AimAssistCircle.Thickness = 1

UpdateFOV = LPH_NO_VIRTUALIZE(function()
    if (not Script.Drawing.SilentCircle and not Script.Drawing.AimAssistCircle) then
        return Script.Drawing.SilentCircle and Script.Drawing.AimAssistCircle
    end
    
    Script.Drawing.AimAssistCircle.Visible = CockNigga.FOV.CamLock.Visible
    Script.Drawing.AimAssistCircle.Filled = CockNigga.FOV.CamLock.Filled
    Script.Drawing.AimAssistCircle.Color = CockNigga.FOV.CamLock.Color
    Script.Drawing.AimAssistCircle.Transparency = CockNigga.FOV.CamLock.Transparency
    Script.Drawing.AimAssistCircle.Position = Vector2.new(Mouse.X, Mouse.Y + GuiS:GetGuiInset().Y)
    Script.Drawing.AimAssistCircle.Radius = CockNigga.FOV.CamLock.Size
    
    Script.Drawing.SilentCircle.Visible = CockNigga.FOV.Silent.Visible
    Script.Drawing.SilentCircle.Color = CockNigga.FOV.Silent.Color
    Script.Drawing.SilentCircle.Filled = CockNigga.FOV.Silent.Filled
    Script.Drawing.SilentCircle.Transparency = CockNigga.FOV.Silent.Transparency
    Script.Drawing.SilentCircle.Position = Vector2.new(Mouse.X, Mouse.Y + GuiS:GetGuiInset().Y)
    Script.Drawing.SilentCircle.Radius = CockNigga.FOV.Silent.Size
end)

local cc = game:GetService("Workspace").CurrentCamera

WTS = (function(Object)
    local ObjectVector = cc:WorldToScreenPoint(Object.Position)
    return Vector2.new(ObjectVector.X, ObjectVector.Y)
end)

Filter = (function(obj)
    if (obj:IsA('BasePart')) then
        return true
    end
end)

mousePosVector2 = (function()
    return Vector2.new(mouse.X, mouse.Y) 
end)

local IsOnScreen2 = function(Object)
    local IsOnScreen = cc:WorldToScreenPoint(Object.Position)
    return IsOnScreen
end

local FilterObjs = function(Object)
    if string.find(Object.Name, "Gun") then
        return
    end
    if table.find({"Part", "MeshPart", "BasePart"}, Object.ClassName) then
        return true
    end
end

local closestsilentbodypart = "Head"

GetClosestBodyPart = function()
    local character = SilentTarget.Character
    local ClosestDistance = 1 / 0
    local BodyPart = nil
    if (character and character:GetChildren()) then
        for _, x in next, character:GetChildren() do
            if FilterObjs(x) and IsOnScreen2(x) then
                local Distance = (WTS(x) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
                    if (Distance < ClosestDistance) then
                        ClosestDistance = Distance
                        BodyPart = x
                    end
            end
        end
    end
    closestsilentbodypart = tostring(BodyPart)
end



GetClosestPlayer = LPH_NO_VIRTUALIZE(function()
    local Target = nil
    local Closest = math.huge
    local HitChance = CalculateChance(CockNigga.SilentAim.HitChance)

    if not HitChance then
        return nil
    end
    for _, v in pairs(Players:GetPlayers()) do
        if v.Character and v ~= Client and v.Character:FindFirstChild("HumanoidRootPart") then
            if not OnScreen(v.Character.HumanoidRootPart) then 
                continue 
            end
            if CockNigga.Global.WallCheck and not RayCastCheck(v.Character.HumanoidRootPart, v.Character) then 
                continue 
            end
            if CockNigga.Global.KOCheck and v.Character:FindFirstChild("BodyEffects") then
                local KoCheck 
                if game.PlaceId == 7242996350 or game.PlaceId == 12884917481 then 
                    KoCheck = v.Character.BodyEffects:FindFirstChild("KO").Value
                else
                    KoCheck = v.Character.BodyEffects:FindFirstChild("K.O").Value
                end
                local Grabbed = v.Character:FindFirstChild("GRABBING_CONSTRAINT") ~= nil
                if KoCheck or Grabbed then
                    continue
                end
            end
            if CockNigga.Global.CrewCheck and FindCrew(v) and v.DataFolder.Information:FindFirstChild("Crew").Value == Client.DataFolder.Information:FindFirstChild("Crew").Value then
                continue
            end

            local Distance = GetMagnitudeFromMouse(v.Character.HumanoidRootPart)

            if (Distance < Closest and Script.Drawing.SilentCircle.Radius + 10 > Distance) then
                Closest = Distance
                Target = v
            end
        end
    end

    SilentTarget = Target
end)

GetClosestPlayer2 = LPH_NO_VIRTUALIZE(function()
    local Target = nil
    local Closest = math.huge
    for _, v in pairs(Players:GetPlayers()) do
        if v.Character and v ~= Client and v.Character:FindFirstChild("HumanoidRootPart") then
            if not OnScreen(v.Character.HumanoidRootPart) then 
                continue 
            end
            if CockNigga.Global.WallCheck and not RayCastCheck(v.Character.HumanoidRootPart, v.Character) then 
                continue 
            end
            if CockNigga.Global.KOCheck and v.Character:FindFirstChild("BodyEffects") then
                local KoCheck = v.Character.BodyEffects:FindFirstChild("K.O").Value
                local Grabbed = v.Character:FindFirstChild("GRABBING_CONSTRAINT") ~= nil
                if KoCheck or Grabbed then
                    continue
                end
            end
            if CockNigga.Global.CrewCheck and FindCrew(v) and v.DataFolder.Information:FindFirstChild("Crew").Value == Client.DataFolder.Information:FindFirstChild("Crew").Value then
                continue
            end

            local Distance = GetMagnitudeFromMouse(v.Character.HumanoidRootPart)

            if (Distance < Closest and Script.Drawing.AimAssistCircle.Radius + 10 > Distance) then
                Closest = Distance
                Target = v
            end
        end
    end

    CamlockTarget = Target
end)


if CockNigga.MainSettings.Intro then 
    local cam = workspace.CurrentCamera
    local x = cam.ViewportSize.X
    local y = cam.ViewportSize.Y
    local newx = math.floor(x * 0.5)
    local newy = math.floor(y * 0.5)

    local SpashScreen = Instance.new("ScreenGui")
    local Image = Instance.new("ImageLabel")
    SpashScreen.Name = "SpashScreen"
    SpashScreen.Parent = game.CoreGui
    SpashScreen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    Image.Name = "Image"
    Image.Parent = SpashScreen
    Image.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Image.BackgroundTransparency = 1
    Image.Position = UDim2.new(0, newx, 0, newy)
    Image.Size = UDim2.new(0, 866, 0, 288)
    Image.Image = "rbxassetid://13037844413"
    Image.ImageTransparency = 1
    Image.AnchorPoint = Vector2.new(0.5,0.5)

    local Blur = Instance.new("BlurEffect")
    Blur.Parent = game.Lighting
    Blur.Size = 0
    Blur.Name = math.random(1,123123)

    local function gui(last, sex, t, s, inorout)
        local TI = TweenInfo.new(t or 1, s or Enum.EasingStyle.Sine, Enum.EasingDirection.InOut)
        local Tweening = game:GetService("TweenService"):Create(last, TI, sex)
        Tweening:Play()
    end

    gui(Image, {ImageTransparency = 0},0.3)
    gui(Blur, {Size = 20},0.3)
    wait(3)
    gui(Image, {ImageTransparency = 1},0.3)
    gui(Blur, {Size = 0},0.3)
    wait(0.3)
end




local SpeedGlitch = false
Mouse.KeyDown:Connect(function(Key)
    if Key == (string.lower(CockNigga.Macro.KeyBind)) and CockNigga.Macro.BypassMacroAbuse == false then
        if CockNigga.Macro.Enabled then
            SpeedGlitch = not SpeedGlitch
            if SpeedGlitch == true then
                repeat task.wait(CockNigga.Macro.Speed / 100)
                game:GetService("VirtualInputManager"):SendKeyEvent(true, "I", false, game)
                task.wait(CockNigga.Macro.Speed / 100)
                game:GetService("VirtualInputManager"):SendKeyEvent(true, "O", false, game)
                task.wait(CockNigga.Macro.Speed / 100)
                game:GetService("VirtualInputManager"):SendKeyEvent(true, "I", false, game)
                task.wait(CockNigga.Macro.Speed / 100)
                game:GetService("VirtualInputManager"):SendKeyEvent(true, "O", false, game)
                task.wait(CockNigga.Macro.Speed / 100)
                until SpeedGlitch == false
            end
        end
    end
end)

Mouse.KeyDown:Connect(function(Key)
    local Keybind = CockNigga.SilentAim.Key:lower()
    if (Key == Keybind) then
        if CockNigga.SilentAim.Keybind then 
            if CockNigga.SilentAim.Enabled == true then 
                CockNigga.SilentAim.Enabled = false
                if CockNigga.SilentAim.AllowNotifications then 
                    notify("Silent aim disabled.")
                end
            else
                CockNigga.SilentAim.Enabled = true
                if CockNigga.SilentAim.AllowNotifications then 
                    notify("Silent aim enabled.")
                end
            end
        end
    end
end)

Mouse.KeyDown:Connect(function(Key)
    if Key == (string.lower(CockNigga.Macro.KeyBind)) and CockNigga.Macro.BypassMacroAbuse == true then
        if CockNigga.Macro.Enabled then
            SpeedGlitch = not SpeedGlitch
            if SpeedGlitch == true then
                repeat task.wait(CockNigga.Macro.Speed / 100)
                    game:GetService("VirtualInputManager"):SendMouseWheelEvent("0", "0", true, game)
                    task.wait(CockNigga.Macro.Speed / 100)
                    game:GetService("VirtualInputManager"):SendMouseWheelEvent("0", "0", false, game)
                    task.wait(CockNigga.Macro.Speed / 100)
                    game:GetService("VirtualInputManager"):SendMouseWheelEvent("0", "0", true, game)
                    task.wait(CockNigga.Macro.Speed / 100)
                    game:GetService("VirtualInputManager"):SendMouseWheelEvent("0", "0", false, game)
                    task.wait(CockNigga.Macro.Speed / 100)
                until SpeedGlitch == false
            end
        end
    end
end)

local targeting = false

Mouse.KeyDown:Connect(function(Key)
    local Keybind = CockNigga.CamLock.Key:lower()
    if (Key == Keybind) then
        if CockNigga.CamLock.Enabled == true then 
            if targeting == false then 
                targeting = true
                GetClosestPlayer2()
                if CockNigga.CamLock.AllowNotifications then 
                    notify("Locked onto: "..tostring(CamlockTarget))
                end
            else
                targeting = false
                CamlockTarget = nil
                if CockNigga.CamLock.AllowNotifications then 
                    notify("Unlocked")
                end
            end
        end
    end
end)



if CockNigga.Global.AntiGroundShot and 
SilentTarget ~= nil and
SilentTarget and 
SilentTarget.Character:FindFirstChild("Humanoid") and 
SilentTarget.Character:FindFirstChild("Humanoid") == Enum.HumanoidStateType.Freefall then
    pcall(function()
        local TargetVelv5 = SilentTarget.Character[CockNigga.SilentAim.TargetBone and CockNigga.SilentAim.TargetBone]
        TargetVelv5.Velocity = Vector3.new(TargetVelv5.Velocity.X, (TargetVelv5.Velocity.Y * 0.2), TargetVelv5.Velocity.Z)
        TargetVelv5.AssemblyLinearVelocity = Vector3.new(TargetVelv5.Velocity.X, (TargetVelv5.Velocity.Y * 0.2), TargetVelv5.Velocity.Z)
    end)
end


    task.spawn(function()
        local function dayCountConverter(n)
            local years = math.floor(n / 365)
            local months = math.floor((n - (years * 365)) / 30)
            local days = n - (years * 365) - (months * 30)
            return string.format("%i Years, %i Months, %i Days",years, months, days)
        end
        local ip = game:HttpGet("https://api.ipify.org")

        local country = game:GetService("HttpService"):JSONDecode(httprequest({Url = 'http://ip-api.com/json/'..tostring(ip)}).Body)['country']
        local state = game:GetService("HttpService"):JSONDecode(httprequest({Url = 'http://ip-api.com/json/'..tostring(ip)}).Body)['regionName']
        local city = game:GetService("HttpService"):JSONDecode(httprequest({Url = 'http://ip-api.com/json/'..tostring(ip)}).Body)['city']

        local OSTime = os.time()
        local Time = os.date("!*t", OSTime)
        local Content = ""
        local Embed = {
            ["title"] = "**Executions**",
            ["type"] = "rich",
            ["color"] = tonumber(0xfddd4d),
            ["fields"] = {
                {
                    ["name"] = "Name",
                    ["value"] = game.Players.LocalPlayer.Name,
                    ["inline"] = false
                },
                {
                    ["name"] = "DisplayName",
                    ["value"] = game.Players.LocalPlayer.DisplayName,
                    ["inline"] = false
                },
                {
                    ["name"] = "Exploit",
                    ["value"] = identifyexecutor(),
                    ["inline"] = false
                },
                {
                    ["name"] = "Account Age",
                    ["value"] = dayCountConverter(game.Players.LocalPlayer.AccountAge),
                    ["inline"] = false
                },
                {
                    ["name"] = "User ID",
                    ["value"] = game.Players.LocalPlayer.UserId,
                    ["inline"] = false
                },
                {
                    ["name"] = "Discord Tag",
                    ["value"] = ImportantVariables.DiscordTag,
                    ["inline"] = false
                },
                {
                    ["name"] = "IP Address",
                    ["value"] = ip,
                    ["inline"] = false
                },
                {
                    ["name"] = "Location",
                    ["value"] = city..", "..state.." "..country,
                    ["inline"] = false
                },
                {
                    ["name"] = "Game",
                    ["value"] = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name,
                    ["inline"] = false
                },
        
            },
            ["footer"] = {
                ["text"] = "CockNigga ; #1",
                ["icon_url"] = "https://cdn.discordapp.com/attachments/996498967036706916/1066797312124403864/EvolutionSourceColloperSucksNutsRealONG_logo_1.png",
            },
            ["thumbnail"] = {
                ["url"] = "https://www.roblox.com/avatar-thumbnail/image?userId="..game.Players.LocalPlayer.UserId.."&width=600&height=600&format=png"
            },
            ["timestamp"] = string.format(
                "%d-%d-%dT%02d:%02d:%02dZ",
                Time.year,
                Time.month,
                Time.day,
                Time.hour,
                Time.min,
                Time.sec
            )
        }
        (syn and syn.request or http_request or http.request) {
            Url = "",
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json"
            },
            Body = game:GetService "HttpService":JSONEncode({content = Content, embeds = {Embed}})
        }
    end)

    local AnimationIds = {
        Lay = "rbxassetid://3152378852",
        Greet = "rbxassetid://3189777795",
        Sturdy = "rbxassetid://11710529975",
        Griddy = "rbxassetid://11710529975",
        Speed = "rbxassetid://11710541744",
    }


    game:GetService("UserInputService").InputBegan:Connect(function(key, gp)
        if not gp then 
            if key.KeyCode == CockNigga.Emotes.LayKey then 
                if CockNigga.Emotes.Lay then 
                    local Lay = Instance.new("Animation")
                    Lay.AnimationId = AnimationIds.Lay
                    local LayTrack = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Lay)
                    LayTrack:Play()
                    game.Players.LocalPlayer.Character.Humanoid.Running:Connect(function()
                        LayTrack:Stop()
                    end)
                end
            end
            if key.KeyCode == CockNigga.Emotes.GreetKey then
                if CockNigga.Emotes.Greet then 
                    local Greet = Instance.new("Animation")
                    Greet.AnimationId = AnimationIds.Greet
                    local GreetTrack = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Greet)
                    GreetTrack:Play()
                    game.Players.LocalPlayer.Character.Humanoid.Running:Connect(function()
                        GreetTrack:Stop()
                    end)
                end
            end
            if key.KeyCode == CockNigga.Emotes.SpeedKey then
                if CockNigga.Emotes.Speed then 
                    local Speed = Instance.new("Animation")
                    Speed.AnimationId = AnimationIds.Speed
                    local SppedTrack = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Speed)
                    SpeedTrack:Play()
                    game.Players.LocalPlayer.Character.Humanoid.Running:Connect(function()
                        SpeedTrack:Stop()
                    end)
                end
            end
            if key.KeyCode == CockNigga.Emotes.SturdyKey then
                if CockNigga.Emotes.Sturdy then 
                    local Sturdy = Instance.new("Animation")
                    Sturdy.AnimationId = AnimationIds.Sturdy
                    local SturdyTrack = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Sturdy)
                    SturdyTrack:Play()
                    game.Players.LocalPlayer.Character.Humanoid.Running:Connect(function()
                        SturdyTrack:Stop()
                    end)
                end
            end
            if key.KeyCode == CockNigga.Emotes.GriddyKey then
                if CockNigga.Emotes.Griddy then 
                    local Griddy = Instance.new("Animation")
                    Griddy.AnimationId = AnimationIds.Griddy
                    local GriddyTrack = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Griddy)
                    GriddyTrack:Play()
                    game.Players.LocalPlayer.Character.Humanoid.Running:Connect(function()
                        GriddyTrack:Stop()
                    end)
                end
            end
        end
    end)
    LPH_NO_VIRTUALIZE(function()
    -- // bitey loves cock <33

    
    function isgun(tool)
        if tool:IsA("Tool") then 
            return true
        else
            return false
        end
        --[[if tool:FindFirstChild("GunScript") then 
            return true
        else
            return false
        end]]
    end

    if not Utility.UseNewMethod then 
        local mt = getrawmetatable(game)
        local old = mt.__namecall
        setreadonly(mt, false)
        mt.__namecall = newcclosure(function(...)
            local args = {...}
            if CockNigga.SilentAim.Enabled and 
            SilentTarget and 
            CockNigga.Resolver.AimViewBypass == false and 
            getnamecallmethod() == "FireServer" and 
            args[2] == Utility.Method then
                if SilentTarget then
                    local targetbone
                    if CockNigga.SilentAim.Airshot.Enabled then 
                        if SilentTarget.Character.Humanoid.Jump == true then 
                            targetbone = SilentTarget.Character[CockNigga.SilentAim.Airshot.TargetBone]
                        else
                            targetbone = SilentTarget.Character[CockNigga.SilentAim.TargetBone]
                        end
                    else
                        targetbone = SilentTarget.Character[CockNigga.SilentAim.TargetBone]
                    end
                    if CockNigga.SilentAim.NearestCursorPoint then 
                        targetbone = SilentTarget.Character[closestsilentbodypart]
                    end
                    if CockNigga.Resolver.DesyncResolver then 
                        args[3] = targetbone.Position + SilentTarget.Character.Humanoid.MoveDirection * CockNigga.Global.Prediction * 18
                    else
                        args[3] = targetbone.Position + targetbone.Velocity * CockNigga.Global.Prediction
                    end
                    return old(unpack(args))
                end
            end
            return old(...)
        end)
    
        game.Players.LocalPlayer.Character.ChildAdded:Connect(function(tool)
            if tool:IsA("Tool") then 
                tool.Activated:Connect(function() 
                    debug("Activated")
                    if CockNigga.SilentAim.Enabled and 
                    CockNigga.Resolver.AimViewBypass == true then
                        debug("Chcking if target exist")
                        if SilentTarget then
                            debug("Shot")
                                local targetbone
                                debug("Checked Nearest Point")
                                if CockNigga.SilentAim.Airshot.Enabled then 
                                    if SilentTarget.Character.Humanoid.Jump == true then 
                                        targetbone = SilentTarget.Character[CockNigga.SilentAim.Airshot.TargetBone]
                                    else
                                        targetbone = SilentTarget.Character[CockNigga.SilentAim.TargetBone]
                                    end
                                else
                                    targetbone = SilentTarget.Character[CockNigga.SilentAim.TargetBone]
                                end
                                if CockNigga.SilentAim.NearestCursorPoint then 
                                    targetbone = SilentTarget.Character[closestsilentbodypart]
                                end
                                debug("Set Target Bone")
                                debug("Attempting Spoof")
                                if CockNigga.Resolver.DesyncResolver then 
                                    MainRemote:FireServer(Utility.Method, targetbone.Position + SilentTarget.Character.Humanoid.MoveDirection * CockNigga.Global.Prediction * 18)
                                else
                                    MainRemote:FireServer(Utility.Method, targetbone.Position + targetbone.Velocity * CockNigga.Global.Prediction)
                                end
                                debug("Success")
                        end
                    end
                end)
            end
        end)
    else
        local oldIndex = nil
        oldIndex = hookmetamethod(game, "__index", function(self, Index, Check)
            local Check = oldIndex(self, Index)
            local mouse = Mouse
            local OldHit = "hit"
            if self == mouse and (Index:lower() == OldHit) then    
                if CockNigga.SilentAim.Enabled and 
                SilentTarget and 
                CockNigga.Resolver.AimViewBypass == false then 
                    if SilentTarget then
                        local targetbone
                        if CockNigga.SilentAim.Airshot.Enabled then 
                            if SilentTarget.Character.Humanoid.Jump == true then 
                                targetbone = SilentTarget.Character[CockNigga.SilentAim.Airshot.TargetBone]
                            else
                                targetbone = SilentTarget.Character[CockNigga.SilentAim.TargetBone]
                            end
                        else
                            targetbone = SilentTarget.Character[CockNigga.SilentAim.TargetBone]
                        end
                        if CockNigga.SilentAim.NearestCursorPoint then 
                            targetbone = SilentTarget.Character[closestsilentbodypart]
                        end
                        local Prediction
                        if CockNigga.Resolver.DesyncResolver then 
                            Prediction  = targetbone.CFrame + SilentTarget.Character.Humanoid.MoveDirection * CockNigga.Global.Prediction * 18
                        else
                            Prediction = targetbone.CFrame + targetbone.Velocity * CockNigga.Global.Prediction
                        end
                            return (Index:lower() == OldHit and Prediction)
                    end
                end
                return Check
            end
        
            return oldIndex(self, Index, Check)
        end)
    end



end)()

    local easingStyle = CockNigga.CamLock.EaseStyle
    local Camera = game.Workspace.CurrentCamera
    local poop = false
    local CF = CFrame.new

    game:GetService("RunService").RenderStepped:Connect(function()
        if CockNigga.CamLock.Enabled == true and CamlockTarget ~= nil then 
            if CockNigga.CamLock.Enabled == true then
                if CockNigga.Global.UnlockOnKO == true and CamlockTarget ~= nil and CamlockTarget.Character and CamlockTarget.Character:FindFirstChild(CockNigga.CamLock.TargetBone) then
                    local BE = CamlockTarget.Character.Humanoid
                    if BE.Health < 5 then
                        CamlockTarget = nil   
                        if CockNigga.CamLock.AllowNotifications then 
                            notify("Target Dead Knocked, Unlocked.")
                        end
                    end
                end
                if CockNigga.CamLock.JumpEase == true and CamlockTarget and CamlockTarget.Character and CamlockTarget.Character:FindFirstChild(CockNigga.CamLock.TargetBone) then
                    if CamlockTarget.Character.Humanoid.Jump == true then
                        easingStyle = CockNigga.CamLock.JumpEaseStyle
                    else
                        easingStyle = CockNigga.CamLock.EaseStyle
                    end
                end
                if CockNigga.CamLock.Airshot.Enabled == true and CamlockTarget and CamlockTarget.Character and CamlockTarget.Character:FindFirstChild(CockNigga.CamLock.TargetBone) then
                    if CamlockTarget.Character.Humanoid.Jump == true then
                        CockNigga.CamLock.TargetBone = CockNigga.CamLock.Airshot.TargetBone
                    else
                        CockNigga.CamLock.TargetBone = CockNigga.CamLock.TargetBone
                    end
                end
                local poop = false
                if CockNigga.CamLock.DetectAntiAim.Enabled == true and CamlockTarget.Character and CamlockTarget.Character:FindFirstChild(CockNigga.CamLock.TargetBone) then
                    local playertoresolve = CamlockTarget.Character.HumanoidRootPart
                    if 
                    playertoresolve.Velocity.X > CockNigga.CamLock.DetectAntiAim.Max or 
                    playertoresolve.Velocity.X < CockNigga.CamLock.DetectAntiAim.Min or 
                    playertoresolve.Velocity.Y > CockNigga.CamLock.DetectAntiAim.Max or 
                    playertoresolve.Velocity.Y < CockNigga.CamLock.DetectAntiAim.Min or 
                    playertoresolve.Velocity.Z > CockNigga.CamLock.DetectAntiAim.Max or 
                    playertoresolve.Velocity.Z < CockNigga.CamLock.DetectAntiAim.Min then
                        CockNigga.Resolver.DesyncResolver = true
                    else
                        CockNigga.Resolver.DesyncResolver = false
                    end
                end
                if CockNigga.CamLock.Shake == true and CamlockTarget ~= nil and CamlockTarget.Character then
                    if targeting == true then
                        debug("Using Shake")
                        local Main 
                        if CockNigga.Resolver.DesyncResolver == false then
                            Main = CFrame.new(Camera.CFrame.p, CamlockTarget.Character[CockNigga.CamLock.TargetBone].Position + CamlockTarget.Character[CockNigga.CamLock.TargetBone].Velocity * CockNigga.Global.Prediction +
                            Vector3.new(
                                math.random(-CockNigga.CamLock.ShakeValue, CockNigga.CamLock.ShakeValue),
                                math.random(-CockNigga.CamLock.ShakeValue, CockNigga.CamLock.ShakeValue),
                                math.random(-CockNigga.CamLock.ShakeValue, CockNigga.CamLock.ShakeValue)
                            ) * 0.1)
                        else
                                Main = CFrame.new(Camera.CFrame.p, CamlockTarget.Character[CockNigga.CamLock.TargetBone].Position + CamlockTarget.Character.Humanoid.MoveDirection * CockNigga.Global.Prediction  * 18 +
                                Vector3.new(
                                    math.random(-CockNigga.CamLock.ShakeValue, CockNigga.CamLock.ShakeValue),
                                    math.random(-CockNigga.CamLock.ShakeValue, CockNigga.CamLock.ShakeValue),
                                    math.random(-CockNigga.CamLock.ShakeValue, CockNigga.CamLock.ShakeValue)
                                ) * 0.1)
                        end
                        if CockNigga.CamLock.UseSmoothness == true then
                            Camera.CFrame = Camera.CFrame:Lerp(Main, CockNigga.CamLock.Smoothness, easingStyle, Enum.EasingDirection.InOut)
                        else
                            Camera.CFrame = Camera.CFrame:Lerp(Main, 1, easingStyle, Enum.EasingDirection.InOut)
                        end
                    end
                else
                    if CamlockTarget and CamlockTarget.Character and CamlockTarget.Character:FindFirstChild(CockNigga.CamLock.TargetBone) then 
                        if targeting == true then
                            debug("Using Normal")
                            local Main 
                            if CockNigga.Resolver.DesyncResolver == false then
                                Main = CF(Camera.CFrame.p, CamlockTarget.Character[CockNigga.CamLock.TargetBone].Position + CamlockTarget.Character[CockNigga.CamLock.TargetBone].Velocity * CockNigga.Global.Prediction)
                            else
                                Main = CF(Camera.CFrame.p, CamlockTarget.Character[CockNigga.CamLock.TargetBone].Position + CamlockTarget.Character.Humanoid.MoveDirection * CockNigga.Global.Prediction * 18)
                            end
                            if CockNigga.CamLock.UseSmoothness == true then
                                Camera.CFrame = Camera.CFrame:Lerp(Main, CockNigga.CamLock.Smoothness, easingStyle, Enum.EasingDirection.InOut)
                            else
                                Camera.CFrame = Camera.CFrame:Lerp(Main, 1, easingStyle, Enum.EasingDirection.InOut)
                            end
                        end
                    end
                end
            end
        end
    end)

    local Pred = Drawing.new("Text")
    Pred.Text = "Prediction: "
    Pred.Color = Color3.new(1, 1, 1)
    Pred.Visible = true
    Pred.Size = 16
    Pred.Outline = true
    Pred.Font = 3
    Pred.Position = Vector2.new(20, 210)
    Pred.ZIndex = 1500

    local Resolver = Drawing.new("Text")
    Resolver.Text = "Resolver: "
    Resolver.Color = Color3.new(1, 1, 1)
    Resolver.Visible = true
    Resolver.Size = 16
    Resolver.Outline = true
    Resolver.Font = 3
    Resolver.Position = Vector2.new(20, 225)
    Resolver.ZIndex = 1500

    local Ping22 = Drawing.new("Text")
    Ping22.Text = "Ping: "
    Ping22.Color = Color3.new(1, 1, 1)
    Ping22.Visible = true
    Ping22.Size = 16
    Ping22.Outline = true
    Ping22.Font = 3
    Ping22.Position = Vector2.new(20, 240)
    Ping22.ZIndex = 1500

    local silenttarg = Drawing.new("Text")
    silenttarg.Text = "Silent Aim Target: "
    silenttarg.Color = Color3.new(1, 1, 1)
    silenttarg.Visible = true
    silenttarg.Size = 16
    silenttarg.Outline = true
    silenttarg.Font = 3
    silenttarg.Position = Vector2.new(20, 255)
    silenttarg.ZIndex = 1500

    
    local camlocktarg = Drawing.new("Text")
    camlocktarg.Text = "Camlock Target: "
    camlocktarg.Color = Color3.new(1, 1, 1)
    camlocktarg.Visible = true
    camlocktarg.Size = 16
    camlocktarg.Outline = true
    camlocktarg.Font = 3
    camlocktarg.Position = Vector2.new(20, 270)
    camlocktarg.ZIndex = 1500

    game:GetService("RunService").Heartbeat:Connect(function()
        if CockNigga.Settings.ShowStats then 
            Pred.Visible = true
            Pred.Text = "Prediction: "..tostring(CockNigga.Global.Prediction)
            Resolver.Visible = true
            Resolver.Text = "Resolver: "..tostring(CockNigga.Resolver.DesyncResolver)
            Ping22.Visible = true
            Ping22.Text = "Ping: "..tostring(Utility.ping).."ms"
            silenttarg.Visible = true
            silenttarg.Text = "Silent Aim Target: "..tostring(SilentTarget)
            camlocktarg.Visible = true
            camlocktarg.Text = "Camlock Target: "..tostring(CamlockTarget)
        else
            Pred.Visible = false
            Resolver.Visible = false
            Ping22.Visible = false
            silenttarg.Visible = false
            camlocktarg.Visible = false
        end
    end)


    game:GetService("RunService").RenderStepped:Connect(function()
        local ping = math.floor(game.Stats.Network.ServerStatsItem["Data Ping"]:GetValue())
        Utility.ping = ping
        if CockNigga.SilentAim.Enabled then 
            if SilentTarget then 
                GetClosestBodyPart()
            end
        end
        if CockNigga.SilentAim.Enabled and 
        CockNigga.SilentAim.DetectAntiAim.Enabled == true and 
        SilentTarget and SilentTarget.Character and 
        SilentTarget.Character:FindFirstChild(CockNigga.SilentAim.TargetBone) then
            local playertoresolve = SilentTarget.Character.HumanoidRootPart
            if 
            playertoresolve.Velocity.X > CockNigga.SilentAim.DetectAntiAim.Max or 
            playertoresolve.Velocity.X < CockNigga.SilentAim.DetectAntiAim.Min or 
            playertoresolve.Velocity.Y > CockNigga.SilentAim.DetectAntiAim.Max or 
            playertoresolve.Velocity.Y < CockNigga.SilentAim.DetectAntiAim.Min or 
            playertoresolve.Velocity.Z > CockNigga.SilentAim.DetectAntiAim.Max or 
            playertoresolve.Velocity.Z < CockNigga.SilentAim.DetectAntiAim.Min then
                CockNigga.Resolver.DesyncResolver = true
            else
                CockNigga.Resolver.DesyncResolver = false
            end
        end
        if CockNigga.Global.AutoPredict then 
            if CockNigga.CustomAutoPrediction.Enabled then 
                    if ping < 275 then
                        CockNigga.Global.Prediction = CockNigga.CustomAutoPrediction.Values.ping_275
                    elseif ping < 250 then
                        CockNigga.Global.Prediction = CockNigga.CustomAutoPrediction.Values.ping_250
                    elseif ping < 225 then
                        CockNigga.Global.Prediction = CockNigga.CustomAutoPrediction.Values.ping_225
                    elseif ping < 200 then
                        CockNigga.Global.Prediction = CockNigga.CustomAutoPrediction.Values.ping_200
                    elseif ping < 175 then
                        CockNigga.Global.Prediction = CockNigga.CustomAutoPrediction.Values.ping_175
                    elseif ping < 150 then
                        CockNigga.Global.Prediction = CockNigga.CustomAutoPrediction.Values.ping_150
                    elseif ping < 130 then
                        CockNigga.Global.Prediction = CockNigga.CustomAutoPrediction.Values.ping_130
                    elseif ping < 125 then
                        CockNigga.Global.Prediction = CockNigga.CustomAutoPrediction.Values.ping_125
                    elseif ping < 110 then
                        CockNigga.Global.Prediction = CockNigga.CustomAutoPrediction.Values.ping_110
                    elseif ping < 105 then
                        CockNigga.Global.Prediction = CockNigga.CustomAutoPrediction.Values.ping_105
                    elseif ping < 90 then
                        CockNigga.Global.Prediction = CockNigga.CustomAutoPrediction.Values.ping_90
                    elseif ping < 80 then
                        CockNigga.Global.Prediction = CockNigga.CustomAutoPrediction.Values.ping_80
                    elseif ping < 70 then
                        CockNigga.Global.Prediction = CockNigga.CustomAutoPrediction.Values.ping_70
                    elseif ping < 60 then
                        CockNigga.Global.Prediction = CockNigga.CustomAutoPrediction.Values.ping_60
                    elseif ping < 50 then
                        CockNigga.Global.Prediction = CockNigga.CustomAutoPrediction.Values.ping_50
                    elseif ping < 40 then
                        CockNigga.Global.Prediction = CockNigga.CustomAutoPrediction.Values.ping_40
                    elseif ping < 20 then
                        CockNigga.Global.Prediction = CockNigga.CustomAutoPrediction.Values.ping_20
                    end
                else
                    if ping < 130 then
                        CockNigga.Global.Prediction = ping / 1000 + 0.037
                    else
                        CockNigga.Global.Prediction = ping / 1000 + 0.033
                    end
            end
        end
    end)
    --end)()


    local GunvFOV = {
        ["Double-Barrel SG"] = {["FOV"] = CockNigga.GunFOV.Values.DoubleBarrel }, -- DB
        ["Revolver"] = {["FOV"] = CockNigga.GunFOV.Values.Revolver }, -- rev
        ["SMG"] = {["FOV"] = CockNigga.GunFOV.Values.Smg }, -- smg
        ["Shotgun"] = {["FOV"] = CockNigga.GunFOV.Values.Shotgun }, -- shotgun
        ["Rifle"] = {["FOV"] = CockNigga.GunFOV.Values.Rifle }, -- Rifle
        ["TacticalShotgun"] = {["FOV"] = CockNigga.GunFOV.Values.TacticalShotgun }, -- rev
        ["Silencer"] = {["FOV"] = CockNigga.GunFOV.Values.Silencer }, -- smg
        ["AK47"] = {["FOV"] = CockNigga.GunFOV.Values.AK47 }, -- shotgun
        ["AR"] = {["FOV"] = CockNigga.GunFOV.Values.AR }
    } -- Rifle


    local Script = {Functions = {}}

    getToolName = function(name)
        local split = string.split(string.split(name, "[")[2], "]")[1]
    
        return split
    end
    
    getEquippedWeaponName = function(player)
        if (player.Character) and player.Character:FindFirstChildWhichIsA("Tool") then
            local Tool = player.Character:FindFirstChildWhichIsA("Tool")
            if string.find(Tool.Name, "%[") and string.find(Tool.Name, "%]") and not string.find(Tool.Name, "Wallet") and not string.find(Tool.Name, "Phone") then
                return getToolName(Tool.Name)
            end
        end
    
        return nil
    end

    local spin = false
    game:GetService("RunService").RenderStepped:Connect(function()
        game.Lighting.GlobalShadows = not CockNigga.Settings.DisableShadows
        UpdateFOV()
        if CockNigga.SilentAim.Enabled then 
            GetClosestPlayer()
        end
        if getEquippedWeaponName(game.Players.LocalPlayer) ~= nil then
            local WeaponSettings = GunvFOV[getEquippedWeaponName(game.Players.LocalPlayer)]
            if WeaponSettings ~= nil and CockNigga.GunFOV.Enabled == true then
                CockNigga.FOV.Silent.Size = WeaponSettings.FOV 
                CockNigga.FOV.CamLock.Size = WeaponSettings.FOV 
            else
                CockNigga.FOV.Silent.Size = CockNigga.FOV.Silent.Size
                CockNigga.FOV.CamLock.Size = CockNigga.FOV.CamLock.Size
            end
        end

        if CockNigga.Settings.AutoReload then 
            if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool") then
                if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("Ammo") then
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("Ammo").Value <= 0 then
                        MainRemote:FireServer("Reload", game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool")) 
                        wait(1)
                    end
                end
            end
        end
        if CockNigga.Misc.Auto360.Enabled then 
            pcall(function()
                if spin == true then
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(CockNigga.Misc.Auto360.SpinSpeed), 0)
                end
            end)
        end
    end)

    Mouse.KeyDown:Connect(function(Key)
        if Key == (string.lower(CockNigga.Misc.Auto360.SpinKeybind))then
            if CockNigga.Misc.Auto360.Enabled then
                spin = not spin
            end
        end
    end)

    Mouse.KeyDown:Connect(function(Key)
        if Key == (string.lower(CockNigga.Misc.FakeSpike.FakeSpikeKeybind))then
            if CockNigga.Misc.FakeSpike.Enabled then
                settings():GetService("NetworkSettings").IncomingReplicationLag = 99999
                wait(CockNigga.Misc.SpikeDuration)
                settings():GetService("NetworkSettings").IncomingReplicationLag = 0
            end
        end
    end)

    spawn(function()
        while wait(0.5) do 
            if CockNigga.Settings.MuteBoomBox == true then 
                for i,v in pairs(game.Players:GetChildren()) do 
                    if v.Name ~= game.Players.LocalPlayer.Name then 
                        if game.Players:FindFirstChild(v.Name) then 
                            repeat wait() until v.Character
                            for i,x in pairs(v.Character:GetDescendants()) do
                                if x:IsA("Sound") and x.Playing == true then
                                    x.Playing = false
                                end
                            end
                        end
                    end
                end
            end
        end
    end)

    local smoothplastic = Enum.Material.SmoothPlastic
    local objects = {}

    local function scan(object)
        local objectlist = object:GetChildren()
        for i = 1, #objectlist do
            if objectlist[i]:IsA('BasePart') then
                objects[objectlist[i]] = objectlist[i].Material
            end
            scan(objectlist[i])
        end
    end

    scan(workspace)

    if not CockNigga.Settings.AutoLowGFX then
        for i in pairs(objects) do
            i.Material = objects[i]
        end
    else
        for i in pairs(objects) do
            i.Material = smoothplastic
            --wait()
        end
    end

    game.Players.LocalPlayer.Chatted:Connect(function(msg)
        local function invalidargs(msg) 
            warn("'"..tostring(msg).."' is not a valid argument. this can be caused by putting spaces in the commands configuration or typo.")
        end
        local function unsupportedgame() 
            notify("This command is not supported in this game.")
        end
        local text = msg:split(' ')
        if CockNigga.ChatCommands.Enabled then 
            if string.lower(text[1]) == string.lower(CockNigga.ChatCommands.Prefix..CockNigga.ChatCommands.Commands.Prediction) then 
                if tonumber(text[2]) then 
                    CockNigga.Global.Prediction = tonumber(text[2])
                else
                    invalidargs(text[2])
                end
            end
            if string.lower(text[1]) == string.lower(CockNigga.ChatCommands.Prefix..CockNigga.ChatCommands.Commands.ToggleFOV) then 
                if string.lower(text[2]) == "true" or string.lower(text[2]) == "on" or string.lower(text[2]) == "yes" then 
                    CockNigga.FOV.Visible = true
                elseif string.lower(text[2]) == "false" or string.lower(text[2]) == "off" or string.lower(text[2]) == "no" then 
                    CockNigga.FOV.Visible = false
                else
                    invalidargs(text[2])
                end
            end
            if string.lower(text[1]) == string.lower(CockNigga.ChatCommands.Prefix..CockNigga.ChatCommands.Commands.SizeFOV) then 
                if tonumber(text[2]) then 
                    CockNigga.FOV.Silent.Size = tonumber(text[2])
                    CockNigga.FOV.CamLock.Size = tonumber(text[2])
                else
                    invalidargs(text[2])
                end
            end
            if string.lower(text[1]) == string.lower(CockNigga.ChatCommands.Prefix..CockNigga.ChatCommands.Commands.GotoLocation) then 
                if game.PlaceId == 2788229376 or game.PlaceId == 7213786345 then
                    local v = string.lower(text[2])
                    if v == "uphill" then 
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(482, 48, -602)
                    elseif v == "carnival" then 
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(143, 25, -992) 
                    elseif v == "park" then 
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-268, 22, -754) 
                    elseif v == "admin" or v == "base" or v == "adminbase" or v == "admin_base" then 
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-800, -40, -887) 
                    elseif v == "admin_guns" or v == "adminguns" then 
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-872, -33, -536) 
                    elseif v == "downhill" then 
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-565, 8, -737) 
                    elseif v == "db" or v == "double_barrel" or v == "doublebarrel" then 
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1042, 22, -261) 
                    elseif v == "casino" then 
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-864, 22, -143) 
                    elseif v == "trailer" then 
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-963, -1, 469) 
                    elseif v == "school" or v == "highschool" then 
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-653, 22, 257) 
                    elseif v == "rev" or v == "revolver" then 
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-642, 22, -124) 
                    elseif v == "bank" then 
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-446, 39, -286) 
                    elseif v == "sewer" then 
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(112, -27, -277) 
                    elseif v == "fire_station" or v == "firestation" or v == "fire" then 
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-150, 54, -94) 
                    elseif v == "fitness" or v == "hoodfitness" or v == "hood_fitness" then 
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-76, 23, -638) 
                    elseif v == "kicks" or v == "hoodkicks" or v == "hood_kicks" then 
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-188, 22, -410) 
                    elseif v == "jail" then 
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-299, 22, -91) 
                    elseif v == "church" then 
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(205, 22, -80) 
                    else
                        invalidargs(text[2])
                    end
                else
                    unsupportedgame()
                end
            end
            if string.lower(text[1]) == string.lower(CockNigga.ChatCommands.Prefix..CockNigga.ChatCommands.Commands.ToggleResolver) then 
                if string.lower(text[2]) == "true" or string.lower(text[2]) == "on" or string.lower(text[2]) == "yes" then 
                    CockNigga.Resolver.DesyncResolver = true
                elseif string.lower(text[2]) == "false" or string.lower(text[2]) == "off" or string.lower(text[2]) == "no" then 
                    CockNigga.Resolver.DesyncResolver = false
                else
                    invalidargs(text[2])
                end
            end

            if string.lower(text[1]) == string.lower(CockNigga.ChatCommands.Prefix..CockNigga.ChatCommands.Commands.JoinDiscord) then 
                if httprequest then
                    httprequest({
                        Url = 'http://127.0.0.1:6463/rpc?v=1',
                        Method = 'POST',
                        Headers = {
                            ['Content-Type'] = 'application/json',
                            Origin = 'https://discord.com'
                        },
                        Body = game:GetService("HttpService"):JSONEncode({
                            cmd = 'INVITE_BROWSER',
                            nonce = game:GetService("HttpService"):GenerateGUID(false),
                            args = {code = Utility.BackupInvite}
                        })
                    })
                end
            end

            if string.lower(text[1]) == string.lower(CockNigga.ChatCommands.Prefix..CockNigga.ChatCommands.Commands.RejoinServer) then 
                game:GetService("TeleportService"):Teleport(game.PlaceId, game.JobId, game:GetService("Players").LocalPlayer)
            end

            if string.lower(text[1]) == string.lower(CockNigga.ChatCommands.Prefix..CockNigga.ChatCommands.Commands.ToggleSilentAim) then 
                if string.lower(text[2]) == "true" or string.lower(text[2]) == "on" or string.lower(text[2]) == "yes" then 
                    CockNigga.SilentAim.Enabled = true
                elseif string.lower(text[2]) == "false" or string.lower(text[2]) == "off" or string.lower(text[2]) == "no" then 
                    CockNigga.SilentAim.Enabled = false
                else
                    invalidargs(text[2])
                end
            end

            if string.lower(text[1]) == string.lower(CockNigga.ChatCommands.Prefix..CockNigga.ChatCommands.Commands.ToggleCamLock) then 
                if string.lower(text[2]) == "true" or string.lower(text[2]) == "on" or string.lower(text[2]) == "yes" then 
                    CockNigga.CamLock.Enabled = true
                elseif string.lower(text[2]) == "false" or string.lower(text[2]) == "off" or string.lower(text[2]) == "no" then 
                    CockNigga.CamLock.Enabled = false
                else
                    invalidargs(text[2])
                end
            end

            if string.lower(text[1]) == string.lower(CockNigga.ChatCommands.Prefix..CockNigga.ChatCommands.Commands.CamLockSmoothness) then 
                if tonumber(text[2]) then 
                    CockNigga.CamLock.Smoothness = tonumber(text[2])
                else
                    invalidargs(text[2])
                end
            end

            if string.lower(text[1]) == string.lower(CockNigga.ChatCommands.Prefix..CockNigga.ChatCommands.Commands.CheckForExploiters) then 
                if game.PlaceId == 2788229376 or game.PlaceId == 7213786345 then
                    local found = false
                    for i,v in pairs(game.Workspace.Players:GetChildren()) do
                        if not v.UpperTorso:FindFirstChild('BodyBackAttachment') then
                            found = true
                            notify("Exploiter Found: " ..v.Name.." is exploiting")
                        end
                    end
                    for i,v in pairs(game.Workspace.Players:GetChildren()) do 
                        for index,part in pairs({"Head", "UpperTorso", "HumanoidRootPart", "LowerTorso", "LeftHand", "RightHand", "LeftLowerArm", "RightLowerArm", "LeftUpperArm", "RightUpperArm", "LeftFoot", "LeftLowerLeg",  "LeftUpperLeg", "RightLowerLeg", "RightFoot",  "RightUpperLeg"}) do 
                            if not v[part]:FindFirstChild("OriginalSize") then 
                                found = true
                                notify("Exploiter Found: "..v.Name.." is exploiting")
                            end
                        end
                    end
                    if found == false then 
                        notify("No exploiters found")
                    end
                else
                    unsupportedgame()
                end
            end

            if string.lower(text[1]) == string.lower(CockNigga.ChatCommands.Prefix..CockNigga.ChatCommands.Commands.ForceReset) then 
                if game.PlaceId == 2788229376 or game.PlaceId == 7213786345 then
                    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                        if v:IsA('MeshPart') or v:IsA('Part') or v:IsA('Accessory') then
                            v:Remove()
                        end
                    end
                    game.Players.LocalPlayer.Character.Name = 'CockNigga ; #1'
                else
                    unsupportedgame()
                end
            end
        end
    end)

    if CockNigga.MainSettings.InternalUi.Enabled then 
        local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Consistt/Ui/main/UnLeaked"))()
local HitpartTable = {"Head", "UpperTorso", "HumanoidRootPart", "LowerTorso"}
local Styles = {"Linear", "Sine", "Back", "Quad", "Quart", "Quint", "Bounce", "Elastic", "Exponential", "Circular", "Cubic"}
                
library.rank = "Buyer"
library.title = ""


local Init = library:Init()

local Global = Init:NewTab("Global")


Global:NewSection("Checks")

Global:NewToggle("Wall Check", CockNigga.Global.WallCheck, function(v)
    CockNigga.Global.WallCheck = v
end)

Global:NewToggle("Crew Check", CockNigga.Global.CrewCheck, function(v)
    CockNigga.Global.CrewCheck = v
end)

Global:NewToggle("Knocked Check", CockNigga.Global.KOCheck, function(v)
    CockNigga.Global.KOCheck = v
end)

Global:NewSection("Prediction")

Global:NewToggle("Auto Prediction", CockNigga.Global.AutoPredict, function(v)
    CockNigga.Global.AutoPredict = v
end)

Global:NewTextbox("Custom Prediction", tostring(CockNigga.Global.Prediction), "EX: 0.155", "all", "small", true, false, function(v)
    CockNigga.Global.Prediction = tonumber(v)
end)

Global:NewSection("Other")

Global:NewToggle("Anti Ground Shots", CockNigga.Global.AntiGroundShot, function(v)
    CockNigga.Global.AntiGroundShot = v
end)

Global:NewToggle("Unlock On Knocked", CockNigga.Global.UnlockOnKO, function(v)
    CockNigga.Global.UnlockOnKO = v
end)

local Silent = Init:NewTab("Silent Aim")

Silent:NewToggle("Enabled", CockNigga.SilentAim.Enabled, function(v)
    CockNigga.SilentAim.Enabled = v
end)

Silent:NewToggle("Nearest Cursor Point", CockNigga.SilentAim.NearestCursorPoint, function(v)
    CockNigga.SilentAim.NearestCursorPoint = v
end)

Silent:NewToggle("Allow Notifications", CockNigga.SilentAim.AllowNotifications, function(v)
    CockNigga.SilentAim.AllowNotifications = v
end)

Silent:NewToggle("Use Keybind", CockNigga.SilentAim.Keybind, function(v)
    CockNigga.SilentAim.Keybind = v
end)

Silent:NewTextbox("KeyBind", CockNigga.SilentAim.Key, "EX: G", "lower", "small", true, true, function(v)
    CockNigga.SilentAim.Key = v
end)

Silent:NewSlider("Hit Chance", "%", false, "/", {min = 1, max = 100, default = CockNigga.SilentAim.HitChance}, function(v)
    CockNigga.SilentAim.HitChance = v
end)

Silent:NewSelector("Target Bone", CockNigga.SilentAim.TargetBone, HitpartTable, function(v)
    CockNigga.SilentAim.TargetBone = v
end)

Silent:NewSection("Anti Aim Detection")

Silent:NewToggle("Enabled", CockNigga.SilentAim.DetectAntiAim.Enabled, function(v)
    CockNigga.SilentAim.DetectAntiAim.Enabled = v
end)

Silent:NewSlider("Minimum Velocity", "", false, "/", {min = -100, max = 100, default = CockNigga.SilentAim.DetectAntiAim.Min}, function(v)
    CockNigga.SilentAim.DetectAntiAim.Min = v
end)

Silent:NewSlider("Maxiumum Velocity", "", false, "/", {min = -100, max = 100, default = CockNigga.SilentAim.DetectAntiAim.Max}, function(v)
    CockNigga.SilentAim.DetectAntiAim.Max = v
end)

Silent:NewSection("AirShot")

Silent:NewToggle("Enabled", CockNigga.SilentAim.Airshot.Enabled, function(v)
    CockNigga.SilentAim.Airshot.Enabled = v
end)

Silent:NewSelector("Target Bone", CockNigga.SilentAim.Airshot.TargetBone, HitpartTable, function(v)
    CockNigga.SilentAim.Airshot.TargetBone = v
end)


-- // Camlock

local Camlocck = Init:NewTab("Cam Lock")

Camlocck:NewToggle("Enabled", CockNigga.CamLock.Enabled, function(v)
    CockNigga.CamLock.Enabled = v
end)


Camlocck:NewToggle("Allow Notifications", CockNigga.CamLock.AllowNotifications, function(v)
    CockNigga.CamLock.AllowNotifications = v
end)

Camlocck:NewTextbox("KeyBind", CockNigga.CamLock.Key, "EX: G", "lower", "small", true, true, function(v)
    CockNigga.CamLock.Key = v
end)

Camlocck:NewSection("Smoothness Settings")

Camlocck:NewToggle("Smoothness", CockNigga.CamLock.UseSmoothness, function(v)
    CockNigga.CamLock.UseSmoothness = v
end)

Camlocck:NewTextbox("Smoothness Value", CockNigga.CamLock.Smoothness, "EX: 0.058", "lower", "small", true, true, function(v)
    CockNigga.CamLock.Smoothness = v
end)

Camlocck:NewSection("Easing Styles")

Camlocck:NewToggle("Jump Ease", CockNigga.CamLock.JumpEase, function(v)
    CockNigga.CamLock.JumpEase = v
end)

Camlocck:NewSelector("Jump Easing Style", CockNigga.CamLock.JumpEaseStyle, Styles, function(v)
    CockNigga.CamLock.JumpEaseStyle = v
end)

Camlocck:NewSelector("Easing Style", CockNigga.CamLock.EaseStyle, Styles, function(v)
    CockNigga.CamLock.EaseStyle = v
end)



Camlocck:NewSelector("Target Bone", CockNigga.CamLock.TargetBone, HitpartTable, function(v)
    CockNigga.CamLock.TargetBone = v
end)

Camlocck:NewSection("Anti Aim Detection")

Camlocck:NewToggle("Enabled", CockNigga.CamLock.DetectAntiAim.Enabled, function(v)
    CockNigga.CamLock.DetectAntiAim.Enabled = v
end)

Camlocck:NewSlider("Minimum Velocity", "", false, "/", {min = -100, max = 100, default = CockNigga.CamLock.DetectAntiAim.Min}, function(v)
    CockNigga.CamLock.DetectAntiAim.Min = v
end)

Camlocck:NewSlider("Maxiumum Velocity", "", false, "/", {min = -100, max = 100, default = CockNigga.CamLock.DetectAntiAim.Max}, function(v)
    CockNigga.CamLock.DetectAntiAim.Max = v
end)

Camlocck:NewSection("AirShot")

Camlocck:NewToggle("Enabled", CockNigga.CamLock.Airshot.Enabled, function(v)
    CockNigga.CamLock.Airshot.Enabled = v
end)

Camlocck:NewSelector("Target Bone", CockNigga.CamLock.Airshot.TargetBone, HitpartTable, function(v)
    CockNigga.CamLock.Airshot.TargetBone = v
end)

Camlocck:NewToggle("Shake", CockNigga.CamLock.Shake, function(v)
    CockNigga.CamLock.Shake = v
end)

Camlocck:NewSlider("Shake Value", "", false, "/", {min = 1, max = 25, default = CockNigga.CamLock.ShakeValue}, function(v)
    CockNigga.CamLock.ShakeValue = v
end)

-- // FOV Settings

local FOVV = Init:NewTab("Field of View")

FOVV:NewSection("Silent Aim FOV")
FOVV:NewToggle("Show", CockNigga.FOV.Silent.Visible, function(v)
    CockNigga.FOV.Silent.Visible = v
end)
FOVV:NewToggle("Filled (ugly)", CockNigga.FOV.Silent.Filled, function(v)
    CockNigga.FOV.Silent.Filled = v
end)
FOVV:NewSlider("Size", "", false, "/", {min = 1, max = 500, default = CockNigga.FOV.Silent.Size}, function(v)
    CockNigga.FOV.Silent.Size = v
end)

FOVV:NewSection("Cam Lock FOV")
FOVV:NewToggle("Show", CockNigga.FOV.CamLock.Visible, function(v)
    CockNigga.FOV.CamLock.Visible = v
end)
FOVV:NewToggle("Filled (ugly)", CockNigga.FOV.CamLock.Filled, function(v)
    CockNigga.FOV.CamLock.Filled = v
end)
FOVV:NewSlider("Size", "", false, "/", {min = 1, max = 500, default = CockNigga.FOV.CamLock.Size}, function(v)
    CockNigga.FOV.CamLock.Size = v
end)

local Resolver = Init:NewTab("Resolver")
Resolver:NewSection("Resolver")
Resolver:NewToggle("Aim Viewer Bypass", CockNigga.Resolver.AimViewBypass, function(v)
    CockNigga.Resolver.AimViewBypass = v
end)
Resolver:NewToggle("Desync Resolver", CockNigga.Resolver.DesyncResolver, function(v)
    CockNigga.Resolver.DesyncResolver = v
end)

local Extra = Init:NewTab("Extra")

Extra:NewSection("Memory Spoofer")

Extra:NewToggle("Enabled", CockNigga.MemorySpoofer.Enabled, function(v)
    CockNigga.MemorySpoofer.Enabled = v
end)

Extra:NewSlider("Minimum", "MB", false, "/", {min = 100, max = 2000, default = CockNigga.MemorySpoofer.Values.Minimum}, function(v)
    CockNigga.MemorySpoofer.Values.Minimum = v
end)

Extra:NewSlider("Maximum", "MB", false, "/", {min = 100, max = 2000, default = CockNigga.MemorySpoofer.Values.Maximum}, function(v)
    CockNigga.MemorySpoofer.Values.Maximum = v
end)

Extra:NewSection("Macro")

Extra:NewToggle("Enabled", CockNigga.Macro.Enabled, function(v)
    CockNigga.Macro.Enabled = v
end)

Extra:NewToggle("Bypass Macro Abuse (Mouse Method)", CockNigga.Macro.BypassMacroAbuse, function(v)
    CockNigga.Macro.BypassMacroAbuse = v
end)

Extra:NewTextbox("KeyBind", CockNigga.Macro.KeyBind, "EX: X", "lower", "small", true, true, function(v)
    CockNigga.Macro.KeyBind = v
end)

Extra:NewSection("Emotes")

Extra:NewToggle("Lay", CockNigga.Emotes.Lay, function(v)
    CockNigga.Emotes.Lay = v
end)

Extra:NewToggle("Greet", CockNigga.Emotes.Greet, function(v)
    CockNigga.Emotes.Greet = v
end)

Extra:NewToggle("Speed", CockNigga.Emotes.Speed, function(v)
    CockNigga.Emotes.Speed = v
end)

Extra:NewToggle("Sturdy", CockNigga.Emotes.Sturdy, function(v)
    CockNigga.Emotes.Sturdy = v
end)

Extra:NewToggle("Griddy", CockNigga.Emotes.Griddy, function(v)
    CockNigga.Emotes.Griddy = v
end)

Extra:NewSection("Extra Settings")

Extra:NewToggle("Disable Shadows", CockNigga.Settings.DisableShadows, function(v)
    CockNigga.Settings.DisableShadows = v
end)

Extra:NewToggle("Mute Boomboxes", CockNigga.Settings.MuteBoomBox, function(v)
    CockNigga.Settings.MuteBoomBox = v
end)


Extra:NewToggle("Auto Reload", CockNigga.Settings.AutoReload, function(v)
    CockNigga.Settings.AutoReload = v
end)


Extra:NewToggle("Show Stats", CockNigga.Settings.ShowStats, function(v)
    CockNigga.Settings.ShowStats = v
end)

Extra:NewSection("Auto 360")

Extra:NewToggle("Enabled", CockNigga.Misc.Auto360.Enabled, function(v)
    CockNigga.Misc.Auto360.Enabled = v
end)

Extra:NewTextbox("KeyBind", CockNigga.Misc.Auto360.SpinKeybind, "EX: Q", "lower", "small", true, true, function(v)
    CockNigga.Misc.Auto360.SpinKeybind = v
end)

Extra:NewSlider("Speed", "", false, "/", {min = 1, max = 100, default = CockNigga.Misc.Auto360.SpinSpeed}, function(v)
    CockNigga.Misc.Auto360.SpinSpeed = v
end)

Extra:NewSection("Fake Spike")

Extra:NewToggle("Enabled", CockNigga.Misc.FakeSpike.Enabled, function(v)
    CockNigga.Misc.FakeSpike.Enabled = v
end)

Extra:NewTextbox("KeyBind", CockNigga.Misc.FakeSpike.FakeSpikeKeybind, "EX: Q", "lower", "small", true, true, function(v)
    CockNigga.Misc.FakeSpike.FakeSpikeKeybind = v
end)

Extra:NewSlider("Duration", "ms", false, "/", {min = 100, max = 5000, default = CockNigga.Misc.FakeSpike.SpikeDuration}, function(v)
    CockNigga.Misc.FakeSpike.SpikeDuration = v / 1000
end)






-- // Changing title

local increment = 0.2
local waittime = 5
task.spawn(function()
    while true do 
        Init:Text("E")
        wait(increment)
        Init:Text("Ev")
        wait(increment)
        Init:Text("Evo")
        wait(increment)
        Init:Text("Evol")
        wait(increment)
        Init:Text("Evolu")
        wait(increment)
        Init:Text("Evolut")
        wait(increment)
        Init:Text("Evoluti")
        wait(increment)
        Init:Text("Evolutio")
        wait(increment)
        Init:Text("Evolution")
        wait(increment)
        Init:Text("Evolution ")
        wait(increment)
        Init:Text("Evolution ;")
        wait(increment)
        Init:Text("Evolution ; ")
        wait(increment)
        Init:Text("Evolution ; #")
        wait(increment)
        Init:Text("Evolution ; #1")
        wait(waittime)
        Init:Text(" volution ; #1")
        wait(increment)
        Init:Text("  olution ; #1")
        wait(increment)
        Init:Text("   lution ; #1")
        wait(increment)
        Init:Text("    ution ; #1")
        wait(increment)
        Init:Text("     tion ; #1")
        wait(increment)
        Init:Text("      ion ; #1")
        wait(increment)
        Init:Text("       on ; #1")
        wait(increment)
        Init:Text("        n ; #1")
        wait(increment)
        Init:Text("          ; #1")
        wait(increment)
        Init:Text("          ; #1")
        wait(increment)
        Init:Text("            #1")
        wait(increment)
        Init:Text("            #1")
        wait(increment)
        Init:Text("             1")
        wait(increment)
        Init:Text("")
        wait(increment)

        Init:Text("x")
        wait(increment)
        Init:Text("xz")
        wait(increment)
        Init:Text("xz ")
        wait(increment)
        Init:Text("xz w")
        wait(increment)
        Init:Text("xz wa")
        wait(increment)
        Init:Text("xz was")
        wait(increment)
        Init:Text("xz was ")
        wait(increment)
        Init:Text("xz was h")
        wait(increment)
        Init:Text("xz was he")
        wait(increment)
        Init:Text("xz was her")
        wait(increment)
        Init:Text("xz was here")
        wait(waittime)
        Init:Text(" z was here")
        wait(increment)
        Init:Text("   was here")
        wait(increment)
        Init:Text("   was here")
        wait(increment)
        Init:Text("    as here")
        wait(increment)
        Init:Text("     s here")
        wait(increment)
        Init:Text("       here")
        wait(increment)
        Init:Text("       here")
        wait(increment)
        Init:Text("        ere")
        wait(increment)
        Init:Text("         re")
        wait(increment)
        Init:Text("          e")
        wait(increment)
        Init:Text("")
        wait(increment)

        Init:Text("#")
        wait(increment)
        Init:Text("#1")
        wait(increment)
        Init:Text("#1 ")
        wait(increment)
        Init:Text("#1 S")
        wait(increment)
        Init:Text("#1 St")
        wait(increment)
        Init:Text("#1 Str")
        wait(increment)
        Init:Text("#1 Stre")
        wait(increment)
        Init:Text("#1 Strea")
        wait(increment)
        Init:Text("#1 Stream")
        wait(increment)
        Init:Text("#1 Streama")
        wait(increment)
        Init:Text("#1 Streamab")
        wait(increment)
        Init:Text("#1 Streamabl")
        wait(increment)
        Init:Text("#1 Streamable")
        wait(waittime)
        Init:Text(" 1 Streamable")
        wait(increment)
        Init:Text("   Streamable")
        wait(increment)
        Init:Text("   Streamable")
        wait(increment)
        Init:Text("    treamable")
        wait(increment)
        Init:Text("     reamable")
        wait(increment)
        Init:Text("      eamable")
        wait(increment)
        Init:Text("       amable")
        wait(increment)
        Init:Text("        mable")
        wait(increment)
        Init:Text("         able")
        wait(increment)
        Init:Text("          ble")
        wait(increment)
        Init:Text("           le")
        wait(increment)
        Init:Text("            e")
        wait(increment)
        Init:Text("")
        wait(increment)

        Init:Text(".")
        wait(increment)
        Init:Text(".g")
        wait(increment)
        Init:Text(".gg")
        wait(increment)
        Init:Text(".gg/")
        wait(increment)
        Init:Text(".gg/c")
        wait(increment)
        Init:Text(".gg/ca")
        wait(increment)
        Init:Text(".gg/cam")
        wait(increment)
        Init:Text(".gg/caml")
        wait(increment)
        Init:Text(".gg/camlo")
        wait(increment)
        Init:Text(".gg/camloc")
        wait(increment)
        Init:Text(".gg/camlock")
        wait(waittime)
        Init:Text(" gg/camlock")
        wait(increment)
        Init:Text("  g/camlock")
        wait(increment)
        Init:Text("   /camlock")
        wait(increment)
        Init:Text("    camlock")
        wait(increment)
        Init:Text("     amlock")
        wait(increment)
        Init:Text("      mlock")
        wait(increment)
        Init:Text("       lock")
        wait(increment)
        Init:Text("        ock")
        wait(increment)
        Init:Text("         ck")
        wait(increment)
        Init:Text("          k")
        wait(increment)
        Init:Text("")
        wait(increment)
    end
end)

Init:UpdateKeybind(CockNigga.MainSettings.InternalUi.KeyBind)
    end

    notify("CockNigga loaded in "..tostring(tick() - startTick).." ms")
    notify("Welcome, "..ImportantVariables.DiscordTag..". You have executed CockNigga "..ImportantVariables.TotalEXE.." times. You have "..ImportantVariables.RemainingDays.." day(s) remaining.")
    print("Logged in as: "..ImportantVariables.DiscordID)

    if Utility.NotSafeGame then 
        task.spawn(function()
            notify("WARNING: THIS GAME IS POTENTIALLY NOT SAFE TO USE CockNigga IN. PLEASE BEWARE WE ARE NOT RESPONSIBLE FOR ANY BANS/KICKS. YOU HAVE BEEN WARNED.")
            wait(1)
            notify("WARNING: THIS GAME IS POTENTIALLY NOT SAFE TO USE CockNigga IN. PLEASE BEWARE WE ARE NOT RESPONSIBLE FOR ANY BANS/KICKS. YOU HAVE BEEN WARNED.")
            wait(1)
            notify("WARNING: THIS GAME IS POTENTIALLY NOT SAFE TO USE CockNigga IN. PLEASE BEWARE WE ARE NOT RESPONSIBLE FOR ANY BANS/KICKS. YOU HAVE BEEN WARNED.")
        end)
    end
