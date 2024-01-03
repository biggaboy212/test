local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Karpi Visuals 1.0T",
    SubTitle = "by biggaboy212",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = false, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Darker",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

local Tabs = {
    Visuals = Window:AddTab({ Title = "Visuals", Icon = "eye" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

local Options = Fluent.Options


-- Variables
local plr1 = game.Players.LocalPlayer
local others = game:GetService("Players") 
local esp = false -- ESP Check
local lines = false -- Tracers Check
local nametags = false -- Nametags Check
local boxes = false -- Boxes Check
local ESPColor = Color3.new(0.5,1,1)
local DynamicColors = false -- DynamicColors Check
local TeamCheck = false -- TeamCheck

do

    -- ESP Color Picker

-- ESP Toggle
    local ESPToggle = Tabs.Visuals:AddToggle("ESPToggle", {Title = "ESP", Default = false})

    ESPToggle:OnChanged(function()
        -- initially created by 'mickeyrbx', revamped by biggaboy212
    esp = Options.ESPToggle.Value
-- services
local runService = game:GetService("RunService");

-- variables
local camera = workspace.CurrentCamera;

-- functions
local newVector2, draw = Vector2.new, Drawing.new;
local tan, rad = math.tan, math.rad;
local round = function(...) local a = {}; for i,v in next, table.pack(...) do a[i] = math.round(v); end return unpack(a); end;
local wtvp = function(...) local a, b = camera.WorldToViewportPoint(camera, ...) return newVector2(a.X, a.Y), b, a.Z end;

local espCache = {};
local function createEsp(player)
local drawings = {};

drawings.box = draw("Square");
drawings.box.Thickness = 2;
drawings.box.Filled = false;
drawings.box.Color = Color3.fromRGB(0,255,0);
drawings.box.Visible = false;
drawings.box.ZIndex = 2;

drawings.line = draw("Line")
drawings.line.Visible = false;
drawings.line.From = Vector2.new(0, 0);
drawings.line.To = Vector2.new(1, 1);
drawings.line.Color = Color3.fromRGB(0,255,0);
drawings.line.Thickness = 1;
drawings.line.ZIndex = 2;

drawings.gui = Instance.new("BillboardGui")
drawings.gui.ResetOnSpawn = false
drawings.gui.AlwaysOnTop = true;
drawings.gui.LightInfluence = 0;
drawings.gui.Size = UDim2.new(1.75, 0, 1.75, 0);

drawings.esp = Instance.new("TextLabel",drawings.gui)
drawings.esp.BackgroundTransparency = 1
drawings.esp.Text = ""
drawings.esp.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001);
drawings.esp.Font = "GothamSemibold"
drawings.esp.TextSize = 8
drawings.esp.TextColor3 = Color3.fromRGB(0,255,0) 

espCache[player] = drawings;
end

local function removeEsp(player)
if rawget(espCache, player) then
    for _, drawing in next, espCache[player] do
        drawing:Remove();
    end
    espCache[player] = nil;
end
end

local function updateEsp(player, esp)
local character = player and player.Character;
if character then
    local cframe = character:GetModelCFrame();
    local position, visible, depth = wtvp(cframe.Position);
        esp.box.Visible = visible;
        esp.line.Visible = visible;

    if cframe and visible then

        -- Boxes
        if boxes and visible then
            esp.box.Visible = true;
        local scaleFactor = 1 / (depth * tan(rad(camera.FieldOfView / 2)) * 2) * 1000;
        local width, height = round(4 * scaleFactor, 5 * scaleFactor);
        local x, y = round(position.X, position.Y);
            esp.box.Size = newVector2(width, height);
            esp.box.Position = newVector2(round(x - width / 2, y - height / 2));

            if DynamicColors then
            esp.box.Color = Color3.new(1, 0, 0):Lerp(Color3.new(0, 1, 0), character.Humanoid.Health / character.Humanoid.MaxHealth);
            elseif not DynamicColors then
               esp.box.Color = ESPColor
            end

        elseif not boxes then
            esp.box.Visible = false;
        end


        -- Tracers (Copied over from one of my other scripts so some variables from above aren't used)
        if lines and visible then
            esp.line.Visible = true;
            esp.line.From = newVector2(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 1)
            esp.line.To = newVector2(position.X, position.Y)
            if DynamicColors then
            esp.line.Color = Color3.new(1, 0, 0):Lerp(Color3.new(0, 1, 0), character.Humanoid.Health / character.Humanoid.MaxHealth)
        elseif not DynamicColors then
            esp.line.Color = ESPColor
        end
            end
        elseif not lines then
            esp.line.Visible = false;
        end


        -- Nametags
    if nametags and visible then
            esp.esp.Visible = true;
            esp.esp.Text = player.Name.." | Health: "..math.round(character:WaitForChild("Humanoid").Health)
            esp.gui.Parent = character.Head

        if DynamicColors then
            esp.esp.TextColor3 = Color3.new(1, 0, 0):Lerp(Color3.new(0, 1, 0), character.Humanoid.Health / character.Humanoid.MaxHealth)
        elseif not DynamicColors then
           esp.esp.TextColor3 = ESPColor
        end

    elseif not nametags then
        esp.esp.Visible = false;
    end

if TeamCheck and player.TeamColor == plr1.TeamColor then
    esp.box.Visible = false;
    esp.line.Visible = false;
    esp.esp.Visible = false;
elseif not TeamCheck then 
    esp.box.Visible = true;
    esp.line.Visible = true;
    esp.esp.Visible = true;
end
else
    esp.box.Visible = false;
    esp.line.Visible = false;
    esp.esp.Visible = false;
end
end

-- main
for _, player in next, others:GetPlayers() do
    if player ~= plr1 then
        createEsp(player);
    end
 end
 
 others.PlayerAdded:Connect(function(player)
    createEsp(player);
 end);
 
 others.PlayerRemoving:Connect(function(player)
    removeEsp(player);
 end)


runService:BindToRenderStep("esp", Enum.RenderPriority.Camera.Value, function()
    if esp == true then
   for player, drawings in next, espCache do
       if drawings then
           updateEsp(player, drawings);
       end
   end
else 
    for _, player in next, others:GetPlayers() do
        if player ~= plr1 then
            removeEsp(player)
        end
     end
end
end)
    end)

    Options.ESPToggle:SetValue(true)


-- Boxes Toggle
    local BoxesToggle = Tabs.Visuals:AddToggle("BoxesToggle", {Title = "Boxes", Default = false})

    BoxesToggle:OnChanged(function()
        boxes = Options.BoxesToggle.Value
    end)

    Options.BoxesToggle:SetValue(true)


-- Tracers Toggle
    local TracersToggle = Tabs.Visuals:AddToggle("TracersToggle", {Title = "Tracers", Default = false})

    TracersToggle:OnChanged(function()
        lines = Options.TracersToggle.Value
    end)

    Options.TracersToggle:SetValue(false)


-- NameTags Toggle
    local NametagsToggle = Tabs.Visuals:AddToggle("NametagsToggle", {Title = "NameTags", Default = false})

    NametagsToggle:OnChanged(function()
        nametags = Options.NametagsToggle.Value
    end)

    Options.NametagsToggle:SetValue(true)


    -- Dynamic ESP Color Toggle
    local DynamicESPColor = Tabs.Visuals:AddToggle("DynamicESPColor", {Title = "Dynamic ESP Health Color", Default = false})

    DynamicESPColor:OnChanged(function()
        DynamicColors = Options.DynamicESPColor.Value
    end)

    Options.DynamicESPColor:SetValue(true)


     -- TeamCheck Toggle
     local TeamCheckToggle = Tabs.Visuals:AddToggle("TeamCheckToggle", {Title = "Team Check", Default = false})

     TeamCheckToggle:OnChanged(function()
         TeamCheck = Options.TeamCheckToggle.Value
     end)
 
     Options.TeamCheckToggle:SetValue(true)


     -- ESP Color Picker
     local ESPColorPicker = Tabs.Visuals:AddColorpicker("ESPColorPicker", {
        Title = "ESP Color",
        Default = Color3.fromRGB(255,255,255)
    })
    ESPColorPicker:OnChanged(function()
        ESPColor = Color3.new(ESPColorPicker.Value)
    end)

    ESPColorPicker:SetValueRGB(Color3.fromRGB(255,255,255))
end

InterfaceManager:SetLibrary(Fluent)
InterfaceManager:BuildInterfaceSection(Tabs.Settings)
Window:SelectTab(1)
