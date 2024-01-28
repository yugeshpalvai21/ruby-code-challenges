
def total_sum_for_cube_of_odd_numbers numbers
    numbers.select { |num| num%2 == 1 }.map { |num| num**3 }.inject(:+)
end

numbers = [2,5,6,8,4,7,13,17]

result = total_sum_for_cube_of_odd_numbers numbers
puts result.inspect
