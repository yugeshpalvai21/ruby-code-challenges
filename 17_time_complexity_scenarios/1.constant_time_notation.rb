# Given an array and an index, return the element at that index. 

# The time complexity of accessing an element by index in an array is O(1) since it takes constant time regardless of the size of the array.

def constant_time array, index
  array[index]
end

p constant_time [1,2,35,5], 2
p constant_time [*1..100], rand(0...99)