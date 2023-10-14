-- Lua, *technically* doesn't have array, but for now let's pretend it does.
-- (They are technically tables, which are kind of like JavaScript's objects)
-- Anyways - unlike other languages - Lua's tables (arrays) are 1-indexed, not 0-indexed
-- So... our pattern here is lua app.lua arg[1] arg[2]

-- Grab our numbers and, like all other language, cast the string to an int (well a number in Lua)
local lowNumber = tonumber(arg[1])
local highNumber = tonumber(arg[2])

local totalDivisibleBy3 = 0
local totalDivisibleBy5 = 0

-- If we don't have 2 parameters, exit
if not highNumber then os.exit() end

-- If the 1st param is larger than the 2nd, swap them
if (lowNumber > highNumber) then
    lowNumber, highNumber = highNumber, lowNumber
end

-- For loops in Lua are different.
-- 1st param, we set the start of the loop and the internal identifier
-- 2nd param, we just set the end condition; note we're not comparing the identifier to a value here
--   we're just setting the top value number (highNumber). You can add mathematical operators here to
--   increase/decrease the value (highNumber + 1) but no comparison operators (<= highNumber)
-- 3rd param, is the step function as normal; but if you exclude it Lua assumes +1 (which is like 99% of use cases)
for i = lowNumber, highNumber do
    if i % 3 == 0 then
        -- Lua doesn't have a ++ or -- operator, so we have to x = x + 1
        totalDivisibleBy3 = totalDivisibleBy3 + 1
    end
    
    if i % 5 == 0 then
        totalDivisibleBy5 = totalDivisibleBy5 + 1
    end
end

print("lowNumber", lowNumber)
print("highNumber", highNumber)

print("Total divisible by 3: ", totalDivisibleBy3)
print("Total divisible by 5: ", totalDivisibleBy5)