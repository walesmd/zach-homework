# This example is provided to show how looping within a loop in non-performant
# If you can break it out into separate loops.
# Recommend running ruby app.rb 20000 20000 and seeing the results

width = ARGV[0].to_i
height = ARGV[1].to_i

puts "Starting the clock on 2 separate loops..."
startingTime = Time.now.to_i
printScrn = []
(0..height).each do |x|
    printScrn.append("x" * width)
end

printScrn.each do |line|
    puts line
end
endingTime = Time.now.to_i
smallLoopExecution = endingTime - startingTime

# puts "Starting the clock on loop in a loop..."
# startingTime = Time.now.to_i

# (0..width).each do |x|
#     (0..height).each do |y|
#         print "x"
#     end

#     puts ""
# end
# endingTime = Time.now.to_i
# largeLoopExecution = endingTime - startingTime

if width == height
    puts "This is a square"
else
    puts "This is a rectangle"
end
puts "Small Loop: #{smallLoopExecution}"
# puts "Large Loop: #{largeLoopExecution}"