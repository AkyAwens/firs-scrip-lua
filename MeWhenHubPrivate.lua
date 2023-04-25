getgenv().SecureMode = true
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
	Name = "MeWhenHub BETA VERSION EXCLUSIVE",
	LoadingTitle = "wait fucking noob",
	LoadingSubtitle = "by akawakaken for comprtif",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = nil, -- Create a custom folder for your hub/game
		FileName = "MeWhenHubUseless"
	},
	KeySystem = true, -- Set this to true to use our key system
	KeySettings = {
		Title = "key:troll:",
		Subtitle = "nigger",
		Note = "key is not 1234",
		FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
		SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
		GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
		Key = {"1234"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
	}
})






local Tab = Window:CreateTab("Combat", 4483362458) -- Title, Image
local Section = Tab:CreateSection("Combat")
local Button = Tab:CreateButton({
   Name = "Expand Head Hitbox",
   Callback = function()
    _G.HeadSize = 4 _G.Disabled = true game:GetService('RunService').RenderStepped:connect(function() if _G.Disabled then for i,v in next, game:GetService('Players'):GetPlayers() do if v.Name ~= game:GetService('Players').LocalPlayer.Name then pcall(function() v.Character.Head.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize) v.Character.Head.Transparency = 0.8 v.Character.Head.BrickColor = BrickColor.new("Really blue") v.Character.Head.Material = "Neon" v.Character.Head.CanCollide = false end) end end end end)

_G.HumanoidRootPartSize = 4 _G.Disabled = true game:GetService('RunService').RenderStepped:connect(function() if _G.Disabled then for i,v in next, game:GetService('Players'):GetPlayers() do if v.Name ~= game:GetService('Players').LocalPlayer.Name then pcall(function() v.Character.HumanoidRootPart.Size = Vector3.new(_G.HumanoidRootPartSize,_G.HumanoidRootPartSize,_G.HumanoidRootPartSize) v.Character.HumanoidRootPart.Transparency = 1 v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue") v.Character.HumanoidRootPart.Material = "Neon" v.Character.HumanoidRootPart.CanCollide = false end) end end end end)
   end,
})



local Tab = Window:CreateTab("Visuals", 4483362458) -- Title, Image
local Section = Tab:CreateSection("Visual")

local Toggle = Tab:CreateToggle({
   Name = "Fullbright?",
   CurrentValue = false,
   Flag = "Felbrught", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   if not _G.FullBrightExecuted then

	_G.FullBrightEnabled = false

	_G.NormalLightingSettings = {
		Brightness = game:GetService("Lighting").Brightness,
		ClockTime = game:GetService("Lighting").ClockTime,
		FogEnd = game:GetService("Lighting").FogEnd,
		GlobalShadows = game:GetService("Lighting").GlobalShadows,
		Ambient = game:GetService("Lighting").Ambient
	}

	game:GetService("Lighting"):GetPropertyChangedSignal("Brightness"):Connect(function()
		if game:GetService("Lighting").Brightness ~= 1 and game:GetService("Lighting").Brightness ~= _G.NormalLightingSettings.Brightness then
			_G.NormalLightingSettings.Brightness = game:GetService("Lighting").Brightness
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").Brightness = 1
		end
	end)

	game:GetService("Lighting"):GetPropertyChangedSignal("ClockTime"):Connect(function()
		if game:GetService("Lighting").ClockTime ~= 12 and game:GetService("Lighting").ClockTime ~= _G.NormalLightingSettings.ClockTime then
			_G.NormalLightingSettings.ClockTime = game:GetService("Lighting").ClockTime
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").ClockTime = 12
		end
	end)

	game:GetService("Lighting"):GetPropertyChangedSignal("FogEnd"):Connect(function()
		if game:GetService("Lighting").FogEnd ~= 786543 and game:GetService("Lighting").FogEnd ~= _G.NormalLightingSettings.FogEnd then
			_G.NormalLightingSettings.FogEnd = game:GetService("Lighting").FogEnd
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").FogEnd = 786543
		end
	end)

	game:GetService("Lighting"):GetPropertyChangedSignal("GlobalShadows"):Connect(function()
		if game:GetService("Lighting").GlobalShadows ~= false and game:GetService("Lighting").GlobalShadows ~= _G.NormalLightingSettings.GlobalShadows then
			_G.NormalLightingSettings.GlobalShadows = game:GetService("Lighting").GlobalShadows
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").GlobalShadows = false
		end
	end)

	game:GetService("Lighting"):GetPropertyChangedSignal("Ambient"):Connect(function()
		if game:GetService("Lighting").Ambient ~= Color3.fromRGB(178, 178, 178) and game:GetService("Lighting").Ambient ~= _G.NormalLightingSettings.Ambient then
			_G.NormalLightingSettings.Ambient = game:GetService("Lighting").Ambient
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
		end
	end)

	game:GetService("Lighting").Brightness = 1
	game:GetService("Lighting").ClockTime = 12
	game:GetService("Lighting").FogEnd = 786543
	game:GetService("Lighting").GlobalShadows = false
	game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)

	local LatestValue = true
	spawn(function()
		repeat
			wait()
		until _G.FullBrightEnabled
		while wait() do
			if _G.FullBrightEnabled ~= LatestValue then
				if not _G.FullBrightEnabled then
					game:GetService("Lighting").Brightness = _G.NormalLightingSettings.Brightness
					game:GetService("Lighting").ClockTime = _G.NormalLightingSettings.ClockTime
					game:GetService("Lighting").FogEnd = _G.NormalLightingSettings.FogEnd
					game:GetService("Lighting").GlobalShadows = _G.NormalLightingSettings.GlobalShadows
					game:GetService("Lighting").Ambient = _G.NormalLightingSettings.Ambient
				else
					game:GetService("Lighting").Brightness = 1
					game:GetService("Lighting").ClockTime = 12
					game:GetService("Lighting").FogEnd = 786543
					game:GetService("Lighting").GlobalShadows = false
					game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
				end
				LatestValue = not LatestValue
			end
		end
	end)
end

_G.FullBrightExecuted = true
_G.FullBrightEnabled = not _G.FullBrightEnabled
   -- The variable (Value) is a boolean on whether the toggle is true or false
   end,
})
local Button = Tab:CreateButton({
   Name = "Esp NEW",
   Callback = function (Value)
	   loadstring(game:HttpGet("https://raw.githubusercontent.com/AkyAwens/stolenesp/main/uhh"))()
   end
})

