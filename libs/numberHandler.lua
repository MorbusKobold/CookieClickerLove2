local numberHandler = {
    minimum = 10^6,
    maximum = 10^9,
    i = 1,
    names = {
        [1] = "million", -- 10^6
        [2] = "billion", -- 10^9
        [3] = "trillion", -- 10^12
        [4] = "quadrillion", -- 10^15
        [5] = "quintillion", -- 10^18
        [6] = "sextillion", -- 10^21
        [7] = "septillion", -- 10^24
        [8] = "octillion",
        [9] = "nonillion",
        [10] = "decillion",
        [11] = "undecillion",
        [12] = "duodecillion",
        [13] = "tredecillion",
        [14] = "quattuordecillion",
        [15] = "quindecillion",
        [16] = "sexdecillion",
        [17] = "septendecillion",
        [18] = "octodecillion",
        [19] = "novemdecillion",
        [20] = "vigintillion",
        [21] = "unvigintillion",
        [22] = "duovigintillion",
        [23] = "trevigintillion",
        [24] = "quattuorvigintillion",
        [25] = "quinvigintillion"
    }
}

function numberHandler.numberToText(number)
    local string = nil
    if number >= numberHandler.maximum then
        numberHandler.minimum = numberHandler.maximum
        numberHandler.maximum = numberHandler.maximum * 1000
        if numberHandler.i < 50 then
            numberHandler.i = numberHandler.i + 1
        else
            numberHandler.i = 50
        end
        cookie.createRain(numberHandler.i*8)
    end
    if number >= 0 and number < numberHandler.minimum then
        string = round(number, 0)
        return string
    elseif number >= numberHandler.minimum and number < numberHandler.maximum and numberHandler.i <= #numberHandler.names then
        string = round(number/numberHandler.minimum, 3) .. " " .. numberHandler.names[numberHandler.i]
        return string
    else
        return round(number, 3) .. ">10^78"
    end
end

return numberHandler