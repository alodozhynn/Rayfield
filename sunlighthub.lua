local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Sunlight Hub 2.0 / Brookhaven RP🏡",
   LoadingTitle = "Sunlight Hub 2.0",
   LoadingSubtitle = "Brookhaven RP🏡",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "sunlightbrookhaven", -- Create a custom folder for your hub/game
      FileName = "Rayfield.lua"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided",
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})
local Tab = Window:CreateTab("Trolling Tab", 4483362458) -- Title, Image
local Section = Tab:CreateSection("Trolling Players")
Section:Set("Trolling Players")
local Button = Tab:CreateButton({
   Name = "Disclaimer (say /console to read)",
   Callback = function()
   print("Disclaimer: This script is a new version of Sunlight Hub 1.9, thanks Sander X Hub for some functions")
   end,
})
Button:Set("Disclaimer (say /console to read)")
local function findPlayerByPartialNameOrNickname(partialName)
    local partial = partialName:sub(1, 2):lower()
    for _, player in ipairs(game.Players:GetPlayers()) do
        if player.Name:lower():sub(1, 2) == partial or (player.DisplayName and player.DisplayName:lower():sub(1, 2) == partial) then
            return player
        end
    end
    return nil
end
local Input = YourTab:CreateInput({
    Name = "Select target player",
    PlaceholderText = "Digite o nome ou parte do nome do jogador",
    RemoveTextAfterFocusLost = false,
    Callback = function(value)
        local selectedViewPlayer = findPlayerByPartialNameOrNickname(value)
        if selectedViewPlayer then
            print("Jogador encontrado: " .. selectedViewPlayer.Name)
            if viewEnabled then
                toggleView(false)
                toggleView(true)
            end
        else
            print("Nenhum jogador encontrado com esse nome ou apelido.")
            if viewEnabled then
                toggleView(false)
            end
        end
    end,
-- Botão para matar o jogador usando o couch
local Button = Tab:CreateButton({
    Name = "Do couch kill player",
    Callback = function()
               local args = {
    [1] = "PickingTools",
    [2] = "Couch"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack(args))

--kill
        -- Executa o loadstring para o script que você especificou
        loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Void'))()
    end,
local Section = Tab:CreateSection("Character")
Section:Set("Character")            
-- Botão para deixar o jogador pequeno
local Button = Tab:CreateButton({
    Name = "Character ultra small",
    Callback = function()
        local args = {
            [1] = "CharacterSizeDown",
            [2] = 4
        }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1Clothe1s"):FireServer(unpack(args))
    end,
 -- Botão para ver toda a cidade de Brookhaven
local Button = Tab:CreateButton({
    Name = "See the entire city of Brookhaven",
    Callback = function()
        local plr = game.Players.LocalPlayer
        local char = plr.Character
        local hrp = char.HumanoidRootPart

        hrp.CFrame = CFrame.new(-157.49581909179688, 136.7017364501953, 123.78034210205078) 

        -- Criar um novo bloco
        local redBlock = Instance.new("Part")
        
        -- Definir as propriedades do bloco
        redBlock.Size = Vector3.new(4, 2, 3) -- Ajustar o tamanho conforme necessário
        redBlock.Color = Color3.fromRGB(255, 0, 0) -- Definir a cor como vermelho
        redBlock.Position = Vector3.new(0, 10, 0) -- Ajustar a posição conforme necessário
        
        -- Adicionar o bloco ao workspace para que apareça no jogo
        redBlock.Parent = game.Workspace
    end,
 -- Botão para roubar o banco de Brookhaven
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
-- Conectar eventos de jogador removido
game.Players.PlayerRemoving:Connect(function(player)
    if selectedViewPlayer == player then
        selectedViewPlayer = nil
        if viewEnabled then
            toggleView(false)
      Rayfield:Notify({
   Title = "Sunlight Hub 2.0",
   Content = "..playerName.. leave the game!",
   Duration = 1.5,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "I'll gonna cry or idk?",
         Callback = function()
         print("")
      end
   },
},local function toggleESPWithLines()
    espEnabled = not espEnabled
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
 
                    -- Atualiza a posição da linha para a cabeça do jogador
                    line.CFrame = CFrame.new(torso.Position, head.Position)
 
                    -- Adiciona o nome do jogador com uma borda preta e texto branco
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
 
                    -- Adiciona a borda preta
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
 local Toggle = Tab:CreateToggle({
   Name = "Toggle Example",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
       toggleESPWithLines()                                                  
   -- The function that takes place when the toggle is pressed
   -- The variable (Value) is a boolean on whether the toggle is true or false
   end,
})
                                                                                  
