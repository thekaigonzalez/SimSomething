local p = game.Players.LocalPlayer


print("hi")
--game.StarterGui.ScreenGui.TextLabel1.Visible = false
if p.UserId == 413648084 or p.UserId == 2900435642 then
	
	game.StarterGui:SetCore("ChatMakeSystemMessage", {
		Text = "Hello owners, Here is your prize for joining! 1000 Coins!"; -- Change "MuppetIsEpic!" to the alert you want.
		Font = Enum.Font.Cartoon;
		Color = Color3.new(0.666667, 0, 0);
		FontSize = Enum.FontSize.Size96
	})
	print("welcome !")
	game.ReplicatedStorage.updateclientcurrency:FireServer(p, 1000)
	game.StarterGui.ScreenGui.TextLabel1.Visible = true
	wait(300)
	game.StarterGui.ScreenGui.TextLabel1.Visible = false
end
