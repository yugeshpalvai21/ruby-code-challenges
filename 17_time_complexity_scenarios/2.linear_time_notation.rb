# Given an array of integers, compute the sum of all elements. 

# The time complexity is O(n) because you need to iterate through each element exactly once.

# Take One with Loops
def calculate_sum input
  sum = 0

  i = 0

  while i < input.length
    sum += input[i]
    i += 1
  end

  sum
end

p calculate_sum [*1..100]

# Take two with iterator
def calculate_sum_two *input
  input.inject(&:+)
end

p calculate_sum_two 1,5,6,3,4,3,6


# Take three with single line method
def calculate_sum_three(input) = input.inject(&:+)

p calculate_sum_three [*1..100]
