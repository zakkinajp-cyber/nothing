
wait(8)
str = tostring("実行されたスクリプトを介してゲームのプレイ方法を学習しながら、人工知能エージェントと対戦します。")
if not isLegacyChat then
    TextChatService.TextChannels.RBXGeneral:SendAsync(str)
else
    ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(str, "All")
end
wait(2)
str2 = tostring("English: You are playing against an Artificial Intelligence client, learning how to play the game with vision and key inputs only.")
if not isLegacyChat then
    TextChatService.TextChannels.RBXGeneral:SendAsync(str2)
else
    ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(str2, "All")
end
wait(2)
str3 = tostring("ボットのランキングは、メインアカウントではブロンズ 3 です。1")
if not isLegacyChat then
    TextChatService.TextChannels.RBXGeneral:SendAsync(str3)
else
    ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(str3, "All")
end
TeleportCheck = false
wait(2)
str4 = tostring("English: It is currently rated \"Bronze 3\" in Ranked, on the main account.")
if not isLegacyChat then
    TextChatService.TextChannels.RBXGeneral:SendAsync(str4)
else
    ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(str4, "All")
end
TeleportCheck = false

Players.LocalPlayer.OnTeleport:Connect(function(State)
	if not (TeleportCheck) then
		queueteleport("loadstring(game:HttpGet(https://github.com/zakkinajp-cyber/nothing/raw/refs/heads/main/a.lua))()")
		TeleportCheck = true
	end
end)
