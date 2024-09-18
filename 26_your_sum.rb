
# Given a custom class MyArray,
# write a 'sum' method that takes a block parameter.

# Example:
# my_array = MyArray.new([1, 2, 3])
# my_array.sum => gives 6
# my_array.sum(10) => gives 16
# my_array.sum(0) {|n| n ** 2 } =>  gives 14

class MyArray
  attr_reader :array
 
  def initialize(array)
    @array = array
  end
 
  def sum(initial_value = 0)
    sum = initial_value
    sum += block_given? ? array.map { |n| yield(n) }.inject(&:+) : array.inject(&:+)
  end
end

my_array = MyArray.new([1, 2, 3])
p my_array.sum
p my_array.sum(10)
p my_array.sum(0) {|n| n ** 2 }