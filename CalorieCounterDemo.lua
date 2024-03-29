calorieCounter = { count = 0, goal = 2000 }

function calorieCounter:add(amount)
    self.count = self.count + amount
end

function calorieCounter:didReachGoal()
    return self.count >= self.goal
end

function calorieCounter:new(t)
    t = t or {}
    setmetatable(t, self)
    self.__index = self
    return t
end

HealthMonitor = calorieCounter:new { steps = 0, stepGoal = 10000 }

function HealthMonitor:step(amount)
    self.steps = self.steps + amount
end

function HealthMonitor:didReachGoal()
    local goalsReached = 0

    if self.count >= self.goal then
        print("Calorie goal of " .. self.goal .. " reached")
        goalsReached = goalsReached + 1
    else
        print("Calorie goal not reached yet")
    end

    if self.steps >= self.stepGoal then
        print("Step goal of " .. self.stepGoal .. " reached")
        goalsReached = goalsReached + 1
    else
        print("Step goal not reached yet")
    end

    return goalsReached >= 2
end

return {
    calorieCounter = calorieCounter,
    HealthMonitor = HealthMonitor,
}

