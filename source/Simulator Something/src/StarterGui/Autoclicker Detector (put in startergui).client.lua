function Extra() --If you want to add an extra punishment, put it below
	
end

local cps = 0 local maxcps = 20 local player = game:GetService("Players").LocalPlayer local mouse = player:GetMouse() mouse.Button1Down:Connect(function() if cps >= maxcps then player:Kick("Autoclicker detected") Extra() else cps+=1 wait(1) cps-=1 end end) wait() for _, button in pairs(script.Parent:GetDescendants()) do if button:IsA("TextButton") or button:IsA("ImageButton") then button.MouseButton1Down:Connect(function() if cps >= maxcps then player:Kick("Autoclicker detected") Extra() else cps+=1 wait(1) cps-=1 end end) end end