local function onPlayerJoin(player)
	local leaderstats = Instance.new("Folder")
	leaderstats.Name = "leaderstats"
	leaderstats.Parent = player
	
	
	local wins = Instance.new("IntValue") --"wins" will be what you call it on the leaderboard, please remember when you are replacing "wins" please do put the end letter as a lowercase.
	wins.Name = "Wins" --"Wins" will be what it will be called on the leaderboard, if you see "wins" on the script please change it to what it is on the leaderboard and if it does not have a lowercase then put it as a uppercase and if it does have a lowercase then do put the "wins" as a lowercase, if I tell you it should be a lowercase at the start please put a lowercase or the script will not work.
	wins.Value = 0 
	wins.Parent = leaderstats
end


game.Players.PlayerAdded:Connect(onPlayerJoin)