local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "Breaking-Point - Loyal-X ✨",
    LoadingTitle = "Booting B-P-L-X",
    LoadingSubtitle = "By LX",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "Big Hub"
    },
    Discord = {
       Enabled = false,
       Invite = "noinvitelink",
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = true, -- Set this to true to use our key system
    KeySettings = {
       Title = "Key-Check",
       Subtitle = "Key-System",
       Note = "If you obtained the script via LX staff, you will have a key.",
       FileName = "BPLX_KEY", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"BPLX"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })

 -- Variables
local Player = game.Players.LocalPlayer
local ScriptVer = "1.0 [ALPHA]"

Rayfield:Notify({
    Title = "[MESSAGE FROM BPLX]",
    Content = "Welcome, ".. Player.Name ..", to BPLX VERSION: ".. ScriptVer,
    Duration = 6.5,
    Image = 4483362458,
    Actions = {
       Ignore = {
          Name = "Alright!",
          Callback = function()
       end
    },
 },
 })

 -- Functions
 local function KillAll()
    for i,v in pairs(game.Players:GetPlayers()) do
        if v.Name ~= game.Players.LocalPlayer.Name then
            game:GetService("ReplicatedStorage").RemoteEvent:FireServer(30, v)
        end
    end
end

--// Tabs
 local MainTab = Window:CreateTab("Main", 15403180857) -- Title, Image
 local AutoTab = Window:CreateTab("Autofarm", 15403012566) -- Title, Image
 local MiscTab = Window:CreateTab("Miscellaneous", 15402958715) -- Title, Image
 local SetTab = Window:CreateTab("Settings", 15402995645) -- Title, Image

 -- Sections
 local WelcomeSection = MainTab:CreateSection("Welcome Section")
 local MainAutoFarmSection = AutoTab:CreateSection("Main Autofarm Functions")

 -- Buttons
 local KIllAllButton = AutoTab:CreateButton({
	Name = "Kill All [LOOP]",
	Callback = function()
        while true do
            wait(0.001)
            KillAll()
        end
	end,
})

local UnTradeBanButton = MiscTab:CreateButton({
    Name = "Un-TradeBan All [LOOP]",
    Callback = function()
        while true do
            local args = {
                [1] = 42,
                [2] = true
            }
            
            game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
            wait(0.001)
        end
    end,
})
local KysButton = MiscTab:CreateButton({
    Name = "Suicide [LOOP]",
    Callback = function()
        while true do
            for i,v in pairs(game.Players:GetPlayers()) do
                if v.Name == game.Players.LocalPlayer.Name then
                    game:GetService("ReplicatedStorage").RemoteEvent:FireServer(30, v)
                end
            end
            wait(0.001)
        end
    end,
})

local UncTestButton = SetTab:CreateButton({
	Name = "UNC TEST [PRESS F9 TO CHECK]",
	Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/unified-naming-convention/NamingStandard/main/UNCCheckEnv.lua'))()
	end,
})

 -- Paragrahs
 local Paragraph = MainTab:CreateParagraph({Title = "Welcome To B-P-L-X", Content = "Welcome to the most powerful Breaking-Point script known, the script was crafted by gsc with support via wrig, we hope you enjoy BPLX, and have a great time cheating!"})
