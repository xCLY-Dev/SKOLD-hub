--// Init 

repeat wait() until game:IsLoaded()

local Environment = getgenv()
for i,v in next, getconnections(game:GetService("ScriptContext").Error) do 
    v:Disable()
end

--// Services 

Environment.Players = game:GetService("Players")
Environment.ReplicatedStorage = game:GetService("ReplicatedStorage")
Environment.ReplicatedFirst = game:GetService("ReplicatedFirst") 
Environment.RunService = game:GetService("RunService")
Environment.UserInputService = game:GetService("UserInputService")
Environment.TweenService = game:GetService("TweenService")
Environment.Lighting = game:GetService("Lighting")
Environment.Teams = game:GetService("Teams")
Environment.CoreGui = game:GetService("CoreGui")
Environment.HttpService = game:GetService("HttpService")
Environment.TeleportService = game:GetService("TeleportService")
Environment.Debris = game:GetService("Debris")
Environment.StarterGui = game:GetService("StarterGui")
Environment.MarketplaceService = game:GetService("MarketplaceService")
local Environment = getgenv()

--// Environment

Environment.getupvalue = getupvalue or debug.getupvalue 
Environment.setupvalue = setupvalue or debug.setupvalue 
Environment.getproto = getproto or debug.getproto 
Environment.setproto = setproto or debug.setproto 
Environment.getinfo = getinfo or debug.getinfo 
Environment.getconstant = getconstant or debug.getconstant 
Environment.setconstant = setconstant or debug.setconstant 
Environment.setmetatable = setmetatable or debug.setmetatable 
Environment.getmetatable = getmetatable or debug.getmetatable
Environment.traceback = debug.traceback
Environment.getstack = getstack or debug.getstack 
Environment.setstack = setstack or debug.setstack
Environment.getupvalues = getupvalues or debug.getupvalues 
Environment.getconstants = getconstants or debug.getconstants 
Environment.getgc = getgc or get_gc_objects or debug.getgc 
Environment.getreg = getreg or getregistry or debug.getregistry 
Environment.setreadonly = setreadonly or function(tbl, bool) if bool then make_readonly(tbl) else make_writeable(tbl) end end
Environment.get_thread_context = get_thread_context or getthreadcontext or getidentity or syn.get_thread_identity
Environment.get_thread_identity = Environment.get_thread_context
Environment.set_thread_context = set_thread_context or setthreadcontext or setidentity or syn.set_thread_identity
Environment.set_thread_identity = Environment.set_thread_context
Environment.hookfunction = hookfunction or hookfunc or detour_function
Environment.islclosure = islclosure or is_l_closure
Environment.checkcaller = checkcaller or is_protosmasher_caller
Environment.isreadonly = isreadonly or is_readonly
Environment.getscriptclosure = getscriptclosure or get_script_function or getscriptfunction
Environment.getnilinstances = getnilinstances or get_nil_instances
Environment.getcallingscript = getcallingscript or get_calling_script
Environment.getloadedmodules = getloadedmodules or get_loaded_modules
Environment.mousemoverel = mousemoverel or Input.MoveMouse 
Environment.getconnections = getconnections or get_signal_connections
Environment.request = http_request or request or (http and http.request) or (syn and syn.request)
Environment.newcclosure = newcclosure or protect_function
Environment.setsimulationradius = setsimulationradius or set_simulation_radius

--// Math 

Environment.cos = math.cos 
Environment.sin = math.sin 
Environment.asin = math.asin 
Environment.atan2 = math.atan2 
Environment.pi = math.pi 
Environment.rad = math.rad 
Environment.deg = math.deg 
Environment.abs = math.abs 
Environment.acos = math.acos
Environment.atan = math.atan
Environment.ceil = math.ceil 
Environment.clamp = math.clamp 
Environment.cosh = math.cosh 
Environment.exp = math.exp 
Environment.floor = math.floor 
Environment.ldexp = math.ldexp 
Environment.fmod = math.fmod
Environment.frexp = math.frexp
Environment.log = math.log 
Environment.log10 = math.log10 
Environment.max = math.max 
Environment.min = math.min 
Environment.modf = math.modf 
Environment.noise = math.noise 
Environment.pow = math.pow 
Environment.random = math.random 
Environment.randomseed = math.randomseed 
Environment.round = math.round 
Environment.sign = math.sign 
Environment.sinh = math.sinh 
Environment.sqrt = math.sqrt 
Environment.tan = math.tan 
Environment.tanh = math.tanh 
Environment.huge = math.huge 


--// Variables 

Environment.player = Players.LocalPlayer 
Environment.CurrentPlayers = {}

for i,v in next, Players:GetPlayers() do 
    table.insert(CurrentPlayers, v.Name)
end

Players.PlayerAdded:connect(function(plr)
    table.insert(CurrentPlayers, plr.Name)
end)

Players.PlayerRemoving:connect(function(plr)
    table.insert(CurrentPlayers, table.find(CurrentPlayers, plr.Name))
end)

--// Anti AFK 

for i,v in next, getconnections(player.Idled) do 
    v:Disable()
end

--// Functions 

Environment.WalkSpeed = function(ws)
    if player.Character and player.Character:FindFirstChild("Humanoid") then
        player.Character.Humanoid.WalkSpeed = ws
    end
end

Environment.JumpPower = function(jp)
    if player.Character and player.Character:FindFirstChild("Humanoid") then
        player.Character.Humanoid.JumpPower = jp
    end
end

Environment.Notification = function(title, text, duration)
    StarterGui:SetCore("SendNotification", {
		Title = tostring(title);
		Text = tostring(text);
		Duration = tonumber(duration);
	})
end

Environment.Teleport = function(pos)
    local Type = typeof(pos)
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        if Type == "CFrame" then 
            player.Character.HumanoidRootPart.CFrame = pos
        elseif Type == "Position" then 
            player.Character.HumanoidRootPart.Position = pos
        end
    end
end
