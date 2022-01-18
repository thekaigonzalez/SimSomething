local Players = game:GetService("Players")
local ServerScriptService = game:GetService("ServerScriptService")
local Workspace = game:GetService("Workspace")
local DataStore2 = require(ServerScriptService.DataStore2)

DataStore2.Combine("DATA", "points")
DataStore2.Combine("DATA", "multiplier")
DataStore2.Combine("DATA", "prestiges")

local outfits = {}

function outfits:Dorito(player) 
	player.Character:WaitForChild("Torso").Decal.Texture = 'rbxassetid://8572302604'
	player.Character:WaitForChild("Left Leg").Color = Color3.new(0.694118, 0, 0.00784314)
	player.Character:WaitForChild("Torso").Color = Color3.new(0.694118, 0, 0.00784314)
	player.Character:WaitForChild("Left Arm").Color = Color3.new(0.694118, 0, 0.00784314)
	player.Character:WaitForChild("Right Arm").Color = Color3.new(0.694118, 0, 0.00784314)
	player.Character:WaitForChild("Right Leg").Color = Color3.new(0.694118, 0, 0.00784314)
end

function outfits:Creatible(player) 
	--player.Character:WaitForChild("Torso").Decal.Texture = 'rbxassetid://8572302604'
	player.Character:WaitForChild("Left Leg").Color = Color3.new(1, 0, 0.0156863)
	player.Character:WaitForChild("Torso").Color = Color3.new(1, 0.584314, 0)
	player.Character:WaitForChild("Left Arm").Color = Color3.new(0.635294, 0.694118, 0)
	player.Character:WaitForChild("Right Arm").Color = Color3.new(0.101961, 0.694118, 0)
	player.Character:WaitForChild("Right Leg").Color = Color3.new(0, 0.00784314, 0.694118)
end

function outfits:BDoritos(player) 
	player.Character:WaitForChild("Torso").Decal.Texture = 'rbxassetid://8572302604'
	player.Character:WaitForChild("Left Leg").Color = Color3.new(0.0313725, 0, 1)
	player.Character:WaitForChild("Torso").Color =Color3.new(0.0313725, 0, 1)
	player.Character:WaitForChild("Left Arm").Color =Color3.new(0.0313725, 0, 1)
	player.Character:WaitForChild("Right Arm").Color = Color3.new(0.0313725, 0, 1)
	player.Character:WaitForChild("Right Leg").Color = Color3.new(0.0313725, 0, 1)
end

function outfits:McDonaldo(player) 
	player.Character:WaitForChild("Torso").Decal.Texture = 'rbxassetid://8577540751'
	
	player.Character:WaitForChild("Left Leg").Color = Color3.new(0, 0, 0)
	player.Character:WaitForChild("Torso").Color =Color3.new(0,0,0)
	player.Character:WaitForChild("Left Arm").Color =Color3.new(0,0,0)
	player.Character:WaitForChild("Right Arm").Color = Color3.new(0,0,0)
	player.Character:WaitForChild("Right Leg").Color = Color3.new(0,0,0)
	
	player.Character.Humanoid:AddAccessory(game:GetService("ReplicatedStorage"):WaitForChild("WorkerHat"):Clone())
end

function outfits:YezzBredSpecial(ply)
	local a = {}

	for _, i in pairs(game.ReplicatedStorage.yezzbred.Humanoid:GetAccessories()) do

		ply.Character.Humanoid:AddAccessory(i:Clone())
	end
	ply.Character:WaitForChild("Right Arm").Color = Color3.new(0.917647, 0.890196, 0.00392157)
	ply.Character:WaitForChild("Right Arm").Material = "Brick"
end


