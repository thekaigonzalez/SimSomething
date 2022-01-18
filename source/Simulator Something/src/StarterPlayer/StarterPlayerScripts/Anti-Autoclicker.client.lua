--script type = LocalScript
--put this in StarterPlayer -> StarterPlayerScripts!!
--Jz's antiautoclicker

local plr = game:GetService("Players").LocalPlayer
local mouse = plr:GetMouse()
local clicks = 0

mouse.Button1Down:Connect(function()
	clicks = clicks + 1
end)

while wait(1) do
	if clicks >= 15 then
		plr:Kick("Cheating | Autoclicker")
	end
	clicks = 0
end