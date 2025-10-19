if not game:IsLoaded() then game.Loaded:Wait() end
print("game Object name:", game.Name)
loadstring(game:HttpGet("https://raw.githubusercontent.com/zakkinajp-cyber/nothing/main/iy.lua"))()


TeleportCheck=false
KeepClientChat = true -- Not need.
wait(2)
print("connecting")
rq = (queueteleport and true)
local MarketplaceService = game:GetService("MarketplaceService")

local info = MarketplaceService:GetProductInfo(game.PlaceId)
print("Place name:", info.Name)


if not (info.Name == "Matchmaking") then
TextChatService.TextChannels.RBXGeneral:SendAsync("[ExClient] - Not supported place: RIVALS]")
end

print(tostring(rq))
game:GetService("Players").LocalPlayer.OnTeleport:Connect(function(State)
	if KeepClientChat and (not TeleportCheck) and queueteleport then
		print("TpCheck running")
		TeleportCheck = true
		queueteleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/zakkinajp-cyber/nothing/main/a.lua'))()")
	end
end)
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
rand = math.round(math.random(1, 64))
wait(2)
str4 = tostring('Instance ' .. tostring(rand) .. "/64")
if not isLegacyChat then
    TextChatService.TextChannels.RBXGeneral:SendAsync(str4)
else
    ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(str4, "All")
end
rand2 = math.round(math.random(1, 14))
wait(2)
str4 = tostring('Account index: ' .. tostring(rand2) .. "_b_" .. Players.LocalPlayer.Name)
if not isLegacyChat then
    TextChatService.TextChannels.RBXGeneral:SendAsync(str4)
else
    ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(str4, "All")
end

wait(5)
str4 = tostring('Detected unsupported map index. AI may not be able to navigate well.')
if not isLegacyChat and not ((workspace:FindFirstChild("Arena") or (workspace.findFirstChild("Construction")))) then
    TextChatService.TextChannels.RBXGeneral:SendAsync(str4)
elseif not ((workspace:FindFirstChild("Arena") or (workspace.findFirstChild("Construction")))) then
    ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(str4, "All")
end
