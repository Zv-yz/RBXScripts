_G.Enabled = true
-- << Variables | Services >> --
local Proximitys = { From = {}, Receive = {} }
local Players = game:GetService('Players')
local LocalPlayer = Players.LocalPlayer
local Backpack = LocalPlayer.Backpack
local Character = (LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait())

-- << Init >> --
Backpack.ChildAdded:Connect(function(Instance)
    task.wait()
    if Instance.Name == 'Mochila De Dinheiro' then
        Instance.Parent = Character
    end
end)

for i,v in next, workspace:GetDescendants() do
    if v.Name:lower():match('roubo atm') or v.Name:lower():match('rouboatm') then
        Proximitys['From'][#Proximitys['From']+1] = { Instance = v, Prompt = v:FindFirstChildOfClass('ProximityPrompt') }
    end
    if v.Name:lower() == 'entrega' and (v:FindFirstChildOfClass('SelectionBox') and v:FindFirstChildOfClass('SelectionBox').Color3 == Color3.fromRGB(140, 255, 78)) then
        Proximitys['Receive'][#Proximitys['Receive']+1] = { Instance = v, Prompt = v:FindFirstChildOfClass('ProximityPrompt') }
    end
end

-- << Main >> --
while task.wait() and _G.Enabled do
    local RandomATM = Proximitys['From'][math.random(1, #Proximitys['From'])]
    repeat
        Character.HumanoidRootPart.CFrame = RandomATM.Instance.CFrame + Vector3.new(0, -7, 0)
        task.wait()
        fireproximityprompt(RandomATM.Prompt)
    until Character:FindFirstChild('Mochila De Dinheiro')
    repeat
        Character.HumanoidRootPart.CFrame = Proximitys['Receive'][1].Instance.CFrame + Vector3.new(0, -7, 0)
        task.wait(.6)
        fireproximityprompt(Proximitys['Receive'][1].Prompt)
    until Character:FindFirstChild('Mochila De Dinheiro') == nil
end
