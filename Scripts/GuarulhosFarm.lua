local Players = game:GetService("Players")
local virtualInput = game:GetService("VirtualInputManager")
local seats = workspace.RouboEmpresarial.Seats
local player = Players.LocalPlayer
local UserInputService = game:GetService("UserInputService")
local inset = game:GetService("GuiService"):GetGuiInset()

-- MOhit


function length(t)
    local l = 0

    for i, v in next, t do
        l += 1
    end

    return l
end

local bl = {}
function getSeat(n)
    if n then
        bl[n] = true
        task.delay(1.5, function()
            bl[n] = nil
        end)
    end

    local closest, dist = nil, 9e9
    for _, v in ipairs(seats:GetChildren()) do
        if v:FindFirstChild("Seat") and v.Seat.Occupant == nil and not bl[v.Seat] then
            local d = player:DistanceFromCharacter(v.Seat.Position)
            if d < dist then
                dist = d
                closest = v
            end
        end
    end
    return closest
end

local character = player.Character
local seat: Seat = getSeat().Seat
local humanoid = character.Humanoid
local cf = character.HumanoidRootPart.CFrame
local info = player:FindFirstChild("Information") or player:FindFirstChild("Informações")
local bancoValue = info.Banco
local carteiraValue = info.Carteira
local depositRemote = game.ReplicatedStorage.Remotes.Transferencia

local screenGui = Instance.new("ScreenGui", player.PlayerGui)
screenGui.Name = math.random()

local bancoMoney = Instance.new("TextLabel", screenGui)
bancoMoney.Name = math.random()
bancoMoney.Position = UDim2.fromScale(.5, 1)
bancoMoney.Size = UDim2.fromOffset(300, 55)
bancoMoney.TextScaled = true
bancoMoney.BackgroundTransparency = .7
bancoMoney.TextColor3 = Color3.fromRGB(238, 238, 238)
bancoMoney.AnchorPoint = Vector2.new(.5, 1)

local avgMoney = Instance.new("TextLabel", screenGui)
avgMoney.Name = math.random()
avgMoney.Position = UDim2.new(.5, 0, 1, -55)
avgMoney.Size = UDim2.fromOffset(200, 55)
avgMoney.TextScaled = true
avgMoney.BackgroundTransparency = .7
avgMoney.TextColor3 = Color3.fromRGB(238, 238, 238)
avgMoney.AnchorPoint = Vector2.new(.5, 1)
avgMoney.Text = "-"

local versionLabel = Instance.new("TextLabel", screenGui)
versionLabel.Name = math.random()
versionLabel.Position = UDim2.new(.5, 0, 0, -inset.Y)
versionLabel.Size = UDim2.fromOffset(300, 20)
versionLabel.TextScaled = true
versionLabel.BackgroundTransparency = .7
versionLabel.TextColor3 = Color3.fromRGB(238, 238, 238)
versionLabel.AnchorPoint = Vector2.new(.5, 0)
versionLabel.Text = "V3.2.0.0G4.J2..K2.L1.DD2.112SK"

function generatePuzzle()
    avgMoney.Text = "sitting on seat"

    repeat task.wait() 
        seat:Sit(humanoid)
    until seat.Occupant == humanoid
    seat = getSeat(seat).Seat
    
    avgMoney.Text = "waiting for puzzle"
    
    if not player.PlayerGui:FindFirstChild("Puzzle") then
        player.PlayerGui:WaitForChild("Puzzle")
    end

    for _, v in ipairs(getFarms()) do
        v.Name = "Puzzle_"
    end

    avgMoney.Text = "exiting puzzle area"

    humanoid.Sit = false

    character:PivotTo(cf)
end

function getFarms()
    local farms = {}

    for i, v in ipairs(player.PlayerGui:GetChildren()) do
        if v.Name == "Puzzle_" or v.Name == "Puzzle" then
            table.insert(farms, v)
        end
    end

    return farms
end

-- if player.PlayerGui:FindFirstChild("Puzzle_") then
--     print("Deleting")
--     for i, v in ipairs(getFarms()) do
--         v:Destroy()
--     end
-- end

-- 15 = 0.3ms
for i = 1, 36 do
    local numFarms = #getFarms()
    bancoMoney.Text = "generating #".. i .."\ngenerated:".. tostring(numFarms)
    generatePuzzle()
end
character:PivotTo(cf)

task.wait(1)

