function adder(x, y)
    return x + y
end

function subtractor(x, y)
    return x - y
end

function calculate(x, y, f)
    return f(x, y)
end

print("Enter a number")
local x = tonumber(io.read("*n"))
print("Enter another number")
local y = tonumber(io.read("*n"))
print("Do you want to add or subtract? (Type + or -)")
local op = io.read(1)

local operation
if op == "-" then
    operation = subtractor
else
    operation = adder
end

print(calculate(x, y, operation))
