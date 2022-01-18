local l = script.Parent

while true do
	l.Text = "Your Prestiges: " .. game.ReplicatedStorage.UpdaetPresstigen:InvokeServer(game.Players.LocalPlayer)
end
