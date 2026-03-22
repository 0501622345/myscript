
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()


local Window = Rayfield:CreateWindow({
    Name = "Script Speed Clicker ⚡",
    Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
    LoadingTitle = "hello this is loading",
    LoadingSubtitle = "by Saleh UAE",
    Theme = "Ocean", -- Check https://docs.sirius.menu/rayfield/configuration/themes
 
     ToggleUIKeybind = "B",

    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface
 
    ConfigurationSaving = {
       Enabled = false,
       FolderName = skibidi, -- Create a custom folder for your hub/game
       FileName = "Saleh script"
    },

 
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
       Title = "skibidi keys",
       Subtitle = "Key System",
       Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
       FileName = "skibidi key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"Hello", "skibidi"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 }) 

  _G.AutoFarmClick = false

function AutoClick()
    while _G.AutoFarmClick do
        game:GetService("ReplicatedStorage").IncreaseSpeed:FireServer()
        task.wait(0.1)
    end
end

local FarmTab = Window:CreateTab("Auto Farm ⚡", nil)
local FarmSection = FarmTab:CreateSection("Auto Farm")

FarmTab:CreateToggle({
    Name = "Auto Farm Clicks",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(ClickV)
        _G.AutoFarmClick = ClickV
        if ClickV then
            AutoClick()
        end
    end,
})



 
