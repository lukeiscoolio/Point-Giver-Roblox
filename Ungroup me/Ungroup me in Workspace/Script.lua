-- this script is meant to be under the part in workspace btw

--Point Script
local part = script.Parent
local canGet = true

local function onTouch(otherPart)
	local humanoid = otherPart.Parent:FindFirstChild('Humanoid')
	if humanoid then
		local player = game.Players:FindFirstChild(otherPart.Parent.Name)
		if player and canGet then
			canGet = false
			player.leaderstats.Wins.Value = player.leaderstats.Wins.Value +1 --At "Wins" we will make a leaderstat so you can rename "Wins" to what you will name it for the leaderstat. I will show this later in the video.
			wait(10)
			canGet = true
		end
	end
end

part.Touched:Connect(onTouch)
local trapPart = script.Parent
local function onPartTouch(otherPart)
	local partParent = otherPart.Parent
	local humanoid = partParent:FindFirstChildWhichIsA("Humanoid")
	if (humanoid) then
		--Sets player's health to 0
		humanoid.Health = 0
	end
end
trapPart.Touched:Connect(onPartTouch)