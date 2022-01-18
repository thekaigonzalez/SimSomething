local st = game.ReplicatedStorage

--game.ReplicatedStorage.updateclientcurrency:FireServer("player 1", "value 69")

print("script lloaded")

local btn = game.StarterGui.ScreenGui.TextButton

local playre = game.Players.LocalPlayer

--game.ReplicatedStorage.updateclientcurrency:FireServer(playre, 100)

script.Parent.MouseButton1Click:Connect(function() 
	print("hello memes")
	local mult = game.ReplicatedStorage.Request_PlayerData:InvokeServer(playre)
	local gen = Random.new()
	print(playre.UserId)
	if (tostring(playre.UserId) == game.CreatorId) then
		game.ReplicatedStorage.updateclientcurrency:FireServer(playre, 12999 * mult)
	end
	
	if (gen:NextInteger(1, 100000) == 5555) then
		game.ReplicatedStorage.updateclientcurrency:FireServer(playre, 500000 * mult)
	end
	
	game.ReplicatedStorage.updateclientcurrency:FireServer(playre, gen:NextInteger(1, 5) * mult)
end)
