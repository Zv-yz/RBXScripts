### Main
Se você quiser dar sugestão ou reportar um bug/patched script [clique aqui!](https://github.com/Zv-yz/RBXScripts/issues/new/choose)
### Scripts
N/A

---

### Bypass
<details>
<summary>Universal Bypass</summary>

# Requisitos:
* `hookfunction`
* `hookmetamethod`
* `getnamecallmethod`
* `checkcaller`

**RECOMENDADO VOCÊ COLOCAR NO AUTOEXEC DO SEU EXPLOIT.**

# Script:
```lua
loadstring(game:HttpGet('https://raw.githubusercontent.com/Zv-yz/RBXScripts/master/Universal/Bypass.lua'))()
```
</details>
<details>
<summary>ContentProvider (Bypass & NÃO SEGURO)</summary>

# Requisitos:
* `hookfunction`
* `hookmetamethod`

# Script:
```lua
loadstring(game:HttpGet('https://raw.githubusercontent.com/Zv-yz/RBXScripts/master/Universal/ContentProvider.lua'))()
```
</details>
<details>
<summary>Developer Console (Bypass)</summary>

# Requisitos:
* `getconnections`

**AVISO: ISSO VAI IMPEDIR VOCÊ PRINTE (print, warn, error) ALGO NO DEVELOPER CONSOLE.**

# Script:
```lua
loadstring(game:HttpGet('https://raw.githubusercontent.com/Zv-yz/RBXScripts/master/Universal/GetConnections.lua'))()
```
</details>

---

### UI Library
<details>
<summary>Ocerium UI (Edited)</summary>
  
![Image](https://user-images.githubusercontent.com/52023947/165706667-bfed99c5-082e-44a6-bc9d-d292c67c4967.png)
* Categories
* Custom Name, Parent, KeyBind
* Label
* Button
* Toggle
* Slider
* Dropdown & Choice! (With search)

# Example Script:
```lua
--[[
    KeyCode list: https://developer.roblox.com/en-us/api-reference/enum/KeyCode
--]]
local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/Zv-yz/RBXScripts/master/UILib/OceriumEdited.lua'))()
local MainWindow = Library.Main('Ocerium Example', game.CoreGui, 'LeftAlt')
local Category = MainWindow.Category('Categories')

--> Folders
local Folder_1 = Category.Folder('Test 1')
local Folder_2 = Category.Folder('Test 2')

--> Folder 1
Folder_1.Label('Hi! Cool text right?')

Folder_1.Button('Example Button', function()
    print('/shrug')
end)

Folder_1.Toggle('Example Toogle', function(bool)
    print(bool)
end, false)

Folder_1.Slider('Example Slider', 0, 10, function(value)
    print(value)
end, 0, true)

local Dropdown = Folder_1.Dropdown('Example Dropdown')

Dropdown.Choice('Example Choice 1', function()
    print('Sus.')
end)
Dropdown.Choice('Example Choice 2', function()
    print('Amoug us.')
end)
```
</details>
