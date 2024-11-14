local Sword = {}

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Remote = Instance.new("RemoteEvent")
local lighting = game:GetService("Lighting")
Remote.Name = "Remote"
Remote.Parent = ReplicatedStorage


Isloading = {
	"BlurEffect" == true;
	"Atmosphere" == true

}

print(Isloading)


--// This loads a bright part \\-- 


	function Sword.rr()
		local part = Instance.new("Part")
		local pointlight = Instance.new("PointLight")
		local HightLight = Instance.new("Highlight")
	
		--// Just the basic to load the parts \\-- 
		 part.Touched:Connect(function()
			if part.Touched then
				local blur = Instance.new("BlurEffect")
				local ato = Instance.new("Atmosphere")
				blur.Parent = lighting
				for i,v in pairs(game.Players:GetChildren()) do --// this loops true the players untill it finds  a player, and if it finds a player it will run the code \\--
					print("part was touched by an humanoid")
					lighting.ClockTime = 1 
					ato.Density = 2.8
					Isloading = blur.Enabled == true
					part.CFrame = CFrame.new(-15, 0.5, -4)
					task.wait(2)
					lighting.ClockTime = 14.5
					blur.Enabled = false
					ato.Density = 1 
				end 

			else
				return 
				warn("There's an error you gotta fix")
			 end 
		 end)



		
		

		part.Anchored = true 
		 HightLight.Parent = part 
		 HightLight.FillTransparency = 0.5 
		 part.Parent = game.Workspace
		 pointlight.Parent = part
		 pointlight.Brightness = 40
		end		

		function Sword.Parts2()
			local part2 = Instance.new("Part")
			local blur = Instance.new("BlurEffect")

			part2.Parent = game.Workspace
			part2.Anchored = true 
			part2.Transparency = 0.5 
			part2.CFrame = CFrame.new(-15, 0., -5)
			task.wait(0.5)
			blur.Density = 2.8 
			lighting.ClockTime = 14 
			
		end

return Sword