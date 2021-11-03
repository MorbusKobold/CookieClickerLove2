local mouse = {
    x = nil,
    y = nil
}

function mouse.update()
    mouse.x = love.mouse.getX()
    mouse.y = love.mouse.getY()
end

return mouse