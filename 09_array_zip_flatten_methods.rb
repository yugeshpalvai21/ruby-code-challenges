arr1 = [1,2,4,5,7]
arr2 = [3,4,6]

result = arr1.zip(arr2)
puts result.inspect

puts result.flatten.inspect
puts result.flatten.sample # sample selects any single object from given array

p [[1212], [[1,21], [[1,3], [1,2,3]]]].flatten