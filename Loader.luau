if not game:IsLoaded() then
    game.Loaded:Wait()
end

local lib = loadstring(game:HttpGet('https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/Library.lua'))()

local PlaceId = game.PlaceId
local lplr = game:GetService("Players").LocalPlayer
local market = game:GetService("MarketplaceService")
local info = market:GetProductInfo(PlaceId)
local games = {
    [136801880565837] = 'https://raw.githubusercontent.com/venatresca4888/XcxHub/refs/heads/main/script/Flick/Flick.lua?token=GHSAT0AAAAAAD44UFHD4WIEMOPERFQ5FA2K2RMKWIQ', -- Flick Game
    [76668493349114] = 'https://raw.githubusercontent.com/GGXD99/XcxHub/refs/heads/main/script/SniperorDie/main.lua', -- SNIPE-OR-DIE
    [2474168535] = 'https://raw.githubusercontent.com/GGXD99/XcxHub/refs/heads/main/script/Westbound/script.lua', -- Westbound
    [84988808589910] = 'https://raw.githubusercontent.com/GGXD99/XcxHub/refs/heads/main/script/Rogue-Piece/SCRIPT.lua', -- Rogue Piece
    [8735521924] = 'https://raw.githubusercontent.com/GGXD99/XcxHub/refs/heads/main/script/CENTAURA/Ui.lua', -- CENTAURA
    [2753915549] = 'https://raw.githubusercontent.com/GGXD99/XcxHub/refs/heads/main/script/Blox-Fruit/AutoFarmChar.lua', -- BLox Fruit Chest Fram
    [12144402492] = 'https://raw.githubusercontent.com/GGXD99/XcxHub/refs/heads/main/script/Deadline/ESP', -- Deadline
    [119426593006199] = 'https://raw.githubusercontent.com/GGXD99/XcxHub/refs/heads/main/script/Deadline/ESP', -- Deadline
    [80025211518856] = 'https://raw.githubusercontent.com/GGXD99/XcxHub/refs/heads/main/script/Deadline/ESP', -- Deadline
    [5041144419] = 'https://raw.githubusercontent.com/venatresca4888/XcxHub/refs/heads/main/script/SCP-Roleplay/main.luau', -- SCP-Roleplay
}

if games[PlaceId] then 
    lib:Notify('Supported game loading: ' .. info.Name)
    loadstring(game:HttpGet(games[PlaceId]))()
else
    lib:Notify('Game not supported: ' .. info.Name)
end
