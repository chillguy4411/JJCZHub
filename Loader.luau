if not game:IsLoaded() then
    game.Loaded:Wait()
end

local lib = loadstring(game:HttpGet('https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/Library.lua'))()

local PlaceId = game.PlaceId
local lplr = game:GetService("Players").LocalPlayer
local market = game:GetService("MarketplaceService")
local info = market:GetProductInfo(PlaceId)
local games = {
    [9825515356] = 'https://raw.githubusercontent.com/chillguy4411/JJCZHub/refs/heads/main/script/Hood%20Customs.luau', -- Hood Customs


if games[PlaceId] then 
    lib:Notify('Supported game loading: ' .. info.Name)
    loadstring(game:HttpGet(games[PlaceId]))()
else
    lplr:Kick('Game not supported: ' .. info.Name)
end
