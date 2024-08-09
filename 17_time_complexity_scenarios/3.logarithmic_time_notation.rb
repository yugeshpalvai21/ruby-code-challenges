# Challenge: Binary Search

# Given a sorted array and a target value, use binary search to determine if the target is in the array. 
# Binary search has a time complexity of O(log n) because it divides the search space in half with each step.


def binary_search_with_log_notation input, target
 [1,2,3,5,6]

 min = 0
 max = input.length - 1

 while min <= max
  mid = (min + max)/2
  
  if input[mid] == target
    return true
  elsif input[mid] < target
    min += 1
  else
    max -= 1
  end
 end

 false
end

p binary_search_with_log_notation [*1..100], 500

def binary_search_with_log_notation_two input, target
  input.include?(target)
end

p binary_search_with_log_notation_two [*1..100], 50