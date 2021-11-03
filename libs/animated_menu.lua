local animated_menu = {}

-- ARROW_production
local arrow_cursor = {
    x = 750,
    y = 150,
    clicked = false,
    hovered = false,
    image = images.arrow_cursor,
    color = {1, 1, 1, 1},
    sx = 1,
    sy = 1,
    speed = 4
}

local arrow_production = {
    x = 750,
    y = 220,
    clicked = false,
    hovered = false,
    image = images.arrow_production,
    color = {1, 1, 1, 1},
    sx = 1,
    sy = 1,
    speed = 4
}

function animated_menu.update(dt)
    arrow_cursor.update(dt)
    arrow_production.update(dt)
end

function animated_menu.draw()
    arrow_cursor.draw()
    arrow_production.draw()
end

function animated_menu.mousepressed(x, y, button)
    arrow_cursor.mousepressed(x, y, button)
    arrow_production.mousepressed(x, y, button)
end

-- ARROW_CURSOR
function arrow_cursor.update(dt)
    if collision.pointInRect(mouse.x, mouse.y, arrow_cursor.x, arrow_cursor.y, 250, 50) then
        arrow_cursor.hover(true)
        if arrow_cursor.clicked then
            arrow_cursor.color = {0.8, 0.8, 0.8, 0.5}
        end
    else
        arrow_cursor.hover(false)
    end
    arrow_cursor.click(false)
end

function arrow_cursor.draw()
    love.graphics.setColor(arrow_cursor.color)
    love.graphics.draw(images.arrow_cursor, arrow_cursor.x, arrow_cursor.y, 0, arrow_cursor.sx, arrow_cursor.sy)
    love.graphics.setColor(1, 1, 1, 1)
end

function arrow_cursor.mousepressed(x, y, button)
    if button == 1 and collision.pointInRect(x, y, arrow_cursor.x, arrow_cursor.y, 250, 50) then
        arrow_cursor.click(true)
    end
end

function arrow_cursor.hover(bool)
    if bool then
        if arrow_cursor.x > 550 then
            arrow_cursor.x = arrow_cursor.x - arrow_cursor.speed
        end
        arrow_cursor.color = {1, 1, 1, 1}
        arrow_cursor.hovered = true
    else
        if arrow_cursor.x < 750 then
            arrow_cursor.x = arrow_cursor.x + arrow_cursor.speed
        end
        arrow_cursor.color = {1, 1, 1, 0.6}
        arrow_cursor.hovered = true
    end
end

function arrow_cursor.click(bool)
    if bool then
        arrow_cursor.clicked = true
        game.clickRate = game.clickRate + 100000
    else
        arrow_cursor.clicked = false
    end
end

-- ARROW_PRODUCTION
function arrow_production.update(dt)
    if collision.pointInRect(mouse.x, mouse.y, arrow_production.x, arrow_production.y, 250, 50) then
        arrow_production.hover(true)
        if arrow_production.clicked then
            arrow_production.color = {0.8, 0.8, 0.8, 0.5}
        end
    else
        arrow_production.hover(false)
    end
    arrow_production.click(false)
end

function arrow_production.draw()
    love.graphics.setColor(arrow_production.color)
    love.graphics.draw(images.arrow_production, arrow_production.x, arrow_production.y, 0, arrow_production.sx, arrow_production.sy)
    love.graphics.setColor(1, 1, 1, 1)
end

function arrow_production.mousepressed(x, y, button)
    if button == 1 and collision.pointInRect(x, y, arrow_production.x, arrow_production.y, 250, 50) then
        arrow_production.click(true)
    end
end

function arrow_production.hover(bool)
    if bool then
        if arrow_production.x > 550 then
            arrow_production.x = arrow_production.x - arrow_production.speed
        end
        arrow_production.color = {1, 1, 1, 1}
        arrow_production.hovered = true
    else
        if arrow_production.x < 750 then
            arrow_production.x = arrow_production.x + arrow_production.speed
        end
        arrow_production.color = {1, 1, 1, 0.6}
        arrow_production.hovered = true
    end
end

function arrow_production.click(bool)
    if bool then
        arrow_production.clicked = true
        game.cookieRate = game.cookieRate + 100000
    else
        arrow_production.clicked = false
    end
end

-- ARROW_PRODUCTION
function arrow_production.update(dt)
    if collision.pointInRect(mouse.x, mouse.y, arrow_production.x, arrow_production.y, 250, 50) then
        arrow_production.hover(true)
        if arrow_production.clicked then
            arrow_production.color = {0.8, 0.8, 0.8, 0.5}
        end
    else
        arrow_production.hover(false)
    end
    arrow_production.click(false)
end

function arrow_production.draw()
    love.graphics.setColor(arrow_production.color)
    love.graphics.draw(images.arrow_production, arrow_production.x, arrow_production.y, 0, arrow_production.sx, arrow_production.sy)
    love.graphics.setColor(1, 1, 1, 1)
end

function arrow_production.mousepressed(x, y, button)
    if button == 1 and collision.pointInRect(x, y, arrow_production.x, arrow_production.y, 250, 50) then
        arrow_production.click(true)
    end
end

function arrow_production.hover(bool)
    if bool then
        if arrow_production.x > 550 then
            arrow_production.x = arrow_production.x - arrow_production.speed
        end
        arrow_production.color = {1, 1, 1, 1}
        arrow_production.hovered = true
    else
        if arrow_production.x < 750 then
            arrow_production.x = arrow_production.x + arrow_production.speed
        end
        arrow_production.color = {1, 1, 1, 0.6}
        arrow_production.hovered = true
    end
end

function arrow_production.click(bool)
    if bool then
        arrow_production.clicked = true
        game.cookieRate = game.cookieRate + 100000
    else
        arrow_production.clicked = false
    end
end

return animated_menu