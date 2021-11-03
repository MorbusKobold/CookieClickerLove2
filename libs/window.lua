-- setting up the window and holding all variables
local window = {
    TITLE = "Cookie Clicker",
    WIDTH = 800,
    HEIGHT = 600,
    defaultFont = love.graphics.newFont(),
    gameFont = love.graphics.newFont("fonts/font4.ttf", 32)
}

function window.load()
    love.window.setTitle(window.TITLE)
    love.window.setMode(window.WIDTH,window.HEIGHT)
end

function window.create(text, x, y)
    
end

return window