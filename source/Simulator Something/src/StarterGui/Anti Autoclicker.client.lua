
local maximumLegitClickTime = .20
local successiveClicksBeforeKick = 10


local UIS=game:service"UserInputService"
local player=game.Players.LocalPlayer

local a=0
local lastClick=0

local timeSinceLastClick = function(click)
	return click-lastClick
end

UIS.InputBegan:connect(function(input, processed)
	if not processed then
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			local tSLC = timeSinceLastClick(tick())
			lastClick = tick()

			if tSLC < maximumLegitClickTime then
				a=a+1
			else
				a=0
			end
			if a>successiveClicksBeforeKick then
				player:Kick("AUTOCLICKER DETECTED")
			end
		end
	end
end)