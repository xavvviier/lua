getgenv().Settings = {
    Notification = true,
    LockSettings = {
        ["Enabled"] = true,
        ["Keybind"] = "q",
        ["FOV"] = math.huge,
        ["Dot"] = true
    },
    CFrameSettings = { -- the math for cframe is just changing the HumanoidRootPart cframe value to HumanoidRootPart.CFrame + Humanoid.MoveDirection * Interval
        ["Enabled"] = true,
        ["Keybind"] = "z",
        ["Interval"] = 1
    },
    AntiLockSettings = {
        ["Enabled"] = true,
        ["Keybind"] = "x",
        ["Velocity"] = Vector3.new(200, 700, 200)
    }
}

getgenv().SendNotification = function(Title: string, Context: string, Icon: string, Duration: integer)
    game.StarterGui:SetCore("SendNotification", {
        Title = Title;
        Text = Context;
        Icon = Icon;
        Duration = Duration;
    })
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/xavvviier/lua/main/Da%20Hood/cframe.lua"))()
SendNotification("CFrame", "Loaded", "rbxassetid://5436304966", 2)
