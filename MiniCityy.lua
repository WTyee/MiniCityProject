local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Mini City",
    SubTitle = "by Tye",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Darker",
    MinimizeKey = Enum.KeyCode.LeftAlt
})

print("Aqui man")

local Tabs = {
    Visual = Window:AddTab({ Title = "Visuals", Icon = "eye" }),
    Farm = Window:AddTab({ Title = "Farm", Icon = "mouse" }),
    Teleport = Window:AddTab({ Title = "Teleportar", Icon = "map-pin" }),
    Item = Window:AddTab({ Title = "Item", Icon = "mouse-pointer" }),
    Player = Window:AddTab({ Title = "Player", Icon = "user" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" }),
}

local Options = Fluent.Options

Fluent:Notify({ Title = "Notificação", Content = "Script", SubContent = "Script carregou com sucesso!", Duration = 5})

-- // Visual Button // --


local PlayerEspToggle = Tabs.Visual:AddToggle("EspTogglePlayer", {Title = "Player Esp", Default = false })