#!/usr/bin/env ruby

# This is a functional - and arguably more idiomatically Ruby - approach to the
# problem. And forgive me, I've removed isEven in favor of the native `even?`
# method, and switched everything to snake case, as is only proper in Ruby.

# Make sure we have 2 parameters, otherwise exit the program
exit(1) unless ARGV[1]

# We can grab command line arguments from the ARGV array, notably
# Ruby does not include the initial command in this array, so this is the model:
# -- ruby app.rb ARVG[0] ARVG[1]

# Ruby has a limited capacity for destructuring assignment, so we're taking the
# initial ARGV inputs, transforming them, and sorting them, but in the end we
# have an assignment that looks like `a, b = [element1, element2]` and ending up
# with `a = element1` and `b = element2`
low_number, high_number = ARGV[0..1]
    # We'll also typecase to integer right now:
    .map { |input| input.to_i }
    # And we'll sort it so we ensure that `low_number` and `high_number` are
    # true to their names:
    .sort

# Loop through the spread of numbers
# Ruby has a pretty sweet integer spread operation using ..
# So, for example 1..3.each do |num| would result in 1, 2, 3 for num
# Here, we're using that to go through each fo the numbers between
# low and high. In other languages, you'll probably see this
# implemented using a for (i = low, i <= high, i++) style loop.
# The .. operator basically shorthands that forloop.

# Again, we're taking a functional approach and segmenting, then transforming
# those segments, only to do the `a, b = [element1, element2]` assignment once
# more.
total_evens, total_odds = (low_number..high_number)
    # Use the `partition()`[1] method to split the range of numbers into two
    # lists, the first full of even numbers and the second full of odd numbers:
    .partition { |number| number.even? }
    # Then call `sum` on each list of numbers, which does the equivalent of
    # `each { |number| sum += number }`
    .map { |numbers| numbers.sum }
    # Note that you can make all these blocks even more terse with:
    # .partition(&:even?)
    # .map(&:sum)
    # ...which would require more explanation

puts "Low Number: #{low_number}"
puts "High Number: #{high_number}"

puts "Total of Odd numbers: #{total_odds}"
puts "Total of Even numbers: #{total_evens}"

__END__

Ruby will stop evaluating anything past the __END__ keyword. Pretty neat for
scripts. You can even read the contents of the __END__ block with the DATA
constant in the body of the script.

[1]: https://ruby-doc.org/3.2.2/Enumerable.html#method-i-partition
