script.Parent.MouseButton1Click:Connect(function()
	local playre = game.Players.LocalPlayer

	game.ReplicatedStorage.ShopBuyMultiplier:FireServer(playre, 10)
end)