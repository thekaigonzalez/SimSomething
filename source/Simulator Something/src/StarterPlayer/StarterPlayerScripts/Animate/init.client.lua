--  Kinematics
local Stride = 2
local CycleSpeed = 14
local MaxRenderDistance = 150

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local IKHandler = require(script.IKHandler)
local CurrentProfiles = {}

local function PlayerAdded(Player)
	local function CharacterAdded(Character)
		local IKProfile = IKHandler.New(Player, Stride, CycleSpeed, MaxRenderDistance)
		CurrentProfiles[IKProfile] = true
	end
	
	Player.CharacterAdded:Connect(CharacterAdded)
	
	if Player.Character then
		CharacterAdded(Player.Character)
	end
end

RunService:BindToRenderStep("IKPC",Enum.RenderPriority.Camera.Value,function()
	for Profile, _ in pairs(CurrentProfiles) do
		if not Profile:IsActive() then
			CurrentProfiles[Profile] = nil
			Profile:Destroy()
		else
			Profile:Update()
		end
	end
end)

Players.PlayerAdded:Connect(PlayerAdded)

for _, Player in pairs(Players:GetPlayers()) do
	PlayerAdded(Player)
end