#  Challenge: Generate All Subsets (Power Set)

# Given a set of numbers, generate all possible subsets (the power set). 
# The time complexity is O(2^n) because there are 2^n possible subsets for a set of size n.

def subsets array
  result = [[]]

  array.each do |num|
    result += result.map { |sub| sub + [num] }
  end

  result
end

p subsets [1,2,3,4]