local ctrl = false
local active = true
local input1 = UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if gameProcessedEvent then return end

    if input.KeyCode == Enum.KeyCode.LeftControl then
        ctrl = true

    elseif input.KeyCode == Enum.KeyCode.L and ctrl then
        active = not active

        if not active then
            depositRemote:InvokeServer("Depositar", nil, carteiraValue.Value)
        end
        print("active:", active)

    elseif input.KeyCode == Enum.KeyCode.F and ctrl then
        if player.PlayerGui:FindFirstChild("Puzzle_") then
            print("Deleting")
            for i, v in ipairs(getFarms()) do
                v:Destroy()
            end
        end
    end
end)

local input2 = UserInputService.InputEnded:Connect(function(input, gameProcessedEvent)
    if gameProcessedEvent then return end

    if input.KeyCode == Enum.KeyCode.LeftControl then
        ctrl = false
    end
end)

local x = 0
local y = 0
local dead = false

function setupPuzzle(puzzle)
    if not puzzle then
        print("Puzzle not found")
        return
    end

    local frame = puzzle.Frame
    local start: TextButton = frame.Start
    local green = Color3.fromRGB(49, 213, 0)
    local red = Color3.fromRGB(198, 6, 6)

    frame.Draggable = true
    frame.Active = true
    frame.Size = UDim2.fromOffset(35, 35)
    frame.Title.Text = x / 35

    frame.Position = UDim2.fromOffset(x + frame.AbsoluteSize.X, inset.Y + frame.AbsoluteSize.Y + y)
    x += frame.AbsoluteSize.X

    if (x / 35) % 30 == 0 then
        x = 0
        y += frame.AbsoluteSize.Y
    end

    for i, v in next, frame:GetChildren() do
        if v.Name == "Button" then
            v.Size = UDim2.fromScale(1, 1)
            v.Position = UDim2.new()
            v.AnchorPoint = Vector2.new()

            v.MouseButton1Click:Connect(function()
                v.Active = false
                v.Selectable = false
            end)
        end
    end

    start.MouseButton1Click:Connect(function()
        start.Visible = false
    end)

    while task.wait() do
        if not puzzle or not puzzle.Parent then
            dead = true
            active = false
            input1:Disconnect()
            input2:Disconnect()
            if screenGui then
                screenGui:Destroy()
            end
            break
        end

        local activeColor = active and Color3.fromRGB(155, 248, 112) or Color3.fromRGB(255, 110, 110)
        bancoMoney.BackgroundColor3 = activeColor
        avgMoney.BackgroundColor3 = activeColor

        if not active then
            continue
        end
        
        local found = false

        for i, v in ipairs(frame:GetChildren()) do
            if v.Name == "Button" then
                v.Text = i
                v.Visible = v.BackgroundColor3 ~= green and v.BackgroundColor3 == red
            end

            if (v == start or v.Name == "Button") and v.Visible then
                found = true
            end
        end

        if not found then
            start.Visible = true
        end 
    end
end

local SendMouseButtonEvent = virtualInput.SendMouseButtonEvent
local clock = os.clock

function doPuzzle(puzzle)
    if not puzzle then
        return
    end

    local start = puzzle.Frame.Start
    local pos = (start.AbsolutePosition + start.AbsoluteSize/2) + inset
    
    SendMouseButtonEvent(virtualInput, pos.X, pos.Y, 0, true, game, 0)
    SendMouseButtonEvent(virtualInput, pos.X, pos.Y, 0, false, game, 0)
    --WaitForInputEventsProcessed(virtualInput)
    task.wait()
end


for _, puzzle in ipairs(getFarms()) do
    task.spawn(setupPuzzle, puzzle)
end

local took = 0

task.spawn(function()
    while task.wait() do
        if dead then
            active = false
            break
        end

        if not active then
            continue
        end

        local t1 = clock()
        for _, puzzle in ipairs(getFarms()) do
            doPuzzle(puzzle)
        end
        took = clock() - t1
    end
end)

function updateMoneyGui()
    local str1 = "guatherium: ".. tostring(bancoValue.Value + carteiraValue.Value)
    local str2 = "\nfarms: ".. #getFarms()
    bancoMoney.Text = str1 .. str2 .. "\ntook: ".. string.format("%.3f", tostring(took)) .."ms"
end

bancoValue.Changed:Connect(updateMoneyGui)
carteiraValue.Changed:Connect(updateMoneyGui)

local peak = 0

while task.wait(1) do
    if dead or not screenGui or not screenGui.Parent then
        dead = true
        print("disconnected")
        break
    end

    local m1 = bancoValue.Value + carteiraValue.Value
    task.wait(1)
    local m2 = bancoValue.Value + carteiraValue.Value
    local delta = m2 - m1

    if delta > peak then
        peak = delta
    end

    avgMoney.Text = "average/s: ".. delta .."\naverage/min: ".. delta * 60 .."\npeak: ".. peak
end
