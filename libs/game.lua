local game = {
    cookies = 0,
    clickMultiplier = 1, -- how many cookies are made by one manual click
    autoClickerCount = 0 -- how many automatic clickers are existent
}

function game.update()
    if game.cookies >= 1000000 then
        --game.cookies = 0
        game.cookies = game.cookies + game.autoClickRate()
    end
end

function game.autoClickRate()  -- how many cookies are created per second
    return math.log10(autoClickerCount)
end

return game