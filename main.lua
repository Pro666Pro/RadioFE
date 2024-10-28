game.Players.PlayerAdded:Connect(function(player)
	player.CharacterAdded:Connect(function()
		local backpack = player:WaitForChild("Backpack")
		local cloneTool = game.ReplicatedStorage.Assets.Radio:Clone()
		cloneTool.Parent = backpack
	end)
end)

local bypass;
    bypass = hookmetamethod(game, "__namecall", function(method, ...) 
        if getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.Ban then
            return
        elseif getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.AdminGUI then
            return
        elseif getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.WalkSpeedChanged then
            return
        end
        return bypass(method, ...)
    end)

tool.Equipped:Connect(function()
--Code
end)

tool.Unequipped:Connect(function()
--Code
end)
