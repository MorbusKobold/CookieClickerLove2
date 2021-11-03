local game = {
    cookies = 0,
    clickRate = 1,
    cookieRate = 0
}

function game.update()
    if game.cookies >= 1000000 then
        --game.cookies = 0
        game.cookieRate = game.cookieRate * 1.09
    end
end

return game