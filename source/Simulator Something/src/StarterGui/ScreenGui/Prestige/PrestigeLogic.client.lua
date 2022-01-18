local st = game.ReplicatedStorage

--game.ReplicatedStorage.updateclientcurrency:FireServer("player 1", "value 69")

print("script lloaded")

local btn = game.StarterGui.ScreenGui.TextButton

local playre = game.Players.LocalPlayer

--game.ReplicatedStorage.updateclientcurrency:FireServer(playre, 100)

script.Parent.MouseButton1Click:Connect(function() 
	game.ReplicatedStorage.Prestige:InvokeServer(game.Players.LocalPlayer)
end)
