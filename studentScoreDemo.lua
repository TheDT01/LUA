local grade = { marry = "100" , Teacher = "100"}
while true do
    print"enter student name (q to quit)"
    local name = io.read()

    if name == "q" then
        break;
    end

    print"enter student score"
    local score = io.read("*n")

    grade[name] = score
end

print("printing grades!")
for k, v in pairs(grade) do
    print("Grade for " .. k .. ": " .. v)
end