Players.PlayerAdded:Connect(function(player)
	
	local ownsOutfit = DataStore2("oof", player)
	local outfit = DataStore2("outfit", player)
	local useoutfit = DataStore2("useoutfit", player)
	local mainoutfit = DataStore2("mainoutfit", player)
	local ownsfhat = DataStore2("fedora", player)
	local RHS = DataStore2("redhead", player)
	local GA = DataStore2("greenarm", player)
	local Gt = DataStore2("gtooth", player)
	local C = DataStore2("core", player)
	local char = player.Character or player.CharacterAdded:Wait()
	

	if useoutfit:Get(0) == 0 then
		if RHS:Get(0) == 1 then
			print("Player owns redhead")
			player.Character:WaitForChild("Head").Color = Color3.new(0.666667, 0, 0)
		end
		
		if Gt:Get(0) == 1 then
			print("Player owns Golden Tooth")
			player.Character:WaitForChild("Left Leg").Color = Color3.new(0.282353, 0.12549, 0)
			player.Character:WaitForChild("Right Arm").Color = Color3.new(0.905882, 0.878431, 0)
		end
		
		if GA:Get(0) == 1 then
			print("Player owns GreenArms")
			player.Character:WaitForChild("Left Arm").Color = Color3.new(0.137255, 0.356863, 0)
		end
		
		if C:Get(0) == 1 then
			print("Player owns Core")
			player.Character:WaitForChild("Torso").Color = Color3.new(1, 0.968627, 0)
			player.Character:WaitForChild("Torso").Material = "Neon"
		end
	else
		print("You want outfit")
		if ownsOutfit:Get(0) == 1 then
			if outfit:Get(0) == 1 then
				outfits:Dorito(player)
			elseif outfit:Get(0) == 2 then
				outfits:Creatible(player)
			elseif outfit:Get(0) == 3 then
				outfits:BDoritos(player)
			elseif outfit:Get(0) == 4 then
				print("Good choice")
				outfits:McDonaldo(player)
				--char.Humanoid:AddAccessory(game:GetService("ReplicatedStorage"):WaitForChild("FFW"):Clone())
			elseif outfit:Get(0) == 5 then
				print("Good choice1")
				outfits:YezzBredSpecial(player)
				--char.Humanoid:AddAccessory(game:GetService("ReplicatedStorage"):WaitForChild("FFW"):Clone())
			end
		end
	end
	print("hi")
	
	
	
	if ownsfhat:Get(false) == true then
		
		char.Humanoid:AddAccessory(game:GetService("ReplicatedStorage"):WaitForChild("Fedora"):Clone())
	end
	local pointsStore = DataStore2("points", player)
	if player.UserId == 413648084 then
		pointsStore:Increment(1000)
	end
	local leaderstats = Instance.new("Folder")
	leaderstats.Name = "leaderstats"
	
	local points = Instance.new("NumberValue")
	points.Name = "Points"
	points.Value = pointsStore:Get(0) -- The "0" means that by default, they'll have 0 points
	points.Parent = leaderstats

	pointsStore:OnUpdate(function(newPoints)
		-- This function runs every time the value inside the data store changes.
		points.Value = newPoints
	end)
	
	local multi = Instance.new("NumberValue")
	multi.Name = "Points"
	multi.Value = pointsStore:Get(0) -- The "0" means that by default, they'll have 0 points
	multi.Parent = leaderstats
	local pf = DataStore2("multiplier", player)
	pf:OnUpdate(function(newPoints)
		-- This function runs every time the value inside the data store changes.
		multi.Value = newPoints
	end)

	leaderstats.Parent = player
	
	
	
end)

game.ReplicatedStorage.Switchmain.OnServerEvent:Connect(function(sender, p, n)
	local mainoutfit = DataStore2("mainoutfit", p)
	local OwnedOutfits = DataStore2("outfits_", p)
	
	local function THasValue(t, s)
		local mem = {}
		for _, n in ipairs(t) do
			table.insert(mem, n)

			if n == mem[_] and n == s then print("Two values but available") return "ERR1" end

			if n == mem[_] then print("Two values") return "ERR" end



			if n == s then return true end
		end
	end
	
	if THasValue(OwnedOutfits:Get({}), p) then
		print "Player can change"
	end
end)

