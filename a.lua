str = tostring("str")
if not isLegacyChat then
    TextChatService.TextChannels.RBXGeneral:SendAsync(str)
else
    ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(str, "All")
end

Players.LocalPlayer.OnTeleport:Connect(function(State)
	if KeepInfYield and (not TeleportCheck) and queueteleport then
		TeleportCheck = true
		queueteleport("")
	end
end)
