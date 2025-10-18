
wait(1)
str = tostring("実行されたスクリプトを介してゲームのプレイ方法を学習しながら、人工知能エージェントと対戦します。")
if not isLegacyChat then
    TextChatService.TextChannels.RBXGeneral:SendAsync(str)
else
    ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(str, "All")
end
wait(2)
str = tostring("English: You are playing against an Artificial Intelligence client, learning how to play the game with vision and key inputs only.")
if not isLegacyChat then
    TextChatService.TextChannels.RBXGeneral:SendAsync(str)
else
    ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(str, "All")
end

Players.LocalPlayer.OnTeleport:Connect(function(State)
	if KeepInfYield and (not TeleportCheck) and queueteleport then
		TeleportCheck = true
		queueteleport("loadstring(game:HttpGet(https://github.com/zakkinajp-cyber/nothing/raw/refs/heads/main/a.lua))()")
	end
end)
