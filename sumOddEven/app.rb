# In Ruby we can modify pre-existing classes, this is called "monkey patching"
# Here, we'll add a divisibleBy() method to the Integer class so we can do things like:
# 15.divisibleBy(3)
class Integer
    def divisibleBy(num)
        # In Ruby, you don't have to explicitly return a value
        # The last statement will be returned.
        # In this line, "self" is the value of the Integer to the left of the dot
        # 3.divisibleBy 15 - self would equal 3, num equals 15
        self % num == 0
    end
end

# We can grab command line arguments from the ARGV array, notably
# Ruby does not include the initial command in this array, so this is the model:
# -- ruby app.rb ARVG[0] ARVG[1]
# We'll also typecase to integer right now.
lowNumber = ARGV[0].to_i
highNumber = ARGV[1].to_i

# Make sure we have 2 parameters, otherwise exit the program
exit(1) unless ARGV[1]

# Ruby is a non-typed language, so we just set two variables to track our total counts
totalOdds = 0
totalEvens = 0

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
    # In Ruby, if a method only accepts a single parameter, you don't need ()s
    if num.divisibleBy 2
        totalEvens += num
    else
        totalOdds += num
    end

end

puts "Low Number: #{lowNumber}"
puts "High Number: #{highNumber}"

puts "Total of Odd numbers: #{totalOdds}"
puts "Total of Even numbers: #{totalEvens}"