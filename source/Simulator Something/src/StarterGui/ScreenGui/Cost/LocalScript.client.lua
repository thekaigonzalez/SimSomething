local l = script.Parent

while true do
	l.Text = "Your Multiplier Cost: " .. game.ReplicatedStorage.Request_PlayerCost:InvokeServer(game.Players.LocalPlayer)
end
