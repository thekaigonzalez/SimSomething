if script.Parent:WaitForChild("Humanoid").RigType == Enum.HumanoidRigType.R6 then
	local PlayingAnims = script.Parent.Humanoid:GetPlayingAnimationTracks()
	for i = 1,#PlayingAnims do
		PlayingAnims[i]:Stop()
	end
	script.Parent:WaitForChild("Animate"):Destroy()
	local AnimScript = script.Animate
	AnimScript.Parent = script.Parent
	AnimScript.Disabled = false
end
script:Destroy()