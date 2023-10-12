local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()

Mouse.KeyDown:Connect(function(Key)
    if Key:lower() == getgenv().Settings.CFrameSettings.Keybind and getgenv().Settings.CFrameSettings.Enabled == true then
        getgenv().Settings.CFrameSettings.Enabled = false
        getgenv().SendNotification("CFrame", "Disabled", "rbxassetid://5436304966", 2)
    elseif Key:lower() == getgenv().Settings.CFrameSettings.Keybind and getgenv().Settings.CFrameSettings.Enabled == false then
        getgenv().Settings.CFrameSettings.Enabled = true
        getgenv().SendNotification("CFrame", "Enabled", "rbxassetid://5436304966", 2)
        repeat
            Player.Character.HumanoidRootPart.CFrame = Player.Character.HumanoidRootPart.CFrame + Player.Character.Humanoid.MoveDirection * getgenv().Settings.CFrameSettings.Interval
            for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v:IsA("Script") and v:FindFirstChild("LocalScript") then
                    v:Destroy()
                end
            end
            game:GetService("RunService").Stepped:wait()
        until getgenv().Settings.CFrameSettings.Enabled == false
    end
end)