game.ReplicatedStorage.TurnOnOutfit.OnServerEvent:Connect(function(n, m, num)
	local ownsOutfit = DataStore2("oof", m)
	local outfit = DataStore2("outfit", m)
	local useoutfit = DataStore2("useoutfit", m)
	local pointsStore = DataStore2("points", m)
	local OwnedOutfits = DataStore2("outfits_", m)
	
	--OwnedOutfits:Set({})
	
	
	

	if pointsStore:Get(0) >= 1000 and num == 1 then
		pointsStore:Increment(-1000)
		ownsOutfit:Set(1)
		outfit:Set(num)
		useoutfit:Set(1)
	elseif m.UserId == game.CreatorId and num == 2 and pointsStore:Get(0) >= 100000 then
		
			pointsStore:Increment(-100000)
			ownsOutfit:Set(1)
			outfit:Set(num)
			useoutfit:Set(1)
		
	elseif pointsStore:Get(0) >= 2000 and num == 3 then

		pointsStore:Increment(-2000)
		ownsOutfit:Set(1)
		outfit:Set(num)
		useoutfit:Set(1)

	elseif pointsStore:Get(0) >= 2008 and num == 4 then

		pointsStore:Increment(-2008)
		ownsOutfit:Set(1)
		outfit:Set(num)
		useoutfit:Set(1)

	elseif pointsStore:Get(0) >= 30111 and num == 5 then

		pointsStore:Increment(-30111)
		ownsOutfit:Set(1)
		outfit:Set(num)
		useoutfit:Set(1)

	end
	
end)

game.ReplicatedStorage.Outfits.DUMO.OnServerEvent:Connect(function(cl, pl)
	local useoutfit = DataStore2("useoutfit", pl)
	useoutfit:Set(0)
	print("cleared no outfit")
end)

game.ReplicatedStorage.Outfits.UMO.OnServerEvent:Connect(function(cl, pl)
	local useoutfit = DataStore2("useoutfit", pl)
	useoutfit:Set(1)
end)
game.ReplicatedStorage.OwnsOutfit.OnServerInvoke = function(ply) 
	local useoutfit = DataStore2("useoutfit", ply)
	if useoutfit:Get(0) == 1  then return true else return false end
end

game.ReplicatedStorage.OwnsLicense.OnServerInvoke = function(player) 
	if DataStore2("sword_license", player):Get(0) == 1 then return true else return false end
end

game.ReplicatedStorage.Prestige.OnServerInvoke = function(player)
	
	local pt = DataStore2("points", player)
	if pt:Get(0) >= 1000000000 then
		pt:Increment(-pt:Get(0))
		
		local mp = DataStore2("multiplier", player)
		
		mp:Increment(-mp:Get(0) + 1)
		
		local prest = DataStore2("prestiges", player)
		
		prest:Increment(1)
		
		mp:Increment(prest * 10)
	end
end

game.ReplicatedStorage.BuySwordLicense.OnServerInvoke = function(forplayer)
	local sw = DataStore2("sword_license", forplayer)
	local pt = DataStore2("points", forplayer)
	
	if pt:Get(0) >= 10000000000000000 then
		sw:Set(1)
		pt:Increment(-10000000000000000)
	end
end

game.ReplicatedStorage.updateclientcurrency.OnServerEvent:Connect(function(ply, player, value) 
	--print("e " .. tostring(e))
	--print("Changing value for player " .. tostring(player) .. " for value " .. value)
	local pointsStore = DataStore2("points", player)
	pointsStore:Increment(value) -- Give them 1 point
end)

game.ReplicatedStorage.BuyRH.OnServerInvoke = function(player) 
	local RH_Stat = DataStore2("redhead", player)
	
	if RH_Stat:Get(0) == 0 then
		local pointsStore = DataStore2("points", player)
		
		if pointsStore:Get(0) >= 1000000 then
			pointsStore:Increment(-1000000)
			RH_Stat:Increment(1)
			print("Player owns RedHead")
		else
			print("chan't buy")
		end
	end
end

