--[[
This script has been deprecated because of Clientside research.
]]

local ply = game.Players.LocalPlayer

print("loaded Client script")
print("l ")
print(game.ReplicatedStorage.Request_PlayerCoins:InvokeServer(ply))

if game.ReplicatedStorage.Request_PlayerCoins:InvokeServer(ply) >= 100000000000000 then
	game.StarterGui.ScreenGui.Enabled = false
	game.StarterGui.za.Enabled = true
end

if game.ReplicatedStorage.OwnsLicense:InvokeServer(ply) then
	local ClassicSword = game.ReplicatedStorage:WaitForChild("ClassicSword"):Clone()
	ClassicSword.Parent = ply.Backpack
end

--if game.ReplicatedStorage.HasRH:InvokeServer(ply) then
--	print("Player owns redhead")
--	ply.Character:WaitForChild("Head").Color = Color3.new(0.666667, 0, 0)
--end

--if game.ReplicatedStorage.HasGA:InvokeServer(ply) then
--	print("Player owns GreenArms")
--	ply.Character:WaitForChild("Left Arm").Color = Color3.new(0.137255, 0.356863, 0)
--end
