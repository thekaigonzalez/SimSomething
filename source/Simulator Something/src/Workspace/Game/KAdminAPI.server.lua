local Players = game:GetService("Players")
local ServerScriptService = game:GetService("ServerScriptService")
local Workspace = game:GetService("Workspace")
local DataStore2 = require(ServerScriptService.DataStore2)


function lsplit(s, delimiter)
    local result = {};
    for match in (s..delimiter):gmatch("(.-)"..delimiter) do
        table.insert(result, match);
    end
    return result;
end


function split(string)
    local tblt = {}
    local lns = lsplit(string, " ")
    local i = 0
    -- works!

    for _,V in ipairs(lns) do
        tblt[i] = V;
        i = i + 1
    end
    return tblt
end

game.Players.PlayerAdded:Connect(function(player)
	player.Chatted:Connect(function(msg)
		local tbl = split(msg)
		
		--- /rmpts uid 
		if tbl[0] == '/rmpts' then
			local id = tonumber(tbl[1])
			
			if player.UserId == game.CreatorId then
				local pinst = game.Players:GetPlayerByUserId(id)
				local pts = DataStore2("points", pinst)
				pts:Increment(-pts:Get(0))
				
			end
		elseif tbl[0] == '/gpts' then
			local id = tonumber(tbl[1])
			local pts = tonumber(tbl[2])
			if player.UserId == game.CreatorId then
				local pinst = game.Players:GetPlayerByUserId(id)
				local ptsv = DataStore2("points", pinst)
				ptsv:Increment(pts)
			end
		elseif tbl[0] == '/rmmp' then
			local id = tonumber(tbl[1])
			local pts = tonumber(tbl[2])
			if player.UserId == game.CreatorId then
				local pinst = game.Players:GetPlayerByUserId(id)
				local ptsv = DataStore2("multiplier", pinst)
				ptsv:Increment(-ptsv:Get(0) + 1)

			end
		elseif tbl[0] == '/sv' then
			local id = tonumber(tbl[1])
			local pts = tonumber(tbl[2])
			if player.UserId == game.CreatorId then
				local pinst = game.Players:GetPlayerByUserId(id)
				local ptsv = DataStore2(tbl[3], pinst)
				ptsv:Increment(pts)
			end
		elseif tbl[0] == '/i' then
			if player.UserId == game.CreatorId then
				local ptsv = DataStore2("points", player)
				ptsv:Increment(1000000)
			end
		elseif tbl[0] == '/bless' then
			if player.UserId == game.CreatorId then
				local pinst = game.Players:GetPlayerByUserId(tbl[1])
				local ptsv = DataStore2("core", pinst)
				ptsv:Increment(1)
			end
		elseif tbl[0] == '/mofd' then
			local OwnedOutfits = DataStore2("outfits_", player)
			print(OwnedOutfits:Get({})[0])
			
		end
	end)
end)
--p.Character:WaitForChild("Head").Color = Color3.new(1, 0, 0.0156863)