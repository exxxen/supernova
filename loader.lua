local id = game.PlaceId

local supported = syn.request({
    Url = "https://raw.githubusercontent.com/exxxen/supernova/main/supported.json",
    Method = "GET"
})["Body"]
supported = game:GetService("HttpService"):JSONDecode(supported)

for i,v in pairs(supported) do
    if id == v then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/exxxen/supernova/main/scripts/"..i..".lua"))()
    end
end