game.ReplicatedStorage.GiveCore.OnServerInvoke = function(player) 
	local RH_Stat = DataStore2("core", player)

	if RH_Stat:Get(0) == 0 then
		local pointsStore = DataStore2("points", player)

		if pointsStore:Get(0) >= 1000000 then
			pointsStore:Increment(-1000000)
			RH_Stat:Increment(1)
			print("Player owns RedHead")
		else
			print("chan't buy")
		end
	end
end

game.ReplicatedStorage.HasCore.OnServerInvoke = function(player)
	local RHS = DataStore2("core", player)

	if RHS:Get(0) == 1 then
		return true
	else
		return false
	end
end


game.ReplicatedStorage.HasRH.OnServerInvoke = function(player)
	local RHS = DataStore2("redhead", player)
	
	if RHS:Get(0) == 1 then
		return true
	else
		return false
	end
end

game.ReplicatedStorage.HasGA.OnServerInvoke = function(player)
	local RHS = DataStore2("greenarm", player)

	if RHS:Get(0) == 1 then
		return true
	else
		return false
	end
end

game.ReplicatedStorage.HasGT.OnServerInvoke = function(player)
	local RHS = DataStore2("gtooth", player)

	if RHS:Get(0) == 1 then
		return true
	else
		return false
	end
end

game.ReplicatedStorage.BuyGT.OnServerInvoke = function(player) 
	local RH_Stat = DataStore2("gtooth", player)

	if RH_Stat:Get(0) == 0 then
		local pointsStore = DataStore2("points", player)

		if pointsStore:Get(0) >= 10000000000 then
			pointsStore:Increment(-10000000000)
			RH_Stat:Increment(1)
			print("Player owns RedHead")
		else
			print("chan't buy")
		end
	end
end

game.ReplicatedStorage.BuyGA.OnServerInvoke = function(player) 
	local RH_Stat = DataStore2("greenarm", player)

	if RH_Stat:Get(0) == 0 then
		local pointsStore = DataStore2("points", player)

		if pointsStore:Get(0) >= 1000000000 then
			pointsStore:Increment(-1000000000)
			RH_Stat:Increment(1)
			print("Player owns RedHead")
		else
			print("chan't buy")
		end
	end
end



game.ReplicatedStorage.ShopBuyMultiplier.OnServerEvent:Connect(function(i, ply, value) 
	local pp = DataStore2("points", ply)
	local mp = DataStore2("multiplier", ply)
	print("Current points: " .. pp:Get(12))
	print("Cost: " ..  123 * mp:Get(1))
	if pp:Get(12) == 12 or pp:Get(12) < 1233 * mp:Get(1) then
		print("You can't buy idiot")
	else
		
		if pp:Get(12) >= 1233 * mp:Get(1) then
			pp:Increment(-1233 * mp:Get(2))
			
			mp:Increment(mp:Get(1) + 2)
		else
			print("No don;'t buy")
		end
			
		
		--print(mp:Get(1))
	end
end)

--[[
t: Text object
ply: Player for DS2
s: Object for DS2
pr: Prepend
]]
game.ReplicatedStorage.API_RequestDSO.OnServerInvoke = function (t, ply, s, pr)
	local obj = DataStore2(s, ply)
	
	t.Text = pr .. obj:Get(0)
end

game.ReplicatedStorage.Request_PlayerData.OnServerInvoke = function(ply)
	return DataStore2("multiplier", ply):Get(1)
end

game.ReplicatedStorage.Request_PlayerCost.OnServerInvoke = function(ply)
	return DataStore2("multiplier", ply):Get(0) * 1233
end

game.ReplicatedStorage.Request_PlayerCoins.OnServerInvoke = function(ply)
	return DataStore2("points", ply):Get(0)
end

game.ReplicatedStorage.UpdaetPresstigen.OnServerInvoke = function(ply)
	return DataStore2("prestiges", ply):Get(0)
end

workspace.Part.ClickDetector.MouseClick:Connect(function(player)
	local pointsStore = DataStore2("points", player)
	pointsStore:Increment(1) -- Give them 1 point
end)