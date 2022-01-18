local l = script.Parent

while true do
	l.Text = "Your Multiplier: " .. game.ReplicatedStorage.Request_PlayerData:InvokeServer(game.Players.LocalPlayer)
end
