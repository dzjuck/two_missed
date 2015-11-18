require_relative 'lib/two_missed'

arr = [1, 2, 4, 5, 6, 8, 9]
puts "Array: #{arr}"

finder = TwoMissed.new(arr)
puts "Missed: #{finder.find}"