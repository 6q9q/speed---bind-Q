local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local humanoid = char:FindFirstChildOfClass("Humanoid")

local isSpeedBoosted = false
local normalSpeed = 16
local boostedSpeed = 150

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end -- Ignore if the player is in chat or the menu

    if input.KeyCode == Enum.KeyCode.Q then
        if humanoid then
            isSpeedBoosted = not isSpeedBoosted
            humanoid.WalkSpeed = isSpeedBoosted and boostedSpeed or normalSpeed
        end
    end
end)
