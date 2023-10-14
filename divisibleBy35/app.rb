lowNumber = ARGV[0].to_i
highNumber = ARGV[1].to_i

# Make sure we have 2 parameters
exit(1) unless ARGV[1]

totalDivBy3 = 0
totalDivBy5 = 0

if (lowNumber > highNumber)
    #If we get here, the first param is larger than the last
    lowNumber = ARGV[1].to_i
    highNumber = ARGV[0].to_i
end

# Loop through the spread of numbers
(lowNumber..highNumber).each do |num|
    totalDivBy3 += 1 if num % 3 == 0
    totalDivBy5 += 1 if num % 5 == 0
    # ^ Magic number alert here w/ 3 and 5,
    # real world I'd probably make the divisor 
    # we care about an array that is configured at the top
    # and update this area of code to loop through those divisors:
    # Something like:
    #    totalDivCount = []
    #    allDivisors = [3, 5]
    #    allDivisors.each do |divisor|
    #      totalDivCount[divisor] += 1 if num % divisor == 0
    #    end
end

puts "Low Number: #{lowNumber}"
puts "High Number: #{highNumber}"

puts "Total divisible by 3: #{totalDivBy3}"
puts "Total divisible by 5: #{totalDivBy5}"