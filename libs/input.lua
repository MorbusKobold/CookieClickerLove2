local input = {}

function input.load()
    input.key_exit = "escape"
    input.key_debug = "f1"
    input.key_t = "t"
    input.key_plus = "+"
    input.key_minus = "-"
    input.key_reset = "r"
end

function input.keypressed(key)
    if key == input.key_exit then
        love.event.quit()
    end
    if key == input.key_debug then
        debug = not debug
    end
    if key == input.key_t then
        t = not t
    end
    if key == input.key_minus then
        game.clickMultiplier = game.clickMultiplier - 1
    end
    if key == input.key_plus then
        game.clickMultiplier = game.clickMultiplier + 1
    end
    if key == input.key_reset then
        game.cookies = 0
    end
end

return input