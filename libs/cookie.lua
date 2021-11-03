local cookie = {}
local numberString = {}

function cookie.load(image)
    cookie.x = love.graphics.getWidth()/2-image:getWidth()/2
    cookie.y = love.graphics.getHeight()/2-image:getHeight()/2
    cookie.sx = 1
    cookie.sy = 1
    cookie.image = image
    cookie.color = {1,1,1,0.8}
    cookie.rainingCookies = {}
end

function cookie.update(dt)
    game.cookies = game.cookies + game.cookieRate * dt
end

function cookie.draw()
    love.graphics.setColor(cookie.color)
    love.graphics.draw(cookie.image,cookie.x,cookie.y,0,cookie.sx,cookie.sy)
    love.graphics.setColor(1,1,1,1)
end

function cookie.hover(bool)
    if bool then
        cookie.color = {1,1,1,1}
        cookie.sx = cookie.sx + 0.1
        cookie.sy = cookie.sy + 0.1
        cookie.x = cookie.x-17
        cookie.y = cookie.y-17
    else
        cookie.color = {1,1,1,0.8}
    end
end

function cookie.createText(cookies)
    local text = {}
    text.x = mouse.x
    text.y = mouse.y - 16
    text.color = {1,1,1,1}
    text.string = "+ " .. game.clickRate
    table.insert(numberString, text)
end

function cookie.updateText()
    for i, v in pairs(numberString) do
        v.y = v.y - 2
        v.color[4] = v.color[4] - 0.015
        if v.color[4] <= 0.2 then
            table.remove(numberString,i)
        end
    end
end

function cookie.drawText()
    love.graphics.setFont(window.gameFont)
    for i, v in pairs(numberString) do
        love.graphics.setColor(v.color)
        love.graphics.print(v.string,v.x,v.y)
        love.graphics.setColor(1,1,1,1)
    end
    local length = string.len(numberHandler.numberToText(game.cookies))
    if length < 3 then
        length = 10
    end
    love.graphics.setColor(0.5,0.5,0.5,0.5)
    love.graphics.rectangle("fill",window.WIDTH/2-300,64-25,600,80)
    love.graphics.setColor(1,0,0)
    love.graphics.print("Cookies: ",window.WIDTH/2-350+100,64)
    love.graphics.setColor(1,1,1)
    love.graphics.print(numberHandler.numberToText(game.cookies),window.WIDTH/2-225+100,64)
    love.graphics.setFont(window.defaultFont)
end

function cookie.createRain(number)
    if #cookie.rainingCookies <= 800 then
        for i=1, number do
            local rainingCookie = {}
            rainingCookie.x = love.math.random(-20,window.WIDTH-20)
            rainingCookie.y = love.math.random(-85,-200)
            rainingCookie.speed = love.math.random(3,8)
            rainingCookie.angle = love.math.random(0,360)
            table.insert(cookie.rainingCookies, rainingCookie)
        end
    end
end

function cookie.updateRain()
    for i, v in pairs(cookie.rainingCookies) do
        v.y = v.y + v.speed
        v.angle = v.angle + 0.01
        if v.y >= window.HEIGHT+85 then
            table.remove(cookie.rainingCookies,i)
        end
    end
end

function cookie.drawRain()
    for i, v in pairs(cookie.rainingCookies) do
        love.graphics.draw(cookie.image,v.x,v.y,v.angle,0.25,0.25)
    end
end

function cookie.click(bool)
    if bool then
        cookie.x = cookie.x + 16
        cookie.y = cookie.y + 16
        cookie.sx = cookie.sx - 0.1
        cookie.sy = cookie.sy - 0.1
        cookie.createText(game.cookies)
    else
        cookie.sx = 1
        cookie.sy = 1
        cookie.x = window.WIDTH/2-images.cookie:getWidth()/2
        cookie.y = window.HEIGHT/2-images.cookie:getHeight()/2
    end
end

return cookie