# Challenge: Bubble Sort

# Sort an array of integers using bubble sort. Bubble sort has a time complexity of O(n^2) 
# because it involves nested loops to compare and swap adjacent elements.

# take one with nested loops
def bubble_sort array
  i = 0
  while i < array.length
    j = 0
    while j < array.length
      if !array[j+1].nil? && array[j] > array[j+1]
        array[j], array[j+1] = array[j+1], array[j] 
      end
      j += 1
    end
    i += 1
  end
  array
end

p bubble_sort [5,1,4,6,3,2,12,22,8,9]


# take two with iterators
def bubble_sort_two array
    loop do
      swapped = false
      array.each_with_index do |num, index|
        if !array[index+1].nil? && num > array[index+1]
            array[index], array[index+1] = array[index+1], num
            swapped = true
        end     
      end 
      break unless swapped
    end
    array
end

p bubble_sort_two [5,1,4,6,3,2,12,22,8,9]

# take three with built in sort method
def bubble_sort_three array
  array.sort
end

p bubble_sort_three [5,1,4,6,3,2,12,22,8,9]
