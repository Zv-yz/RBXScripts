local Players = game:GetService('Players')
local UserInputService = game:GetService('UserInputService')

local StarterGui = game:GetService('StarterGui')
local HTTPService = game:GetService('HttpService')

local LocalPlayer = Players.LocalPlayer

_G.isReloading = false
_G.Mag = 0

function generateGUID()
    return HTTPService:GenerateGUID(false)
end

function getGun()
    for i,v in pairs(LocalPlayer.Character:GetChildren()) do
        if v:IsA('Tool') and v:FindFirstChild('config') then
            return v
        end
    end
    return false
end

function getRemotes()
    local gun = gun or getGun()
    if not gun then return false end

    local Events = gun:FindFirstChild('Events')

    return {
        Fire = Events:FindFirstChild('Fire'),
        Hit = Events:FindFirstChild('Hit'),
        Reload = Events:FindFirstChild('Reload')
    }
end

function Reload(remote)
	if _G.isReloading then return end
    _G.isReloading = true
	local success, module = remote:InvokeServer()
	if success and module then
        _G.Mag = module.settings.mag
		_G.isReloading = false
	end
end

function Damage(plr)
    local gun = getGun()
    local remotes = getRemotes(gun)

    if not plr then return false, nil end
    if not gun then return false, { Title = 'kkkkkkk burro', Text = 'Você precisa de uma arma equipada' } end

    local head = plr:FindFirstChild('Head')

    if head and remotes then
        local currentUUID = generateGUID()
        local success, module = remotes.Fire:InvokeServer(head.Position, currentUUID)

        if success then
            _G.Mag = module.settings.mag
        end

        if _G.Mag == 0 then
            Reload(remotes.Reload)
            repeat
                task.wait()
            until _G.isReloading == false
            Damage(plr)
        end

        task.wait()
        remotes.Hit:FireServer(head.Position, head, currentUUID)
    end
end

function killAll() -- vai que cara quer floodar né..;;;;;;; :3
    for i,v in pairs(Players:GetPlayers()) do
        local success, result = Damage(v.Character)
        if not success and result then
            StarterGui:SetCore('SendNotification', result)
            break
        end
    end
end

UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if gameProcessedEvent then return end

    if input.KeyCode == Enum.KeyCode.L then
        task.spawn(killAll)
    end
end)
