# We can grab command line arguments from the ARGV array, notably
# Ruby does not include the initial command in this array, so this is the model:
# -- ruby app.rb ARVG[0] ARVG[1]
# We'll also typecase to integer right now.
lowNumber = ARGV[0].to_i
highNumber = ARGV[1].to_i

# Make sure we have 2 parameters, otherwise exit the program
exit(1) unless ARGV[1]

# Ruby is a non-typed language, so we just set two variables to track our total counts
totalDivBy3 = 0
totalDivBy5 = 0

if (lowNumber > highNumber)
    # If we get here, the first param is larger than the last
    # Let's swap them around
    lowNumber = ARGV[1].to_i
    highNumber = ARGV[0].to_i
end

# Loop through the spread of numbers
# Ruby has a pretty sweet integer spread operation using ..
# So, for example 1..3.each do |num| would result in 1, 2, 3 for num
# Here, we're using that to go through each fo the numbers between
# low and high. In other languages, you'll probably see this 
# implemented using a for (i = low, i <= high, i++) style loop.
# The .. operator basically shorthands that for loop.
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