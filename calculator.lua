function adder(x, y)
    return x + y
end
function subtractor(x, y)
    return x - y
end
function calculate(x, y, f)
    return f(x, y)
end

print"Enter a number"
local x = io.read("*n")
print"enter another number"
local y = io.read("*n")
print"do your want to add or subtract? (type + or -)"
local op = io.read("*n",1)

if op == "+" then
   operation = adder
    print("Result of addition:", calculate(x, y, operation))
else
    operation = subtractor
    print("Result of subtraction:", calculate(x, y, operation))
end