local Tab = Window:CreateTab("Misc", 4483362458) -- Title, Image
local Section = Tab:CreateSection("Misc")

local Button = Tab:CreateButton({
   Name = "Duo with urself",
   Callback = function()
    local args = {[1] = 39, [2] = game:GetService("Players").LocalPlayer}
    game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
   end,
})

local Button = Tab:CreateButton({
   Name = "Display Knife 2",
   Callback = function()
   local args = {
    [1] = 53,
    [2] = "Display Knife 2",
    [3] = true
    }

    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
   end,
})
--blue galazy
local Button = Tab:CreateButton({
   Name = "Vip Chair Blue Galaxy",
   Callback = function()
   local args = {
    [1] = 55,
    [2] = "Chair Skins",
    [3] = "Space",
    [4] = "Blue Galaxy"
	}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
   end,
})
local Button = Tab:CreateButton({
   Name = "Vip Chair Stellar",
   Callback = function()
   local args = {
    [1] = 55,
    [2] = "Chair Skins",
    [3] = "Space",
    [4] = "Stellar"
    }

    game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
   end,
})
local Button = Tab:CreateButton({
   Name = "AutoFarm(Recommended use with AntiAfk)",
   Callback = function()
   getgenv().AutoFarm = true
loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/littlegui/main/Breaking-Point'))()
   end,
})
local Button = Tab:CreateButton({
   Name = "Check TradeBanneds Peoples!(F9)",
   Callback = function()
   for _, player in pairs(game.Players:GetPlayers()) do
   local tradebanned = player.tradebanned
    if tradebanned then
        if tradebanned.Value then
            print(player.Name .. " is tradebanned! ")
        end
    end
end
   end,
})
local Button = Tab:CreateButton({
   Name = "buy fucking e rain(3 cred)",
   Callback = function()
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(66, "Animations", "Exclusive")
   end,
})
local Button = Tab:CreateButton({
   Name = "Buy Black Torso",
   Callback = function()
    local args = {
    [1] = 62,
    [2] = -1
}
game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
end,
})
local Button = Tab:CreateButton({
   Name = "Trade Unban",
   Callback = function()
 while wait() do

local args = {
    [1] = 42,
    [2] = true
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
end
end,
})
local Button = Tab:CreateButton({
   Name = "Remove Glass",
   Callback = function()
 for i,v in next, getconnections(workspace.glass.Changed) do v:Disable() end
for i,v in next, getconnections(workspace.ChildRemoved) do v:Disable() end
workspace.glass:Destroy()
end,
})


Rayfield:Notify({
   Title = "hi nigga comparatif or akakweanen",
   Content = "theres no anti afk cuz it broke script go away1!1",
   Duration = 6.5,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "fuck off monkey!",
         Callback = function()
         print("The user tapped Okay!")
      end
   },
},
})




Rayfield:LoadConfiguration()



