def find_indices(arr, target_sum)
  index_map = {}  # This will store the value and its index
  arr.each_with_index do |num, index|
    # Calculate the complement that would sum to target_sum
    complement = target_sum - num
    
    # If the complement is already in the map, we found the pair
    if index_map.key?(complement)
      return [index_map[complement], index]
    end
    
    # Store the current number's index in the hash map
    index_map[num] = index
  end
  
  # If no pair found, return nil
  nil
end

arr = [5, 2, 3, 8, 7, 5, 9, 1]
result = find_indices(arr, 10)
if result
  puts "Indices: #{result.inspect}"  # Output: [1, 3]
else
  puts "No pair found"
end
