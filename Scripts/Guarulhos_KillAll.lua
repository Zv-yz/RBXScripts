local rs = game:GetService'ReplicatedStorage'
local plrs = game:GetService'Players'
local UserInputService = game:GetService("UserInputService")

local lp = plrs.LocalPlayer

local network = require(rs:FindFirstChild('Network', true))

encrypt = function(str) return network._Encrypt(network,str) end
decrypt = function(str) return network._Deencrypt(network,str) end

local getKeyAndUUID

function getGun()
    for i,v in pairs(lp.Character:GetChildren()) do
        if v:IsA'Tool' and v:FindFirstChild'gun_config' then
            return v
        end
    end
    return false
end

do
    local keyFunction
    local UUIDfunction = network.subs['xd🐯']

    for i, v in pairs(getgc()) do
        if type(v) == 'function' and islclosure(v) then
            if table.find(getconstants(v), 94906230) then keyFunction = v break end
        end
    end

    getKeyAndUUID = function()
       assert(getupvalue(UUIDfunction, 1), 'UUID is nil') 
       
       return (lp.UserId..keyFunction()), getupvalue(UUIDfunction, 1)
    end
end

function damage(plr)
    local gun = getGun()

    local Muzzle = gun:FindFirstChild('Muzzle', true)

    if not plr then return end

    if gun and Muzzle then
        local key, uuid = getKeyAndUUID()
        network:Send('Fire', key, uuid, Muzzle.Position, CFrame.new(Muzzle.Position, plr.Character.Head.Position).LookVector)
        task.wait'0.005'
        network:Send('Hit', key, uuid, Muzzle.Position, plr.Character.Head, tick())
    else
        game:GetService'StarterGui':SetCore('SendNotification', {
            Title = 'bbuuurro',
            Text = 'Você precisa de uma arma equipada'
        })
    end
end

UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if gameProcessedEvent then return end

    if input.KeyCode == Enum.KeyCode.L then
        for i,v in pairs(plrs:GetPlayers()) do
            task.spawn(damage, v)
        end
    end
end)

print('loaded')
