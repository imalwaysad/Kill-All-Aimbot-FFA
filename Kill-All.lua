_G.auto = true
local Event = game.ReplicatedStorage.PlayerHitEvent
local function attackOtherPlayers(localPlayer)
    for _, player in pairs(game.Players:GetPlayers()) do
        if player ~= localPlayer then
            local args = {
                [1]  = player,
                [2] = 60
            }
            game:GetService("ReplicatedStorage").PlayerHitEvent:FireServer(unpack(args))
        end
    end
end

local LocalPlayer = game.Players.LocalPlayer

while _G.auto do
    attackOtherPlayers(LocalPlayer)
    wait(0.1)
end
