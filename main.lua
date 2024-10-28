local GameName = "FE Radio GUI - by nexer1234"

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({IntroText = "Radio FE", IntroIcon = "rbxassetid://15315284749",Name = GameName, HidePremium = false, SaveConfig = true, ConfigFolder = "Tutorial"})

OrionLib:MakeNotification({Name = "Warning",Content = "Use at your own risk.",Image = "rbxassetid://7733658504",Time = 5})

local Misc = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Misc1 = Misc:AddSection({
	Name = "Play Music!"

Misc1:AddTextbox({
    Name = "Sound/Music ID",
    Default = "Input",
    TextDisappear = false,
    Callback = function(Value)
_G.SoundID = Value
    end
})

Misc1:AddButton({
    Name = "Play Sound/Music",
    Callback = function()
local args = {
	[1] = "rbxassetid://"_G.SoundID,
	[2] = game:GetService("Players").LocalPlayer.Character.Torso
}
game:GetService("ReplicatedStorage"):WaitForChild("PlaySoundRemote"):InvokeServer(unpack(args))
    end
})

Misc1:AddButton({
    Name = "Stop Sound/Music { if it's not stopping, just reset }",
    Callback = function()
game:GetService("ReplicatedStorage").RadioStop:FireServer()
game:GetService("ReplicatedStorage").StopRadio:FireServer()
game:GetService("ReplicatedStorage"):WaitForChild("StopSoundRemote"):InvokeServer()
    end
})
