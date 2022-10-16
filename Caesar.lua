local function shift(letter, s)
    if string.upper(letter) == letter then
        return string.char((string.byte(letter) + s - 65) % 26 + 65)
    else
        return string.char((string.byte(letter) + s - 97) % 26 + 97)
    end
end

local function encode(w, s)
    local result = ""
    for i = 1, #w do
        if string.sub(w, i, i) == " " then
            result = result..(" ")
        else
            result = result..(shift(string.sub(w, i, i), s))
        end
    end
    return result
end

local function decode(w, s)
    return encode(w, -s)
end
