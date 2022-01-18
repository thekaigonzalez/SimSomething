script.Parent.MouseButton1Click:Connect(function() 
	game.StarterGui.ScreenGui.Enabled = true
	game.StarterGui.za.Enabled = false
	game.ReplicatedStorage.Prestige(game.Players.LocalPlayer)
end)