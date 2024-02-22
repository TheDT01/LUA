function getRandomNumber(maxvalue)
    math.randomseed(os.time())
    return math.random(maxvalue)
end

function handelguesses(lowmessage, highmessage, number)
    local guesses = {}

    print("Guess the number")

    while true do
        local answer = tonumber(io.read("*n"))
        guesses[#guesses + 1] = answer

        if answer > number then
            print(highmessage)
        elseif answer < number then
            print(lowmessage)
        else
            break
        end
        print("Guess again")
    end

    return guesses
end

local number = getRandomNumber(100)
local guesses = handelguesses("Too low", "Too high", number)

print("You got it!")
print("Here are your guesses:")
for i, v in ipairs(guesses) do
    print(i, v)
end

print("The answer was:", number)
