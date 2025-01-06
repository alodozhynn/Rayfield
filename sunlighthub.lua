local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "Sunlight Hub 2.0 / Brookhaven RP🏡",
    LoadingTitle = "Sunlight Hub 2.0",
    LoadingSubtitle = "Brookhaven RP🏡",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "sunlightbrookhaven",
        FileName = "sunlightRayfieldbhv"
    },
    Discord = {
        Enabled = false,
        Invite = "noinvitelink",
        RememberJoins = true
    },
    KeySystem = false,
    KeySettings = {
        Title = "Untitled",
        Subtitle = "Key System",
        Note = "No method of obtaining the key is provided",
        FileName = "Key",
        SaveKey = true,
        GrabKeyFromSite = false,
        Key = {"Hello"}
    }
})

local Tab = Window:CreateTab(" ", 4483362458)
local Section = Tab:CreateSection("Trolling Players")
Section:Set("Trolling Players")

local targetPlayer = nil

local function findPlayerByName(partialName)
    local partial = partialName:sub(1, 2):lower()
    for _, player in ipairs(game.Players:GetPlayers()) do
        if player.Name:lower():sub(1, 2) == partial or (player.DisplayName and player.DisplayName:lower():sub(1, 2) == partial) then
            return player
        end
    end
    return nil
end

local function teleportAndKillPlayer(targetPlayer)
    if targetPlayer and targetPlayer.Character then
        local myHRP = game.Players.LocalPlayer.Character.HumanoidRootPart
        local targetHRP = targetPlayer.Character:WaitForChild("HumanoidRootPart")
        local connection
        connection = game:GetService("RunService").Stepped:Connect(function()
            myHRP.CFrame = targetHRP.CFrame
            if targetPlayer.Character and targetPlayer.Character:FindFirstChild("Humanoid") and targetPlayer.Character.Humanoid.Sit then
                myHRP.CFrame = CFrame.new(500000, 0, 0)
                connection:Disconnect()
            end
        end)
    end
end

local Button = Tab:CreateButton({
    Name = "Do print yay :D",
    Callback = function()
         print("yay :D")
    end,
})

local Input = Tab:CreateInput({
    Name = "Select target player",
    PlaceholderText = "Digite o nome ou parte do nome do jogador",
    RemoveTextAfterFocusLost = false,
    Callback = function(value)
        targetPlayer = findPlayerByName(value)
        if targetPlayer then
            print("Jogador encontrado: " .. targetPlayer.Name)
        else
            print("Nenhum jogador encontrado com esse nome ou apelido.")
        end
    end,
})

local Button = Tab:CreateButton({
    Name = "Do couch kill player",
    Callback = function()
        if targetPlayer then
            local args = {
                [1] = "PickingTools",
                [2] = "Couch"
            }
            game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack(args))
            teleportAndKillPlayer(targetPlayer)
        else
            print("Selecione um jogador primeiro.")
        end
    end
})

local Section = Tab:CreateSection("Character")
Section:Set("Character")

local Button = Tab:CreateButton({
    Name = "Character ultra small",
    Callback = function()
        local args = {
            [1] = "CharacterSizeDown",
            [2] = 2
        }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1Clothe1s"):FireServer(unpack(args))
    end,
})

local Button = Tab:CreateButton({
    Name = "See the entire city of Brookhaven",
    Callback = function()
        local plr = game.Players.LocalPlayer
        local char = plr.Character
        local hrp = char.HumanoidRootPart

        hrp.CFrame = CFrame.new(-157.49581909179688, 136.7017364501953, 123.78034210205078)

        -- Criar um novo bloco
        local redBlock = Instance.new("Part")
        redBlock.Size = Vector3.new(4, 2, 3) -- Ajustar o tamanho conforme necessário
        redBlock.Color = Color3.fromRGB(255, 0, 0) -- Definir a cor como vermelho
        redBlock.Position = Vector3.new(0, 10, 0) -- Ajustar a posição conforme necessário
        redBlock.Parent = game.Workspace
    end,
})

local Button = Tab:CreateButton({
    Name = "Money bank rob",
    Callback = function()
        local plr = game.Players.LocalPlayer
        local char = plr.Character
        local hrp = char.HumanoidRootPart

        hrp.CFrame = CFrame.new(-6.593982696533203, 17.95779800415039, 269.07952880859375)

        -- Obter a bomba
        local args = {
            [1] = "PickingTools",
            [2] = "Bomb"
        }
        
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack(args))
    end,
})

-- Conectar eventos de jogador removido
game.Players.PlayerRemoving:Connect(function(player)
    if targetPlayer == player then
        targetPlayer = nil
        Rayfield:Notify({
            Title = "Sunlight Hub 2.0",
            Content = player.Name .. " saiu do jogo!",
            Duration = 1.5,
            Image = 4483362458,
            Actions = {
                Ignore = {
                    Name = "I'll gonna cry or idk?",
                    Callback = function()
                        print("")
                    end
                },
            },
        })
    end
end)

local playerLabels = {}

local function toggleESPWithLines()
    local espEnabled = not espEnabled
    if espEnabled then
        print("ESP with lines activated!")
        for _, player in ipairs(game.Players:GetPlayers()) do
            if player.Character and player.Character:FindFirstChild("Head") then
                local torso = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                local head = player.Character:FindFirstChild("Head")
                if torso and head then
                    local line = Instance.new("LineHandleAdornment")
                    line.Adornee = torso
                    line.Color3 = Color3.new(0, 0, 0) -- Preto
                    line.Thickness = 1 -- Espessura da linha
                    line.Transparency = 0.5 -- Transparência da linha
                    line.Parent = torso

                    line.CFrame = CFrame.new(torso.Position, head.Position)

                    local playerNameLabel = Instance.new("BillboardGui")
                    playerNameLabel.Name = "PlayerNameLabel"
                    playerNameLabel.AlwaysOnTop = true
                    playerNameLabel.Size = UDim2.new(0, 100, 0, 20)
                    playerNameLabel.StudsOffset = Vector3.new(0, 2, 0)
                    playerNameLabel.Adornee = head

                    local playerNameText = Instance.new("TextLabel")
                    playerNameText.Name = "PlayerName"
                    playerNameText.Text = player.Name
                    playerNameText.Size = UDim2.new(1, 0, 1, 0)
                    playerNameText.TextColor3 = Color3.new(1, 1, 1) -- Branco
                    playerNameText.BackgroundTransparency = 1
                    playerNameText.Font = Enum.Font.SourceSansSemibold
                    playerNameText.TextSize = 16
                    playerNameText.Parent = playerNameLabel

                    local playerNameOutline = playerNameText:Clone()
                    playerNameOutline.TextColor3 = Color3.new(0, 0, 0) -- Preto
                    playerNameOutline.Position = UDim2.new(0, -1, 0, -1)
                    playerNameOutline.Parent = playerNameLabel

                    playerNameLabel.Parent = game.CoreGui
                    playerLabels[player.Name] = playerNameLabel
                end
            end
        end
    else
        print("ESP com linhas desativado!")
        for playerName, playerNameLabel in pairs(playerLabels) do
            playerNameLabel:Destroy()
            playerLabels[playerName] = nil
        end
    end
end
local Section = Tab:CreateSection("Players ESP")
local Toggle = Tab:CreateToggle({
    Name = "Do enable ESP",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        toggleESPWithLines()
    end,
})
