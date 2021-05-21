local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

local UI = Material.Load({
     Title = "AnimeFightingSimulatorBoomer V1.2",
     Style = 3,
     SizeX = 400,
     SizeY = 300,
     Theme = "Light"
})

local Page = UI.New({
    Title = "AutoFarm"
})

Page.Toggle({
    Text = "AutoStrength", false,
    Callback = function(v)
        _G.autostrength = v
        while wait() do
        while true do
        local A_1 = "Stat"
        local A_2 = "Strength"
        local Event = game:GetService("ReplicatedStorage").RSPackage.Events.StatFunction
        Event:InvokeServer(A_1, A_2)
        if _G.autostrength == false then return end
        end
        end
    end
})

Page.Toggle({
    Text = "AutoChakra", false,
    Callback = function(v)
        _G.chakra = v
        while wait() do
        while true do
        wait()
        local A_1 = "Stat"
        local A_2 = "Chakra"
        local Event = game:GetService("ReplicatedStorage").RSPackage.Events.StatFunction
        Event:InvokeServer(A_1, A_2)
        if _G.chakra == false then return end
        end
        end
    end
})

Page.Toggle({
    Text = "AutoSword equipp sword", false,
    Callback = function(v)
        _G.autosword = v
        while wait() do
        while true do
        local A_1 = "Stat"
        local A_2 = "Sword"
        local Event = game:GetService("ReplicatedStorage").RSPackage.Events.StatFunction
        Event:InvokeServer(A_1, A_2)
        if _G.autosword == false then return end
        end
        end
    end
})

Page.Toggle({
    Text = "AutoDurability", false,
    Callback = function(v)
        _G.autodurablity = v
        while wait() do
        while true do
        local A_1 = "Stat"
        local A_2 = "Durability"
        local Event = game:GetService("ReplicatedStorage").RSPackage.Events.StatFunction
        Event:InvokeServer(A_1, A_2)
        if _G.autodurablity == false then return end
        end
        end
    end
})

local AutoPosition = UI.New({
    Title = "AutoPosition"
})

AutoPosition.Toggle({
    Text = "AutoPosition Durability Beginners", false,
    Callback = function(v)
        _G.Durability = v
        while wait() do
        while true do
        if _G.Durability == false then return end
        wait(0.5)
        local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
        local location = CFrame.new(101.254395, 72.1192322, 902.712769)
        pl.CFrame = location
        end
    end
    end
})

AutoPosition.Toggle({
    Text = "AutoPosition Chakra Beginners", false,
    Callback = function(v)
        _G.Chakra = v
        while wait() do
        while true do
        if _G.Chakra == false then return end
        wait(0.5)
        local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
        local location = CFrame.new(25.3488598, 66.8069382, -102.105476)
        pl.CFrame = location
        end
    end
    end
})

AutoPosition.Toggle({
    Text = "AutoPosition Strength Beginners", false,
    Callback = function(v)
        _G.Strength = v
        while wait() do
        while true do
        if _G.Strength == false then return end
        wait(0.5)
        local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
        local location = CFrame.new(23.8172359, 65.593544, 151.447052)
        pl.CFrame = location
            end
        end
    end
})

local Teleport = UI.New({
    Title = "Teleport"
})

Teleport.Button({
	Text = "Bang",
	Callback = function()
        local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
        local location = CFrame.new(-6.277, 80, 21.381)
        pl.CFrame = location
	end
})

Teleport.Button({
	Text = "Zoro",
	Callback = function()
		local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
        local location = CFrame.new(1355.72, 69.1316, -1705.9)
        pl.CFrame = location
	end
})

Teleport.Button({
	Text = "Kaneki",
	Callback = function()
		local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
        local location = CFrame.new(1731.58, 142.4, -155.06)
        pl.CFrame = location
	end
})

Teleport.Button({
	Text = "Giovanni",
	Callback = function()
        local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
        local location = CFrame.new(182.182, 62.3664, -213.85)
        pl.CFrame = location
	end
})

local OtherStuff = UI.New({
    Title = "OtherStuff"
})

OtherStuff.Toggle({
    Text = "HighJump", false,
    Callback = function(v)
        _G.highjump = v
        while wait() do
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
        if _G.highjump == false then return end
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 300
    end
    end
})

OtherStuff.Toggle({
    Text = "WalkSpeed", false,
    Callback = function(v)
        _G.walkspeed = v
        while wait() do
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        if _G.walkspeed == false then return end
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 300
    end
    end
})

local Credits = UI.New({
    Title = "Credits"
})

Credits.TextField({
    Text = "Made by LeviSip#9461",
    Callback = function(Value)
        print(Value)
    end
})

local gui = Instance.new("BillboardGui")
local esp = Instance.new("TextLabel")

if game.Players.LocalPlayer.Name == "Levi_Skillmaster2004" then
gui.Name = "gui"
gui.Parent = game:GetService("Workspace")["Levi_Skillmaster2004"].Head
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
gui.Active = true
gui.AlwaysOnTop = true
gui.LightInfluence = 1.000
gui.Size = UDim2.new(0, 200, 0, 50)
gui.StudsOffset = Vector3.new(0, 2, 0)

esp.Name = "esp"
esp.Parent = gui
esp.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
esp.BackgroundTransparency = 1.000
esp.Size = UDim2.new(0, 200, 0, 50)
esp.Font = Enum.Font.GothamBlack
esp.TextColor3 = Color3.fromRGB(119, 0, 255)
esp.TextScaled = true
esp.TextSize = 30.000
esp.TextWrapped = true
esp.Text = "Owner"
end
