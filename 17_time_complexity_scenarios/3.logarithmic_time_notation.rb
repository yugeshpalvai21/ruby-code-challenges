# Challenge: Binary Search

# Given a sorted array and a target value, use binary search to determine if the target is in the array. 
# Binary search has a time complexity of O(log n) because it divides the search space in half with each step.

[1,2,3,5,6]

def binary_search_with_log_notation input, target
 start_index = 0
 end_index = input.length - 1

 while start_index <= end_index
  mid = (start_index + end_index)/2
  
  if input[mid] == target
    return true  
  elsif input[mid] < target
    start_index += 1
  else
  end_index -= 1
  end
 end

 false
end

p binary_search_with_log_notation [*1..100], 500


# Take two with Ruby built in helper method
def binary_search_with_log_notation_two input, target
  input.include?(target)
end

p binary_search_with_log_notation_two [*1..100], 50