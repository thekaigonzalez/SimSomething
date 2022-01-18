game.Workspace.GOLD.ClickDetector.MouseClick:Connect(function(player) 
	game.ReplicatedStorage.updateclientcurrency:FireClient(player, 100000)
	game.Workspace.GOLD.Anchored = false
end)