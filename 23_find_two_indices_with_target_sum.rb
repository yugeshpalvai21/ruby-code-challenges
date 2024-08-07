# Given an array of integers and a target sum, find the indices of the two numbers in the array that add up to the   target sum. 
# Return these indices as an array. Assume there is exactly one solution.

def target_indices(input_array, target_value)
  num_with_indices = {}
  
  input_array.each_with_index do |num, index|
    completion = target_value - num

    if num_with_indices.key?(completion)
      return [num_with_indices[completion] , index]
    end
    num_with_indices[num] = index
  end

  nil
end

input = [3, 1, 5, 7, 4]
target = 5

p target_indices(input, target)