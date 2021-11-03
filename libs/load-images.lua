-- Library to hold all the Images used ingame
local images = {}

function images.load()
    images.background = love.graphics.newImage("images/background.png")
    images.cookie = love.graphics.newImage("images/cookie.png")
    images.tileset = love.graphics.newImage("images/tileset.png")
    images.arrow_cursor = love.graphics.newImage("images/arrow_cursor.png")
    images.arrow_production = love.graphics.newImage("images/arrow_production.png")
end

return images