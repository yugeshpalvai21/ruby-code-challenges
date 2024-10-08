### PROBLEM ###

# If we list all the numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.


p [*1...1000].select { |num| (num%3 == 0) || (num%5 == 0) }.reduce { |sum, num| sum + num }

# simplied like below

p [*1...1000].select { |num| (num%3 == 0) || (num%5 == 0) }.reduce(&:+)

# simplied like below

p [*1...1000].select { |num| (num%3 == 0) || (num%5 == 0) }.sum
