--[[

Modulos Anti Cheat BETA (#9283)

--]]



































































































































































































































































































































































































local PlayerService= game:GetService("Players")
local player = PlayerService.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild"Humanoid"

--AC SYSTEM


print("FrEAC - Starting Modules")
wait(5)
print("FrEAC - Sucess Starting modules")

print("FrEAC - Sucess AC LOADED")
wait(5)
print(player.Name.." Conectou ao FrE - (MODULO #3) ")

local speed = humanoid.WalkSpeed
local jump = humanoid.JumpPower
local health = humanoid.MaxHealth


function acl()
	if character:WaitForChild("HumanoidRootPart").Velocity.Y > 80 or character:WaitForChild("HumanoidRootPart").Velocity.Y < -80 then
		print(player.Name.." is hacking! Fly Hacks! Kicking from server.")
		player:Kick([[AntiCheat Code: 210192 | Kicked for Fly Hacking]])
	end

	if speed > 20 then
		print(player.Name.." is hacking! WalkSpeed changed! Triggering anticheat.")
		humanoid.WalkSpeed = "inf"
		wait(1)
		humanoid.WalkSpeed = 0
		local slow = 0
		while slow <= 16 do
			humanoid.WalkSpeed += 1
			slow += 1
			wait(.005)
		end
		humanoid.WalkSpeed = 16	
	end

	if jump >= 55 then
		print(player.Name.." is hacking! JumpPower changed! Triggering anticheat.")
		humanoid.JumpPower = "inf"
		wait(1)
		humanoid.JumpPower = 0
		local slow = 0
		while slow <= 50 do
			humanoid.JumpPower += 10
			slow += 10
			wait(.005)
		end
		humanoid.JumpPower = 50
	end

	if health ~= 100 then
		print(player.Name.." is hacking! MaxHealth changed! Triggering anticheat.")
		humanoid.MaxHealth = -100
		wait(1)
		humanoid.MaxHealth = 100
	end
end

humanoid.Changed:Connect(acl)
