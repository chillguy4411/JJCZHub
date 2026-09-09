if not game:IsLoaded() then
    game.Loaded:Wait()
end

local lib = loadstring(game:HttpGet(
    'https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/Library.lua'
))()

local PlaceId = game.PlaceId
local lplr = game:GetService("Players").LocalPlayer
local market = game:GetService("MarketplaceService")
local info = market:GetProductInfo(PlaceId)

local games = {
    {
        ids = {9825515356, 138995385694035, 79729621165428, 80567999110374},
        url = 'https://raw.githubusercontent.com/chillguy4411/JJCZHub/refs/heads/main/script/Hood%20Customs.luau',
        name = 'Hood Customs'
    },

    {
        ids = {2788229376, 4872321990},
        url = 'https://raw.githubusercontent.com/chillguy4411/JJCZHub/refs/heads/main/script/Blox%20Fruits.luau',
        name = 'Blox Fruits'
    },

    {
        ids = {606849621, 155615604},
        url = 'https://raw.githubusercontent.com/chillguy4411/JJCZHub/refs/heads/main/script/Arsenal.luau',
        name = 'Arsenal'
    }
}

local supportedGame = nil

for _, gameData in ipairs(games) do
    if table.find(gameData.ids, PlaceId) then
        supportedGame = gameData
        break
    end
end

if supportedGame then
    lib:Notify('Supported game loading: ' .. supportedGame.name)
    loadstring(game:HttpGet(supportedGame.url))()
else
    lplr:Kick('Game not supported')
end
