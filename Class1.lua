function getRandomNumber(maxvalue)
    math.randomseed(os.time())
    math.random()
    return math.random(maxvalue) 
end

function handelguesses( lowmassage , highmassage , number)
   -- lowmassage , highmassage , number = ...
   local guesses = {}

    while answer ~= number do

          answer = io.read("*n")
          gusses[#gusses+1] = answer
 
        if answer > number then
        print (highmassage)
 
        elseif answer < number then
        print(lowmassage)
        else
            break
        end
        print("guess again")
    end
    return guesses 
    
end


local number = getRandomNumber(100)
print ("guess the number")
local gusses = handelguesses("too low", "too high" , number)


print("you got it")
print("Here are your guesses")
for i,v in ipairs(gusses) do
    print(i,v)
end

print ("the answer was", number)